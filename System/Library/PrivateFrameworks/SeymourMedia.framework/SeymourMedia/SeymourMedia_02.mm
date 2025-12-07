unint64_t sub_20C4A481C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_20C4A4A3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20C5A054C();
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
          result = sub_20C5A0C7C();
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

    result = sub_20C4A4A3C(v12, a6, a7);
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

    result = sub_20C5A051C();
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

unint64_t sub_20C4A4A3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20C5A055C();
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
    v5 = MEMORY[0x20F2FE9D0](15, a1 >> 16);
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

unsigned __int8 *sub_20C4A4AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_20C4A5108();

  result = sub_20C5A058C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_20C4A4644(result, v7);
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
      result = sub_20C5A0C7C();
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

uint64_t sub_20C4A5040(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_20C5A0C7C();
  }

  result = sub_20C4A515C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_20C4A5108()
{
  result = qword_27C7C4740;
  if (!qword_27C7C4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4740);
  }

  return result;
}

uint64_t sub_20C4A515C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_20C4A4A3C(a2, a4, a5);
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
  result = sub_20C5A053C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_20C4A4A3C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_20C4A4A3C(a3, a4, a5);
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

  result = sub_20C5A053C();
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

void *MetricImpressionPublishing.publishImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v5 = type metadata accessor for MetricClickStreamOccurred(0);
  MEMORY[0x28223BE20](v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59E13C();
  MEMORY[0x28223BE20](v8 - 8);
  v51 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4748, &unk_20C5A47D0);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4758, &unk_20C5A47E0);
  MEMORY[0x28223BE20](v14 - 8);
  v48 = v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0, &qword_20C5A35C0);
  MEMORY[0x28223BE20](v16 - 8);
  v54 = v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4760, &unk_20C5A47F0);
  MEMORY[0x28223BE20](v18 - 8);
  v53 = v44 - v19;
  v20 = sub_20C59E58C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_20C59E26C();
  v46 = *(v24 - 8);
  v47 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v45 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a3 + 32))(&v58, a2, a3, v25);
  if ((v58 & 1) == 0)
  {
    v44[0] = v7;
    v44[1] = v5;
    (*(a3 + 16))(v55, a2, a3);
    v29 = v56;
    v28 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v30 = (*(v28 + 16))(v52, v29, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    if (*(v30 + 16))
    {
      *v23 = v30;
      (*(v21 + 104))(v23, *MEMORY[0x277D52100], v20);
      v31 = v53;
      v32 = a2;
      (*(a3 + 40))(a2, a3);
      v33 = sub_20C59D79C();
      (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
      v34 = sub_20C59E3EC();
      (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
      v35 = sub_20C59E40C();
      (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
      v36 = v49;
      static MetricEnvironment.current()();
      v37 = sub_20C59E2AC();
      (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4768, &qword_20C5A8580);
      (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
      (*(a3 + 24))(v32, a3);
      v39 = sub_20C59E5EC();
      (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
      v40 = v45;
      sub_20C59E23C();
      v42 = v46;
      v41 = v47;
      v43 = v44[0];
      (*(v46 + 16))(v44[0], v40, v47);
      (*(a3 + 8))(v32, a3);
      swift_getObjectType();
      sub_20C4A5D58();
      sub_20C59F5FC();
      swift_unknownObjectRelease();
      sub_20C4A5DB0(v43);
      return (*(v42 + 8))(v40, v41);
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_20C4A5D58()
{
  result = qword_2810F4908[0];
  if (!qword_2810F4908[0])
  {
    type metadata accessor for MetricClickStreamOccurred(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810F4908);
  }

  return result;
}

uint64_t sub_20C4A5DB0(uint64_t a1)
{
  v2 = type metadata accessor for MetricClickStreamOccurred(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingItemActionFootnotePosition.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4A5F10()
{
  result = qword_27C7C4770;
  if (!qword_27C7C4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4770);
  }

  return result;
}

id ServiceSubscriptionPurchased.purchaseResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t ServiceSubscriptionPurchased.init(purchaseResult:metricsOverlay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

uint64_t static ServiceSubscriptionPurchased.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C4A603C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_20C4A6098(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t static TrainerTipQuarantineRegionEntered.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

NSParagraphStyle __swiftcall MediaTagStringBuilderOptions.makeParagraphStyle()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v5 setLineSpacing_];
  [v5 setLineHeightMultiple_];
  [v5 setAlignment_];
  [v5 setLineBreakMode_];
  return v5;
}

Swift::Void __swiftcall MediaTagStringBuilderOptions.apply(to:)(NSMutableAttributedString to)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  v8 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v8 setLineSpacing_];
  [v8 setLineHeightMultiple_];
  [v8 setAlignment_];
  [v8 setLineBreakMode_];
  v7 = [(objc_class *)to.super.super.isa length];
  [(objc_class *)to.super.super.isa addAttribute:*MEMORY[0x277D74118] value:v8 range:0, v7];
}

uint64_t sub_20C4A62F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  sub_20C5A0FBC();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x20F2FF470](v4);
  }

  else
  {
    MEMORY[0x20F2FF470](0);
    sub_20C5A049C();
    sub_20C4FACE0(v1, v2);
  }

  sub_20C5A049C();
  return sub_20C5A0FFC();
}

double sub_20C4A63C8(uint64_t a1)
{
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x20F2FF470](v2);
  }

  else
  {
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    MEMORY[0x20F2FF470](0);
    sub_20C5A049C();
    sub_20C4FACE0(v4, v3);
  }

  sub_20C5A049C();
  return result;
}

uint64_t sub_20C4A6488(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  sub_20C5A0FBC();
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x20F2FF470](v5);
  }

  else
  {
    MEMORY[0x20F2FF470](0);
    sub_20C5A049C();
    sub_20C4FACE0(v2, v3);
  }

  sub_20C5A049C();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4A6554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20C4A6608(v5, v7) & 1;
}

unint64_t sub_20C4A65B4()
{
  result = qword_27C7C4778;
  if (!qword_27C7C4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4778);
  }

  return result;
}

uint64_t sub_20C4A6608(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (*(a1 + 48))
  {
    if (*(a1 + 48) == 1)
    {
      if (*(a2 + 48) != 1)
      {
        return 0;
      }

LABEL_15:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    if (*(a2 + 48) == 2)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = a1[4];
  v11 = a1[5];
  v13 = *(a2 + 2);
  v12 = *(a2 + 3);
  v14 = a2[4];
  v15 = a2[5];
  if (v4 == v6 && v5 == v7)
  {
    if (v9 != v13 || v8 != v12)
    {
      return 0;
    }

LABEL_29:
    if (v10 != v14 || v11 != v15)
    {
LABEL_19:

      return sub_20C5A0E9C();
    }

    return 1;
  }

  v19 = sub_20C5A0E9C();
  result = 0;
  if ((v19 & 1) != 0 && v9 == v13 && v8 == v12)
  {
    goto LABEL_29;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20C4A6764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20C4A67AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t MetricPlayStreamOccurred.metricPlayStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59E18C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricPlayStreamOccurred.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59E18C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static MetricPlayStreamOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id AVPlayerItem.withTitle(_:)(Swift::String_optional value)
{
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5EF0], value);

  return v2;
}

id AVPlayerItem.withSubtitle(_:)(Swift::String_optional value)
{
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5F90], value);

  return v2;
}

id AVPlayerItem.withDescription(_:)(Swift::String_optional value)
{
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5ED8], value);

  return v2;
}

id AVPlayerItem.withArtist(_:)(Swift::String_optional value)
{
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5EB8], value);

  return v2;
}

NSObject *AVPlayerItem.withSpatializationFormats(_:)(uint64_t a1)
{
  v1 = sub_20C4A7538(a1);

  return v1;
}

id AVPlayerItem.withMediaKind(_:)(_BYTE *a1)
{
  v1 = sub_20C4A7704(a1);

  return v1;
}

id AVPlayerItem.withRestrictions(_:)(uint64_t a1)
{
  v1 = sub_20C4A79DC(a1);

  return v1;
}

Swift::Void __swiftcall AVPlayerItem.setMetadata(_:value:)(AVMetadataIdentifier _, Swift::String_optional value)
{
  v3 = v2;
  object = value.value._object;
  sub_20C4A7044(_);
  if (object)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CE6558]) init];
    [v6 setIdentifier_];
    v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v8 = sub_20C5A036C();
    v9 = [v7 initWithString_];

    [v6 setValue_];
    v10 = sub_20C5A036C();
    [v6 setExtendedLanguageTag_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90, &unk_20C5A93D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A3A10;
    *(inited + 32) = v6;
    v12 = v6;
    v13 = [v3 externalMetadata];
    sub_20C4A7C30();
    v14 = sub_20C5A061C();

    sub_20C4A72A4(inited);
    v15 = sub_20C5A060C();

    [v3 setExternalMetadata_];
  }
}

Swift::Void __swiftcall AVPlayerItem.updateImage(_:)(UIImage a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = UIImagePNGRepresentation(a1.super.isa);
  if (v8)
  {
    v9 = v8;
    v10 = sub_20C59D3CC();
    v12 = v11;

    v13 = [objc_allocWithZone(MEMORY[0x277CE6558]) init];
    [v13 setIdentifier_];
    [v13 setDataType_];
    v14 = sub_20C5A036C();
    [v13 setExtendedLanguageTag_];

    v15 = sub_20C59D3BC();
    [v13 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90, &unk_20C5A93D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A3A10;
    *(inited + 32) = v13;
    v17 = v13;
    v18 = [v2 externalMetadata];
    sub_20C4A7C30();
    v19 = sub_20C5A061C();

    v24 = v19;
    sub_20C4A72A4(inited);
    v20 = sub_20C5A060C();

    [v2 setExternalMetadata_];
    sub_20C4A7C7C(v10, v12);
  }

  else
  {
    sub_20C59FE2C();
    v21 = sub_20C5A01BC();
    v22 = sub_20C5A08AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20C472000, v21, v22, "[AVPlayerItem] failed to extract pngData from image", v23, 2u);
      MEMORY[0x20F2FFF90](v23, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_20C4A7044(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 externalMetadata];
  sub_20C4A7C30();
  v4 = sub_20C5A061C();

  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C5A0B3C())
  {
    v18 = v2;
    v6 = 0;
    v2 = (v4 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2FF0E0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      if (!v10)
      {
        goto LABEL_4;
      }

      v11 = v10;
      v12 = sub_20C5A039C();
      v14 = v13;
      if (v12 == sub_20C5A039C() && v14 == v15)
      {

        goto LABEL_5;
      }

      v17 = sub_20C5A0E9C();

      if (v17)
      {
      }

      else
      {
LABEL_4:
        sub_20C5A0C8C();
        sub_20C5A0CBC();
        sub_20C5A0CCC();
        sub_20C5A0C9C();
      }

LABEL_5:
      ++v6;
      if (v9 == i)
      {
        v2 = v18;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v19 = sub_20C5A060C();

  [v2 setExternalMetadata_];
}

uint64_t sub_20C4A72A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20C5A0B3C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_20C5A0B3C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20C4A7498(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20C4ED134(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_20C4A7394(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_20C4ECDFC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4790, &qword_20C5A6830);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20C4A7498(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20C5A0B3C();
LABEL_9:
  result = sub_20C5A0C4C();
  *v2 = result;
  return result;
}

NSObject *sub_20C4A7538(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setAllowedAudioSpatializationFormats_];
  sub_20C59FE5C();
  v9 = v2;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    *(v12 + 4) = [v9 allowedAudioSpatializationFormats];

    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_20C472000, v10, v11, "Setting allowedAudioSpatializationFormats to %lu on %@", v12, 0x16u);
    sub_20C4A7CD0(v13);
    MEMORY[0x20F2FFF90](v13, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  return v9;
}

id sub_20C4A7704(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if (*a1 != 9)
  {
    LOBYTE(v29) = *a1;
    sub_20C5074A8();
    v8 = sub_20C5A036C();
  }

  [v2 smm:v8 setMediaKind:?];

  sub_20C59FE5C();
  v9 = v2;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    v14 = [v9 smm_mediaKind];
    if (v14)
    {
      v15 = v14;
      v16 = sub_20C5A039C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v29 = v16;
    v30 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44F0, &qword_20C5A3600);
    v19 = sub_20C5A0A3C();
    v21 = v20;

    v22 = sub_20C479640(v19, v21, &v31);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v23 = v9;
    _os_log_impl(&dword_20C472000, v10, v11, "Setting mediaKind to %{mask.hash}s on %@", v12, 0x20u);
    sub_20C4A7CD0(v13);
    MEMORY[0x20F2FFF90](v13, -1, -1);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x20F2FFF90](v24, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);

    (*(v5 + 8))(v7, v28);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

id sub_20C4A79DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 smm:a1 setPlayerItemRestrictions:v6];
  sub_20C59FE5C();
  v9 = v2;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 141558530;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    v23 = [v9 smm_restrictions];
    type metadata accessor for PlayerItemRestriction(0);
    v16 = sub_20C5A041C();
    v18 = sub_20C479640(v16, v17, &v24);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2112;
    *(v13 + 24) = v9;
    *v14 = v9;
    v19 = v9;
    _os_log_impl(&dword_20C472000, v10, v11, "Setting restrictions to %{mask.hash}s on %@", v13, 0x20u);
    sub_20C4A7CD0(v14);
    MEMORY[0x20F2FFF90](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x20F2FFF90](v15, -1, -1);
    MEMORY[0x20F2FFF90](v13, -1, -1);

    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return v9;
}

unint64_t sub_20C4A7C30()
{
  result = qword_27C7C4780;
  if (!qword_27C7C4780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C4780);
  }

  return result;
}

uint64_t sub_20C4A7C7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20C4A7CD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20C4A7D38()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer) presentationLayer];
  if (v1)
  {
    v2 = v1;
    [v1 position];
    v4 = v3;
    v6 = v5;

    v7 = *(v0 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount);
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = sub_20C4A816C(0, v7 - 1);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = 0;
        v11 = (v8 + 40);
        do
        {
          if (*v11 == v6 && *(v11 - 1) == v4)
          {
            break;
          }

          ++v10;
          v11 += 2;
        }

        while (v9 != v10);
      }
    }
  }
}

