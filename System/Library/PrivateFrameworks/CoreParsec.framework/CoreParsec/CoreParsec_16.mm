unsigned __int8 *sub_10014D6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v40 = v39;

    v7 = v40;
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
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            LOWORD(v14) = 0;
            v25 = result + 1;
            v26 = a3;
            while (1)
            {
              v17 = v21 != 0;
              if (!v21)
              {
                goto LABEL_108;
              }

              v27 = *v25;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_107;
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

              v29 = (v14 * v26);
              if (v29 != v14 * v26)
              {
                goto LABEL_107;
              }

              v14 = v29 + (v27 + v28);
              if ((v29 + (v27 + v28)) != v14)
              {
                goto LABEL_107;
              }

              --v21;
              ++v25;
            }
          }

LABEL_65:
          LOWORD(v14) = 0;
          v17 = 0;
LABEL_108:

          return (v14 | (v17 << 16));
        }

LABEL_127:
        LOWORD(v14) = 0;
        v17 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOWORD(v30) = 0;
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

        v34 = a3;
        v17 = 1;
        do
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v32)
            {
              LOWORD(v14) = 0;
              if (v35 < 0x61 || v35 >= v33)
              {
                goto LABEL_108;
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

          v37 = v30 * v34;
          v38 = (v30 * v34);
          if (v38 != v37)
          {
            goto LABEL_127;
          }

          v30 = v38 + (v35 + v36);
          if (v30 != v30)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v17 = 0;
        LOWORD(v14) = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOWORD(v14) = 0;
          v15 = result + 1;
          v16 = a3;
          while (1)
          {
            v17 = v10 != 0;
            if (!v10)
            {
              goto LABEL_108;
            }

            v18 = *v15;
            if (v18 < 0x30 || v18 >= v11)
            {
              if (v18 < 0x41 || v18 >= v12)
              {
                if (v18 < 0x61 || v18 >= v13)
                {
                  goto LABEL_107;
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

            v20 = (v14 * v16);
            if (v20 != v14 * v16)
            {
              goto LABEL_107;
            }

            v14 = v20 - (v18 + v19);
            if ((v20 - (v18 + v19)) != v14)
            {
              goto LABEL_107;
            }

            --v10;
            ++v15;
          }
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        LOWORD(v60) = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v70;
        v65 = a3;
        v17 = 1;
        do
        {
          v66 = *v64;
          if (v66 < 0x30 || v66 >= v63)
          {
            if (v66 < 0x41 || v66 >= v61)
            {
              LOWORD(v14) = 0;
              if (v66 < 0x61 || v66 >= v62)
              {
                goto LABEL_108;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v60 * v65;
          v69 = (v60 * v65);
          if (v69 != v68)
          {
            goto LABEL_127;
          }

          v60 = v69 + (v66 + v67);
          if (v60 != v60)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v17 = 0;
        LOWORD(v14) = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        LOWORD(v14) = 0;
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

        v46 = &v70 + 1;
        v47 = a3;
        while (1)
        {
          v17 = v42 != 0;
          if (!v42)
          {
            goto LABEL_108;
          }

          v48 = *v46;
          if (v48 < 0x30 || v48 >= v43)
          {
            if (v48 < 0x41 || v48 >= v44)
            {
              if (v48 < 0x61 || v48 >= v45)
              {
                goto LABEL_107;
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

          v50 = (v14 * v47);
          if (v50 != v14 * v47)
          {
            goto LABEL_107;
          }

          v14 = v50 - (v48 + v49);
          if ((v50 - (v48 + v49)) != v14)
          {
            goto LABEL_107;
          }

          --v42;
          ++v46;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      LOWORD(v14) = 0;
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

      v55 = &v70 + 1;
      v56 = a3;
      while (1)
      {
        v17 = v51 != 0;
        if (!v51)
        {
          goto LABEL_108;
        }

        v57 = *v55;
        if (v57 < 0x30 || v57 >= v52)
        {
          if (v57 < 0x41 || v57 >= v53)
          {
            if (v57 < 0x61 || v57 >= v54)
            {
LABEL_107:
              LOWORD(v14) = 0;
              goto LABEL_108;
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

        v59 = (v14 * v56);
        if (v59 != v14 * v56)
        {
          goto LABEL_107;
        }

        v14 = v59 + (v57 + v58);
        if ((v59 + (v57 + v58)) != v14)
        {
          goto LABEL_107;
        }

        --v51;
        ++v55;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014DCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v40 = v39;

    v7 = v40;
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
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if (v28 != v28)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__OFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
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

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
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

          v36 = v30 * a3;
          if (v36 != v36)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __OFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
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

            v19 = v14 * a3;
            if (v19 != v19)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (__OFSUB__(v19, v20))
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
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

          v67 = v60 * a3;
          if (v67 != v67)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __OFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
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

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
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

          v49 = v14 * a3;
          if (v49 != v49)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (__OFSUB__(v49, v50))
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
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

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
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

        v58 = v14 * a3;
        if (v58 != v58)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_10014E22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71[0] = a1;
  v71[1] = a2;

  v5 = String.init<A>(_:)();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v38 = sub_100005854();
    v5 = sub_100107FD4(v38, v39);
    v41 = v40;

    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      sub_100005854();
      _StringObject.sharedUTF8.getter();
    }

    sub_100013628();
    if (v25)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          sub_100006490();
          if (v17)
          {
            sub_10000FEC4();
            while (v18)
            {
              sub_10000EC80();
              if ((!v14 || v22 >= v21) && (v22 < 0x41 || v22 >= v20) && (v22 < 0x61 || v22 >= v19))
              {
                break;
              }

              sub_10000FFE4();
              if (v24 != v23 >> 63)
              {
                break;
              }

              sub_10002DF68();
              if (v27)
              {
                break;
              }

              sub_10000E278();
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_118;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        sub_100006490();
        if (v26 ^ v27 | v25)
        {
          v31 = v34;
        }

        if (v26 ^ v27 | v25)
        {
          v32 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v33 = 58;
        }

        while (1)
        {
          v35 = *v28;
          if (v35 < 0x30 || v35 >= v33)
          {
            if (v35 < 0x41 || v35 >= v32)
            {
              if (v35 < 0x61 || v35 >= v31)
              {
                goto LABEL_91;
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

          v37 = v30 * a3;
          if ((v30 * a3) >> 64 == (v30 * a3) >> 63)
          {
            v30 = v37 + (v35 + v36);
            if (!__OFADD__(v37, (v35 + v36)))
            {
              ++v28;
              if (--v29)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        sub_100006490();
        if (v8)
        {
          sub_10000FEC4();
          while (v9)
          {
            sub_10000EC80();
            if ((!v14 || v13 >= v12) && (v13 < 0x41 || v13 >= v11) && (v13 < 0x61 || v13 >= v10))
            {
              break;
            }

            sub_10000FFE4();
            if (v16 != v15 >> 63)
            {
              break;
            }

            sub_10014FD88();
            if (v27)
            {
              break;
            }

            sub_10000E278();
          }
        }
      }

LABEL_91:

      return;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_100023FB4();
  if (!v25)
  {
    if (v43 != 45)
    {
      if (v42)
      {
        sub_100012688();
        if (v59 ^ v60 | v58)
        {
          v63 = v66;
        }

        if (v59 ^ v60 | v58)
        {
          v64 = 65;
        }

        if (!(v59 ^ v60 | v58))
        {
          v65 = 58;
        }

        v67 = v71;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v65)
          {
            if (v68 < 0x41 || v68 >= v64)
            {
              if (v68 < 0x61 || v68 >= v63)
              {
                goto LABEL_91;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          v70 = v62 * a3;
          if ((v62 * a3) >> 64 == (v62 * a3) >> 63)
          {
            v62 = v70 + (v68 + v69);
            if (!__OFADD__(v70, (v68 + v69)))
            {
              ++v67;
              if (--v61)
              {
                continue;
              }
            }
          }

          goto LABEL_91;
        }
      }

      goto LABEL_91;
    }

    if (v42)
    {
      if (v42 != 1)
      {
        sub_100006490();
        sub_100014CBC();
        while (v44)
        {
          sub_10000EC80();
          if ((!v14 || v48 >= v47) && (v48 < 0x41 || v48 >= v46) && (v48 < 0x61 || v48 >= v45))
          {
            break;
          }

          sub_10000FFE4();
          if (v50 != v49 >> 63)
          {
            break;
          }

          sub_10014FD88();
          if (v27)
          {
            break;
          }

          sub_10000E278();
        }
      }

      goto LABEL_91;
    }

    goto LABEL_117;
  }

  if (v42)
  {
    if (v42 != 1)
    {
      sub_100006490();
      sub_100014CBC();
      while (v51)
      {
        sub_10000EC80();
        if ((!v14 || v55 >= v54) && (v55 < 0x41 || v55 >= v53) && (v55 < 0x61 || v55 >= v52))
        {
          break;
        }

        sub_10000FFE4();
        if (v57 != v56 >> 63)
        {
          break;
        }

        sub_10002DF68();
        if (v27)
        {
          break;
        }

        sub_10000E278();
      }
    }

    goto LABEL_91;
  }

LABEL_119:
  __break(1u);
}

unsigned __int8 *sub_10014E6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v34 = v33;

    v7 = v34;
    if ((v34 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
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
            LOBYTE(v14) = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v19 != 0;
              if (!v19)
              {
                break;
              }

              v24 = *i;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_107;
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

              if (((v14 * a3) & 0xFF00) != 0)
              {
                goto LABEL_107;
              }

              v14 = (v14 * a3) + (v24 + v25);
              if ((v14 >> 8))
              {
                goto LABEL_107;
              }

              --v19;
            }

            goto LABEL_108;
          }

LABEL_65:
          LOBYTE(v14) = 0;
          v16 = 0;
LABEL_108:

          return (v14 | (v16 << 8));
        }

LABEL_127:
        LOBYTE(v14) = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOBYTE(v26) = 0;
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

        v16 = 1;
        do
        {
          v30 = *result;
          if (v30 < 0x30 || v30 >= v27)
          {
            if (v30 < 0x41 || v30 >= v28)
            {
              LOBYTE(v14) = 0;
              if (v30 < 0x61 || v30 >= v29)
              {
                goto LABEL_108;
              }

              v31 = -87;
            }

            else
            {
              v31 = -55;
            }
          }

          else
          {
            v31 = -48;
          }

          v32 = v26 * a3;
          if ((v32 & 0xFF00) != 0)
          {
            goto LABEL_127;
          }

          v26 = v32 + (v30 + v31);
          if ((v26 >> 8))
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        LOBYTE(v14) = v26;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOBYTE(v14) = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
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

            if (((v14 * a3) & 0xFF00) != 0)
            {
              goto LABEL_107;
            }

            v14 = (v14 * a3) - (v17 + v18);
            if ((v14 & 0xFFFFFF00) != 0)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v35 = HIBYTE(v7) & 0xF;
  v58 = v6;
  v59 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v35)
      {
        LOBYTE(v50) = 0;
        v51 = a3 + 55;
        v52 = a3 + 87;
        v53 = a3 + 48;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v52 = 97;
          v51 = 65;
        }

        v54 = &v58;
        v16 = 1;
        do
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v51)
            {
              LOBYTE(v14) = 0;
              if (v55 < 0x61 || v55 >= v52)
              {
                goto LABEL_108;
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

          v57 = v50 * a3;
          if ((v57 & 0xFF00) != 0)
          {
            goto LABEL_127;
          }

          v50 = v57 + (v55 + v56);
          if ((v50 >> 8))
          {
            goto LABEL_127;
          }

          v54 = (v54 + 1);
          --v35;
        }

        while (v35);
        v16 = 0;
        LOBYTE(v14) = v50;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v35)
    {
      v36 = v35 - 1;
      if (v36)
      {
        LOBYTE(v14) = 0;
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        for (k = &v58 + 1; ; ++k)
        {
          v16 = v36 != 0;
          if (!v36)
          {
            break;
          }

          v41 = *k;
          if (v41 < 0x30 || v41 >= v37)
          {
            if (v41 < 0x41 || v41 >= v38)
            {
              if (v41 < 0x61 || v41 >= v39)
              {
                goto LABEL_107;
              }

              v42 = -87;
            }

            else
            {
              v42 = -55;
            }
          }

          else
          {
            v42 = -48;
          }

          if (((v14 * a3) & 0xFF00) != 0)
          {
            goto LABEL_107;
          }

          v14 = (v14 * a3) - (v41 + v42);
          if ((v14 & 0xFFFFFF00) != 0)
          {
            goto LABEL_107;
          }

          --v36;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v35)
  {
    v43 = v35 - 1;
    if (v43)
    {
      LOBYTE(v14) = 0;
      v44 = a3 + 48;
      v45 = a3 + 55;
      v46 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v46 = 97;
        v45 = 65;
      }

      for (m = &v58 + 1; ; ++m)
      {
        v16 = v43 != 0;
        if (!v43)
        {
          break;
        }

        v48 = *m;
        if (v48 < 0x30 || v48 >= v44)
        {
          if (v48 < 0x41 || v48 >= v45)
          {
            if (v48 < 0x61 || v48 >= v46)
            {
LABEL_107:
              LOBYTE(v14) = 0;
              goto LABEL_108;
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

        if (((v14 * a3) & 0xFF00) != 0)
        {
          goto LABEL_107;
        }

        v14 = (v14 * a3) + (v48 + v49);
        if ((v14 >> 8))
        {
          goto LABEL_107;
        }

        --v43;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v34 = v33;

    v7 = v34;
    if ((v34 & 0x2000000000000000) == 0)
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
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
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
            LOWORD(v14) = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v19 != 0;
              if (!v19)
              {
                break;
              }

              v24 = *i;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_107;
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

              if (((v14 * a3) & 0xFFFF0000) != 0)
              {
                goto LABEL_107;
              }

              v14 = (v14 * a3) + (v24 + v25);
              if ((v14 & 0x10000) != 0)
              {
                goto LABEL_107;
              }

              --v19;
            }

            goto LABEL_108;
          }

LABEL_65:
          LOWORD(v14) = 0;
          v16 = 0;
LABEL_108:

          return (v14 | (v16 << 16));
        }

LABEL_127:
        LOWORD(v14) = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOWORD(v26) = 0;
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

        v16 = 1;
        do
        {
          v30 = *result;
          if (v30 < 0x30 || v30 >= v27)
          {
            if (v30 < 0x41 || v30 >= v28)
            {
              LOWORD(v14) = 0;
              if (v30 < 0x61 || v30 >= v29)
              {
                goto LABEL_108;
              }

              v31 = -87;
            }

            else
            {
              v31 = -55;
            }
          }

          else
          {
            v31 = -48;
          }

          v32 = v26 * a3;
          if ((v32 & 0xFFFF0000) != 0)
          {
            goto LABEL_127;
          }

          v26 = v32 + (v30 + v31);
          if ((v26 & 0x10000) != 0)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        LOWORD(v14) = v26;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          LOWORD(v14) = 0;
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
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

            if (((v14 * a3) & 0xFFFF0000) != 0)
            {
              goto LABEL_107;
            }

            v14 = (v14 * a3) - (v17 + v18);
            if ((v14 & 0xFFFF0000) != 0)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v35 = HIBYTE(v7) & 0xF;
  v58 = v6;
  v59 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v35)
      {
        LOWORD(v50) = 0;
        v51 = a3 + 55;
        v52 = a3 + 87;
        v53 = a3 + 48;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v52 = 97;
          v51 = 65;
        }

        v54 = &v58;
        v16 = 1;
        do
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v51)
            {
              LOWORD(v14) = 0;
              if (v55 < 0x61 || v55 >= v52)
              {
                goto LABEL_108;
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

          v57 = v50 * a3;
          if ((v57 & 0xFFFF0000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v57 + (v55 + v56);
          if ((v50 & 0x10000) != 0)
          {
            goto LABEL_127;
          }

          v54 = (v54 + 1);
          --v35;
        }

        while (v35);
        v16 = 0;
        LOWORD(v14) = v50;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v35)
    {
      v36 = v35 - 1;
      if (v36)
      {
        LOWORD(v14) = 0;
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        for (k = &v58 + 1; ; ++k)
        {
          v16 = v36 != 0;
          if (!v36)
          {
            break;
          }

          v41 = *k;
          if (v41 < 0x30 || v41 >= v37)
          {
            if (v41 < 0x41 || v41 >= v38)
            {
              if (v41 < 0x61 || v41 >= v39)
              {
                goto LABEL_107;
              }

              v42 = -87;
            }

            else
            {
              v42 = -55;
            }
          }

          else
          {
            v42 = -48;
          }

          if (((v14 * a3) & 0xFFFF0000) != 0)
          {
            goto LABEL_107;
          }

          v14 = (v14 * a3) - (v41 + v42);
          if ((v14 & 0xFFFF0000) != 0)
          {
            goto LABEL_107;
          }

          --v36;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v35)
  {
    v43 = v35 - 1;
    if (v43)
    {
      LOWORD(v14) = 0;
      v44 = a3 + 48;
      v45 = a3 + 55;
      v46 = a3 + 87;
      if (a3 > 10)
      {
        v44 = 58;
      }

      else
      {
        v46 = 97;
        v45 = 65;
      }

      for (m = &v58 + 1; ; ++m)
      {
        v16 = v43 != 0;
        if (!v43)
        {
          break;
        }

        v48 = *m;
        if (v48 < 0x30 || v48 >= v44)
        {
          if (v48 < 0x41 || v48 >= v45)
          {
            if (v48 < 0x61 || v48 >= v46)
            {
LABEL_107:
              LOWORD(v14) = 0;
              goto LABEL_108;
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

        if (((v14 * a3) & 0xFFFF0000) != 0)
        {
          goto LABEL_107;
        }

        v14 = (v14 * a3) + (v48 + v49);
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_107;
        }

        --v43;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10014F278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v40 = v39;

    v7 = v40;
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
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            for (i = result + 1; ; ++i)
            {
              v16 = v21 != 0;
              if (!v21)
              {
                break;
              }

              v26 = *i;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_107;
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

              v28 = v14 * a3;
              if ((v28 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_107;
              }

              v29 = v26 + v27;
              v14 = v28 + v29;
              if (__CFADD__(v28, v29))
              {
                goto LABEL_107;
              }

              --v21;
            }

            goto LABEL_108;
          }

LABEL_65:
          v14 = 0;
          v16 = 0;
LABEL_108:

          LOBYTE(v69) = v16;
          return (v14 | (v16 << 32));
        }

LABEL_127:
        v14 = 0;
        v16 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
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

        v16 = 1;
        do
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v14 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_108;
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

          v36 = v30 * a3;
          if ((v36 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v37 = v34 + v35;
          v38 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v38)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v16 = 0;
        v14 = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
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
          for (j = result + 1; ; ++j)
          {
            v16 = v10 != 0;
            if (!v10)
            {
              break;
            }

            v17 = *j;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_107;
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

            v19 = v14 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_107;
            }

            v20 = v17 + v18;
            v14 = v19 - v20;
            if (v19 < v20)
            {
              goto LABEL_107;
            }

            --v10;
          }

          goto LABEL_108;
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v60 = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v69;
        v16 = 1;
        do
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v63)
          {
            if (v65 < 0x41 || v65 >= v61)
            {
              v14 = 0;
              if (v65 < 0x61 || v65 >= v62)
              {
                goto LABEL_108;
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

          v67 = v60 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v68 = v65 + v66;
          v38 = __CFADD__(v67, v68);
          v60 = v67 + v68;
          if (v38)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v16 = 0;
        v14 = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v14 = 0;
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

        for (k = &v69 + 1; ; ++k)
        {
          v16 = v42 != 0;
          if (!v42)
          {
            break;
          }

          v47 = *k;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_107;
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

          v49 = v14 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_107;
          }

          v50 = v47 + v48;
          v14 = v49 - v50;
          if (v49 < v50)
          {
            goto LABEL_107;
          }

          --v42;
        }

        goto LABEL_108;
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v14 = 0;
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

      for (m = &v69 + 1; ; ++m)
      {
        v16 = v51 != 0;
        if (!v51)
        {
          break;
        }

        v56 = *m;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
LABEL_107:
              v14 = 0;
              goto LABEL_108;
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

        v58 = v14 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_107;
        }

        v59 = v56 + v57;
        v14 = v58 + v59;
        if (__CFADD__(v58, v59))
        {
          goto LABEL_107;
        }

        --v51;
      }

      goto LABEL_108;
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_10014F7EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v65[0] = a1;
  v65[1] = a2;

  v5 = String.init<A>(_:)();
  if ((v4 & 0x1000000000000000) != 0)
  {
    v35 = sub_100005854();
    v5 = sub_100107FD4(v35, v36);
    v38 = v37;

    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      sub_100005854();
      _StringObject.sharedUTF8.getter();
    }

    sub_100013628();
    if (v21)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          sub_100006490();
          if (v15)
          {
            sub_10000FEC4();
            while (v16)
            {
              sub_10000EC80();
              if ((!v14 || v20 >= v19) && (v20 < 0x41 || v20 >= v18) && (v20 < 0x61 || v20 >= v17))
              {
                break;
              }

              sub_10000FF58();
              if (!v21)
              {
                break;
              }

              sub_10002DF68();
              if (v14)
              {
                break;
              }

              sub_10000E278();
            }
          }
        }

        goto LABEL_97;
      }

      goto LABEL_124;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        sub_100006490();
        if (v22 ^ v23 | v21)
        {
          v27 = v30;
        }

        if (v22 ^ v23 | v21)
        {
          v28 = 65;
        }

        if (!(v22 ^ v23 | v21))
        {
          v29 = 58;
        }

        while (1)
        {
          v31 = *v24;
          if (v31 < 0x30 || v31 >= v29)
          {
            if (v31 < 0x41 || v31 >= v28)
            {
              if (v31 < 0x61 || v31 >= v27)
              {
                goto LABEL_97;
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

          if (is_mul_ok(v26, a3))
          {
            v33 = v26 * a3;
            v34 = v31 + v32;
            v14 = __CFADD__(v33, v34);
            v26 = v33 + v34;
            if (!v14)
            {
              ++v24;
              if (--v25)
              {
                continue;
              }
            }
          }

          goto LABEL_97;
        }
      }

      goto LABEL_97;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        sub_100006490();
        if (v8)
        {
          sub_10000FEC4();
          while (v9)
          {
            sub_10000EC80();
            if ((!v14 || v13 >= v12) && (v13 < 0x41 || v13 >= v11) && (v13 < 0x61 || v13 >= v10))
            {
              break;
            }

            sub_10000FF58();
            if (!v21)
            {
              break;
            }

            sub_10014FD88();
            if (!v14)
            {
              break;
            }

            sub_10000E278();
          }
        }
      }

LABEL_97:

      return;
    }

    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  sub_100023FB4();
  if (!v21)
  {
    if (v40 != 45)
    {
      if (v39)
      {
        sub_100012688();
        if (v52 ^ v53 | v51)
        {
          v56 = v59;
        }

        if (v52 ^ v53 | v51)
        {
          v57 = 65;
        }

        if (!(v52 ^ v53 | v51))
        {
          v58 = 58;
        }

        v60 = v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v58)
          {
            if (v61 < 0x41 || v61 >= v57)
            {
              if (v61 < 0x61 || v61 >= v56)
              {
                goto LABEL_97;
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

          if (is_mul_ok(v55, a3))
          {
            v63 = v55 * a3;
            v64 = v61 + v62;
            v14 = __CFADD__(v63, v64);
            v55 = v63 + v64;
            if (!v14)
            {
              ++v60;
              if (--v54)
              {
                continue;
              }
            }
          }

          goto LABEL_97;
        }
      }

      goto LABEL_97;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        sub_100006490();
        sub_100014CBC();
        while (v41)
        {
          sub_10000EC80();
          if ((!v14 || v45 >= v44) && (v45 < 0x41 || v45 >= v43) && (v45 < 0x61 || v45 >= v42))
          {
            break;
          }

          sub_10000FF58();
          if (!v21)
          {
            break;
          }

          sub_10014FD88();
          if (!v14)
          {
            break;
          }

          sub_10000E278();
        }
      }

      goto LABEL_97;
    }

    goto LABEL_123;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      sub_100006490();
      sub_100014CBC();
      while (v46)
      {
        sub_10000EC80();
        if ((!v14 || v50 >= v49) && (v50 < 0x41 || v50 >= v48) && (v50 < 0x61 || v50 >= v47))
        {
          break;
        }

        sub_10000FF58();
        if (!v21)
        {
          break;
        }

        sub_10002DF68();
        if (v14)
        {
          break;
        }

        sub_10000E278();
      }
    }

    goto LABEL_97;
  }

LABEL_125:
  __break(1u);
}

uint64_t sub_10014FCA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    sub_100008204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014FD3C()
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t sub_10014FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
}

uint64_t sub_10014FDC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_10014FE14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t SQLiteBaseFunction.name.getter()
{
  sub_100004384();
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SQLiteBaseFunction.__allocating_init()()
{
  v0 = swift_allocObject();
  SQLiteBaseFunction.init()();
  return v0;
}

uint64_t SQLiteBaseFunction.init()()
{
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t SQLiteBaseFunction.register(_:database:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    swift_beginAccess();
    v3[3] = v6;
    v3[4] = a2;

    sub_1000037B0();
    v8 = (*(v7 + 152))();
    sub_1000037B0();
    v10 = (*(v9 + 160))();
    v11 = String.utf8CString.getter();

    function_v2 = sqlite3_create_function_v2(v4, (v11 + 32), v8, v10, v3, sub_1001502E0, 0, 0, sub_1001503F0);

    if (function_v2)
    {
      _StringGuts.grow(_:)(31);

      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 0xD00000000000001DLL;
      v14._object = 0x80000001001B32B0;
      SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v14);

      sub_10011DC44();
      v15 = swift_allocError();
      return sub_100003E8C(v15, v16);
    }
  }

  return result;
}

void sub_100150124(sqlite3_context *a1)
{
  if (a1)
  {
    if (sqlite3_user_data(a1))
    {

      v3 = __chkstk_darwin(v2);
      (*(*v4 + 176))(sub_100150A64, v3);
    }

    else
    {

      sqlite3_result_error(a1, "Cannot bind to function instance.", -1);
    }
  }
}

void *sub_10015025C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = Array<A>.init(_:argc:)(a3, a4);
  if (!v4)
  {
    (*(*a1 + 168))(a2, result);
  }

  return result;
}

void sub_1001502E4(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    if (qword_10021EA70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000964C(v1, qword_100232DE0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Missing function object", v3, 2u);
    }
  }
}

uint64_t SQLiteBaseFunction.unregister(database:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    sub_100004384();
    result = swift_beginAccess();
    if (*(v1 + 32))
    {
      sub_1000037B0();
      v4 = *(v3 + 152);

      v6 = v4(v5);
      sub_1000037B0();
      v8 = (*(v7 + 160))();
      v9 = String.utf8CString.getter();

      function = sqlite3_create_function(v2, (v9 + 32), v6, v8, 0, j___sSo29_CPStartNetworkSearchFeedbackC7parsecdE12redactUnusedyyF, 0, 0);

      if (function)
      {
        _StringGuts.grow(_:)(34);

        v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v11);

        v12._countAndFlagsBits = 0xD000000000000020;
        v12._object = 0x80000001001B32D0;
        SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v12);

        sub_10011DC44();
        v13 = swift_allocError();
        return sub_100003E8C(v13, v14);
      }
    }
  }

  return result;
}

uint64_t SQLiteBaseFunction.deinit()
{
  v1 = v0;
  sub_100004384();
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = qword_10021EA70;

    if (v4 != -1)
    {
      sub_10000466C(&qword_10021EA70);
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232DE0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = sub_100009684(v3, v2, &v16);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying %s function", v8, 0xCu);
    sub_100007378(v9);
    sub_1000036D4(v9);
    v11 = v8;
    goto LABEL_10;
  }

  if (qword_10021EA70 != -1)
  {
    sub_10000466C(&qword_10021EA70);
  }

  v12 = type metadata accessor for Logger();
  sub_10000964C(v12, qword_100232DE0);
  v6 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, v13, "Destroying unregistered function", v14, 2u);
    v11 = v14;
LABEL_10:
    sub_1000036D4(v11);
  }

LABEL_12:

  swift_weakDestroy();

  return v1;
}

uint64_t SQLiteBaseFunction.__deallocating_deinit()
{
  SQLiteBaseFunction.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

Swift::Void __swiftcall SQLiteBaseFunction.receivedParameter(_:index:)(Swift::OpaquePointer _, Swift::Int index)
{
  v3 = v2;
  if (qword_10021EA70 != -1)
  {
    sub_10000466C(&qword_10021EA70);
  }

  v5 = type metadata accessor for Logger();
  sub_10000964C(v5, qword_100232DE0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    sub_100004384();
    swift_beginAccess();
    if (*(v3 + 32))
    {
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
    }

    else
    {
      v10 = 0xE90000000000003ELL;
      v9 = 0x6E776F6E6B6E753CLL;
    }

    v11 = sub_100009684(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = index;
    *(v7 + 22) = 2080;
    v12 = String.init<A>(describing:)();
    v14 = sub_100009684(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Function %s received %ld parameter: %s", v7, 0x20u);
    swift_arrayDestroy();
    sub_1000036D4(v8);
    sub_1000036D4(v7);
  }

  else
  {
  }
}

uint64_t sub_100150A88(uint64_t a1, uint64_t a2, unint64_t a3, int a4, sqlite3_context *a5)
{
  if (String.count.getter())
  {

    v7._countAndFlagsBits = 8238;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
  }

  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = sub_100006B0C();
  String.append(_:)(v9);

  v10 = String.utf8CString.getter();

  sqlite3_result_error(a5, (v10 + 32), a4);
}

uint64_t sub_100150BD0()
{
  result = sqlite3_threadsafe();
  if (result != 2)
  {
    v1 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v1);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 1;
    *(v2 + 24) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t static SQLiteDatabase.openInMemoryConnection()()
{
  sub_100150BD0();
  if (!v0)
  {
    v21 = 0;
    v2 = sqlite3_open(":memory:", &v21);
    if (v2)
    {
      LODWORD(v1) = v2;
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100006674(v3, qword_100232DE0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v4, v5, "Error %d occurred while opening in-memory db connection", v6, 8u);
        sub_1000037A4();
      }

      v1 = v1;
      v7 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v7);
      *v8 = v1;
      *(v8 + 8) = 0xD000000000000026;
      *(v8 + 16) = 0x80000001001B3390;
      *(v8 + 24) = 0;
LABEL_8:
      swift_willThrow();
      return v1;
    }

    v1 = v21;
    if (!v21)
    {
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006674(v15, qword_100232DE0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v1 = swift_slowAlloc();
        *v1 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to open in-memory db connection", v1, 2u);
        sub_1000037A4();
      }

      v18 = sub_10011DC44();
      v19 = sub_100004248(&type metadata for SQLiteError, v18);
      *v20 = 0xD000000000000026;
      v20[1] = 0x80000001001B3390;
      sub_10000E020(v19, v20);
      goto LABEL_8;
    }

    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006674(v10, qword_100232DE0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (sub_100007670(v12))
    {
      *swift_slowAlloc() = 0;
      sub_10000703C(&_mh_execute_header, v13, v14, "In-memory db connection opened");
      sub_1000037A4();
    }
  }

  return v1;
}

sqlite3 *static SQLiteDatabase.openConnection(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v16 = &v57 - v15;
  sub_100150BD0();
  if (!v3)
  {
    v60 = v8;
    v61 = v7;
    if (a3)
    {
      v17 = 3145728;
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = 65537;
    }

    else
    {
      v18 = 65542;
    }

    ppDb = 0;
    URL.path.getter();
    v19 = String.utf8CString.getter();

    a2 = sqlite3_open_v2((v19 + 32), &ppDb, v18 | v17, 0);

    if (a2)
    {
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000964C(v20, qword_100232DE0);
      v22 = v60;
      v21 = v61;
      (*(v60 + 16))(v10, a1, v61);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        sub_1000083D0();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v25 = 67109378;
        *(v25 + 4) = a2;
        *(v25 + 8) = 2080;
        v27 = URL.path.getter();
        v28 = v22;
        v30 = v29;
        (*(v28 + 8))(v10, v21);
        v31 = sub_100009684(v27, v30, &v62);

        *(v25 + 10) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Error %d occurred while opening db connection: %s", v25, 0x12u);
        sub_100007378(v26);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {

        (*(v22 + 8))(v10, v21);
      }

      if (ppDb)
      {
        sub_1001515A4(ppDb);
      }

      v41 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v41);
      *v42 = a2;
      *(v42 + 8) = 0xD00000000000001CLL;
      *(v42 + 16) = 0x80000001001B33C0;
      *(v42 + 24) = 0;
LABEL_22:
      swift_willThrow();
      return a2;
    }

    a2 = ppDb;
    if (!ppDb)
    {
      v45 = v60;
      v44 = v61;
      if (qword_10021EA70 != -1)
      {
        sub_1000064A8();
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000964C(v46, qword_100232DE0);
      (*(v45 + 16))(v13, a1, v44);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        sub_10000F554();
        a2 = swift_slowAlloc();
        sub_1000083D0();
        v49 = swift_slowAlloc();
        v62 = v49;
        *a2 = 136315138;
        v50 = URL.path.getter();
        v52 = v51;
        (*(v45 + 8))(v13, v44);
        v53 = sub_100009684(v50, v52, &v62);

        *(a2 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Failed to open db connection with no error: %s", a2, 0xCu);
        sub_100007378(v49);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {

        (*(v45 + 8))(v13, v44);
      }

      v54 = sub_10011DC44();
      v55 = sub_100004248(&type metadata for SQLiteError, v54);
      *v56 = 0xD00000000000002ALL;
      v56[1] = 0x80000001001B33E0;
      sub_10000E020(v55, v56);
      goto LABEL_22;
    }

    v33 = v60;
    v32 = v61;
    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000964C(v34, qword_100232DE0);
    (*(v33 + 16))(v16, a1, v32);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      sub_10000F554();
      v37 = swift_slowAlloc();
      sub_1000083D0();
      v59 = swift_slowAlloc();
      v62 = v59;
      *v37 = 136315138;
      v58 = URL.path.getter();
      v39 = v38;
      (*(v33 + 8))(v16, v32);
      v40 = sub_100009684(v58, v39, &v62);

      *(v37 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "DB connection opened %s", v37, 0xCu);
      sub_100007378(v59);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      (*(v33 + 8))(v16, v32);
    }
  }

  return a2;
}

void sub_1001515A4(sqlite3 *a1)
{
  v1 = sqlite3_close_v2(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_10021EA70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232DE0);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Close db connection failed with code %{public}d", v5, 8u);
    }
  }
}

uint64_t SQLiteDatabase.__allocating_init()()
{
  sub_1000087DC();
  v0 = swift_allocObject();
  SQLiteDatabase.init()();
  return v0;
}

uint64_t SQLiteDatabase.init()()
{
  v2 = v0;
  *(v0 + 16) = 0;
  v3 = static SQLiteDatabase.openInMemoryConnection()();
  if (v1)
  {
  }

  else
  {
    *(v0 + 16) = v3;
    SQLiteDatabase.registerMathFunctions()(v3, v4, v5, v6, v7);

    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006674(v8, qword_100232DE0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (sub_100007670(v10))
    {
      *swift_slowAlloc() = 0;
      sub_10000703C(&_mh_execute_header, v11, v12, "In-memory db connection opened");
      sub_1000037A4();
    }
  }

  return v2;
}

uint64_t SQLiteDatabase.__allocating_init(_:readOnly:requiresAuthentication:)(uint64_t a1, sqlite3 *a2, uint64_t a3)
{
  v3 = a3;
  sub_1000087DC();
  v6 = swift_allocObject();
  SQLiteDatabase.init(_:readOnly:requiresAuthentication:)(a1, a2, v3);
  return v6;
}

uint64_t SQLiteDatabase.init(_:readOnly:requiresAuthentication:)(uint64_t a1, sqlite3 *a2, char a3)
{
  *(v3 + 16) = 0;
  v6 = static SQLiteDatabase.openConnection(_:readOnly:requiresAuthentication:)(a1, a2, a3);
  if (!v4)
  {
    *(v3 + 16) = v6;
    SQLiteDatabase.registerMathFunctions()(v6, v7, v8, v9, v10);
  }

  type metadata accessor for URL();
  sub_10000374C();
  (*(v11 + 8))(a1);
  return v3;
}

uint64_t SQLiteDatabase.__allocating_init(connection:)(uint64_t a1)
{
  sub_1000087DC();
  v2 = swift_allocObject();
  SQLiteDatabase.init(connection:)(a1);
  return v2;
}

uint64_t SQLiteDatabase.init(connection:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006674(v3, qword_100232DE0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      sub_10000F554();
      v6 = swift_slowAlloc();
      sub_1000083D0();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      type metadata accessor for SQLiteDatabase();

      v8 = String.init<A>(describing:)();
      v10 = sub_100009684(v8, v9, &v21);

      *(v6 + 4) = v10;
      sub_100007C74();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
      sub_100007378(v7);
      sub_1000037A4();

      sub_1000037A4();
    }

    v17 = sub_10011DC44();
    v18 = sub_100004248(&type metadata for SQLiteError, v17);
    *v19 = 0xD00000000000002BLL;
    v19[1] = 0x80000001001B3410;
    sub_10000E020(v18, v19);
    swift_willThrow();
  }

  return v2;
}

uint64_t SQLiteDatabase.__deallocating_deinit()
{
  SQLiteDatabase.close()();
  v0 = sub_1000087DC();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t SQLiteDatabase.detachConnection()()
{
  result = *(v0 + 16);
  *(v0 + 16) = 0;
  return result;
}

Swift::Void __swiftcall SQLiteDatabase.close()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_1001515A4(v1);
    *(v0 + 16) = 0;
  }
}

uint64_t SQLiteDatabase.statement(with:verboseLog:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 16);
  if (v7)
  {
    ppStmt = 0;
    v11 = String.utf8CString.getter();
    v12 = sqlite3_prepare_v2(v7, (v11 + 32), -1, &ppStmt, 0);

    v13 = ppStmt;
    if (ppStmt && !v12)
    {
      type metadata accessor for SQLiteStatement.Context();
      swift_allocObject();
      *a4 = sub_100154F10(v5, v13);
      *(a4 + 8) = a1;
      *(a4 + 16) = a2;
      *(a4 + 24) = xmmword_1001A3DF0;
      *(a4 + 40) = a3 & 1;
    }

    _StringGuts.grow(_:)(46);

    sub_1000066DC();
    v25 = v17;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 8236;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD000000000000028;
    v21._object = v25;
    v22 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v21);

    v23 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v23);
    *v24 = v12;
    *(v24 + 8) = v22;
    *(v24 + 24) = 0;
  }

  else
  {
    v15 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v15);
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 0;
    *(v16 + 24) = 4;
  }

  return swift_willThrow();
}

uint64_t SQLiteDatabase.transaction(_:)(void (*a1)(uint64_t))
{
  result = SQLiteDatabase.statement(with:verboseLog:)(0xD000000000000012, 0x80000001001B3470, 0, &v8);
  if (!v1)
  {
    SQLiteStatement.execute()();
    if (v4)
    {

      v15 = v9;
      v5 = &v15;
    }

    else
    {

      v14 = v9;
      v6 = sub_100062E58(&v14);
      a1(v6);
      SQLiteDatabase.statement(with:verboseLog:)(0x3B54494D4D4F43, 0xE700000000000000, 0, &v10);
      SQLiteStatement.execute()();

      if (v7)
      {
        v13 = v11;
        v5 = &v13;
      }

      else
      {
        v12 = v11;
        v5 = &v12;
      }
    }

    return sub_100062E58(v5);
  }

  return result;
}

Swift::String __swiftcall SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = a1;

    if (sqlite3_errmsg(v2))
    {
      v3 = String.init(cString:)();
      v5 = v4;
      v6 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v6 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v6)
      {

        v5 = 0x80000001001B34D0;
        v3 = 0xD000000000000019;
      }

      v27[0] = 8236;
      v27[1] = 0xE200000000000000;
      v7 = v5;
      String.append(_:)(*&v3);

      v8._countAndFlagsBits = 8236;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
    }

    if (qword_10021EA70 != -1)
    {
      sub_1000064A8();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232DE0);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      sub_10000F554();
      v14 = swift_slowAlloc();
      sub_1000083D0();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100009684(countAndFlagsBits, object, v27);
      sub_100007C74();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
      sub_100007378(v15);
      sub_1000037A4();

      sub_1000037A4();
    }
  }

  else
  {
    sub_1000066DC();
    v28._object = v22;
    String.append(_:)(v23);
    countAndFlagsBits = 0xD000000000000014;
    object = v28._object;
  }

  v24 = countAndFlagsBits;
  v25 = object;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t SQLiteDatabase.registerMathFunctions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (sub_1000056BC(*(v5 + 16), "power", 2, a4, a5, sub_10015288C))
  {
    sub_100005AF0();
    _StringGuts.grow(_:)(35);

    sub_1000066DC();
    v23 = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000021;
    v12._object = v23;
    v13 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v12);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;

    v6 = v6;
  }

  else
  {
    if (!sub_1000056BC(*(v5 + 16), "exp", 1, v8, v9, sub_1001529A8))
    {

      return v7;
    }

    sub_100005AF0();
    _StringGuts.grow(_:)(33);

    sub_1000066DC();
    v24 = v16;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0xD00000000000001FLL;
    v18._object = v24;
    v19 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v18);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;

    v6 = 0;
  }

  v20 = sub_10011DC44();
  sub_100004248(&type metadata for SQLiteError, v20);
  *v21 = v6;
  *(v21 + 8) = countAndFlagsBits;
  *(v21 + 16) = object;
  *(v21 + 24) = 0;
  swift_willThrow();
  return v7;
}

void sub_10015271C(sqlite3_context *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return;
  }

  v4 = Array<A>.init(_:argc:)(a3, a2);
  v5 = v4;
  if (!v4[2])
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4[4];
  if (sqlite3_value_type(v6) != 2 && sqlite3_value_type(v6) != 1)
  {
    goto LABEL_11;
  }

  if (v5[2] < 2uLL)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v7 = v5[5];
  if (sqlite3_value_type(v7) != 2 && sqlite3_value_type(v7) != 1)
  {
LABEL_11:

    v11 = 0.0;
    goto LABEL_12;
  }

  v8 = sqlite3_value_double(v5[4]);
  v9 = v5[5];

  v10 = sqlite3_value_double(v9);
  v11 = pow(v8, v10);
LABEL_12:

  sqlite3_result_double(a1, v11);
}

void sub_100152890(sqlite3_context *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = Array<A>.init(_:argc:)(a3, a2);
    v5 = v4;
    if (v4[2])
    {
      v6 = v4[4];
      if (sqlite3_value_type(v6) == 2 || sqlite3_value_type(v6) == 1)
      {
        v7 = v5[4];

        v8 = sqlite3_value_double(v7);
        v9 = exp(v8);
      }

      else
      {

        v9 = 0.0;
      }

      sqlite3_result_double(a1, v9);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1001529D8()
{
  result = qword_10021EF48;
  if (!qword_10021EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EF48);
  }

  return result;
}

uint64_t sub_100152A48(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  sub_100003A6C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100004370();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003A6C();
  v48 = v14;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  __chkstk_darwin(v18);
  sub_100004370();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  sub_100003A6C();
  v36 = v21;
  v37 = v20;
  __chkstk_darwin(v20);
  v23 = &v33 - v22;
  v24 = dispatch thunk of Collection.count.getter();
  if (!v24)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v47 = v24;
  v51 = ContiguousArray.init()();
  v38 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v47);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = dispatch thunk of Collection.subscript.read();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = sub_100003EB0();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = sub_100003EB0();
      v30(v29);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SQLiteStatement.nextRowValue<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = SQLiteStatement.nextRow()(a1);
  if (!v3)
  {
    if (result)
    {
      (*(a2 + 8))(result, a1, a2);
      v8 = a3;
      v9 = 0;
    }

    else
    {
      v8 = a3;
      v9 = 1;
    }

    return sub_1000051C0(v8, v9, 1, a1);
  }

  return result;
}

uint64_t SQLiteStatement.singleRowIfAny<A>()@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  return sub_100153044(a1, x8_0);
}

{
  return sub_100153044(a1, x8_0);
}

uint64_t sub_100152EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *(a4 + 8);

  result = v11(v12, a3, a4);
  if (!v4)
  {
    sub_1000051C0(v10, 0, 1, a3);
    return (*(v8 + 40))(v15, v10, v7);
  }

  return result;
}

uint64_t sub_100153044@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_1000051C0(a4, 1, 1, a1);

  SQLiteStatement.forEach(_:)();

  if (!v4)
  {
  }

  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 8))(a4, v6);
}

uint64_t sub_10015315C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v11 = *(a4 + 8);

  result = v11(v12, a3, a4);
  if (!v4)
  {
    return (*(v8 + 40))(v15, v10, v7);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1001532D4(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

{
  return sub_1001532D4(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

uint64_t sub_1001532D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, double)@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v8 = type metadata accessor for Optional();
  sub_100003A6C();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v23 - v16;
  result = a3(a1, a2, v15);
  if (!v4)
  {
    v19 = v24;
    (*(v10 + 16))(v13, v17, v8);
    v20 = sub_100008D0C(v13, 1, a1);
    v21 = *(v10 + 8);
    if (v20 == 1)
    {
      v21(v13, v8);
      sub_10011DC44();
      swift_allocError();
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *v22 = 5;
      *(v22 + 24) = 4;
      swift_willThrow();
      return (v21)(v17, v8);
    }

    else
    {
      v21(v17, v8);
      return (*(*(a1 - 8) + 32))(v19, v13, a1);
    }
  }

  return result;
}

uint64_t sub_1001534FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __chkstk_darwin(a1);
  v9 = *(v8 + 8);

  result = v9(a2, a3, a4);
  if (!v4)
  {
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

uint64_t sub_100153604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  SQLiteStatement.reduce<A>(into:handleRow:)();
  if (v3)
  {
  }

  return v5;
}

uint64_t sub_1001536A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v6 = type metadata accessor for Optional();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v22 = *(a3 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  v15 = *(a4 + 8);

  v17 = v25;
  result = v15(v16, a3, a4);
  if (!v17)
  {
    v19 = v22;
    v20 = v23;
    if (sub_100008D0C(v8, 1, a3) == 1)
    {
      return (*(v20 + 8))(v8, v6);
    }

    else
    {
      (*(v19 + 32))(v14, v8, a3);
      (*(v19 + 16))(v11, v14, a3);
      type metadata accessor for Array();
      Array.append(_:)();
      return (*(v19 + 8))(v14, a3);
    }
  }

  return result;
}

uint64_t Array<A>.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = sub_100154FFC();
  if (v3)
  {

    return v7;
  }

  result = sqlite3_column_count(v8);
  if ((result & 0x80000000) == 0)
  {
    v14[1] = 0;
    v14[2] = result;
    __chkstk_darwin(result);
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a1;
    v10 = sub_100046184(&qword_10021F068, &qword_1001A3EF8);
    v11 = sub_100046184(&qword_100216900, &unk_10019AE20);
    v12 = sub_100153B88();
    v7 = sub_100152A48(sub_100153B64, v13, v10, a2, v11, v12, &protocol self-conformance witness table for Error, v14);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100153A30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *a1;
  v11 = *(a4 + 8);

  result = v11(a2, v10, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_100153AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(with:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_100153B88()
{
  result = qword_10021F070;
  if (!qword_10021F070)
  {
    sub_1000461CC(&qword_10021F068, &qword_1001A3EF8);
    sub_100153C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F070);
  }

  return result;
}

unint64_t sub_100153C14()
{
  result = qword_10021F078;
  if (!qword_10021F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F078);
  }

  return result;
}

void *Array<A>.init(_:argc:)(void *result, int a2)
{
  if (result)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v3 = result;
      v4 = a2;
      if (a2)
      {
        result = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v2 = result;
        result[2] = v4;
      }

      else
      {
        v2 = _swiftEmptyArrayStorage;
      }

      for (i = 0; ; ++i)
      {
        if (v4 == i)
        {
          v2[2] = v4;
          return v2;
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = *(v3 + 8 * i);
        if (!v9)
        {
          v10 = sub_10011DC44();
          v11 = sub_100004248(&type metadata for SQLiteError, v10);
          sub_1000046A0(xmmword_1001A3F40, v11, v12);
          v2[2] = 0;

          return v2;
        }

        v2[i + 4] = v9;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v5 = sub_10011DC44();
    v6 = sub_100004248(&type metadata for SQLiteError, v5);
    sub_1000046A0(xmmword_1001A3F50, v6, v7);
    return v2;
  }

  return result;
}

uint64_t SQLiteArgument.init(_:)(uint64_t result)
{
  if (!result)
  {
    v1 = sub_10011DC44();
    v2 = sub_100004248(&type metadata for SQLiteError, v1);
    return sub_1000046A0(xmmword_1001A3F40, v2, v3);
  }

  return result;
}

Swift::Int8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt8()()
{
  v1 = sqlite3_value_int(v0);
  if (v1 >= -128)
  {
    if (v1 > 127)
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    LOBYTE(v1) = sub_1000064BC(v3, v4);
  }

  return v1;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt8()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (v1 > 0xFF)
  {
    __break(1u);
LABEL_4:
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    LOBYTE(v1) = sub_1000064BC(v3, v4);
  }

  return v1;
}

Swift::Int16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt16()()
{
  v1 = sqlite3_value_int(v0);
  if (v1 >= -32768)
  {
    if (v1 >= 0x8000)
    {
      __break(1u);
    }
  }

  else
  {
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    LOWORD(v1) = sub_1000064BC(v3, v4);
  }

  return v1;
}

Swift::UInt16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt16()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (HIWORD(v1))
  {
    __break(1u);
LABEL_4:
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    LOWORD(v1) = sub_1000064BC(v3, v4);
  }

  return v1;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt32()()
{
  v1 = sqlite3_value_int(v0);
  if ((v1 & 0x80000000) != 0)
  {
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    sub_1000064BC(v3, v4);
  }

  return v1;
}

sqlite3_int64 sub_1001540A0(sqlite3_value *a1)
{
  v1 = sqlite3_value_int64(a1);
  if (v1 < 0)
  {
    v2 = sub_10011DC44();
    v3 = sub_100004248(&type metadata for SQLiteError, v2);
    sub_1000064BC(v3, v4);
  }

  return v1;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getFloat()()
{
  v1 = sqlite3_value_double(v0);
  if (fabs(v1) > -3.40282347e38)
  {
    return v1;
  }

  v3 = sub_10011DC44();
  v4 = sub_100004248(&type metadata for SQLiteError, v3);
  sub_1000064BC(v4, v5);
  return result;
}

uint64_t *SQLiteArgument.withUnsafeBytes<A>(_:)(uint64_t (*a1)(const void *, uint64_t), uint64_t a2, sqlite3_value *a3)
{
  v5 = sqlite3_value_blob(a3);
  if (v5)
  {
    v6 = v5;
    v7 = sqlite3_value_bytes(a3);
    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return a1(v5, v7);
}

uint64_t SQLiteArgument.getData()(sqlite3_value *a1)
{
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
    return Data.init(bytes:count:)();
  }

  else
  {
    sqlite3_value_type(a1);
    return 0;
  }
}

uint64_t SQLiteArgument.getUnsafeData()(sqlite3_value *a1)
{
  v2 = type metadata accessor for Data.Deallocator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
    (*(v3 + 104))(v5, enum case for Data.Deallocator.none(_:), v2);
    return Data.init(bytesNoCopy:count:deallocator:)();
  }

  else
  {
    sqlite3_value_type(a1);
    return 0;
  }
}

uint64_t sub_1001543C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
  if (v3 >> 60 == 15)
  {
    v4 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v4);
    sub_100003EC4(v5, 6);
  }

  return v2;
}

Swift::String_optional __swiftcall SQLiteArgument.getString()()
{
  v1 = sqlite3_value_text(v0);
  if (v1)
  {
    v1 = String.init(cString:)();
  }

  else
  {
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getStringNonNull()()
{
  if (sqlite3_value_text(v0))
  {
    v1 = String.init(cString:)();
  }

  else
  {
    v3 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v3);
    v1 = sub_100003EC4(v4, 6);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SQLiteArgument.getBase64EncodedData()(sqlite3_value *a1)
{
  if (sqlite3_value_type(a1) != 4 && sqlite3_value_type(a1) != 3)
  {
    return 0;
  }

  if (!sqlite3_value_text(a1))
  {
    return 0;
  }

  String.init(cString:)();
  v2 = Data.init(base64Encoded:options:)();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SQLiteArgument(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 8))
    {
      if (*a1)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

SQLiter::SQLiteDataType_optional __swiftcall SQLiteDataType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40201030005uLL >> (8 * rawValue));
  }
}

unint64_t sub_100154628()
{
  result = qword_10021F080;
  if (!qword_10021F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F080);
  }

  return result;
}

SQLiter::SQLiteDataType_optional sub_100154694@<W0>(Swift::Int32 *a1@<X0>, SQLiter::SQLiteDataType_optional *a2@<X8>)
{
  result.value = SQLiteDataType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001546C0@<X0>(_DWORD *a1@<X8>)
{
  result = SQLiteDataType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteDataType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.ensureValidSQLNameCharacters()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v3;
  v11[1] = v2;
  if (qword_10021EA68 != -1)
  {
    swift_once();
  }

  sub_10000964C(v4, qword_100232DC8);
  CharacterSet.inverted.getter();
  sub_10000527C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    sub_10011DC44();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 10;
    *(v10 + 24) = 4;
    swift_willThrow();
  }
}

uint64_t SQLiteStatement.forEach(_:)()
{
  sub_10000E030();
  while (1)
  {
    result = SQLiteStatement.nextRow()(v5);
    if (v1)
    {
      break;
    }

    if (!result)
    {
      if (v3 < v4)
      {
        __break(1u);
      }

      else if (v3 - v4 < *(v0 + 24))
      {
        v7 = sub_10011DC44();
        sub_100004248(&type metadata for SQLiteError, v7);
        return sub_100003EC4(v8, 5);
      }

      return result;
    }

    if (!v4)
    {
      v9 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v9);
      sub_100003EC4(v10, 2);
    }

    v2(result);

    --v4;
  }

  return result;
}

double SQLiteStatement.init(database:statement:sqlString:verboseLog:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for SQLiteStatement.Context();
  v12 = swift_allocObject();
  v12[3] = a2;
  v12[4] = _swiftEmptyDictionarySingleton;
  v12[2] = a1;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  result = 0.0;
  *(a6 + 24) = xmmword_1001A3DF0;
  *(a6 + 40) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteStatement.execute()()
{
  v3 = *(v1 + 32);
  for (i = v3; ; --i)
  {
    v5 = SQLiteStatement.nextRow()(v0);
    if (v2)
    {
      break;
    }

    if (!v5)
    {
      if (v3 < i)
      {
        __break(1u);
      }

      else if (v3 - i < *(v1 + 24))
      {
        v6 = sub_10011DC44();
        sub_100004248(&type metadata for SQLiteError, v6);
        sub_100003EC4(v7, 5);
      }

      return;
    }

    if (!i)
    {
      v8 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v8);
      sub_100003EC4(v9, 2);

      return;
    }

    sub_1001555B4(v5, v1);
  }
}

uint64_t SQLiteStatement.nextRow()(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_100154FFC();
  if (!v2)
  {
    v7 = v5;

    v8 = sqlite3_step(v7);
    if (v8 != 100)
    {
      v9 = v8;
      if (v8 == 101)
      {

        if (v3[5])
        {
          if (qword_10021EA70 != -1)
          {
            sub_10000466C(&qword_10021EA70);
          }

          v10 = type metadata accessor for Logger();
          sub_10000964C(v10, qword_100232DE0);
          v12 = v3[1];
          v11 = v3[2];

          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v21[0] = v16;
            *v15 = 136315138;
            *(v15 + 4) = sub_100009684(v12, v11, v21);
            _os_log_impl(&_mh_execute_header, v13, v14, "SQL statement executed: %s", v15, 0xCu);
            sub_100007378(v16);
          }
        }

        return 0;
      }

      else
      {

        sub_100154F90();
        _StringGuts.grow(_:)(39);

        v21[0] = 0xD000000000000025;
        v21[1] = 0x80000001001B3580;
        String.append(_:)(*(v3 + 1));
        v17._countAndFlagsBits = 0xD000000000000025;
        v17._object = 0x80000001001B3580;
        v18 = SQLiteDatabase.logAndReturnSQLErrorMessage(_:)(v17);

        v4 = v9;
        v19 = sub_10011DC44();
        sub_100004248(&type metadata for SQLiteError, v19);
        *v20 = v9;
        *(v20 + 8) = v18;
        *(v20 + 24) = 0;
        swift_willThrow();
      }
    }
  }

  return v4;
}

uint64_t SQLiteStatement.reduce<A>(into:handleRow:)()
{
  sub_100003EE8();
  v4 = v3;
  (*(v5 + 16))(v1);
  sub_100011BB0();
  result = SQLiteStatement.forEach(_:)();
  if (v2)
  {
    return (*(v4 + 8))(v1, v0);
  }

  return result;
}

void *sub_100154F10(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = &_swiftEmptyDictionarySingleton;
  v2[2] = a1;
  return v2;
}

uint64_t sub_100154F28()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sqlite3_finalize(v1);
  }

  return v0;
}

uint64_t sub_100154F5C()
{
  sub_100154F28();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100154F90()
{
  v1 = *(v0 + 16);
  if (v1 && *(v1 + 16))
  {
  }

  v3 = sub_10011DC44();
  sub_100004248(&type metadata for SQLiteError, v3);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 4;
  *(v4 + 24) = 4;
  return swift_willThrow();
}

uint64_t sub_100154FFC()
{
  v1 = *(v0 + 16);
  if (!v1 || !*(v1 + 16))
  {
    v3 = 4;
LABEL_6:
    v4 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v4);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = v3;
    *(v5 + 24) = 4;
    return swift_willThrow();
  }

  result = *(v0 + 24);
  if (!result)
  {
    v3 = 3;
    goto LABEL_6;
  }

  return result;
}

__n128 SQLiteStatement.bind(_:at:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = a1[3];
  v9 = a1[4];
  sub_100007534(a1, v8);
  (*(v9 + 8))(v5, a2, v8, v9);
  if (!v4)
  {

    sub_100007E54(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    v19 = *(v5 + 16);
    *a3 = *v5;
    *(a3 + 16) = v19;
    result = *(v5 + 25);
    *(a3 + 25) = result;
  }

  return result;
}

void SQLiteStatement.bind(_:withName:)()
{
  sub_10000F6F8();
  v2 = sub_100154FFC();
  if (!v0)
  {
    v3 = v2;
    v4 = String.utf8CString.getter();
    LODWORD(v3) = sqlite3_bind_parameter_index(v3, (v4 + 32));

    if (v3)
    {
      sub_100007534(v1, v1[3]);
      v5 = sub_1000087EC();
      v6(v5);

      sub_100007E54(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
      sub_100008248();
    }

    else
    {
      v15 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v15);
      sub_100003EC4(v16, 9);
    }
  }
}

sqlite3_stmt *SQLiteStatement.bindIfAny(_:withName:)()
{
  sub_10000F6F8();
  v5 = v4;
  v6 = *v0;
  result = sub_100154FFC();
  if (!v1)
  {
    v8 = result;
    v9 = String.utf8CString.getter();
    LODWORD(v8) = sqlite3_bind_parameter_index(v8, (v9 + 32));

    if (v8)
    {
      sub_100007534(v3, v3[3]);
      v10 = sub_1000087EC();
      v11(v10);
    }

    v12 = *(v2 + 8);

    v14 = *(v2 + 40);
    *v5 = v6;
    *(v5 + 8) = v12;
    *(v5 + 16) = v13;
    *(v5 + 24) = *(v2 + 24);
    *(v5 + 40) = v14;
  }

  return result;
}

double SQLiteStatement.bind(_:)(uint64_t a1)
{
  SQLiteStatement.bind(_:)(a1);
  if (!v1)
  {
    *&result = sub_10000AD18(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14).n128_u64[0];
  }

  return result;
}

void SQLiteStatement.bind(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    for (i = 1; ; ++i)
    {
      v6 = v4[3];
      v7 = v4[4];
      sub_100007534(v4, v6);
      (*(v7 + 8))(v1, i, v6, v7);
      if (v2)
      {
        break;
      }

      v4 += 5;
      if (!--v3)
      {

        sub_100007E54(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
        sub_100008248();
        return;
      }
    }
  }

  else
  {
    v16 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v16);
    sub_100003EC4(v17, 7);
  }
}

sqlite3_stmt *SQLiteStatement.reset()@<X0>(_OWORD *a1@<X8>)
{
  result = sub_100154FFC();
  if (!v2)
  {
    v5 = result;
    v6 = sqlite3_reset(result);
    if (v6)
    {
      v7 = v6;
      if (qword_10021EA70 != -1)
      {
        sub_10000466C(&qword_10021EA70);
      }

      v8 = type metadata accessor for Logger();
      sub_10000964C(v8, qword_100232DE0);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to reset a statement with error: %d", v11, 8u);
      }

      v12 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v12);
      *v13 = v7;
      *(v13 + 8) = 0xD000000000000010;
      *(v13 + 16) = 0x80000001001B35B0;
      *(v13 + 24) = 0;
      return swift_willThrow();
    }

    else
    {
      sqlite3_clear_bindings(v5);

      result = sub_100007E54(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
      v22 = v1[1];
      *a1 = *v1;
      a1[1] = v22;
      *(a1 + 25) = *(v1 + 25);
    }
  }

  return result;
}

uint64_t sub_1001555B4(uint64_t a1, uint64_t a2)
{
  if (qword_10021EA70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000964C(v3, qword_100232DE0);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100009684(v4, v5, &v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected result: %s", v8, 0xCu);
    sub_100007378(v9);
  }

  sub_10011DC44();
  swift_allocError();
  *v10 = xmmword_1001A4090;
  *(v10 + 16) = 0x80000001001B3630;
  *(v10 + 24) = 0;
  return swift_willThrow();
}

double SQLiteStatement.executeAndReset()()
{
  SQLiteStatement.execute()();
  if (!v1)
  {
    v2 = SQLiteStatement.reset()(v10);
    *&result = sub_10000AD18(v2, v3, v4, v5, v6, v7, v8, v9, v10[0], v10[1], v11, v12).n128_u64[0];
  }

  return result;
}

uint64_t SQLiteStatement.singleRowIfAny<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1000051C0(a2, 1, 1, a1);

  sub_100011BB0();
  SQLiteStatement.forEach(_:)();

  if (!v2)
  {
  }

  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 8))(a2, v4);
}

