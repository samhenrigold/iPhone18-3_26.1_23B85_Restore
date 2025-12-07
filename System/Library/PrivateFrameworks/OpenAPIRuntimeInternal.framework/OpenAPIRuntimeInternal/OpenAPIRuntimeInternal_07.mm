unsigned __int8 *sub_25DD7D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
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

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
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

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25DD7DC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
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
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
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

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
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

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25DD7E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
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
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
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

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
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
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
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

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
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

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
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

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25DD7E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
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
            LOWORD(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
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

              v29 = v15 * a5;
              if ((v29 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
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
          LOWORD(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
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

            v36 = v33 * a5;
            if ((v36 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOWORD(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 16));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOWORD(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
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

          v63 = v41 * a5;
          if ((v63 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOWORD(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
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

          v48 = v41 * a5;
          if ((v48 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOWORD(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25DD7EDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
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

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
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

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25DD7F348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_25DD26718();

  result = sub_25DD96C94();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25DD18028(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
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

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
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

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_25DD7F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_25DD971D4();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v18 = v15 & 1;
LABEL_8:
    v17 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_25DD7F9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_25DD971D4();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE1(result) & 1;
    v15 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v16[0]) = (a4 & 0x1000000000000000) != 0;
    return v15 | (LOBYTE(v16[0]) << 16);
  }

  return result;
}

uint64_t sub_25DD7FA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_25DD971D4();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE2(result) & 1;
    v15 = result | ((BYTE2(result) & 1) << 16);
LABEL_8:
    LOBYTE(v16[0]) = (a4 & 0x1000000000000000) != 0;
    return v15 | (LOBYTE(v16[0]) << 24);
  }

  return result;
}

uint64_t sub_25DD7FB5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_25DD971D4();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE4(result) & 1;
    v15 = result | ((BYTE4(result) & 1) << 32);
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_25DD7FC2C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 8);
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

            v48 = v32 * a6;
            v49 = v48;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v32 = v48 + (v46 + v47);
            if ((v49 + v46 + v47) != v32)
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 8);
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

          v55 = v32 * a6;
          v56 = v55;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v32 = v55 + (v53 + v54);
          if ((v56 + v53 + v54) != v32)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
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

          v39 = v32 * a6;
          v40 = v39;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v32 = v39 - (v35 + v36);
          if ((v40 - (v35 + v36)) != v32)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD800CC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          LOWORD(v32) = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 16);
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

            v48 = v32 * a6;
            v49 = v48;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v32 = v48 + (v46 + v47);
            if ((v49 + (v46 + v47)) != v32)
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 16);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 16);
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

          v55 = v32 * a6;
          v56 = v55;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v32 = v55 + (v53 + v54);
          if ((v56 + (v53 + v54)) != v32)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 16);
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

          v39 = v32 * a6;
          v40 = v39;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v32 = v39 - (v35 + v36);
          if ((v40 - (v35 + v36)) != v32)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 16);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD8056C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
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

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
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

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD809D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
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

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_25DD80E44(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
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

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
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

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD812D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOWORD(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 16);
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

            if (((v32 * a6) & 0xFFFF0000) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 & 0x10000) != 0)
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 16);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 16);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 & 0x10000) != 0)
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 16);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOWORD(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 16);
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

          if (((v32 * a6) & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 16);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD8176C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
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

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
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

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_25DD81BD8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25DD96C34();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25DD18420(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25DD18420(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_25DD96C34();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
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

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
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

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_25DD82054()
{
  v2 = *(v0 + 8);
  v3 = sub_25DD75910();
  if (v1)
  {
    MEMORY[0x25F8A43F0](v1);
  }

  else if (v2 == v3)
  {
    sub_25DD7971C();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  result = sub_25DD8376C();
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v2 + 1;
  }

  return result;
}

uint64_t sub_25DD82170()
{
  v2 = *(v0 + 8);
  v3 = sub_25DD75910();
  if (v1)
  {
    MEMORY[0x25F8A43F0](v1);
  }

  else if (v2 == v3)
  {
    sub_25DD7971C();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  result = sub_25DD75A88(v2);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v2 + 1;
  }

  return result;
}

uint64_t sub_25DD82228(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25DD82170();
  if (v3)
  {
    return v4;
  }

  v12 = v11;
  if (!((v8 ^ v9) >> 14))
  {

LABEL_8:
    v17 = sub_25DD97194();
    swift_allocError();
    v19 = v18;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v19 = a2;
    sub_25DD74F04();
    sub_25DD97174();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    return v4;
  }

  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = sub_25DD7F9AC(v8, v9, v10, v11, 10, a1);
  if ((v16 & 0x10000) != 0)
  {
    v16 = a3(v13, v14, v15, v12, 10);
  }

  v4 = v16;

  if ((v4 & 0x100) != 0)
  {
    goto LABEL_8;
  }

  return v4;
}

uint64_t sub_25DD823A4(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25DD82170();
  if (v3)
  {
    return v4;
  }

  v12 = v11;
  if (!((v8 ^ v9) >> 14))
  {

LABEL_8:
    v17 = sub_25DD97194();
    swift_allocError();
    v19 = v18;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20) + 48);
    *v19 = a2;
    sub_25DD74F04();
    sub_25DD97174();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    return v4;
  }

  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = sub_25DD7FA84(v8, v9, v10, v11, 10, a1);
  if ((v16 & 0x1000000) != 0)
  {
    v16 = a3(v13, v14, v15, v12, 10);
  }

  v4 = v16;

  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_8;
  }

  return v4;
}

uint64_t sub_25DD82520(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_25DD82170();
  if (!v3)
  {
    v11 = v10;
    if ((v7 ^ v8) >> 14)
    {
      v12 = v7;
      v13 = v8;
      v14 = v9;
      v15 = sub_25DD7FB5C(v7, v8, v9, v10, 10, a1);
      if ((v15 & 0x10000000000) != 0)
      {
        a3 = (a3)(v12, v13, v14, v11, 10);

        if ((a3 & 0x100000000) == 0)
        {
          return a3;
        }
      }

      else
      {
        v16 = v15;

        if ((v16 & 0x100000000) == 0)
        {
          return v16;
        }
      }
    }

    else
    {
    }

    a3 = sub_25DD97194();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    *v18 = a2;
    sub_25DD74F04();
    sub_25DD97174();
    (*(*(a3 - 8) + 104))(v18, *MEMORY[0x277D84160], a3);
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_25DD826B8(uint64_t (*a1)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_25DD82170();
  if (!v3)
  {
    v12 = v11;
    v23 = a2;
    if (!((v8 ^ v9) >> 14))
    {

LABEL_6:
      v19 = sub_25DD97194();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
      *v21 = v23;
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      return v4;
    }

    v13 = v8;
    v14 = v9;
    v15 = v10;
    v16 = sub_25DD7F8D8(v8, v9, v10, v11, 10, a1);
    if ((v17 & 0x100) != 0)
    {
      v16 = a3(v13, v14, v15, v12, 10);
    }

    v4 = v16;
    v18 = v17;

    if (v18)
    {
      goto LABEL_6;
    }
  }

  return v4;
}

uint64_t sub_25DD82844()
{
  v1 = sub_25DD82170();
  if (!v0)
  {
    v3 = MEMORY[0x25F8A3180](v1);
    v5 = v4;

    if (v3 == 1702195828 && v5 == 0xE400000000000000 || (sub_25DD975D4() & 1) != 0)
    {

      v2 = 1;
    }

    else if (v3 == 0x65736C6166 && v5 == 0xE500000000000000)
    {

      v2 = 0;
    }

    else
    {
      v7 = sub_25DD975D4();

      v2 = 0;
      if ((v7 & 1) == 0)
      {
        v8 = sub_25DD97194();
        swift_allocError();
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
        *v10 = MEMORY[0x277D839B0];
        sub_25DD74F04();
        sub_25DD97174();
        (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
        swift_willThrow();
      }
    }
  }

  return v2 & 1;
}

uint64_t sub_25DD82A74()
{
  result = sub_25DD82170();
  if (!v0)
  {
    v2 = MEMORY[0x25F8A3180](result);

    return v2;
  }

  return result;
}

double sub_25DD82AC8()
{
  sub_25DD82170();
  if (!v0)
  {
    v2 = sub_25DD96E54();
    if (v3)
    {
      v4 = sub_25DD97194();
      swift_allocError();
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
      *v6 = MEMORY[0x277D839F8];
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
      swift_willThrow();
    }

    else
    {
      return *&v2;
    }
  }

  return result;
}

float sub_25DD82BD4()
{
  sub_25DD82170();
  if (!v0)
  {
    v2 = COERCE_DOUBLE(sub_25DD96E54());
    if (v3)
    {
      v4 = sub_25DD97194();
      swift_allocError();
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
      *v6 = MEMORY[0x277D83A90];
      sub_25DD74F04();
      sub_25DD97174();
      (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
      swift_willThrow();
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_25DD82FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_25DD967C4();
  MEMORY[0x28223BE20](v9);
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82844();
    if (!v5)
    {
      LOBYTE(v31[0]) = result & 1;
      return swift_dynamicCast();
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (!v5)
    {
      v11 = MEMORY[0x25F8A3180](result);
      v13 = v12;

      v31[0] = v11;
      v31[1] = v13;
      return swift_dynamicCast();
    }

    return result;
  }

  v14 = MEMORY[0x277D839F8];
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (v5)
    {
      return result;
    }

    v15 = sub_25DD96E54();
    if ((v16 & 1) == 0)
    {
      v31[0] = v15;
      return swift_dynamicCast();
    }

    goto LABEL_15;
  }

  v14 = MEMORY[0x277D83A90];
  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82170();
    if (v5)
    {
      return result;
    }

    v17 = COERCE_DOUBLE(sub_25DD96E54());
    if ((v18 & 1) == 0)
    {
      v22 = v17;
      *v31 = v22;
      return swift_dynamicCast();
    }

LABEL_15:
    v19 = sub_25DD97194();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2418, &qword_25DD99C20);
    *v21 = v14;
    sub_25DD74F04();
    sub_25DD97174();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    return swift_willThrow();
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_25DD826B8(sub_25DD809D8, MEMORY[0x277D83B88], sub_25DD7DC68);
    if (!v5)
    {
      v31[0] = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82228(sub_25DD7FC2C, MEMORY[0x277D84900], sub_25DD7CAF0);
    if (!v5)
    {
      LOBYTE(v31[0]) = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD823A4(sub_25DD800CC, MEMORY[0x277D84958], sub_25DD7D0E8);
    if (!v5)
    {
      LOWORD(v31[0]) = result;
      return swift_dynamicCast();
    }
  }

  else if (swift_dynamicCastMetatype())
  {
    result = sub_25DD82520(sub_25DD8056C, MEMORY[0x277D849A8], sub_25DD7D6E0);
    if (!v5)
    {
      LODWORD(v31[0]) = result;
      return swift_dynamicCast();
    }
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        result = sub_25DD826B8(sub_25DD81BD8, MEMORY[0x277D83E88], sub_25DD7F348);
        if (v5)
        {
          return result;
        }

        v31[0] = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD82228(sub_25DD80E44, MEMORY[0x277D84B78], sub_25DD7E200);
        if (v5)
        {
          return result;
        }

        LOBYTE(v31[0]) = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD823A4(sub_25DD812D8, MEMORY[0x277D84C58], sub_25DD7E7E0);
        if (v5)
        {
          return result;
        }

        LOWORD(v31[0]) = result;
      }

      else if (swift_dynamicCastMetatype())
      {
        result = sub_25DD82520(sub_25DD8176C, MEMORY[0x277D84CC0], sub_25DD7EDC0);
        if (v5)
        {
          return result;
        }

        LODWORD(v31[0]) = result;
      }

      else
      {
        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype())
          {
            sub_25DD08A7C(*v4 + 48, v31);
            v23 = v32;
            v24 = v33;
            v34 = __swift_project_boxed_opaque_existential_1(v31, v32);
            v25 = sub_25DD82170();
            if (!v5)
            {
              v30 = MEMORY[0x25F8A3180](v25);
              v29 = v28;

              (*(v24 + 16))(v30, v29, v23, v24);

              swift_dynamicCast();
            }

            return __swift_destroy_boxed_opaque_existential_1(v31);
          }

          else
          {
            MEMORY[0x28223BE20](0);
            *(&v30 - 6) = a2;
            *(&v30 - 5) = a3;
            *(&v30 - 4) = v26;
            *(&v30 - 3) = v27;
            *(&v30 - 2) = a1;
            return sub_25DD82054();
          }
        }

        result = sub_25DD826B8(sub_25DD81BD8, MEMORY[0x277D84D38], sub_25DD7F348);
        if (v5)
        {
          return result;
        }

        v31[0] = result;
      }

      return swift_dynamicCast();
    }

    result = sub_25DD826B8(sub_25DD809D8, MEMORY[0x277D84A28], sub_25DD7DC68);
    if (!v5)
    {
      v31[0] = result;
      return swift_dynamicCast();
    }
  }

  return result;
}

uint64_t sub_25DD8376C()
{
  v0 = sub_25DD6F5BC();
  sub_25DD74D70(v0, v2, v3, v1 & 1);

  type metadata accessor for URIValueFromNodeDecoder();
  sub_25DD79678();

  sub_25DD96E64();
  return sub_25DD74E64();
}

uint64_t sub_25DD83824@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for URIValueFromNodeDecoder();
  a1[4] = sub_25DD79678();
  *a1 = v3;
}

uint64_t sub_25DD839A0()
{
  result = sub_25DD973B4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD839F0()
{
  result = sub_25DD973C4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83A98()
{
  result = sub_25DD973F4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83AE8()
{
  result = sub_25DD973D4();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83C28()
{
  result = sub_25DD97404();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_25DD83C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

__n128 sub_25DD83CE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_25DD83CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD739D0(a1, v5);
  sub_25DD91148(v5, a2);
  return sub_25DD73D9C(a1);
}

uint64_t sub_25DD83D3C(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v18 = a3;
  v12 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for URIValueToNodeEncoder(0);
  v15 = sub_25DD84740();
  sub_25DD84894(a1, a4, a5, v14);
  if (v6)
  {
  }

  else
  {
    sub_25DD83E7C(v7, v17);
    v15 = sub_25DD91164(v14, a2, v18);

    sub_25DD83ED8(v17);
    sub_25DD83F2C(v14);
  }

  return v15;
}

uint64_t sub_25DD83F2C(uint64_t a1)
{
  v2 = type metadata accessor for URIEncodedNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD83F88(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v25 = a5;
  v23 = a2;
  v8 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v15, a4);
    type metadata accessor for URIValueToNodeEncoder(0);
    sub_25DD84740();
    v20 = v27;
    sub_25DD84894(v18, a4, v25, v10);
    if (v20)
    {
      (*(v16 + 8))(v18, a4);
    }

    else
    {
      sub_25DD83E7C(v5, v26);
      v21 = sub_25DD91164(v10, v23, v24);

      sub_25DD83ED8(v26);
      sub_25DD83F2C(v10);
      (*(v16 + 8))(v18, a4);
      return v21;
    }
  }
}

uint64_t sub_25DD8428C(uint64_t a1, int a2)
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

uint64_t sub_25DD842D4(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD84334()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25DD8437C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4 & 1;
  return result;
}

uint64_t sub_25DD844D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  v8 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  return sub_25DD85CE0(a5, a6 + *(v8 + 20), type metadata accessor for URIEncodedNode);
}

uint64_t sub_25DD84530@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  return sub_25DD8459C(v1 + v3, a1, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
}

uint64_t sub_25DD8459C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD84604(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD84678(a1, v1 + v3, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

uint64_t sub_25DD84678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD84740()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_25DD6F5B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  type metadata accessor for URIEncodedNode(0);
  swift_storeEnumTagMultiPayload();
  *v9 = v2;
  *(v9 + 8) = v4;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8 & 1;
  return v0;
}

uint64_t sub_25DD847F4()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_25DD6F5B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  type metadata accessor for URIEncodedNode(0);
  swift_storeEnumTagMultiPayload();
  *v9 = v2;
  *(v9 + 8) = v4;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8 & 1;
  return v0;
}

uint64_t sub_25DD84894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v5 = v4;
  v8 = *v5;
  v46 = a4;
  v47 = v8;
  v50 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  MEMORY[0x28223BE20](v50);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2900, &unk_25DD9FE90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v46 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25DD967C4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, a2);
  if (!swift_dynamicCast())
  {
    (*(v18 + 56))(v13, 1, 1, v17);
    sub_25DD84E28(v13);
    v52 = v47;
    v53 = sub_25DD84F38(&qword_27FCC2908, type metadata accessor for URIValueToNodeEncoder, &unk_25DD9FF48);
    v51[0] = v5;

    v24 = v49;
    sub_25DD96AA4();
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v51);
    v35 = v5 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    sub_25DD8459C(v35 + *(v50 + 20), v46, type metadata accessor for URIEncodedNode);
    swift_beginAccess();
    v5[2] = MEMORY[0x277D84F90];

    sub_25DD6F5B0();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    type metadata accessor for URIEncodedNode(0);
    v44 = v54;
    swift_storeEnumTagMultiPayload();
    *v44 = v37;
    *(v44 + 8) = v39;
    *(v44 + 16) = v41;
    *(v44 + 24) = v43 & 1;
    swift_beginAccess();
    sub_25DD84678(v44, v35, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
    return swift_endAccess();
  }

  (*(v18 + 56))(v13, 0, 1, v17);
  (*(v18 + 32))(v20, v13, v17);

  nullsub_1();
  v22 = v21;
  v52 = &type metadata for URISingleValueEncodingContainer;
  v53 = sub_25DD84EE4();
  v51[0] = v22;
  __swift_mutable_project_boxed_opaque_existential_1(v51, &type metadata for URISingleValueEncodingContainer);
  sub_25DD84F38(&qword_27FCC2918, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v23 = v49;
  sub_25DD976C4();
  if (!v23)
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_7;
  }

  (*(v18 + 8))(v20, v17);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v51);
  swift_beginAccess();
  v5[2] = MEMORY[0x277D84F90];

  sub_25DD6F5B0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  type metadata accessor for URIEncodedNode(0);
  v33 = v54;
  swift_storeEnumTagMultiPayload();
  *v33 = v26;
  *(v33 + 8) = v28;
  *(v33 + 16) = v30;
  *(v33 + 24) = v32 & 1;
  v34 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD84678(v33, v5 + v34, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

uint64_t sub_25DD84E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2900, &unk_25DD9FE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25DD84EE4()
{
  result = qword_27FCC2910;
  if (!qword_27FCC2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2910);
  }

  return result;
}