char *SpriteSheetAnimationView.init(spriteImage:frameCount:columnCount:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount] = a2;
  *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_columnCount] = a3;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer] = v5;
  v6 = v5;
  v7 = [a1 CGImage];
  [v6 setContents_];

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SpriteSheetAnimationView();
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setClipsToBounds_];
  v9 = [v8 layer];
  [v9 addSublayer_];

  return v8;
}

id sub_20C4A7FC8()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SpriteSheetAnimationView();
  result = objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_columnCount];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount];
    if (v3 == 0x8000000000000000 && v2 == -1)
    {
      goto LABEL_10;
    }

    v5 = v3 / v2;
    v6 = v3 % v2 != 0;
    v7 = v5 + v6;
    if (!__OFADD__(v5, v6))
    {
      [v0 frame];
      v8 = CGRectGetHeight(v12) * v7;
      [v0 frame];
      v9 = CGRectGetWidth(v13) * v2;
      v10 = objc_opt_self();
      [v10 begin];
      [v10 disableActions];
      [*&v0[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer] setFrame_];
      return [v10 commit];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_20C4A816C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 bounds];
  if (a2 < a1)
  {
    goto LABEL_30;
  }

  v9 = v7;
  v10 = v8;
  result = objc_opt_self();
  v11 = *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_columnCount];
  if (!v11)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount];
  v13 = v12 / v11 * v11;
  if ((v12 / v11 * v11) >> 64 != v13 >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = result;
  v15 = *&v3[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer];
  if (v11 != -1 || v12 != 0x8000000000000000)
  {
    v16 = -v9;
    v17 = -v10;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      if (__OFSUB__(a1, v13))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v19 = a1 + 0x8000000000000000;
      if (v11 == -1 && !v19)
      {
        goto LABEL_28;
      }

      v20 = a1 / v11;
      if (a1 - v13 > 0)
      {
        break;
      }

      v21 = a1 / v11;
      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_16:
      [v15 frame];
      [v14 getCenter_];
      v23 = v22;
      v25 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20C4EC83C(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_20C4EC83C((v26 > 1), v27 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      if (a2 == a1)
      {
        return v18;
      }

      if (__OFADD__(a1++, 1))
      {
        goto LABEL_26;
      }
    }

    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_27;
    }

    if (v19)
    {
      goto LABEL_16;
    }

LABEL_15:
    if (v11 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_20C4A83DC(uint64_t a1, double a2)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer);
  v10 = sub_20C5A036C();
  [v9 removeAnimationForKey_];

  sub_20C4A7D38();
  if (v12)
  {
    sub_20C59FE2C();
    v13 = sub_20C5A01BC();
    v14 = sub_20C5A089C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20C472000, v13, v14, "[SpriteSheetAnimationView] Unable to find current frame index", v15, 2u);
      MEMORY[0x20F2FFF90](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  else if (__OFADD__(v11, a1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_20C4A816C(v11, v11 + a1);
    v25 = sub_20C4A95AC(v16, 1, a2);
    v17 = sub_20C5A036C();
    [v9 addAnimation:v25 forKey:v17];

    v18 = objc_opt_self();
    [v18 begin];
    [v18 setDisableActions_];
    v19 = *(v16 + 16);
    if (v19)
    {
      v20 = (v16 + 16 + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
    }

    else
    {
      v21 = 0.0;
      v22 = 0.0;
    }

    [v9 setPosition_];
    [v18 commit];
    v23 = v25;
  }
}

void sub_20C4A8684(uint64_t a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer);
  v8 = sub_20C5A036C();
  [v7 removeAnimationForKey_];

  sub_20C4A7D38();
  if (v10)
  {
    sub_20C59FE2C();
    v11 = sub_20C5A01BC();
    v12 = sub_20C5A089C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20C472000, v11, v12, "[SpriteSheetAnimationView] Unable to find current frame index", v13, 2u);
      MEMORY[0x20F2FFF90](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v14 = v9;
  v15 = *(v1 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount);
  v16 = __OFSUB__(v15, v14);
  v17 = v15 - v14;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (v17 == 0x8000000000000000 && a1 == -1)
  {
    goto LABEL_16;
  }

  sub_20C4A83DC(v15, (v17 / a1));
}

void sub_20C4A8880()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer);
  v2 = sub_20C5A036C();
  [v1 removeAnimationForKey_];
}

void sub_20C4A88F8(uint64_t a1, char *a2)
{
  v5 = *&v2[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_spriteImageLayer];
  v6 = sub_20C5A036C();
  [v5 removeAnimationForKey_];

  sub_20C4A7D38();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = *&v2[OBJC_IVAR____TtC12SeymourMedia24SpriteSheetAnimationView_frameCount];
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  v12 = sub_20C4A816C(0, v10 - 1);
  if (v11 < v9)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = v10;
  if (__OFADD__(v11, 1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v12;
  v14 = *(v12 + 16);
  if (v14 < v9 || v14 < v10)
  {
    goto LABEL_36;
  }

  if (v10 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease_n();
    sub_20C4A8D3C(v2, a2, v3, v9);
    v20 = v19;
    goto LABEL_23;
  }

  v28 = a2;
  if (!v9)
  {
    v17 = MEMORY[0x277D84F90] + 32;
    v16 = 1;
    if (a1)
    {
      goto LABEL_15;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = (2 * v9) | 1;

  v17 = (v13 + 32);
  if (!a1)
  {
    goto LABEL_27;
  }

LABEL_15:
  v30 = (2 * v10) | 1;

  v18 = swift_unknownObjectRetain();
  sub_20C4A9B48(v18, v17, 0, v16);
  swift_unknownObjectRelease();
  v2 = v13;
  a2 = v13 + 32;
  v3 = v9;
  v9 = v30;
  sub_20C5A0EAC();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v30 >> 1, v3))
  {
    goto LABEL_38;
  }

  if (v22 != (v30 >> 1) - v3)
  {
    goto LABEL_39;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v20)
  {
    goto LABEL_24;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  a1 = sub_20C4A95AC(v20, v28, (v10 / a1));
  v23 = sub_20C5A036C();
  [v5 addAnimation:a1 forKey:v23];

  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  v24 = *(v20 + 16);
  if (v24)
  {
    v25 = (v20 + 16 + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    goto LABEL_29;
  }

LABEL_28:
  v26 = 0.0;
  v27 = 0.0;
LABEL_29:

  [v5 setPosition_];
  [v2 commit];

  swift_unknownObjectRelease();
}

id SpriteSheetAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SpriteSheetAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpriteSheetAnimationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C4A8D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47B0, &qword_20C5A4BF0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_20C4A8E0C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v1[2];
  v8 = v4 - v7;
  if (__OFSUB__(v4, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v1[1];
  sub_20C5A0EAC();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  if (v9 + 16 * v7 + 16 * v8 != v10 + 16 * v11 + 32)
  {

    goto LABEL_9;
  }

  v12 = *(v10 + 24);

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v8, v13);
  v8 += v13;
  if (!v14)
  {
LABEL_9:
    if (v8 >= a1)
    {
LABEL_17:
      *v1 = v5;
      return;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_20C4AB30C(v4 - v15, a1);
      if (v4 >= v15)
      {
        v5 = v16;
        v17 = v16 + 4;
        memcpy(v16 + 4, (v1[1] + 16 * v15), 16 * (v4 - v15));
        if (!__OFSUB__(0, v15))
        {
          v18 = v5[2];
          v14 = __OFADD__(v15, v18);
          v19 = v15 + v18;
          if (!v14)
          {
            if (v19 >= v15)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {
                v20 = (2 * v19) | 1;
                swift_unknownObjectRelease();
                v1[1] = &v17[-2 * v15];
                v1[2] = v15;
                v1[3] = v20;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_20C4A8F84(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v31 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v31 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v31)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 16 * a2;
  v37 = v10;
  v38 = (v19 + 16 * a3);
  sub_20C4A944C(v8);
  if (v20)
  {
    v21 = v20;
    v36 = a4;
    v22 = v4[2];
    v23 = (v4[1] + 16 * v22);
    v24 = &v23[16 * a2];
    if (v18 != v23 || v18 >= v24)
    {
      memmove(v18, v23, 16 * a2);
    }

    v36(v19, a3);
    v25 = &v24[16 * v39];
    if (v38 != v25 || v38 >= &v25[16 * v14])
    {
      memmove(v38, v25, 16 * v14);
    }

    *(v21 + 16) = 0;
  }

  else
  {
    v22 = v4[2];
    v27 = v22 + a2;
    if (__OFADD__(v22, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v27 < v22)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v22))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v28 = v4[1];
    memcpy(v18, (v28 + 16 * v22), 16 * a2);
    a4(&v18[16 * a2], a3);
    v29 = v27 + v39;
    if (__OFADD__(v27, v39))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v30 = v4[3] >> 1;
    v31 = __OFSUB__(v30, v29);
    v32 = v30 < v29;
    v33 = v30 - v29;
    if (v32)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v31)
    {
LABEL_45:
      __break(1u);
      return;
    }

    memcpy(v38, (v28 + 16 * v29), 16 * v33);
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v22))
  {
    goto LABEL_36;
  }

  v34 = *(v37 + 16);
  v31 = __OFADD__(v22, v34);
  v35 = v22 + v34;
  if (v31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v35 < v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v35 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v37;
  v4[1] = &v18[-16 * v22];
  v4[2] = v22;
  v4[3] = (2 * v35) | 1;
}

void sub_20C4A91B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return;
  }

  sub_20C5A0EAC();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(v8 + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v3 & 1 | (2 * v11);
}

void sub_20C4A9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_20C5A0EAC();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  sub_20C4AB30C(v6, v25);
}

void sub_20C4A944C(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = (v4 >> 1) - v5;
    if (__OFSUB__(v4 >> 1, v5))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = v1[1] + 16 * v5;
    if (v4)
    {
      sub_20C5A0EAC();
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
        v8 = MEMORY[0x277D84F90];
      }

      v9 = *(v8 + 16);
      if (v7 + 16 * v6 == v8 + 16 * v9 + 32)
      {
        v11 = *(v8 + 24);

        v12 = (v11 >> 1) - v9;
        v13 = __OFADD__(v6, v12);
        v10 = v6 + v12;
        if (v13)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v10 < a1)
        {
          return;
        }

        sub_20C5A0EAC();
        swift_unknownObjectRetain();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          v14 = MEMORY[0x277D84F90];
        }

        v15 = v7 - v14 - 17;
        if (v7 - v14 - 32 >= 0)
        {
          v15 = v7 - v14 - 32;
        }

        v13 = __OFADD__(v6, v15 >> 4);
        v4 = v6 + (v15 >> 4);
        if (!v13)
        {
          v3 = *(v14 + 16);
          if (v4 >= v3)
          {
            return;
          }

LABEL_21:
          sub_20C4A9798(v4, v3, 0);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v10 = v6;
    goto LABEL_10;
  }
}

id sub_20C4A95AC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_20C5A036C();
  v7 = [objc_opt_self() animationWithKeyPath_];

  v8 = *(a1 + 16);
  if (v8)
  {
    v21 = MEMORY[0x277D84F90];
    sub_20C4C47AC(0, v8, 0);
    v9 = v21;
    v10 = objc_opt_self();
    v11 = (a1 + 40);
    do
    {
      v12 = [v10 valueWithCGPoint_];
      v20 = sub_20C4A9E80();
      v21 = v9;
      *&v19 = v12;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20C4C47AC((v13 > 1), v14 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v14 + 1;
      sub_20C4947E4(&v19, (v9 + 32 * v14 + 32));
      v11 += 2;
      --v8;
    }

    while (v8);
  }

  v15 = sub_20C5A060C();

  [v7 setValues_];

  [v7 setCalculationMode_];
  v16 = v7;
  [v16 setDuration_];
  *&v17 = a2;
  [v16 setRepeatCount_];

  return v16;
}

unint64_t sub_20C4A9798(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_20C4A9840(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_54;
  }

  v5 = a1[4];
  v6 = a1[3] >> 1;
  if (v5 != v6)
  {
    if (v5 < a1[2] || v5 >= v6)
    {
      goto LABEL_55;
    }

    v8 = v1;
    v35 = a1[2];
    v36 = a1[3] >> 1;
    v9 = v5 + 1;
    v10 = *(a1[1] + 16 * v5);
    v33 = -v6;
    v34 = a1[1];
    while (!__OFADD__(v4, 1))
    {
      v39 = v10;
      sub_20C4A9270(v4, v4 + 1, *v8, v8[1], v3, v2);
      v41 = v11;
      v12 = sub_20C4A9430();
      v13 = v8;
      sub_20C4A8F84(&v41, v4, 0, v12);

      v3 = v8[2];
      v2 = v8[3];
      v14 = (v2 >> 1) - v3;
      if (__OFSUB__(v2 >> 1, v3))
      {
        goto LABEL_48;
      }

      v37 = v2 >> 1;
      v15 = v8[1];
      v16 = v15 + 16 * v3;
      if (v2)
      {
        v38 = v8[3];
        sub_20C5A0EAC();
        swift_unknownObjectRetain();
        v17 = swift_dynamicCastClass();
        if (!v17)
        {
          swift_unknownObjectRelease();
          v17 = MEMORY[0x277D84F90];
        }

        v18 = *(v17 + 16);
        if (v16 + 16 * v14 == v17 + 16 * v18 + 32)
        {
          v20 = *(v17 + 24);

          v21 = (v20 >> 1) - v18;
          v22 = __OFADD__(v14, v21);
          v19 = v14 + v21;
          if (v22)
          {
            goto LABEL_53;
          }

          v8 = v13;
        }

        else
        {

          v19 = v14;
        }

        v2 = v38;
      }

      else
      {
        v19 = (v2 >> 1) - v3;
      }

      v10 = v39;
      if (v4 >= v19)
      {
        v24 = 0;
        v22 = __OFSUB__(v4, v14);
        v25 = v4 - v14;
        if (v22)
        {
          goto LABEL_49;
        }
      }

      else
      {
        *(v16 + 16 * v4) = v39;
        v23 = v4 + 1;
        if (v9 == v36)
        {
          v10 = 0uLL;
          v24 = 1;
          v9 = v36;
          ++v4;
          v22 = __OFSUB__(v23, v14);
          v25 = v23 - v14;
          if (v22)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v26 = 0;
          while (1)
          {
            if (v9 < v35 || (v27 = v26, v9 + v26 >= v36))
            {
              __break(1u);
              goto LABEL_47;
            }

            v10 = *(v34 + 16 * v9 + 16 * v26);
            if (!(v23 - v19 + v26))
            {
              break;
            }

            *(v15 + 16 * v4 + 16 * v3 + 16 + 16 * v26++) = v10;
            if (!(v33 + v9 + v27 + 1))
            {
              v4 = v23 + v26;
              v10 = 0uLL;
              v9 = v36;
              goto LABEL_37;
            }
          }

          v9 += v26 + 1;
          v4 = v19;
LABEL_37:
          v24 = v23 + v27 < v19;
          v22 = __OFSUB__(v4, v14);
          v25 = v4 - v14;
          if (v22)
          {
            goto LABEL_49;
          }
        }
      }

      if (v25)
      {
        v28 = v2;
        v40 = v10;
        sub_20C5A0EAC();
        swift_unknownObjectRetain();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          swift_unknownObjectRelease();
          v29 = MEMORY[0x277D84F90];
        }

        v30 = *(v29 + 16);
        v22 = __OFADD__(v30, v25);
        v31 = v30 + v25;
        if (v22)
        {
          goto LABEL_50;
        }

        *(v29 + 16) = v31;

        v32 = v37 + v25;
        if (__OFADD__(v37, v25))
        {
          goto LABEL_51;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v2 = v28 & 1 | (2 * v32);
        v8[3] = v2;
        v10 = v40;
      }

      if (v24)
      {
        return;
      }
    }

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
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }
}

void sub_20C4A9B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_20C5A0EAC();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + 16 * v8 + 16 * v9 != v13 + 16 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  v19 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < v19)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v15;
    if (v20 > v19)
    {
      v19 = v20;
    }
  }

  sub_20C4A8E0C(v19);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = (v4[1] + 16 * v22 + 16 * v23);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v27 = v23;
    goto LABEL_23;
  }

  sub_20C5A0EAC();
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);
  if (v24 != (v25 + 16 * v26 + 32))
  {

    goto LABEL_21;
  }

  v28 = *(v25 + 24);

  v29 = (v28 >> 1) - v26;
  v18 = __OFADD__(v23, v29);
  v27 = v23 + v29;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v30 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v30 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  memcpy(v24, (a2 + 16 * a3), 16 * v6);
  if (v6 > 0)
  {
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return;
    }

    sub_20C4A91B8(v23 + v6);
  }

LABEL_31:
  if (v6 == v30)
  {
    v33[0] = a1;
    v33[1] = a2;
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = v5;
    sub_20C4A9840(v33);
  }
}

unint64_t sub_20C4A9E80()
{
  result = qword_27C7C47B8;
  if (!qword_27C7C47B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C47B8);
  }

  return result;
}