uint64_t sub_1001558C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v16 - v13;
  result = a3(a1, v12);
  if (!v5)
  {
    sub_1000051C0(v14, 0, 1, a5);
    return (*(v11 + 40))(a2, v14, v10);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  result = SQLiteStatement.singleRowIfAny<A>(_:)(a1, &v17 - v9);
  if (!v2)
  {
    v12 = v18;
    (*(v5 + 16))(v7, v10, v4);
    v13 = sub_100008D0C(v7, 1, a1);
    v14 = *(v5 + 8);
    if (v13 == 1)
    {
      v14(v7, v4);
      v15 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v15);
      sub_100003EC4(v16, 5);
      return (v14)(v10, v4);
    }

    else
    {
      v14(v10, v4);
      return (*(*(a1 - 8) + 32))(v12, v7, a1);
    }
  }

  return result;
}

uint64_t SQLiteStatement.iterate(_:)()
{
  v5 = v0;
  sub_10000E030();
  do
  {
    result = SQLiteStatement.nextRow()(result);
    if (v1)
    {
      break;
    }

    if (!result)
    {
      if (v3 < v4)
      {
        __break(1u);
      }

      else if (v3 - v4 < *(v5 + 24))
      {
        v8 = sub_10011DC44();
        sub_100004248(&type metadata for SQLiteError, v8);
        return sub_100003EC4(v9, 5);
      }

      return result;
    }

    if (!v4)
    {
      v10 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v10);
      sub_100003EC4(v11, 2);
    }

    v7 = v2(result);

    --v4;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t SQLiteStatement.reduce<A>(_:handleRow:)()
{
  sub_100003EE8();
  v4 = v3;
  (*(v5 + 16))(v1);
  sub_100011BB0();
  result = SQLiteStatement.forEach(_:)();
  if (v2)
  {
    return (*(v4 + 8))(v1, v0);
  }

  return result;
}

uint64_t sub_100155DC0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v18 - v15;
  (*(v10 + 16))(v12, v14);
  a3(v12, a1);
  result = (*(v10 + 8))(v12, a5);
  if (!v5)
  {
    return (*(v10 + 40))(a2, v16, a5);
  }

  return result;
}