uint64_t sub_25DD84F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25DD84F80()
{

  sub_25DD84FB0(v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry);
  return v0;
}

uint64_t sub_25DD84FB0(uint64_t a1)
{
  v2 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD8500C()
{

  sub_25DD84FB0(v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry);

  return swift_deallocClassInstance();
}

uint64_t sub_25DD85078(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a5;
  v22 = a1;
  v24 = a4;
  v23 = a3;
  v7 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8459C(v5 + v14, v13, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_beginAccess();
  v15 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_25DD85B08(0, v15[2] + 1, 1, v15);
    *(v5 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_25DD85B08((v17 > 1), v18 + 1, 1, v15);
  }

  v15[2] = v18 + 1;
  sub_25DD85CE0(v13, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  *(v5 + 16) = v15;
  swift_endAccess();
  sub_25DD8459C(v21, &v11[*(v7 + 20)], type metadata accessor for URIEncodedNode);
  v19 = v23;
  *v11 = v22;
  *(v11 + 1) = a2;
  *(v11 + 2) = v19;
  v11[24] = v24 & 1;
  swift_beginAccess();

  sub_25DD84678(v11, v5 + v14, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  return swift_endAccess();
}

uint64_t sub_25DD852D4()
{
  v2 = v0;
  v3 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8459C(v2 + v10, v9, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_beginAccess();
  v11 = *(v2 + 16);
  if (v11[2])
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v13 = v11[2];
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_10:
      __break(1u);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_25DD85F68(v11);
  v11 = result;
  v13 = *(result + 16);
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  v14 = v13 - 1;
  v15 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14;
  v11[2] = v14;
  *(v2 + 16) = v11;
  sub_25DD85CE0(v15, v7, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  swift_endAccess();
  v16 = *(v3 + 20);
  v17 = *(v9 + 2);
  v18 = v9[24];
  v21 = *v9;
  v22 = v17;
  v23 = v18;
  v19 = sub_25DD6F85C();
  sub_25DD70AC4(&v9[v16], &v21, &type metadata for URICoderCodingKey, v19);
  if (v1)
  {
    sub_25DD84FB0(v7);
    return sub_25DD84FB0(v9);
  }

  else
  {
    sub_25DD84FB0(v9);
    swift_beginAccess();
    sub_25DD84678(v7, v2 + v10, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
    return swift_endAccess();
  }
}

uint64_t sub_25DD8552C()
{
  v1 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  v7 = v6 != 0;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  if (v6 < 2)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2860, &unk_25DD9F8F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DD98100;
    v21 = v0 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
    swift_beginAccess();
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    *(inited + 32) = *v21;
    *(inited + 40) = v22;
    *(inited + 48) = v23;
    *(inited + 56) = v24;
    *&v41 = v9;

    sub_25DD85D48(inited);
    v25 = v41;
    v26 = *(v41 + 16);
    if (v26)
    {
      v44 = v8;
      sub_25DD765D4(0, v26, 0);
      v27 = v44;
      v40 = v25;
      v28 = (v25 + 56);
      do
      {
        v30 = *(v28 - 3);
        v29 = *(v28 - 2);
        v31 = *(v28 - 1);
        v32 = *v28;
        v44 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);

        if (v34 >= v33 >> 1)
        {
          sub_25DD765D4((v33 > 1), v34 + 1, 1);
          v27 = v44;
        }

        v42 = &type metadata for URICoderCodingKey;
        v43 = sub_25DD6F85C();
        v35 = swift_allocObject();
        *&v41 = v35;
        *(v35 + 16) = v30;
        *(v35 + 24) = v29;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
        *(v27 + 16) = v34 + 1;
        sub_25DCFE2FC(&v41, v27 + 40 * v34 + 32);
        v28 += 32;
        --v26;
      }

      while (v26);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v27;
  }

  else
  {
    v37 = v0;
    *&v41 = MEMORY[0x277D84F90];
    v38 = v2;
    v10 = *(v2 + 80);

    result = sub_25DD85E3C(0, (v6 - v7) & ~((v6 - v7) >> 63), 0);
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      v36 = v5;
      v39 = v5 + ((v10 + 32) & ~v10);
      v9 = v41;
      v12 = v38;
      v40 = v6;
      while (v7 < v6)
      {
        sub_25DD8459C(v39 + *(v12 + 72) * v7, v4, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
        v13 = *v4;
        v14 = *(v4 + 1);
        v15 = *(v4 + 2);
        v16 = v4[24];

        result = sub_25DD84FB0(v4);
        *&v41 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_25DD85E3C((v17 > 1), v18 + 1, 1);
          v12 = v38;
          v9 = v41;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 32 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v14;
        *(v19 + 48) = v15;
        *(v19 + 56) = v16;
        ++v7;
        v6 = v40;
        if (v40 == v7)
        {

          v0 = v37;
          v8 = MEMORY[0x277D84F90];
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD858CC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  nullsub_1();
  type metadata accessor for URIKeyedEncodingContainer(0, a2, a3, v5);
  swift_getWitnessTable();
  return sub_25DD97344();
}

uint64_t sub_25DD85998@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{

  v9 = a1(v8);
  a4[3] = a2;
  result = a3();
  a4[4] = result;
  *a4 = v9;
  return result;
}

uint64_t sub_25DD85AA4@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{

  v9 = a1(v8);
  a4[3] = a2;
  result = a3();
  a4[4] = result;
  *a4 = v9;
  return result;
}

void *sub_25DD85B08(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2930, &unk_25DDA0020);
  v10 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) - 8);
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
  v15 = *(type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0) - 8);
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

uint64_t sub_25DD85CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_25DD85D48(char *result)
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

  result = sub_25DD76488(result, v10, 1, v3);
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

char *sub_25DD85E3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DD85E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25DD85E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2860, &unk_25DD9F8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25DD85F7C()
{
  result = qword_27FCC2920;
  if (!qword_27FCC2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2920);
  }

  return result;
}

unint64_t sub_25DD85FD4()
{
  result = qword_27FCC2928;
  if (!qword_27FCC2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2928);
  }

  return result;
}

uint64_t sub_25DD86030(uint64_t a1)
{
  result = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(319);
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

uint64_t sub_25DD860F8(uint64_t a1)
{
  result = type metadata accessor for URIEncodedNode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD86184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD87ED8(a1, v11);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70AC4(v11, a2, a4, a5);
  swift_endAccess();
  return sub_25DD87D78(v11, type metadata accessor for URIEncodedNode);
}

uint64_t sub_25DD862BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v18 = a4;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, a1, a5);
  sub_25DD7869C();
  sub_25DD96A54();
  *v15 = v20;
  swift_storeEnumTagMultiPayload();
  sub_25DD86184(v15, a2, a3, v18, v19);
  return sub_25DD87D78(v15, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8646C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v35 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v35);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v34 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v32[-v16];
  (*(v13 + 16))(&v32[-v16], a1, a5);
  if ((sub_25DD97044() & 1) != 0 && sub_25DD97034() >= 65)
  {
    v40 = 0x8000000000000000;
    if (sub_25DD97044())
    {
      if (sub_25DD97034() < 64)
      {
LABEL_14:
        sub_25DD97024();
        goto LABEL_15;
      }
    }

    else
    {
      v33 = sub_25DD97044();
      v18 = sub_25DD97034();
      if ((v33 & 1) == 0)
      {
        if (v18 >= 64)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (v18 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_25DD978D4();
        v22 = v34;
        sub_25DD975B4();
        v23 = sub_25DD96AE4();
        v24 = *(v13 + 8);
        v24(v22, a5);
        if (v23)
        {
          v24(v17, a5);
LABEL_20:
          sub_25DD87E84();
          swift_allocError();
          *v29 = 2;
          return swift_willThrow();
        }

        goto LABEL_14;
      }
    }

    sub_25DD7A8A8();
    v19 = v34;
    sub_25DD97014();
    v20 = sub_25DD96AE4();
    v21 = *(v13 + 8);
    v21(v19, a5);
    if (v20)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  if (sub_25DD97034() <= 64 && (sub_25DD97034() != 64 || (sub_25DD97044() & 1) != 0))
  {
    goto LABEL_26;
  }

  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v25 = sub_25DD97044();
  v26 = sub_25DD97034();
  if (v25)
  {
    if (v26 > 64)
    {
      goto LABEL_18;
    }

LABEL_25:
    sub_25DD97024();
    goto LABEL_26;
  }

  if (v26 <= 63)
  {
    goto LABEL_25;
  }

LABEL_18:
  sub_25DD7A8A8();
  v27 = v34;
  sub_25DD97014();
  v28 = sub_25DD96AE4();
  v21 = *(v13 + 8);
  v21(v27, a5);
  if (v28)
  {
LABEL_19:
    v21(v17, a5);
    goto LABEL_20;
  }

LABEL_26:
  v31 = sub_25DD97024();
  (*(v13 + 8))(v17, a5);
  *v10 = v31;
  swift_storeEnumTagMultiPayload();
  sub_25DD86184(v10, v36, v37, v38, v39);
  return sub_25DD87D78(v10, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD869FC(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  *v9 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD86184(v9, a2, v10, *(a3 + 16), *(a3 + 24));
  return sub_25DD87D78(v9, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD86AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v4;
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);

  sub_25DD86184(v11, a3, v12, v13, v14);
  return sub_25DD87D78(v11, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD86BD0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *v3;
  v9 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_25DD7869C();
  return sub_25DD862BC(&v9, a1, v5, v6, MEMORY[0x277D839F8], v7);
}

uint64_t sub_25DD86C3C(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *v3;
  v9 = a3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_25DD78768();
  return sub_25DD862BC(&v9, a1, v5, v6, MEMORY[0x277D83A90], v7);
}

uint64_t sub_25DD86E14(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD86EC0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD86F6C(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD87018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *v5;
  v13 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = a4();
  return sub_25DD8646C(&v13, a2, v8, v9, a5, v10, v11);
}

uint64_t sub_25DD87090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v59 = type metadata accessor for URIEncodedNode(0);
  v11 = MEMORY[0x28223BE20](v59);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a3 + 16);
  v58 = *(v66 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v57);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_25DD967C4();
  v65 = *(v69 - 8);
  v15 = MEMORY[0x28223BE20](v69);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 16);
  v61 = a1;
  v23(v22, a1, a4);
  if (swift_dynamicCast())
  {
    sub_25DD86E14(v68[0], a2, a3, sub_25DD78BA4, MEMORY[0x277D84B78]);
    return (*(v20 + 8))(v22, a4);
  }

  v67 = a2;
  v55 = v6;
  if (swift_dynamicCast())
  {
    sub_25DD86E14(v68[0], v67, a3, sub_25DD78878, MEMORY[0x277D84900]);
    return (*(v20 + 8))(v22, a4);
  }

  v24 = a3;
  if (swift_dynamicCast())
  {
    v25 = v68[0];
    v26 = MEMORY[0x277D84C58];
    v27 = sub_25DD78CB0;
    v28 = v67;
LABEL_9:
    sub_25DD86EC0(v25, v28, v24, v27, v26);
    return (*(v20 + 8))(v22, a4);
  }

  v29 = swift_dynamicCast();
  v30 = v67;
  if (v29)
  {
    v25 = v68[0];
    v26 = MEMORY[0x277D84958];
    v27 = sub_25DD78900;
    v28 = v67;
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v32 = v68[0];
    v33 = MEMORY[0x277D84CC0];
    v34 = sub_25DD78DBC;
LABEL_15:
    sub_25DD86F6C(v32, v30, v24, v34, v33);
    return (*(v20 + 8))(v22, a4);
  }

  if (swift_dynamicCast())
  {
    v32 = v68[0];
    v33 = MEMORY[0x277D849A8];
    v34 = sub_25DD78988;
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v35 = v68[0];
    v36 = MEMORY[0x277D84D38];
    v37 = sub_25DD78EC8;
LABEL_24:
    sub_25DD87018(v35, v30, v24, v37, v36);
    return (*(v20 + 8))(v22, a4);
  }

  if (swift_dynamicCast())
  {
    v35 = v68[0];
    v36 = MEMORY[0x277D84A28];
    v37 = sub_25DD78A10;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v35 = v68[0];
    v36 = MEMORY[0x277D83B88];
    v37 = sub_25DD787F0;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v35 = v68[0];
    v36 = MEMORY[0x277D83E88];
    v37 = sub_25DD78A98;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    sub_25DD86C3C(v30, v24, *v68);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD86BD0(v30, v24, *v68);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD86AD8(v68[0], v68[1], v30, v24);
  }

  else if (swift_dynamicCast())
  {
    sub_25DD869FC(v68[0], v30, v24);
  }

  else if (swift_dynamicCast())
  {
    v38 = v65;
    v39 = v63;
    v40 = v69;
    (*(v65 + 32))(v63, v19, v69);
    v41 = *v5;
    v42 = v64;
    (*(v38 + 16))(v64, v39, v40);
    swift_storeEnumTagMultiPayload();
    sub_25DD86184(v42, v67, v41, v66, *(v24 + 24));
    sub_25DD87D78(v64, type metadata accessor for URIEncodedNode.Primitive);
    (*(v65 + 8))(v63, v69);
  }

  else
  {
    v43 = *v5;
    v44 = v56;
    v45 = v66;
    (*(v58 + 16))(v56, v67, v66);
    v46 = sub_25DD6F510(v44, v45, *(v24 + 24));
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v60;
    swift_storeEnumTagMultiPayload();
    sub_25DD85078(v46, v48, v50, v52 & 1, v53);

    sub_25DD87D78(v53, type metadata accessor for URIEncodedNode);
    v68[3] = type metadata accessor for URIValueToNodeEncoder(0);
    v68[4] = sub_25DD87DD8();
    v68[0] = v43;

    v54 = v55;
    sub_25DD96AA4();
    __swift_destroy_boxed_opaque_existential_1(v68);
    if (!v54)
    {
      sub_25DD852D4();
    }
  }

  return (*(v20 + 8))(v22, a4);
}

uint64_t sub_25DD87954@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for URIValueToNodeEncoder(0);
  a1[4] = sub_25DD87DD8();
  *a1 = v3;
}

uint64_t sub_25DD87D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25DD87DD8()
{
  result = qword_27FCC2908;
  if (!qword_27FCC2908)
  {
    type metadata accessor for URIValueToNodeEncoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2908);
  }

  return result;
}

uint64_t sub_25DD87E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_25DD87E84()
{
  result = qword_27FCC2938;
  if (!qword_27FCC2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2938);
  }

  return result;
}

uint64_t sub_25DD87ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD87F3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 < 0)
  {
    sub_25DD87E84();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    *v5 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
    sub_25DD70920(v5);
    swift_endAccess();
    return sub_25DD88150(v5);
  }
}

uint64_t sub_25DD88064(char a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88150(uint64_t a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD881AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);

  sub_25DD70920(v7);
  swift_endAccess();
  return sub_25DD88150(v7);
}

uint64_t sub_25DD882AC(uint64_t a1, double a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD883A0(uint64_t a1, float a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD884B0(char a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD885A0(__int16 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88690(int a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88780(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88884(unsigned __int8 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88974(unsigned __int16 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88A64(unsigned int a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v5);
  swift_endAccess();
  return sub_25DD88150(v5);
}

uint64_t sub_25DD88B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63[3] = a4;
  v76 = a2;
  v70 = sub_25DD967C4();
  v67 = *(v70 - 8);
  v6 = MEMORY[0x28223BE20](v70);
  v66 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = v63 - v8;
  v9 = type metadata accessor for URIEncodedNode.Primitive(0);
  v10 = MEMORY[0x28223BE20](v9);
  v65 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v69 = (v63 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = v63 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v72 = v63 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v73 = (v63 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v74 = (v63 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v75 = (v63 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (v63 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v63 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (v63 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = (v63 - v36);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = (v63 - v39);
  MEMORY[0x28223BE20](v38);
  v42 = v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v43;
  v44 = *(v43 + 16);
  v63[2] = a1;
  v44(v42, a1, a3);
  if (!swift_dynamicCast())
  {
    v63[1] = v9;
    v48 = v76;
    if (swift_dynamicCast())
    {
      *v37 = SLOBYTE(v78);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      sub_25DD70920(v37);
      swift_endAccess();
      sub_25DD88150(v37);
      v46 = a3;
      return (*(v80 + 8))(v42, v46);
    }

    v46 = a3;
    if (swift_dynamicCast())
    {
      v49 = v42;
      *v34 = LOWORD(v78);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      sub_25DD70920(v34);
      swift_endAccess();
      v50 = v34;
LABEL_14:
      sub_25DD88150(v50);
      v42 = v49;
      return (*(v80 + 8))(v42, v46);
    }

    if (swift_dynamicCast())
    {
      v49 = v42;
      *v31 = SLOWORD(v78);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      sub_25DD70920(v31);
      swift_endAccess();
      v50 = v31;
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      v49 = v42;
      *v28 = LODWORD(v78);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      v51 = v28;
LABEL_13:
      sub_25DD70920(v51);
      swift_endAccess();
      v50 = v28;
      goto LABEL_14;
    }

    if (swift_dynamicCast())
    {
      v45 = v42;
      *&v53 = SLODWORD(v78);
      v54 = v75;
LABEL_18:
      *v54 = v53;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      sub_25DD70920(v54);
      swift_endAccess();
      v47 = v54;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      v45 = v42;
      v53 = v78;
      v54 = v74;
      goto LABEL_18;
    }

    if (swift_dynamicCast())
    {
      v49 = v42;
      v28 = v73;
      *v73 = v78;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
      v51 = v28;
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
LABEL_20:
      sub_25DD87F3C(v77[0], v48);
      return (*(v80 + 8))(v42, v46);
    }

    if (swift_dynamicCast())
    {
      v49 = v42;
      v55 = *&v78;
      v56 = v72;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v49 = v42;
          v57 = v79;
          v56 = v69;
          *v69 = v78;
          *(v56 + 8) = v57;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            v45 = v42;
            if (swift_dynamicCast())
            {
              v59 = v66;
              v58 = v67;
              v60 = v70;
              (*(v67 + 32))(v66, v68, v70);
              v61 = *(v58 + 16);
              v62 = v65;
              v61(v65, v59, v60);
              swift_storeEnumTagMultiPayload();
              swift_beginAccess();
              type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
              sub_25DD70920(v62);
              swift_endAccess();
              sub_25DD88150(v65);
              (*(v67 + 8))(v66, v70);
            }

            else
            {
              v77[3] = type metadata accessor for URIValueToNodeEncoder(0);
              v77[4] = sub_25DD87DD8();
              v77[0] = v48;

              sub_25DD96AA4();
              __swift_destroy_boxed_opaque_existential_1(v77);
            }

            goto LABEL_4;
          }

          v49 = v42;
          v56 = v64;
          *v64 = LOBYTE(v78);
        }

        goto LABEL_31;
      }

      v49 = v42;
      v55 = v78;
      v56 = v71;
    }

    *v56 = v55;
LABEL_31:
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
    sub_25DD70920(v56);
    swift_endAccess();
    v50 = v56;
    goto LABEL_14;
  }

  v45 = v42;
  v46 = a3;
  *v40 = LOBYTE(v78);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v40);
  swift_endAccess();
  v47 = v40;
LABEL_3:
  sub_25DD88150(v47);
LABEL_4:
  v42 = v45;
  return (*(v80 + 8))(v42, v46);
}

uint64_t sub_25DD89644(char a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  v6[1] = a2;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);

  sub_25DD70920(v6);
  swift_endAccess();
  return sub_25DD88150(v6);
}

uint64_t sub_25DD89830(double a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89924(float a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89A34(char a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89B24(__int16 a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89C14(int a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89D04(uint64_t a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89E24(unsigned __int8 a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD89F14(unsigned __int16 a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD8A004(unsigned int a1)
{
  v2 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD70920(v4);
  swift_endAccess();
  return sub_25DD88150(v4);
}

uint64_t sub_25DD8A1A0(uint64_t a1)
{
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);

  sub_25DD7101C();
  swift_endAccess();

  return a1;
}

uint64_t sub_25DD8A234(uint64_t a1, double a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A3DC(uint64_t a1, float a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A588(char a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A72C(__int16 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8A8D0(int a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AA74(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AC14(unsigned __int8 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8ADB8(unsigned __int16 a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8AF5C(unsigned int a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8B100(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 < 0)
  {
    sub_25DD87E84();
    swift_allocError();
    *v10 = 2;
    return swift_willThrow();
  }

  else
  {
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
    sub_25DD71160(v5);
    swift_endAccess();
    sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
    return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
  }
}

uint64_t sub_25DD8B2DC(uint64_t a1)
{
  v2 = type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  MEMORY[0x28223BE20](v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC22OpenAPIRuntimeInternal21URIValueToNodeEncoder_currentStackEntry;
  swift_beginAccess();
  sub_25DD8B794(v8 + *(v2 + 20), v7, type metadata accessor for URIEncodedNode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = 0;
  if (EnumCaseMultiPayload == 3)
  {
    return v10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(*v7 + 16);

    return v10;
  }

  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000024, 0x800000025DDAB5B0);
  sub_25DD8B794(v8, v4, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  sub_25DD97224();
  sub_25DD8B7FC(v4, type metadata accessor for URIValueToNodeEncoder.CodingStackEntry);
  MEMORY[0x25F8A3200](46, 0xE100000000000000);
  result = sub_25DD97294();
  __break(1u);
  return result;
}

uint64_t sub_25DD8B558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for URIValueToNodeEncoder(0);
  a2[4] = sub_25DD87DD8();
  *a2 = a1;
}

uint64_t sub_25DD8B5A8()
{
  sub_25DD87E84();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_25DD8B5F4(char a1, uint64_t a2)
{
  v3 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v8, v5, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
  sub_25DD71160(v5);
  swift_endAccess();
  sub_25DD8B7FC(v5, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v8, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8B794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD8B7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD8B85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URIEncodedNode(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_25DD8B794(v10, v7, type metadata accessor for URIEncodedNode.Primitive);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);

  sub_25DD71160(v7);
  swift_endAccess();
  sub_25DD8B7FC(v7, type metadata accessor for URIEncodedNode);
  return sub_25DD8B7FC(v10, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD8BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v45 = type metadata accessor for URIEncodedNode(0);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v41 - v11;
  v12 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v12);
  v47 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25DD967C4();
  v49 = *(v51 - 8);
  v14 = MEMORY[0x28223BE20](v51);
  v46 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v43 = a1;
  v22(v21, a1, a3);
  if (swift_dynamicCast())
  {
    sub_25DD8AC14(v50[0], a2);
  }

  else
  {
    v41 = v4;
    v42 = a2;
    if (swift_dynamicCast())
    {
      sub_25DD8A588(v50[0], v42);
    }

    else
    {
      v23 = swift_dynamicCast();
      v24 = v42;
      if (v23)
      {
        sub_25DD8ADB8(v50[0], v42);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8A72C(v50[0], v24);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8AF5C(v50[0], v24);
      }

      else if (swift_dynamicCast())
      {
        sub_25DD8A8D0(v50[0], v24);
      }

      else
      {
        if (swift_dynamicCast())
        {
          goto LABEL_14;
        }

        if (swift_dynamicCast() || swift_dynamicCast())
        {
          sub_25DD8AA74(v50[0], v24);
          return (*(v19 + 8))(v21, a3);
        }

        if (swift_dynamicCast())
        {
LABEL_14:
          sub_25DD8B100(v50[0], v24);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8A3DC(v24, *v50);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8A234(v24, *v50);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8B85C(v50[0], v50[1], v24);
        }

        else if (swift_dynamicCast())
        {
          sub_25DD8B5F4(v50[0], v24);
        }

        else if (swift_dynamicCast())
        {
          v26 = v49;
          v27 = v46;
          v28 = v51;
          (*(v49 + 32))(v46, v18, v51);
          v29 = *(v26 + 16);
          v30 = v47;
          v29(v47, v27, v28);
          swift_storeEnumTagMultiPayload();
          v31 = v48;
          sub_25DD8B794(v30, v48, type metadata accessor for URIEncodedNode.Primitive);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          type metadata accessor for URIValueToNodeEncoder.CodingStackEntry(0);
          sub_25DD71160(v31);
          swift_endAccess();
          sub_25DD8B7FC(v48, type metadata accessor for URIEncodedNode);
          sub_25DD8B7FC(v47, type metadata accessor for URIEncodedNode.Primitive);
          (*(v49 + 8))(v46, v51);
        }

        else
        {

          sub_25DD8B2DC(v32);
          v33 = sub_25DD6F5BC();
          v35 = v34;
          v37 = v36;
          v39 = v38;
          swift_storeEnumTagMultiPayload();
          sub_25DD85078(v33, v35, v37, v39 & 1, v10);

          sub_25DD8B7FC(v10, type metadata accessor for URIEncodedNode);
          v50[3] = type metadata accessor for URIValueToNodeEncoder(0);
          v50[4] = sub_25DD87DD8();
          v50[0] = v24;
          v40 = v41;
          sub_25DD96AA4();
          __swift_destroy_boxed_opaque_existential_1(v50);
          if (!v40)
          {
            sub_25DD852D4();
          }
        }
      }
    }
  }

  return (*(v19 + 8))(v21, a3);
}

__n128 sub_25DD8C788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v6;
  result = *(a1 + 32);
  *(a6 + 32) = result;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  return result;
}

uint64_t sub_25DD8C7A4(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v9 = a1[2];
      v10 = a1[3];
      if (v9 != a2[2] || v10 != a2[3] || v5 >> 16 != *a2 >> 16 || v6 >> 16 != a2[1] >> 16)
      {
        return sub_25DD97364() & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  if (v5 == *a2 && v6 == a2[1])
  {
    return 1;
  }

  return sub_25DD975D4();
}

uint64_t sub_25DD8C85C(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x25F8A3F90](1);

    return sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    return sub_25DD96AC4();
  }
}

uint64_t sub_25DD8C908()
{
  sub_25DD97964();
  if (*(v0 + 32))
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8C9AC()
{
  v1 = *(v0 + 32);
  sub_25DD97964();
  if (v1)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8CA54(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x25F8A3F90](1);

    return sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    return sub_25DD96AC4();
  }
}

uint64_t sub_25DD8CB0C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_25DD97964();
  if (v2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
    sub_25DD96AC4();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD8CBB0(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = a2[1];
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      return sub_25DD73570(v4, v5, *(a1 + 16), *(a1 + 24), v6, v7, a2[2], a2[3]);
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD8CC10@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v9 = *(v5 + 64);
  v8 = *(v5 + 72);
  v110 = v6;
  v111 = v7;
  v112 = v9;
  v113 = v8;
  if (!*v5)
  {
    v95 = a5;

    v13 = sub_25DD2D928();
    v14 = *(v99 + 2);
    v103 = v9;
    v104 = v8;
    v108 = sub_25DD6F904(v14);
    v109 = v15;
    v106 = 32;
    v107 = 0xE100000000000000;
    sub_25DD07CBC();
    sub_25DD07E24();
    v16 = sub_25DD96FA4();
    v18 = v17;

    v101 = v16;
    v102 = v18;
    sub_25DD96FC4();

    v19 = sub_25DD96CA4();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    result = sub_25DD735F0(v13, v19, v21, v23, v25, &v118);
    v27 = v118;
    v28 = v119;
    v29 = v120;
    v30 = v121;
LABEL_61:
    *v95 = v27;
    *(v95 + 8) = v28;
    *(v95 + 24) = v29;
    *(v95 + 32) = v30;
    return result;
  }

  if (*v5 == 1)
  {
    v95 = a5;
    v12 = v7 >> 14;

    if (v7 >> 14 == v6 >> 14)
    {
LABEL_46:

      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0uLL;
    }

    else
    {
      v97 = a1 >> 16;
      while (1)
      {
        v34 = swift_allocObject();
        v35 = v6;
        if (v12 != v6 >> 14)
        {
          while (1)
          {
            v37 = sub_25DD96F44();
            v39 = v38;
            v40 = v37 == 61 && v38 == 0xE100000000000000;
            if (v40 || (v41 = v37, (sub_25DD975D4() & 1) != 0))
            {

              *(v34 + 16) = v35;
              v36 = 0;
              goto LABEL_26;
            }

            if (v41 == 38 && v39 == 0xE100000000000000)
            {
              break;
            }

            v43 = sub_25DD975D4();

            if ((v43 & 1) == 0)
            {
              v35 = sub_25DD96F24();
              if (v12 != v35 >> 14)
              {
                continue;
              }
            }

            goto LABEL_12;
          }
        }

LABEL_12:
        *(v34 + 16) = v35;
        v36 = 1;
LABEL_26:
        sub_25DD90AB0(v36, &v110, v6, v34, &v101);
        v44 = v101;
        v45 = v102;
        v46 = v103;
        v47 = v104;
        v48 = v105;

        if (v44)
        {

          sub_25DD90EE0();
          swift_allocError();
          *v68 = v45;
          *(v68 + 8) = v46;
          *(v68 + 16) = v47;
          *(v68 + 24) = v48;
          *(v68 + 32) = 0;
          return swift_willThrow();
        }

        v49 = *(v99 + 2);
        v101 = v45;
        v102 = v46;
        v103 = v47;
        v104 = v48;
        v108 = sub_25DD6F904(v49);
        v109 = v50;
        v106 = 32;
        v107 = 0xE100000000000000;
        sub_25DD07CBC();
        sub_25DD07E24();
        v51 = sub_25DD96FA4();
        v53 = v52;

        v101 = v51;
        v102 = v53;
        sub_25DD96FC4();

        v54 = sub_25DD96CA4();
        v56 = v55;
        v58 = v57;
        v60 = v59;

        if (v58 == a3 && v60 == v122 && v54 >> 16 == v97 && v56 >> 16 == a2 >> 16)
        {
          break;
        }

        if (sub_25DD97364())
        {
          goto LABEL_48;
        }

        v61 = v110;
        v62 = v111 >> 14;
        if (v111 >> 14 != v110 >> 14)
        {
          v63 = swift_allocObject();
          v64 = v61;
          while (sub_25DD96F44() != 38 || v65 != 0xE100000000000000)
          {
            v67 = sub_25DD975D4();

            if ((v67 & 1) == 0)
            {
              v64 = sub_25DD96F24();
              if (v62 != v64 >> 14)
              {
                continue;
              }
            }

            goto LABEL_9;
          }

LABEL_9:
          *(v63 + 16) = v64;
          sub_25DD90C3C(&v110, v61, v63);
        }

        v6 = v110;
        v12 = v111 >> 14;
        if (v111 >> 14 == v110 >> 14)
        {
          goto LABEL_46;
        }
      }

      v58 = a3;
LABEL_48:
      v98 = v49;
      v69 = v110;
      v122 = v111;
      v100 = v111 >> 14;
      if (v111 >> 14 == v110 >> 14)
      {
        v70 = 0;
        v122 = 7;
        v71 = 15;
        v72 = 0xE000000000000000;
      }

      else
      {
        v94 = swift_allocObject();
        v73 = v69;
        while (sub_25DD96F44() != 38 || v74 != 0xE100000000000000)
        {
          v76 = sub_25DD975D4();

          if ((v76 & 1) == 0)
          {
            v73 = sub_25DD96F24();
            if (v100 != v73 >> 14)
            {
              continue;
            }
          }

          goto LABEL_59;
        }

LABEL_59:
        *(v94 + 16) = v73;
        v71 = sub_25DD90C3C(&v110, v69, v94);
        v122 = v77;
        v70 = v78;
        v72 = v79;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_25DD98100;
      *(v80 + 32) = v54;
      *(v80 + 40) = v56;
      *(v80 + 48) = v58;
      *(v80 + 56) = v60;
      nullsub_1();
      v82 = v81;
      v101 = v71;
      v102 = v122;
      v103 = v70;
      v104 = v72;
      v108 = sub_25DD6F904(v98);
      v109 = v83;
      v106 = 32;
      v107 = 0xE100000000000000;
      v84 = sub_25DD96FA4();
      v86 = v85;

      v101 = v84;
      v102 = v86;
      sub_25DD96FC4();

      v87 = sub_25DD96CA4();
      v89 = v88;
      v91 = v90;
      v93 = v92;

      result = sub_25DD735F0(v82, v87, v89, v91, v93, &v114);
      v27 = v114;
      v28 = v115;
      v29 = v116;
      v30 = v117;
    }

    goto LABEL_61;
  }

  v31 = *(v99 + 1);
  sub_25DD90EE0();
  swift_allocError();
  if (v31 == 1)
  {
    v33 = 0x800000025DDAB610;
    *v32 = 0xD00000000000003FLL;
  }

  else
  {
    v33 = 0x800000025DDAB5E0;
    *v32 = 0xD00000000000002CLL;
  }

  *(v32 + 8) = v33;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 1;
  return swift_willThrow();
}

void sub_25DD8D538(uint64_t a1@<X8>)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1] >> 14;
  if (v4 == *v1 >> 14)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = 1;
    v8 = 7;
    v9 = 15;
  }

  else
  {
    v21 = swift_allocObject();
    v10 = v3;
    while (1)
    {
      v11 = sub_25DD96F44();
      v13 = v12;
      v14 = v11 == 44 && v12 == 0xE100000000000000;
      if (v14 || (v15 = v11, (sub_25DD975D4() & 1) != 0))
      {

        v18 = v21;
        *(v21 + 16) = v10;
        v19 = 0;
        goto LABEL_19;
      }

      if (v15 == 38 && v13 == 0xE100000000000000)
      {
        break;
      }

      v17 = sub_25DD975D4();

      if ((v17 & 1) == 0)
      {
        v10 = sub_25DD96F24();
        if (v4 != v10 >> 14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

LABEL_18:
    v18 = v21;
    *(v21 + 16) = v10;
    v19 = 1;
LABEL_19:
    sub_25DD90AB0(v19, v1, v3, v18, &v23);
    v7 = v23;
    v20 = v24;
    v5 = v25;
    v6 = v26;
    v2 = a1;

    v8 = *(&v20 + 1);
    v9 = v20;
  }

  *v2 = v7;
  *(v2 + 8) = v9;
  *(v2 + 16) = v8;
  *(v2 + 24) = v5;
  *(v2 + 32) = v6;
}

unint64_t sub_25DD8D6E8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1] >> 14;
  if (v3 == *v1 >> 14)
  {
    return 15;
  }

  v11 = swift_allocObject();
  v6 = v2;
  while (sub_25DD96F44() != a1 || v7 != 0xE100000000000000)
  {
    v9 = sub_25DD975D4();

    if ((v9 & 1) == 0)
    {
      v6 = sub_25DD96F24();
      if (v3 != v6 >> 14)
      {
        continue;
      }
    }

    goto LABEL_12;
  }

LABEL_12:
  *(v11 + 16) = v6;
  v10 = sub_25DD90C3C(v1, v2, v11);

  return v10;
}

char *sub_25DD8D834(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  v7 = *(v4 + 48);
  v211 = v7;
  v8 = *(v4 + 56);
  v212 = v8;
  v213 = v6;
  if (!*v4)
  {
    v82 = v8;
    if ((v8 ^ v7) < 0x4000)
    {

      v9 = MEMORY[0x277D84F90];
      goto LABEL_165;
    }

    v203 = *(v4 + 2);

    v9 = MEMORY[0x277D84F90];
    v85 = v7;
    while (1)
    {
      v220 = v9;
      if (v82 >> 14 == v85 >> 14)
      {
        v86 = 0;
        v87 = 0xE000000000000000;
      }

      else
      {
        v88 = swift_allocObject();
        v89 = v85;
        while (sub_25DD96F44() != 44 || v90 != 0xE100000000000000)
        {
          v92 = sub_25DD975D4();

          if ((v92 & 1) == 0)
          {
            v89 = sub_25DD96F24();
            if (v82 >> 14 != v89 >> 14)
            {
              continue;
            }
          }

          goto LABEL_85;
        }

LABEL_85:
        *(v88 + 16) = v89;
        sub_25DD90C3C(&v211, v85, v88);
        v86 = v93;
        v87 = v94;
      }

      v95 = sub_25DD2D928();
      *&v204[16] = v86;
      v205 = v87;
      v209 = sub_25DD6F904(v203);
      v210 = v96;
      v207 = 32;
      v208 = 0xE100000000000000;
      sub_25DD07CBC();
      sub_25DD07E24();
      v97 = sub_25DD96FA4();
      v99 = v98;

      *v204 = v97;
      *&v204[8] = v99;
      sub_25DD96FC4();

      v100 = sub_25DD96CA4();
      v102 = v101;
      v104 = v103;
      v106 = v105;

      sub_25DD735F0(v95, v100, v102, v104, v106, v218);
      v9 = v220;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
      }

      v108 = *(v9 + 2);
      v107 = *(v9 + 3);
      if (v108 >= v107 >> 1)
      {
        v9 = sub_25DD90DC0((v107 > 1), v108 + 1, 1, v9);
      }

      *(v9 + 2) = v108 + 1;
      v109 = &v9[40 * v108];
      v110 = v219;
      v111 = v218[1];
      *(v109 + 2) = v218[0];
      *(v109 + 3) = v111;
      *(v109 + 8) = v110;
      v85 = v211;
      v82 = v212;
      if (!((v212 ^ v211) >> 14))
      {
        goto LABEL_165;
      }
    }
  }

  v9 = *(v4 + 1);
  if (*v4 == 1)
  {
    v201 = v4;
    v11 = v7;
    v12 = v7 >> 14;
    v13 = v8 >> 14;

    if (v9)
    {
      if (v12 != v13)
      {
        v194 = a2 >> 16;
        v9 = MEMORY[0x277D84F90];
        do
        {
          v220 = v9;
          while (1)
          {
            v196 = swift_allocObject();
            v14 = v11;
            if (v13 != v11 >> 14)
            {
              while (1)
              {
                v17 = sub_25DD96F44();
                v19 = v18;
                v20 = v17 == 61 && v18 == 0xE100000000000000;
                if (v20 || (v21 = v17, (sub_25DD975D4() & 1) != 0))
                {

                  v15 = v196;
                  *(v196 + 16) = v14;
                  v16 = 0;
                  goto LABEL_25;
                }

                if (v21 == 38 && v19 == 0xE100000000000000)
                {
                  break;
                }

                v23 = sub_25DD975D4();

                if ((v23 & 1) == 0)
                {
                  v14 = sub_25DD96F24();
                  if (v13 != v14 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_11;
              }
            }

LABEL_11:
            v15 = v196;
            *(v196 + 16) = v14;
            v16 = 1;
LABEL_25:
            sub_25DD90AB0(v16, &v211, v11, v15, v204);
            v24 = v204[0];
            v25 = *&v204[8];
            v9 = v205;
            v26 = v206;

            if (v24)
            {

              sub_25DD90EE0();
              swift_allocError();
              *v185 = v25;
              *(v185 + 16) = v9;
              *(v185 + 24) = v26;
              goto LABEL_168;
            }

            v27 = *(v201 + 2);
            *v204 = v25;
            *&v204[16] = v9;
            v205 = v26;
            v209 = sub_25DD6F904(v27);
            v210 = v28;
            v207 = 32;
            v208 = 0xE100000000000000;
            sub_25DD07CBC();
            sub_25DD07E24();
            v29 = sub_25DD96FA4();
            v31 = v30;

            *v204 = v29;
            *&v204[8] = v31;
            sub_25DD96FC4();

            v32 = sub_25DD96CA4();
            v34 = v33;
            v36 = v35;
            v38 = v37;

            if (v36 == a3 && v38 == a4 && v32 >> 16 == a1 >> 16 && v34 >> 16 == v194)
            {
              break;
            }

            if (sub_25DD97364())
            {
              goto LABEL_42;
            }

            v39 = v211;
            v40 = v212 >> 14;
            if (v212 >> 14 != v211 >> 14)
            {
              v41 = swift_allocObject();
              v42 = v39;
              while (sub_25DD96F44() != 38 || v43 != 0xE100000000000000)
              {
                v45 = sub_25DD975D4();

                if ((v45 & 1) == 0)
                {
                  v42 = sub_25DD96F24();
                  if (v40 != v42 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_8;
              }

LABEL_8:
              *(v41 + 16) = v42;
              sub_25DD90C3C(&v211, v39, v41);
            }

            v11 = v211;
            v13 = v212 >> 14;
            if (v212 >> 14 == v211 >> 14)
            {
              goto LABEL_164;
            }
          }

          v36 = a3;
LABEL_42:
          v190 = v32;
          v191 = v34;
          v192 = v27;
          v46 = v211;
          v197 = v212 >> 14;
          if (v212 >> 14 == v211 >> 14)
          {
            v47 = 0;
            v48 = 0xE000000000000000;
            v49 = 15;
            v50 = 7;
          }

          else
          {
            v187 = swift_allocObject();
            v51 = v46;
            while (sub_25DD96F44() != 38 || v52 != 0xE100000000000000)
            {
              v54 = sub_25DD975D4();

              if ((v54 & 1) == 0)
              {
                v51 = sub_25DD96F24();
                if (v197 != v51 >> 14)
                {
                  continue;
                }
              }

              goto LABEL_53;
            }

LABEL_53:
            *(v187 + 16) = v51;
            v49 = sub_25DD90C3C(&v211, v46, v187);
            v50 = v55;
            v47 = v56;
            v48 = v57;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_25DD98100;
          *(v58 + 32) = v190;
          *(v58 + 40) = v191;
          *(v58 + 48) = v36;
          *(v58 + 56) = v38;
          nullsub_1();
          v60 = v59;
          *v204 = v49;
          *&v204[8] = v50;
          *&v204[16] = v47;
          v205 = v48;
          v209 = sub_25DD6F904(v192);
          v210 = v61;
          v207 = 32;
          v208 = 0xE100000000000000;
          v62 = sub_25DD96FA4();
          v64 = v63;

          *v204 = v62;
          *&v204[8] = v64;
          v65 = sub_25DD96FC4();
          v67 = v66;

          if (v67)
          {
            v68 = v65;
          }

          else
          {
            v68 = 0;
          }

          if (v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = 0xE000000000000000;
          }

          v70 = sub_25DD90F34(v68, v69);
          v72 = v71;
          v74 = v73;
          v76 = v75;

          sub_25DD735F0(v60, v70, v72, v74, v76, v214);
          v9 = v220;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
          }

          v78 = *(v9 + 2);
          v77 = *(v9 + 3);
          if (v78 >= v77 >> 1)
          {
            v9 = sub_25DD90DC0((v77 > 1), v78 + 1, 1, v9);
          }

          *(v9 + 2) = v78 + 1;
          v79 = &v9[40 * v78];
          v80 = v215;
          v81 = v214[1];
          *(v79 + 2) = v214[0];
          *(v79 + 3) = v81;
          *(v79 + 8) = v80;
          v11 = v211;
          v13 = v212 >> 14;
        }

        while (v212 >> 14 != v211 >> 14);
        goto LABEL_165;
      }

LABEL_72:
      v9 = MEMORY[0x277D84F90];
      goto LABEL_165;
    }

    if (v12 == v13)
    {
      goto LABEL_72;
    }

    v195 = a2 >> 16;
    v9 = MEMORY[0x277D84F90];
LABEL_94:
    v220 = v9;
    v112 = v7;
    while (1)
    {
      v198 = swift_allocObject();
      v116 = v112;
      if (v13 == v112 >> 14)
      {
LABEL_99:
        v117 = v198;
        *(v198 + 16) = v116;
        v118 = 1;
        v119 = v112;
      }

      else
      {
        while (1)
        {
          v120 = v112;
          v121 = sub_25DD96F44();
          v123 = v122;
          v124 = v121 == 61 && v122 == 0xE100000000000000;
          if (v124 || (v125 = v121, (sub_25DD975D4() & 1) != 0))
          {

            v117 = v198;
            *(v198 + 16) = v116;
            v118 = 0;
            goto LABEL_115;
          }

          if (v125 == 38 && v123 == 0xE100000000000000)
          {
            break;
          }

          v127 = sub_25DD975D4();

          if (v127)
          {
            goto LABEL_114;
          }

          v112 = v120;
          v116 = sub_25DD96F24();
          if (v13 == v116 >> 14)
          {
            goto LABEL_99;
          }
        }

LABEL_114:
        v117 = v198;
        *(v198 + 16) = v116;
        v118 = 1;
LABEL_115:
        v119 = v120;
      }

      sub_25DD90AB0(v118, &v211, v119, v117, v204);
      v128 = v204[0];
      v129 = *&v204[8];
      v9 = v205;
      v130 = v206;

      if (v128)
      {

        sub_25DD90EE0();
        swift_allocError();
        *v185 = v129;
        *(v185 + 16) = v9;
        *(v185 + 24) = v130;
LABEL_168:
        *(v185 + 32) = 0;
        goto LABEL_169;
      }

      v131 = *(v201 + 2);
      *v204 = v129;
      *&v204[16] = v9;
      v205 = v130;
      v209 = sub_25DD6F904(v131);
      v210 = v132;
      v207 = 32;
      v208 = 0xE100000000000000;
      sub_25DD07CBC();
      sub_25DD07E24();
      v133 = sub_25DD96FA4();
      v135 = v134;

      *v204 = v133;
      *&v204[8] = v135;
      sub_25DD96FC4();

      v136 = sub_25DD96CA4();
      v138 = v137;
      v140 = v139;
      v142 = v141;

      if (v140 == a3 && v142 == a4 && v136 >> 16 == a1 >> 16 && v138 >> 16 == v195 || (sub_25DD97364() & 1) != 0)
      {
        v193 = v131;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_25DD98100;
        *(v113 + 32) = v136;
        *(v113 + 40) = v138;
        *(v113 + 48) = v140;
        *(v113 + 56) = v142;
        nullsub_1();
        v115 = v211;
        v114 = v212;
        if ((v212 ^ v211) >= 0x4000)
        {
          v9 = v220;
          while (1)
          {
            v220 = v9;
            if (v114 >> 14 == v115 >> 14)
            {
              v149 = 0;
              v150 = 0xE000000000000000;
              v151 = 1;
              v152 = 15;
              v153 = 7;
              v154 = v193;
            }

            else
            {
              v188 = swift_allocObject();
              v155 = v115;
              while (1)
              {
                v156 = v115;
                v157 = sub_25DD96F44();
                v159 = v158;
                v160 = v157 == 44 && v158 == 0xE100000000000000;
                if (v160 || (v161 = v157, (sub_25DD975D4() & 1) != 0))
                {

                  *(v188 + 16) = v155;
                  v165 = v188;
                  v166 = 0;
                  v167 = v156;
                  goto LABEL_150;
                }

                if (v161 == 38 && v159 == 0xE100000000000000)
                {
                  break;
                }

                v163 = sub_25DD975D4();

                if (v163)
                {
                  goto LABEL_152;
                }

                v115 = v156;
                v164 = sub_25DD96F24();
                v155 = v164;
                if (v114 >> 14 == v164 >> 14)
                {
                  *(v188 + 16) = v164;
                  v165 = v188;
                  v166 = 1;
                  v167 = v156;
LABEL_150:
                  sub_25DD90AB0(v166, &v211, v167, v165, v204);
                  v151 = v204[0];
                  v189 = *&v204[8];
                  v149 = v205;
                  v150 = v206;
                  v154 = v193;
                  goto LABEL_153;
                }
              }

LABEL_152:
              *(v188 + 16) = v155;
              sub_25DD90AB0(1, &v211, v156, v188, v204);
              v151 = v204[0];
              v189 = *&v204[8];
              v149 = v205;
              v150 = v206;
              v154 = v193;
LABEL_153:

              v153 = *(&v189 + 1);
              v152 = v189;
            }

            *v204 = v152;
            *&v204[8] = v153;
            *&v204[16] = v149;
            v205 = v150;
            v209 = sub_25DD6F904(v154);
            v210 = v168;
            v207 = 32;
            v208 = 0xE100000000000000;
            v169 = sub_25DD96FA4();
            v171 = v170;

            *v204 = v169;
            *&v204[8] = v171;
            sub_25DD96FC4();

            v172 = sub_25DD96CA4();
            v174 = v173;
            v176 = v175;
            v178 = v177;

            sub_25DD735F0(v179, v172, v174, v176, v178, v216);
            v9 = v220;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_25DD90DC0(0, *(v9 + 2) + 1, 1, v9);
            }

            v181 = *(v9 + 2);
            v180 = *(v9 + 3);
            if (v181 >= v180 >> 1)
            {
              v9 = sub_25DD90DC0((v180 > 1), v181 + 1, 1, v9);
            }

            *(v9 + 2) = v181 + 1;
            v182 = &v9[40 * v181];
            v183 = v216[0];
            v184 = v216[1];
            *(v182 + 8) = v217;
            *(v182 + 2) = v183;
            *(v182 + 3) = v184;
            if (v151)
            {
              break;
            }

            v115 = v211;
            v114 = v212;
            if (!((v212 ^ v211) >> 14))
            {

              goto LABEL_162;
            }
          }

          v115 = v211;
          v114 = v212;
LABEL_162:
          v13 = v114 >> 14;
          v7 = v115;
          if (v114 >> 14 == v115 >> 14)
          {
LABEL_165:

            return v9;
          }

          goto LABEL_94;
        }
      }

      else
      {

        v143 = v211;
        v144 = v212 >> 14;
        if (v212 >> 14 == v211 >> 14)
        {
          goto LABEL_97;
        }

        v199 = swift_allocObject();
        v145 = v143;
        while (sub_25DD96F44() != 38 || v146 != 0xE100000000000000)
        {
          v148 = sub_25DD975D4();

          if ((v148 & 1) == 0)
          {
            v145 = sub_25DD96F24();
            if (v144 != v145 >> 14)
            {
              continue;
            }
          }

          goto LABEL_132;
        }

LABEL_132:
        *(v199 + 16) = v145;
        sub_25DD90C3C(&v211, v143, v199);
      }

LABEL_97:
      v112 = v211;
      v13 = v212 >> 14;
      if (v212 >> 14 == v211 >> 14)
      {
LABEL_164:
        v9 = v220;
        goto LABEL_165;
      }
    }
  }

  sub_25DD90EE0();
  swift_allocError();
  if (v9)
  {
    v84 = 0x800000025DDAB650;
    *v83 = 0xD00000000000003BLL;
  }

  else
  {
    v84 = 0x800000025DDAB5E0;
    *v83 = 0xD00000000000002CLL;
  }

  *(v83 + 8) = v84;
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  *(v83 + 32) = 1;
LABEL_169:
  swift_willThrow();
  return v9;
}

char *sub_25DD8EB64(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 72);
  v7 = *(v4 + 48);
  v324 = v7;
  v8 = *(v4 + 56);
  v325 = v8;
  v326 = v6;
  v9 = *(v4 + 1);
  if (!*v4)
  {
    if (*(v4 + 1))
    {
      v69 = v8 >> 14;

      if (v69 == v7 >> 14)
      {
        a1 = MEMORY[0x277D84F90];

        return a1;
      }

      v128 = v7;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v337 = a1;
        v129 = swift_allocObject();
        v130 = v128;
        if (v69 == v128 >> 14)
        {
          goto LABEL_102;
        }

        while (1)
        {
          a1 = v326;
          v132 = sub_25DD96F44();
          v134 = v133;
          v135 = v132 == 61 && v133 == 0xE100000000000000;
          if (v135 || (v136 = v132, (sub_25DD975D4() & 1) != 0))
          {

            *(v129 + 16) = v130;
            v131 = 0;
            goto LABEL_116;
          }

          if (v136 == 44 && v134 == 0xE100000000000000)
          {
            break;
          }

          v138 = sub_25DD975D4();

          if ((v138 & 1) == 0)
          {
            v130 = sub_25DD96F24();
            if (v69 != v130 >> 14)
            {
              continue;
            }
          }

          goto LABEL_102;
        }

LABEL_102:
        *(v129 + 16) = v130;
        v131 = 1;
LABEL_116:
        sub_25DD90AB0(v131, &v324, v128, v129, v321);
        v139 = v321[0];
        v140 = *&v321[8];
        v141 = *&v321[16];
        v143 = v322;
        v142 = v323;

        if (v139)
        {
          break;
        }

        v144 = v324;
        v145 = v325 >> 14;
        if (v325 >> 14 == v324 >> 14)
        {
          v315 = 0;
          v318 = 0xE000000000000000;
          v310 = 15;
          v307 = 7;
        }

        else
        {
          v297 = v140;
          v302 = v142;
          v146 = swift_allocObject();
          v147 = v144;
          while (sub_25DD96F44() != 44 || v148 != 0xE100000000000000)
          {
            v150 = sub_25DD975D4();

            if ((v150 & 1) == 0)
            {
              v147 = sub_25DD96F24();
              if (v145 != v147 >> 14)
              {
                continue;
              }
            }

            goto LABEL_128;
          }

LABEL_128:
          *(v146 + 16) = v147;
          v151 = sub_25DD90C3C(&v324, v144, v146);
          v307 = v152;
          v310 = v151;
          v315 = v153;
          v318 = v154;

          v142 = v302;
          v140 = v297;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v155 = swift_allocObject();
        *(v155 + 16) = xmmword_25DD98100;
        v156 = *(v319 + 2);
        *v321 = v140;
        *&v321[8] = v141;
        *&v321[16] = v143;
        v322 = v142;
        sub_25DD6F904(v156);
        sub_25DD07CBC();
        sub_25DD07E24();
        v157 = sub_25DD96FA4();
        v159 = v158;

        *v321 = v157;
        *&v321[8] = v159;
        sub_25DD96FC4();

        v160 = sub_25DD96CA4();
        v162 = v161;
        v164 = v163;
        v166 = v165;

        *(v155 + 32) = v160;
        *(v155 + 40) = v162;
        *(v155 + 48) = v164;
        *(v155 + 56) = v166;
        nullsub_1();
        v168 = v167;
        *v321 = v310;
        *&v321[8] = v307;
        *&v321[16] = v315;
        v322 = v318;
        sub_25DD6F904(v156);
        v169 = sub_25DD96FA4();
        v171 = v170;

        *v321 = v169;
        *&v321[8] = v171;
        sub_25DD96FC4();

        v172 = sub_25DD96CA4();
        v174 = v173;
        v176 = v175;
        v178 = v177;

        sub_25DD735F0(v168, v172, v174, v176, v178, v331);
        a1 = v337;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v180 = *(a1 + 16);
        v179 = *(a1 + 24);
        if (v180 >= v179 >> 1)
        {
          a1 = sub_25DD90DC0((v179 > 1), v180 + 1, 1, a1);
        }

        *(a1 + 16) = v180 + 1;
        v181 = (a1 + 40 * v180);
        v182 = v332;
        v183 = v331[1];
        *(v181 + 2) = v331[0];
        *(v181 + 3) = v183;
        *(v181 + 8) = v182;
        v128 = v324;
        v69 = v325 >> 14;
        if (v325 >> 14 == v324 >> 14)
        {
          goto LABEL_223;
        }
      }

      sub_25DD90EE0();
      swift_allocError();
      *v290 = v140;
      *(v290 + 8) = v141;
      *(v290 + 16) = v143;
      *(v290 + 24) = v142;
      goto LABEL_228;
    }

    v73 = v8;
    if ((v8 ^ v7) >= 0x4000)
    {
      v184 = v7;
      v303 = *(v319 + 2);

      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v337 = a1;
        if (v73 >> 14 != v184 >> 14)
        {
          v185 = swift_allocObject();
          v186 = v184;
          while (sub_25DD96F44() != 44 || v187 != 0xE100000000000000)
          {
            v189 = sub_25DD975D4();

            if ((v189 & 1) == 0)
            {
              v186 = sub_25DD96F24();
              if (v73 >> 14 != v186 >> 14)
              {
                continue;
              }
            }

            goto LABEL_147;
          }

LABEL_147:
          *(v185 + 16) = v186;
          sub_25DD90C3C(&v324, v184, v185);
        }

        v190 = v324;
        v191 = v325 >> 14;
        if (v325 >> 14 == v324 >> 14)
        {
          sub_25DD96F54();
          v311 = v192;
          v320 = v193;
        }

        else
        {
          v194 = swift_allocObject();
          v195 = v190;
          while (sub_25DD96F44() != 44 || v196 != 0xE100000000000000)
          {
            v198 = sub_25DD975D4();

            if ((v198 & 1) == 0)
            {
              v195 = sub_25DD96F24();
              if (v191 != v195 >> 14)
              {
                continue;
              }
            }

            goto LABEL_159;
          }

LABEL_159:
          *(v194 + 16) = v195;
          sub_25DD90C3C(&v324, v190, v194);
          v311 = v199;
          v320 = v200;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v201 = swift_allocObject();
        *(v201 + 16) = xmmword_25DD98100;
        sub_25DD6F904(v303);
        sub_25DD07CBC();
        sub_25DD07E24();
        sub_25DD96FA4();

        sub_25DD96FC4();

        v202 = sub_25DD96CA4();
        v204 = v203;
        v206 = v205;
        v208 = v207;

        *(v201 + 32) = v202;
        *(v201 + 40) = v204;
        *(v201 + 48) = v206;
        *(v201 + 56) = v208;
        nullsub_1();
        v210 = v209;
        *&v321[16] = v311;
        v322 = v320;
        sub_25DD6F904(v303);
        v211 = sub_25DD96FA4();
        v213 = v212;

        *v321 = v211;
        *&v321[8] = v213;
        v214 = sub_25DD96FC4();
        v216 = v215;

        if (v216)
        {
          v217 = v214;
        }

        else
        {
          v217 = 0;
        }

        if (v216)
        {
          v218 = v216;
        }

        else
        {
          v218 = 0xE000000000000000;
        }

        v219 = sub_25DD90F34(v217, v218);
        v221 = v220;
        v223 = v222;
        v225 = v224;

        sub_25DD735F0(v210, v219, v221, v223, v225, v333);
        a1 = v337;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v227 = *(a1 + 16);
        v226 = *(a1 + 24);
        if (v227 >= v226 >> 1)
        {
          a1 = sub_25DD90DC0((v226 > 1), v227 + 1, 1, a1);
        }

        *(a1 + 16) = v227 + 1;
        v228 = (a1 + 40 * v227);
        v229 = v334;
        v230 = v333[1];
        *(v228 + 2) = v333[0];
        *(v228 + 3) = v230;
        *(v228 + 8) = v229;
        v184 = v324;
        v73 = v325;
        if (!((v325 ^ v324) >> 14))
        {
          goto LABEL_223;
        }
      }
    }

LABEL_52:
    a1 = MEMORY[0x277D84F90];
    goto LABEL_223;
  }

  if (*v4 == 1)
  {
    v11 = v7;
    v12 = v7 >> 14;
    v13 = v8 >> 14;

    if (!v9)
    {
      if (v12 == v13)
      {
        a1 = MEMORY[0x277D84F90];
      }

      else
      {
        v301 = a1 >> 16;
        v298 = a2 >> 16;
        a1 = MEMORY[0x277D84F90];
        while (2)
        {
          v337 = a1;
          while (1)
          {
            v75 = swift_allocObject();
            v76 = v11;
            if (v13 != v11 >> 14)
            {
              while (1)
              {
                v78 = sub_25DD96F44();
                v80 = v79;
                v81 = v78 == 61 && v79 == 0xE100000000000000;
                if (v81 || (v82 = v78, (sub_25DD975D4() & 1) != 0))
                {

                  *(v75 + 16) = v76;
                  v77 = 0;
                  goto LABEL_73;
                }

                if (v82 == 38 && v80 == 0xE100000000000000)
                {
                  break;
                }

                v84 = sub_25DD975D4();

                if ((v84 & 1) == 0)
                {
                  v76 = sub_25DD96F24();
                  if (v13 != v76 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_59;
              }
            }

LABEL_59:
            *(v75 + 16) = v76;
            v77 = 1;
LABEL_73:
            sub_25DD90AB0(v77, &v324, v11, v75, v321);
            a1 = v321[0];
            v85 = *&v321[8];
            v86 = *&v321[16];
            v88 = v322;
            v87 = v323;

            if (a1)
            {

              sub_25DD90EE0();
              swift_allocError();
              *v290 = v85;
              *(v290 + 8) = v86;
              goto LABEL_227;
            }

            v89 = *(v319 + 2);
            *v321 = v85;
            *&v321[8] = v86;
            *&v321[16] = v88;
            v322 = v87;
            sub_25DD6F904(v89);
            sub_25DD07CBC();
            sub_25DD07E24();
            v90 = sub_25DD96FA4();
            v92 = v91;

            *v321 = v90;
            *&v321[8] = v92;
            sub_25DD96FC4();

            v93 = sub_25DD96CA4();
            v95 = v94;
            v97 = v96;
            v99 = v98;

            v306 = v95;
            v309 = v93;
            if (v97 == a3 && v99 == a4 && v93 >> 16 == v301 && v95 >> 16 == v298)
            {
              break;
            }

            if (sub_25DD97364())
            {
              goto LABEL_90;
            }

            v100 = v324;
            v101 = v325 >> 14;
            if (v325 >> 14 != v324 >> 14)
            {
              v102 = swift_allocObject();
              v103 = v100;
              while (sub_25DD96F44() != 38 || v104 != 0xE100000000000000)
              {
                v106 = sub_25DD975D4();

                if ((v106 & 1) == 0)
                {
                  v103 = sub_25DD96F24();
                  if (v101 != v103 >> 14)
                  {
                    continue;
                  }
                }

                goto LABEL_56;
              }

LABEL_56:
              *(v102 + 16) = v103;
              sub_25DD90C3C(&v324, v100, v102);
            }

            v11 = v324;
            v13 = v325 >> 14;
            if (v325 >> 14 == v324 >> 14)
            {
              a1 = v337;
              goto LABEL_223;
            }
          }

          v97 = a3;
LABEL_90:
          a1 = v337;
          v292 = v97;
          do
          {
            if ((v325 ^ v324) < 0x4000)
            {
              break;
            }

            v337 = a1;
            sub_25DD8D538(v321);
            v107 = *&v321[8];
            a1 = *&v321[16];
            v88 = v322;
            v87 = v323;
            if (v321[0])
            {

              sub_25DD90EE0();
              swift_allocError();
              *v290 = v107;
              *(v290 + 8) = a1;
              goto LABEL_227;
            }

            sub_25DD8D538(v321);
            v296 = v321[0];
            v294 = *&v321[8];
            v108 = v323;
            v293 = v322;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
            v109 = swift_allocObject();
            *(v109 + 16) = xmmword_25DD999D0;
            *(v109 + 32) = v309;
            *(v109 + 40) = v306;
            *(v109 + 48) = v97;
            *(v109 + 56) = v99;
            *(v109 + 64) = v107;
            *(v109 + 72) = a1;
            *(v109 + 80) = v88;
            *(v109 + 88) = v87;
            v110 = v99;

            nullsub_1();
            v112 = v111;
            *v321 = v294;
            *&v321[16] = v293;
            v322 = v108;
            sub_25DD6F904(v89);
            v113 = sub_25DD96FA4();
            v115 = v114;

            *v321 = v113;
            *&v321[8] = v115;
            sub_25DD96FC4();

            v116 = sub_25DD96CA4();
            v118 = v117;
            v120 = v119;
            v122 = v121;

            sub_25DD735F0(v112, v116, v118, v120, v122, v329);
            a1 = v337;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
            }

            v124 = *(a1 + 16);
            v123 = *(a1 + 24);
            v97 = v292;
            v99 = v110;
            if (v124 >= v123 >> 1)
            {
              a1 = sub_25DD90DC0((v123 > 1), v124 + 1, 1, a1);
            }

            *(a1 + 16) = v124 + 1;
            v125 = (a1 + 40 * v124);
            v126 = v329[0];
            v127 = v329[1];
            *(v125 + 8) = v330;
            *(v125 + 2) = v126;
            *(v125 + 3) = v127;
          }

          while (!v296);

          v11 = v324;
          v13 = v325 >> 14;
          if (v325 >> 14 != v324 >> 14)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_223;
    }

    if (v12 != v13)
    {
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        v337 = a1;
        v14 = swift_allocObject();
        v15 = v11;
        if (v13 != v11 >> 14)
        {
          while (1)
          {
            a1 = v326;
            v17 = sub_25DD96F44();
            v19 = v18;
            v20 = v17 == 61 && v18 == 0xE100000000000000;
            if (v20 || (v21 = v17, (sub_25DD975D4() & 1) != 0))
            {

              *(v14 + 16) = v15;
              v16 = 0;
              goto LABEL_21;
            }

            if (v21 == 38 && v19 == 0xE100000000000000)
            {
              break;
            }

            v23 = sub_25DD975D4();

            if ((v23 & 1) == 0)
            {
              v15 = sub_25DD96F24();
              if (v13 != v15 >> 14)
              {
                continue;
              }
            }

            goto LABEL_7;
          }
        }

LABEL_7:
        *(v14 + 16) = v15;
        v16 = 1;
LABEL_21:
        sub_25DD90AB0(v16, &v324, v11, v14, v321);
        v24 = v321[0];
        v25 = *&v321[8];
        v26 = *&v321[16];
        v28 = v322;
        v27 = v323;

        if (v24)
        {
          break;
        }

        v29 = v324;
        v30 = v325 >> 14;
        if (v325 >> 14 == v324 >> 14)
        {
          v314 = 0;
          v317 = 0xE000000000000000;
          v308 = 15;
          v305 = 7;
        }

        else
        {
          v295 = v25;
          v300 = v27;
          v31 = swift_allocObject();
          v32 = v29;
          while (sub_25DD96F44() != 38 || v33 != 0xE100000000000000)
          {
            v35 = sub_25DD975D4();

            if ((v35 & 1) == 0)
            {
              v32 = sub_25DD96F24();
              if (v30 != v32 >> 14)
              {
                continue;
              }
            }

            goto LABEL_33;
          }

LABEL_33:
          *(v31 + 16) = v32;
          v36 = sub_25DD90C3C(&v324, v29, v31);
          v305 = v37;
          v308 = v36;
          v314 = v38;
          v317 = v39;

          v27 = v300;
          v25 = v295;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_25DD98100;
        v41 = *(v319 + 2);
        *v321 = v25;
        *&v321[8] = v26;
        *&v321[16] = v28;
        v322 = v27;
        sub_25DD6F904(v41);
        sub_25DD07CBC();
        sub_25DD07E24();
        v42 = sub_25DD96FA4();
        v44 = v43;

        *v321 = v42;
        *&v321[8] = v44;
        sub_25DD96FC4();

        v45 = sub_25DD96CA4();
        v47 = v46;
        v49 = v48;
        v51 = v50;

        *(v40 + 32) = v45;
        *(v40 + 40) = v47;
        *(v40 + 48) = v49;
        *(v40 + 56) = v51;
        nullsub_1();
        v53 = v52;
        *v321 = v308;
        *&v321[8] = v305;
        *&v321[16] = v314;
        v322 = v317;
        sub_25DD6F904(v41);
        v54 = sub_25DD96FA4();
        v56 = v55;

        *v321 = v54;
        *&v321[8] = v56;
        sub_25DD96FC4();

        v57 = sub_25DD96CA4();
        v59 = v58;
        v61 = v60;
        v63 = v62;

        sub_25DD735F0(v53, v57, v59, v61, v63, v327);
        a1 = v337;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
        }

        v65 = *(a1 + 16);
        v64 = *(a1 + 24);
        if (v65 >= v64 >> 1)
        {
          a1 = sub_25DD90DC0((v64 > 1), v65 + 1, 1, a1);
        }

        *(a1 + 16) = v65 + 1;
        v66 = (a1 + 40 * v65);
        v67 = v328;
        v68 = v327[1];
        *(v66 + 2) = v327[0];
        *(v66 + 3) = v68;
        *(v66 + 8) = v67;
        v11 = v324;
        v13 = v325 >> 14;
        if (v325 >> 14 == v324 >> 14)
        {
          goto LABEL_223;
        }
      }

      sub_25DD90EE0();
      swift_allocError();
      *v290 = v25;
      *(v290 + 8) = v26;
      *(v290 + 16) = v28;
      *(v290 + 24) = v27;
LABEL_228:
      *(v290 + 32) = 0;
      goto LABEL_229;
    }

    goto LABEL_52;
  }

  if (!*(v4 + 1))
  {
    sub_25DD90EE0();
    swift_allocError();
    *v74 = 0xD00000000000002CLL;
    *(v74 + 8) = 0x800000025DDAB5E0;
    *(v74 + 16) = 0;
    *(v74 + 24) = 0;
    *(v74 + 32) = 1;
LABEL_229:
    swift_willThrow();
    return a1;
  }

  v70 = v7;
  v72 = v8 >> 14;

  if (v72 == v7 >> 14)
  {
    a1 = MEMORY[0x277D84F90];
    goto LABEL_223;
  }

  v304 = a1;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    v337 = a1;
    while (1)
    {
      v231 = swift_allocObject();
      v232 = v70;
      if (v72 != v70 >> 14)
      {
        while (1)
        {
          v234 = sub_25DD96F44();
          v236 = v235;
          v237 = v234 == 61 && v235 == 0xE100000000000000;
          if (v237 || (v238 = v234, (sub_25DD975D4() & 1) != 0))
          {

            *(v231 + 16) = v232;
            v233 = 0;
            goto LABEL_192;
          }

          if (v238 == 38 && v236 == 0xE100000000000000)
          {
            break;
          }

          v240 = sub_25DD975D4();

          if ((v240 & 1) == 0)
          {
            v232 = sub_25DD96F24();
            if (v72 != v232 >> 14)
            {
              continue;
            }
          }

          goto LABEL_178;
        }
      }

LABEL_178:
      *(v231 + 16) = v232;
      v233 = 1;
LABEL_192:
      sub_25DD90AB0(v233, &v324, v70, v231, v321);
      a1 = v321[0];
      v241 = *&v321[8];
      v242 = *&v321[16];
      v88 = v322;
      v87 = v323;

      if (a1)
      {

        sub_25DD90EE0();
        swift_allocError();
        *v290 = v241;
        *(v290 + 8) = v242;
LABEL_227:
        *(v290 + 16) = v88;
        *(v290 + 24) = v87;
        goto LABEL_228;
      }

      v312 = *(v319 + 2);
      sub_25DD6F904(v312);
      sub_25DD07CBC();
      sub_25DD07E24();
      sub_25DD96FA4();

      sub_25DD96FC4();

      v243 = sub_25DD96CA4();
      v245 = v244;
      v247 = v246;
      v249 = v248;

      *v321 = v243;
      *&v321[8] = v245;
      *&v321[16] = v247;
      v322 = v249;
      if (sub_25DD96FF4() & 1) != 0 && (sub_25DD96FF4())
      {
        break;
      }

LABEL_197:
      v263 = v324;
      v264 = v325 >> 14;
      if (v325 >> 14 != v324 >> 14)
      {
        v265 = swift_allocObject();
        v266 = v263;
        while (sub_25DD96F44() != 38 || v267 != 0xE100000000000000)
        {
          v269 = sub_25DD975D4();

          if ((v269 & 1) == 0)
          {
            v266 = sub_25DD96F24();
            if (v264 != v266 >> 14)
            {
              continue;
            }
          }

          goto LABEL_175;
        }

LABEL_175:
        *(v265 + 16) = v266;
        sub_25DD90C3C(&v324, v263, v265);
      }

      v70 = v324;
      v72 = v325 >> 14;
      if (v325 >> 14 == v324 >> 14)
      {
        a1 = v337;
        goto LABEL_223;
      }
    }

    v250 = sub_25DD8D6E8(91);
    v252 = v251;
    v254 = v253;
    v256 = v255;
    v257 = sub_25DD8D6E8(93);
    v259 = v258;
    v299 = v260;
    v262 = v261;
    if ((sub_25DD73570(v250, v252, v254, v256, v304, a2, a3, a4) & 1) == 0)
    {

      goto LABEL_197;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
    v270 = swift_allocObject();
    *(v270 + 16) = xmmword_25DD999D0;
    *(v270 + 32) = v250;
    *(v270 + 40) = v252;
    *(v270 + 48) = v254;
    *(v270 + 56) = v256;
    *(v270 + 64) = v257;
    *(v270 + 72) = v259;
    *(v270 + 80) = v299;
    *(v270 + 88) = v262;
    nullsub_1();
    v272 = v271;
    sub_25DD8D6E8(38);
    sub_25DD6F904(v312);
    sub_25DD96FA4();

    v273 = sub_25DD96FC4();
    v275 = v274;

    if (v275)
    {
      v276 = v273;
    }

    else
    {
      v276 = 0;
    }

    if (v275)
    {
      v277 = v275;
    }

    else
    {
      v277 = 0xE000000000000000;
    }

    v278 = sub_25DD90F34(v276, v277);
    v280 = v279;
    v282 = v281;
    v284 = v283;

    sub_25DD735F0(v272, v278, v280, v282, v284, v335);
    a1 = v337;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_25DD90DC0(0, *(a1 + 16) + 1, 1, a1);
    }

    v286 = *(a1 + 16);
    v285 = *(a1 + 24);
    if (v286 >= v285 >> 1)
    {
      a1 = sub_25DD90DC0((v285 > 1), v286 + 1, 1, a1);
    }

    *(a1 + 16) = v286 + 1;
    v287 = (a1 + 40 * v286);
    v288 = v335[0];
    v289 = v335[1];
    *(v287 + 8) = v336;
    *(v287 + 2) = v288;
    *(v287 + 3) = v289;
    v70 = v324;
    v72 = v325 >> 14;
    if (v325 >> 14 != v324 >> 14)
    {
      continue;
    }

    break;
  }

LABEL_223:

  return a1;
}

unint64_t sub_25DD90AB0@<X0>(char a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_beginAccess();
  if (*(a4 + 16) >> 14 < a3 >> 14)
  {
    __break(1u);
  }

  else
  {

    v11 = sub_25DD96F64();
    v25 = v12;
    v26 = v11;
    v14 = v13;
    v16 = v15;

    swift_beginAccess();
    v17 = a2[1] >> 14;
    if (v17 == *(a4 + 16) >> 14)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 7;
      v21 = 15;
LABEL_6:
      *a2 = v21;
      a2[1] = v20;
      a2[2] = v18;
      a2[3] = v19;

      *a5 = a1 & 1;
      *(a5 + 8) = v26;
      *(a5 + 16) = v25;
      *(a5 + 24) = v14;
      *(a5 + 32) = v16;
      return result;
    }

    result = sub_25DD96F24();
    if (v17 >= result >> 14)
    {
      v21 = sub_25DD96F64();
      v20 = v22;
      v18 = v23;
      v19 = v24;

      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25DD90C3C(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (*(a3 + 16) >> 14 < a2 >> 14)
  {
    __break(1u);
  }

  else
  {

    v7 = sub_25DD96F64();

    swift_beginAccess();
    v8 = a1[1] >> 14;
    if (v8 == *(a3 + 16) >> 14)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
      v11 = 7;
      v12 = 15;
LABEL_6:
      *a1 = v12;
      a1[1] = v11;
      a1[2] = v9;
      a1[3] = v10;

      return v7;
    }

    result = sub_25DD96F24();
    if (v8 >= result >> 14)
    {
      v12 = sub_25DD96F64();
      v11 = v13;
      v9 = v14;
      v10 = v15;

      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD90DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2950, &qword_25DDA06A8);
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

unint64_t sub_25DD90EE0()
{
  result = qword_27FCC2940;
  if (!qword_27FCC2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2940);
  }

  return result;
}

unint64_t sub_25DD90F74()
{
  result = qword_27FCC2948;
  if (!qword_27FCC2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2948);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_25DD90FE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_25DD9102C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_25DD9109C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25DD910E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 sub_25DD91148@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  return result;
}

uint64_t sub_25DD91164(uint64_t a1, char *a2, unint64_t a3)
{
  sub_25DD911C4(a1, a2, a3);
  if (!v4)
  {
    v5 = *(v3 + 48);
  }

  sub_25DD96C74();
  return v5;
}

uint64_t sub_25DD911C4(uint64_t a1, char *a2, unint64_t a3)
{
  v66 = a3;
  v65 = a2;
  v4 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for URIEncodedNode.Primitive(0);
  v69 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v70 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for URIEncodedNode(0);
  v79 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  sub_25DD963D0(a1, &v63 - v22, type metadata accessor for URIEncodedNode);
  v71 = v12;
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v35 = *v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2968, &qword_25DDA0878);
      v36 = sub_25DD972A4();
      v37 = 0;
      v70 = v36;
      v71 = v35;
      v38 = 1 << *(v35 + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v40 = *(v35 + 64);
      v63 = v35 + 64;
      v64 = v5;
      v41 = v39 & v40;
      v42 = (v38 + 63) >> 6;
      v69 = v36 + 64;
      if ((v39 & v40) != 0)
      {
        while (1)
        {
          v43 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
LABEL_26:
          v11 = v43 | (v37 << 6);
          v46 = (*(v71 + 48) + 16 * v11);
          v48 = *v46;
          v47 = v46[1];
          sub_25DD963D0(*(v71 + 56) + *(v79 + 72) * v11, v15, type metadata accessor for URIEncodedNode);

          v49 = v68;
          v50 = v72;
          sub_25DD924B0(v15, v68);
          v72 = v50;
          if (v50)
          {
            break;
          }

          v12 = v15;
          sub_25DD96370(v15, type metadata accessor for URIEncodedNode);
          v51 = v70;
          *(v69 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          v52 = (v51[6] + 16 * v11);
          *v52 = v48;
          v52[1] = v47;
          sub_25DD947C4(v49, v51[7] + *(v64 + 72) * v11, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
          v53 = v51[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_52;
          }

          v51[2] = v55;
          v15 = v12;
          if (!v41)
          {
            goto LABEL_21;
          }
        }

        sub_25DD96370(v15, type metadata accessor for URIEncodedNode);
      }

      else
      {
LABEL_21:
        v44 = v37;
        while (1)
        {
          v37 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v37 >= v42)
          {
            break;
          }

          v45 = *(v63 + 8 * v37);
          ++v44;
          if (v45)
          {
            v43 = __clz(__rbit64(v45));
            v41 = (v45 - 1) & v45;
            goto LABEL_26;
          }
        }

        sub_25DD93160(v70, v65, v66);
      }
    }
  }

  else
  {
    if (!result)
    {
      sub_25DD947C4(v23, v11, type metadata accessor for URIEncodedNode.Primitive);
      v12 = v67;
      if (!*v67)
      {
        goto LABEL_47;
      }

      if (*v67 != 1)
      {
        sub_25DD92300();
        swift_allocError();
        *v61 = xmmword_25DD9B590;
        swift_willThrow();
        return sub_25DD96370(v11, type metadata accessor for URIEncodedNode.Primitive);
      }

      v25 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v25 = v65 & 0xFFFFFFFFFFFFLL;
      }

      if (!v25)
      {
        v32 = 0;
        v34 = 0xE000000000000000;
LABEL_46:
        MEMORY[0x25F8A3200](v32, v34);

        MEMORY[0x25F8A3200](61, 0xE100000000000000);
LABEL_47:
        sub_25DD93A74(v11);

        return sub_25DD96370(v11, type metadata accessor for URIEncodedNode.Primitive);
      }

      v77 = v65;
      v78 = v66;
      if (qword_27FCCE2D0 == -1)
      {
LABEL_9:
        v26 = sub_25DD965E4();
        __swift_project_value_buffer(v26, qword_27FCCE2D8);
        sub_25DD07E24();
        v27 = sub_25DD96FB4();
        if (v28)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0;
        }

        if (v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = 0xE000000000000000;
        }

        v77 = v29;
        v78 = v30;
        v75 = 32;
        v76 = 0xE100000000000000;
        v73 = sub_25DD6F904(*(v12 + 2));
        v74 = v31;
        v32 = sub_25DD96FA4();
        v34 = v33;

        goto LABEL_46;
      }

LABEL_53:
      swift_once();
      goto LABEL_9;
    }

    v12 = *v23;
    v56 = *(*v23 + 16);
    if (v56)
    {
      v77 = MEMORY[0x277D84F90];
      sub_25DD947A4(0, v56, 0);
      v57 = 0;
      v11 = v77;
      v68 = (v12 + ((*(v79 + 80) + 32) & ~*(v79 + 80)));
      while (v57 < *(v12 + 16))
      {
        sub_25DD963D0(v68 + *(v79 + 72) * v57, v21, type metadata accessor for URIEncodedNode);
        sub_25DD963D0(v21, v18, type metadata accessor for URIEncodedNode);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_25DD96370(v18, type metadata accessor for URIEncodedNode);
          sub_25DD92300();
          swift_allocError();
          *v62 = 0;
          v62[1] = 0;
          swift_willThrow();

          sub_25DD96370(v21, type metadata accessor for URIEncodedNode);
        }

        v58 = v70;
        sub_25DD947C4(v18, v70, type metadata accessor for URIEncodedNode.Primitive);
        sub_25DD96370(v21, type metadata accessor for URIEncodedNode);
        v77 = v11;
        v60 = *(v11 + 16);
        v59 = *(v11 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_25DD947A4((v59 > 1), v60 + 1, 1);
          v58 = v70;
          v11 = v77;
        }

        ++v57;
        *(v11 + 16) = v60 + 1;
        sub_25DD947C4(v58, v11 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v60, type metadata accessor for URIEncodedNode.Primitive);
        if (v56 == v57)
        {

          goto LABEL_44;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_44:
    sub_25DD929B0(v11, v65, v66);
  }

  return result;
}

uint64_t sub_25DD91A9C()
{
  v0 = sub_25DD965E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - v6;
  __swift_allocate_value_buffer(v5, qword_27FCCE298);
  __swift_project_value_buffer(v0, qword_27FCCE298);
  sub_25DD965B4();
  if (qword_27FCCE270 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27FCCE278);
  (*(v1 + 16))(v4, v8, v0);
  sub_25DD965D4();
  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v7, v0);
}

uint64_t sub_25DD91C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25DD965E4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25DD965A4();
}

uint64_t sub_25DD91C98()
{
  v0 = sub_25DD965E4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - v6;
  __swift_allocate_value_buffer(v5, qword_27FCCE2D8);
  __swift_project_value_buffer(v0, qword_27FCCE2D8);
  if (qword_27FCCE290 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27FCCE298);
  v9 = *(v1 + 16);
  v9(v7, v8, v0);
  if (qword_27FCCE2B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27FCCE2B8);
  v9(v4, v10, v0);
  sub_25DD965D4();
  v11 = *(v1 + 8);
  v11(v4, v0);
  return (v11)(v7, v0);
}

unint64_t sub_25DD91E78(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000032;
    case 1:
      return 0xD000000000000033;
    case 2:
      return 0xD000000000000042;
  }

  sub_25DD97124();

  MEMORY[0x25F8A3200](a1, a2);
  return 0xD000000000000026;
}

uint64_t sub_25DD91F54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
  }

  if (a4 < 3)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD91FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x25F8A3F90](v3, a2);
    case 1:
      v3 = 1;
      return MEMORY[0x25F8A3F90](v3, a2);
    case 2:
      v3 = 2;
      return MEMORY[0x25F8A3F90](v3, a2);
  }

  MEMORY[0x25F8A3F90](3);

  return sub_25DD96B94();
}

uint64_t sub_25DD92054(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD920E8()
{
  v1 = *(v0 + 8);
  sub_25DD97964();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD92178(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x25F8A3F90](v3);
    case 1:
      v3 = 1;
      return MEMORY[0x25F8A3F90](v3);
    case 2:
      v3 = 2;
      return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](3);

  return sub_25DD96B94();
}

uint64_t sub_25DD92210(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25DD97964();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x25F8A3F90](3);
        sub_25DD96B94();
        return sub_25DD979A4();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

unint64_t sub_25DD922A0()
{
  result = qword_27FCC2958;
  if (!qword_27FCC2958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2958);
  }

  return result;
}

unint64_t sub_25DD92300()
{
  result = qword_27FCC2960;
  if (!qword_27FCC2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2960);
  }

  return result;
}

uint64_t sub_25DD92354(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_25DD975D4();
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal13URISerializerV18SerializationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD923F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD92450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25DD924B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URIEncodedNode(0);
  v41 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = type metadata accessor for URIEncodedNode.Primitive(0);
  v39 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - v19;
  sub_25DD963D0(a1, v14, type metadata accessor for URIEncodedNode);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_25DD947C4(v14, v20, type metadata accessor for URIEncodedNode.Primitive);
    sub_25DD947C4(v20, a2, type metadata accessor for URIEncodedNode.Primitive);
    type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_25DD96370(v14, type metadata accessor for URIEncodedNode);
  sub_25DD963D0(a1, v12, type metadata accessor for URIEncodedNode);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD96370(v12, type metadata accessor for URIEncodedNode);
    sub_25DD92300();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    return swift_willThrow();
  }

  v21 = *v12;
  v22 = *(*v12 + 16);
  if (!v22)
  {

    v25 = MEMORY[0x277D84F90];
LABEL_15:
    *a2 = v25;
    type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
    return swift_storeEnumTagMultiPayload();
  }

  v37 = v18;
  v42 = MEMORY[0x277D84F90];
  result = sub_25DD947A4(0, v22, 0);
  v24 = 0;
  v25 = v42;
  v38 = v21 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v36 = v21;
  while (v24 < *(v21 + 16))
  {
    sub_25DD963D0(v38 + *(v41 + 72) * v24, v9, type metadata accessor for URIEncodedNode);
    v26 = v40;
    sub_25DD963D0(v9, v40, type metadata accessor for URIEncodedNode);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25DD96370(v26, type metadata accessor for URIEncodedNode);
      sub_25DD92300();
      swift_allocError();
      *v34 = 0;
      v34[1] = 0;
      swift_willThrow();

      sub_25DD96370(v9, type metadata accessor for URIEncodedNode);
    }

    v27 = v4;
    v28 = a2;
    v29 = v26;
    v30 = v37;
    sub_25DD947C4(v29, v37, type metadata accessor for URIEncodedNode.Primitive);
    sub_25DD96370(v9, type metadata accessor for URIEncodedNode);
    v42 = v25;
    v32 = *(v25 + 16);
    v31 = *(v25 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_25DD947A4((v31 > 1), v32 + 1, 1);
      v25 = v42;
    }

    ++v24;
    *(v25 + 16) = v32 + 1;
    result = sub_25DD947C4(v30, v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32, type metadata accessor for URIEncodedNode.Primitive);
    a2 = v28;
    v4 = v27;
    v21 = v36;
    if (v22 == v24)
    {

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD929B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for URIEncodedNode.Primitive(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v13;
  v16 = *v6;
  v17 = v6[1];
  if (!*v6)
  {
    v20 = 0;
    v85 = 1;
    v78 = 44;
    v75 = v16;
    v21 = *(a1 + 16);
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_24:
  }

  if (v16 != 1)
  {
    sub_25DD92300();
    swift_allocError();
    *v35 = xmmword_25DD9B570;
    return swift_willThrow();
  }

  v18 = 44;
  if (v6[1])
  {
    v18 = 38;
  }

  v78 = v18;
  v19 = 61;
  if (!v17)
  {
    v19 = 0;
  }

  v75 = v19;
  v85 = v17 ^ 1;
  if (v17)
  {
    v20 = 0xE100000000000000;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 16);
  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_11:
  v66 = v21;
  v67 = v14;
  v69 = v20;
  v71 = a2;
  v73 = v11;
  v74 = &v64 - v13;
  if ((v16 != 1) | v17 & 1)
  {
    goto LABEL_28;
  }

  v22 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v22 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_27;
  }

  v65 = a1;
  v23 = a3;
  a3 = v6;
  v83 = a2;
  v84 = v23;
  v24 = v23;
  if (qword_27FCCE2D0 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v25 = sub_25DD965E4();
    __swift_project_value_buffer(v25, qword_27FCCE2D8);
    sub_25DD07E24();
    v26 = sub_25DD96FB4();
    v28 = v27 ? v26 : 0;
    v29 = v27 ? v27 : 0xE000000000000000;
    v83 = v28;
    v84 = v29;
    v81 = 32;
    v82 = 0xE100000000000000;
    v79 = sub_25DD6F904(*(a3 + 2));
    v80 = v30;
    v31 = sub_25DD96FA4();
    v33 = v32;
    v6 = a3;

    v20 = v69;
    a3 = v24;
    a1 = v65;
LABEL_27:
    MEMORY[0x25F8A3200](v31, v33);

    MEMORY[0x25F8A3200](61, 0xE100000000000000);
    v11 = v73;
    v15 = v74;
LABEL_28:
    v37 = sub_25DD93F2C(1uLL, a1);
    v77 = v38;
    v39 = a1;
    v24 = v40 >> 1;
    v68 = a3;
    if (v36 == v40 >> 1)
    {
      break;
    }

    v41 = v36;
    v42 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v42 = v71 & 0xFFFFFFFFFFFFLL;
    }

    v70 = v42;
    v65 = v39;

    v76 = v37;
    while (v41 < v24)
    {
      a3 = *(v11 + 72);
      sub_25DD963D0(v77 + a3 * v41, v15, type metadata accessor for URIEncodedNode.Primitive);
      if (v85)
      {
        sub_25DD93A74(v15);
        if (v5)
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v70)
        {
          v72 = v5;
          v83 = v71;
          v84 = v68;
          if (qword_27FCCE2D0 != -1)
          {
            swift_once();
          }

          v43 = sub_25DD965E4();
          __swift_project_value_buffer(v43, qword_27FCCE2D8);
          sub_25DD07E24();
          v44 = sub_25DD96FB4();
          if (v45)
          {
            v46 = v44;
          }

          else
          {
            v46 = 0;
          }

          if (v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0xE000000000000000;
          }

          v83 = v46;
          v84 = v47;
          v81 = 32;
          v82 = 0xE100000000000000;
          v79 = sub_25DD6F904(v6[2]);
          v80 = v48;
          v49 = sub_25DD96FA4();
          v51 = v50;

          v5 = v72;
          v20 = v69;
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        MEMORY[0x25F8A3200](v49, v51);

        MEMORY[0x25F8A3200](v75, v20);
        v15 = v74;
        sub_25DD93A74(v74);
        if (v5)
        {

LABEL_69:

          swift_unknownObjectRelease();
          v63 = v15;
          return sub_25DD96370(v63, type metadata accessor for URIEncodedNode.Primitive);
        }

        v11 = v73;
      }

      ++v41;
      MEMORY[0x25F8A3200](v78, 0xE100000000000000);
      sub_25DD96370(v15, type metadata accessor for URIEncodedNode.Primitive);
      if (v24 == v41)
      {
        swift_unknownObjectRelease();

        v39 = v65;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_72:
    swift_once();
  }

  swift_unknownObjectRelease();

  a3 = *(v11 + 72);
LABEL_51:
  v52 = v67;
  sub_25DD963D0(v39 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + a3 * (v66 - 1), v67, type metadata accessor for URIEncodedNode.Primitive);
  if (v85)
  {
    sub_25DD93A74(v52);
  }

  else
  {
    v53 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v53 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      v83 = v71;
      v84 = v68;
      if (qword_27FCCE2D0 != -1)
      {
        swift_once();
      }

      v54 = sub_25DD965E4();
      __swift_project_value_buffer(v54, qword_27FCCE2D8);
      sub_25DD07E24();
      v55 = sub_25DD96FB4();
      if (v56)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0;
      }

      if (v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = 0xE000000000000000;
      }

      v83 = v57;
      v84 = v58;
      v81 = 32;
      v82 = 0xE100000000000000;
      v79 = sub_25DD6F904(v6[2]);
      v80 = v59;
      v60 = sub_25DD96FA4();
      v62 = v61;

      v20 = v69;
    }

    else
    {
      v60 = 0;
      v62 = 0xE000000000000000;
    }

    MEMORY[0x25F8A3200](v60, v62);

    MEMORY[0x25F8A3200](v75, v20);
    sub_25DD93A74(v52);
  }

  v63 = v52;
  return sub_25DD96370(v63, type metadata accessor for URIEncodedNode.Primitive);
}

uint64_t sub_25DD93160(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v83 = a3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v8 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v79 = (&v73 - v9);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2980, &qword_25DDA0890);
  MEMORY[0x28223BE20](v78);
  v77 = (&v73 - v10);
  v11 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2988, &qword_25DDA0898);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v91 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v17);
  v21 = (&v73 - v20);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return result;
  }

  v84 = a2;
  v23 = v4;
  v24 = sub_25DD94CA8(v22, 0);
  v85 = v8;
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v26 = v24;
  v75 = v25;
  v27 = sub_25DD96030(&v97, (v24 + v25), v22, a1);
  v28 = v97;
  v89 = v99;
  v90 = v27;
  v88 = v100;

  sub_25DD07900(v28);
  if (v90 != v22)
  {
    goto LABEL_47;
  }

  v97 = v26;
  sub_25DD94BF4(&v97);
  v29 = v23;
  if (v23)
  {
    MEMORY[0x25F8A43F0](v23);

    __break(1u);
    return result;
  }

  v30 = v97;
  v31 = *v5;
  v32 = v5[1];
  v33 = v84;
  v35 = v91;
  v34 = v92;
  LODWORD(v90) = v31;
  v80 = v97;
  if (!v31)
  {
    v74 = v14;
    v46 = v32 == 0;
    v47 = 61;
    if (v46)
    {
      v47 = 44;
    }

    v87 = v47;
    v88 = 44;
    goto LABEL_27;
  }

  if (v31 != 1)
  {
    if ((v32 & 1) == 0)
    {

      sub_25DD92300();
      swift_allocError();
      *v48 = 0xD000000000000038;
      v48[1] = 0x800000025DDAB790;
      return swift_willThrow();
    }

    v74 = v14;
LABEL_23:
    v87 = 61;
    v88 = 38;
    goto LABEL_27;
  }

  v74 = v14;
  if (v32)
  {
    goto LABEL_23;
  }

  v36 = HIBYTE(v83) & 0xF;
  if ((v83 & 0x2000000000000000) == 0)
  {
    v36 = v84 & 0xFFFFFFFFFFFFLL;
  }

  v73 = 0;
  if (v36)
  {
    v97 = v84;
    v98 = v83;
    if (qword_27FCCE2D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

  v43 = 0;
  v45 = 0xE000000000000000;
LABEL_26:
  MEMORY[0x25F8A3200](v43, v45);

  MEMORY[0x25F8A3200](61, 0xE100000000000000);
  v88 = 44;
  v87 = 44;
  v29 = v73;
  v33 = v84;
  v34 = v92;
  v30 = v80;
LABEL_27:
  v76 = sub_25DD93FC0(1uLL, v30);
  v81 = v49;
  v51 = v50;
  v53 = v52 >> 1;
  v89 = (v85 + 56);
  v54 = (v85 + 48);

  v82 = v51;
  v86 = v53;
  if (v51 == v53)
  {
LABEL_28:
    v55 = 1;
    v51 = v53;
    goto LABEL_32;
  }

  while (1)
  {
    if (v51 < v82 || v51 >= v53)
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
LABEL_11:
      v37 = sub_25DD965E4();
      __swift_project_value_buffer(v37, qword_27FCCE2D8);
      sub_25DD07E24();
      v38 = sub_25DD96FB4();
      if (v39)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0;
      }

      v41 = 0xE000000000000000;
      if (v39)
      {
        v41 = v39;
      }

      v89 = v41;
      v97 = v40;
      v98 = v41;
      v95 = 32;
      v96 = 0xE100000000000000;
      v93 = sub_25DD6F904(v5[2]);
      v94 = v42;
      v43 = sub_25DD96FA4();
      v45 = v44;

      v35 = v91;
      goto LABEL_26;
    }

    sub_25DD96300(v81 + *(v85 + 72) * v51, v35);
    v55 = 0;
    ++v51;
LABEL_32:
    (*v89)(v35, v55, 1, v34);
    sub_25DD64520(v35, v21, &qword_27FCC2988, &qword_25DDA0898);
    if ((*v54)(v21, 1, v34) == 1)
    {
      break;
    }

    v56 = *v21;
    v57 = v21[1];
    v58 = v21 + *(v34 + 48);
    v59 = v101;
    sub_25DD947C4(v58, v101, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    if (v90 == 2)
    {
      v97 = v33;
      v98 = v83;

      MEMORY[0x25F8A3200](91, 0xE100000000000000);

      MEMORY[0x25F8A3200](v56, v57);
      v33 = v84;

      MEMORY[0x25F8A3200](93, 0xE100000000000000);
      v59 = v101;

      v56 = v97;
      v57 = v98;
    }

    v60 = v56;
    v61 = v88;
    sub_25DD94060(v59, v60, v57, v5, v87, v88);
    if (v29)
    {
      sub_25DD96370(v59, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
      swift_unknownObjectRelease();

LABEL_43:
      swift_bridgeObjectRelease_n();
    }

    MEMORY[0x25F8A3200](v61, 0xE100000000000000);
    sub_25DD96370(v59, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    v35 = v91;
    v34 = v92;
    v53 = v86;
    if (v51 == v86)
    {
      goto LABEL_28;
    }
  }

  swift_unknownObjectRelease();
  v62 = *(v80 + 16);
  if (v62)
  {
    v63 = v79;
    sub_25DD96300(v80 + v75 + *(v85 + 72) * (v62 - 1), v79);

    v64 = v63[1];
    v65 = *(v34 + 48);
    v66 = v78;
    v67 = *(v78 + 48);
    v68 = v77;
    *v77 = *v63;
    v68[1] = v64;
    sub_25DD947C4(v63 + v65, v68 + v67, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    v69 = *v68;
    v70 = v68[1];
    v71 = v68 + *(v66 + 48);
    v72 = v74;
    sub_25DD947C4(v71, v74, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    if (v90 == 2)
    {
      v97 = v33;
      v98 = v83;

      MEMORY[0x25F8A3200](91, 0xE100000000000000);

      MEMORY[0x25F8A3200](v69, v70);

      MEMORY[0x25F8A3200](93, 0xE100000000000000);

      v69 = v97;
      v70 = v98;
    }

    sub_25DD94060(v72, v69, v70, v5, v87, v88);
    sub_25DD96370(v72, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
    goto LABEL_43;
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25DD93A74(uint64_t a1)
{
  v3 = v1;
  v5 = sub_25DD967C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URIEncodedNode.Primitive(0);
  MEMORY[0x28223BE20](v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD963D0(a1, v11, type metadata accessor for URIEncodedNode.Primitive);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (*v11)
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (*v11)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      goto LABEL_34;
    }

    v21 = *(v11 + 1);
    v48 = *v11;
    v49 = v21;
    if (qword_27FCCE2D0 != -1)
    {
      swift_once();
    }

    v22 = sub_25DD965E4();
    __swift_project_value_buffer(v22, qword_27FCCE2D8);
    sub_25DD07E24();
    v23 = sub_25DD96FB4();
    v25 = v24;

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v48 = v26;
    v49 = v27;
    v44 = 32;
    v45[0] = 0xE100000000000000;
    v42 = sub_25DD6F904(*(v3 + 2));
    v43 = v28;
    v29 = sub_25DD96FA4();
    v15 = v30;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = *v11;
    sub_25DD7A8A8();
    v13 = sub_25DD97054();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_25DD83E7C(v3, &v48);
    sub_25DD739D0(v3, &v44);
    v16 = v46;
    v17 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = (*(v17 + 8))(v8, v16, v17);
    if (v2)
    {
      sub_25DD83ED8(&v48);
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_1(v45);
    }

    v31 = v18;
    v32 = v19;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v42 = v31;
    v43 = v32;
    if (qword_27FCCE2D0 != -1)
    {
      swift_once();
    }

    v33 = sub_25DD965E4();
    __swift_project_value_buffer(v33, qword_27FCCE2D8);
    sub_25DD07E24();
    v34 = sub_25DD96FB4();
    v36 = v35;

    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0;
    }

    v38 = 0xE000000000000000;
    if (v36)
    {
      v38 = v36;
    }

    v50 = v38;
    v42 = v37;
    v43 = v38;
    v41[3] = 32;
    v41[4] = 0xE100000000000000;
    v41[1] = sub_25DD6F904(SBYTE2(v48));
    v41[2] = v39;
    v29 = sub_25DD96FA4();
    v15 = v40;
    sub_25DD83ED8(&v48);
    (*(v6 + 8))(v8, v5);
LABEL_33:

    v13 = v29;
    goto LABEL_34;
  }

  v13 = sub_25DD96E44();
LABEL_13:
  v15 = v14;
LABEL_34:
  MEMORY[0x25F8A3200](v13, v15);
}

unint64_t sub_25DD93F2C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    type metadata accessor for URIEncodedNode.Primitive(0);
    return a2;
  }

  return result;
}

unint64_t sub_25DD93FC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
    return a2;
  }

  return result;
}

uint64_t sub_25DD94060(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v72 = a5;
  v73 = a6;
  v12 = type metadata accessor for URIEncodedNode.Primitive(0);
  v80 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v66 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  v20 = type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD963D0(a1, v22, type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_25DD947C4(v22, v19, type metadata accessor for URIEncodedNode.Primitive);
    v39 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v39 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
      v46 = 0;
      v48 = 0xE000000000000000;
      v49 = v72;
LABEL_30:
      MEMORY[0x25F8A3200](v46, v48);

      MEMORY[0x25F8A3200](v49, 0xE100000000000000);
LABEL_51:
      sub_25DD93A74(v19);
      return sub_25DD96370(v19, type metadata accessor for URIEncodedNode.Primitive);
    }

    v80 = v19;
    v78 = a2;
    v79 = a3;
    if (qword_27FCCE2D0 == -1)
    {
LABEL_21:
      v40 = sub_25DD965E4();
      __swift_project_value_buffer(v40, qword_27FCCE2D8);
      sub_25DD07E24();
      v41 = sub_25DD96FB4();
      if (v42)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0;
      }

      if (v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = 0xE000000000000000;
      }

      v78 = v43;
      v79 = v44;
      v76 = 32;
      v77 = 0xE100000000000000;
      v74 = sub_25DD6F904(*(a4 + 2));
      v75 = v45;
      v46 = sub_25DD96FA4();
      v48 = v47;

      v49 = v72;
      v19 = v80;
      goto LABEL_30;
    }

LABEL_55:
    swift_once();
    goto LABEL_21;
  }

  v67 = a2;
  v23 = *v22;
  if (*(*v22 + 16))
  {
    v63 = *(*v22 + 16);
    v64 = sub_25DD93F2C(1uLL, v23);
    v65 = v23;
    v71 = v25;
    v27 = v26 >> 1;
    if (v24 == v26 >> 1)
    {

      v28 = v72;
LABEL_5:
      swift_unknownObjectRelease();
      if (v63 > *(v65 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_25DD963D0(v65 + ((v80[80] + 32) & ~v80[80]) + *(v80 + 9) * (v63 - 1), v66, type metadata accessor for URIEncodedNode.Primitive);

        v29 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v29 = v67 & 0xFFFFFFFFFFFFLL;
        }

        if (!v29)
        {
          v36 = 0;
          v38 = 0xE000000000000000;
LABEL_50:
          MEMORY[0x25F8A3200](v36, v38);

          MEMORY[0x25F8A3200](v28, 0xE100000000000000);
          v19 = v66;
          goto LABEL_51;
        }

        v78 = v67;
        v79 = a3;
        if (qword_27FCCE2D0 == -1)
        {
LABEL_10:
          v30 = sub_25DD965E4();
          __swift_project_value_buffer(v30, qword_27FCCE2D8);
          sub_25DD07E24();
          v31 = sub_25DD96FB4();
          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0;
          }

          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = 0xE000000000000000;
          }

          v78 = v33;
          v79 = v34;
          v76 = 32;
          v77 = 0xE100000000000000;
          v74 = sub_25DD6F904(*(a4 + 2));
          v75 = v35;
          v36 = sub_25DD96FA4();
          v38 = v37;

          goto LABEL_50;
        }
      }

      swift_once();
      goto LABEL_10;
    }

    v50 = v24;
    v51 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v51 = v67 & 0xFFFFFFFFFFFFLL;
    }

    v70 = v51;

    v68 = v27;
    v69 = a3;
    v28 = v72;
    while (v50 < v27)
    {
      sub_25DD963D0(v71 + *(v80 + 9) * v50, v17, type metadata accessor for URIEncodedNode.Primitive);
      if (v70)
      {
        v78 = v67;
        v79 = a3;
        if (qword_27FCCE2D0 != -1)
        {
          swift_once();
        }

        v52 = sub_25DD965E4();
        __swift_project_value_buffer(v52, qword_27FCCE2D8);
        sub_25DD07E24();
        v53 = sub_25DD96FB4();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        v78 = v55;
        v79 = v56;
        v76 = 32;
        v77 = 0xE100000000000000;
        v74 = sub_25DD6F904(*(a4 + 2));
        v75 = v57;
        v58 = sub_25DD96FA4();
        v60 = v59;

        v28 = v72;
      }

      else
      {
        v58 = 0;
        v60 = 0xE000000000000000;
      }

      MEMORY[0x25F8A3200](v58, v60);

      MEMORY[0x25F8A3200](v28, 0xE100000000000000);
      sub_25DD93A74(v17);
      if (v7)
      {
        sub_25DD96370(v17, type metadata accessor for URIEncodedNode.Primitive);
        swift_unknownObjectRelease();
      }

      ++v50;
      MEMORY[0x25F8A3200](v73, 0xE100000000000000);
      sub_25DD96370(v17, type metadata accessor for URIEncodedNode.Primitive);
      v27 = v68;
      a3 = v69;
      if (v68 == v50)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_55;
  }
}

void *sub_25DD947A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25DD94A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25DD947C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_25DD9482C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCC2990, &unk_25DDA08A0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
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

void *sub_25DD94A1C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2970, &qword_25DDA0880);
  v10 = *(type metadata accessor for URIEncodedNode.Primitive(0) - 8);
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
  v15 = *(type metadata accessor for URIEncodedNode.Primitive(0) - 8);
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

uint64_t sub_25DD94BF4(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25DD96438(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25DD94DB0(v6);
  *a1 = v3;
  return result;
}

void *sub_25DD94CA8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCC2990, &unk_25DDA08A0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD94DB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
        v6 = sub_25DD96D64();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25DD9514C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_25DD94EF4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD94EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v8 = MEMORY[0x28223BE20](v40);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v35 = *a4;
    v29 = v18;
    v22 = v35 + v18 * a3;
LABEL_5:
    v33 = v19;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v21;
    while (1)
    {
      sub_25DD96300(v22, v17);
      sub_25DD96300(v19, v13);
      v24 = v17[1];
      v38 = *v17;
      v39 = v24;
      v25 = v13[1];
      v36 = *v13;
      v37 = v25;
      sub_25DD07E24();
      v26 = sub_25DD96FD4();
      sub_25DD9644C(v13);
      result = sub_25DD9644C(v17);
      if (v26 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v19 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_25DD64520(v22, v10, &qword_27FCC2978, &qword_25DDA0888);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25DD64520(v10, v19, &qword_27FCC2978, &qword_25DDA0888);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD9514C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v107 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v112 = *(v117 - 8);
  v8 = MEMORY[0x28223BE20](v117);
  v103 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v102 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v118 = (&v102 - v13);
  result = MEMORY[0x28223BE20](v12);
  v16 = (&v102 - v15);
  v17 = *(a3 + 8);
  v114 = a3;
  if (v17 >= 1)
  {
    v104 = a4;
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v20 = v18;
      v21 = v18 + 1;
      if (v18 + 1 >= v17)
      {
        v29 = v18 + 1;
      }

      else
      {
        v115 = v17;
        v105 = v5;
        v22 = *a3;
        v23 = *(v112 + 72);
        v24 = *a3 + v23 * v21;
        sub_25DD96300(v24, v16);
        v25 = v118;
        sub_25DD96300(v22 + v23 * v20, v118);
        v26 = v16[1];
        v121 = *v16;
        v122 = v26;
        v27 = v25[1];
        v119 = *v25;
        v120 = v27;
        sub_25DD07E24();
        v111 = sub_25DD96FD4();
        sub_25DD9644C(v25);
        result = sub_25DD9644C(v16);
        v106 = v20;
        v28 = v20 + 2;
        v113 = v23;
        a4 = v22 + v23 * (v20 + 2);
        while (1)
        {
          v29 = v115;
          if (v115 == v28)
          {
            break;
          }

          v30 = v19;
          v31 = v111 == -1;
          sub_25DD96300(a4, v16);
          v32 = v118;
          sub_25DD96300(v24, v118);
          v33 = v16[1];
          v121 = *v16;
          v122 = v33;
          v34 = v32[1];
          v119 = *v32;
          v120 = v34;
          v35 = sub_25DD96FD4();
          sub_25DD9644C(v32);
          result = sub_25DD9644C(v16);
          v36 = v31 ^ (v35 != -1);
          v19 = v30;
          ++v28;
          a4 += v113;
          v24 += v113;
          if ((v36 & 1) == 0)
          {
            v29 = v28 - 1;
            break;
          }
        }

        a3 = v114;
        v20 = v106;
        if (v111 != -1)
        {
          goto LABEL_23;
        }

        if (v29 < v106)
        {
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
          return result;
        }

        if (v106 < v29)
        {
          v102 = v19;
          v37 = v29;
          v38 = v113 * (v29 - 1);
          v39 = v29 * v113;
          v115 = v29;
          v40 = v106;
          v41 = v106 * v113;
          v42 = v103;
          do
          {
            if (v40 != --v37)
            {
              a4 = *v114;
              if (!*v114)
              {
                goto LABEL_133;
              }

              sub_25DD64520(a4 + v41, v42, &qword_27FCC2978, &qword_25DDA0888);
              if (v41 < v38 || a4 + v41 >= a4 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25DD64520(v42, a4 + v38, &qword_27FCC2978, &qword_25DDA0888);
            }

            ++v40;
            v38 -= v113;
            v39 -= v113;
            v41 += v113;
          }

          while (v40 < v37);
          v5 = v105;
          v20 = v106;
          a3 = v114;
          v29 = v115;
          v19 = v102;
        }

        else
        {
LABEL_23:
          v5 = v105;
        }
      }

      v43 = *(a3 + 8);
      if (v29 >= v43)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v29, v20))
      {
        goto LABEL_125;
      }

      if (v29 - v20 >= v104)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v20, v104))
      {
        goto LABEL_126;
      }

      if (v20 + v104 >= v43)
      {
        v44 = *(a3 + 8);
      }

      else
      {
        v44 = v20 + v104;
      }

      if (v44 < v20)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v29 == v44)
      {
LABEL_33:
        v18 = v29;
        if (v29 < v20)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v102 = v19;
        v105 = v5;
        v106 = v20;
        v89 = *a3;
        v90 = *(v112 + 72);
        v91 = *a3 + v90 * (v29 - 1);
        v92 = -v90;
        a3 = v20 - v29;
        v108 = v90;
        v109 = v44;
        v93 = v89 + v29 * v90;
        do
        {
          v115 = v29;
          v110 = v93;
          v111 = a3;
          v113 = v91;
          do
          {
            sub_25DD96300(v93, v16);
            v94 = v118;
            sub_25DD96300(v91, v118);
            v95 = v16[1];
            v121 = *v16;
            v122 = v95;
            v96 = v94[1];
            v119 = *v94;
            v120 = v96;
            sub_25DD07E24();
            a4 = sub_25DD96FD4();
            sub_25DD9644C(v94);
            result = sub_25DD9644C(v16);
            if (a4 != -1)
            {
              break;
            }

            if (!v89)
            {
              goto LABEL_130;
            }

            a4 = v116;
            sub_25DD64520(v93, v116, &qword_27FCC2978, &qword_25DDA0888);
            swift_arrayInitWithTakeFrontToBack();
            sub_25DD64520(a4, v91, &qword_27FCC2978, &qword_25DDA0888);
            v91 += v92;
            v93 += v92;
          }

          while (!__CFADD__(a3++, 1));
          v29 = v115 + 1;
          v18 = v109;
          v91 = v113 + v108;
          a3 = v111 - 1;
          v93 = v110 + v108;
        }

        while (v115 + 1 != v109);
        v5 = v105;
        v20 = v106;
        v19 = v102;
        if (v109 < v106)
        {
          goto LABEL_124;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25DD050F0(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a4 = *(v19 + 2);
      v45 = *(v19 + 3);
      v46 = a4 + 1;
      if (a4 >= v45 >> 1)
      {
        result = sub_25DD050F0((v45 > 1), a4 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v46;
      v47 = &v19[16 * a4];
      *(v47 + 4) = v20;
      *(v47 + 5) = v18;
      if (!*v107)
      {
        goto LABEL_134;
      }

      if (a4)
      {
        a3 = *v107;
        while (1)
        {
          v48 = v46 - 1;
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v49 = *(v19 + 4);
            v50 = *(v19 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_54:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v19[16 * v46];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v19[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v46 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v75 = &v19[16 * v46];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_68:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v19[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_75:
          a4 = v48 - 1;
          if (v48 - 1 >= v46)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_127;
          }

          if (!*v114)
          {
            goto LABEL_131;
          }

          v86 = *&v19[16 * a4 + 32];
          v87 = *&v19[16 * v48 + 40];
          sub_25DD95A70(*v114 + *(v112 + 72) * v86, *v114 + *(v112 + 72) * *&v19[16 * v48 + 32], *v114 + *(v112 + 72) * v87, a3);
          if (v5)
          {
          }

          if (v87 < v86)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_25DD06A4C(v19);
          }

          if (a4 >= *(v19 + 2))
          {
            goto LABEL_110;
          }

          v88 = &v19[16 * a4];
          *(v88 + 4) = v86;
          *(v88 + 5) = v87;
          v123 = v19;
          result = sub_25DD069C0(v48);
          v19 = v123;
          v46 = *(v123 + 2);
          if (v46 <= 1)
          {
            goto LABEL_3;
          }
        }

        v53 = &v19[16 * v46 + 32];
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_111;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_112;
        }

        v60 = &v19[16 * v46];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_114;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_117;
        }

        if (v64 >= v56)
        {
          v82 = &v19[16 * v48 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_121;
          }

          if (v51 < v85)
          {
            v48 = v46 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      a3 = v114;
      v17 = v114[1];
      if (v18 >= v17)
      {
        goto LABEL_96;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_96:
  a4 = *v107;
  if (!*v107)
  {
    goto LABEL_135;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_128:
    result = sub_25DD06A4C(v19);
    v19 = result;
  }

  v98 = v5;
  v123 = v19;
  v99 = *(v19 + 2);
  if (v99 >= 2)
  {
    while (1)
    {
      v100 = *a3;
      if (!*a3)
      {
        goto LABEL_132;
      }

      v5 = *&v19[16 * v99];
      a3 = *&v19[16 * v99 + 24];
      sub_25DD95A70(v100 + *(v112 + 72) * v5, v100 + *(v112 + 72) * *&v19[16 * v99 + 16], v100 + *(v112 + 72) * a3, a4);
      if (v98)
      {
      }

      if (a3 < v5)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_25DD06A4C(v19);
      }

      if (v99 - 2 >= *(v19 + 2))
      {
        goto LABEL_123;
      }

      v101 = &v19[16 * v99];
      *v101 = v5;
      v101[1] = a3;
      v123 = v19;
      result = sub_25DD069C0(v99 - 1);
      v19 = v123;
      v99 = *(v123 + 2);
      a3 = v114;
      if (v99 <= 1)
      {
      }
    }
  }
}

uint64_t sub_25DD95A70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v7 = MEMORY[0x28223BE20](v46);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v7);
  v12 = (&v40 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v14 != -1)
  {
    v16 = (a2 - a1) / v14;
    v53 = a1;
    v17 = v45;
    v52 = v45;
    if (v16 < v15 / v14)
    {
      v18 = v16 * v14;
      if (v45 < a1 || a1 + v18 <= v45)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v45 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v17 = v45;
LABEL_17:
      v20 = v17 + v18;
      v51 = v17 + v18;
      if (v18 >= 1 && a2 < a3)
      {
        do
        {
          sub_25DD96300(a2, v12);
          sub_25DD96300(v17, v9);
          v22 = v12[1];
          v49 = *v12;
          v50 = v22;
          v23 = v9[1];
          v47 = *v9;
          v48 = v23;
          sub_25DD07E24();
          v24 = sub_25DD96FD4();
          sub_25DD9644C(v9);
          sub_25DD9644C(v12);
          if (v24 == -1)
          {
            if (a1 < a2 || a1 >= a2 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }

          else
          {
            if (a1 < v17 || a1 >= v17 + v14)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v52 = v17 + v14;
            v17 += v14;
          }

          a1 += v14;
          v53 = a1;
        }

        while (v17 < v20 && a2 < a3);
      }

LABEL_59:
      sub_25DD95F40(&v53, &v52, &v51);
      return 1;
    }

    v19 = v15 / v14 * v14;
    v44 = v9;
    if (v45 < a2 || a2 + v19 <= v45)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v45 == a2)
      {
LABEL_39:
        v25 = v17 + v19;
        if (v19 >= 1)
        {
          v26 = -v14;
          v27 = v17 + v19;
          v28 = a3;
          v41 = v26;
          v42 = a1;
          do
          {
            v40 = v25;
            v29 = a2 + v26;
            v43 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v53 = a2;
                v51 = v40;
                goto LABEL_59;
              }

              v31 = v28;
              v32 = v28 + v26;
              v33 = v27 + v26;
              sub_25DD96300(v33, v12);
              v34 = v12;
              v35 = v44;
              sub_25DD96300(v29, v44);
              v36 = v34[1];
              v49 = *v34;
              v50 = v36;
              v37 = v35[1];
              v47 = *v35;
              v48 = v37;
              sub_25DD07E24();
              v38 = sub_25DD96FD4();
              v39 = v35;
              v12 = v34;
              sub_25DD9644C(v39);
              sub_25DD9644C(v34);
              if (v38 == -1)
              {
                break;
              }

              v25 = v33;
              v28 = v32;
              if (v31 < v27 || v32 >= v27)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v42;
              }

              else
              {
                a1 = v42;
                if (v31 != v27)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v27 = v33;
              v30 = v33 > v45;
              v26 = v41;
              a2 = v43;
              if (!v30)
              {
                goto LABEL_57;
              }
            }

            v28 = v32;
            if (v31 < v43 || v32 >= v43)
            {
              a2 = v29;
              swift_arrayInitWithTakeFrontToBack();
              v26 = v41;
              a1 = v42;
            }

            else
            {
              a2 = v29;
              v26 = v41;
              a1 = v42;
              if (v31 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v27 > v45);
        }

LABEL_57:
        v53 = a2;
        v51 = v25;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v17 = v45;
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_25DD95F40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25DD96030(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  v40 = *(v43 - 8);
  v8 = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v41 = &v37 - v11;
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
  v44 = a2;
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
    v37 = v13;
    v38 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    v39 = a3;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v16;
      v23 = v21 | (v16 << 6);
      v24 = *(a4 + 56);
      v25 = a4;
      v26 = (*(a4 + 48) + 16 * v23);
      v27 = *v26;
      v28 = v26[1];
      v29 = v24 + *(*(type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives(0) - 8) + 72) * v23;
      v30 = v42;
      sub_25DD963D0(v29, &v42[*(v43 + 48)], type metadata accessor for URIEncodedNode.PrimitiveOrArrayOfPrimitives);
      *v30 = v27;
      v30[1] = v28;
      v31 = v30;
      v32 = v41;
      sub_25DD64520(v31, v41, &qword_27FCC2978, &qword_25DDA0888);
      v33 = v32;
      v34 = v44;
      sub_25DD64520(v33, v44, &qword_27FCC2978, &qword_25DDA0888);
      a3 = v39;
      if (v18 == v39)
      {

        a1 = v38;
        a4 = v25;
        goto LABEL_23;
      }

      a1 = (v34 + *(v40 + 72));
      v44 = a1;

      result = v18;
      v35 = __OFADD__(v18++, 1);
      a4 = v25;
      v16 = v22;
      if (v35)
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
      v36 = v16 + 1;
    }

    else
    {
      v36 = v17;
    }

    v22 = v36 - 1;
    a3 = result;
    a1 = v38;
LABEL_23:
    v13 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25DD96300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD96370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25DD963D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD9644C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2978, &qword_25DDA0888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}