void *SessionTimeline.deinit()
{
  v1 = v0[8];
  v2 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v1);
  (*(v2 + 24))(v1, v2);
  v3 = v0[8];
  v4 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
  (*(v4 + 32))(v3, v4);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  sub_20C4A9FB8(v0 + OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot);
  return v0;
}

uint64_t sub_20C4A9FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20, &unk_20C5A2D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionTimeline.__deallocating_deinit()
{
  SessionTimeline.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *SessionTimeline.__allocating_init(dependencies:workout:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_20C4AEC4C(a1, a2);

  return v6;
}

void *SessionTimeline.init(dependencies:workout:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_20C4AEC4C(a1, a2);

  return v4;
}

uint64_t sub_20C4AA120(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C59ECFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59F58C();
    sub_20C4AAC14(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_20C4AA22C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong[8];
    v4 = Strong[9];
    v5 = Strong;
    __swift_project_boxed_opaque_existential_1(Strong + 5, v3);
    (*(v4 + 24))(v3, v4);
    v6 = v5[8];
    v7 = v5[9];
    __swift_project_boxed_opaque_existential_1(v5 + 5, v6);
    (*(v7 + 32))(v6, v7);
  }

  return result;
}

uint64_t sub_20C4AA2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *), uint64_t a6)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = (a4)(0, v12);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v21 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 24);
    v21[1] = a6;
    v21[2] = v20;
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v11 + 16))(v14, a1, v10);
    a5(v14);
    sub_20C59F5FC();
    swift_unknownObjectRelease();
    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

void sub_20C4AA4E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v7);
  v9 = *(v8 + 16);
  v10 = type metadata accessor for AudioHint(0);
  v11 = sub_20C4B0AFC(&qword_27C7C47C0, type metadata accessor for AudioHint, &protocol conformance descriptor for AudioHint);

  v9(v12, v10, &protocol witness table for AudioHint, v11, v7, v8);

  v1[20] = a1;

  v13 = v1[8];
  v14 = v1[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v15 = *(v14 + 8);

  v40 = v10;
  v17 = v13;
  v18 = v43;
  v15(v16, v10, &protocol witness table for AudioHint, v11, v17, v14);
  sub_20C59FE6C();

  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();

  if (!os_log_type_enabled(v19, v20))
  {

    (*(v42 + 8))(v18, v41);
    return;
  }

  v21 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v45 = v38;
  v39 = v21;
  *v21 = 136446210;
  v22 = v2[20];
  v23 = v22[2];
  if (v23)
  {
    v36 = v20;
    v24 = sub_20C4AB3E0(v23, 0, &qword_27C7C4828, &qword_20C5A6840, type metadata accessor for AudioHint);
    sub_20C4AE1FC(&v44, v24 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80)), v23, v22);
    v37 = v25;
    v26 = v44;
    swift_bridgeObjectRetain_n();
    sub_20C483B94(v26);
    if (v37 != v23)
    {
      __break(1u);

      __break(1u);
      return;
    }

    LOBYTE(v20) = v36;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v44 = v24;
  sub_20C4AB704(&v44, type metadata accessor for AudioHint, sub_20C557E14, sub_20C4ABCF0);
  v27 = v41;
  v28 = v42;

  v29 = MEMORY[0x20F2FEAF0](v44, v40);
  v31 = v30;

  v32 = sub_20C479640(v29, v31, &v45);

  v33 = v39;
  *(v39 + 1) = v32;
  _os_log_impl(&dword_20C472000, v19, v20, "AudioHint events: %{public}s", v33, 0xCu);
  v34 = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  MEMORY[0x20F2FFF90](v34, -1, -1);
  MEMORY[0x20F2FFF90](v33, -1, -1);

  (*(v28 + 8))(v18, v27);
}

uint64_t sub_20C4AA934()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v2);
  v4 = v0[15];
  v5 = *(v3 + 8);
  v6 = sub_20C59DB3C();
  v7 = sub_20C4B0AFC(&qword_27C7C47F0, MEMORY[0x277D50520], MEMORY[0x277D50528]);
  v5(v4, v6, &protocol witness table for CoachingEvent, v7, v2, v3);
  v8 = v0[8];
  v9 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v10 = v0[16];
  v11 = *(v9 + 8);
  v12 = sub_20C59DF2C();
  v13 = sub_20C4B0AFC(&qword_27C7C47F8, MEMORY[0x277D50A68], MEMORY[0x277D50A70]);
  v11(v10, v12, &protocol witness table for CommentaryEvent, v13, v8, v9);
  v14 = v0[8];
  v15 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v16 = v0[17];
  v17 = *(v15 + 8);
  v18 = sub_20C59D86C();
  v19 = sub_20C4B0AFC(&qword_27C7C4800, MEMORY[0x277D50018], MEMORY[0x277D50020]);
  v17(v16, v18, &protocol witness table for MediaMoment, v19, v14, v15);
  v20 = v0[8];
  v21 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v22 = v0[18];
  v23 = *(v21 + 8);
  v24 = sub_20C59D7DC();
  v25 = sub_20C4B0AFC(&qword_27C7C4808, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED0]);
  v23(v22, v24, &protocol witness table for MusicTrack, v25, v20, v21);
  v26 = v0[8];
  v27 = v0[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v28 = v0[19];
  v29 = *(v27 + 8);
  v30 = sub_20C59DAEC();
  v31 = sub_20C4B0AFC(&qword_27C7C4810, MEMORY[0x277D503E8], MEMORY[0x277D503F0]);
  return v29(v28, v30, &protocol witness table for TrainerEvent, v31, v26, v27);
}

uint64_t sub_20C4AAC14(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_20C5A01CC();
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C59ECFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20, &unk_20C5A2D20);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot;
  swift_beginAccess();
  v61 = v20;
  sub_20C4B0A1C(v2 + v20, v19);
  v21 = *(v6 + 48);
  v62 = v5;
  if (v21(v19, 1, v5))
  {
    sub_20C4A9FB8(v19);
    v22 = v60;
    sub_20C59EC7C();
    v23 = v61;
LABEL_3:
    v24 = v2[8];
    v25 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v24);
    (*(v25 + 40))(v22, v24, v25);
    v26 = v59;
    v27 = v62;
    (*(v6 + 16))(v59, v22, v62);
    (*(v6 + 56))(v26, 0, 1, v27);
    swift_beginAccess();
    sub_20C4B0A8C(v26, v2 + v23);
    return swift_endAccess();
  }

  v52 = v8;
  v53 = v3;
  v29 = *(v6 + 16);
  v30 = v62;
  v29(v11, v19, v62);
  sub_20C4A9FB8(v19);
  sub_20C59EC7C();
  v32 = v31;
  v33 = *(v6 + 8);
  v54 = v11;
  v55 = v33;
  v56 = v6 + 8;
  v33(v11, v30);
  v22 = v60;
  sub_20C59EC7C();
  v23 = v61;
  if (v32 != v34)
  {
    goto LABEL_3;
  }

  sub_20C4B0A1C(v2 + v61, v16);
  v35 = v62;
  if (v21(v16, 1, v62))
  {
    sub_20C4A9FB8(v16);
    sub_20C59ECDC();
    goto LABEL_3;
  }

  v36 = v54;
  v29(v54, v16, v35);
  sub_20C4A9FB8(v16);
  v37 = sub_20C59ECDC();
  v38 = v36;
  v23 = v61;
  v55(v38, v35);
  v39 = sub_20C59ECDC();
  BYTE4(v65) = BYTE4(v37) & 1;
  LODWORD(v65) = v37;
  v63 = v39;
  v64 = BYTE4(v39) & 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if ((sub_20C59DA6C() & 1) == 0)
  {
    goto LABEL_3;
  }

  v40 = v57;
  sub_20C59FE6C();
  v41 = v52;
  v29(v52, v22, v62);
  v42 = sub_20C5A01BC();
  v43 = sub_20C5A08AC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 136315138;
    sub_20C4B0AFC(&qword_27C7C5A90, MEMORY[0x277D53C58], MEMORY[0x277D53C60]);
    v46 = v62;
    v47 = sub_20C5A0E6C();
    v49 = v48;
    v55(v41, v46);
    v50 = sub_20C479640(v47, v49, &v65);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_20C472000, v42, v43, "Skipping playback update: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x20F2FFF90](v45, -1, -1);
    MEMORY[0x20F2FFF90](v44, -1, -1);
  }

  else
  {

    v55(v41, v62);
  }

  return (*(v58 + 8))(v40, v53);
}