uint64_t sub_100155F58@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = a1();
  if (!v3)
  {
    return sub_1000051C0(a3, 0, 1, a2);
  }

  return result;
}

uint64_t SQLiteStatement.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = static Array._allocateUninitialized(_:)();
  sub_100011BB0();
  SQLiteStatement.forEach(_:)();
  if (v3)
  {
  }

  return v5;
}

uint64_t sub_100156048(uint64_t a1, uint64_t (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a4;
  v8 = type metadata accessor for Optional();
  v22[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v11 = *(a5 - 8);
  __chkstk_darwin(v12);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v22 - v17;
  v19 = v22[3];
  result = a2(a1, v16);
  if (!v19)
  {
    v21 = v22[0];
    if (sub_100008D0C(v10, 1, a5) == 1)
    {
      return (*(v21 + 8))(v10, v8);
    }

    else
    {
      (*(v11 + 32))(v18, v10, a5);
      (*(v11 + 16))(v14, v18, a5);
      type metadata accessor for Array();
      Array.append(_:)();
      return (*(v11 + 8))(v18, a5);
    }
  }

  return result;
}

uint64_t SQLiteStatement.expect(minRows:maxRows:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  v4 = v3[2];
  *a3 = *v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
}

uint64_t SQLiteStatement.dontExpectRows()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v2;
  *(a1 + 40) = 0;
}

uint64_t sub_100156324@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4 = v2[1];
  v3 = v2[2];
  *a1 = *v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
  *(a1 + 40) = 0;
}