char *sub_20C4AB218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4820, &qword_20C5A4CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_20C4AB30C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47B0, &qword_20C5A4BF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_20C4AB3E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_20C4AB4DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90, &unk_20C5A93D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_20C4AB564(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B00, &unk_20C5A9110);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8, &qword_20C5A85F0) - 8);
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

void *sub_20C4AB66C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E0, &unk_20C5A90E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_20C4AB704(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

void sub_20C4AB7C8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C59DAEC();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59DAEC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4AC488(v8, v9, a1, v4, MEMORY[0x277D503E8], MEMORY[0x277D503E0], MEMORY[0x277D503E8], MEMORY[0x277D503E0], sub_20C51E730);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C4AC1D8(0, v2, 1, a1, MEMORY[0x277D503E8], MEMORY[0x277D503E0]);
  }
}

void sub_20C4AB980(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C59D86C();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59D86C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4AC488(v8, v9, a1, v4, MEMORY[0x277D50018], MEMORY[0x277D50010], MEMORY[0x277D50018], MEMORY[0x277D50010], sub_20C51E748);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C4AC1D8(0, v2, 1, a1, MEMORY[0x277D50018], MEMORY[0x277D50010]);
  }
}

void sub_20C4ABB38(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C59DB3C();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59DB3C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4AC488(v8, v9, a1, v4, MEMORY[0x277D50520], MEMORY[0x277D50518], MEMORY[0x277D50520], MEMORY[0x277D50518], sub_20C51E778);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C4AC1D8(0, v2, 1, a1, MEMORY[0x277D50520], MEMORY[0x277D50518]);
  }
}

void sub_20C4ABCF0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AudioHint(0);
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AudioHint(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4ACF38(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C4ABFD4(0, v2, 1, a1);
  }
}

void sub_20C4ABE1C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C5A0E4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C59D7DC();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59D7DC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C4AC488(v8, v9, a1, v4, MEMORY[0x277D4FEC8], MEMORY[0x277D4FEC0], MEMORY[0x277D4FEC8], MEMORY[0x277D4FEC0], sub_20C51E7A8);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C4AC1D8(0, v2, 1, a1, MEMORY[0x277D4FEC8], MEMORY[0x277D4FEC0]);
  }
}

void sub_20C4ABFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AudioHint(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - v12);
  MEMORY[0x28223BE20](v14);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    v33 = v20;
    while (1)
    {
      sub_20C4B0B44(v23, v17);
      sub_20C4B0B44(v20, v13);
      v25 = v17[2];
      v26 = v13[2];
      sub_20C4B0BA8(v13);
      sub_20C4B0BA8(v17);
      if (v25 >= v26)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_20C4B0C04(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_20C4B0C04(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C4AC1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), double (*a6)(void))
{
  v51 = a6;
  v10 = a5(0);
  MEMORY[0x28223BE20](v10);
  v46 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v36 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v36 - v17;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v47 = *(v15 + 16);
    v48 = v15 + 16;
    v19 = *(v15 + 72);
    v20 = (v15 + 8);
    v21 = (v18 + v19 * (a3 - 1));
    v43 = -v19;
    v44 = (v15 + 32);
    v22 = a1 - a3;
    v45 = v18;
    v37 = v19;
    v23 = v18 + v19 * a3;
    v24 = v50;
LABEL_5:
    v41 = v21;
    v42 = a3;
    v39 = v23;
    v40 = v22;
    v25 = v22;
    while (1)
    {
      v26 = v49;
      v27 = v47;
      (v47)(v49, v23, v10, v16);
      v28 = v27(v24, v21, v10);
      v29 = v51;
      v30 = (v51)(v28);
      v31 = v29();
      v32 = *v20;
      (*v20)(v24, v10);
      v32(v26, v10);
      if (v30 >= v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v21 = &v41[v37];
        v22 = v40 - 1;
        v23 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      v33(v21, v34, v10);
      v21 += v43;
      v23 += v43;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C4AC488(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void), double (*a6)(void), uint64_t (*a7)(void), double (*a8)(void), void (*a9)(unint64_t *, unint64_t *, unint64_t *))
{
  v134 = a8;
  v139 = a7;
  v149 = a6;
  v11 = v9;
  v128 = a1;
  v138 = a9;
  v14 = (a5)(0, a2);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v131 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = &v124 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = (&v124 - v20);
  v22 = MEMORY[0x28223BE20](v21);
  v147 = (&v124 - v23);
  v140 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_97:
    v25 = v134;
    v10 = *v128;
    if (!*v128)
    {
      goto LABEL_136;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v118 = a3;
    }

    else
    {
LABEL_130:
      v118 = sub_20C553FB0(a3);
    }

    v151 = v118;
    v119 = *(v118 + 2);
    if (v119 >= 2)
    {
      while (*v140)
      {
        a3 = v119 - 1;
        v120 = *&v118[16 * v119];
        v121 = v118;
        v122 = *&v118[16 * v119 + 24];
        sub_20C4ADBE0(*v140 + v15[9] * v120, *v140 + v15[9] * *&v118[16 * v119 + 16], *v140 + v15[9] * v122, v10, v139, v25, v138);
        if (v11)
        {
          goto LABEL_108;
        }

        if (v122 < v120)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_20C553FB0(v121);
        }

        if (v119 - 2 >= *(v121 + 2))
        {
          goto LABEL_124;
        }

        v123 = &v121[16 * v119];
        *v123 = v120;
        *(v123 + 1) = v122;
        v151 = v121;
        sub_20C553F24(a3);
        v118 = v151;
        v119 = *(v151 + 2);
        if (v119 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v25 = 0;
  v145 = (v15 + 1);
  v146 = v15 + 2;
  v144 = (v15 + 4);
  v26 = MEMORY[0x277D84F90];
  v137 = v15;
  v150 = v14;
  v127 = a4;
  while (1)
  {
    v27 = v25;
    v132 = v26;
    if (v25 + 1 >= v24)
    {
      v40 = v25 + 1;
    }

    else
    {
      v141 = v24;
      v126 = v11;
      v28 = *v140;
      v133 = v28;
      v29 = v15[9];
      v10 = v25;
      v30 = v28 + v29 * (v25 + 1);
      v31 = v15[2];
      v25 = v147;
      v31(v147, v30, v14, v22);
      v32 = v28 + v29 * v10;
      v33 = v148;
      v136 = v31;
      v34 = (v31)(v148, v32, v14);
      v35 = v149;
      v36 = (v149)(v34);
      v37 = v35();
      v38 = v15[1];
      v38(v33, v14);
      v135 = v38;
      v38(v25, v14);
      v125 = v10;
      v39 = v10 + 2;
      v142 = v29;
      a3 = v133 + v29 * (v10 + 2);
      while (1)
      {
        v40 = v141;
        if (v141 == v39)
        {
          break;
        }

        v41 = v147;
        v10 = v150;
        v42 = v136;
        v136(v147, a3, v150);
        v25 = v148;
        v43 = v42(v148, v30, v10);
        v44 = v149;
        v45 = (v149)(v43);
        v46 = v44();
        v47 = v135;
        (v135)(v25, v10);
        v47(v41, v10);
        v15 = v137;
        ++v39;
        a3 += v142;
        v30 += v142;
        if (v36 < v37 == v45 >= v46)
        {
          v40 = v39 - 1;
          break;
        }
      }

      v11 = v126;
      v48 = v132;
      v14 = v150;
      a4 = v127;
      v27 = v125;
      if (v36 < v37)
      {
        if (v40 < v125)
        {
          goto LABEL_127;
        }

        if (v125 < v40)
        {
          v49 = v142 * (v40 - 1);
          v50 = v40 * v142;
          v141 = v40;
          v51 = v40;
          v52 = v125;
          v53 = v125 * v142;
          do
          {
            if (v52 != --v51)
            {
              v54 = *v140;
              if (!*v140)
              {
                goto LABEL_133;
              }

              a3 = v54 + v53;
              v25 = *v144;
              (*v144)(v131, v54 + v53, v150, v48);
              if (v53 < v49 || a3 >= v54 + v50)
              {
                v10 = v150;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v10 = v150;
                if (v53 != v49)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              (v25)(v54 + v49, v131, v10);
              v48 = v132;
            }

            ++v52;
            v49 -= v142;
            v50 -= v142;
            v53 += v142;
          }

          while (v52 < v51);
          v11 = v126;
          v15 = v137;
          v14 = v150;
          a4 = v127;
          v27 = v125;
          v40 = v141;
        }
      }
    }

    v55 = v140[1];
    if (v40 < v55)
    {
      if (__OFSUB__(v40, v27))
      {
        goto LABEL_126;
      }

      if (v40 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_128;
        }

        if (v27 + a4 >= v55)
        {
          v25 = v140[1];
        }

        else
        {
          v25 = (v27 + a4);
        }

        if (v25 < v27)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v40 != v25)
        {
          break;
        }
      }
    }

    v25 = v40;
    if (v40 < v27)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v132;
    }

    else
    {
      v26 = sub_20C4EC940(0, *(v132 + 2) + 1, 1, v132);
    }

    a3 = *(v26 + 2);
    v56 = *(v26 + 3);
    v57 = a3 + 1;
    if (a3 >= v56 >> 1)
    {
      v26 = sub_20C4EC940((v56 > 1), a3 + 1, 1, v26);
    }

    *(v26 + 2) = v57;
    v58 = &v26[16 * a3];
    *(v58 + 4) = v27;
    *(v58 + 5) = v25;
    if (!*v128)
    {
      goto LABEL_135;
    }

    if (a3)
    {
      v10 = *v128;
      while (1)
      {
        v59 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v26 + 4);
          v61 = *(v26 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_53:
          if (v63)
          {
            goto LABEL_114;
          }

          v76 = &v26[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_117;
          }

          v82 = &v26[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_121;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v57 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v86 = &v26[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_67:
        if (v81)
        {
          goto LABEL_116;
        }

        v89 = &v26[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_74:
        a3 = v59 - 1;
        if (v59 - 1 >= v57)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v140)
        {
          goto LABEL_132;
        }

        v97 = v26;
        v98 = *&v26[16 * a3 + 32];
        v99 = *&v26[16 * v59 + 40];
        sub_20C4ADBE0(*v140 + v15[9] * v98, *v140 + v15[9] * *&v26[16 * v59 + 32], *v140 + v15[9] * v99, v10, v139, v134, v138);
        if (v11)
        {
          goto LABEL_108;
        }

        if (v99 < v98)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v100 = v97;
        }

        else
        {
          v100 = sub_20C553FB0(v97);
        }

        v14 = v150;
        if (a3 >= *(v100 + 2))
        {
          goto LABEL_111;
        }

        v101 = &v100[16 * a3];
        *(v101 + 4) = v98;
        *(v101 + 5) = v99;
        v151 = v100;
        sub_20C553F24(v59);
        v26 = v151;
        v57 = *(v151 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v26[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_112;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_113;
      }

      v71 = &v26[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_115;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_118;
      }

      if (v75 >= v67)
      {
        v93 = &v26[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_122;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v24 = v140[1];
    a4 = v127;
    if (v25 >= v24)
    {
      goto LABEL_97;
    }
  }

  v126 = v11;
  v102 = *v140;
  v103 = v15[9];
  v104 = v15[2];
  a3 = *v140 + v103 * (v40 - 1);
  v105 = -v103;
  v125 = v27;
  v106 = v27 - v40;
  v141 = v40;
  v142 = v102;
  v129 = v103;
  v107 = v102 + v40 * v103;
  v130 = v25;
LABEL_87:
  v133 = v107;
  v135 = v106;
  v136 = a3;
  while (1)
  {
    v10 = v147;
    v104(v147, v107, v14, v22);
    v108 = v148;
    v109 = (v104)(v148, a3, v150);
    v110 = v149;
    v111 = (v149)(v109);
    v112 = v110();
    v113 = *v145;
    v114 = v108;
    v14 = v150;
    (*v145)(v114, v150);
    v113(v10, v14);
    if (v111 >= v112)
    {
LABEL_86:
      a3 = v136 + v129;
      v106 = v135 - 1;
      v107 = v133 + v129;
      v25 = v130;
      if (++v141 != v130)
      {
        goto LABEL_87;
      }

      v11 = v126;
      v15 = v137;
      v27 = v125;
      if (v130 < v125)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v142)
    {
      break;
    }

    v115 = v143;
    v10 = v144;
    v116 = *v144;
    (*v144)(v143, v107, v14);
    swift_arrayInitWithTakeFrontToBack();
    (v116)(a3, v115, v14);
    a3 += v105;
    v107 += v105;
    if (__CFADD__(v106++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_20C4ACF38(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v117 = type metadata accessor for AudioHint(0);
  v113 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v109 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v116 = &v102 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v102 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v102 - v16);
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_20C553FB0(v20);
    }

    v118 = v20;
    v98 = *(v20 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v20[16 * v98];
        v100 = *&v20[16 * v98 + 24];
        sub_20C4AD77C(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v20[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v100 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20C553FB0(v20);
        }

        if (v98 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v101 = &v20[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v118 = v20;
        sub_20C553F24(v98 - 1);
        v20 = v118;
        v98 = *(v118 + 2);
        if (v98 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v105 = a4;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v115;
      v25 = *(v113 + 72);
      v5 = *v115 + v25 * v22;
      sub_20C4B0B44(v5, v17);
      sub_20C4B0B44(v24 + v25 * v23, v14);
      v26 = v17[2];
      v27 = v14[2];
      sub_20C4B0BA8(v14);
      sub_20C4B0BA8(v17);
      v106 = v23;
      v28 = v23 + 2;
      v114 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_20C4B0B44(v29, v17);
        sub_20C4B0B44(v5, v14);
        v30 = v17[2];
        v31 = v14[2];
        sub_20C4B0BA8(v14);
        sub_20C4B0BA8(v17);
        ++v28;
        v29 += v114;
        v5 += v114;
        if (v26 < v27 == v30 >= v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v106;
      if (v26 < v27)
      {
        if (v18 < v106)
        {
          goto LABEL_123;
        }

        if (v106 < v18)
        {
          v103 = v20;
          v104 = v6;
          v32 = v114 * (v18 - 1);
          v33 = v18 * v114;
          v112 = v18;
          v34 = v18;
          v35 = v106;
          v36 = v106 * v114;
          do
          {
            if (v35 != --v34)
            {
              v5 = *v115;
              if (!*v115)
              {
                goto LABEL_129;
              }

              sub_20C4B0C04(v5 + v36, v109);
              if (v36 < v32 || v5 + v36 >= v5 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_20C4B0C04(v109, v5 + v32);
            }

            ++v35;
            v32 -= v114;
            v33 -= v114;
            v36 += v114;
          }

          while (v35 < v34);
          v20 = v103;
          v6 = v104;
          v21 = v106;
          v18 = v112;
        }
      }
    }

    v37 = v115[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_122;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_124;
        }

        if (v21 + v105 >= v37)
        {
          v38 = v115[1];
        }

        else
        {
          v38 = v21 + v105;
        }

        if (v38 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

    v39 = v18;
    if (v18 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_20C4EC940(0, *(v20 + 2) + 1, 1, v20);
    }

    v41 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v20 = sub_20C4EC940((v40 > 1), v41 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * v41];
    *(v42 + 4) = v21;
    *(v42 + 5) = v39;
    v43 = *v107;
    if (!*v107)
    {
      goto LABEL_131;
    }

    v110 = v39;
    if (v41)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_110;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_117;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_112;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        v82 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_125;
        }

        if (!*v115)
        {
          goto LABEL_128;
        }

        v83 = *&v20[16 * v82 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_20C4AD77C(*v115 + *(v113 + 72) * v83, *v115 + *(v113 + 72) * *&v20[16 * v44 + 32], *v115 + *(v113 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v83)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20C553FB0(v20);
        }

        if (v82 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v84 = &v20[16 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v20;
        sub_20C553F24(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v115[1];
    v19 = v110;
    if (v110 >= v18)
    {
      goto LABEL_94;
    }
  }

  v103 = v20;
  v104 = v6;
  v85 = *v115;
  v86 = *(v113 + 72);
  v87 = *v115 + v86 * (v18 - 1);
  v88 = v18;
  v89 = -v86;
  v106 = v21;
  v90 = v21 - v88;
  v112 = v88;
  v108 = v86;
  v91 = v85 + v88 * v86;
  v110 = v38;
LABEL_85:
  v5 = v91;
  v111 = v90;
  v92 = v90;
  v114 = v87;
  v93 = v87;
  while (1)
  {
    sub_20C4B0B44(v5, v17);
    sub_20C4B0B44(v93, v14);
    v94 = v17[2];
    v95 = v14[2];
    sub_20C4B0BA8(v14);
    sub_20C4B0BA8(v17);
    if (v94 >= v95)
    {
LABEL_84:
      v87 = v114 + v108;
      v90 = v111 - 1;
      v91 += v108;
      v39 = v110;
      if (++v112 != v110)
      {
        goto LABEL_85;
      }

      v20 = v103;
      v6 = v104;
      v21 = v106;
      if (v110 < v106)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    v96 = v116;
    sub_20C4B0C04(v5, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_20C4B0C04(v96, v93);
    v93 += v89;
    v5 += v89;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20C4AD77C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = type metadata accessor for AudioHint(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v41 = v24;
      v42 = a4;
      do
      {
        v39 = v23;
        v26 = a2 + v24;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v23 = v39;
            goto LABEL_57;
          }

          v28 = a3;
          v40 = v23;
          a3 += v24;
          v29 = v25 + v24;
          sub_20C4B0B44(v29, v11);
          v30 = v26;
          v31 = v26;
          v32 = v11;
          v33 = v44;
          sub_20C4B0B44(v31, v44);
          v34 = *(v32 + 16);
          v35 = *(v33 + 16);
          v36 = v33;
          v11 = v32;
          sub_20C4B0BA8(v36);
          sub_20C4B0BA8(v32);
          if (v34 < v35)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v29;
            v26 = v30;
          }

          else
          {
            v26 = v30;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v29;
            }
          }

          v25 = v23;
          v27 = v29 > v42;
          v24 = v41;
          if (!v27)
          {
            goto LABEL_55;
          }
        }

        if (v28 < a2 || a3 >= a2)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v41;
        }

        else
        {
          v37 = v28 == a2;
          a2 = v30;
          v24 = v41;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v40;
      }

      while (v25 > v42);
    }

LABEL_55:
    v47 = a2;
LABEL_57:
    v45 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        sub_20C4B0B44(a2, v11);
        v20 = v44;
        sub_20C4B0B44(a4, v44);
        v21 = v11[2];
        v22 = *(v20 + 16);
        sub_20C4B0BA8(v20);
        sub_20C4B0BA8(v11);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v18 && a2 < a3);
    }
  }

  sub_20C51E790(&v47, &v46, &v45);
}

void sub_20C4ADBE0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), double (*a6)(void), void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v67 = a6;
  v12 = a5(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v66 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v53 - v16;
  v64 = *(v17 + 72);
  if (!v64)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_62;
  }

  v55 = a7;
  v19 = (a2 - a1) / v64;
  v70 = a1;
  v69 = a4;
  if (v19 >= v18 / v64)
  {
    v22 = v18 / v64 * v64;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v22;
    if (v22 >= 1)
    {
      v36 = -v64;
      v59 = a4;
      v60 = (v13 + 16);
      v57 = (v13 + 8);
      v58 = a1;
      v37 = a4 + v22;
      v61 = -v64;
      do
      {
        v54 = v35;
        v38 = a2;
        v39 = a2 + v36;
        v62 = v38;
        v63 = v39;
        while (1)
        {
          if (v38 <= a1)
          {
            v70 = v38;
            v68 = v54;
            goto LABEL_59;
          }

          v41 = a3;
          v56 = v35;
          v64 = a3 + v36;
          v42 = v37 + v36;
          v43 = *v60;
          v44 = v65;
          (*v60)(v65, v42, v12);
          v45 = v12;
          v46 = v66;
          v47 = (v43)(v66, v39, v45);
          v48 = v67;
          v49 = (v67)(v47);
          v50 = v48();
          v51 = *v57;
          v52 = v46;
          v12 = v45;
          (*v57)(v52, v45);
          v51(v44, v45);
          if (v49 < v50)
          {
            break;
          }

          v35 = v42;
          a3 = v64;
          if (v41 < v37 || v64 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v63;
            a1 = v58;
          }

          else
          {
            v39 = v63;
            a1 = v58;
            if (v41 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v42;
          v40 = v42 > v59;
          v36 = v61;
          v38 = v62;
          if (!v40)
          {
            a2 = v62;
            goto LABEL_58;
          }
        }

        a3 = v64;
        if (v41 < v62 || v64 >= v62)
        {
          a2 = v63;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v58;
          v35 = v56;
          v36 = v61;
        }

        else
        {
          a2 = v63;
          a1 = v58;
          v35 = v56;
          v36 = v61;
          if (v41 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v59);
    }

LABEL_58:
    v70 = a2;
    v68 = v35;
  }

  else
  {
    v20 = v19 * v64;
    v21 = a4;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v20;
    v68 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v61 = *(v13 + 16);
      v62 = v13 + 16;
      v60 = (v13 + 8);
      do
      {
        v24 = a3;
        v25 = v65;
        v26 = v61;
        (v61)(v65, a2, v12);
        v27 = v66;
        v28 = v26(v66, v21, v12);
        v29 = v21;
        v30 = v67;
        v31 = (v67)(v28);
        v32 = v30();
        v33 = *v60;
        (*v60)(v27, v12);
        v33(v25, v12);
        if (v31 >= v32)
        {
          v34 = v64;
          v21 += v64;
          if (a1 < v29 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v24;
          }

          else
          {
            a3 = v24;
            if (a1 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = v21;
        }

        else
        {
          v34 = v64;
          if (a1 < a2 || a1 >= a2 + v64)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v34;
            a3 = v24;
          }

          else
          {
            a3 = v24;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v34;
          }
        }

        a1 += v34;
        v70 = a1;
      }

      while (v21 < v63 && a2 < a3);
    }
  }

LABEL_59:
  v55(&v70, &v69, &v68);
}

void sub_20C4AE1FC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AudioHint(0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = a4 + 7;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[7];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[6];
      v25 = *(v31 + 72);
      sub_20C4B0B44(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_20C4B0C04(v10, v13);
      sub_20C4B0C04(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_20C4AE424(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_20C4AE6CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8, &qword_20C5A85F0);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = (&v38 - v10);
  v45 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v24 = 0;
LABEL_25:
    *a1 = v45;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v24;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v24 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v39 = -1 << *(v12 - 32);
    v40 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    v20 = v45;
    while (v16)
    {
LABEL_14:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v17;
      v25 = v23 | (v17 << 6);
      v26 = *(v20 + 48);
      v27 = sub_20C59E4DC();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v25;
      v30 = v43;
      (*(v28 + 16))(v43, v29, v27);
      v31 = (*(v20 + 56) + 16 * v25);
      v32 = *v31;
      v33 = v31[1];
      v34 = &v30[*(v44 + 48)];
      *v34 = v32;
      *(v34 + 1) = v33;
      v35 = v30;
      a1 = v42;
      sub_20C4B09AC(v35, v42);
      sub_20C4B09AC(a1, a2);
      if (v19 == a3)
      {

        goto LABEL_23;
      }

      a2 += *(v41 + 72);

      v36 = __OFADD__(v19++, 1);
      v17 = v24;
      if (v36)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v17;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v22);
      ++v21;
      if (v16)
      {
        v17 = v22;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v37 = v17 + 1;
    }

    else
    {
      v37 = v18;
    }

    v24 = v37 - 1;
LABEL_23:
    v14 = v39;
    a1 = v40;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_20C4AE96C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_20C494788(*(a4 + 48) + 56 * (v17 | (v12 << 6)), v23);
      v18 = v23[2];
      v19 = v23[1];
      v20 = v23[0];
      *(v11 + 48) = v24;
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      *v11 = v20;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 56;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_20C4AEADC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_20C494788(*(a4 + 48) + 56 * (v17 | (v12 << 6)), v23);
      v18 = v23[2];
      v19 = v23[1];
      v20 = v23[0];
      *(v11 + 48) = v24;
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      *v11 = v20;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 56;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_20C4AEC4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v166 = 0;
  v5 = sub_20C5A01CC();
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x28223BE20](v5);
  v157 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v158 = &v153 - v8;
  MEMORY[0x28223BE20](v9);
  v159 = &v153 - v10;
  MEMORY[0x28223BE20](v11);
  v161 = &v153 - v12;
  MEMORY[0x28223BE20](v13);
  v160 = &v153 - v14;
  MEMORY[0x28223BE20](v15);
  v156 = (&v153 - v16);
  v17 = OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot;
  v18 = sub_20C59ECFC();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90, &qword_20C5A5270);
  sub_20C59D9EC();
  *(v2 + 16) = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4830, &qword_20C5A4CB0);
  sub_20C59D9EC();
  sub_20C4780E8(&v168, v2 + 80);
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 32) = sub_20C59F75C();
  v165 = *(v2 + 16);
  sub_20C477580(v2 + 80, &v168);
  v19 = type metadata accessor for PlaybackTimelineRegionMonitor();
  v20 = swift_allocObject();
  sub_20C59F36C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v20 + 72) = sub_20C59F35C();
  v21 = MEMORY[0x277D84FA0];
  v22 = MEMORY[0x277D84F90];
  *(v20 + 88) = MEMORY[0x277D84FA0];
  *(v20 + 96) = v22;
  *(v20 + 80) = sub_20C58929C(v22);
  *(v20 + 16) = v165;
  sub_20C4780E8(&v168, v20 + 32);
  *(v2 + 64) = v19;
  *(v2 + 72) = &off_282373D30;
  *(v2 + 40) = v20;
  *(v2 + 120) = sub_20C59DDBC();
  *(v2 + 128) = sub_20C59DDCC();
  *(v2 + 136) = sub_20C59DD8C();
  *(v2 + 144) = sub_20C59DD7C();
  v155 = a2;
  *(v2 + 152) = sub_20C59DDAC();
  *(v2 + 160) = v21;
  swift_getObjectType();
  sub_20C59F5AC();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  sub_20C59F72C();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F63C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4838, &qword_20C5A4CB8);
  swift_allocObject();
  swift_weakInit();
  v162 = &protocol conformance descriptor for PlaybackTimelineEventStarted<A>;
  sub_20C47C934(&qword_27C7C4840, &qword_27C7C4838, &qword_20C5A4CB8, &protocol conformance descriptor for PlaybackTimelineEventStarted<A>);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4848, &qword_20C5A4CC0);
  swift_allocObject();
  swift_weakInit();
  *&v165 = &protocol conformance descriptor for PlaybackTimelineEventEnded<A>;
  sub_20C47C934(&qword_27C7C4850, &qword_27C7C4848, &qword_20C5A4CC0, &protocol conformance descriptor for PlaybackTimelineEventEnded<A>);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4858, &qword_20C5A4CC8);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C4860, &qword_27C7C4858, &qword_20C5A4CC8, v162);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4868, &qword_20C5A4CD0);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C4870, &qword_27C7C4868, &qword_20C5A4CD0, v165);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4878, &qword_20C5A4CD8);
  swift_allocObject();
  swift_weakInit();
  v23 = v162;
  sub_20C47C934(&qword_27C7C4880, &qword_27C7C4878, &qword_20C5A4CD8, v162);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4888, &qword_20C5A4CE0);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C4890, &qword_27C7C4888, &qword_20C5A4CE0, v165);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4898, &qword_20C5A4CE8);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C48A0, &qword_27C7C4898, &qword_20C5A4CE8, v23);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C48A8, &qword_20C5A4CF0);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C48B0, &qword_27C7C48A8, &qword_20C5A4CF0, v165);
  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C48B8, &qword_20C5A4CF8);
  swift_allocObject();
  swift_weakInit();
  sub_20C47C934(&qword_27C7C48C0, &qword_27C7C48B8, &qword_20C5A4CF8, v162);
  sub_20C59F61C();
  v24 = v163;

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C48C8, &qword_20C5A4D00);
  swift_allocObject();
  swift_weakInit();

  v25 = v164;
  sub_20C47C934(&qword_27C7C48D0, &qword_27C7C48C8, &qword_20C5A4D00, v165);
  sub_20C59F61C();
  v26 = v156;

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  sub_20C59FE6C();

  v27 = sub_20C5A01BC();
  v28 = sub_20C5A08AC();

  if (os_log_type_enabled(v27, v28))
  {
    LODWORD(v162) = v28;
    *&v165 = v27;
    v29 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v167 = v153;
    v154 = v29;
    *v29 = 136446210;
    v30 = v3[15];
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = sub_20C4AB3E0(*(v30 + 16), 0, &unk_27C7C5BB0, &qword_20C5A4D08, MEMORY[0x277D50520]);
      v33 = *(sub_20C59DB3C() - 8);
      sub_20C4AE424(&v168, &v32[(*(v33 + 80) + 32) & ~*(v33 + 80)], v31, v30, MEMORY[0x277D50520]);
      v35 = v34;
      v36 = v168;

      sub_20C483B94(v36);
      if (v35 != v31)
      {
        __break(1u);
        goto LABEL_51;
      }

      v26 = v156;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    *&v168 = v32;
    v39 = v166;
    sub_20C4AB704(&v168, MEMORY[0x277D50520], sub_20C557DC8, sub_20C4ABB38);
    v40 = v163;
    v25 = v164;
    v166 = v39;
    v38 = v161;
    if (v39)
    {
      goto LABEL_58;
    }

    v41 = v168;
    v42 = sub_20C59DB3C();
    v43 = MEMORY[0x20F2FEAF0](v41, v42);
    v45 = v44;

    v46 = sub_20C479640(v43, v45, &v167);

    v47 = v154;
    *(v154 + 4) = v46;
    v48 = v165;
    _os_log_impl(&dword_20C472000, v165, v162, "Coaching events: %{public}s", v47, 0xCu);
    v49 = v153;
    __swift_destroy_boxed_opaque_existential_1Tm(v153);
    MEMORY[0x20F2FFF90](v49, -1, -1);
    MEMORY[0x20F2FFF90](v47, -1, -1);

    v37 = *(v40 + 8);
    v37(v26, v25);
  }

  else
  {

    v37 = *(v24 + 8);
    v37(v26, v25);
    v38 = v161;
  }

  v50 = v160;
  sub_20C59FE6C();

  v51 = sub_20C5A01BC();
  v52 = sub_20C5A08AC();

  v53 = os_log_type_enabled(v51, v52);
  *&v165 = v37;
  if (!v53)
  {

    v37(v50, v25);
    v35 = v166;
    goto LABEL_17;
  }

  LODWORD(v162) = v52;
  v54 = swift_slowAlloc();
  v154 = swift_slowAlloc();
  v167 = v154;
  v156 = v54;
  *v54 = 136446210;
  v55 = v3[16];
  v56 = *(v55 + 16);
  if (!v56)
  {
    v57 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v57 = sub_20C4AB3E0(*(v55 + 16), 0, &qword_27C7C4818, &qword_20C5A4CA0, MEMORY[0x277D50A68]);
  v58 = *(sub_20C59DF2C() - 8);
  sub_20C4AE424(&v168, &v57[(*(v58 + 80) + 32) & ~*(v58 + 80)], v56, v55, MEMORY[0x277D50A68]);
  v153 = v59;
  v60 = v168;
  v35 = v169;

  sub_20C483B94(v60);
  if (v153 != v56)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v25 = v164;
  v38 = v161;
LABEL_15:
  *&v168 = v57;
  v35 = v166;
  sub_20C584ED0(&v168);
  if (v35)
  {
    goto LABEL_56;
  }

  v61 = v168;
  v62 = sub_20C59DF2C();
  v63 = MEMORY[0x20F2FEAF0](v61, v62);
  v65 = v64;

  v66 = sub_20C479640(v63, v65, &v167);

  v67 = v156;
  *(v156 + 4) = v66;
  _os_log_impl(&dword_20C472000, v51, v162, "Commentary events: %{public}s", v67, 0xCu);
  v68 = v154;
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  MEMORY[0x20F2FFF90](v68, -1, -1);
  MEMORY[0x20F2FFF90](v67, -1, -1);

  v37 = v165;
  (v165)(v160, v25);
LABEL_17:
  sub_20C59FE6C();

  v69 = sub_20C5A01BC();
  v70 = sub_20C5A08AC();

  if (!os_log_type_enabled(v69, v70))
  {

    v78 = v38;
    v79 = v25;
    goto LABEL_25;
  }

  LODWORD(v160) = v70;
  v162 = v69;
  v71 = swift_slowAlloc();
  v154 = swift_slowAlloc();
  v167 = v154;
  v156 = v71;
  *v71 = 136446210;
  v72 = v3[17];
  v73 = *(v72 + 16);
  if (!v73)
  {
    v74 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v166 = v35;
  v74 = sub_20C4AB3E0(v73, 0, &unk_27C7C5B30, &unk_20C5A9130, MEMORY[0x277D50018]);
  v75 = *(sub_20C59D86C() - 8);
  sub_20C4AE424(&v168, &v74[(*(v75 + 80) + 32) & ~*(v75 + 80)], v73, v72, MEMORY[0x277D50018]);
  v35 = v76;
  v77 = v168;

  sub_20C483B94(v77);
  if (v35 != v73)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v25 = v164;
  v35 = v166;
LABEL_23:
  *&v168 = v74;
  sub_20C4AB704(&v168, MEMORY[0x277D50018], sub_20C557D30, sub_20C4AB980);
  v80 = v161;
  if (v35)
  {
    goto LABEL_56;
  }

  v81 = v168;
  v82 = sub_20C59D86C();
  v83 = MEMORY[0x20F2FEAF0](v81, v82);
  v85 = v84;

  v86 = sub_20C479640(v83, v85, &v167);

  v87 = v156;
  *(v156 + 4) = v86;
  v88 = v162;
  _os_log_impl(&dword_20C472000, v162, v160, "Media moments: %{public}s", v87, 0xCu);
  v89 = v154;
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  MEMORY[0x20F2FFF90](v89, -1, -1);
  MEMORY[0x20F2FFF90](v87, -1, -1);

  v78 = v80;
  v79 = v25;
  v37 = v165;
LABEL_25:
  v37(v78, v79);
  v90 = v159;
  sub_20C59FE6C();

  v91 = sub_20C5A01BC();
  v92 = sub_20C5A08AC();

  if (!os_log_type_enabled(v91, v92))
  {

    v100 = v90;
    goto LABEL_33;
  }

  LODWORD(v161) = v92;
  v162 = v91;
  v93 = swift_slowAlloc();
  v156 = swift_slowAlloc();
  v167 = v156;
  v160 = v93;
  *v93 = 136446210;
  v94 = v3[18];
  v95 = *(v94 + 16);
  if (!v95)
  {
    v96 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v166 = v35;
  v96 = sub_20C4AB3E0(v95, 0, &qword_27C7C48D8, &unk_20C5A4D10, MEMORY[0x277D4FEC8]);
  v97 = *(sub_20C59D7DC() - 8);
  sub_20C4AE424(&v168, &v96[(*(v97 + 80) + 32) & ~*(v97 + 80)], v95, v94, MEMORY[0x277D4FEC8]);
  v35 = v98;
  v99 = v168;

  sub_20C483B94(v99);
  if (v35 != v95)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v25 = v164;
  v35 = v166;
  v37 = v165;
LABEL_31:
  *&v168 = v96;
  sub_20C4AB704(&v168, MEMORY[0x277D4FEC8], sub_20C557E60, sub_20C4ABE1C);
  if (v35)
  {
    goto LABEL_56;
  }

  v101 = v168;
  v102 = sub_20C59D7DC();
  v103 = MEMORY[0x20F2FEAF0](v101, v102);
  v105 = v104;

  v106 = sub_20C479640(v103, v105, &v167);

  v107 = v160;
  *(v160 + 4) = v106;
  v108 = v162;
  _os_log_impl(&dword_20C472000, v162, v161, "Music tracks: %{public}s", v107, 0xCu);
  v109 = v156;
  __swift_destroy_boxed_opaque_existential_1Tm(v156);
  MEMORY[0x20F2FFF90](v109, -1, -1);
  MEMORY[0x20F2FFF90](v107, -1, -1);

  v100 = v159;
LABEL_33:
  v37(v100, v25);
  v110 = v158;
  sub_20C59FE6C();

  v111 = sub_20C5A01BC();
  v112 = sub_20C5A08AC();

  if (!os_log_type_enabled(v111, v112))
  {

    v120 = v110;
    goto LABEL_41;
  }

  LODWORD(v161) = v112;
  v162 = v111;
  v113 = swift_slowAlloc();
  v159 = swift_slowAlloc();
  v167 = v159;
  v160 = v113;
  *v113 = 136446210;
  v114 = v3[19];
  v115 = *(v114 + 16);
  if (!v115)
  {
    v116 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v166 = v35;
  v116 = sub_20C4AB3E0(v115, 0, &qword_27C7C48E0, &qword_20C5A9180, MEMORY[0x277D503E8]);
  v117 = *(sub_20C59DAEC() - 8);
  sub_20C4AE424(&v168, &v116[(*(v117 + 80) + 32) & ~*(v117 + 80)], v115, v114, MEMORY[0x277D503E8]);
  v35 = v118;
  v119 = v168;

  sub_20C483B94(v119);
  if (v35 != v115)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v25 = v164;
  v35 = v166;
  v37 = v165;
LABEL_39:
  *&v168 = v116;
  sub_20C4AB704(&v168, MEMORY[0x277D503E8], sub_20C557CE4, sub_20C4AB7C8);
  if (v35)
  {
    goto LABEL_56;
  }

  v121 = v168;
  v122 = sub_20C59DAEC();
  v123 = MEMORY[0x20F2FEAF0](v121, v122);
  v125 = v124;

  v126 = sub_20C479640(v123, v125, &v167);

  v127 = v160;
  *(v160 + 4) = v126;
  v128 = v162;
  _os_log_impl(&dword_20C472000, v162, v161, "Trainer events: %{public}s", v127, 0xCu);
  v129 = v159;
  __swift_destroy_boxed_opaque_existential_1Tm(v159);
  MEMORY[0x20F2FFF90](v129, -1, -1);
  MEMORY[0x20F2FFF90](v127, -1, -1);

  v120 = v158;
LABEL_41:
  v37(v120, v25);
  v130 = v157;
  sub_20C59FE6C();

  v131 = sub_20C5A01BC();
  v132 = sub_20C5A08AC();

  v162 = v131;
  if (os_log_type_enabled(v131, v132))
  {
    LODWORD(v161) = v132;
    v133 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v167 = v159;
    v160 = v133;
    *v133 = 136446210;
    v134 = v3[20];
    v135 = v134[2];
    if (!v135)
    {

      v136 = MEMORY[0x277D84F90];
LABEL_47:
      *&v168 = v136;
      sub_20C4AB704(&v168, type metadata accessor for AudioHint, sub_20C557E14, sub_20C4ABCF0);
      if (!v35)
      {

        v141 = v168;
        v142 = type metadata accessor for AudioHint(0);
        v143 = MEMORY[0x20F2FEAF0](v141, v142);
        v145 = v144;

        v146 = sub_20C479640(v143, v145, &v167);

        v147 = v160;
        *(v160 + 4) = v146;
        v148 = v162;
        _os_log_impl(&dword_20C472000, v162, v161, "AudioHint events: %{public}s", v147, 0xCu);
        v149 = v159;
        __swift_destroy_boxed_opaque_existential_1Tm(v159);
        MEMORY[0x20F2FFF90](v149, -1, -1);
        MEMORY[0x20F2FFF90](v147, -1, -1);

        v140 = v157;
        goto LABEL_49;
      }

LABEL_56:
      for (i = v35; ; i = v166)
      {

        __break(1u);
LABEL_58:
        ;
      }
    }

    v166 = v35;
    v136 = sub_20C4AB3E0(v135, 0, &qword_27C7C4828, &qword_20C5A6840, type metadata accessor for AudioHint);
    v137 = *(type metadata accessor for AudioHint(0) - 8);
    sub_20C4AE1FC(&v168, v136 + ((*(v137 + 80) + 32) & ~*(v137 + 80)), v135, v134);
    v35 = v138;
    v139 = v168;
    swift_bridgeObjectRetain_n();
    sub_20C483B94(v139);
    if (v35 == v135)
    {
      v25 = v164;
      v35 = v166;
      v37 = v165;
      goto LABEL_47;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v140 = v130;
LABEL_49:
  v37(v140, v25);
  sub_20C4AA934();
  v150 = sub_20C59DE3C();
  (*(*(v150 - 8) + 8))(v155, v150);
  return v3;
}

uint64_t type metadata accessor for SessionTimeline(uint64_t a1)
{
  result = qword_27C7C47C8;
  if (!qword_27C7C47C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C4B0838(uint64_t a1)
{
  sub_20C4B0954(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20C4B0954(uint64_t a1)
{
  if (!qword_27C7C47D8)
  {
    sub_20C59ECFC();
    v1 = sub_20C5A0A4C();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7C47D8);
    }
  }
}

uint64_t sub_20C4B09AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8, &qword_20C5A85F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4B0A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20, &unk_20C5A2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4B0A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20, &unk_20C5A2D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4B0AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C4B0B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4B0BA8(uint64_t a1)
{
  v2 = type metadata accessor for AudioHint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4B0C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static WheelchairStatusUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id (*sub_20C4B10F8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isEnabled];
  return sub_20C4B114C;
}

double sub_20C4B1164(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20C4B1238;
  v6[3] = &block_descriptor_2;
  v3 = _Block_copy(v6);

  v4 = [v2 addTargetWithHandler_];
  _Block_release(v3);
  sub_20C5A0ABC();
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_20C4B1238(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_20C4B12F8(uint64_t a1)
{
  sub_20C4B1430(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x28223BE20](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_20C5A0E8C();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    v8 = 0;
  }

  [v1 removeTarget_];
  return swift_unknownObjectRelease();
}

uint64_t sub_20C4B1430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0, &unk_20C5A35A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static MarketingOfferTemplateItemCount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t MarketingOfferTemplateItemCount.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F2FF470](0);
  }

  return MEMORY[0x20F2FF470](v1);
}

uint64_t MarketingOfferTemplateItemCount.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C5A0FBC();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x20F2FF470](0);
  }

  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4B158C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C5A0FBC();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x20F2FF470](0);
  }

  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4B15F0()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x20F2FF470](0);
  }

  return MEMORY[0x20F2FF470](v1);
}