uint64_t sub_100156480(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001564C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnType.getDataType()()
{
  v1 = v0;
  result = SQLiter_SQLiteDataType_text;
  switch(v1)
  {
    case 1:
      result = SQLiter_SQLiteDataType_blob;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = SQLiter_SQLiteDataType_integer;
      break;
    case 6:
    case 7:
    case 8:
      result = SQLiter_SQLiteDataType_float;
      break;
    case 10:
      sub_10011DC44();
      swift_allocError();
      *v3 = 0xD00000000000003ELL;
      *(v3 + 8) = 0x80000001001B3250;
      *(v3 + 16) = 0;
      *(v3 + 24) = 3;
      result = swift_willThrow();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001565D4(unsigned __int8 a1, char a2)
{
  v2 = 1415071060;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1415071060;
  switch(v4)
  {
    case 1:
      v5 = 1112493122;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x3233544E49;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x3436544E49;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x3233544E4955;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x3436544E4955;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x54414F4C46;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x454C42554F44;
      break;
    case 8:
      v3 = 0xE800000000000000;
      v5 = 0x454D495445544144;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x4E41454C4F4F42;
      break;
    case 10:
      v3 = 0xE300000000000000;
      v5 = 5852737;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1112493122;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x3233544E49;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x3436544E49;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x3233544E4955;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x3436544E4955;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v2 = 0x54414F4C46;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x454C42554F44;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v2 = 0x454D495445544144;
      break;
    case 9:
      v6 = 0xE700000000000000;
      v2 = 0x4E41454C4F4F42;
      break;
    case 10:
      v6 = 0xE300000000000000;
      v2 = 5852737;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100156838(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1001A41D4[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_10015688C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  SQLiteColumnType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001568F0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100156A50(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1001A41D4[a2]);
  return Hasher._finalize()();
}

Swift::Int sub_100156AA0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Hasher.init(_seed:)();
  SQLiteColumnType.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

ValueMetadata *SQLiteColumnType.defaultNativeType.getter(char a1)
{
  v1 = &type metadata for String;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
      v1 = &type metadata for Int32;
      break;
    case 3:
      v1 = &type metadata for Int64;
      break;
    case 4:
      v1 = &type metadata for UInt32;
      break;
    case 5:
      v1 = &type metadata for UInt64;
      break;
    case 6:
      v1 = &type metadata for Float;
      break;
    case 7:
    case 8:
      v1 = &type metadata for Double;
      break;
    case 9:
      v1 = &type metadata for Bool;
      break;
    case 10:
      v1 = &type metadata for SQLiteUndefined;
      sub_10012F9A8();
      break;
    default:
      return v1;
  }

  return v1;
}

SQLiter::SQLiteColumnType_optional __swiftcall SQLiteColumnType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100200210, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t SQLiteColumnType.rawValue.getter(char a1)
{
  result = 1415071060;
  switch(a1)
  {
    case 1:
      result = 1112493122;
      break;
    case 2:
      result = 0x3233544E49;
      break;
    case 3:
      result = 0x3436544E49;
      break;
    case 4:
      result = 0x3233544E4955;
      break;
    case 5:
      result = 0x3436544E4955;
      break;
    case 6:
      result = 0x54414F4C46;
      break;
    case 7:
      result = 0x454C42554F44;
      break;
    case 8:
      result = 0x454D495445544144;
      break;
    case 9:
      result = 0x4E41454C4F4F42;
      break;
    case 10:
      result = 5852737;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100156D54()
{
  result = qword_10021F190;
  if (!qword_10021F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F190);
  }

  return result;
}

SQLiter::SQLiteColumnType_optional sub_100156DC0@<W0>(Swift::String *a1@<X0>, SQLiter::SQLiteColumnType_optional *a2@<X8>)
{
  result.value = SQLiteColumnType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100156DF0@<X0>(uint64_t *a1@<X8>)
{
  result = SQLiteColumnType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteColumnType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

sqlite3_stmt *String.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return a2;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_text(result, a2))
    {
      a2 = String.init(cString:)();
    }

    else
    {

      return 0;
    }

    return a2;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *Data.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return a2;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v5 = result;
    if (sqlite3_column_blob(result, a2))
    {
      sqlite3_column_bytes(v5, a2);
      a2 = Data.init(bytes:count:)();
    }

    else
    {
      SQLiteRow.type(at:)(a2);

      if (!v6)
      {
        return 0;
      }
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001570EC@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v57 = a1;
  v50 = a5;
  type metadata accessor for Optional();
  sub_100003A6C();
  v46 = v10;
  v47 = v9;
  __chkstk_darwin(v9);
  v48 = &v45 - v11;
  v49 = a3;
  v54 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  sub_100003A6C();
  v52 = v14;
  v53 = v13;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  sub_100003A6C();
  v51 = v17;
  __chkstk_darwin(v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  v24 = *(a4 + 8);

  v26 = AssociatedTypeWitness;
  v24(v25, v57, AssociatedTypeWitness, a4);
  if (v5)
  {
  }

  v28 = v20;
  v30 = v52;
  v29 = v53;
  v31 = v23;
  v32 = v51;
  if (sub_100008D0C(v16, 1, v26) == 1)
  {

    (*(v30 + 8))(v16, v29);
    v33 = 1;
    v34 = v54;
    v35 = v50;
  }

  else
  {
    (*(v32 + 32))(v31, v16, v26);
    v36 = *(v32 + 16);
    v57 = v31;
    v36(v28, v31, v26);
    v37 = v48;
    v34 = v54;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    if (sub_100008D0C(v37, 1, v34) == 1)
    {
      (*(v46 + 8))(v37, v47);
      v55 = 0;
      v56 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      v38._object = 0x80000001001B3110;
      v38._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v38);
      v39._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v39);

      v40._countAndFlagsBits = 0xD000000000000018;
      v40._object = 0x80000001001B3130;
      String.append(_:)(v40);
      v41 = v57;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v42 = v55;
      v43 = v56;
      sub_10011DC44();
      swift_allocError();
      *v44 = v42;
      *(v44 + 8) = v43;
      *(v44 + 16) = 0;
      *(v44 + 24) = 3;
      swift_willThrow();

      return (*(v32 + 8))(v41, v26);
    }

    (*(v32 + 8))(v57, v26);

    v35 = v50;
    (*(*(v34 - 8) + 32))(v50, v37, v34);
    v33 = 0;
  }

  return sub_1000051C0(v35, v33, 1, v34);
}

Swift::Void __swiftcall SQLiteContext.setError(message:code:)(Swift::String message, Swift::Int32 code)
{
  v3 = v2;
  v5 = String.utf8CString.getter();
  sqlite3_result_error(v3, (v5 + 32), code);
}

uint64_t SQLiteContext.setError<A>(_:message:code:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4, sqlite3_context *a5, uint64_t a6)
{
  v12 = *(a6 - 8);
  __chkstk_darwin(a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (String.count.getter())
  {
    v24 = a2;
    v25 = a3;

    v15._countAndFlagsBits = 8238;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    v17 = v24;
    v16 = v25;
  }

  else
  {
    v17 = 0;
    v16 = 0xE000000000000000;
  }

  v24 = 0x203A726F727245;
  v25 = 0xE700000000000000;
  (*(v12 + 16))(v14, a1, a6);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  v19 = v24;
  v20 = v25;
  v24 = v17;
  v25 = v16;

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);

  v22 = String.utf8CString.getter();

  sqlite3_result_error(a5, (v22 + 32), a4);
}

void (__cdecl **SQLiteDestructor.value.getter(void (__cdecl **result)(void *)))(void *)
{
  if (result)
  {
    if (result == 1)
    {
      if (qword_10021EA60 != -1)
      {
        swift_once();
      }

      return qword_100232DC0;
    }

    else if (result == 2)
    {
      return &_sqlite3_free;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteContext.setUInt32(_:)(Swift::UInt32 a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    sub_10011DC44();
    v2 = swift_allocError();
    sub_100003E48(v2, v3);
  }

  else
  {
    sqlite3_result_int(v1, a1);
  }
}

void sub_100157998(sqlite3_int64 a1, sqlite3_context *a2)
{
  if (a1 < 0)
  {
    sub_10011DC44();
    v2 = swift_allocError();
    sub_100003E48(v2, v3);
  }

  else
  {
    sub_100008814(a1, a2);
  }
}

void SQLiteContext.setString(_:destructor:)(uint64_t a1, uint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  if (a2)
  {
    sub_100157B28(a1, a2, a4, a3);
  }

  else
  {

    sqlite3_result_null(a4);
  }
}

void sub_100157A50(const char *a1, sqlite3_context *a2, void (__cdecl **a3)(void *))
{
  v6 = strlen(a1);
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  if (v6 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a3)
  {
    v8 = 0;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (qword_10021EA60 == -1)
    {
LABEL_9:
      v8 = qword_100232DC0;
      goto LABEL_11;
    }

LABEL_14:
    v9 = v7;
    swift_once();
    v7 = v9;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v8 = &_sqlite3_free;
  }

  else
  {
    v8 = a3;
  }

LABEL_11:
  sqlite3_result_text(a2, a1, v7, v8);
}

void sub_100157B28(uint64_t a1, uint64_t a2, sqlite3_context *a3, void (__cdecl **a4)(void *))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v5;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_100157A50(v4, a3, a4);
}

void SQLiteContext.setData(_:destructor:)(uint64_t a1, unint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  if (a2 >> 60 == 15)
  {

    sqlite3_result_null(a4);
    return;
  }

  v6 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 > a1 >> 32)
      {
        __break(1u);
        goto LABEL_24;
      }

      v8 = __DataStorage._bytes.getter();
      if (v8)
      {
        v18 = __DataStorage._offset.getter();
        v10 = v6 - v18;
        if (!__OFSUB__(v6, v18))
        {
LABEL_16:
          v8 += v10;
          goto LABEL_17;
        }

LABEL_24:
        __break(1u);
      }

LABEL_17:
      __DataStorage._length.getter();
      if (v8)
      {
        sub_100005854();
        v19 = Data.count.getter();
        SQLiteContext.setBuffer(_:ofSize:destructor:)(v8, v19, a3, a4);
      }

      else
      {
        sqlite3_result_null(a4);
      }

      v20 = sub_100005854();

      sub_100014A2C(v20, v21);
      return;
    case 2uLL:
      v7 = *(a1 + 16);

      v8 = __DataStorage._bytes.getter();
      if (!v8)
      {
        goto LABEL_17;
      }

      v9 = __DataStorage._offset.getter();
      v10 = v7 - v9;
      if (!__OFSUB__(v7, v9))
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_11:
      memset(v22, 0, 14);
LABEL_12:
      sub_100005854();
      v11 = Data.count.getter();
      SQLiteContext.setBuffer(_:ofSize:destructor:)(v22, v11, a3, a4);
      v12 = sub_100005854();
      sub_100014A2C(v12, v13);
      v14 = sub_100005854();
      sub_100014A2C(v14, v15);
      v16 = sub_100005854();
      sub_100014A40(v16, v17);
      return;
    case 3uLL:
      goto LABEL_11;
    default:
      v22[0] = a1;
      LOWORD(v22[1]) = a2;
      BYTE2(v22[1]) = BYTE2(a2);
      BYTE3(v22[1]) = BYTE3(a2);
      BYTE4(v22[1]) = BYTE4(a2);
      BYTE5(v22[1]) = BYTE5(a2);
      goto LABEL_12;
  }
}

void SQLiteContext.setBuffer(_:ofSize:destructor:)(uint64_t a1, uint64_t a2, void (__cdecl **a3)(void *), sqlite3_context *a4)
{
  v5 = a2;
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  a2 = a1;
  if (!a3)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    if (qword_10021EA60 == -1)
    {
LABEL_9:
      v6 = qword_100232DC0;
      goto LABEL_11;
    }

LABEL_16:
    v9 = a2;
    v7 = a4;
    v8 = v5;
    swift_once();
    a2 = v9;
    a4 = v7;
    v5 = v8;
    goto LABEL_9;
  }

  if (a3 == 2)
  {
    v6 = &_sqlite3_free;
  }

  else
  {
    v6 = a3;
  }

LABEL_11:

  sqlite3_result_blob(a4, a2, v5, v6);
}

uint64_t getEnumTagSinglePayload for SQLiteDestructor(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SQLiteDestructor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_100157FC0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.ensureValidSQLNameCharacters()()
{
  v2 = (*(v0 + 16))();
  v3 = 0;
  v4 = *(v2 + 16);
  for (i = v2 + 32; ; i += 40)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_1000092B4(i, v8);
    v7 = v9;
    v6 = v10;
    sub_100007534(v8, v9);
    (*(*(v6 + 8) + 8))(v7);
    if (v1)
    {

      sub_100007378(v8);
      return;
    }

    ++v3;
    sub_100007378(v8);
  }

  __break(1u);
}

uint64_t SQLiteSchema.columns.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_100046184(qword_10021F198, &qword_1001A4280);
  v3 = _arrayForceCast<A, B>(_:)();

  return v3;
}

uint64_t SQLiteBaseVTab.init(style:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = a1;
  *(v1 + 32) = swift_slowAlloc();
  v2 = (*(*v1 + 312))();
  v3 = *(v1 + 40);
  v4 = sub_100159CAC;
  if (!*(v1 + 40))
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    v4 = sub_100159CA8;
LABEL_4:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  if (v3 >= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_100159288;
  }

  v7 = *(v1 + 32);
  *v7 = v2;
  *(v7 + 4) = 0;
  *(v7 + 8) = v5;
  *(v7 + 16) = sub_100159CA8;
  *(v7 + 24) = sub_1001591BC;
  *(v7 + 32) = sub_100159288;
  *(v7 + 40) = v6;
  *(v7 + 48) = sub_100159324;
  *(v7 + 56) = sub_1001593C4;
  *(v7 + 64) = sub_100159528;
  *(v7 + 72) = sub_10015952C;
  *(v7 + 80) = sub_100159614;
  *(v7 + 88) = sub_100159718;
  *(v7 + 96) = sub_1001597E8;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  return v1;
}

uint64_t SQLiteBaseVTab.deinit()
{
  v1 = v0;

  if (qword_10021EA70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232DE0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    if (*(v1 + 24))
    {
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
    }

    else
    {
      v8 = 0x80000001001B3660;
      v7 = 0xD000000000000010;
    }

    v9 = sub_100009684(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Destroying vtable module with name %s", v5, 0xCu);
    sub_100007378(v6);
  }

  return v1;
}

uint64_t SQLiteBaseVTab.moduleName.getter(uint64_t a1, uint64_t a2)
{
  sub_100003AD4(v2 + 16, a2);
  v3 = *(v2 + 16);

  return v3;
}

uint64_t (*SQLiteBaseVTab.xCreate()())()
{
  v1 = sub_100159CAC;
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      return sub_100159CA8;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t (*SQLiteBaseVTab.xDestroy()())()
{
  if (*(v0 + 40) >= 2u)
  {
    return 0;
  }

  else
  {
    return sub_100159288;
  }
}

uint64_t SQLiteBaseVTab.register(_:database:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;

  v8 = *(a3 + 16);
  v9 = v4[4];
  v10 = String.utf8CString.getter();

  LODWORD(v4) = sqlite3_create_module_v2(v8, (v10 + 32), v9, v4, sub_100159834);

  if (v4)
  {
    v12 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v12);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 2;
    swift_willThrow();
  }

  return result;
}

uint64_t SQLiteBaseVTab.connect(db:argc:argv:outVTab:outError:)(sqlite3 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sqlite3_malloc(32);
  if (v8)
  {
    v9 = v8;
    sub_1000037B0();
    v11 = *((*(v10 + 320))() + 120);

    v13 = v11(v12, a2, a3);
    _StringGuts.grow(_:)(54);
    v14._object = 0x80000001001B3770;
    v14._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v14);
    v15 = v13[2];
    v16 = v13[3];

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x20202020200A2820;
    v18._object = 0xEF20202020202020;
    String.append(_:)(v18);
    v19._countAndFlagsBits = (*(*v13 + 152))();
    String.append(_:)(v19);

    v21._countAndFlagsBits = 0x202020202020200ALL;
    v21._object = 0xEA00000000002920;
    String.append(_:)(v21);
    v22 = String.utf8CString.getter();

    v23 = sqlite3_declare_vtab(a1, (v22 + 32));

    if (!v23)
    {
      result = 0;
      *v9 = 0;
      v9[2] = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = v13;
      *a4 = v9;
      return result;
    }
  }

  return 1;
}

uint64_t SQLiteBaseVTab.disconnect(_:)(void *a1)
{

  sqlite3_free(a1);
  return 0;
}

uint64_t SQLiteBaseVTab.open(_:for:)(void *a1)
{
  v2 = sqlite3_malloc(16);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_1000037B0();
  v5 = *((*(v4 + 160))() + 144);

  v7 = v5(v6);
  result = 0;
  *v3 = 0;
  v3[1] = v7;
  *a1 = v3;
  return result;
}

uint64_t SQLiteBaseVTab.close(_:for:)(void *a1)
{
  if (a1[1])
  {
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t SQLiteBaseVTab.filter(_:for:idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v9 = *(v8 + 152);

  v9(a3, a4, a5);
  sub_100006B00();

  return a5;
}

void (*SQLiteBaseVTab.next(_:for:)(uint64_t a1))(uint64_t)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v2 = *(v1 + 160);

  v2(v3);
  sub_100006B00();

  return v2;
}

BOOL SQLiteBaseVTab.eof(_:for:)(uint64_t a1)
{
  v1 = 1;
  if (*(a1 + 8))
  {
    sub_1000037B0();
    v3 = *(v2 + 168);

    LOBYTE(v3) = v3(v4);

    return (v3 & 1) == 0;
  }

  return v1;
}

uint64_t SQLiteBaseVTab.column(_:for:context:columnIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    return 1;
  }

  v6 = (*(*a2 + 144))(a4);
  v8 = v7;
  v9 = *(*v4 + 184);

  v10 = v9(v6, v8, a3);

  return v10;
}

uint64_t SQLiteBaseVTab.rowid(_:for:outRowid:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 8))
  {
    return 1;
  }

  sub_1000037B0();
  v5 = *(v4 + 176);

  v7 = v5(v6);

  result = 0;
  *a3 = v7;
  return result;
}

uint64_t SQLiteBaseVTab.Connection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  swift_weakInit();
  if (a2 < 3)
  {
    v7 = 0x80000001001B36A0;
    v8 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v8);
    v10 = 0xD00000000000001CLL;
LABEL_8:
    *v9 = v10;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0;
    *(v9 + 24) = 3;
    swift_willThrow();

    swift_weakDestroy();
    type metadata accessor for SQLiteBaseVTab.Connection();
    swift_deallocPartialClassInstance();
    return v3;
  }

  if (!*(a3 + 16))
  {
    v13 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v13);
    v7 = 0xEE006C696E206465;
    v10 = 0x7463657078656E55;
    goto LABEL_8;
  }

  static String.Encoding.utf8.getter();
  v11 = String.init(cString:encoding:)();
  if (!v12)
  {
    v10 = 0xD000000000000014;
    v7 = 0x80000001001B3680;
    v14 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v14);
    goto LABEL_8;
  }

  *(v3 + 16) = v11;
  *(v3 + 24) = v12;
  swift_beginAccess();
  swift_weakAssign();

  return v3;
}

uint64_t SQLiteBaseVTab.Cursor.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseVTab.Cursor.next()()
{
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
    return static AvroPrimitiveSchema.null.getter();
  }

  return result;
}

Swift::Bool __swiftcall SQLiteBaseVTab.Cursor.hasMoreRows()()
{
  v1 = *(v0 + 16);
  sub_1000037B0();
  return v1 < (*(v2 + 192))();
}

uint64_t sub_100159010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10015905C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1001590BC(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a1 || !a2 || !a5 || !a4 || !a6)
  {
    return 1;
  }

  SQLiteBaseVTab.connect(db:argc:argv:outVTab:outError:)(a1, a3, a4, a5);
  sub_100006B00();

  return a5;
}

uint64_t sub_100159140(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  v3 = *(**(a1 + 24) + 128);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_1001591C0(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(*a1[3] + 136);

  v2(v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    SQLiteBaseVTab.disconnect(_:)(a1);

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t sub_10015928C(uint64_t a1, void *a2)
{
  v2 = 1;
  if (a1 && a2)
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v2 = SQLiteBaseVTab.open(_:for:)(a2);
    }
  }

  return v2;
}

uint64_t sub_100159328(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      SQLiteBaseVTab.close(_:for:)(v1);

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001593C8(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!result || !a5)
  {
    return 1;
  }

  if ((a4 & 0x80000000) == 0)
  {
    v8 = result;
    v9 = a4;
    if (a4)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v10 = result;
      *(result + 16) = v9;
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    for (i = 0; v9 != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(a5 + 8 * i);
      if (!v12)
      {
        v10[2] = 0;

        return 1;
      }

      v10[i + 4] = v12;
    }

    v10[2] = v9;
    result = objc_autoreleasePoolPush();
    if (!*v8)
    {
      goto LABEL_22;
    }

    v13 = result;

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v15 = SQLiteBaseVTab.filter(_:for:idxNum:idxStr:arguments:)(v8, v14, a2, a3, v10);
    }

    else
    {

      v15 = 1;
    }

    objc_autoreleasePoolPop(v13);
    return v15;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100159558(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (!a1)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = result;
    v6 = *(*a1 + 24);

    sub_100003AD4(v6 + 32, v7);
    if (swift_weakLoadStrong())
    {
      v8 = a2(a1);
    }

    else
    {

      v8 = 1;
    }

    objc_autoreleasePoolPop(v5);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100159640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v7 = result;
    v8 = *(*a1 + 24);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = SQLiteBaseVTab.column(_:for:context:columnIndex:)(a1, v8, a2, a3);
    }

    else
    {

      v9 = 1;
    }

    objc_autoreleasePoolPop(v7);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10015971C(void *a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  result = objc_autoreleasePoolPush();
  if (*a1)
  {
    v5 = result;

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = SQLiteBaseVTab.rowid(_:for:outRowid:)(a1, v6, a2);
    }

    else
    {

      v7 = 1;
    }

    objc_autoreleasePoolPop(v5);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t SQLiteBaseVTab.__allocating_init(style:)()
{
  sub_100006B00();
  v1 = swift_allocObject();
  SQLiteBaseVTab.init(style:)(v0);
  return v1;
}

uint64_t sub_100159828(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SQLiteBaseVTab.__deallocating_deinit()
{
  SQLiteBaseVTab.deinit();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t SQLiteBaseVTab.Connection.tableName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001598A0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t SQLiteBaseVTab.Connection.__allocating_init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SQLiteBaseVTab.Connection.init(_:argc:argv:)(a1, a2, a3);
  return v6;
}

uint64_t SQLiteBaseVTab.Connection.__deallocating_deinit()
{

  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1001599E8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t SQLiteBaseVTab.Cursor.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SQLiteBaseVTab.Cursor.init(_:)(a1);
  return v2;
}

unint64_t sub_100159B30()
{
  result = qword_10021F220;
  if (!qword_10021F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F220);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteBaseVTab.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SQLiteColumnDescribing<>.init(index:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  if (Array.count.getter() <= a1)
  {
    v7 = 1;
  }

  else
  {
    Array.subscript.getter();
    v7 = 0;
  }

  return sub_1000051C0(a4, v7, 1, a2);
}

uint64_t SQLiteColumnDescribing.isValid(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  v8 = (*(v7 + 24))();
  v9 = 1;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = 1;
  switch(v8)
  {
    case 1:
      v10 = 0;
      v9 = 0;
      v12 = 2;
      LOBYTE(v11) = 1;
      goto LABEL_5;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      v10 = 0;
      LOBYTE(v11) = 0;
      v9 = 0;
      v12 = 0;
      goto LABEL_5;
    case 6:
    case 7:
    case 8:
      LOBYTE(v11) = 0;
      v9 = 0;
      v12 = 3;
      v10 = 1;
      goto LABEL_5;
    case 10:
LABEL_11:
      sub_10011DC44();
      swift_allocError();
      *v17 = 0xD00000000000003ELL;
      *(v17 + 8) = 0x80000001001B3250;
      *(v17 + 16) = 0;
      *(v17 + 24) = 3;
      swift_willThrow();
      return v11 & 1;
    default:
LABEL_5:
      v19 = v9;
      v20 = v12;
      v13 = a1[3];
      v14 = a1[4];
      sub_100007534(a1, v13);
      v15 = (*(v14 + 40))(v13, v14);
      if (!v3)
      {
        v16 = 1;
        switch(v15)
        {
          case 1:
            v16 = 3;
            goto LABEL_14;
          case 2:
            v16 = 4;
            goto LABEL_14;
          case 3:
            v16 = 2;
            goto LABEL_14;
          case 4:
            if (SQLiteColumnDescribing.nullable.getter(a2, a3))
            {
              sub_100007534(a1, a1[3]);
              swift_getDynamicType();
              switch((*(a1[4] + 24))())
              {
                case 1u:
                  return v11 & 1;
                case 2u:
                case 3u:
                case 4u:
                case 5u:
                case 9u:
                  v11 = 1u >> v20;
                  break;
                case 6u:
                case 7u:
                case 8u:
                  LOBYTE(v11) = v10;
                  break;
                case 0xAu:
                  goto LABEL_11;
                default:
                  LOBYTE(v11) = v19;
                  break;
              }
            }

            else
            {
              LOBYTE(v11) = 0;
            }

            return v11 & 1;
          default:
LABEL_14:
            LOBYTE(v11) = v16 == dword_1001A4400[v20];
            break;
        }
      }

      return v11 & 1;
  }
}

BOOL static SQLiteColumnDescribing.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v12)
  {
LABEL_8:
    v14 = *(a4 + 24);
    v15 = v14(a3, a4);
    return v15 == v14(a3, a4);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnDescribing.ensureValidSQLNameCharacters()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = (*(v2 + 32))(v3, v2, v6);
  v13[1] = v9;
  if (qword_10021EA68 != -1)
  {
    swift_once();
  }

  sub_10000964C(v4, qword_100232DC8);
  CharacterSet.inverted.getter();
  sub_10000527C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  if ((v11 & 1) == 0)
  {
    sub_10011DC44();
    swift_allocError();
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 10;
    *(v12 + 24) = 4;
    swift_willThrow();
  }
}

uint64_t SQLiteColumnDescribing<>.getColumnIndex()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection<>.firstIndex(of:)();

  if (v7)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    sub_10011DC44();
    swift_allocError();
    *v4 = v6;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    return swift_willThrow();
  }

  result = v6;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void Bool.bind(to:at:)(uint64_t a1, int a2, char a3)
{
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v6 != v7)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v6 ^ v7 | v9))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_int(v8, a2, a3 & 1))
    {
      v10 = sub_10000AD2C();
      sub_100004248(&type metadata for SQLiteError, v10);
      sub_1000064E4(v11, 18);
    }
  }
}