uint64_t sub_20C4B1638(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_20C5A0FBC();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x20F2FF470](0);
  }

  MEMORY[0x20F2FF470](v2);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4B169C()
{
  result = qword_27C7C48E8;
  if (!qword_27C7C48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C48E8);
  }

  return result;
}

uint64_t sub_20C4B16F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferTemplateItemCount(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MarketingOfferTemplateItemCount(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_20C4B177C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4B1798(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void MarketingArtwork.init(amsMediaArtwork:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277CEE210];
  [a1 colorWithKind_];
  v5 = [a1 colorWithKind_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

  if (!v6)
  {
    v6 = [objc_opt_self() clearColor];
  }

  *a2 = v6;
  a2[1] = a1;
}

uint64_t MarketingArtwork.url(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 8) URLWithSize:*MEMORY[0x277CEE238] cropStyle:*MEMORY[0x277CEE250] format:?];
  if (v3)
  {
    v4 = v3;
    sub_20C59D32C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_20C59D37C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_20C4B1944(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20C4B198C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_20C4B19D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C5A0F1C();
  v4 = v3;
  if (v2 == sub_20C5A039C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20C5A0E9C();
  }

  return v7 & (sub_20C5A0F0C() == 4097);
}

uint64_t static TrainerTipQuarantineRegionExited.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MarketingMetric.hash(into:)(__int128 *a1)
{
  v3 = sub_20C59E2AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_20C59D79C();
  sub_20C4B223C(&qword_27C7C48F0, MEMORY[0x277D4FE30], MEMORY[0x277D4FE38]);
  sub_20C5A02FC();
  v10 = type metadata accessor for MarketingMetric(0);
  sub_20C4973DC(a1, *(v1 + v10[5]));
  sub_20C4973DC(a1, *(v1 + v10[6]));
  sub_20C4B215C(v1 + v10[7], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_20C5A0FDC();
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_20C5A0FDC();
  sub_20C4B223C(&qword_27C7C48F8, MEMORY[0x277D514E0], MEMORY[0x277D514E8]);
  sub_20C5A02FC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t MarketingMetric.hashValue.getter()
{
  sub_20C5A0FBC();
  MarketingMetric.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4B1D94()
{
  sub_20C5A0FBC();
  MarketingMetric.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4B1DD8(uint64_t a1)
{
  sub_20C5A0FBC();
  MarketingMetric.hash(into:)(v2);
  return sub_20C5A0FFC();
}

BOOL _s12SeymourMedia15MarketingMetricV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59E2AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4908, &qword_20C5A4FA0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if ((MEMORY[0x20F2FBC10](a1, a2, v12) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for MarketingMetric(0);
  if ((sub_20C592FB0(*(a1 + v15[5]), *(a2 + v15[5])) & 1) == 0 || (sub_20C592FB0(*(a1 + v15[6]), *(a2 + v15[6])) & 1) == 0)
  {
    return 0;
  }

  v16 = v15[7];
  v17 = *(v11 + 48);
  sub_20C4B215C(a1 + v16, v14);
  sub_20C4B215C(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_20C477B50(v14, &qword_27C7C4750, &unk_20C5A82D0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_20C4B215C(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_20C477B50(v14, &qword_27C7C4908, &qword_20C5A4FA0);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v17], v4);
  sub_20C4B223C(&qword_27C7C4910, MEMORY[0x277D514E0], MEMORY[0x277D514F0]);
  v20 = sub_20C5A033C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_20C477B50(v14, &qword_27C7C4750, &unk_20C5A82D0);
  return (v20 & 1) != 0;
}

uint64_t sub_20C4B215C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4750, &unk_20C5A82D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4B223C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C4B22AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C59D95C();
  if ((v2 & 0x100000000) != 0)
  {
    v3 = qword_277DA2C28[v2];
  }

  else
  {
    v3 = MEMORY[0x277D52BA8];
  }

  v4 = *v3;
  v5 = sub_20C59E78C();
  v8 = *(v5 - 8);
  (*(v8 + 104))(a1, v4, v5);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v5);
}

id static NSAttributedString.withImage(_:)(void *a1)
{
  if (a1 && (v1 = [a1 imageWithRenderingMode_]) != 0)
  {
    v2 = v1;
    v3 = [objc_opt_self() textAttachmentWithImage_];
    v4 = [objc_opt_self() attributedStringWithAttachment_];

    return v4;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA898]);

    return [v6 init];
  }
}

id sub_20C4B247C(void *a1, void *a2)
{
  if (a1 && (v3 = [a1 imageWithRenderingMode_]) != 0)
  {
    v4 = v3;
    v5 = [objc_opt_self() textAttachmentWithImage_];
    sub_20C479154(0, &qword_27C7C4918, 0x277CCAB48);
    v6 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4920, &qword_20C5AA730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A4FE0;
    v8 = *MEMORY[0x277D740C0];
    *(inited + 32) = *MEMORY[0x277D740C0];
    *(inited + 64) = sub_20C479154(0, &qword_27C7C4928, 0x277D75348);
    *(inited + 40) = a2;
    v9 = v8;
    v10 = a2;
    sub_20C5893D4(inited);
    swift_setDeallocating();
    sub_20C4B2680(inited + 32);
    type metadata accessor for Key(0);
    sub_20C4B26E8();
    v11 = sub_20C5A02AC();

    v12 = v6;
    [v12 addAttributes:v11 range:{0, objc_msgSend(v12, sel_length)}];

    return v12;
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCA898]);

    return [v14 init];
  }
}

uint64_t sub_20C4B2680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4930, &unk_20C5AA720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C4B26E8()
{
  result = qword_27C7C4428;
  if (!qword_27C7C4428)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4428);
  }

  return result;
}

uint64_t MetricClickStreamOccurred.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59E26C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MetricClickStreamOccurred.metricClickStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59E26C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MetricClickStreamOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id MarketingOperationEnded.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t static MarketingOperationEnded.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4B2958(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_20C4B29B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AVPlayer.observeTimeControlStatusChange(options:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_20C59D2AC();

  return v6;
}

id sub_20C4B2AE4()
{
  v1 = [v0 currentItem];

  return v1;
}

id (*sub_20C4B2B3C(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 rate];
  *(a1 + 8) = v3;
  return sub_20C4B2B90;
}

id sub_20C4B2C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v11[2] = a9;
  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  v11[0] = a7;
  v11[1] = a8;
  return [v9 seekToTime:v13 toleranceBefore:v12 toleranceAfter:v11];
}

double sub_20C4B2C9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a8;
  v12 = a5;
  v15 = a2;
  v17 = HIDWORD(a2);
  v18 = HIDWORD(a5);
  v21 = HIDWORD(a8);
  aBlock[4] = a10;
  aBlock[5] = a11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4B2DD0;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  v34 = v15;
  v35 = v17;
  v36 = a3;
  v30 = v12;
  v31 = v18;
  v32 = a6;
  v33 = a1;
  v25 = a7;
  v26 = v11;
  v27 = v21;
  v28 = a9;
  v29 = a4;
  [v24 seekToTime:&v33 toleranceBefore:&v29 toleranceAfter:&v25 completionHandler:v19];
  _Block_release(v19);

  return result;
}

double sub_20C4B2DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_20C4B2E24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v11 = HIDWORD(a2);
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4B2F34;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  v15 = a1;
  v16 = v9;
  v17 = v11;
  v18 = a3;
  v13 = [v6 addPeriodicTimeObserverForInterval:&v15 queue:a4 usingBlock:v12];
  _Block_release(v12);
  sub_20C5A0ABC();
  swift_unknownObjectRelease();

  return result;
}

double sub_20C4B2F34(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

double sub_20C4B2FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20C479154(0, &qword_27C7C47B8, 0x277CCAE60);
  v8 = sub_20C5A060C();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20C4F8F74;
  v12[3] = &block_descriptor_3;
  v9 = _Block_copy(v12);

  v10 = [v4 addBoundaryTimeObserverForTimes:v8 queue:a2 usingBlock:v9];
  _Block_release(v9);

  sub_20C5A0ABC();
  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_20C4B30C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v1 removeTimeObserver_];

  return swift_unknownObjectRelease();
}

uint64_t sub_20C4B3124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_20C59D2AC();

  return v6;
}

uint64_t sub_20C4B31E4(uint64_t a1)
{
  result = sub_20C4B33FC(&qword_27C7C4948, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20C4B3390(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = sub_20C4B33FC(&qword_27C7C6000, &protocol conformance descriptor for AVPlayer);
  return v4(v5, v6, a2);
}

uint64_t sub_20C4B33FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C479154(255, &qword_27C7C4950, 0x277CE6598);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id IntentDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntentDispatcher.init()()
{
  v1 = v0;
  sub_20C4B3570();
  v2 = sub_20C5A08EC();
  sub_20C4744A8(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4958, qword_20C5A51A0);
  sub_20C59D9EC();

  sub_20C4780E8(&v5, v1 + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for IntentDispatcher();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_20C4B3570()
{
  result = qword_2810F3D90;
  if (!qword_2810F3D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810F3D90);
  }

  return result;
}

id IntentDispatcher.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntentDispatcher();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double IntentDispatcher.handler(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  sub_20C59FDEC();
  v13 = a1;
  v14 = sub_20C5A01BC();
  v15 = sub_20C5A08AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v6;
    v17 = v3;
    v18 = v9;
    v19 = a2;
    v20 = v16;
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v13;
    *v21 = v13;
    v22 = v13;
    _os_log_impl(&dword_20C472000, v14, v15, "IntentDispatcher looking for handler: %{public}@", v20, 0xCu);
    sub_20C4A7CD0(v21);
    MEMORY[0x20F2FFF90](v21, -1, -1);
    v23 = v20;
    a2 = v19;
    v9 = v18;
    v3 = v17;
    v6 = v36;
    MEMORY[0x20F2FFF90](v23, -1, -1);
  }

  v24 = *(v7 + 8);
  v24(v12, v6);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_20C477580(v3 + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient, v41);
    started = type metadata accessor for StartWorkoutIntentHandler();
    v26 = objc_allocWithZone(started);
    sub_20C477580(v41, v26 + OBJC_IVAR____TtC12SeymourMedia25StartWorkoutIntentHandler_sessionClient);
    v37.receiver = v26;
    v37.super_class = started;
    v27 = objc_msgSendSuper2(&v37, sel_init);
LABEL_11:
    v31 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    *(a2 + 24) = started;
    *a2 = v31;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_20C477580(v3 + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient, v41);
    started = type metadata accessor for PauseWorkoutIntentHandler();
    v28 = objc_allocWithZone(started);
    sub_20C477580(v41, v28 + OBJC_IVAR____TtC12SeymourMedia25PauseWorkoutIntentHandler_sessionClient);
    v38.receiver = v28;
    v38.super_class = started;
    v27 = objc_msgSendSuper2(&v38, sel_init);
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_20C477580(v3 + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient, v41);
    started = type metadata accessor for ResumeWorkoutIntentHandler();
    v29 = objc_allocWithZone(started);
    sub_20C477580(v41, v29 + OBJC_IVAR____TtC12SeymourMedia26ResumeWorkoutIntentHandler_sessionClient);
    v39.receiver = v29;
    v39.super_class = started;
    v27 = objc_msgSendSuper2(&v39, sel_init);
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_20C477580(v3 + OBJC_IVAR____TtC12SeymourMedia16IntentDispatcher_sessionClient, v41);
    started = type metadata accessor for EndWorkoutIntentHandler();
    v30 = objc_allocWithZone(started);
    sub_20C477580(v41, v30 + OBJC_IVAR____TtC12SeymourMedia23EndWorkoutIntentHandler_sessionClient);
    v40.receiver = v30;
    v40.super_class = started;
    v27 = objc_msgSendSuper2(&v40, sel_init);
    goto LABEL_11;
  }

  sub_20C59FDEC();
  v33 = sub_20C5A01BC();
  v34 = sub_20C5A089C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20C472000, v33, v34, "No handler available", v35, 2u);
    MEMORY[0x20F2FFF90](v35, -1, -1);
  }

  v24(v9, v6);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id MediaTagStringBuilderOptions.highlightColorOverride.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