void Float.bind(to:at:)(float a1, uint64_t a2, int a3)
{
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v6 != v7)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v6 ^ v7 | v9))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_double(v8, a3, a1))
    {
      v10 = sub_10000AD2C();
      sub_100004248(&type metadata for SQLiteError, v10);
      sub_1000064E4(v11, 21);
    }
  }
}

void Double.bind(to:at:)(double a1, uint64_t a2, int a3)
{
  sub_100154FFC();
  if (!v3)
  {
    sub_100005AD8();
    if (v6 != v7)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    sub_100008BD0();
    if (!(v6 ^ v7 | v9))
    {
      goto LABEL_9;
    }

    if (sqlite3_bind_double(v8, a3, a1))
    {
      v10 = sub_10000AD2C();
      sub_100004248(&type metadata for SQLiteError, v10);
      sub_1000064E4(v11, 21);
    }
  }
}

void String.bind(to:at:)()
{
  sub_100006A3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for String.Encoding();
  sub_100003A6C();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v9;
  sub_100154FFC();
  if (v0)
  {
    goto LABEL_11;
  }

  sub_100005AD8();
  if (v17 != v18)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100008BD0();
  if (!(v17 ^ v18 | v20))
  {
    goto LABEL_13;
  }

  v1 = v19;
  v25[0] = v5;
  v25[1] = v3;
  static String.Encoding.utf8.getter();
  sub_10000527C();
  v16 = StringProtocol.cString(using:)();
  (*(v12 + 8))(v15, v10);
  if (qword_10021EA60 != -1)
  {
LABEL_14:
    sub_1000046D0();
    swift_once();
  }

  if (v16)
  {
    v21 = (v16 + 32);
  }

  else
  {
    v21 = 0;
  }

  v22 = sqlite3_bind_text(v1, v7, v21, -1, qword_100232DC0);

  if (v22)
  {
    v23 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v23);
    sub_1000064E4(v24, 21);
  }