double MediaTagStringBuilderOptions.init(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  *&result = 4;
  *(a4 + 40) = xmmword_20C5A51F0;
  return result;
}

uint64_t MediaTagStringBuilderOptions.init(highlightColorOverride:fallbackHighlightColor:lineHeightMultiple:lineSpacing:nonHighlightedColor:textAlignment:lineBreakMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20C4B3D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_20C4B3D6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_20C4B3DC8(void *a1, void *a2)
{
  v25 = a2;
  v4 = sub_20C5A021C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30[9] = *(v2 + 57);
  v12 = v2[3];
  v29 = v2[2];
  *v30 = v12;
  v13 = v2[1];
  v27 = *v2;
  v28 = v13;
  if (*(*&v30[16] + 16))
  {
    sub_20C59FE2C();
    sub_20C5A01AC();
    (*(v9 + 8))(v11, v8);
    v14 = [objc_opt_self() smu_canDecodeOnRenderThread];
    sub_20C479154(0, &qword_2810F3D90, 0x277D85C78);
    if (v14)
    {
      v15 = sub_20C5A08EC();
    }

    else
    {
      (*(v5 + 104))(v7, *MEMORY[0x277D851C0], v4);
      v15 = sub_20C5A090C();
      (*(v5 + 8))(v7, v4);
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v19 = v27;
    *(v18 + 40) = v28;
    v20 = *v30;
    *(v18 + 56) = v29;
    *(v18 + 72) = v20;
    *(v18 + 81) = *&v30[9];
    *(v18 + 24) = v19;
    v21 = v25;
    *(v18 + 104) = a1;
    *(v18 + 112) = v21;
    sub_20C49508C(&v27, v26);
    sub_20C479154(0, &qword_2810F3D80, 0x277D755B8);
    v22 = a1;
    v23 = v21;
    return sub_20C59EA9C();
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_20C479154(0, &qword_2810F3D80, 0x277D755B8);
    v16 = a1;

    return sub_20C59EAAC();
  }
}

double sub_20C4B4158(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5, void *a6)
{
  v26 = a6;
  v29 = a3;
  v10 = sub_20C5A020C();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C5A023C();
  v13 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v18 = a4[3];
  *(v17 + 48) = a4[2];
  *(v17 + 64) = v18;
  *(v17 + 73) = *(a4 + 57);
  v19 = a4[1];
  *(v17 + 16) = *a4;
  *(v17 + 32) = v19;
  v20 = v26;
  *(v17 + 96) = a5;
  *(v17 + 104) = v20;
  *(v17 + 112) = sub_20C4959AC;
  *(v17 + 120) = v16;
  aBlock[4] = sub_20C4B4C48;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);

  sub_20C49508C(a4, v30);
  v22 = a5;
  v23 = v20;
  sub_20C5A022C();
  v30[0] = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0, &unk_20C5A3A80);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v15, v12, v21);
  _Block_release(v21);
  (*(v27 + 8))(v12, v10);
  (*(v13 + 8))(v15, v28);

  return result;
}

uint64_t sub_20C4B444C(__int128 *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v58 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00, &unk_20C5A58B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v55 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v18);
  v56 = &v55 - v19;
  v70 = *(a1 + 8);
  *(swift_allocObject() + 16) = a2;
  v20 = sub_20C479154(0, &qword_2810F3D80, 0x277D755B8);
  v21 = a2;
  sub_20C59EAAC();
  v22 = v8;
  v23 = v8 + 16;
  v24 = *(v8 + 16);
  v67 = v14;
  v55 = v17;
  v25 = v7;
  v24(v14, v17, v7);
  v26 = *(v70 + 16);
  if (v26)
  {
    v64 = v20;
    v27 = v70 + 32;
    v63 = v9 + 7;
    v62 = v22 + 32;
    v68 = v22 + 8;
    v28 = v22;
    v29 = v67;
    v61 = v24;
    v60 = a1;
    do
    {
      v69 = v26;
      v70 = v27;
      sub_20C477580(v27, v72);
      sub_20C477580(v72, v71);
      v30 = swift_allocObject();
      sub_20C4780E8(v71, v30 + 16);
      v31 = *a1;
      *(v30 + 72) = a1[1];
      v32 = a1[3];
      *(v30 + 88) = a1[2];
      *(v30 + 104) = v32;
      *(v30 + 113) = *(a1 + 57);
      *(v30 + 56) = v31;
      v33 = v66;
      v61(v66, v29, v25);
      v34 = v25;
      v35 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v36 = v23;
      v37 = (v63 + v35) & 0xFFFFFFFFFFFFFFF8;
      v38 = v28;
      v39 = swift_allocObject();
      v40 = *(v38 + 32);
      v29 = v67;
      v40(v39 + v35, v33, v34);
      v41 = v40;
      v42 = (v39 + v37);
      v23 = v36;
      a1 = v60;
      *v42 = sub_20C4B4C60;
      v42[1] = v30;
      sub_20C49508C(a1, v71);
      v43 = v65;
      v28 = v38;
      sub_20C59EA9C();
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      v44 = *(v38 + 8);
      v44(v29, v34);
      v25 = v34;
      v41(v29, v43, v34);
      v27 = v70 + 40;
      v26 = v69 - 1;
    }

    while (v69 != 1);
    v68 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v59;
    v46 = v58;
    v47 = v29;
  }

  else
  {
    v44 = *(v22 + 8);
    v68 = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28 = v22;
    v47 = v67;
    v45 = v59;
    v46 = v58;
  }

  v48 = v57;
  v44(v55, v25);
  v49 = v56;
  (*(v28 + 32))(v56, v47, v25);
  v50 = swift_allocObject();
  v50[2] = v46;
  v50[3] = v48;
  v50[4] = v45;
  v51 = v46;

  v52 = sub_20C59EABC();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20C4B4DB8;
  *(v53 + 24) = v50;

  v52(sub_20C4907D4, v53);

  return (v44)(v49, v25);
}

double sub_20C4B4998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a2;
  v7 = sub_20C5A020C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A023C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = v15;
  *(v16 + 40) = a1;
  aBlock[4] = sub_20C4B4DC4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  sub_20C4B4DF8(v15);
  sub_20C5A022C();
  v19[1] = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0, &unk_20C5A3A80);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v14, v10, v17);
  _Block_release(v17);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);

  return result;
}

uint64_t sub_20C4B4C60(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v8[2] = *(v1 + 88);
  v9[0] = v6;
  *(v9 + 9) = *(v1 + 113);
  v8[0] = *(v1 + 56);
  v8[1] = v5;
  return (*(v4 + 16))(v2, v8, v3, v4);
}

double sub_20C4B4CFC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00, &unk_20C5A58B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4BBD98(a1, a2, v2 + v6, v8, v9);
}

void sub_20C4B4E24()
{
  v1 = (*(v0 + 32))();
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C5A0B2C();
    sub_20C479154(0, &qword_2810F3D78, 0x277D75940);
    sub_20C4B5070();
    sub_20C5A07CC();
    v3 = v18;
    v2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v1 + 56);
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_20C5A0B5C() || (sub_20C479154(0, &qword_2810F3D78, 0x277D75940), swift_dynamicCast(), (v13 = v17) == 0))
    {
LABEL_20:
      sub_20C483B94(v3);

      return;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 screen];
      v16 = [v15 isCaptured];

      if (v16)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v11 = v5;
  v12 = v6;
  if (v6)
  {
LABEL_14:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v2 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_20C4B5070()
{
  result = qword_2810F3D70;
  if (!qword_2810F3D70)
  {
    sub_20C479154(255, &qword_2810F3D78, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F3D70);
  }

  return result;
}

uint64_t ScreenCaptureMonitor.__allocating_init(dependencies:scenesProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90, &qword_20C5A5270);
  sub_20C59D9EC();
  *(v5 + 16) = v9;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  v6 = objc_opt_self();

  v7 = [v6 defaultCenter];
  [v7 addObserver:v5 selector:sel_screenCaptureChanged_ name:*MEMORY[0x277D76E90] object:0];

  return v5;
}

void sub_20C4B51D0()
{
  sub_20C59D1BC();
  if (v2)
  {
    sub_20C479154(0, &qword_2810F3D60, 0x277D759A0);
    if (swift_dynamicCast())
    {
      if ([v0 isCaptured])
      {
        [v0 isCaptured];
      }

      else
      {
        sub_20C4B4E24();
      }

      swift_getObjectType();
      sub_20C4B549C();
      sub_20C59F5FC();
    }
  }

  else
  {
    sub_20C491424(v1);
  }
}

uint64_t ScreenCaptureMonitor.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

unint64_t sub_20C4B549C()
{
  result = qword_2810F5248;
  if (!qword_2810F5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F5248);
  }

  return result;
}

unint64_t AVURLAsset.audioHintURLMap.getter()
{
  v1 = [v0 metadata];
  sub_20C479154(0, &qword_27C7C4780, 0x277CE6520);
  v2 = sub_20C5A061C();

  v3 = sub_20C588FA8(MEMORY[0x277D84F90]);
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_33:

    return v3;
  }

LABEL_36:
  v5 = sub_20C5A0B3C();
  if (!v5)
  {
    goto LABEL_33;
  }

LABEL_3:
  v6 = 0;
  v45 = v4;
  v7 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
  while (2)
  {
    v43 = v3;
    v8 = v6;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F2FF0E0](v8, v2);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_35;
        }

        v9 = *(v2 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if ([v9 v7[143]])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D0, &qword_20C5A52F0);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_6:
      ++v8;
      if (v6 == v5)
      {
        v3 = v43;
        goto LABEL_33;
      }
    }

    v3 = v46;
    if (![v10 value] || (swift_dynamicCast() & 1) == 0)
    {

      v7 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
      goto LABEL_6;
    }

    v11 = v47;
    if ((sub_20C5A056C() & 1) == 0)
    {

      v7 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
      v4 = v45;
      goto LABEL_6;
    }

    v40 = v46;
    v12 = sub_20C5A04AC();
    v13 = sub_20C4BF9C8(v12, v46, v47);
    v15 = v14;
    v41 = v16;
    v18 = v17;

    v19 = MEMORY[0x20F2FE910](v13, v15, v41, v18);
    v21 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v43;
    v42 = v19;
    v24 = sub_20C4820C8(v19, v21);
    v25 = v43[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v43[3] >= v27)
    {
      v31 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v23;
        sub_20C4BA9A4();
        v23 = v38;
        v11 = v47;
LABEL_23:
        v31 = v40;
      }

      if (v23)
      {
        v32 = (v46[7] + 16 * v24);
        *v32 = v31;
        v32[1] = v11;

        v3 = v46;
        goto LABEL_29;
      }

      v46[(v24 >> 6) + 8] |= 1 << v24;
      v33 = (v46[6] + 16 * v24);
      *v33 = v42;
      v33[1] = v21;
      v34 = (v46[7] + 16 * v24);
      *v34 = v31;
      v34[1] = v11;
      v35 = v46[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v3 = v46;
        v46[2] = v37;

LABEL_29:
        v7 = &_OBJC_LABEL_PROTOCOL___OS_dispatch_source_timer;
        v4 = v45;
        if (v6 != v5)
        {
          continue;
        }

        goto LABEL_33;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    break;
  }

  v44 = v23;
  sub_20C4B8394(v27, isUniquelyReferenced_nonNull_native);
  v28 = sub_20C4820C8(v42, v21);
  v30 = v29 & 1;
  v23 = v44;
  if ((v44 & 1) == v30)
  {
    v24 = v28;
    goto LABEL_23;
  }

LABEL_40:
  result = sub_20C5A0EDC();
  __break(1u);
  return result;
}