LABEL_11:
  sub_100007FD4();
}

uint64_t Data.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = a1;
  v126 = *(a1 + 8);

  sub_100007E54(v11, v12, v13, v14, v15, v16, v17, v18, v112, v119);

  result = sub_100007E54(v19, v20, v21, v22, v23, v24, v25, v26, v113, v120);
  switch(a4 >> 62)
  {
    case 1uLL:
      if (a3 > a3 >> 32)
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_100007E54(v78, v79, v80, v81, v82, v83, v84, v85, v114, v121);
      swift_retain_n();

      sub_100007E54(v86, v87, v88, v89, v90, v91, v92, v93, v118, v125);
      v94 = sub_100003674();
      sub_100014924(v94, v95);
      v96 = sub_100003674();
      sub_100014924(v96, v97);
      v5 = __DataStorage._bytes.getter();
      if (v5)
      {
        result = __DataStorage._offset.getter();
        if (__OFSUB__(a3, result))
        {
          goto LABEL_31;
        }

        v5 += a3 - result;
      }

      __DataStorage._length.getter();
      result = sub_100154FFC();
      if (v4)
      {
        goto LABEL_26;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_34;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_36;
      }

      v6 = result;
      sub_100003674();
      result = Data.count.getter();
      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_37;
      }

      LODWORD(v30) = result;
      if (result > 0x7FFFFFFF)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    case 2uLL:
      v47 = *(a3 + 16);

      sub_100007E54(v48, v49, v50, v51, v52, v53, v54, v55, v114, v121);
      swift_retain_n();
      swift_retain_n();

      sub_100007E54(v56, v57, v58, v59, v60, v61, v62, v63, v116, v123);
      v64 = sub_100003674();
      sub_100014924(v64, v65);
      v66 = sub_100003674();
      sub_100014924(v66, v67);
      v5 = __DataStorage._bytes.getter();
      if (!v5)
      {
        goto LABEL_6;
      }

      result = __DataStorage._offset.getter();
      if (__OFSUB__(v47, result))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v5 += v47 - result;
LABEL_6:
      __DataStorage._length.getter();
      result = sub_100154FFC();
      v10 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_32;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      v6 = result;
      sub_100003674();
      result = Data.count.getter();
      if (result >= 0xFFFFFFFF80000000)
      {
        v30 = result;
        if (result > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_12:
          sub_100007E54(result, v28, v29, v30, v31, v32, v33, v34, v114, v121);

          sub_100007E54(v68, v69, v70, v71, v72, v73, v74, v75, v117, v124);

          v76 = sub_100003674();
          sub_100014924(v76, v77);
          v46 = 0;
          v45 = 0;
LABEL_13:
          sub_10015B198(v46, v45, v10, a2, a3, a4);
          goto LABEL_27;
        }

LABEL_23:
        if (qword_10021EA60 != -1)
        {
LABEL_29:
          sub_1000046D0();
          v111 = v110;
          swift_once();
          LODWORD(v30) = v111;
        }

        v98 = sqlite3_bind_blob(v6, a2, v5, v30, qword_100232DC0);
        if (v98)
        {
          v99 = v98;
          v100 = sub_10011DC44();
          sub_100004248(&type metadata for SQLiteError, v100);
          *v101 = v99;
          *(v101 + 8) = 0xD000000000000013;
          *(v101 + 16) = 0x80000001001B37D0;
          *(v101 + 24) = 0;
          swift_willThrow();
        }

LABEL_26:

        sub_100062E58(&v126);
LABEL_27:
        v102 = sub_100003674();
        sub_100014A40(v102, v103);

        sub_100062E58(&v126);
        v104 = sub_100003674();
        sub_100014A40(v104, v105);

        sub_100062E58(&v126);
        v106 = sub_100003674();
        sub_100014A40(v106, v107);

        sub_100062E58(&v126);
        v108 = sub_100003674();
        return sub_100014A40(v108, v109);
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_12;
    default:
      sub_100007E54(result, v28, v29, v30, v31, v32, v33, v34, v114, v121);

      sub_100007E54(v35, v36, v37, v38, v39, v40, v41, v42, v115, v122);

      v43 = sub_100003674();
      sub_100014924(v43, v44);
      v45 = a4 & 0xFFFFFFFFFFFFFFLL;
      v46 = a3;
      goto LABEL_13;
  }
}

void Array<A>.bind(to:at:)()
{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v17 = v6;
  sub_100003A6C();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Array.count.getter();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    v14 = 0;
    v15 = (v8 + 8);
    while (1)
    {
      if (v13 == v14)
      {
LABEL_7:
        sub_100007FD4();
        return;
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      Array.subscript.getter();
      if (__OFADD__(v14, v18))
      {
        goto LABEL_9;
      }

      (*(v2 + 8))(v17, v14 + v18, v4, v2);
      (*v15)(v11, v4);
      ++v14;
      if (v0)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  __break(1u);
}

{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v5 = 0;
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (1)
  {
    if (v7 == v5)
    {
LABEL_5:
      sub_100007FD4();
      return;
    }

    v9 = v8[3];
    v10 = v8[4];
    sub_100007534(v8, v9);
    v11 = v5 + v2;
    if (__OFADD__(v5, v2))
    {
      break;
    }

    ++v5;
    (*(v10 + 8))(v4, v11, v9, v10);
    v8 += 5;
    if (v0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void Optional<A>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *(v25 - 8);
  __chkstk_darwin(v29);
  v33 = &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 16);
  v36 = *(v35 - 8);
  v38 = __chkstk_darwin(v37);
  v40 = &a9 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, v41, v38);
  if (sub_100008D0C(v33, 1, v35) != 1)
  {
    (*(v36 + 32))(v40, v33, v35);
    (*(v24 + 8))(v30, v28, v35, v24);
    (*(v36 + 8))(v40, v35);
    goto LABEL_8;
  }

  (*(v31 + 8))(v33, v26);
  v42 = a10;
  sub_100154FFC();
  if (v42)
  {
LABEL_8:
    sub_100007FD4();
    return;
  }

  sub_100005AD8();
  if (v43 == v44)
  {
    sub_100008BD0();
    if (!(v43 ^ v44 | v46))
    {
      goto LABEL_10;
    }

    sqlite3_bind_null(v45, v28);
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void RawRepresentable<>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003A6C();
  __chkstk_darwin(v27);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v21 + 8))(v25, v23, AssociatedTypeWitness, v21);
  v28 = sub_100003674();
  v29(v28);
  sub_100007FD4();
}

uint64_t sub_10015B198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v20 = a1;
  v22 = WORD2(a2);
  v21 = a2;
  v13 = sub_100154FFC();
  if (v6)
  {
    goto LABEL_9;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v13;
  v14 = Data.count.getter();
  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v14;
  if (v14 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (qword_10021EA60 != -1)
  {
LABEL_16:
    swift_once();
  }

  v15 = sqlite3_bind_blob(v7, a4, &v20, v8, qword_100232DC0);
  if (!v15)
  {

    v23 = *(a3 + 8);
    v18 = &v23;
    goto LABEL_10;
  }

  v16 = v15;
  sub_10011DC44();
  swift_allocError();
  *v17 = v16;
  *(v17 + 8) = 0xD000000000000013;
  *(v17 + 16) = 0x80000001001B37D0;
  *(v17 + 24) = 0;
  swift_willThrow();
LABEL_9:

  v24 = *(a3 + 8);
  v18 = &v24;
LABEL_10:
  sub_100062E58(v18);
  return sub_100014A40(a5, a6);
}

uint64_t sub_10015B364(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    AvroValue.schema.getter();
    v6 = sub_1000078A0();
    v8 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);

    if (v8)
    {

      v3 = 1;
    }

    else
    {
      v11 = AvroValue.schema.getter();
      __chkstk_darwin(v11);
      v10[2] = &v11;
      sub_100161250(sub_100163CE0, v10, v5);
      sub_10000835C();
    }
  }

  else
  {
    v4 = AvroValue.schema.getter();
    v3 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v4);
  }

  return v3 & 1;
}

unint64_t sub_10015B47C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result >> 61;
  switch(result >> 61)
  {
    case 1uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = _swiftEmptyArrayStorage;
      goto LABEL_9;
    case 2uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = Dictionary.init(dictionaryLiteral:)();
      goto LABEL_9;
    case 3uLL:
      v8 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      schema.type = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      schema.name = v8;
      schema.namespace = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      schema.fields._rawValue = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(&schema, __src);
      AvroRecord.init(schema:)(__src, &schema);
      v5 = *__src;
      v6 = *&__src[8];
      v2 = *&__src[16];
      result = *&__src[24];
      v12 = *&__src[32];
      v13 = *&__src[48];
      goto LABEL_9;
    case 4uLL:
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*(v6 + 16))
      {
        v7 = *(v6 + 32);

        sub_10015B47C(v7, __src);

        v5 = swift_allocObject();
        *(v5 + 16) = v6;
        result = memcpy((v5 + 24), __src, 0x41uLL);
        *(v5 + 96) = 0;
LABEL_9:
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 16) = v2;
        *(a2 + 24) = result;
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 48) = v9;
        *(a2 + 64) = v3;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v2 = *(result + 16);
      result = 7;
      v5 = v2;
      v6 = v2;
      switch(v2)
      {
        case 1uLL:
          v6 = 0;
          v2 = 0;
          result = 0;
          v5 = 1;
          break;
        case 2uLL:
          sub_10000EC8C();
          result = 1;
          break;
        case 3uLL:
          sub_10000EC8C();
          result = 2;
          break;
        case 4uLL:
          sub_10000EC8C();
          result = 3;
          break;
        case 5uLL:
          sub_10000EC8C();
          result = 4;
          break;
        case 6uLL:
          v5 = 0;
          v2 = 0;
          v6 = 0xE000000000000000;
          result = 5;
          break;
        case 7uLL:
          v6 = 0;
          v2 = 0;
          v5 = _swiftEmptyArrayStorage;
          result = 6;
          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_9;
  }
}

uint64_t sub_10015B6BC()
{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 0;
  static AvroSchema.null = result;
  return result;
}

uint64_t *AvroSchema.null.unsafeMutableAddressor()
{
  if (qword_10021F5B0 != -1)
  {
    sub_10000B150(&qword_10021F5B0);
  }

  return &static AvroSchema.null;
}

uint64_t sub_10015B75C()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  static AvroSchema.BOOLean = result;
  return result;
}

uint64_t *AvroSchema.BOOLean.unsafeMutableAddressor()
{
  if (qword_10021F5B8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.BOOLean;
}

uint64_t sub_10015B814()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  static AvroSchema.int = result;
  return result;
}

uint64_t *AvroSchema.int.unsafeMutableAddressor()
{
  if (qword_10021F5C0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.int;
}

uint64_t sub_10015B8CC()
{
  result = swift_allocObject();
  *(result + 16) = 3;
  static AvroSchema.long = result;
  return result;
}

uint64_t *AvroSchema.long.unsafeMutableAddressor()
{
  if (qword_10021F5C8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.long;
}

uint64_t sub_10015B984()
{
  result = swift_allocObject();
  *(result + 16) = 4;
  static AvroSchema.float = result;
  return result;
}

uint64_t *AvroSchema.float.unsafeMutableAddressor()
{
  if (qword_10021F5D0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.float;
}

uint64_t sub_10015BA3C()
{
  result = swift_allocObject();
  *(result + 16) = 5;
  static AvroSchema.double = result;
  return result;
}

uint64_t *AvroSchema.double.unsafeMutableAddressor()
{
  if (qword_10021F5D8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.double;
}

uint64_t sub_10015BAF4()
{
  result = swift_allocObject();
  *(result + 16) = 6;
  static AvroSchema.string = result;
  return result;
}

uint64_t *AvroSchema.string.unsafeMutableAddressor()
{
  if (qword_10021F5E0 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.string;
}

uint64_t sub_10015BBAC()
{
  result = swift_allocObject();
  *(result + 16) = 7;
  static AvroSchema.bytes = result;
  return result;
}

uint64_t *AvroSchema.bytes.unsafeMutableAddressor()
{
  if (qword_10021F5E8 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.bytes;
}

uint64_t sub_10015BC6C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t static AvroSchema.array(itemSchema:)(uint64_t a1)
{
  sub_100015B68();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x7961727261;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x2000000000000000;
}

uint64_t static AvroSchema.array(schema:)()
{
  sub_10000705C();
  sub_100015B68();
  v1 = swift_allocObject();
  sub_10016404C(v1);

  return v0 | 0x2000000000000000;
}

uint64_t static AvroSchema.map(valueSchema:)(uint64_t a1)
{
  sub_100015B68();
  v2 = swift_allocObject();
  *(v2 + 16) = 7364973;
  *(v2 + 24) = 0xE300000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x4000000000000000;
}

uint64_t static AvroSchema.map(schema:)()
{
  sub_10000705C();
  sub_100015B68();
  v1 = swift_allocObject();
  sub_10016404C(v1);

  return v0 | 0x4000000000000000;
}

uint64_t static AvroSchema.record(name:fields:)()
{
  sub_10000705C();
  sub_10000FF64();
  v3 = swift_allocObject();
  sub_100163FE8();
  v4[2] = v5;
  v4[3] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = v0;

  return v3 | 0x6000000000000000;
}

void __swiftcall AvroRecordSchema.init(name:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value._countAndFlagsBits = 0;
  retstr->namespace.value._object = 0;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(name:namespace:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000FF64();
  v10 = swift_allocObject();

  sub_100163FE8();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  result = v10 | 0x6000000000000000;
  *(v10 + 64) = a5;
  return result;
}

void __swiftcall AvroRecordSchema.init(name:namespace:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::String a3, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value = a3;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(schema:)(uint64_t a1)
{
  sub_10000FF64();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1000967A0(a1, v5);
  return v2 | 0x6000000000000000;
}

unint64_t static AvroSchema.union(of:)(Swift::OpaquePointer a1)
{
  sub_1000068B4();
  v2 = swift_allocObject();
  AvroUnionSchema.init(of:)(a1);
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

SwiftAvro::AvroUnionSchema __swiftcall AvroUnionSchema.init(of:)(SwiftAvro::AvroUnionSchema of)
{
  v1 = *(of.schemas._rawValue + 2);
  if (v1)
  {
    v2 = 32;
    while (v1)
    {
      v3 = *(of.schemas._rawValue + v2);
      v2 += 8;
      --v1;
      if (v3 >> 61 == 4)
      {
        __break(1u);
        return of;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return of;
}

unint64_t static AvroSchema.union(schema:)(uint64_t a1)
{
  sub_1000068B4();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

uint64_t AvroSchema.init(for:)()
{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 3;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 4;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 5;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 6;
  return result;
}

{
  sub_10001AE80();
  result = swift_allocObject();
  *(result + 16) = 7;
  return result;
}

uint64_t _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_21;
      }

LABEL_15:
      v17 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = v18 == v21 && v19 == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v23 || (sub_10000FFF0(v18, v19, v21) & 1) != 0)
      {

        v24 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v22);

        if (v24)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v13 = 0;
      return v13 & 1;
    case 3uLL:
      v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = v14;
      v28 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v29 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      if (a2 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v30[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v30[1] = v15;
      v30[2] = v16;
      v31 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1000967A0(v30, v25);
      v13 = static AvroRecordSchema.__derived_struct_equals(_:_:)();
      sub_100161354(v30);
      return v13 & 1;
    case 4uLL:
      if (a2 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v11 = sub_1000041F8();
      v13 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v12);

      return v13 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_21;
      }

      v2 = *(a2 + 16);
      v3 = sub_1001608C8(*(a1 + 16));
      v5 = v4;
      v6 = sub_1001608C8(v2);
      if (v3 == v6 && v5 == v7)
      {

LABEL_24:
        v13 = 1;
        return v13 & 1;
      }

      else
      {
        v9 = sub_10000FFF0(v3, v5, v6);

        return v9 & 1;
      }
  }
}

uint64_t _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v6 = 1;
      goto LABEL_8;
    case 2uLL:
      v6 = 2;
LABEL_8:
      Hasher._combine(_:)(v6);

      sub_10000BE80();
      String.hash(into:)();
      v9 = sub_1000385F0();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v9, v10);

      break;
    case 3uLL:
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      Hasher._combine(_:)(3uLL);

      String.hash(into:)();
      sub_10000DC5C();
      String.hash(into:)();
      if (v7)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      sub_100162948(a1, v8);

      break;
    case 4uLL:
      Hasher._combine(_:)(4uLL);

      v4 = sub_10000672C();
      AvroUnionSchema.hash(into:)(v4, v5);
      break;
    default:
      v3 = *(a2 + 16);
      Hasher._combine(_:)(0);
      sub_1001608C8(v3);
      String.hash(into:)();
      break;
  }
}

uint64_t AvroSchema.encode(to:)(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      sub_10016402C();

      v10 = sub_10000BA60();
      AvroArraySchema.encode(to:)(v10, v11, v12, v13);
      goto LABEL_7;
    case 2uLL:
      sub_10016402C();

      v4 = sub_10000BA60();
      AvroMapSchema.encode(to:)(v4, v5, v6, v7);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      sub_1000079A0((a2 & 0x1FFFFFFFFFFFFFFFLL));
      sub_1000967A0(v8, v9);
      AvroRecordSchema.encode(to:)(a1);
      return sub_100161354(v14);
    case 4uLL:
      sub_100161300();

      Array<A>.encode(to:)();
LABEL_8:

      break;
    default:
      result = AvroPrimitiveSchema.encode(to:)(a1, *(a2 + 16));
      break;
  }

  return result;
}

uint64_t AvroPrimitiveSchema.encode(to:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100046184(&qword_10021F600, &qword_1001A44C8);
  sub_100003650();
  v6 = v5;
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_1000190A8(a1, a1[3]);
  sub_100161384();
  sub_100163FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001608C8(v2);
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v9, v4);
}

uint64_t AvroRecordSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021F630, &qword_1001A44E0);
  sub_100003650();
  v7 = v6;
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_1000190A8(a1, a1[3]);
  sub_100161480();
  sub_100163FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_100163F30();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    sub_100164014();
    sub_100163F30();
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    sub_100163F30();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 48);
    v12[15] = 3;
    sub_100046184(&qword_10021F640, &qword_1001A44E8);
    sub_100162A74(&qword_10021F648, sub_1001614D4);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AvroSchema.init(from:)()
{
  sub_10000BA14();
  sub_100007534(v3, v3[3]);
  sub_10016406C();
  if (!v2)
  {
    sub_1000190A8(v6, v6[3]);
    sub_100161528();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    sub_10001AE80();
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    sub_100007378(v6);
  }

  sub_100007378(v0);
  return v1;
}

uint64_t sub_10015CD68@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AvroSchema.description.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroArraySchema.description.getter(v8, v9, v7);
      goto LABEL_8;
    case 2uLL:
      v2 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroMapSchema.description.getter(v3, v4, v2);
LABEL_8:

      return sub_1000078A0();
    case 3uLL:
      sub_1000079A0((a1 & 0x1FFFFFFFFFFFFFFFLL));
      sub_1000967A0(v5, v6);
      AvroRecordSchema.description.getter();
      sub_100161354(v10);
      return sub_1000041F8();
    case 4uLL:

      Array.description.getter();

      return sub_10000BE80();
    default:
      v10[0] = *(a1 + 16);
      String.init<A>(describing:)();
      return sub_1000041F8();
  }
}

uint64_t AvroRecordSchema.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AvroRecordSchema.namespace.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AvroRecordSchema.fields.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_10015D070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}