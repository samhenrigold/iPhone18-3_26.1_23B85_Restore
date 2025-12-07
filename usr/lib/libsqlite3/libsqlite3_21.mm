uint64_t sub_18196A7EC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 7) & 0x20) == 0)
  {
    return 1;
  }

  *(a1 + 36) = 0;
  return 2;
}

uint64_t sub_18196A808(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = a1[5];
  if (*v4 < 1)
  {
LABEL_9:
    if ((a2[5] & 0x10) != 0)
    {
      *(a1 + 18) = 0;
      return 2;
    }

    else
    {

      return sub_1818C7E14(a1, a2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 2;
    while (1)
    {
      v7 = *&v4[v6];
      if (sub_181959260(0, a2, v7, 0xFFFFFFFFLL) <= 1)
      {
        v8 = *a1;
        v9 = sub_1818B4720(*a1, v7);
        if (!v9)
        {
          v9 = *(*v8 + 16);
          if (!v9)
          {
            return 1;
          }
        }

        if (v9[3] == sub_1818D0EC0)
        {
          return 1;
        }
      }

      ++v5;
      v6 += 6;
      if (v5 >= *v4)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_18196A914(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = result;
  if (a2)
  {
    while (1)
    {
      v5 = a2;
      while (1)
      {
        v6 = *(v5 + 1);
        if ((v6 & 0x82000) == 0)
        {
          break;
        }

        if ((v6 & 0x80000) != 0)
        {
          v5 = *(*(v5 + 4) + 8);
          if (!v5)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = *v5;
          if (v7 != 114)
          {
            goto LABEL_10;
          }

          v5 = *(v5 + 2);
          if (!v5)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = *v5;
LABEL_10:
      *(v4 + 16) = a3;
      if (v7 != a3)
      {
        break;
      }

      result = sub_18196A914(v4, *(v5 + 2), a3);
      a2 = *(v5 + 3);
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    return sub_1818CE2C0(v4, a2, 0);
  }

  else
  {
LABEL_12:
    *(v4 + 16) = a3;
  }

  return result;
}

uint64_t sub_18196A9E4(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v2 = *(a2 + 4);
    if ((v2 & 9) == 0)
    {
      v3 = *(a2 + 40);
      if (*v3 == 1 && *(*(v3 + 24) + 63) == 1)
      {
        v4 = *(a2 + 72);
        v5 = *(v3 + 36);
        v6 = *(result + 20);
        if (v6 < 1)
        {
LABEL_13:
          if (v4 && (v8 = *v4, v8 >= 1))
          {
            v9 = v4 + 6;
            while (1)
            {
              v10 = *(v9 - 2);
              if (*v10 != 168 || *(v10 + 11) != v5 || (*v9 & 2) != 0)
              {
                break;
              }

              v9 += 24;
              if (!--v8)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
LABEL_20:
            if (!*(a2 + 12) || (v2 & 0x100) == 0 && ((v11 = result, v12 = a2, sub_181972CE8(result, *(a2 + 12), *(*(a2 + 96) + 24), v5, 74), a2 = v12, result = v11, !*(v12 + 12)) || (*(v12 + 5) & 1) == 0))
            {
              v13 = *(*(a2 + 96) + 16);
              v14 = *(a2 + 8);

              return sub_181972CE8(result, v14, v13, v5, 73);
            }
          }
        }

        else
        {
          v7 = *(result + 32) + 22;
          while ((*(v7 - 4) & 4) != 0 || *v7 || *(v7 + 6) == v5 && !*(v7 + 18))
          {
            v7 += 56;
            if (!--v6)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_18196AB54(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*a2 != 1)
  {
    return 0;
  }

  v5 = a3;
  v32 = *(a2 + 36);
  v6 = *a4;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *&a4[6 * i + 2];
      if (v8)
      {
        while (1)
        {
          v9 = *(v8 + 1);
          if ((v9 & 0x82000) == 0)
          {
            break;
          }

          if ((v9 & 0x80000) != 0)
          {
            v8 = *(*(v8 + 4) + 8);
            if (!v8)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v10 = *v8;
            if (v10 != 114)
            {
              goto LABEL_14;
            }

            v8 = *(v8 + 2);
            if (!v8)
            {
              goto LABEL_4;
            }
          }
        }

        v10 = *v8;
LABEL_14:
        if ((v10 | 2) == 0xAA && *(v8 + 11) == v32 && (*(v8 + 12) & 0x80000000) != 0)
        {
          return 1;
        }
      }

LABEL_4:
      ;
    }
  }

  v12 = *(*(a2 + 24) + 16);
  if (!v12)
  {
    return 0;
  }

  while (!*(v12 + 98) || *(v12 + 72))
  {
LABEL_22:
    v12 = *(v12 + 40);
    if (!v12)
    {
      return 0;
    }
  }

  if (!*(v12 + 94))
  {
    LODWORD(v13) = 0;
    goto LABEL_21;
  }

  v13 = 0;
  while (1)
  {
    v41 = 0;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v33[0] = v5;
    v33[1] = v5;
    v34 = 0;
    v35 = 0;
    v36 = 0x200000000;
    DWORD1(v37) = v32;
    *(&v37 + 1) = 257;
    v14 = *(*(v12 + 8) + 2 * v13);
    v15 = *(v12 + 24);
    if (*(v15 + 52) == *(*(v12 + 8) + 2 * v13))
    {
      LOWORD(v14) = -1;
    }

    else if (v14 < 0)
    {
      if (v14 == -2)
      {
        v16 = *(*(v12 + 80) + 24 * v13 + 8);
        v34 = *(*(v12 + 64) + 8 * v13);
        v35 = v16;
        LOWORD(v40) = -2;
        v17 = sub_1819732DC(v33);
        if (!v17)
        {
          break;
        }

        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v37) = *(*(v15 + 8) + 16 * *(*(v12 + 8) + 2 * v13) + 9);
      v34 = *(*(v12 + 64) + 8 * v13);
    }

    LOWORD(v40) = v14;
    v17 = sub_181972F4C(v33);
    if (!v17)
    {
      break;
    }

LABEL_38:
    v21 = 0;
    do
    {
      if (!*(v17 + 5))
      {
        if ((v17[10] & 2) != 0)
        {
          goto LABEL_28;
        }

        if (!v21)
        {
          v21 = v17;
        }
      }

      v17 = sub_181972F4C(v33);
    }

    while (v17);
    if (!v21)
    {
      break;
    }

LABEL_28:
    if (++v13 >= *(v12 + 94))
    {
      goto LABEL_21;
    }
  }

  v18 = *a4;
  if (*a4 < 1)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v20 = *(*(v12 + 64) + 8 * v13);
  while (1)
  {
    v22 = *&a4[6 * v19 + 2];
    if (v22)
    {
      v23 = *&a4[6 * v19 + 2];
      while (1)
      {
        v24 = *(v23 + 1);
        if ((v24 & 0x82000) == 0)
        {
          break;
        }

        if ((v24 & 0x80000) != 0)
        {
          v23 = *(*(v23 + 4) + 8);
          if (!v23)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v25 = *v23;
          if (v25 != 114)
          {
            goto LABEL_56;
          }

          v23 = *(v23 + 2);
          if (!v23)
          {
            goto LABEL_46;
          }
        }
      }

      v25 = *v23;
LABEL_56:
      if ((v25 | 2) == 0xAA && *(v23 + 12) == *(*(v12 + 8) + 2 * v13) && *(v23 + 11) == v32)
      {
        break;
      }
    }

LABEL_46:
    if (++v19 >= v18)
    {
      v5 = a3;
      goto LABEL_21;
    }
  }

  v26 = sub_1818B4720(a1, v22);
  if (!v26)
  {
    v26 = *(*a1 + 16);
  }

  v27 = *v26;
  v28 = v20;
  while (2)
  {
    if (*v27 != *v28)
    {
      if (byte_181A20298[*v27] != byte_181A20298[*v28])
      {
        v18 = *a4;
        goto LABEL_46;
      }

      goto LABEL_63;
    }

    if (*v27)
    {
LABEL_63:
      ++v27;
      ++v28;
      continue;
    }

    break;
  }

  v29 = *(*(v12 + 8) + 2 * v13);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v5 = a3;
    if ((*(*(*(v12 + 24) + 8) + 16 * v29 + 8) & 0xF) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v5 = a3;
  if (v29 == -1)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v13 != *(v12 + 94))
  {
    goto LABEL_22;
  }

  return 1;
}

void *sub_18196AF24(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = 5;
      goto LABEL_6;
    }

    if (!*(v2 + 13))
    {
      if (v3 >= 5 && (*(a1 + 68) & 0x10) == 0 && (*(*v2 + 99) & 0x20) == 0)
      {
        v90 = 0;
        v91 = 0;
        *(a1 + 68) |= 0x10u;
        v92 = *(a1 + 8) + 8;
        v93 = *(a1 + 80);
        v94 = 1;
        do
        {
          v95 = v92 + 72 * v90;
          if ((*(v95 + 24) & 0x22) != 0)
          {
            if (v90 + 4 > v3)
            {
              break;
            }

            if (!v93)
            {
              goto LABEL_188;
            }

            while (*(v93 + 16) <= v90)
            {
              v93 = *(v93 + 72);
              if (!v93)
              {
                goto LABEL_188;
              }
            }
          }

          else if (!v93)
          {
            goto LABEL_188;
          }

          v96 = 0;
          v97 = 0;
          v98 = v93;
          do
          {
            v99 = v92 + 72 * *(v98 + 16);
            if ((*(v99 + 24) & 0x22) != 0)
            {
              break;
            }

            if ((*v98 & v94) != 0)
            {
              v100 = *(v98 + 8);
              if ((v100 & (v96 | v91)) == 0)
              {
                if (*(v99 + 16) == *(v95 + 16))
                {
                  v91 |= v94;
                }

                else
                {
                  ++v97;
                  v96 |= v100;
                }
              }
            }

            v98 = *(v98 + 72);
          }

          while (v98);
          if (v97 >= 4)
          {
            *(a1 + 68) |= 0x20u;
            v101 = 0x8000;
            v102 = v93;
            while (1)
            {
              v103 = *(v102 + 16);
              if (v90 <= v103)
              {
                if (v90 < v103)
                {
LABEL_211:
                  if (v101 == 0x7FFF)
                  {
                    v104 = 0x7FFF;
                  }

                  else
                  {
                    v104 = v101 + 1;
                  }

                  v105 = v93;
                  do
                  {
                    if ((*(v105 + 8) & v96) != 0 && !*(v105 + 52) && *(v105 + 20) < v104)
                    {
                      *(v105 + 20) = v104;
                    }

                    v105 = *(v105 + 72);
                  }

                  while (v105);
                  break;
                }

                if (*(v102 + 20) > v101)
                {
                  v101 = *(v102 + 20);
                }
              }

              v102 = *(v102 + 72);
              if (!v102)
              {
                goto LABEL_211;
              }
            }
          }

LABEL_188:
          ++v90;
          v94 *= 2;
        }

        while (v90 != v3);
      }

      if ((*(a1 + 68) & 0x20) != 0)
      {
        v4 = 18;
      }

      else
      {
        v4 = 12;
      }

      goto LABEL_6;
    }
  }

  v4 = 1;
LABEL_6:
  v5 = 0;
  if (a2)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v5 = *v6;
    }
  }

  v7 = v4;
  result = sub_181929E8C(*v2, 2 * v5 + (16 * v3 + 64) * v4, 1404761561);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = 4 * v7;
  v11 = &result[v10];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &result[v10 + v10];
  v13 = (2 * v7) | 1;
  v14 = 3;
  do
  {
    result[v14] = v12;
    v12 += v3;
    v14 += 4;
    --v13;
  }

  while (v13 > 1);
  v116 = v7;
  if (v5)
  {
    bzero(v12, 2 * v5);
    v15 = *(v2 + 14);
    if (v15 >= 48)
    {
      LOWORD(v15) = 48;
    }

    if (v3)
    {
      v16 = -1;
    }

    else
    {
      v16 = v5;
    }

    *(v11 + 22) = v16;
  }

  else
  {
    v12 = 0;
    v15 = *(v2 + 14);
    if (v15 >= 48)
    {
      LOWORD(v15) = 48;
    }
  }

  v17 = a1;
  *(v11 + 8) = v15;
  if (!v3)
  {
LABEL_170:
    if ((*(v17 + 60) & 0x180) == 0x100)
    {
      if (a2)
      {
        if (!*(v17 + 67))
        {
          v128[0] = 0;
          v85 = sub_1819779B0(v17, *(v17 + 24), v11, 128, (v3 - 1), *(v11[3] + 8 * (v3 - 1)), v128);
          v17 = a1;
          if (**(a1 + 24) == v85)
          {
            *(a1 + 67) = 2;
          }
        }
      }
    }

    v86 = *(v17 + 68);
    *(v17 + 68) = v86 & 0xFB;
    v87 = *(v17 + 16);
    if (v87)
    {
      v88 = *(v11 + 22);
      *(v17 + 65) = *(v11 + 22);
      v89 = *(v17 + 60);
      if ((v89 & 0x80) != 0)
      {
        if (*v87 == v88)
        {
          *(v17 + 67) = 2;
        }
      }

      else
      {
        *(v17 + 96) = v11[1];
        if (v88 <= 0)
        {
          *(v17 + 65) = 0;
          if (v3)
          {
            v106 = *(v11[3] + 8 * (v3 - 1));
            if ((*(v106 + 48) & 0x1000) == 0 && (*(v106 + 48) & 0x104) != 0x104)
            {
              v128[0] = 0;
              v107 = sub_1819779B0(v17, v87, v11, 2048, (v3 - 1), v106, v128);
              v17 = a1;
              v87 = *(a1 + 16);
              if (*v87 == v107)
              {
                *(a1 + 68) |= 4u;
                *(a1 + 96) = v128[0];
              }

              v89 = *(a1 + 60);
            }
          }
        }

        else if (v88 == 1 && (v89 & 3) != 0 && v3)
        {
          *(v17 + 68) = v86 | 4;
        }
      }

      if ((v89 & 0x200) != 0)
      {
        if (v3)
        {
          if (*v87 == *(v17 + 65))
          {
            v128[0] = 0;
            v109 = sub_1819779B0(v17, v87, v11, 0, (v3 - 1), *(v11[3] + 8 * (v3 - 1)), v128);
            v17 = a1;
            if (**(a1 + 16) == v109)
            {
              *(a1 + 68) |= 8u;
              *(a1 + 96) = v128[0];
            }
          }
        }
      }
    }

    *(v17 + 70) = *(v11 + 8);
    goto LABEL_231;
  }

  v118 = v12;
  v123 = v5;
  v110 = v3;
  v112 = v2;
  v126 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
  v111 = v9;
  v22 = v9;
  v23 = v7;
  v113 = v3;
  do
  {
    v24 = v22;
    v114 = v11;
    v25 = 0;
    if (v21 >= 1)
    {
      v26 = 0;
      v115 = v22 + 26;
      v27 = v11;
      v125 = v22;
      v119 = v21;
      while (1)
      {
        v127 = v26;
        v28 = *(v17 + 80);
        if (v28)
        {
          break;
        }

LABEL_27:
        v26 = v127 + 1;
        v27 += 32;
        if (v127 + 1 == v119)
        {
          goto LABEL_24;
        }
      }

      while (1)
      {
        v128[0] = 0;
        v29 = *v27;
        if ((*v28 & ~*v27) != 0)
        {
          goto LABEL_31;
        }

        v30 = *(v28 + 8);
        if ((v30 & v29) != 0)
        {
          goto LABEL_31;
        }

        v31 = *(v27 + 16);
        if ((*(v28 + 49) & 0x40) != 0 && v31 < 3)
        {
          goto LABEL_31;
        }

        v32 = (v31 + *(v28 + 20));
        v33 = *(v28 + 18);
        if (*(v28 + 18))
        {
          if (v33 >= v32)
          {
            if (v32 + 49 >= v33)
            {
              if (v32 + 31 >= v33)
              {
                LOWORD(v32) = v33 + byte_181A245A6[v33 - (v31 + *(v28 + 20))];
              }

              else
              {
                LOWORD(v32) = v33 + 1;
              }
            }

            else
            {
              LOWORD(v32) = *(v28 + 18);
            }
          }

          else if (v33 + 49 >= v32)
          {
            if (v33 + 31 >= v32)
            {
              LOWORD(v32) = v31 + *(v28 + 20) + byte_181A245A6[(v31 + *(v28 + 20)) - v33];
            }

            else
            {
              LOWORD(v32) = v32 + 1;
            }
          }
        }

        LODWORD(v34) = *(v27 + 20);
        v35 = *(v27 + 20);
        if (v32 >= v34)
        {
          if (v34 + 49 >= v32)
          {
            LOWORD(v34) = v34 + 31 >= v32 ? v32 + byte_181A245A6[v32 - v35] : v32 + 1;
          }

          else
          {
            LOWORD(v34) = v32;
          }
        }

        else if (v32 + 49 >= v34)
        {
          if (v32 + 31 >= v34)
          {
            LOWORD(v34) = v34 + byte_181A245A6[v35 - v32];
          }

          else
          {
            LOWORD(v34) = v34 + 1;
          }
        }

        v36 = *(v28 + 22);
        v37 = *(v27 + 22);
        if (v37 < 0)
        {
          v121 = v34;
          v34 = v19;
          v38 = *(v28 + 22);
          v39 = v20;
          v40 = v18;
          v41 = *(v27 + 16);
          v42 = sub_1819779B0(v17, *(v17 + 16), v27, *(v17 + 60), v126, v28, v128);
          v36 = v38;
          v19 = v34;
          LOWORD(v34) = v121;
          LOWORD(v31) = v41;
          v18 = v40;
          v17 = a1;
          v24 = v125;
          v23 = v116;
          v37 = v42;
          v20 = v39;
          if (v37 < 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v128[0] = *(v27 + 8);
        }

        if (v123 <= v37)
        {
LABEL_65:
          v47 = v34;
          LOWORD(v34) = v34 - 2;
          goto LABEL_119;
        }

        v43 = *(v118 + v37);
        if (!v43)
        {
          break;
        }

LABEL_108:
        if (v34 >= v43)
        {
          v66 = v34;
          if (v43 + 49 >= v34)
          {
            if (v43 + 31 >= v34)
            {
              v66 = v34 + byte_181A245A6[v34 - v43];
            }

            else
            {
              v66 = v34 + 1;
            }
          }
        }

        else
        {
          if (v34 + 49 < v43)
          {
            v47 = v43 + 3;
            goto LABEL_119;
          }

          if (v34 + 31 >= v43)
          {
            v66 = v43 + byte_181A245A6[v43 - v34];
          }

          else
          {
            v66 = v43 + 1;
          }
        }

        v47 = v66 + 3;
LABEL_119:
        v67 = (v36 + v31);
        if (v25 < 1)
        {
LABEL_133:
          v73 = v25;
          if (v25 >= v23)
          {
            if (v47 > v19)
            {
              goto LABEL_31;
            }

            v73 = v20;
            if (v47 == v19)
            {
              v73 = v20;
              if (v34 >= v18)
              {
                goto LABEL_31;
              }
            }
          }

          v120 = v20;
          v122 = v18;
          if (v25 < v23)
          {
            ++v25;
          }

          v70 = &v24[4 * v73];
          goto LABEL_137;
        }

        v68 = 0;
        v69 = v30 | v29;
        v70 = v24;
        while (*v70 != v69 || ((*(v70 + 22) ^ v37) & 0x80) != 0)
        {
          ++v68;
          v70 += 4;
          if (v25 == v68)
          {
            goto LABEL_133;
          }
        }

        if (*(v70 + 9) < v47)
        {
          goto LABEL_31;
        }

        if (*(v70 + 9) != v47)
        {
          v120 = v20;
          v122 = v18;
LABEL_137:
          v72 = v23;
          goto LABEL_138;
        }

        v71 = *(v70 + 8);
        if (v71 >= v67)
        {
          v122 = v18;
          if (v71 != v67)
          {
            v120 = v20;
            goto LABEL_137;
          }

          if (*(v70 + 10) >= v34)
          {
            v120 = v20;
            if (*(v70 + 10) == v34)
            {
              v72 = v116;
              if (sub_1819784CC(v28, *(v70[3] + 8 * v126)))
              {
                v17 = a1;
                v23 = v116;
LABEL_140:
                v24 = v125;
                v20 = v120;
                v18 = v122;
                goto LABEL_31;
              }
            }

            else
            {
              v72 = v116;
            }

LABEL_138:
            *v70 = *(v28 + 8) | *v27;
            v70[1] = v128[0];
            *(v70 + 8) = v67;
            *(v70 + 9) = v47;
            *(v70 + 10) = v34;
            *(v70 + 22) = v37;
            memcpy(v70[3], *(v27 + 24), 8 * v126);
            *(v70[3] + 8 * v126) = v28;
            v23 = v72;
            if (v25 >= v72)
            {
              v17 = a1;
              v24 = v125;
              v19 = *(v125 + 9);
              v18 = *(v125 + 8);
              v20 = 0;
              if (v72 < 2)
              {
                goto LABEL_31;
              }

              v74 = 1;
              v75 = v115;
              while (2)
              {
                if (*(v75 - 1) > v19)
                {
                  v76 = *v75;
                }

                else if (*(v75 - 1) != v19 || (v76 = *v75, v76 <= v18))
                {
LABEL_149:
                  v74 = (v74 + 1);
                  v75 += 16;
                  if (v72 == v74)
                  {
                    goto LABEL_31;
                  }

                  continue;
                }

                break;
              }

              v20 = v74;
              v19 = *(v75 - 1);
              v18 = v76;
              goto LABEL_149;
            }

            v17 = a1;
            goto LABEL_140;
          }

          v24 = v125;
          v18 = v18;
        }

LABEL_31:
        v28 = *(v28 + 72);
        if (!v28)
        {
          goto LABEL_27;
        }
      }

      v44 = (**(*(v17 + 32) + 32) + 59) / 30;
      v45 = v44;
      if (v44 >= 8)
      {
        v48 = 40;
        if (v45 >= 0x100)
        {
          v49 = v45;
          do
          {
            v48 += 40;
            v45 = v49 >> 4;
            v50 = v49 > 0xFFF;
            v49 >>= 4;
          }

          while (v50);
        }

        LOBYTE(v51) = v45;
        if (v45 >= 0x10)
        {
          do
          {
            v48 += 10;
            v51 = v45 >> 1;
            v50 = v45 > 0x1F;
            v45 >>= 1;
          }

          while (v50);
        }
      }

      else
      {
        if (v44 < 2)
        {
          v46 = 0;
          goto LABEL_76;
        }

        v48 = 40;
        do
        {
          v48 -= 10;
          LOBYTE(v51) = 2 * v45;
          v52 = v45 >= 4;
          v45 *= 2;
        }

        while (!v52);
      }

      v46 = v48 + word_181A27AA2[v51 & 7] - 10;
LABEL_76:
      v53 = v46 + a2;
      if (v37 < 1)
      {
        goto LABEL_91;
      }

      v54 = 100 * (v123 - v37) / v123;
      v55 = v54;
      if (v54 >= 8)
      {
        v57 = 40;
        if (v55 >= 0x100)
        {
          v58 = v55;
          do
          {
            v57 += 40;
            v55 = v58 >> 4;
            v50 = v58 > 0xFFF;
            v58 >>= 4;
          }

          while (v50);
        }

        LOBYTE(v59) = v55;
        if (v55 >= 0x10)
        {
          do
          {
            v57 += 10;
            v59 = v55 >> 1;
            v50 = v55 > 0x1F;
            v55 >>= 1;
          }

          while (v50);
        }
      }

      else
      {
        if (v54 < 2)
        {
          v56 = -66;
LABEL_90:
          v53 += v56;
LABEL_91:
          if ((*(v17 + 60) & 0x4000) != 0)
          {
            if (v37)
            {
              v61 = 16;
            }

            else
            {
              v61 = 10;
            }

            v53 += v61;
            v60 = *(v17 + 62);
            if (v60 >= a2)
            {
              LOWORD(v60) = a2;
            }
          }

          else
          {
            LOWORD(v60) = a2 - 10;
            if (((a2 > 10) & ((*(v17 + 60) & 0x100) >> 8)) == 0)
            {
              LOWORD(v60) = a2;
            }
          }

          if (v60 < 11)
          {
            v62 = 0;
LABEL_107:
            v43 = v62 + v53;
            *(v118 + v37) = v43;
            goto LABEL_108;
          }

          v63 = v60;
          if (v60 < 0x100u)
          {
            v64 = 40;
            if (v63 < 0x10)
            {
LABEL_106:
              v62 = v64 + word_181A27AA2[v63 & 7] - 43;
              goto LABEL_107;
            }
          }

          else
          {
            v64 = 40;
            v65 = v63;
            do
            {
              v64 += 40;
              v63 = v65 >> 4;
              v50 = v65 > 0xFFF;
              v65 >>= 4;
            }

            while (v50);
            if (v63 < 0x10)
            {
              goto LABEL_106;
            }
          }

          do
          {
            v64 += 10;
            v50 = v63 > 0x1F;
            v63 >>= 1;
          }

          while (v50);
          goto LABEL_106;
        }

        v57 = 40;
        do
        {
          v57 -= 10;
          LOBYTE(v59) = 2 * v55;
          v52 = v55 >= 4;
          v55 *= 2;
        }

        while (!v52);
      }

      v56 = v57 + word_181A27AA2[v59 & 7] - 76;
      goto LABEL_90;
    }

LABEL_24:
    v22 = v114;
    v11 = v24;
    v21 = v25;
    v3 = v113;
    ++v126;
  }

  while (v126 != v113);
  if (v25)
  {
    if (v25 < 2)
    {
      v79 = v110;
      v9 = v111;
    }

    else
    {
      v77 = v24 + 4;
      v78 = v25 - 1;
      v79 = v110;
      v9 = v111;
      do
      {
        if (*(v24 + 9) > *(v77 + 9))
        {
          v24 = v77;
        }

        v77 += 4;
        --v78;
      }

      while (v78);
    }

    v80 = v24[3];
    v81 = *(v17 + 8) + 8;
    v82 = (v17 + 952);
    v2 = v112;
    do
    {
      v83 = *v80++;
      *v82 = v83;
      v84 = *(v83 + 16);
      *(v82 - 32) = v84;
      *(v82 - 23) = *(v81 + 72 * v84 + 28);
      v82 += 15;
      --v79;
    }

    while (v79);
    v11 = v24;
    goto LABEL_170;
  }

  v2 = v112;
  sub_181910730(v112, "no query solution");
  v9 = v111;
LABEL_231:
  v108 = *v2;

  return sub_181929C84(v108, v9);
}

uint64_t sub_18196BC60(uint64_t result)
{
  v1 = *(result + 64);
  if (*(result + 64))
  {
    for (i = 0; i < v1; ++i)
    {
      v3 = *(result + 856 + 120 * i + 96);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 48);
      if ((v4 & 0x400) == 0)
      {
        if ((v4 & 0xD) == 0)
        {
          return result;
        }

        v5 = *(result + 80);
        if (v5)
        {
          v6 = *(v3 + 16);
          do
          {
            if (*(v5 + 16) == v6 && (*(v5 + 48) & 0x400F) == 0)
            {
              *v5 = -1;
            }

            v5 = *(v5 + 72);
          }

          while (v5);
          v1 = *(result + 64);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18196BCEC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v1 + 18;
    do
    {
      v5 = *(v4 - 39);
      if ((v5 & 0x200) == 0 || (v5 & 4) == 0 || *(*(v4 - 2) + 18) || !*(**v4 + 72))
      {
        *(result + 96) |= 1 << v3;
      }

      ++v3;
      v4 += 18;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_18196BD5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v5 = 0;
LABEL_23:
    v14 = *(a1 + 16);
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v3 = *v2;
  if (*v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v7 = *&v2[6 * v4 + 2];
      if (v7)
      {
        if (*v7 == 168 && (*(v7 + 1) & 0x20) == 0)
        {
          v9 = *(v7 + 11);
          if (*(a1 + 600) == v9)
          {
            v6 = 1;
            goto LABEL_6;
          }

          v10 = *(a1 + 596);
          if (v10 >= 2)
          {
            v11 = (a1 + 604);
            v12 = 1;
            while (1)
            {
              v13 = *v11++;
              if (v13 == v9)
              {
                break;
              }

              if (v10 == ++v12)
              {
                goto LABEL_5;
              }
            }

            v6 = 1 << v12;
            goto LABEL_6;
          }
        }

        else if ((*(v7 + 1) & 0x810000) == 0)
        {
          v6 = sub_1819725E8((a1 + 592), v7);
          v3 = *v2;
          goto LABEL_6;
        }
      }

LABEL_5:
      v6 = 0;
LABEL_6:
      v5 |= v6;
      if (++v4 >= v3)
      {
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
  v14 = *(a1 + 16);
  if (v14)
  {
LABEL_24:
    v15 = *v14;
    if (*v14 < 1)
    {
      v17 = 0;
LABEL_47:
      v5 |= v17;
      goto LABEL_48;
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      v19 = *&v14[6 * v16 + 2];
      if (v19)
      {
        if (*v19 == 168 && (*(v19 + 1) & 0x20) == 0)
        {
          v21 = *(v19 + 11);
          if (*(a1 + 600) == v21)
          {
            v18 = 1;
            goto LABEL_28;
          }

          v22 = *(a1 + 596);
          if (v22 >= 2)
          {
            v23 = (a1 + 604);
            v24 = 1;
            while (1)
            {
              v25 = *v23++;
              if (v25 == v21)
              {
                break;
              }

              if (v22 == ++v24)
              {
                goto LABEL_27;
              }
            }

            v18 = 1 << v24;
            goto LABEL_28;
          }
        }

        else if ((*(v19 + 1) & 0x810000) == 0)
        {
          v18 = sub_1819725E8((a1 + 592), v19);
          v15 = *v14;
          goto LABEL_28;
        }
      }

LABEL_27:
      v18 = 0;
LABEL_28:
      v17 |= v18;
      if (++v16 >= v15)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_48:
  v26 = *(a1 + 64);
  v27 = -1;
  if (v26 >= 2)
  {
    v28 = a1 + 856;
    v29 = *(*(a1 + 8) + 32);
    v30 = *(a1 + 64);
    do
    {
      v33 = (v28 + 120 * (v26 - 1));
      v34 = v33[12];
      v35 = *(a1 + 8) + 72 * *(v34 + 16);
      if ((*(v35 + 32) & 0x18) == 8 && ((*(a1 + 60) & 0x100) != 0 || (*(v34 + 49) & 0x10) != 0))
      {
        v31 = *(v34 + 8);
        if ((v31 & v5) == 0)
        {
          v36 = *(a1 + 136);
          v37 = *(a1 + 124);
          v38 = v36 + 56 * v37;
          if (v37 < 1)
          {
LABEL_66:
            *(a1 + 96) = (-1 << (v26 - 1)) & (*(a1 + 96) >> 1) | *(a1 + 96) & ~(-1 << (v26 - 1));
            v40 = *(v34 + 8);
            if (v37 >= 1)
            {
              do
              {
                if ((*(v36 + 48) & v40) != 0)
                {
                  *(v36 + 18) |= 4u;
                }

                v36 += 56;
              }

              while (v36 < v38);
              v30 = *(a1 + 64);
            }

            if (v30 != v26)
            {
              memmove(v33, (v28 + 120 * v26), 120 * (v30 - v26));
              v30 = *(a1 + 64);
            }

            v27 &= ~v40;
            *(a1 + 64) = --v30;
          }

          else
          {
            v39 = *(a1 + 136);
            while (((v39[6] & v31) == 0 || (*(*v39 + 4) & 1) != 0 && *(*v39 + 56) == *(v35 + 36)) && ((v29 & 0x40) == 0 || (*(*v39 + 4) & 2) == 0 || *(*v39 + 56) != *(v35 + 36)))
            {
              v39 += 7;
              if (v39 >= v38)
              {
                goto LABEL_66;
              }
            }
          }
        }
      }
    }

    while (v26-- > 2);
  }

  return v27;
}

uint64_t sub_18196C0F4(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = *(result + 8) + 8;
    v2 = *(result + 952);
    v3 = *(v1 + 72 * *(v2 + 16) + 16);
    v4 = *(v3 + 48);
    if ((v4 & 0x10) != 0)
    {
      *(v3 + 48) = v4 | 0x100;
      if (*(result + 64) >= 2u)
      {
        v5 = *(v2 + 22);
        v6 = (result + 1072);
        v7 = 1;
        do
        {
          v8 = *v6;
          v9 = *(v1 + 72 * *(*v6 + 16) + 16);
          v10 = *(v9 + 48);
          if ((v10 & 0x10) == 0)
          {
            break;
          }

          *(v9 + 48) = v10 | 0x100;
          v11 = *(v8 + 48);
          v12 = (~v11 & 0x800001) != 0 || (*(v8 + 48) & 0x300) == 0;
          if (!v12 && *(v9 + 58) < v5)
          {
            *(v8 + 48) = v11 & 0xFFBFFFBF | 0x400000;
          }

          v5 += *(v8 + 22);
          ++v7;
          v6 += 15;
        }

        while (v7 < *(result + 64));
      }
    }
  }

  return result;
}

uint64_t *sub_18196C1C4(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a2 + 96))
  {
    v6 = result;
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = 8;
    do
    {
      v10 = *(*(a2 + 8) + 2 * v7);
      if (v10 == -2)
      {
        v11 = (*(a2 + 80) + v9);
      }

      else
      {
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_3;
        }

        v13 = *(v8 + 8) + 16 * v10;
        if ((*(v13 + 14) & 0x20) == 0)
        {
          goto LABEL_3;
        }

        v14 = *(v13 + 12);
        if (!v14 || *(v8 + 63) || (v17 = *(v8 + 80)) == 0 || *v17 < v14)
        {
          v12 = 0;
          goto LABEL_12;
        }

        v11 = &v17[6 * (v14 - 1) + 2];
      }

      v12 = *v11;
LABEL_12:
      v20 = 0x100000000;
      v21 = 0;
      v19[3] = 0;
      v19[0] = 0;
      v19[1] = sub_1818C7E14;
      v19[2] = sub_18195A49C;
      if (!v12)
      {
        goto LABEL_3;
      }

      result = sub_181959BA0(v19, v12);
      if (WORD2(v20))
      {
        goto LABEL_3;
      }

      if (*v6)
      {
        result = sub_181929E8C(*v6, 0x20uLL, 0x10200401557451CLL);
        v15 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181902484(32, 0x10200401557451CLL);
        v15 = result;
        if (!result)
        {
          return result;
        }
      }

      *(v15 + 24) = v6[12];
      result = sub_1818C7FEC(*v6, v12, 0, 0);
      *v15 = result;
      *(v15 + 8) = *(a4 + 28);
      *(v15 + 12) = a3;
      *(v15 + 16) = v7;
      *(v15 + 20) = (*(a4 + 24) & 0x58) != 0;
      v16 = *(a2 + 32);
      if (!v16)
      {
        result = sub_181978718(*v6, a2);
        if (!result)
        {
          goto LABEL_22;
        }

        v16 = *(a2 + 32);
      }

      *(v15 + 21) = *(v16 + v7);
LABEL_22:
      v6[12] = v15;
      if (!*(v15 + 24))
      {
        result = sub_18195B158(v6, sub_1819786B0, (v6 + 12));
      }

LABEL_3:
      ++v7;
      v9 += 24;
    }

    while (v7 < *(a2 + 96));
  }

  return result;
}

uint64_t sub_18196C3E0(uint64_t result, uint64_t a2, unsigned __int8 **a3, void *a4, int a5, uint64_t a6)
{
  v9 = a3;
  v11 = result;
  v12 = *a3;
  if (v12 == 44)
  {
    result = sub_18196C3E0(result, a2, a3[3], a4, a5, a6);
    v9 = v9[2];
    v12 = *v9;
  }

  if (v12 == 54 || v12 == 45)
  {
    v13 = v9[2];
    if (*v13 == 168)
    {
      v14 = v9[3];
      v26 = 0x100000000;
      v27 = 0;
      v25[0] = 0;
      v25[1] = sub_1818C7E14;
      v25[2] = sub_18195A49C;
      v25[3] = 0;
      if (!v14 || (result = sub_181959BA0(v25, v14), WORD2(v26)))
      {
        v15 = 3;
        if ((*(v9 + 1) & 0x400) != 0)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        if ((*(v9 + 1) & 0x400) != 0)
        {
          v15 = 2;
        }

        v17 = v9[v16];
        if ((v17[5] & 2) != 0)
        {
          result = sub_1818B4720(v11, v17);
          if (!result)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v18 = v9[v15];
          if (v18 && (v18[5] & 2) != 0 || (result = sub_1818B4720(v11, v17)) == 0)
          {
            result = sub_1818B4720(v11, v18);
            if (!result)
            {
LABEL_21:
              v19 = *(v13 + 12);
              if ((v19 & 0x80000000) == 0)
              {
                v20 = *(*(*(a2 + 24) + 8) + 16 * v19 + 9);
                if (v20 >= 0x42)
                {
                  if (a6)
                  {
                    v21 = *v11;
                    if (*v11)
                    {
                      result = sub_181929E8C(*v11, 0x20uLL, 0x10200401557451CLL);
                    }

                    else
                    {
                      result = sub_181902484(32, 0x10200401557451CLL);
                    }

                    v22 = result;
                    if (result)
                    {
                      v23 = *(a6 + 24) & 0x48;
                      if (v14)
                      {
                        result = sub_1818C7FEC(v21, v14, 0, 0);
                      }

                      else
                      {
                        result = 0;
                      }

                      *v22 = result;
                      *(v22 + 8) = *(a6 + 28);
                      *(v22 + 12) = a5;
                      *(v22 + 16) = *(v13 + 12);
                      *(v22 + 20) = v23 != 0;
                      v24 = v11[13];
                      *(v22 + 24) = v24;
                      *(v22 + 21) = v20;
                      v11[13] = v22;
                      if (!v24)
                      {
                        return sub_18195B158(v11, sub_1819786B0, (v11 + 13));
                      }
                    }
                  }

                  else if (v19 <= 0x3E)
                  {
                    *a4 &= ~(1 << v19);
                  }
                }
              }

              return result;
            }
          }
        }

        if (*(result + 24) != sub_1818D0EC0)
        {
          return result;
        }

        goto LABEL_21;
      }
    }
  }

  return result;
}

void *sub_18196C654(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a1[2];
  v7 = *(v6 + 144);
  v173 = v6;
  if (*(v6 + 148) <= v7)
  {
    v165 = sub_18194C8AC(v6, 15, 0, 0, 0);
  }

  else
  {
    *(v6 + 144) = v7 + 1;
    v165 = v7;
    v8 = *(v6 + 136) + 40 * v7;
    *v8 = 15;
    *(v8 + 1) = 0u;
    *(v8 + 17) = 0u;
    *(v8 + 32) = 0;
  }

  v9 = *(*a2 + 8);
  v10 = v9 + 72 * *(a4 + 64);
  v11 = a2[4];
  v170 = a2;
  v12 = *(a2 + 5);
  v13 = v11 + 56 * v12;
  v174 = *(v10 + 24);
  v175 = *(a4 + 96);
  if (v12 < 1)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
LABEL_42:
    *(v175 + 52) = v14;
    *(v175 + 24) = v14;
    *(v175 + 48) = 16961;
    if (*(v174 + 63) == 2)
    {
      v27 = ~v16;
    }

    else
    {
      v27 = *(v10 + 40) & (~v16 | 0x8000000000000000);
    }

    v28 = *(v174 + 48);
    v29 = *(v174 + 54);
    v177 = v15;
    if ((v28 & 0x80) != 0)
    {
      if (v29 >= 1)
      {
        v32 = 0;
        v33 = (*(v174 + 8) + 14);
        while (1)
        {
          v34 = *v33;
          v33 += 8;
          if (v34)
          {
            if (v32 >= 0x3F)
            {
              v27 |= 0x8000000000000000;
              goto LABEL_46;
            }

            v35 = 1 << v32;
            if (((1 << v32) & v16) != 0)
            {
              v35 = 0;
            }

            v27 |= v35;
          }

          if (v29 == ++v32)
          {
            goto LABEL_46;
          }
        }
      }

      v167 = 0;
      LODWORD(v30) = *(v174 + 54);
LABEL_72:
      v172 = v5;
      v40 = *v5;
      v169 = ((*(v10 + 40) >> 63) & (v29 - 63)) + v14;
      v41 = v169 + (((v28 >> 7) & 1) == 0);
      v42 = v41;
      v43 = 2 * v41;
      v44 = v43 + 2;
      v45 = v42 * 8 + ((3 * v41 + v43 + 2 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v40)
      {
        result = sub_181929E8C(v40, v45 + 112, 3329821686);
        v46 = result;
        if (result)
        {
          goto LABEL_74;
        }
      }

      else
      {
        result = sub_181902484(v45 + 112, 3329821686);
        v46 = result;
        if (result)
        {
LABEL_74:
          bzero(v46, v45 + 112);
          v47 = &v46[v42 + 14];
          v46[1] = v47 + v44;
          v46[2] = v47;
          v46[7] = v47 + v44 + v43;
          v46[8] = v46 + 14;
          *(v46 + 48) = v41;
          *(v46 + 47) = v41 - 1;
          v48 = v174;
          *(v175 + 32) = v46;
          *v46 = "auto-index";
          v46[3] = v174;
          v49 = v170[4];
          if (v49 < v13)
          {
            v164 = 0;
            v163 = 0;
            LODWORD(v50) = 0;
            v5 = v172;
            v51 = v177;
            while (1)
            {
              v52 = *(v49 + 7);
              if (v52 != *(v10 + 36))
              {
                goto LABEL_77;
              }

              if ((*(v49 + 10) & 0x82) == 0)
              {
                goto LABEL_77;
              }

              if ((*(v10 + 32) & 0x58) != 0)
              {
                v53 = *(*v49 + 4);
                if ((v53 & 3) == 0 || *(*v49 + 56) != v52 || (*(v10 + 32) & 0x18) != 0 && (v53 & 2) != 0)
                {
                  goto LABEL_77;
                }
              }

              if ((v49[5] & a3) != 0)
              {
                goto LABEL_77;
              }

              v54 = *(v49 + 8);
              if ((v54 & 0x80000000) != 0)
              {
                v51 = v177;
                goto LABEL_77;
              }

              v55 = *(v10 + 24);
              v162 = *v49;
              if (sub_181973454(*v49, *(*(v55 + 8) + 16 * v54 + 9)))
              {
                if (sub_1819777E0(v55, v54))
                {
                  v56 = v54 <= 0x3F ? 1 << v54 : 0x8000000000000000;
                  if ((v56 & v163) == 0)
                  {
                    break;
                  }
                }
              }

              v51 = v177;
LABEL_94:
              v48 = v174;
LABEL_77:
              v49 += 7;
              if (v49 >= v13)
              {
                v68 = v164 != 0;
                if (v167)
                {
                  goto LABEL_120;
                }

                goto LABEL_124;
              }
            }

            *(v46[1] + 2 * v50) = v54;
            v57 = 24;
            if ((*(v162 + 4) & 0x400) != 0)
            {
              v58 = 24;
            }

            else
            {
              v58 = 16;
            }

            if ((*(v162 + 4) & 0x400) != 0)
            {
              v57 = 16;
            }

            v59 = *(v162 + v58);
            if ((v59[5] & 2) != 0)
            {
              v62 = v172;
            }

            else
            {
              v60 = *(v162 + v57);
              if (!v60 || (v60[5] & 2) == 0)
              {
                v61 = sub_1818B4720(v172, v59);
                if (v61)
                {
                  goto LABEL_108;
                }
              }

              v62 = v172;
              v59 = v60;
            }

            v61 = sub_1818B4720(v62, v59);
            if (!v61)
            {
              v63 = "BINARY";
LABEL_110:
              v163 |= v56;
              *(v46[8] + 8 * v50) = v63;
              LODWORD(v50) = v50 + 1;
              v64 = *(v162 + 16);
              v51 = v177;
              if (v64)
              {
                v65 = sub_1818D0A24(v64);
                v66 = v164;
                if (v65 != 66)
                {
                  v66 = 1;
                }

                v164 = v66;
              }

              goto LABEL_94;
            }

LABEL_108:
            v63 = *v61;
            goto LABEL_110;
          }

          LODWORD(v50) = 0;
          v68 = 0;
          v5 = v172;
          v51 = v177;
          if (v167)
          {
LABEL_120:
            v69 = 0;
            do
            {
              if ((v27 >> v69))
              {
                *(v46[1] + 2 * v50) = v69;
                *(v46[8] + 8 * v50) = "BINARY";
                LODWORD(v50) = v50 + 1;
              }

              ++v69;
            }

            while (v30 != v69);
          }

LABEL_124:
          if ((*(v10 + 40) & 0x8000000000000000) != 0 && *(v48 + 54) >= 64)
          {
            v50 = v50;
            v70 = 63;
            do
            {
              *(v46[1] + 2 * v50) = v70;
              *(v46[8] + 8 * v50++) = "BINARY";
              ++v70;
            }

            while (v70 < *(v48 + 54));
          }

          if ((*(v48 + 48) & 0x80) == 0)
          {
            *(v46[1] + 2 * v50) = -1;
            *(v46[8] + 8 * v50) = "BINARY";
          }

          v71 = *v5;
          if ((*(*v5 + 49) & 4) == 0 || *(v5 + 301) == 2)
          {
LABEL_132:
            v72 = 0;
            goto LABEL_133;
          }

          v80 = v46[3];
          v81 = &unk_1EA831560;
          if (!sqlite3_initialize())
          {
            v82 = sub_181902484(32, 0x10300409A0FC5E0);
            if (v82)
            {
              v81 = v82;
              v83 = *(v71 + 136);
              *v82 = 0;
              *(v82 + 8) = 0;
              *(v82 + 16) = 0;
              *(v82 + 20) = v83;
              *(v82 + 28) = 0;
            }

            else
            {
              v81 = &unk_1EA831560;
            }
          }

          sqlite3_str_appendf(v81, "CREATE AUTOMATIC INDEX ON %s(", *v80);
          if (*(v46 + 48) >= 2u)
          {
            sqlite3_str_appendf(v81, "%s%s", &byte_181A2878D, *(*(v80 + 8) + 16 * *v46[1]));
            if (*(v46 + 48) >= 3u)
            {
              v152 = 1;
              do
              {
                sqlite3_str_appendf(v81, "%s%s", ", ", *(*(v80 + 8) + 16 * *(v46[1] + 2 * v152++)));
              }

              while (v152 < *(v46 + 48) - 1);
            }
          }

          v5 = v172;
          if (v81 == &unk_1EA831560)
          {
            goto LABEL_266;
          }

          v153 = v81[1];
          if (v153 && (v153[*(v81 + 6)] = 0, *(v81 + 5)) && (*(v81 + 29) & 4) == 0)
          {
            v154 = sub_18192A12C(v81);
          }

          else
          {
            v154 = v81[1];
          }

          v155 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(v81);
            --qword_1ED456A90;
            off_1ED452EB0(v81);
            v81 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
LABEL_257:
              if (v154)
              {
                v156 = " WHERE <expr>";
                if (!v177)
                {
                  v156 = &byte_181A2878D;
                }

                v72 = sub_18195AD8C(v172, 0, "%s)%s", v154, v156);
                v157 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48[0] -= xmmword_1ED452EC0(v154);
                  --qword_1ED456A90;
                  off_1ED452EB0(v154);
                  v154 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_268;
                  }

                  v157 = &xmmword_1ED452F28;
                }

                (*v157)(v154);
LABEL_268:
                v51 = v177;
LABEL_133:
                v73 = *(v5 + 14);
                *(v5 + 14) = v73 + 1;
                *(a4 + 8) = v73;
                v74 = v169 + 1;
                v75 = *(v173 + 144);
                if (*(v173 + 148) <= v75)
                {
                  sub_18194C8AC(v173, 116, v73, v74, 0);
                }

                else
                {
                  *(v173 + 144) = v75 + 1;
                  v76 = *(v173 + 136) + 40 * v75;
                  *v76 = 116;
                  *(v76 + 4) = v73;
                  *(v76 + 8) = v74;
                  *(v76 + 12) = 0;
                  *(v76 + 28) = 0;
                  *(v76 + 20) = 0;
                  *(v76 + 36) = 0;
                }

                v77 = v5[2];
                v78 = sub_1819572CC(v5, v46);
                if (v78)
                {
                  if (*(*v77 + 103))
                  {
                    if (!*(*v77 + 824) && (*v78)-- == 1)
                    {
                      sub_181939EC8(v78[2], v78);
                    }
                  }

                  else
                  {
                    v84 = *(v77 + 136) + 40 * *(v77 + 144);
                    *(v84 - 39) = -8;
                    *(v84 - 24) = v78;
                  }
                }

                if ((*(*v5 + 98) & 8) == 0 && v68)
                {
                  sub_181978894(v5, *v170, a4);
                  v85 = *(v5 + 15) + 1;
                  *(v5 + 15) = v85;
                  *(a4 + 52) = v85;
                  v86 = *(v173 + 144);
                  if (*(v173 + 148) <= v86)
                  {
                    sub_18194C8AC(v173, 77, 10000, v85, 0);
                    if ((*(v10 + 33) & 0x40) == 0)
                    {
LABEL_150:
                      v88 = *(a4 + 4);
                      v89 = *(v173 + 144);
                      if (*(v173 + 148) <= v89)
                      {
                        v89 = sub_18194C8AC(v173, 36, v88, 0, 0);
                        v179 = 0;
                        if (!v51)
                        {
                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        v179 = 0;
                        *(v173 + 144) = v89 + 1;
                        v90 = *(v173 + 136) + 40 * v89;
                        *v90 = 36;
                        *(v90 + 4) = v88;
                        *(v90 + 8) = 0u;
                        *(v90 + 24) = 0u;
                        if (!v51)
                        {
                          goto LABEL_167;
                        }
                      }

                      goto LABEL_157;
                    }

LABEL_154:
                    v91 = *(v10 + 72);
                    v92 = *(v91 + 12);
                    v93 = *(v173 + 144);
                    if (*(v173 + 148) <= v93)
                    {
                      v93 = sub_18194C8AC(v173, 71, 0, 0, 0);
                    }

                    else
                    {
                      *(v173 + 144) = v93 + 1;
                      v94 = *(v173 + 136) + 40 * v93;
                      *v94 = 71;
                      *(v94 + 1) = 0u;
                      *(v94 + 17) = 0u;
                      *(v94 + 32) = 0;
                    }

                    v101 = *(v91 + 8);
                    v102 = *(v173 + 144);
                    v179 = v93;
                    if (*(v173 + 148) <= v102)
                    {
                      sub_18194C8AC(v173, 11, v92, 0, v101);
                    }

                    else
                    {
                      *(v173 + 144) = v102 + 1;
                      v103 = *(v173 + 136) + 40 * v102;
                      *v103 = 11;
                      *(v103 + 4) = v92;
                      *(v103 + 8) = 0;
                      *(v103 + 12) = v101;
                      *(v103 + 24) = 0;
                      *(v103 + 32) = 0;
                      *(v103 + 16) = 0;
                    }

                    v89 = *(v173 + 144);
                    if (*(v173 + 148) <= v89)
                    {
                      v89 = sub_18194C8AC(v173, 12, v92, 0, 0);
                      if (!v51)
                      {
                        goto LABEL_167;
                      }
                    }

                    else
                    {
                      *(v173 + 144) = v89 + 1;
                      v104 = *(v173 + 136) + 40 * v89;
                      *v104 = 12;
                      *(v104 + 4) = v92;
                      *(v104 + 8) = 0u;
                      *(v104 + 24) = 0u;
                      if (!v51)
                      {
LABEL_167:
                        v97 = -1;
                        v98 = *(v5 + 31);
                        if (!v98)
                        {
                          goto LABEL_168;
                        }

                        goto LABEL_158;
                      }
                    }

LABEL_157:
                    v95 = *(v5 + 18);
                    v96 = (v95 - 1);
                    *(v5 + 18) = v96;
                    sub_1818DD640(v5, v51, v96, 16);
                    *(v175 + 48) |= 0x20000u;
                    v97 = -v95;
                    v98 = *(v5 + 31);
                    if (!v98)
                    {
LABEL_168:
                      v100 = (*(v5 + 15) + 1);
                      *(v5 + 15) = v100;
LABEL_169:
                      result = sub_1818D72E8(v5, v46, *(a4 + 4), v100, 0, 0, 0, 0);
                      v105 = result;
                      v106 = *(a4 + 52);
                      if (v106)
                      {
                        v107 = *(v175 + 24);
                        v108 = *(v173 + 144);
                        if (*(v173 + 148) <= v108)
                        {
                          result = sub_18194CAFC(v173, 183, v106, 0, result, v107);
                        }

                        else
                        {
                          *(v173 + 144) = v108 + 1;
                          v109 = *(v173 + 136) + 40 * v108;
                          *v109 = 64951;
                          *(v109 + 4) = v106;
                          *(v109 + 8) = 0;
                          *(v109 + 12) = result;
                          *(v109 + 16) = v107;
                          *(v109 + 24) = 0;
                          *(v109 + 32) = 0;
                        }
                      }

                      v110 = *(v173 + 144);
                      if ((*(*v173 + 49) & 4) != 0)
                      {
                        v111 = *(v173 + 392);
                        v112 = 56 * v111;
                        v113 = v111 + 1;
                        while (--v113 >= 1)
                        {
                          v114 = v112 - 56;
                          v115 = *(v173 + 400);
                          v116 = *(v115 + v112 - 56);
                          v112 -= 56;
                          if (v116 == v72)
                          {
                            if (v72 >= 1)
                            {
                              *(v115 + v114 + 28) = v72;
                            }

                            if (v110 >= 1)
                            {
                              *(v115 + v114 + 32) = v110;
                            }

                            break;
                          }
                        }
                      }

                      v117 = *(a4 + 8);
                      if (*(v173 + 148) <= v110)
                      {
                        result = sub_18194C8AC(v173, 138, v117, v100, 0);
                      }

                      else
                      {
                        *(v173 + 144) = v110 + 1;
                        v118 = *(v173 + 136) + 40 * v110;
                        *v118 = 138;
                        *(v118 + 4) = v117;
                        *(v118 + 8) = v100;
                        *(v118 + 12) = 0;
                        *(v118 + 28) = 0;
                        *(v118 + 20) = 0;
                        *(v118 + 36) = 0;
                      }

                      v119 = *(v173 + 144);
                      if (v119 >= 1)
                      {
                        *(*(v173 + 136) + 40 * v119 - 38) = 16;
                      }

                      if (v177)
                      {
                        result = *(v173 + 24);
                        if (*(result + 18) + *(result + 19) < 0)
                        {
                          result = sub_18195CB84(result, v173, v97);
                          if ((*(v10 + 33) & 0x40) == 0)
                          {
LABEL_190:
                            v120 = *(a4 + 4);
                            v121 = v89 + 1;
                            v122 = *(v173 + 144);
                            if (*(v173 + 148) <= v122)
                            {
                              result = sub_18194C8AC(v173, 39, v120, v121, 0);
                            }

                            else
                            {
                              *(v173 + 144) = v122 + 1;
                              v123 = *(v173 + 136) + 40 * v122;
                              *v123 = 39;
                              *(v123 + 4) = v120;
                              *(v123 + 8) = v121;
                              *(v123 + 12) = 0;
                              *(v123 + 28) = 0;
                              *(v123 + 20) = 0;
                              *(v123 + 36) = 0;
                            }

                            v124 = *(v173 + 144);
                            if (v124 >= 1)
                            {
                              *(*(v173 + 136) + 40 * v124 - 38) = 3;
                            }

                            goto LABEL_215;
                          }

LABEL_196:
                          if (*(*v173 + 103))
                          {
                            v125 = &byte_1EA831A58;
                          }

                          else
                          {
                            v125 = (*(v173 + 136) + 40 * v179);
                          }

                          *(v125 + 2) = v105 + v50;
                          v126 = v5[2];
                          if (*(*v126 + 103))
                          {
                            v127 = &byte_1EA831A58;
                          }

                          else
                          {
                            v127 = (*(v126 + 136) + 40 * v89);
                          }

                          if (!*(*v5 + 103))
                          {
                            v128 = *(v126 + 144);
                            v129 = __OFSUB__(v128, v89);
                            v130 = v128 - v89;
                            if (!((v130 < 0) ^ v129 | (v130 == 0)))
                            {
                              v131 = *(*(v10 + 72) + 16);
                              v132 = *(a4 + 4);
                              v133 = *(a4 + 8);
                              v134 = v127 + 8;
                              do
                              {
                                if (*(v134 - 1) == v132)
                                {
                                  v135 = *(v134 - 8);
                                  if (v135 == 135)
                                  {
                                    *(v134 - 8) = 126;
                                    *(v134 - 1) = v133;
                                  }

                                  else if (v135 == 94)
                                  {
                                    *(v134 - 8) = 80;
                                    v136 = v134[1];
                                    *(v134 - 1) = *v134 + v131;
                                    *v134 = v136;
                                    *(v134 - 3) = 2;
                                  }
                                }

                                v134 += 10;
                                --v130;
                              }

                              while (v130);
                            }
                          }

                          v137 = *(v173 + 144);
                          if (*(v173 + 148) <= v137)
                          {
                            result = sub_18194C8AC(v173, 9, 0, v89, 0);
                          }

                          else
                          {
                            *(v173 + 144) = v137 + 1;
                            v138 = *(v173 + 136) + 40 * v137;
                            *v138 = 9;
                            *(v138 + 8) = v89;
                            *(v138 + 12) = 0;
                            *(v138 + 28) = 0;
                            *(v138 + 20) = 0;
                            *(v138 + 36) = 0;
                          }

                          *(v10 + 33) &= ~0x40u;
                          v124 = *(v173 + 144);
LABEL_215:
                          v139 = *v173;
                          v140 = *(*v173 + 103);
                          if (*(*v173 + 103))
                          {
                            dword_1EA831A60 = v124;
                            if (!v100)
                            {
                              goto LABEL_221;
                            }
                          }

                          else
                          {
                            *(*(v173 + 136) + 40 * v89 + 8) = v124;
                            if (!v100)
                            {
                              goto LABEL_221;
                            }
                          }

                          v141 = *(v5 + 31);
                          if (v141 <= 7)
                          {
                            *(v5 + 31) = v141 + 1;
                            *(v5 + v141 + 46) = v100;
                            v124 = *(v173 + 144);
                          }

LABEL_221:
                          if (v140)
                          {
                            v142 = &byte_1EA831A58;
                          }

                          else
                          {
                            v142 = (*(v173 + 136) + 40 * v165);
                          }

                          v67 = v177;
                          *(v142 + 2) = v124;
                          if ((*(v139 + 49) & 4) != 0)
                          {
                            v143 = *(v173 + 392);
                            v144 = 56 * v143;
                            v145 = v143 + 1;
                            while (--v145 >= 1)
                            {
                              v146 = v144 - 56;
                              v147 = *(v173 + 400);
                              v148 = *(v147 + v144 - 56);
                              v144 -= 56;
                              if (v148 == v72)
                              {
                                if (*(v147 + v146 + 4))
                                {
                                  if (*(v147 + v146 + 12))
                                  {
                                    if (*(v147 + v146 + 20))
                                    {
                                      break;
                                    }

                                    v149 = 4;
                                  }

                                  else
                                  {
                                    v149 = 2;
                                  }
                                }

                                else
                                {
                                  v149 = 0;
                                }

                                v150 = v147 + 4 * v149 + v146;
                                *(v150 + 4) = v72;
                                *(v150 + 8) = v124 - 1;
                                break;
                              }
                            }
                          }

                          if (v177)
                          {
                            goto LABEL_237;
                          }

                          return result;
                        }

                        *(result[10] + 4 * v97) = v119;
                      }

                      if ((*(v10 + 33) & 0x40) == 0)
                      {
                        goto LABEL_190;
                      }

                      goto LABEL_196;
                    }

LABEL_158:
                    v99 = v98 - 1;
                    *(v5 + 31) = v99;
                    v100 = *(v5 + v99 + 46);
                    goto LABEL_169;
                  }

                  *(v173 + 144) = v86 + 1;
                  v87 = *(v173 + 136) + 40 * v86;
                  *v87 = 0x27100000004DLL;
                  *(v87 + 8) = v85;
                  *(v87 + 12) = 0;
                  *(v87 + 28) = 0;
                  *(v87 + 20) = 0;
                  *(v87 + 36) = 0;
                }

                if ((*(v10 + 33) & 0x40) == 0)
                {
                  goto LABEL_150;
                }

                goto LABEL_154;
              }

LABEL_266:
              v158 = *v172;
              if (!*(*v172 + 103))
              {
                v51 = v177;
                if (!*(v158 + 104))
                {
                  *(v158 + 103) = 1;
                  if (*(v158 + 220) >= 1)
                  {
                    *(v158 + 424) = 1;
                  }

                  ++*(v158 + 432);
                  *(v158 + 436) = 0;
                  v159 = *(v158 + 344);
                  if (v159)
                  {
                    sub_181910730(v159, "out of memory");
                    v160 = *(v158 + 344);
                    *(v160 + 24) = 7;
                    v161 = *(v160 + 216);
                    if (v161)
                    {
                      v72 = 0;
                      do
                      {
                        ++*(v161 + 52);
                        *(v161 + 24) = 7;
                        v161 = *(v161 + 216);
                      }

                      while (v161);
                      goto LABEL_133;
                    }
                  }
                }

                goto LABEL_132;
              }

              v72 = 0;
              goto LABEL_268;
            }

            v155 = &xmmword_1ED452F28;
          }

          (*v155)(v81);
          goto LABEL_257;
        }
      }

      v5 = v172;
      v67 = v177;
      if (v177)
      {
        goto LABEL_237;
      }

      return result;
    }

LABEL_46:
    if (v29 >= 63)
    {
      v30 = 63;
    }

    else
    {
      v30 = v29;
    }

    if (v29 < 1)
    {
      v167 = 0;
      goto LABEL_72;
    }

    if (v29 >= 8)
    {
      v36 = vdupq_n_s64(v27);
      v31 = v30 & 0x38;
      v37.i64[0] = 0x100000001;
      v37.i64[1] = 0x100000001;
      v38 = vbicq_s8(v37, vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20010)), vceqzq_s64(vandq_s8(v36, xmmword_181A20020))));
      v39 = vsubq_s32(v14, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A1FFF0)), vceqzq_s64(vandq_s8(v36, xmmword_181A20000)))));
      if (v31 != 8)
      {
        v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20030)), vceqzq_s64(vandq_s8(v36, xmmword_181A20040)))));
        v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20050)), vceqzq_s64(vandq_s8(v36, xmmword_181A20060)))));
        if (v31 != 16)
        {
          v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20070)), vceqzq_s64(vandq_s8(v36, xmmword_181A20080)))));
          v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20090)), vceqzq_s64(vandq_s8(v36, xmmword_181A200A0)))));
          if (v31 != 24)
          {
            v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A200B0)), vceqzq_s64(vandq_s8(v36, xmmword_181A200C0)))));
            v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A200D0)), vceqzq_s64(vandq_s8(v36, xmmword_181A200E0)))));
            if (v31 != 32)
            {
              v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A200F0)), vceqzq_s64(vandq_s8(v36, xmmword_181A20100)))));
              v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20110)), vceqzq_s64(vandq_s8(v36, xmmword_181A20120)))));
              if (v31 != 40)
              {
                v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20130)), vceqzq_s64(vandq_s8(v36, xmmword_181A20140)))));
                v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20150)), vceqzq_s64(vandq_s8(v36, xmmword_181A20160)))));
                if (v31 != 48)
                {
                  v39 = vsubq_s32(v39, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20170)), vceqzq_s64(vandq_s8(v36, xmmword_181A20180)))));
                  v38 = vsubq_s32(v38, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v36, xmmword_181A20190)), vceqzq_s64(vandq_s8(v36, xmmword_181A201A0)))));
                }
              }
            }
          }
        }
      }

      v14 = vaddvq_s32(vaddq_s32(v38, v39));
      if (v31 == v30)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v31 = 0;
    }

    do
    {
      v14 += (v27 >> v31++) & 1;
    }

    while (v30 != v31);
LABEL_70:
    v167 = 1;
    goto LABEL_72;
  }

  v14 = 0;
  v15 = 0;
  v171 = 0;
  v16 = 0;
  v168 = *(a4 + 96) + 80;
  while (1)
  {
    if ((*(v11 + 18) & 2) == 0)
    {
      v17 = *v11;
      if (sub_18196A6E4(*v11, v9, *(a4 + 64), 0))
      {
        if (v17)
        {
          v18 = sub_1818C7FEC(*v5, v17, 0, 0);
        }

        else
        {
          v18 = 0;
        }

        v15 = sub_181951CA4(v5, v15, v18);
      }
    }

    v19 = *(v11 + 28);
    if (v19 != *(v10 + 36))
    {
      goto LABEL_7;
    }

    if ((*(v11 + 20) & 0x82) == 0)
    {
      goto LABEL_7;
    }

    if ((*(v10 + 32) & 0x58) != 0)
    {
      v20 = *(*v11 + 4);
      if ((v20 & 3) == 0 || *(*v11 + 56) != v19 || (*(v10 + 32) & 0x18) != 0 && (v20 & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((*(v11 + 40) & a3) != 0)
    {
      goto LABEL_7;
    }

    v21 = *(v11 + 32);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    v176 = v15;
    v22 = *(v10 + 24);
    if (sub_181973454(*v11, *(*(v22 + 8) + 16 * v21 + 9)))
    {
      if (sub_1819777E0(v22, v21))
      {
        break;
      }
    }

LABEL_40:
    v15 = v176;
LABEL_7:
    v11 += 56;
    if (v11 >= v13)
    {
      goto LABEL_42;
    }
  }

  if (v21 <= 0x3F)
  {
    v23 = 1 << v21;
  }

  else
  {
    v23 = 0x8000000000000000;
  }

  if (!v171)
  {
    sqlite3_log(284, "automatic index on %s(%s)", *v174, *(*(v174 + 8) + 16 * v21));
    if ((v23 & v16) == 0)
    {
      goto LABEL_32;
    }

LABEL_39:
    v171 = 1;
    goto LABEL_40;
  }

  if ((v23 & v16) != 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v14 < *(v175 + 56))
  {
    v24 = *(v175 + 64);
LABEL_38:
    v24[v14++] = v11;
    v16 |= v23;
    goto LABEL_39;
  }

  v166 = *v5;
  result = sub_181929E8C(*v5, 8 * ((v14 & 0xFFFFFFF8) + 8), 0x2004093837F09);
  if (result)
  {
    v24 = result;
    memcpy(result, *(v175 + 64), 8 * *(v175 + 56));
    v26 = *(v175 + 64);
    if (v26 != v168)
    {
      sub_181929C84(v166, v26);
    }

    *(v175 + 64) = v24;
    *(v175 + 56) = (v14 & 0xFFF8) + 8;
    goto LABEL_38;
  }

  v67 = v176;
  if (!v176)
  {
    return result;
  }

LABEL_237:
  v151 = *v5;

  return sub_1819439E0(v151, v67);
}

__n128 sub_18196DBF8(uint64_t *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v7 = a1;
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = (*a1 + 96);
  v79 = *v10;
  v11 = a3[12];
  *(*a1 + 104) = 0;
  v10->n128_u64[0] = 0;
  v12 = *(v9 + 36);
  if (*(v9 + 37) <= v12)
  {
    v76 = sub_18194C8AC(v9, 15, 0, 0, 0);
  }

  else
  {
    *(v9 + 36) = v12 + 1;
    v76 = v12;
    v13 = v9[17] + 40 * v12;
    *v13 = 15;
    *(v13 + 1) = 0u;
    *(v13 + 17) = 0u;
    *(v13 + 32) = 0;
  }

  v81 = v8 + 184;
  v82 = v9;
  v78 = v7 + 107;
  v80 = a4;
  v86 = v7;
  do
  {
    v84 = v11;
    sub_181978894(v8, v7, v5);
    v14 = *(v8 + 72);
    v15 = (v14 - 1);
    *(v8 + 72) = v15;
    v87 = *(v5 + 1);
    v16 = *(v8 + 60) + 1;
    *(v8 + 60) = v16;
    *(v5 + 13) = v16;
    v17 = v7[1];
    v18 = *(v5 + 64);
    v19 = *(*(v17 + 72 * *(v5 + 64) + 24) + 58);
    v83 = v14;
    if (v19 <= 609)
    {
      v21 = v19;
      v22 = ((26215 * v21) >> 18) + ((26215 * v21) >> 31);
      v23 = v19 % 10;
      v24 = v23 - 1;
      if (!v23)
      {
        v24 = 0;
      }

      if (v23 <= 4u)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23 - 2;
      }

      v26 = v25 + 8;
      v27 = v26 << (v22 - 3);
      v28 = v26 >> (3 - v22);
      if (v21 > 29)
      {
        v28 = v27;
      }

      if (v28 >= 0x989680)
      {
        v28 = 10000000;
      }

      if (v28 <= 0x2710)
      {
        v20 = 10000;
      }

      else
      {
        v20 = v28;
      }
    }

    else
    {
      v20 = 10000000;
    }

    v29 = *(v9 + 36);
    if (*(v9 + 37) <= v29)
    {
      sub_18194C8AC(v9, 77, v20, v16, 0);
    }

    else
    {
      *(v9 + 36) = v29 + 1;
      v30 = v9[17] + 40 * v29;
      *v30 = 77;
      *(v30 + 4) = v20;
      *(v30 + 8) = v16;
      *(v30 + 12) = 0;
      *(v30 + 28) = 0;
      *(v30 + 20) = 0;
      *(v30 + 36) = 0;
    }

    v31 = *(v9 + 36);
    if (*(v9 + 37) <= v31)
    {
      v85 = sub_18194C8AC(v9, 36, v87, 0, 0);
    }

    else
    {
      *(v9 + 36) = v31 + 1;
      v85 = v31;
      v32 = v9[17] + 40 * v31;
      *v32 = 36;
      *(v32 + 4) = v87;
      *(v32 + 8) = 0u;
      *(v32 + 24) = 0u;
    }

    v33 = *(v86 + 31);
    if (v33 >= 1)
    {
      v34 = v86[17];
      v35 = v34 + 56 * v33;
      do
      {
        if ((*(v34 + 18) & 2) == 0 && sub_18196A6E4(*v34, v17, v18, 0))
        {
          sub_1818DD640(v8, *v34, v15, 16);
        }

        v34 += 56;
      }

      while (v34 < v35);
    }

    v11 = v84;
    if (*(v84 + 49))
    {
      v9 = v82;
      if (*(v8 + 31))
      {
        v39 = *(v8 + 31) - 1;
        *(v8 + 31) = v39;
        v40 = *(v81 + 4 * v39);
      }

      else
      {
        v40 = *(v8 + 60) + 1;
        *(v8 + 60) = v40;
      }

      v45 = *(v82 + 144);
      if (*(v82 + 148) <= v45)
      {
        sub_18194C8AC(v82, 135, v87, v40, 0);
      }

      else
      {
        *(v82 + 144) = v45 + 1;
        v46 = *(v82 + 136) + 40 * v45;
        *v46 = 135;
        *(v46 + 4) = v87;
        *(v46 + 8) = v40;
        *(v46 + 12) = 0;
        *(v46 + 28) = 0;
        *(v46 + 20) = 0;
        *(v46 + 36) = 0;
      }

      v47 = *(v5 + 13);
      v48 = *(v82 + 144);
      if (*(v82 + 148) <= v48)
      {
        sub_18194CAFC(v82, 183, v47, 0, v40, 1);
        v50 = v83;
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      else
      {
        *(v82 + 144) = v48 + 1;
        v49 = *(v82 + 136) + 40 * v48;
        *v49 = 64951;
        *(v49 + 4) = v47;
        *(v49 + 8) = 0;
        *(v49 + 12) = v40;
        *(v49 + 16) = 1;
        *(v49 + 24) = 0;
        *(v49 + 32) = 0;
        v50 = v83;
        if (!v40)
        {
          goto LABEL_76;
        }
      }

      v51 = *(v8 + 31);
      if (v51 <= 7)
      {
        *(v8 + 31) = v51 + 1;
        *(v81 + 4 * v51) = v40;
      }

      goto LABEL_76;
    }

    v36 = *(v84 + 32);
    v37 = *(v84 + 24);
    if (v37 == 1)
    {
      if (*(v8 + 31))
      {
        v38 = *(v8 + 31) - 1;
        *(v8 + 31) = v38;
        v88 = *(v81 + 4 * v38);
      }

      else
      {
        v88 = *(v8 + 60) + 1;
        *(v8 + 60) = v88;
      }
    }

    else
    {
      v41 = *(v8 + 44);
      v42 = __OFSUB__(v41, v37);
      v43 = v41 - v37;
      v9 = v82;
      if (v43 < 0 != v42)
      {
        v44 = *(v8 + 60);
        v88 = v44 + 1;
        *(v8 + 60) = v44 + v37;
        if (!v37)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v88 = *(v8 + 48);
        *(v8 + 44) = v43;
        *(v8 + 48) = v88 + v37;
        if (!v37)
        {
          goto LABEL_67;
        }
      }
    }

    v77 = v10;
    v52 = 0;
    v53 = 8;
    do
    {
      v54 = *(v36[1] + 2 * v52);
      if (v54 != -2)
      {
        sub_181959FA4(*(v8 + 16), v36[3], v87, v54, (v88 + v52));
        goto LABEL_56;
      }

      *(v8 + 68) = v87 + 1;
      v55 = *(v36[10] + v53);
      v56 = *v8;
      if (!v55)
      {
        v57 = 0;
        if (*(v56 + 103))
        {
          goto LABEL_61;
        }

LABEL_60:
        sub_181956EF4(v8, v57, (v88 + v52));
        goto LABEL_61;
      }

      v57 = sub_1818C7FEC(*v8, v55, 0, 0);
      if (!*(v56 + 103))
      {
        goto LABEL_60;
      }

LABEL_61:
      if (v57)
      {
        sub_1819439E0(v56, v57);
      }

      *(v8 + 68) = 0;
LABEL_56:
      ++v52;
      v53 += 24;
    }

    while (v37 != v52);
    v10 = v77;
    v9 = v82;
    v11 = v84;
LABEL_67:
    v58 = *(v5 + 13);
    v59 = *(v9 + 36);
    if (*(v9 + 37) <= v59)
    {
      sub_18194CAFC(v9, 183, v58, 0, v88, v37);
    }

    else
    {
      *(v9 + 36) = v59 + 1;
      v60 = v9[17] + 40 * v59;
      *v60 = 64951;
      *(v60 + 4) = v58;
      *(v60 + 8) = 0;
      *(v60 + 12) = v88;
      *(v60 + 16) = v37;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0;
    }

    a4 = v80;
    v50 = v83;
    if (v37 == 1)
    {
      if (v88)
      {
        v61 = *(v8 + 31);
        if (v61 <= 7)
        {
          *(v8 + 31) = v61 + 1;
          *(v81 + 4 * v61) = v88;
        }
      }
    }

    else if (*(v8 + 44) < v37)
    {
      *(v8 + 44) = v37;
      *(v8 + 48) = v88;
    }

LABEL_76:
    v62 = v9[3];
    v63 = -v50;
    if (*(v62 + 72) + *(v62 + 76) < 0)
    {
      sub_18195CB84(v62, v9, v63);
      v64 = *(v9 + 36);
    }

    else
    {
      v64 = *(v9 + 36);
      *(*(v62 + 80) + 4 * v63) = v64;
    }

    v65 = v85;
    v7 = v86;
    v66 = *(v5 + 1);
    v67 = v85 + 1;
    if (*(v9 + 37) <= v64)
    {
      sub_18194C8AC(v9, 39, v66, v67, 0);
      v65 = v85;
    }

    else
    {
      *(v9 + 36) = v64 + 1;
      v68 = v9[17] + 40 * v64;
      *v68 = 39;
      *(v68 + 4) = v66;
      *(v68 + 8) = v67;
      *(v68 + 12) = 0;
      *(v68 + 28) = 0;
      *(v68 + 20) = 0;
      *(v68 + 36) = 0;
    }

    v69 = *(v9 + 36);
    v70 = *(*v9 + 103);
    v71 = &byte_1EA831A58;
    if (!*(*v9 + 103))
    {
      v71 = (v9[17] + 40 * v65);
    }

    *(v71 + 2) = v69;
    *(v11 + 48) &= ~0x400000u;
    if ((*(*v8 + 98) & 0x10) != 0)
    {
      break;
    }

    v72 = *(v86 + 64);
    if (++a2 < v72)
    {
      v5 = &v78[15 * a2];
      v73 = v72 - a2;
      while (1)
      {
        if ((*(v86[1] + 8 + 72 * *(v5 + 64) + 24) & 0x48) == 0)
        {
          v11 = v5[12];
          if (v11)
          {
            if ((*v11 & a4) == 0 && (*(v11 + 48) & 0x400004) == 0x400000)
            {
              break;
            }
          }
        }

        ++a2;
        v5 += 15;
        if (!--v73)
        {
          goto LABEL_93;
        }
      }
    }
  }

  while (a2 < v72);
LABEL_93:
  if (v70)
  {
    v74 = &byte_1EA831A58;
  }

  else
  {
    v74 = (v9[17] + 40 * v76);
  }

  *(v74 + 2) = v69;
  result = v79;
  *v10 = v79;
  return result;
}

uint64_t sub_18196E388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[19];
  if (!v4)
  {
    v4 = a1;
  }

  if (*(v4 + 301) != 2 && (*(*a1 + 49) & 4) == 0)
  {
    return 0;
  }

  v5 = 0;
  if ((a4 & 0x20) == 0)
  {
    v6 = *(a3 + 96);
    if ((*(v6 + 48) & 0x2000) == 0)
    {
      v9 = a4;
      v10 = a1[2];
      v11 = *(a1 + 78);
      v12 = *(v6 + 20);
      v13 = *(v10 + 144);
      if (*(v10 + 148) <= v13)
      {
        v15 = a1;
        v5 = sub_18194C8AC(a1[2], 188, *(v10 + 144), v11, v12);
        a1 = v15;
      }

      else
      {
        *(v10 + 144) = v13 + 1;
        v14 = *(v10 + 136) + 40 * v13;
        *v14 = 188;
        *(v14 + 4) = v13;
        *(v14 + 8) = v11;
        *(v14 + 12) = v12;
        *(v14 + 24) = 0;
        *(v14 + 32) = 0;
        *(v14 + 16) = 0;
        v5 = v13;
      }

      sub_181978CA8(a1, v13, a2, a3, v9);
    }
  }

  return v5;
}

uint64_t sub_18196E47C(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v9 = a2;
  v10 = a1;
  v411 = *a1;
  v11 = *(a5 + 96);
  v12 = *(a5 + 64);
  v418 = *(a3 + 8) + 72 * *(a5 + 64);
  v13 = *(v418 + 36);
  v412 = v13;
  if (*(a3 + 600) == v13)
  {
    v14 = -2;
  }

  else
  {
    v15 = *(a3 + 596);
    if (v15 < 2)
    {
LABEL_7:
      v14 = -1;
    }

    else
    {
      v16 = (a3 + 604);
      v17 = 1;
      while (1)
      {
        v18 = *v16++;
        if (v18 == v13)
        {
          break;
        }

        if (v15 == ++v17)
        {
          goto LABEL_7;
        }
      }

      v14 = ~(1 << v17);
    }
  }

  *(a5 + 104) = v14 & a6;
  v19 = *(a3 + 96);
  v20 = a1[9].i32[0];
  v21 = v20 - 1;
  *(a5 + 12) = v20 - 1;
  *(a5 + 16) = v20 - 1;
  v20 -= 2;
  a1[9].i32[0] = v20;
  v416 = v20;
  *(a5 + 24) = v20;
  if (v12 && (*(v418 + 32) & 8) != 0)
  {
    v22 = a1[7].i32[1] + 1;
    a1[7].i32[1] = v22;
    *a5 = v22;
    v23 = *(a2 + 144);
    if (*(a2 + 148) <= v23)
    {
      sub_18194C8AC(a2, 71, 0, v22, 0);
    }

    else
    {
      *(a2 + 144) = v23 + 1;
      v24 = *(a2 + 136) + 40 * v23;
      *v24 = 71;
      *(v24 + 8) = v22;
      *(v24 + 12) = 0;
      *(v24 + 28) = 0;
      *(v24 + 20) = 0;
      *(v24 + 36) = 0;
    }
  }

  LODWORD(v25) = v7;
  if (v7 >= 1)
  {
    v25 = v7;
    v26 = (a3 + 120 * v7 + 912);
    while (!*(v26 - 14) && !*v26)
    {
      v26 -= 15;
      if (v25-- <= 1)
      {
        LODWORD(v25) = 0;
        break;
      }
    }
  }

  v28 = *(v418 + 33);
  v417 = v10;
  v415 = v9;
  if ((v28 & 0x40) != 0)
  {
    v42 = *(v418 + 72);
    v43 = *(v42 + 8);
    v44 = *(v42 + 12);
    v45 = *(v9 + 144);
    v46 = v418;
    if (*(v9 + 148) <= v45)
    {
      sub_18194C8AC(v9, 11, v44, 0, v43);
    }

    else
    {
      *(v9 + 144) = v45 + 1;
      v47 = *(v9 + 136) + 40 * v45;
      *v47 = 11;
      *(v47 + 4) = v44;
      *(v47 + 8) = 0;
      *(v47 + 12) = v43;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0;
      *(v47 + 16) = 0;
    }

    v54 = *(v9 + 144);
    if (*(v9 + 148) <= v54)
    {
      v54 = sub_18194C8AC(v9, 12, v44, v21, 0);
    }

    else
    {
      *(v9 + 144) = v54 + 1;
      v55 = *(v9 + 136) + 40 * v54;
      *v55 = 12;
      *(v55 + 4) = v44;
      *(v55 + 8) = v21;
      *(v55 + 12) = 0;
      *(v55 + 28) = 0;
      *(v55 + 20) = 0;
      *(v55 + 36) = 0;
    }

    v56 = 0;
    *(a5 + 72) = v54;
    *(a5 + 65) = 9;
    goto LABEL_142;
  }

  v29 = v19 >> v7;
  v404 = v29 & 1;
  v30 = *(v11 + 48);
  if ((v30 & 0x400) != 0)
  {
    v48 = *(v11 + 52);
    v49 = v48 + 2;
    v50 = v10[5].i32[1];
    v51 = __OFSUB__(v50, v48 + 2);
    v52 = v50 - (v48 + 2);
    if (v52 < 0 != v51)
    {
      v53 = v10[7].i32[1];
      v398 = v53 + 1;
      v10[7].i32[1] = v53 + v49;
    }

    else
    {
      v398 = v10[6].i32[0];
      v10[5].i32[1] = v52;
      v10[6].i32[0] = v398 + v49;
    }

    v401 = *(a5 + 12);
    if (v48)
    {
      v60 = 0;
      v61 = (v398 + 2);
      do
      {
        v62 = *(*(v11 + 64) + 8 * v60);
        if (v62)
        {
          if (*(v62 + 20))
          {
            v66 = 1 << v60;
            if (v60 >= 0x20)
            {
              v66 = 0;
            }

            if ((*(v11 + 40) & v66) != 0)
            {
              v67 = v10[7];
              v68 = vadd_s32(v67, 0x100000001);
              v409 = v68.i32[1];
              v10[7] = v68;
              v69 = *v62;
              v70 = v67.i32[0];
              sub_18195B754(v10, v69, v67.i32[0]);
              v71 = *(v9 + 144);
              if (*(v9 + 148) <= v71)
              {
                sub_18194C8AC(v9, 175, v70, v61 + v60, v409);
              }

              else
              {
                *(v9 + 144) = v71 + 1;
                v72 = *(v9 + 136) + 40 * v71;
                *v72 = 175;
                *(v72 + 4) = v70;
                *(v72 + 8) = v61 + v60;
                *(v72 + 12) = v409;
                *(v72 + 24) = 0;
                *(v72 + 32) = 0;
                *(v72 + 16) = 0;
              }
            }

            else
            {
              sub_1818D0C40(v10, v62, a5, v60, v404, v61 + v60);
              v401 = *(a5 + 16);
            }
          }

          else
          {
            sub_181979840(v10, *(*v62 + 24), v61 + v60, 1u);
            if (*(v62 + 23) == 74 && (*(v11 + 28) & 2) != 0)
            {
              v63 = *(*(a3 + 32) + 12);
              v64 = *(v9 + 144);
              if (*(v9 + 148) <= v64)
              {
                sub_18194C8AC(v9, 71, 0, v63, 0);
              }

              else
              {
                *(v9 + 144) = v64 + 1;
                v65 = *(v9 + 136) + 40 * v64;
                *v65 = 71;
                *(v65 + 8) = v63;
                *(v65 + 12) = 0;
                *(v65 + 28) = 0;
                *(v65 + 20) = 0;
                *(v65 + 36) = 0;
              }
            }
          }
        }

        ++v60;
      }

      while (v48 != v60);
    }

    v73 = *(v11 + 24);
    v74 = *(v9 + 144);
    if (*(v9 + 148) <= v74)
    {
      v76 = v398;
      sub_18194C8AC(v9, 71, v73, v398, 0);
    }

    else
    {
      *(v9 + 144) = v74 + 1;
      v75 = *(v9 + 136) + 40 * v74;
      *v75 = 71;
      *(v75 + 4) = v73;
      v76 = v398;
      *(v75 + 8) = v398;
      *(v75 + 12) = 0;
      *(v75 + 28) = 0;
      *(v75 + 20) = 0;
      *(v75 + 36) = 0;
    }

    v77 = (v76 + 1);
    v78 = *(v9 + 144);
    if (*(v9 + 148) <= v78)
    {
      sub_18194C8AC(v9, 71, v48, v77, 0);
    }

    else
    {
      *(v9 + 144) = v78 + 1;
      v79 = *(v9 + 136) + 40 * v78;
      *v79 = 71;
      *(v79 + 4) = v48;
      *(v79 + 8) = v77;
      *(v79 + 12) = 0;
      *(v79 + 28) = 0;
      *(v79 + 20) = 0;
      *(v79 + 36) = 0;
    }

    v80 = *(v11 + 32);
    if (*(v11 + 28))
    {
      v81 = 4294967290;
    }

    else
    {
      v81 = 0xFFFFFFFFLL;
    }

    v82 = *(v9 + 144);
    if (*(v9 + 148) <= v82)
    {
      v82 = sub_18194C8AC(v9, 6, v412, v401, v76);
    }

    else
    {
      *(v9 + 144) = v82 + 1;
      v83 = *(v9 + 136) + 40 * v82;
      *v83 = 6;
      *(v83 + 4) = v412;
      *(v83 + 8) = v401;
      *(v83 + 12) = v76;
      *(v83 + 24) = 0;
      *(v83 + 32) = 0;
      *(v83 + 16) = 0;
    }

    if (*(*v9 + 103))
    {
      sub_1818A3B68(*v9, v81, v80, v77);
    }

    else
    {
      if (v82 < 0)
      {
        v82 = *(v9 + 144) - 1;
      }

      v84 = *(v9 + 136) + 40 * v82;
      if (*(v84 + 1))
      {
        sub_18194CB90(v9, v84, v80, v81);
      }

      else if (v80)
      {
        *(v84 + 16) = v80;
        *(v84 + 1) = v81;
      }
    }

    *(v11 + 28) &= ~1u;
    if (*(v411 + 103))
    {
      *(v11 + 32) = 0;
    }

    *(a5 + 68) = v412;
    if (*(a3 + 66))
    {
      v90 = -69;
    }

    else
    {
      v90 = 63;
    }

    *(a5 + 65) = v90;
    *(a5 + 72) = *(v9 + 144);
    if (!v48)
    {
      v56 = 0;
LABEL_141:
      v46 = v418;
      goto LABEL_142;
    }

    v91 = 0;
    v406 = v76 + 2;
    do
    {
      v92 = *(*(v11 + 64) + 8 * v91);
      if (v91 <= 0xF && ((*(v11 + 30) >> v91) & 1) != 0)
      {
        sub_1818E1F5C(a5, v92);
        goto LABEL_105;
      }

      if (*(v92 + 20))
      {
        v93 = 1 << v91;
        if (v91 >= 0x20)
        {
          v93 = 0;
        }

        if ((*(v11 + 40) & v93) == 0 && !*(v411 + 103))
        {
          v94 = *(a5 + 80);
          if (v94 < 1)
          {
            goto LABEL_126;
          }

          v95 = v406 + v91;
          v96 = 4;
          while (1)
          {
            v97 = &byte_1EA831A58;
            if (!*(*v9 + 103))
            {
              v97 = (*(v9 + 136) + 40 * *(*(a5 + 88) + v96));
            }

            v98 = *v97;
            if (v98 == 135)
            {
              if (*(v97 + 2) == v95)
              {
                v99 = *(v97 + 3);
LABEL_123:
                v100 = *(v97 + 1);
                v101 = *(v9 + 144);
                if (*(v9 + 148) <= v101)
                {
                  v103 = *(*(v11 + 64) + 8 * v91);
                  sub_18194C8AC(v9, *v97, v100, v95, v99);
                  v92 = v103;
                }

                else
                {
                  *(v9 + 144) = v101 + 1;
                  v102 = *(v9 + 136) + 40 * v101;
                  *v102 = v98;
                  *(v102 + 2) = 0;
                  *(v102 + 4) = v100;
                  *(v102 + 8) = v95;
                  *(v102 + 12) = v99;
                  *(v102 + 1) = 0;
                  *(v102 + 24) = 0;
                  *(v102 + 32) = 0;
                  *(v102 + 16) = 0;
                }

LABEL_126:
                v104 = v92;
                v105 = sub_181929E8C(*v417, 0x50uLL, 0x1032040B79D87BDLL);
                v106 = v105;
                if (v105)
                {
                  *(v105 + 2) = 0u;
                  *(v105 + 3) = 0u;
                  *(v105 + 4) = 0u;
                  *v105 = 0u;
                  *(v105 + 1) = 0u;
                  *v105 = 54;
                  *(v105 + 26) = -1;
                  *(v105 + 10) = 1;
                  v107 = v104;
                  if (*(*v417 + 148) <= 0)
                  {
                    sub_181910730(v417, "Expression tree is too large (maximum depth %d)", *(*v417 + 148));
                    v107 = v104;
                  }

                  if (!*(v411 + 103))
                  {
LABEL_132:
                    v108 = v107[9];
                    v109 = *(*v107 + 16);
                    v51 = __OFSUB__(v108, 1);
                    v110 = v108 - 1;
                    if (v110 < 0 == v51)
                    {
                      v109 = *(*(v109 + 32) + 24 * v110 + 8);
                    }

                    *(v106 + 2) = v109;
                    v111 = sub_181929E8C(v411, 0x51uLL, 0x1032040B79D87BDLL);
                    if (v111)
                    {
                      *(v111 + 2) = 0u;
                      *(v111 + 3) = 0u;
                      *(v111 + 4) = 0u;
                      *v111 = 0u;
                      *(v111 + 1) = 0u;
                      *v111 = -80;
                      *(v111 + 26) = -1;
                      *(v111 + 80) = 0;
                      v111[1] = v111 + 10;
                      *(v111 + 10) = 1;
                      *(v106 + 3) = v111;
                      *(v111 + 11) = v406 + v91;
                      sub_1818DD640(v417, v106, *(a5 + 24), 16);
                    }

                    else
                    {
                      *(v106 + 3) = 0;
                    }

                    *(v106 + 2) = 0;
                  }

                  sub_1819439E0(v411, v106);
                }

                else
                {
                  v107 = v104;
                  if (!*(v411 + 103))
                  {
                    goto LABEL_132;
                  }
                }

                break;
              }
            }

            else if (v98 == 94 && *(v97 + 3) == v95)
            {
              v99 = v406 + v91;
              v95 = *(v97 + 2);
              goto LABEL_123;
            }

            v96 += 20;
            if (!--v94)
            {
              goto LABEL_126;
            }
          }
        }
      }

LABEL_105:
      ++v91;
    }

    while (v91 != v48);
    v56 = 0;
    v46 = v418;
    goto LABEL_142;
  }

  v31 = *(a3 + 856 + 120 * v25 + 12);
  if ((v30 & 0x100) != 0 && (v30 & 5) != 0)
  {
    v32 = **(v11 + 64);
    v33 = v10[7].i32[1];
    v34 = v33 + 1;
    v35 = v33 == -1;
    v10[7].i32[1] = v33 + 1;
    v36 = sub_1818D0C40(v10, v32, a5, 0, v404, (v33 + 1));
    v37 = v36;
    if (!v35 && v36 != v34)
    {
      v38 = v10[3].u8[7];
      if (v38 <= 7)
      {
        v10[3].i8[7] = v38 + 1;
        v10[23].i32[v38] = v34;
      }
    }

    v39 = *(a5 + 16);
    if (*(a5 + 52))
    {
      v40 = *(v9 + 144);
      if (*(v9 + 148) <= v40)
      {
        sub_18194C8AC(v9, 13, v36, *(a5 + 16), 0);
      }

      else
      {
        *(v9 + 144) = v40 + 1;
        v41 = *(v9 + 136) + 40 * v40;
        *v41 = 13;
        *(v41 + 4) = v36;
        *(v41 + 8) = v39;
        *(v41 + 12) = 0;
        *(v41 + 28) = 0;
        *(v41 + 20) = 0;
        *(v41 + 36) = 0;
      }

      v85 = *(a5 + 52);
      v86 = *(v9 + 144);
      if (*(v9 + 148) <= v86)
      {
        sub_18194CAFC(v9, 64, v85, v39, v37, 1);
      }

      else
      {
        *(v9 + 144) = v86 + 1;
        v87 = *(v9 + 136) + 40 * v86;
        *v87 = 64832;
        *(v87 + 4) = v85;
        *(v87 + 8) = v39;
        *(v87 + 12) = v37;
        *(v87 + 16) = 1;
        *(v87 + 24) = 0;
        *(v87 + 32) = 0;
      }

      sub_181979B58(v10, a3, v7, v39, a6);
    }

    v88 = *(v9 + 144);
    if (*(v9 + 148) <= v88)
    {
      sub_18194C8AC(v9, 30, v412, v39, v37);
    }

    else
    {
      *(v9 + 144) = v88 + 1;
      v89 = *(v9 + 136) + 40 * v88;
      *v89 = 30;
      *(v89 + 4) = v412;
      *(v89 + 8) = v39;
      *(v89 + 12) = v37;
      *(v89 + 24) = 0;
      *(v89 + 32) = 0;
      *(v89 + 16) = 0;
    }

    v46 = v418;
    v56 = 0;
    *(a5 + 65) = -69;
    goto LABEL_142;
  }

  if ((~v30 & 0x102) == 0)
  {
    if ((v30 & 0x20) != 0)
    {
      v57 = **(v11 + 64);
      v58 = 1;
      if ((v30 & 0x10) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v57 = 0;
      v58 = 0;
      if ((v30 & 0x10) != 0)
      {
LABEL_45:
        v59 = *(*(v11 + 64) + 8 * v58);
        goto LABEL_277;
      }
    }

    v59 = 0;
LABEL_277:
    if (v29)
    {
      v192 = v59;
    }

    else
    {
      v192 = v57;
    }

    if (v29)
    {
      v193 = v57;
    }

    else
    {
      v193 = v59;
    }

    if (!v192)
    {
      if (v29)
      {
        v205 = 32;
      }

      else
      {
        v205 = 36;
      }

      v206 = *(v9 + 144);
      if (*(v9 + 148) <= v206)
      {
        v208 = v412;
        sub_18194C8AC(v9, v205, v412, v31, 0);
      }

      else
      {
        *(v9 + 144) = v206 + 1;
        v207 = *(v9 + 136) + 40 * v206;
        *v207 = v205;
        *(v207 + 2) = 0;
        v208 = v412;
        *(v207 + 4) = v412;
        *(v207 + 8) = v31;
        *(v207 + 1) = 0;
        *(v207 + 12) = 0;
        *(v207 + 28) = 0;
        *(v207 + 20) = 0;
        *(v207 + 36) = 0;
      }

LABEL_363:
      if (v193)
      {
        v261 = *v193;
        v262 = (v10[7].i32[1] + 1);
        v10[7].i32[1] = v262;
        sub_181979840(v10, v261[3], v262, 1u);
        v263 = v261[3];
        v264 = *v263;
        v265 = v264;
        if (v264 == 176)
        {
          v265 = v263[2];
        }

        v266 = v261[3];
        if (v265 != 177)
        {
          if (v265 != 139)
          {
LABEL_370:
            v267 = *v261;
            if (v267 == 57 || v267 == 55)
            {
              v268 = !v404;
              v269 = 56;
              v270 = 58;
              goto LABEL_375;
            }

LABEL_374:
            v268 = !v404;
            v269 = 57;
            v270 = 55;
LABEL_375:
            if (v268)
            {
              v272 = v270;
            }

            else
            {
              v272 = v269;
            }

            if (v264 == 176)
            {
              v264 = v263[2];
            }

            if (v264 != 177)
            {
              if (v264 != 139)
              {
LABEL_384:
                sub_1818E1F5C(a5, v193);
LABEL_385:
                v273 = *(v9 + 144);
                *(a5 + 65) = v404 ^ 0x27;
                *(a5 + 68) = v412;
                *(a5 + 72) = v273;
                v274 = v10[7].i32[1] + 1;
                v10[7].i32[1] = v274;
                if (*(v9 + 148) <= v273)
                {
                  sub_18194C8AC(v9, 135, v412, v274, 0);
                }

                else
                {
                  *(v9 + 144) = v273 + 1;
                  v275 = *(v9 + 136) + 40 * v273;
                  *v275 = 135;
                  *(v275 + 4) = v412;
                  *(v275 + 8) = v274;
                  *(v275 + 12) = 0;
                  *(v275 + 28) = 0;
                  *(v275 + 20) = 0;
                  *(v275 + 36) = 0;
                }

                v276 = *(v9 + 144);
                if (*(v9 + 148) <= v276)
                {
                  sub_18194C8AC(v9, v272, v262, v21, v274);
                }

                else
                {
                  *(v9 + 144) = v276 + 1;
                  v277 = *(v9 + 136) + 40 * v276;
                  *v277 = v272;
                  *(v277 + 2) = 0;
                  *(v277 + 4) = v262;
                  *(v277 + 8) = v21;
                  *(v277 + 12) = v274;
                  *(v277 + 1) = 0;
                  *(v277 + 24) = 0;
                  *(v277 + 32) = 0;
                  *(v277 + 16) = 0;
                }

                v278 = *(v9 + 144);
                v46 = v418;
                v56 = 0;
                if (v278 >= 1)
                {
                  *(*(v9 + 136) + 40 * v278 - 38) = 83;
                }

                goto LABEL_142;
              }

              v263 = *(v263 + 4);
            }

            if (**(v263 + 4) > 1)
            {
              goto LABEL_385;
            }

            goto LABEL_384;
          }

          v266 = *(v263 + 4);
        }

        if (**(v266 + 4) > 1)
        {
          goto LABEL_374;
        }

        goto LABEL_370;
      }

      v56 = 0;
      v271 = *(v9 + 144);
      *(a5 + 65) = v404 ^ 0x27;
      *(a5 + 68) = v208;
      *(a5 + 72) = v271;
      goto LABEL_141;
    }

    LODWORD(v424) = 0;
    v194 = *v192;
    v195 = *(*v192 + 24);
    v196 = *v195;
    if (v196 == 176)
    {
      v196 = v195[2];
    }

    v197 = *(*v192 + 24);
    if (v196 != 177)
    {
      if (v196 != 139)
      {
        goto LABEL_290;
      }

      v197 = *(v195 + 4);
    }

    if (**(v197 + 32) >= 2)
    {
      if (v10[3].i8[7])
      {
        v240 = v10[3].i8[7] - 1;
        v10[3].i8[7] = v240;
        v198 = v10[23].u32[v240];
      }

      else
      {
        v198 = (v10[7].i32[1] + 1);
        v10[7].i32[1] = v198;
      }

      LODWORD(v424) = v198;
      sub_181979840(v10, v195, v198, 1u);
      v199 = *v194 & 2 | 1;
LABEL_357:
      v256 = byte_181A27B2C[v199];
      v257 = *(v9 + 144);
      v208 = v412;
      if (*(v9 + 148) <= v257)
      {
        sub_18194C8AC(v9, v256, v412, v21, v198);
      }

      else
      {
        *(v9 + 144) = v257 + 1;
        v258 = *(v9 + 136) + 40 * v257;
        *v258 = v256;
        *(v258 + 2) = 0;
        *(v258 + 4) = v412;
        *(v258 + 8) = v21;
        *(v258 + 12) = v198;
        *(v258 + 1) = 0;
        *(v258 + 24) = 0;
        *(v258 + 32) = 0;
        *(v258 + 16) = 0;
      }

      v259 = v424;
      if (v424)
      {
        v260 = v10[3].u8[7];
        if (v260 <= 7)
        {
          v10[3].i8[7] = v260 + 1;
          v10[23].i32[v260] = v259;
        }
      }

      goto LABEL_363;
    }

LABEL_290:
    LODWORD(v198) = sub_181957E00(v10, v195, &v424);
    sub_1818E1F5C(a5, v192);
    v199 = *v194 - 55;
    goto LABEL_357;
  }

  if ((v30 & 0x200) != 0)
  {
    v200 = *(v11 + 24);
    v201 = *(v11 + 26);
    v391 = *(v11 + 28);
    v424 = 0;
    v202 = *(v11 + 32);
    v407 = *(a5 + 8);
    v399 = v200;
    v381 = v201;
    if ((v30 & 0x20) != 0)
    {
      v204 = v200 + 1;
      v203 = *(*(v11 + 64) + 8 * v200);
    }

    else
    {
      v203 = 0;
      v201 = 0;
      v204 = v200;
    }

    v403 = *(v11 + 32);
    if ((v30 & 0x10) == 0)
    {
      v393 = 0;
LABEL_312:
      v233 = 0;
      goto LABEL_313;
    }

    v229 = *(*(v11 + 64) + 8 * v204);
    if (v201 <= v391)
    {
      v201 = v391;
    }

    v393 = v229;
    if ((*(v229 + 18) & 0x100) != 0)
    {
      v230 = (v10[7].i32[1] + 1);
      v10[7].i32[1] = v230;
      *(a5 + 44) = v230;
      sub_1818A2964(v415, 71, 1, v230, 0);
      v202 = v403;
      v231 = *(v415 + 144);
      v232 = *(a5 + 44);
      *(a5 + 44) = 2 * v232;
      *(a5 + 48) = v231;
      *(a5 + 44) = v29 & 1 ^ (*(*(v403 + 56) + v399) == 1) | (2 * v232);
    }

    if (v203)
    {
      goto LABEL_312;
    }

    v255 = *(*(v202 + 8) + 2 * v399);
    if (v255 < 0)
    {
      if (v255 != -2)
      {
        goto LABEL_312;
      }
    }

    else if ((*(*(*(v202 + 24) + 8) + 16 * v255 + 8) & 0xF) != 0)
    {
      goto LABEL_312;
    }

    v233 = 1;
LABEL_313:
    if ((*(v11 + 48) & 0x80030) == 0x80000)
    {
      v234 = (*(v417 + 60) + 1);
      *(v417 + 60) = v234;
      *(a5 + 36) = v234;
      if (*a5)
      {
        sub_1818A2964(v415, 71, 0, v234, 0);
        v202 = v403;
      }

      v235 = *(v417 + 72) - 1;
      *(v417 + 72) = v235;
      *(a5 + 40) = v235;
      v201 = 1;
      v233 = 1;
    }

    else
    {
      LODWORD(v234) = 0;
    }

    if (v399 >= *(v202 + 96) || (*(*(v202 + 56) + v399) != 0) == (v29 & 1))
    {
      v376 = 1;
      v237 = v203;
    }

    else
    {
      v236 = v381;
      v376 = v233 == 0;
      v381 = v391;
      v391 = v236;
      v237 = v393;
      v393 = v203;
      v233 = 0;
    }

    if (v7 >= 1 && (*(v11 + 50) & 0x10) != 0)
    {
      sub_1818A2964(v415, 136, v407, 0, 0);
    }

    v396 = sub_181979DC8(v417, a5, v404, v201, &v424);
    v238 = 0;
    v389 = v424;
    if (v424)
    {
      v239 = v399;
      if (v391)
      {
        v238 = sub_1818C9A34(v411, &v424[v399]);
      }
    }

    else
    {
      v239 = v399;
    }

    v243 = 16;
    if (v234)
    {
      v243 = 40;
    }

    v387 = *(a5 + v243);
    if (v237)
    {
      v244 = (*(v237 + 20) & 0x28) != 0;
    }

    else
    {
      v244 = 1;
    }

    v379 = v238;
    v384 = v237;
    if (v393)
    {
      v245 = (*(v393 + 20) & 0x28) != 0;
    }

    else
    {
      v245 = 1;
    }

    v377 = v245;
    v246 = v239 != 0;
    v394 = v234;
    if (!v384)
    {
      if (v233)
      {
        v251 = v415;
        sub_1818A2964(v415, 75, 0, v396 + v239, 0);
        v250 = 0;
        v239 = (v239 + 1);
        v246 = 1;
        v253 = 1;
        v254 = v404;
      }

      else
      {
        v250 = v244;
        v254 = v404;
        v253 = v394;
        v251 = v415;
        if (v394)
        {
          sub_1818A2964(v415, 75, 0, v396 + v239, 0);
          v253 = 0;
          v239 = (v239 + 1);
          v246 = 1;
        }
      }

      v249 = v389;
LABEL_518:
      v383 = v253;
      sub_18197A62C(v417, v396, v239 - v253, v249);
      if (*(v11 + 54) && v239 == *(v11 + 54))
      {
        v386 = 0;
        v330 = v396;
      }

      else
      {
        if (v394)
        {
          sub_1818A2964(v251, 71, 1, v394, 0);
        }

        v331 = *(a5 + 52);
        if (v331)
        {
          sub_181910A18(v251, 64, v331, v387, v396, v399);
          sub_181979B58(v417, a3, v7, v387, a6);
        }

        v332 = 0;
        if (v246)
        {
          v333 = 4;
        }

        else
        {
          v333 = 0;
        }

        v334 = v333 | (2 * v250) | v254;
        v335 = byte_181A245DC[v334];
        if (v334 == 6)
        {
          v330 = v396;
          if ((*(v11 + 48) & 0x100000) != 0)
          {
            v332 = sub_1818A2964(v415, 124, ((**(v403 + 16) + 9) / 10), 0, 0);
            if (v384 | v393)
            {
              v336 = *(v415 + 144);
              if (v336 >= 1)
              {
                *(*(v415 + 136) + 40 * v336 - 38) = 1;
              }

              v337 = v336 + 1;
              if (*(*v415 + 103))
              {
                v338 = &byte_1EA831A58;
              }

              else
              {
                v338 = (*(v415 + 136) + 40 * v332);
              }

              v332 = 0;
              *(v338 + 2) = v337;
            }
          }
        }

        else
        {
          v330 = v396;
        }

        v386 = v332;
        v251 = v415;
        sub_181910A18(v415, v335, v407, v387, v330, v239);
        if (v394)
        {
          sub_1818A2964(v415, 9, 0, (*(v415 + 144) + 2), 0);
          if (v239 >= 2)
          {
            v339 = 6;
          }

          else
          {
            v339 = 2;
          }

          v254 = v404;
          sub_181910A18(v415, byte_181A245DC[v339 | v404], v407, v387, v330, (v239 - v250));
        }

        else
        {
          v254 = v404;
        }

        v249 = v389;
      }

      if (!v393)
      {
        if (v376)
        {
          v343 = v399;
          v344 = v387;
        }

        else
        {
          v344 = v387;
          if (!v394)
          {
            sub_1818A2964(v251, 75, 0, (v330 + v399), 0);
            v377 = 0;
          }

          v343 = (v399 + 1);
        }

        v345 = v379;
        goto LABEL_571;
      }

      v340 = *(*v393 + 24);
      sub_181979840(v417, v340, (v330 + v399), v391);
      v341 = *(v393 + 18);
      if ((v341 & 0x100) != 0)
      {
        if (*(*v251 + 103))
        {
          v342 = &byte_1EA831A58;
        }

        else
        {
          v342 = (*(v251 + 136) + 40 * *(v251 + 144) - 40);
        }

        v346 = *(a5 + 44);
        *(v342 + 3) = v346 >> 1;
        *(v342 + 1) = v346 & 1;
      }

      v330 = v396;
      v344 = v387;
      if ((v341 & 0x80) == 0 && sub_18195B540(v340))
      {
        sub_1818A2964(v251, 51, v396 + v399, v387, 0);
      }

      if (v379)
      {
        sub_18197A444(v340, v391, v379);
        sub_18197A62C(v417, v396 + v399, v391, v379);
      }

      v343 = v391 + v399;
      v347 = *v340;
      if (v347 == 176)
      {
        v347 = v340[2];
      }

      v345 = v379;
      v249 = v389;
      if (v347 != 177)
      {
        if (v347 != 139)
        {
          goto LABEL_568;
        }

        v340 = *(v340 + 4);
      }

      if (**(v340 + 4) > 1)
      {
        v377 = 1;
        goto LABEL_570;
      }

LABEL_568:
      sub_1818E1F5C(a5, v393);
LABEL_570:
      v254 = v404;
LABEL_571:
      if (v249)
      {
        sub_181939EC8(v411, v249);
      }

      if (v345)
      {
        sub_181939EC8(v411, v345);
      }

      v348 = *(v251 + 144);
      *(a5 + 72) = v348;
      if (v343)
      {
        if (v394)
        {
          sub_1818A2964(v251, 17, v394, (v348 + 3), 0);
        }

        sub_181910A18(v251, asc_181A245E4[v377 | (2 * v254)], v407, v344, v330, v343);
        if (v386)
        {
          if (*(*v251 + 103))
          {
            v349 = &byte_1EA831A58;
          }

          else
          {
            v349 = (*(v251 + 136) + 40 * v386);
          }

          *(v349 + 2) = *(v251 + 144);
        }
      }

      if (v394)
      {
        sub_1818A2964(v251, 16, v394, (*(v251 + 144) + 2), 0);
        sub_181910A18(v251, asc_181A245E4[v383 | (2 * v254)], v407, v344, v330, (v343 + v383));
      }

      v350 = *(v11 + 48);
      v46 = v418;
      v351 = v407;
      if ((v350 & 0x40000) != 0)
      {
        sub_1818A2964(v251, 125, v407, v399, v399);
        v350 = *(v11 + 48);
      }

      v352 = v403;
      if ((v350 & 0x40) != 0 && (*(a3 + 60) & 0x1020) == 0)
      {
        v354 = 1;
      }

      else
      {
        v353 = *(v403 + 24);
        if ((*(v353 + 48) & 0x80) != 0)
        {
          if (v412 == v407)
          {
            v354 = 0;
          }

          else
          {
            v355 = v353 + 16;
            do
            {
              v356 = *v355;
              v357 = *(*v355 + 99) & 3;
              v355 = *v355 + 40;
            }

            while (v357 != 2);
            v358 = sub_18195883C(v417, *(v356 + 94));
            if (*(v356 + 94))
            {
              v359 = 0;
              v360 = v403;
              do
              {
                if (*(v360 + 96))
                {
                  v363 = 0;
                  while (*(*(v356 + 8) + 2 * v359) != *(*(v360 + 8) + 2 * v363))
                  {
                    if (*(v360 + 96) == ++v363)
                    {
                      goto LABEL_603;
                    }
                  }
                }

                else
                {
LABEL_603:
                  LODWORD(v363) = -1;
                }

                v364 = v359 + v358;
                v365 = *(v415 + 144);
                if (*(v415 + 148) > v365)
                {
                  *(v415 + 144) = v365 + 1;
                  v361 = *(v415 + 136) + 40 * v365;
                  *v361 = 94;
                  *(v361 + 4) = v407;
                  *(v361 + 8) = v363;
                  *(v361 + 12) = v364;
                  *(v361 + 24) = 0;
                  *(v361 + 32) = 0;
                  *(v361 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v415, 94, v407, v363, v364);
                  v360 = v403;
                }

                ++v359;
                v362 = *(v356 + 94);
              }

              while (v359 < v362);
              v46 = v418;
              v351 = v407;
            }

            else
            {
              v362 = 0;
            }

            sub_181910A18(v415, 28, v412, v416, v358, v362);
            v354 = 0;
            v352 = v403;
          }
        }

        else
        {
          sub_18197A798(a3, v403, v412, v407);
          v352 = v403;
          v354 = 0;
        }
      }

      if (!*a5)
      {
        v369 = *(v352 + 72);
        if (v369)
        {
          if (!*(a5 + 56))
          {
            sub_18197AB8C(v369, v412, a3 + 104);
            v352 = v403;
          }
        }
      }

      v366 = *(v11 + 48);
      if ((v366 & 0x1000) != 0 || !v394 && *(a5 + 80) && (v367 = sub_18197AC50(v11), v352 = v403, v367))
      {
        v368 = -69;
      }

      else if (v254)
      {
        v368 = 38;
      }

      else
      {
        v368 = 39;
      }

      *(a5 + 65) = v368;
      *(a5 + 68) = v351;
      *(a5 + 66) = BYTE2(v366) & 1;
      if ((v366 & 0xF) == 0)
      {
        *(a5 + 67) = 1;
      }

      if (v354)
      {
        v56 = 0;
      }

      else
      {
        v56 = v352;
      }

      v9 = v415;
      goto LABEL_142;
    }

    v247 = *(*v384 + 24);
    sub_181979840(v417, v247, v396 + v239, v381);
    v248 = *(v384 + 18);
    v249 = v389;
    v250 = v244;
    v251 = v415;
    if ((v248 & 0x100) != 0)
    {
      if (*(*v415 + 103))
      {
        v252 = &byte_1EA831A58;
      }

      else
      {
        v252 = (*(v415 + 136) + 40 * *(v415 + 144) - 40);
      }

      v279 = *(a5 + 44);
      *(v252 + 3) = v279 >> 1;
      *(v252 + 1) = v279 & 1;
    }

    if ((v248 & 0x80) == 0 && sub_18195B540(v247))
    {
      sub_1818A2964(v415, 51, v396 + v239, v387, 0);
    }

    if (v389)
    {
      sub_18197A444(v247, v381, &v389[v239]);
    }

    v239 = v381 + v239;
    v280 = *v247;
    if (v280 == 176)
    {
      v280 = v247[2];
    }

    if (v280 != 177)
    {
      if (v280 != 139)
      {
        goto LABEL_408;
      }

      v247 = *(v247 + 4);
    }

    if (**(v247 + 4) > 1)
    {
      v253 = 0;
      v250 = 1;
      goto LABEL_410;
    }

LABEL_408:
    sub_1818E1F5C(a5, v384);
    v253 = 0;
LABEL_410:
    v246 = 1;
    v254 = v404;
    goto LABEL_518;
  }

  if ((v30 & 0x2000) == 0)
  {
    if ((v28 & 0x80) != 0)
    {
      v56 = 0;
      *(a5 + 65) = -69;
    }

    else
    {
      *(a5 + 65) = asc_181A245E4[(v29 & 1) + 4];
      *(a5 + 68) = v412;
      v56 = 0;
      *(a5 + 72) = sub_1818A2964(v9, asc_181A245E4[(v29 & 1) + 6], v412, v31, 0) + 1;
      *(a5 + 67) = 1;
    }

    goto LABEL_141;
  }

  v375 = v10[7];
  v209 = vadd_s32(v10[7], 0x100000001);
  v10[7] = v209;
  v392 = v10[9].i32[0] - 1;
  v10[9].i32[0] = v392;
  v402 = *(v418 + 24);
  v210 = **(v11 + 64);
  v211 = *(v210 + 32);
  *(a5 + 65) = 67;
  *(a5 + 68) = v209.i32[1];
  v212 = *(a3 + 64);
  if (v212 < 2)
  {
    v215 = *(a3 + 8);
    v46 = v418;
LABEL_333:
    v390 = v209.u32[1];
    if ((*(a3 + 60) & 0x10) != 0)
    {
      v382 = 0;
      v378 = 0;
    }

    else
    {
      if ((*(v402 + 48) & 0x80) != 0)
      {
        for (i = *(v402 + 16); i; i = *(i + 40))
        {
          if ((*(i + 99) & 3) == 2)
          {
            break;
          }
        }

        v282 = v10[7].u32[0];
        v10[7].i32[0] = v282 + 1;
        v382 = v282;
        sub_1818A2964(v9, 117, v282, *(i + 94), 0);
        sub_181957040(v10, i);
      }

      else
      {
        v241 = v10[7].i32[1];
        v242 = (v241 + 1);
        v10[7].i32[1] = v242;
        v382 = v241 + 1;
        sub_1818A2964(v9, 75, 0, v242, 0);
      }

      v378 = v10[7].i32[1] + 1;
      v10[7].i32[1] = v378;
    }

    v372 = sub_1818A2964(v9, 71, 0, v390, 0);
    v283 = *(a3 + 124);
    if (v283 <= 1)
    {
      v395 = 0;
    }

    else
    {
      v284 = v215;
      v285 = 0;
      v286 = 0;
      v287 = 0;
      do
      {
        v288 = *(a3 + 136);
        v289 = v288 + v285;
        if (v288 + v285 != v210 && (*(v289 + 18) & 0x8006) == 0 && (*(v288 + v285 + 20) & 0x3FFF) != 0 && (*(*v289 + 6) & 0x40) == 0)
        {
          v290 = sub_1818C7FEC(v411, *v289, 0, 0);
          v287 = sub_181951CA4(v10, v287, v290);
          v283 = *(a3 + 124);
        }

        ++v286;
        v285 += 56;
      }

      while (v286 < v283);
      if (v287)
      {
        v395 = sub_18194F098(v10, 44, 0, v287);
      }

      else
      {
        v395 = 0;
      }

      v9 = v415;
      v215 = v284;
    }

    v291 = 1;
    sub_18195AD8C(v10, 1, "MULTI-INDEX OR");
    if (*(v211 + 20) >= 1)
    {
      v371 = v210;
      v292 = 0;
      v400 = 0;
      v405 = 0;
      v370 = v10 + 23;
      v293 = v412;
      v397 = v211;
      v388 = v215;
      while (1)
      {
        v294 = *(v211 + 32) + 56 * v292;
        if (*(v294 + 28) == v293 || (*(v294 + 20) & 0x400) != 0)
        {
          if (*v294)
          {
            v295 = sub_1818C7FEC(v411, *v294, 0, 0);
            v296 = v295;
            if (!*(v411 + 103))
            {
              goto LABEL_442;
            }

            if (v295)
            {
              sub_1819439E0(v411, v295);
            }
          }

          else if (!*(v411 + 103))
          {
            v296 = 0;
LABEL_442:
            v297 = v296;
            v298 = v402;
            if (v395)
            {
              *(v395 + 2) = v296;
              v297 = v395;
            }

            v408 = v296;
            sub_18195AD8C(v10, 1, "INDEX %d", v292 + 1);
            v299 = sub_1818B507C(v10, v215, v297, 0, 0, 0, 32, v375);
            if (v299)
            {
              v300 = v299;
              v301 = sub_18196E388(v10, v215, v299 + 856, 0);
              sub_1819710AC(v9, v215, v300 + 856, v301);
              v302 = 0;
              if ((*(a3 + 60) & 0x10) != 0)
              {
                goto LABEL_451;
              }

              if (v292 == *(v397 + 20) - 1)
              {
                v303 = 0xFFFFFFFFLL;
              }

              else
              {
                v303 = v292;
              }

              v304 = v402 + 16;
              if ((*(v402 + 48) & 0x80) == 0)
              {
                sub_1818A2964(v9, 135, v412, v378, 0);
                v302 = sub_181910A18(v9, 47, v382, 0, v378, v303);
                goto LABEL_451;
              }

              do
              {
                v307 = *v304;
                v308 = *(*v304 + 99) & 3;
                v304 = *v304 + 40;
              }

              while (v308 != 2);
              v373 = v303;
              v374 = v300;
              v309 = *(v307 + 94);
              v385 = sub_18195883C(v10, *(v307 + 94));
              v380 = v309;
              if (v309)
              {
                v310 = v9;
                v311 = 0;
                v312 = 2 * v309;
                v313 = v385;
                do
                {
                  sub_181959FA4(v310, v402, v412, *(*(v307 + 8) + v311), v313);
                  v313 = (v313 + 1);
                  v311 += 2;
                }

                while (v312 != v311);
              }

              if (v373)
              {
                v9 = v415;
                v314 = v380;
                v302 = sub_181910A18(v415, 29, v382, 0, v385, v380);
                v10 = v417;
                v298 = v402;
                v300 = v374;
                if (v373 < 0)
                {
LABEL_490:
                  if (v314 == 1)
                  {
                    if (v385)
                    {
                      v324 = v10[3].u8[7];
                      if (v324 <= 7)
                      {
                        v10[3].i8[7] = v324 + 1;
                        v370->i32[v324] = v385;
                      }
                    }
                  }

                  else if (v10[5].i32[1] < v314)
                  {
                    v10[5].i32[1] = v314;
                    v10[6].i32[0] = v385;
                  }

LABEL_451:
                  v305 = *(v9 + 144);
                  if (*(v9 + 148) <= v305)
                  {
                    sub_18194C8AC(v9, 10, v390, v392, 0);
                  }

                  else
                  {
                    *(v9 + 144) = v305 + 1;
                    v306 = *(v9 + 136) + 40 * v305;
                    *v306 = 10;
                    *(v306 + 4) = v390;
                    *(v306 + 8) = v392;
                    *(v306 + 12) = 0;
                    *(v306 + 28) = 0;
                    *(v306 + 20) = 0;
                    *(v306 + 36) = 0;
                  }

                  if (v302)
                  {
                    v317 = &byte_1EA831A58;
                    if (!*(*v9 + 103))
                    {
                      v317 = (*(v9 + 136) + 40 * v302);
                    }

                    *(v317 + 2) = *(v9 + 144);
                  }

                  v318 = v400;
                  if ((*(v300 + 68) & 2) != 0)
                  {
                    v318 = 1;
                  }

                  v400 = v318;
                  v319 = *(v300 + 952);
                  if ((*(v319 + 49) & 2) != 0)
                  {
                    v315 = *(v319 + 32);
                    v215 = v388;
                    if (v292 && v315 != v405 || (*(v298 + 48) & 0x80) != 0 && (*(v315 + 99) & 3) == 2)
                    {
                      v315 = 0;
                    }
                  }

                  else
                  {
                    v315 = 0;
                    v215 = v388;
                  }

                  v211 = v397;
                  if (*(v300 + 68))
                  {
                    *(a3 + 68) |= 1u;
                  }

                  sub_1818B9E4C(v300);
                  v320 = v10[39].i32[0];
                  if (v320)
                  {
                    v321 = v10[2];
                    v322 = &byte_1EA831A58;
                    v46 = v418;
                    v316 = v408;
                    if (!*(*v321 + 103))
                    {
                      v322 = (v321[17] + 40 * v320);
                    }

                    v320 = *(v322 + 2);
                  }

                  else
                  {
                    v46 = v418;
                    v316 = v408;
                  }

                  v10[39].i32[0] = v320;
LABEL_483:
                  if (v316)
                  {
                    sub_1819439E0(v411, v316);
                  }

                  v405 = v315;
                  v293 = v412;
                  goto LABEL_433;
                }
              }

              else
              {
                v302 = 0;
                v10 = v417;
                v9 = v415;
                v300 = v374;
                v314 = v380;
              }

              sub_1818A2964(v9, 97, v385, v314, v378);
              LODWORD(v314) = v380;
              sub_181910A18(v9, 138, v382, v378, v385, v380);
              if (v373)
              {
                v323 = *(v9 + 144);
                if (v323 >= 1)
                {
                  *(*(v9 + 136) + 40 * v323 - 38) = 16;
                }
              }

              v298 = v402;
              goto LABEL_490;
            }

            v315 = v405;
            v46 = v418;
            v211 = v397;
            v316 = v408;
            goto LABEL_483;
          }
        }

LABEL_433:
        if (++v292 >= *(v211 + 20))
        {
          v291 = v400 == 0;
          v210 = v371;
          v325 = v405;
          goto LABEL_498;
        }
      }
    }

    v325 = 0;
LABEL_498:
    v326 = v10[39].i32[0];
    if (v326)
    {
      v327 = v10[2];
      if (*(*v327 + 103))
      {
        v328 = &byte_1EA831A58;
      }

      else
      {
        v328 = (v327[17] + 40 * v326);
      }

      v326 = *(v328 + 2);
    }

    v10[39].i32[0] = v326;
    *(a5 + 80) = v325;
    if (v325)
    {
      *(a5 + 8) = v375;
    }

    if (v395)
    {
      *(v395 + 2) = 0;
      sub_1819439E0(v411, v395);
    }

    if (*(*v9 + 103))
    {
      v329 = &byte_1EA831A58;
    }

    else
    {
      v329 = (*(v9 + 136) + 40 * v372);
    }

    *(v329 + 1) = *(v9 + 144);
    sub_1818A2964(v9, 9, 0, *(a5 + 12), 0);
    sub_181958CD8(v9, v392);
    *(a5 + 72) = *(v9 + 144);
    if (*(a3 + 64) >= 2u)
    {
      sub_181929C84(v411, v215);
    }

    if (v291)
    {
      sub_1818E1F5C(a5, v210);
    }

    v56 = 0;
LABEL_142:
    *(a5 + 112) = *(v9 + 144);
    if (v56)
    {
      v112 = 1;
    }

    else
    {
      v112 = 2;
    }

LABEL_146:
    v113 = *(a3 + 124);
    if (v113 >= 1)
    {
      v114 = 0;
      v115 = *(a3 + 136);
      while (1)
      {
        v116 = *(v115 + 18);
        if ((v116 & 6) == 0)
        {
          v117 = *(a5 + 104);
          if ((v117 & *(v115 + 48)) != 0)
          {
            *(a3 + 68) |= 2u;
          }

          else
          {
            v118 = *v115;
            if ((*(v46 + 32) & 0x58) != 0)
            {
              v119 = *(v118 + 4);
              if ((v119 & 3) == 0 || (*(v46 + 32) & 8) != 0 && (v119 & 1) == 0)
              {
                goto LABEL_149;
              }

              v120 = *(v118 + 56);
              if (*(a3 + 600) == v120)
              {
                if (v117)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v121 = *(a3 + 596);
                if (v121 >= 2)
                {
                  v122 = (a3 + 604);
                  v123 = 1;
                  while (1)
                  {
                    v124 = *v122++;
                    if (v124 == v120)
                    {
                      break;
                    }

                    if (v121 == ++v123)
                    {
                      goto LABEL_165;
                    }
                  }

                  if (((1 << v123) & v117) != 0)
                  {
                    goto LABEL_149;
                  }
                }
              }
            }

LABEL_165:
            if (v112 != 1)
            {
              if (v112 <= 2)
              {
LABEL_170:
                v116 = *(v115 + 18);
                if ((v116 & 0x1000) != 0)
                {
                  if (!v114)
                  {
                    v114 = 3;
                  }

                  goto LABEL_149;
                }
              }

              if ((v116 & 0x200) != 0 && (v126 = *(a5 + 44)) != 0)
              {
                v127 = v126 & 1 | 0x10;
                v128 = v126 >> 1;
                v129 = *(v415 + 144);
                if (*(v415 + 148) <= v129)
                {
                  v129 = sub_18194C8AC(v415, v127, v128, 0, 0);
                }

                else
                {
                  *(v415 + 144) = v129 + 1;
                  v130 = *(v415 + 136) + 40 * v129;
                  *v130 = v127;
                  *(v130 + 2) = 0;
                  *(v130 + 4) = v128;
                  *(v130 + 1) = 0;
                  *(v130 + 8) = 0u;
                  *(v130 + 24) = 0u;
                }

                sub_1818DD640(v417, v118, v416, 16);
                if (v129)
                {
                  v131 = &byte_1EA831A58;
                  if (!*(*v415 + 103))
                  {
                    v131 = (*(v415 + 136) + 40 * v129);
                  }

                  *(v131 + 2) = *(v415 + 144);
                }
              }

              else
              {
                sub_1818DD640(v417, v118, v416, 16);
              }

              *(v115 + 18) |= 4u;
              v46 = v418;
              goto LABEL_149;
            }

            v125 = *(a5 + 4);
            v424 = 0;
            v426 = 0u;
            *&v419 = v56;
            *(&v419 + 1) = v125;
            v425 = sub_181977950;
            v427 = 0;
            *&v428 = &v419;
            if (!v118)
            {
              goto LABEL_170;
            }

            sub_181959BA0(&v424, v118);
            if (!WORD2(v427))
            {
              goto LABEL_170;
            }

            v114 = 2;
          }
        }

LABEL_149:
        v115 += 56;
        v51 = __OFSUB__(v113--, 1);
        if ((v113 < 0) ^ v51 | (v113 == 0))
        {
          v112 = v114;
          if (v114 > 0)
          {
            goto LABEL_146;
          }

          break;
        }
      }
    }

    v132 = *(a3 + 132);
    if (v132 >= 1)
    {
      v133 = *(a3 + 136);
      v134 = 0uLL;
      do
      {
        v422 = v134;
        v423 = v134;
        v420 = v134;
        v421 = v134;
        v419 = v134;
        if ((*(v133 + 9) & 6) == 0 && (*(v133 + 10) & 0x82) != 0 && (*(v133 + 10) & 0x800) != 0 && *(v133 + 7) == v412 && (*(v418 + 32) & 0x58) == 0)
        {
          v139 = *v133;
          v140 = *(v133 + 8);
          v432 = 0;
          v431 = v134;
          v430 = v134;
          v429 = v134;
          v428 = v134;
          v424 = (a3 + 104);
          v425 = (a3 + 104);
          v426 = 0uLL;
          v427 = 0x8300000000;
          DWORD1(v428) = v412;
          *(&v428 + 1) = 257;
          if (v140 != -2)
          {
            LOWORD(v431) = v140;
            v141 = sub_181972F4C(&v424);
            v134 = 0uLL;
            if (v141)
            {
              v142 = 0;
              do
              {
                v143 = *(v141 + 5);
                if ((v143 & a6) == 0)
                {
                  if (!v143 && (v141[10] & 0x82) != 0)
                  {
                    v142 = v141;
                    goto LABEL_207;
                  }

                  if (!v142)
                  {
                    v142 = v141;
                  }
                }

                v141 = sub_181972F4C(&v424);
                v134 = 0uLL;
              }

              while (v141);
              if (!v142)
              {
                goto LABEL_188;
              }

LABEL_207:
              if ((v142[9] & 4) == 0)
              {
                v144 = *v142;
                if ((v142[10] & 1) == 0 || (*(v144 + 5) & 0x10) == 0 || **(*(v144 + 4) + 32) <= 1)
                {
                  v135 = v144[1];
                  v136 = v144[2];
                  v137 = v144[4];
                  v422 = v144[3];
                  v423 = v137;
                  v420 = v135;
                  v421 = v136;
                  v419 = *v144;
                  *&v420 = *(v139 + 16);
                  sub_1818DD640(v417, &v419, v416, 16);
                  v134 = 0uLL;
                  v142[9] |= 4u;
                }
              }
            }
          }
        }

LABEL_188:
        v133 += 7;
        v51 = __OFSUB__(v132--, 1);
      }

      while (!((v132 < 0) ^ v51 | (v132 == 0)));
    }

    v145 = *(a5 + 56);
    v146 = v417;
    v147 = v415;
    if (v145)
    {
      v148 = *(*(a3 + 8) + 72 * *(a5 + 64) + 24);
      if ((*(v148 + 48) & 0x80) != 0)
      {
        v152 = v148 + 16;
        do
        {
          v153 = *v152;
          v154 = *(*v152 + 99) & 3;
          v152 = *v152 + 40;
        }

        while (v154 != 2);
        v155 = *(v153 + 94);
        if (*(v153 + 94))
        {
          v156 = v155 + 1;
          v157 = *(v417 + 44);
          v414 = *(a5 + 56);
          if (v157 <= v155)
          {
            v165 = *(v417 + 60);
            v158 = v165 + 1;
            *(v417 + 60) = v165 + v156;
          }

          else
          {
            v158 = *(v417 + 48);
            *(v417 + 44) = v157 - v156;
            *(v417 + 48) = v158 + v156;
          }

          v166 = 0;
          v159 = v158;
          v161 = v158 + 1;
          do
          {
            sub_181959FA4(v415, v148, v412, *(*(v153 + 8) + 2 * v166), (v159 + v166 + 1));
            ++v166;
          }

          while (v155 != v166);
          v146 = v417;
          v147 = v415;
          v145 = v414;
        }

        else
        {
          if (*(v417 + 31))
          {
            v164 = *(v417 + 31) - 1;
            *(v417 + 31) = v164;
            v159 = *(v417 + 4 * v164 + 184);
          }

          else
          {
            v159 = *(v417 + 60) + 1;
            *(v417 + 60) = v159;
          }

          v147 = v415;
          LODWORD(v155) = 0;
          v161 = v159 + 1;
        }
      }

      else
      {
        v149 = *(v417 + 44);
        v51 = __OFSUB__(v149, 2);
        v150 = v149 - 2;
        if (v150 < 0 != v51)
        {
          v151 = *(v417 + 60);
          v159 = v151 + 1;
          *(v417 + 60) = v151 + 2;
        }

        else
        {
          v159 = *(v417 + 48);
          *(v417 + 44) = v150;
          *(v417 + 48) = v159 + 2;
        }

        v160 = *(a5 + 4);
        v161 = v159 + 1;
        v162 = *(v415 + 144);
        if (*(v415 + 148) <= v162)
        {
          sub_18194C8AC(v415, 135, v160, v159 + 1, 0);
        }

        else
        {
          *(v415 + 144) = v162 + 1;
          v163 = *(v415 + 136) + 40 * v162;
          *v163 = 135;
          *(v163 + 4) = v160;
          *(v163 + 8) = v161;
          *(v163 + 12) = 0;
          *(v163 + 28) = 0;
          *(v163 + 20) = 0;
          *(v163 + 36) = 0;
        }

        LODWORD(v155) = 1;
      }

      v167 = *v145;
      v168 = *(v147 + 144);
      if (*(v147 + 148) <= v168)
      {
        v168 = sub_18194CAFC(v147, 29, v167, 0, v161, v155);
      }

      else
      {
        *(v147 + 144) = v168 + 1;
        v169 = *(v147 + 136) + 40 * v168;
        *v169 = 64797;
        *(v169 + 4) = v167;
        *(v169 + 8) = 0;
        *(v169 + 12) = v161;
        *(v169 + 16) = v155;
        *(v169 + 24) = 0;
        *(v169 + 32) = 0;
      }

      v170 = *(v147 + 144);
      if (*(v147 + 148) <= v170)
      {
        sub_18194C8AC(v147, 97, v161, v155, v159);
      }

      else
      {
        *(v147 + 144) = v170 + 1;
        v171 = *(v147 + 136) + 40 * v170;
        *v171 = 97;
        *(v171 + 4) = v161;
        *(v171 + 8) = v155;
        *(v171 + 12) = v159;
        *(v171 + 24) = 0;
        *(v171 + 32) = 0;
        *(v171 + 16) = 0;
      }

      v172 = *v145;
      v173 = *(v147 + 144);
      if (*(v147 + 148) <= v173)
      {
        sub_18194CAFC(v147, 138, v172, v159, v161, v155);
      }

      else
      {
        *(v147 + 144) = v173 + 1;
        v174 = *(v147 + 136) + 40 * v173;
        *v174 = 64906;
        *(v174 + 4) = v172;
        *(v174 + 8) = v159;
        *(v174 + 12) = v161;
        *(v174 + 16) = v155;
        *(v174 + 24) = 0;
        *(v174 + 32) = 0;
      }

      v175 = v145[1];
      v176 = *(v147 + 144);
      if (*(v147 + 148) <= v176)
      {
        sub_18194CAFC(v147, 183, v175, 0, v161, v155);
      }

      else
      {
        *(v147 + 144) = v176 + 1;
        v177 = *(v147 + 136) + 40 * v176;
        *v177 = 64951;
        *(v177 + 4) = v175;
        *(v177 + 8) = 0;
        *(v177 + 12) = v161;
        *(v177 + 16) = v155;
        *(v177 + 24) = 0;
        *(v177 + 32) = 0;
      }

      v178 = *(v147 + 144);
      if (v178 >= 1)
      {
        *(*(v147 + 136) + 40 * v178 - 38) = 16;
      }

      if (*(*v147 + 103))
      {
        dword_1EA831A60 = v178;
        if (v155)
        {
          goto LABEL_250;
        }
      }

      else
      {
        *(*(v147 + 136) + 40 * v168 + 8) = v178;
        if (v155)
        {
LABEL_250:
          if (*(v146 + 44) <= v155)
          {
            *(v146 + 44) = v155 + 1;
            *(v146 + 48) = v159;
          }

          goto LABEL_256;
        }
      }

      if (v159)
      {
        v179 = *(v146 + 31);
        if (v179 <= 7)
        {
          *(v146 + 31) = v179 + 1;
          *(v146 + 4 * v179 + 184) = v159;
        }
      }
    }

LABEL_256:
    v180 = *a5;
    if (*a5)
    {
      v181 = *(v147 + 144);
      *(a5 + 28) = v181;
      v182 = v418;
      if (*(v147 + 148) <= v181)
      {
        sub_18194C8AC(v147, 71, 1, v180, 0);
        v184 = *(a5 + 56);
        if (!v184)
        {
          goto LABEL_267;
        }
      }

      else
      {
        *(v147 + 144) = v181 + 1;
        v183 = *(v147 + 136) + 40 * v181;
        *v183 = 0x100000047;
        *(v183 + 8) = v180;
        *(v183 + 12) = 0;
        *(v183 + 28) = 0;
        *(v183 + 20) = 0;
        *(v183 + 36) = 0;
        v184 = *(a5 + 56);
        if (!v184)
        {
          goto LABEL_267;
        }
      }
    }

    else
    {
      v184 = *(a5 + 56);
      v182 = v418;
      if (!v184)
      {
        return *(a5 + 104);
      }
    }

    v185 = *(v184 + 8);
    v186 = *(v147 + 144);
    if (*(v147 + 148) <= v186)
    {
      sub_18194C8AC(v147, 74, 0, v185, 0);
    }

    else
    {
      *(v147 + 144) = v186 + 1;
      v187 = *(v147 + 136) + 40 * v186;
      *v187 = 74;
      *(v187 + 8) = v185;
      *(v187 + 12) = 0;
      *(v187 + 28) = 0;
      *(v187 + 20) = 0;
      *(v187 + 36) = 0;
    }

    *(v184 + 12) = *(v147 + 144);
    ++*(v146 + 37);
LABEL_267:
    v188 = *(a3 + 132);
    if (v188 >= 1)
    {
      v189 = 0;
      v190 = *(a3 + 136);
      do
      {
        if ((*(v190 + 18) & 6) == 0 && (*(a5 + 104) & *(v190 + 48)) == 0 && (*(v182 + 32) & 0x40) == 0)
        {
          sub_1818DD640(v146, *v190, v416, 16);
          *(v190 + 18) |= 4u;
          v188 = *(a3 + 132);
        }

        ++v189;
        v190 += 56;
      }

      while (v189 < v188);
    }

    return *(a5 + 104);
  }

  v410 = v209.i32[1];
  v213 = v212 - v7;
  v214 = sub_181929E8C(v411, 72 * v213 + 8, 0x103204056E3F560);
  if (v214)
  {
    v215 = v214;
    *v214 = v213;
    *(v214 + 1) = v213;
    v46 = v418;
    *(v214 + 1) = *(v418 + 8);
    v216 = *(v418 + 24);
    v217 = *(v418 + 40);
    v218 = *(v418 + 56);
    v214[9] = *(v418 + 72);
    *(v214 + 7) = v218;
    *(v214 + 5) = v217;
    *(v214 + 3) = v216;
    if (v213 >= 2)
    {
      v219 = *(a3 + 8) + 8;
      v220 = (a5 + 184);
      v221 = v213 - 1;
      v222 = 10;
      do
      {
        v223 = &v214[v222];
        v224 = *v220;
        v220 += 120;
        v225 = v219 + 72 * v224;
        *v223 = *v225;
        v226 = *(v225 + 16);
        v227 = *(v225 + 32);
        v228 = *(v225 + 48);
        v223[8] = *(v225 + 64);
        *(v223 + 2) = v227;
        *(v223 + 3) = v228;
        *(v223 + 1) = v226;
        v222 += 9;
        --v221;
      }

      while (v221);
    }

    v209.i32[1] = v410;
    goto LABEL_333;
  }

  return a6;
}

void *sub_1819710AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *a1;
  if ((*(result + 49) & 4) == 0)
  {
    return result;
  }

  v8 = *(a3 + 96);
  LODWORD(v9) = *(v8 + 48);
  if ((v9 & 0x400) == 0)
  {
    v10 = *(v8 + 32);
    if (v10)
    {
      v11 = *v10;
      v12 = *(a3 + 32);
      v13 = *(a3 + 112);
      v14 = *(v8 + 22);
      v15 = *(a1 + 392);
      v16 = 56 * v15;
      v17 = v16 + 56;
      v18 = *(a1 + 400);
      if (v18)
      {
        if (result[64] > v18)
        {
          v19 = *(a1 + 392);
          if (result[62] <= v18)
          {
            if (v17 < 0x81)
            {
              goto LABEL_48;
            }
          }

          else if (result[63] <= v18 && v17 <= *(result + 219))
          {
LABEL_48:
            *(a1 + 392) = v15 + 1;
            v46 = &v18[7 * v19];
            *v46 = 0u;
            *(v46 + 1) = 0u;
            *(v46 + 2) = 0u;
            v46[6] = 0;
            *v46 = a4;
            *(v46 + 7) = v12;
            *(v46 + 8) = v13;
            *(v46 + 20) = v14;
            if (v11)
            {
              v47 = strlen(v11);
              v48 = v47;
              if (*a1)
              {
                result = sub_181929E8C(*a1, v47 + 1, 354097263);
                v49 = result;
                if (!result)
                {
                  goto LABEL_55;
                }

                goto LABEL_54;
              }

              result = sub_181902484(v47 + 1, 354097263);
              v49 = result;
              if (result)
              {
LABEL_54:
                result = memcpy(v49, v11, v48 + 1);
              }
            }

            else
            {
              v49 = 0;
            }

LABEL_55:
            v46[6] = v49;
            *(a1 + 400) = v18;
            goto LABEL_56;
          }
        }

        result = sub_181929F38(result, *(a1 + 400), v17, 0x1010040CEB2E6A9);
        v18 = result;
        if (!result)
        {
          goto LABEL_56;
        }

LABEL_47:
        v15 = *(a1 + 392);
        v19 = v15;
        goto LABEL_48;
      }

      result = sub_181929E8C(result, v16 + 56, 0x1010040CEB2E6A9);
      v18 = result;
      if (result)
      {
        goto LABEL_47;
      }

LABEL_56:
      if ((v9 & 0x6000) == 0 && (*(*a1 + 49) & 4) != 0)
      {
        v50 = *(a3 + 4);
        v51 = *(a1 + 392);
        v52 = 56 * v51;
        v53 = v51 + 1;
        while (--v53 >= 1)
        {
          v54 = v52 - 56;
          v55 = *(a1 + 400);
          v56 = *(v55 + v52 - 56);
          v52 -= 56;
          if (v56 == a4)
          {
            if (v50 < 0)
            {
              v50 = *(a1 + 144) - 1;
            }

            if (*(v55 + v54 + 4))
            {
              if (*(v55 + v54 + 12))
              {
                if (*(v55 + v54 + 20))
                {
                  break;
                }

                v57 = 4;
              }

              else
              {
                v57 = 2;
              }
            }

            else
            {
              v57 = 0;
            }

            v59 = v55 + 4 * v57 + v54;
            *(v59 + 4) = -1;
            *(v59 + 8) = v50;
            break;
          }
        }
      }

      if ((v9 & 0x200) != 0 && (*(*a1 + 49) & 4) != 0)
      {
        v58 = *(a3 + 8);
        v60 = *(a1 + 392);
        v61 = 56 * v60;
        v62 = v60 + 1;
        while (--v62 >= 1)
        {
          v63 = v61 - 56;
          v64 = *(a1 + 400);
          v65 = *(v64 + v61 - 56);
          v61 -= 56;
          if (v65 == a4)
          {
            v44 = v64 + v63;
            if (v58 < 0)
            {
              v58 = *(a1 + 144) - 1;
            }

            if (*(v44 + 4))
            {
              if (*(v64 + v63 + 12))
              {
                if (*(v64 + v63 + 20))
                {
                  return result;
                }

                v45 = 4;
              }

              else
              {
                v45 = 2;
              }
            }

            else
            {
              v45 = 0;
            }

            *(v64 + 4 * v45 + v63 + 4) = -1;
            goto LABEL_87;
          }
        }
      }

      return result;
    }
  }

  v20 = a2 + 8;
  v21 = a2 + 8 + 72 * *(a3 + 64);
  v67 = *(v21 + 25);
  v22 = *v21;
  v23 = *(a3 + 32);
  v24 = *(a3 + 112);
  v25 = *(v8 + 22);
  v26 = *(a1 + 392);
  v27 = 56 * v26;
  v28 = v27 + 56;
  v29 = *(a1 + 400);
  if (v29)
  {
    if (result[64] > v29)
    {
      v30 = *(a1 + 392);
      if (result[62] <= v29)
      {
        if (v28 < 0x81)
        {
LABEL_15:
          v66 = v9;
          goto LABEL_24;
        }
      }

      else if (result[63] <= v29 && v28 <= *(result + 219))
      {
        goto LABEL_15;
      }
    }

    result = sub_181929F38(result, *(a1 + 400), v28, 0x1010040CEB2E6A9);
    v29 = result;
    if (result)
    {
LABEL_23:
      v66 = v9;
      v26 = *(a1 + 392);
      v30 = v26;
LABEL_24:
      *(a1 + 392) = v26 + 1;
      v9 = &v29[7 * v30];
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 2) = 0u;
      v9[6] = 0;
      *v9 = a4;
      *(v9 + 7) = v23;
      *(v9 + 8) = v24;
      *(v9 + 20) = v25;
      if (!v22)
      {
        v33 = 0;
        goto LABEL_31;
      }

      v31 = strlen(v22);
      v32 = v31;
      if (*a1)
      {
        result = sub_181929E8C(*a1, v31 + 1, 354097263);
        v33 = result;
        if (!result)
        {
LABEL_31:
          v9[6] = v33;
          *(a1 + 400) = v29;
          LOWORD(v9) = v66;
          if ((v67 & 0x40) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_32;
        }
      }

      else
      {
        result = sub_181902484(v31 + 1, 354097263);
        v33 = result;
        if (!result)
        {
          goto LABEL_31;
        }
      }

      result = memcpy(v33, v22, v32 + 1);
      goto LABEL_31;
    }
  }

  else
  {
    result = sub_181929E8C(result, v27 + 56, 0x1010040CEB2E6A9);
    v29 = result;
    if (result)
    {
      goto LABEL_23;
    }
  }

  if ((v67 & 0x40) == 0)
  {
    goto LABEL_56;
  }

LABEL_32:
  v34 = *(*(v20 + 72 * *(a3 + 64) + 64) + 8);
  v35 = *a1;
  if (*(*a1 + 103))
  {
    v36 = &byte_1EA831A58;
    if ((*(v35 + 49) & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v36 = (*(a1 + 136) + 40 * v34 - 40);
    if ((*(v35 + 49) & 4) == 0)
    {
      return result;
    }
  }

  v37 = *(v36 + 2);
  v38 = *(a1 + 392);
  v39 = 56 * v38;
  v40 = v38 + 1;
  while (--v40 >= 1)
  {
    v41 = v39 - 56;
    v42 = *(a1 + 400);
    v43 = *(v42 + v39 - 56);
    v39 -= 56;
    if (v43 == a4)
    {
      v44 = v42 + v41;
      if (v37 <= 0)
      {
        v37 = *(a1 + 144);
      }

      if (*(v44 + 4))
      {
        if (*(v42 + v41 + 12))
        {
          if (*(v42 + v41 + 20))
          {
            return result;
          }

          v45 = 4;
        }

        else
        {
          v45 = 2;
        }
      }

      else
      {
        v45 = 0;
      }

      v58 = v37 - 1;
      *(v42 + 4 * v45 + v41 + 4) = v34;
LABEL_87:
      *(v44 + 4 * v45 + 8) = v58;
      return result;
    }
  }

  return result;
}

uint64_t sub_181971618(unsigned int *a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v84 = a1 + 3;
    while (1)
    {
      v5 = v2[4];
      v83 = v2[5];
      if (v5)
      {
        v6 = *v5;
        if (*v5 >= 1)
        {
          v7 = 0;
          v8 = 0;
          while (1)
          {
            v10 = *&v5[6 * v7 + 2];
            if (v10)
            {
              if (*v10 == 168 && (*(v10 + 1) & 0x20) == 0)
              {
                v12 = *(v10 + 11);
                if (a1[2] == v12)
                {
                  v9 = 1;
                  goto LABEL_9;
                }

                v13 = a1[1];
                if (v13 >= 2)
                {
                  v14 = v84;
                  v15 = 1;
                  while (1)
                  {
                    v16 = *v14++;
                    if (v16 == v12)
                    {
                      break;
                    }

                    if (v13 == ++v15)
                    {
                      goto LABEL_8;
                    }
                  }

                  v9 = 1 << v15;
                  goto LABEL_9;
                }
              }

              else if ((*(v10 + 1) & 0x810000) == 0)
              {
                v9 = sub_1819725E8(a1, v10);
                v6 = *v5;
                goto LABEL_9;
              }
            }

LABEL_8:
            v9 = 0;
LABEL_9:
            v8 |= v9;
            if (++v7 >= v6)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v8 = 0;
LABEL_26:
      v17 = v2[7];
      v82 = v2;
      if (v17)
      {
        v18 = *v17;
        if (*v17 >= 1)
        {
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v22 = *&v17[6 * v19 + 2];
            if (v22)
            {
              if (*v22 == 168 && (*(v22 + 1) & 0x20) == 0)
              {
                v24 = *(v22 + 11);
                if (a1[2] == v24)
                {
                  v21 = 1;
                  goto LABEL_31;
                }

                v25 = a1[1];
                if (v25 >= 2)
                {
                  v26 = v84;
                  v27 = 1;
                  while (1)
                  {
                    v28 = *v26++;
                    if (v28 == v24)
                    {
                      break;
                    }

                    if (v25 == ++v27)
                    {
                      goto LABEL_30;
                    }
                  }

                  v21 = 1 << v27;
                  goto LABEL_31;
                }
              }

              else if ((*(v22 + 1) & 0x810000) == 0)
              {
                v21 = sub_1819725E8(a1, v22);
                v18 = *v17;
                goto LABEL_31;
              }
            }

LABEL_30:
            v21 = 0;
LABEL_31:
            v20 |= v21;
            if (++v19 >= v18)
            {
              goto LABEL_48;
            }
          }
        }
      }

      v20 = 0;
LABEL_48:
      v29 = v82[9];
      if (v29)
      {
        v30 = *v29;
        if (*v29 >= 1)
        {
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v34 = *&v29[6 * v31 + 2];
            if (v34)
            {
              if (*v34 == 168 && (*(v34 + 1) & 0x20) == 0)
              {
                v36 = *(v34 + 11);
                if (a1[2] == v36)
                {
                  v33 = 1;
                  goto LABEL_53;
                }

                v37 = a1[1];
                if (v37 >= 2)
                {
                  v38 = v84;
                  v39 = 1;
                  while (1)
                  {
                    v40 = *v38++;
                    if (v40 == v36)
                    {
                      break;
                    }

                    if (v37 == ++v39)
                    {
                      goto LABEL_52;
                    }
                  }

                  v33 = 1 << v39;
                  goto LABEL_53;
                }
              }

              else if ((*(v34 + 1) & 0x810000) == 0)
              {
                v33 = sub_1819725E8(a1, v34);
                v30 = *v29;
                goto LABEL_53;
              }
            }

LABEL_52:
            v33 = 0;
LABEL_53:
            v32 |= v33;
            if (++v31 >= v30)
            {
              goto LABEL_70;
            }
          }
        }
      }

      v32 = 0;
LABEL_70:
      v41 = v82[6];
      if (!v41)
      {
        v44 = 0;
        v43 = v83;
        goto LABEL_85;
      }

      v42 = *v41 == 168 && (*(v41 + 1) & 0x20) == 0;
      v43 = v83;
      if (!v42)
      {
        break;
      }

      v45 = *(v41 + 11);
      if (a1[2] == v45)
      {
        v44 = 1;
        goto LABEL_85;
      }

      v46 = a1[1];
      if (v46 < 2)
      {
        goto LABEL_84;
      }

      v47 = v84;
      v48 = 1;
      while (1)
      {
        v49 = *v47++;
        if (v49 == v45)
        {
          break;
        }

        if (v46 == ++v48)
        {
          goto LABEL_84;
        }
      }

      v44 = 1 << v48;
LABEL_85:
      v50 = v82[8];
      if (!v50)
      {
        goto LABEL_98;
      }

      if (*v50 == 168 && (*(v50 + 1) & 0x20) == 0)
      {
        v53 = *(v50 + 11);
        if (a1[2] == v53)
        {
          v52 = 1;
        }

        else
        {
          v54 = a1[1];
          if (v54 < 2)
          {
LABEL_98:
            v52 = 0;
            goto LABEL_99;
          }

          v55 = v84;
          v56 = 1;
          while (1)
          {
            v57 = *v55++;
            if (v57 == v53)
            {
              break;
            }

            if (v54 == ++v56)
            {
              goto LABEL_98;
            }
          }

          v52 = 1 << v56;
        }
      }

      else
      {
        if ((*(v50 + 1) & 0x810000) != 0)
        {
          goto LABEL_98;
        }

        v52 = sub_1819725E8(a1, v50);
      }

LABEL_99:
      v4 |= v8 | v20 | v32 | v44 | v52;
      if (v43 && *v43 >= 1)
      {
        v58 = 0;
        v59 = v43 + 2;
        while (1)
        {
          v61 = &v59[18 * v58];
          v62 = *(v61 + 25);
          if ((v62 & 4) != 0)
          {
            v4 |= sub_181971618(a1, **(v61 + 8));
            v62 = *(v61 + 25);
            if ((v62 & 0x800) != 0)
            {
LABEL_116:
              if ((v62 & 8) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_126;
            }
          }

          else if ((*(v61 + 25) & 0x800) != 0)
          {
            goto LABEL_116;
          }

          v63 = *(v61 + 7);
          if (!v63)
          {
            goto LABEL_125;
          }

          if (*v63 != 168 || (*(v63 + 1) & 0x20) != 0)
          {
            break;
          }

          v65 = *(v63 + 11);
          if (a1[2] == v65)
          {
            v4 |= 1uLL;
            if ((v62 & 8) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_126;
          }

          v66 = a1[1];
          if (v66 < 2)
          {
            goto LABEL_125;
          }

          v67 = v84;
          v68 = 1;
          while (1)
          {
            v69 = *v67++;
            if (v69 == v65)
            {
              break;
            }

            if (v66 == ++v68)
            {
              goto LABEL_125;
            }
          }

          v4 |= 1 << v68;
          if ((v62 & 8) == 0)
          {
            goto LABEL_104;
          }

LABEL_126:
          v70 = *(v61 + 5);
          if (v70)
          {
            v71 = *v70;
            if (*v70 >= 1)
            {
              v72 = 0;
              v60 = 0;
              while (1)
              {
                v74 = *&v70[6 * v72 + 2];
                if (v74)
                {
                  if (*v74 == 168 && (*(v74 + 1) & 0x20) == 0)
                  {
                    v76 = *(v74 + 11);
                    if (a1[2] == v76)
                    {
                      v73 = 1;
                      goto LABEL_131;
                    }

                    v77 = a1[1];
                    if (v77 >= 2)
                    {
                      v78 = v84;
                      v79 = 1;
                      while (1)
                      {
                        v80 = *v78++;
                        if (v80 == v76)
                        {
                          break;
                        }

                        if (v77 == ++v79)
                        {
                          goto LABEL_130;
                        }
                      }

                      v73 = 1 << v79;
                      goto LABEL_131;
                    }
                  }

                  else if ((*(v74 + 1) & 0x810000) == 0)
                  {
                    v73 = sub_1819725E8(a1, v74);
                    v71 = *v70;
                    goto LABEL_131;
                  }
                }

LABEL_130:
                v73 = 0;
LABEL_131:
                v60 |= v73;
                if (++v72 >= v71)
                {
                  goto LABEL_103;
                }
              }
            }
          }

          v60 = 0;
LABEL_103:
          v4 |= v60;
          v43 = v83;
LABEL_104:
          if (++v58 >= *v43)
          {
            goto LABEL_3;
          }
        }

        if ((*(v63 + 1) & 0x810000) == 0)
        {
          v4 |= sub_1819725E8(a1, v63);
          if ((*(v61 + 25) & 8) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_126;
        }

LABEL_125:
        if ((v62 & 8) == 0)
        {
          goto LABEL_104;
        }

        goto LABEL_126;
      }

LABEL_3:
      v2 = v82[10];
      if (!v2)
      {
        return v4;
      }
    }

    if ((*(v41 + 1) & 0x810000) == 0)
    {
      v44 = sub_1819725E8(a1, v41);
      goto LABEL_85;
    }

LABEL_84:
    v44 = 0;
    goto LABEL_85;
  }

  return 0;
}

BOOL sub_181971C28(void *a1, unsigned __int8 *a2)
{
  if ((*(*a1 + 96) & 0x80) != 0)
  {
    return 0;
  }

  v2 = *a2;
  if (v2 != 54 && v2 != 45)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (v3)
  {
    return 0;
  }

  v6 = sub_1818D0A24(*(a2 + 2));
  v7 = sub_1818D0A24(*(a2 + 3));
  if (v6 == v7 || (v8 = v7, result = 0, v6 >= 67) && v8 >= 67)
  {
    v10 = 24;
    if ((v3 & 0x400) != 0)
    {
      v11 = 24;
    }

    else
    {
      v11 = 16;
    }

    if ((v3 & 0x400) != 0)
    {
      v10 = 16;
    }

    v12 = *&a2[v11];
    if ((v12[5] & 2) != 0)
    {
      v16 = a1;
    }

    else
    {
      v13 = *&a2[v10];
      if (v13 && (v13[5] & 2) != 0)
      {
        v16 = a1;
      }

      else
      {
        v14 = sub_1818B4720(a1, v12);
        v15 = a2;
        if (v14)
        {
          goto LABEL_24;
        }

        v16 = a1;
      }

      v12 = v13;
    }

    v14 = sub_1818B4720(v16, v12);
    v15 = a2;
    if (!v14)
    {
      return 1;
    }

LABEL_24:
    if (v14[3] != sub_1818D0EC0)
    {
      v17 = *(v15 + 3);
      v18 = sub_1818B4720(a1, *(v15 + 2));
      if (!v18)
      {
        v18 = *(*a1 + 16);
      }

      v19 = sub_1818B4720(a1, v17);
      if (!v19)
      {
        v19 = *(*a1 + 16);
      }

      v20 = *v18;
      for (i = *v19; ; ++i)
      {
        v22 = *v20;
        v23 = *i;
        if (v22 == v23)
        {
          if (!*v20)
          {
            return v22 == v23;
          }
        }

        else if (byte_181A20298[*v20] != byte_181A20298[*i])
        {
          return v22 == v23;
        }

        ++v20;
      }
    }

    return 1;
  }

  return result;
}

char **sub_181971DD0(char **result, int8x16_t *a2)
{
  v3 = a2[1].i64[0];
  if (*v3 != 177)
  {
    v4 = a2[1].i64[1];
    if (*v4 != 177)
    {
      v5 = result;
      if ((v3[5] & 2) != 0)
      {
        v4 = v3;
      }

      else if ((v4[5] & 2) == 0)
      {
        v6 = a2[1].i64[1];
        v7 = sub_1818B4720(result, v3);
        v4 = v6;
        v8 = v7;
        v9 = v5;
        if (v8)
        {
LABEL_9:
          v10 = a2[1].i64[1];
          if ((v10[5] & 2) == 0)
          {
            v11 = a2[1].i64[0];
            if (!v11 || (*(v11 + 5) & 2) == 0)
            {
              result = sub_1818B4720(v9, v10);
              if (result)
              {
                goto LABEL_16;
              }

              v9 = v5;
            }

            v10 = v11;
          }

          result = sub_1818B4720(v9, v10);
LABEL_16:
          if (v8 == result)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      v8 = sub_1818B4720(v5, v4);
      v9 = v5;
      goto LABEL_9;
    }
  }

LABEL_17:
  a2->i32[1] ^= 0x400u;
LABEL_18:
  a2[1] = vextq_s8(a2[1], a2[1], 8uLL);
  v12 = a2->u8[0];
  v13 = v12 >= 0x37;
  v14 = v12 - 55;
  if (v13)
  {
    a2->i8[0] = (v14 ^ 2) + 55;
  }

  return result;
}

uint64_t sub_181971ECC(uint64_t a1, uint64_t a2, uint64_t *a3, _BOOL4 *a4, _DWORD *a5)
{
  v5 = *(a2 + 32);
  if (!v5)
  {
    return 0;
  }

  v10 = *a1;
  v11 = *v5;
  result = sub_181893B48(*a1, *(a2 + 8), *v5, 1u, 0);
  if (result)
  {
    v13 = *(result + 4);
    if ((v13 & 4) == 0)
    {
      return 0;
    }

    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if (v11 >= 3)
    {
      v27 = *(*(a2 + 32) + 56);
      if (*v27 != 118)
      {
        return 0;
      }

      v28 = *(v27 + 8);
      v18 = *v28;
      if (!*v28)
      {
        return 0;
      }

      v29 = v28[1] || v18 == v15;
      if (v29 || v18 == v16)
      {
        return 0;
      }
    }

    else
    {
      v18 = 0;
    }

    *a5 = ((v13 >> 3) & 1) == 0;
    v19 = *(a2 + 32);
    v20 = *(v19 + 32);
    for (i = *(v19 + 8); i; i = *(i + 2))
    {
      if ((i[5] & 0x20) == 0)
      {
        break;
      }
    }

    v22 = *i;
    if (v22 != 157)
    {
      if (v22 != 118)
      {
        return 0;
      }

      v31 = 0;
      v32 = *(i + 1);
      if (!v32)
      {
        goto LABEL_102;
      }

LABEL_36:
      v34 = *v32;
      if (*v32)
      {
        v35 = v34 == v15;
      }

      else
      {
        v35 = 1;
      }

      if (v35 || v34 == v16 || v34 == v17)
      {
        goto LABEL_102;
      }

      v38 = 0;
      v39 = *v32;
      while (1)
      {
        v44 = v38 + 1;
        if (v39 == v18 && v32[v44] >= 1)
        {
          v38 += 2;
        }

        else if ((v39 & 0x80) != 0)
        {
          if (v39 == 255)
          {
            goto LABEL_72;
          }

          v45 = &v32[v44];
          v46 = *(v45 - 1);
          if (v46 >= 0xC0)
          {
            v47 = byte_181A20D3A[v46 & 0x3F];
            v48 = *v45;
            if ((*v45 & 0xC0) == 0x80)
            {
              do
              {
                v49 = *++v45;
                v47 = v48 & 0x3F | (v47 << 6);
                v48 = v49;
              }

              while ((v49 & 0xC0) == 0x80);
            }

            if (v47 == 65533 || (v47 & 0xFFFFFFFE) == 0xFFFE || v47 < 0x80 || (v47 & 0xFFFFF800) == 0xD800)
            {
              goto LABEL_72;
            }
          }

          if (*(v10 + 100) == 2)
          {
LABEL_72:
            v40 = 0;
LABEL_73:
            if (v38 <= 1)
            {
              result = 0;
              if (v38 == 1 && v34 != v18)
              {
                v38 = 1;
                goto LABEL_77;
              }

LABEL_103:
              if (v31)
              {
                v69 = result;
                if ((*(v31 + 20) & 0x9000) != 0 || *(v31 + 32))
                {
                  v70 = v31;
                  sub_18193CA00(v31);
                  v31 = v70;
                }

                sub_181929C84(*(v31 + 24), v31);
                return v69;
              }

              return result;
            }

LABEL_77:
            if (v32[v38 - 1] != 255)
            {
              v86 = v22;
              v85 = v31;
              if (v40 && !v32[v38 + 1])
              {
                v50 = v20;
                v51 = *(v10 + 100) != 2;
              }

              else
              {
                v50 = v20;
                v51 = 0;
              }

              *a4 = v51;
              v52 = strlen(v32) & 0x3FFFFFFF;
              v53 = sub_181929E8C(v10, v52 + 81, 0x1032040B79D87BDLL);
              v54 = v53;
              if (!v53)
              {
                goto LABEL_108;
              }

              v55 = v50;
              *(v53 + 3) = 0u;
              *(v53 + 4) = 0u;
              *(v53 + 1) = 0u;
              *(v53 + 2) = 0u;
              *v53 = 0u;
              *v53 = 118;
              *(v53 + 26) = -1;
              v56 = v53 + 10;
              v53[1] = v53 + 10;
              v57 = v52;
              if (v52)
              {
                v58 = v32;
                v59 = v55;
                memcpy(v53 + 10, v58, v52);
                v57 = v52;
                v55 = v59;
              }

              v60 = 0;
              LODWORD(v61) = 0;
              v56[v57] = 0;
              *(v54 + 40) = 1;
              v56[v38] = 0;
              do
              {
                v61 = v61;
                if (v56[v61] == v18)
                {
                  ++v61;
                }

                v62 = v54 + v60++;
                *(v62 + 80) = v56[v61];
                LODWORD(v61) = v61 + 1;
              }

              while (v61 < v38);
              if ((v63 = &v56[v60], *v63 = 0, *v55 == 168) && (v64 = v55, sub_1818D0A24(v55) == 66) && ((v64[7] & 3) != 0 || (v65 = *(v64 + 9)) == 0 || *(v65 + 63) != 1) || sub_1818E6334((v54 + 80), &v88, v60, 1) <= 0 && (v60 != 1 || *v56 != 45) && (v66 = *(v63 - 1), *(v63 - 1) = v66 + 1, v67 = sub_1818E6334((v54 + 80), &v88, v60, 1), *(v63 - 1) = v66, v67 < 1))
              {
LABEL_108:
                *a3 = v54;
                result = 1;
                if (v86 == 157)
                {
                  v71 = *(a1 + 16);
                  v72 = *(i + 12);
                  if (v72 <= 31)
                  {
                    v73 = 1 << (v72 - 1);
                  }

                  else
                  {
                    v73 = 0x80000000;
                  }

                  *(v71 + 372) |= v73;
                  v31 = v85;
                  if (*a4 && *(*(i + 1) + 1))
                  {
                    if (*(a1 + 31))
                    {
                      v74 = *(a1 + 31) - 1;
                      *(a1 + 31) = v74;
                      v75 = *(a1 + 4 * v74 + 184);
                    }

                    else
                    {
                      v75 = (*(a1 + 60) + 1);
                      *(a1 + 60) = v75;
                    }

                    sub_1818B8080(a1, i, v75);
                    if (*(*v71 + 103))
                    {
                      v81 = &byte_1EA831A58;
                    }

                    else
                    {
                      v81 = (*(v71 + 136) + 40 * *(v71 + 144) - 40);
                    }

                    v31 = v85;
                    *(v81 + 3) = 0;
                    if (v75)
                    {
                      v82 = *(a1 + 31);
                      if (v82 <= 7)
                      {
                        *(a1 + 31) = v82 + 1;
                        *(a1 + 4 * v82 + 184) = v75;
                      }
                    }

                    result = 1;
                  }
                }

                else
                {
                  v31 = v85;
                }

                goto LABEL_103;
              }

              sub_1819439E0(v10, v54);
              v68 = v85;
              if (v85)
              {
                if ((*(v85 + 20) & 0x9000) != 0 || *(v85 + 32))
                {
                  sub_18193CA00(v85);
                  v68 = v85;
                }

                sub_181929C84(*(v68 + 24), v68);
              }

              return 0;
            }

LABEL_102:
            result = 0;
            goto LABEL_103;
          }

          v38 = v45 - v32;
        }

        else
        {
          ++v38;
        }

        v39 = v32[v38];
        v40 = v39 == v15;
        if (v32[v38])
        {
          v41 = v39 == v15;
        }

        else
        {
          v41 = 1;
        }

        if (v41 || v39 == v16 || v39 == v17)
        {
          goto LABEL_73;
        }
      }
    }

    if ((*(v10 + 50) & 0x80) != 0)
    {
      return 0;
    }

    v23 = *(a1 + 328);
    v24 = *(i + 12);
    if (!v23 || (v25 = v23[16] + (v24 << 6), (*(v25 - 44) & 1) != 0))
    {
      v31 = 0;
    }

    else
    {
      v83 = *v23;
      v84 = v20;
      if (*v23)
      {
        v26 = sub_181929E8C(*v23, 0x40uLL, 0x10F2040695A4BFELL);
      }

      else
      {
        v26 = sub_181902484(64, 0x10F2040695A4BFELL);
      }

      v31 = v26;
      v22 = 157;
      v20 = v84;
      if (v26)
      {
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *v26 = 0u;
        *(v26 + 16) = 0u;
        *(v26 + 20) = 1;
        *(v26 + 24) = v83;
        v76 = *(v25 - 64);
        v77 = *(v25 - 48);
        *(v26 + 16) = v77;
        *v26 = v76;
        LODWORD(v77) = WORD2(v77) & 0xEFFF;
        *(v26 + 20) = v77;
        if ((v77 & 0x1200000000) != 0 && (*(v25 - 44) & 0x2000) == 0)
        {
          *(v26 + 20) = WORD2(v77) & 0xAFFF | 0x4000;
          v78 = v26;
          sub_18190B020(v26, v26, 157, v84);
          v20 = v84;
          v22 = 157;
          v31 = v78;
          LODWORD(v77) = *(v78 + 20);
        }

        if ((0x4000000040004uLL >> v77))
        {
          if ((~v77 & 0x202) == 0 && *(v31 + 22) == 1)
          {
            v32 = *(v31 + 8);
            goto LABEL_33;
          }

          if ((v77 & 1) == 0)
          {
            v79 = v31;
            v80 = sub_18193CB70(v31, 1, 157, v20);
            v20 = v84;
            v22 = 157;
            v31 = v79;
            v32 = v80;
LABEL_33:
            v33 = 1 << (v24 - 1);
            if (v24 > 31)
            {
              v33 = 0x80000000;
            }

            *(*(a1 + 16) + 372) |= v33;
            if (!v32)
            {
              goto LABEL_102;
            }

            goto LABEL_36;
          }
        }
      }
    }

    v32 = 0;
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1819725E8(unsigned int *a1, unsigned __int8 *a2)
{
  if (*a2 != 179)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 11);
  if (a1[2] == v4)
  {
    v5 = 1;
    v6 = *(a2 + 2);
    if (!v6)
    {
      goto LABEL_24;
    }

LABEL_10:
    if (*v6 == 168 && (*(v6 + 1) & 0x20) == 0)
    {
      v13 = *(v6 + 11);
      if (a1[2] == v13)
      {
        v12 = 1;
        goto LABEL_23;
      }

      v14 = a1[1];
      if (v14 >= 2)
      {
        v15 = a1 + 3;
        v16 = 1;
        while (1)
        {
          v17 = *v15++;
          if (v17 == v13)
          {
            break;
          }

          if (v14 == ++v16)
          {
            goto LABEL_22;
          }
        }

        v12 = 1 << v16;
        goto LABEL_23;
      }
    }

    else if ((*(v6 + 1) & 0x810000) == 0)
    {
      v12 = sub_1819725E8(a1, v6);
LABEL_23:
      v5 |= v12;
      goto LABEL_24;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v7 = a1[1];
  if (v7 < 2)
  {
LABEL_9:
    v5 = 0;
    v6 = *(a2 + 2);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v8 = a1 + 3;
  v9 = 1;
  while (1)
  {
    v10 = *v8++;
    if (v10 == v4)
    {
      break;
    }

    if (v7 == ++v9)
    {
      goto LABEL_9;
    }
  }

  v5 = 1 << v9;
  v6 = *(a2 + 2);
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_24:
  v18 = *(a2 + 3);
  if (v18)
  {
    if (*v18 == 168 && (*(v18 + 1) & 0x20) == 0)
    {
      v34 = *(v18 + 11);
      if (a1[2] == v34)
      {
        v20 = 1;
      }

      else
      {
        v35 = a1[1];
        if (v35 < 2)
        {
          goto LABEL_68;
        }

        v36 = a1 + 3;
        v37 = 1;
        while (1)
        {
          v38 = *v36++;
          if (v38 == v34)
          {
            break;
          }

          if (v35 == ++v37)
          {
            goto LABEL_68;
          }
        }

        v20 = 1 << v37;
      }
    }

    else
    {
      if ((*(v18 + 1) & 0x810000) != 0)
      {
        goto LABEL_68;
      }

      v20 = sub_1819725E8(a1, v18);
    }

    goto LABEL_58;
  }

  v21 = *(a2 + 1);
  if ((v21 & 0x1000) != 0)
  {
    if ((v21 & 0x40) != 0)
    {
      *a1 = 1;
    }

    v20 = sub_181971618(a1, *(a2 + 4));
LABEL_58:
    v5 |= v20;
    goto LABEL_68;
  }

  v22 = *(a2 + 4);
  if (v22)
  {
    v23 = *v22;
    if (*v22 < 1)
    {
      v25 = 0;
LABEL_67:
      v5 |= v25;
      goto LABEL_68;
    }

    v24 = 0;
    v25 = 0;
    while (1)
    {
      v27 = *&v22[6 * v24 + 2];
      if (v27)
      {
        if (*v27 == 168 && (*(v27 + 1) & 0x20) == 0)
        {
          v29 = *(v27 + 11);
          if (a1[2] == v29)
          {
            v26 = 1;
            goto LABEL_37;
          }

          v30 = a1[1];
          if (v30 >= 2)
          {
            v31 = a1 + 3;
            v32 = 1;
            while (1)
            {
              v33 = *v31++;
              if (v33 == v29)
              {
                break;
              }

              if (v30 == ++v32)
              {
                goto LABEL_36;
              }
            }

            v26 = 1 << v32;
            goto LABEL_37;
          }
        }

        else if ((*(v27 + 1) & 0x810000) == 0)
        {
          v26 = sub_1819725E8(a1, v27);
          v23 = *v22;
          goto LABEL_37;
        }
      }

LABEL_36:
      v26 = 0;
LABEL_37:
      v25 |= v26;
      if (++v24 >= v23)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_68:
  v39 = *a2;
  if (v39 != 172 && v39 != 169 || (a2[7] & 1) == 0)
  {
    return v5;
  }

  v40 = *(a2 + 9);
  v41 = v40[2];
  if (!v41 || (v42 = *v41, *v41 < 1))
  {
    v44 = 0;
    v53 = v40[3];
    if (v53)
    {
      goto LABEL_95;
    }

    goto LABEL_115;
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v46 = *&v41[6 * v43 + 2];
    if (!v46)
    {
LABEL_75:
      v45 = 0;
      goto LABEL_76;
    }

    if (*v46 == 168 && (*(v46 + 1) & 0x20) == 0)
    {
      v48 = *(v46 + 11);
      if (a1[2] == v48)
      {
        v45 = 1;
      }

      else
      {
        v49 = a1[1];
        if (v49 < 2)
        {
          goto LABEL_75;
        }

        v50 = a1 + 3;
        v51 = 1;
        while (1)
        {
          v52 = *v50++;
          if (v52 == v48)
          {
            break;
          }

          if (v49 == ++v51)
          {
            goto LABEL_75;
          }
        }

        v45 = 1 << v51;
      }
    }

    else
    {
      if ((*(v46 + 1) & 0x810000) != 0)
      {
        goto LABEL_75;
      }

      v45 = sub_1819725E8(a1, v46);
      v42 = *v41;
    }

LABEL_76:
    v44 |= v45;
    ++v43;
  }

  while (v43 < v42);
  v40 = *(a2 + 9);
  v53 = v40[3];
  if (!v53)
  {
    goto LABEL_115;
  }

LABEL_95:
  v54 = *v53;
  if (*v53 < 1)
  {
LABEL_115:
    v56 = 0;
    v65 = v40[9];
    if (v65)
    {
      goto LABEL_118;
    }

    goto LABEL_130;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v58 = *&v53[6 * v55 + 2];
    if (!v58)
    {
LABEL_98:
      v57 = 0;
      goto LABEL_99;
    }

    if (*v58 == 168 && (*(v58 + 1) & 0x20) == 0)
    {
      v60 = *(v58 + 11);
      if (a1[2] == v60)
      {
        v57 = 1;
      }

      else
      {
        v61 = a1[1];
        if (v61 < 2)
        {
          goto LABEL_98;
        }

        v62 = a1 + 3;
        v63 = 1;
        while (1)
        {
          v64 = *v62++;
          if (v64 == v60)
          {
            break;
          }

          if (v61 == ++v63)
          {
            goto LABEL_98;
          }
        }

        v57 = 1 << v63;
      }
    }

    else
    {
      if ((*(v58 + 1) & 0x810000) != 0)
      {
        goto LABEL_98;
      }

      v57 = sub_1819725E8(a1, v58);
      v54 = *v53;
    }

LABEL_99:
    v56 |= v57;
    ++v55;
  }

  while (v55 < v54);
  v65 = *(*(a2 + 9) + 72);
  if (!v65)
  {
    goto LABEL_130;
  }

LABEL_118:
  if (*v65 == 168 && (*(v65 + 1) & 0x20) == 0)
  {
    v68 = *(v65 + 11);
    if (a1[2] == v68)
    {
      v67 = 1;
    }

    else
    {
      v69 = a1[1];
      if (v69 < 2)
      {
        goto LABEL_130;
      }

      v70 = a1 + 3;
      v71 = 1;
      while (1)
      {
        v72 = *v70++;
        if (v72 == v68)
        {
          break;
        }

        if (v69 == ++v71)
        {
          goto LABEL_130;
        }
      }

      v67 = 1 << v71;
    }
  }

  else
  {
    if ((*(v65 + 1) & 0x810000) == 0)
    {
      v67 = sub_1819725E8(a1, v65);
      return v44 | v56 | v67 | v5;
    }

LABEL_130:
    v67 = 0;
  }

  return v44 | v56 | v67 | v5;
}

uint64_t sub_181972B58(int *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v6 = a1 + 2;
  v7 = a4;
  while (1)
  {
    v8 = &v6[18 * v7];
    v9 = *(*(v8 + 2) + 16);
    if (v9)
    {
      break;
    }

LABEL_2:
    if (++v7 >= *a1)
    {
      return 0;
    }
  }

  v10 = v8[7];
  while (!*(v9 + 80) || !*(v9 + 94))
  {
LABEL_5:
    v9 = *(v9 + 40);
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  v11 = 0;
  while (1)
  {
    if (*(*(v9 + 8) + 2 * v11) == -2)
    {
      if (a3)
      {
        v12 = a3;
        do
        {
          if ((*(v12 + 5) & 0x20) == 0)
          {
            break;
          }

          v12 = *(v12 + 16);
        }

        while (v12);
      }

      else
      {
        v12 = 0;
      }

      for (i = *(*(v9 + 80) + 24 * v11 + 8); i; i = *(i + 16))
      {
        if ((*(i + 5) & 0x20) == 0)
        {
          break;
        }
      }

      if (!sub_181959260(0, v12, i, v10))
      {
        v13 = *(*(v9 + 80) + 24 * v11 + 8);
        v18 = 0x100000000;
        v19 = 0;
        v17[3] = 0;
        v17[0] = 0;
        v17[1] = sub_1818C7E14;
        v17[2] = sub_18195A49C;
        if (v13)
        {
          sub_181959BA0(v17, v13);
          if (!WORD2(v18))
          {
            break;
          }
        }
      }
    }

    if (++v11 >= *(v9 + 94))
    {
      goto LABEL_5;
    }
  }

  *a2 = v10;
  a2[1] = -2;
  return 1;
}

uint64_t sub_181972CE8(uint64_t ***a1, int a2, unsigned __int8 *a3, int a4, char a5)
{
  v9 = **a1;
  v10 = *v9;
  v19 = 0;
  if (sub_18195A9F8(a3, &v19, v9))
  {
    v11 = v19;
    if ((v19 & 0x80000000) == 0)
    {
      v20[0] = 0;
      v20[1] = 0;
      result = sub_1818A8CF0(v10, 156, v20, 0);
      if (!result)
      {
        return result;
      }

      v13 = result;
      *(result + 4) |= 0x800u;
      *(result + 8) = v11;
      v14 = sub_181929E8C(*v9, 0x50uLL, 0x1032040B79D87BDLL);
      if (!v14)
      {
        return sub_1819439E0(*v9, v13);
      }

      goto LABEL_8;
    }
  }

  result = sub_181929E8C(v10, 0x51uLL, 0x1032040B79D87BDLL);
  if (!result)
  {
    return result;
  }

  v13 = result;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *result = -80;
  *(result + 80) = 0;
  *(result + 52) = -1;
  *(result + 8) = result + 80;
  *(result + 40) = 1;
  *(result + 44) = a2;
  v14 = sub_181929E8C(*v9, 0x50uLL, 0x1032040B79D87BDLL);
  if (v14)
  {
LABEL_8:
    v15 = v14;
    *v14 = 0u;
    *(v14 + 1) = 0u;
    *(v14 + 3) = 0u;
    *(v14 + 4) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 47;
    *(v14 + 26) = -1;
    v14[3] = v13;
    *(v14 + 1) |= *(v13 + 4) & 0x400208;
    v16 = *(v13 + 40);
    *(v14 + 10) = v16 + 1;
    if (*(*v9 + 148) <= v16)
    {
      sub_181910730(v9, "Expression tree is too large (maximum depth %d)", *(*v9 + 148));
    }

    result = sub_1818CE2C0(a1, v15, 3);
    v17 = &a1[4][7 * result];
    *(v17 + 7) = a4;
    *(v17 + 10) = 64;
    *(v17 + 23) = a5;
    return result;
  }

  v18 = *v9;

  return sub_1819439E0(v18, v13);
}

uint64_t sub_181972F24(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 != 172 || (a2[6] & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 36) = 0;
  return 2;
}

unsigned __int16 *sub_181972F4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 8);
  v4 = (a1 + 88);
  v5 = (a1 + 44);
  v6 = *(a1 + 41);
  v33 = (a1 + 88);
LABEL_2:
  v7 = v6 - 1;
  v8 = v4[v7];
  v9 = v5[v7];
  while (v2 >= *(v3 + 5))
  {
LABEL_3:
    v2 = 0;
    v3 = v3[1];
    if (!v3)
    {
      v31 = *(a1 + 41);
      if (v31 >= *(a1 + 42))
      {
        return 0;
      }

      v2 = 0;
      v3 = *a1;
      v6 = v31 + 1;
      *(a1 + 41) = v6;
      v4 = v33;
      goto LABEL_2;
    }
  }

  v10 = &v3[4][7 * v2];
  while (1)
  {
    if (*(v10 + 7) != v9 || *(v10 + 8) != v8)
    {
      goto LABEL_7;
    }

    if (v8 == -2)
    {
      for (i = *(*v10 + 16); i; i = *(i + 16))
      {
        if ((*(i + 5) & 0x20) == 0)
        {
          break;
        }
      }

      for (j = *(a1 + 24); j; j = *(j + 16))
      {
        if ((*(j + 5) & 0x20) == 0)
        {
          break;
        }
      }

      if (sub_181959260(0, i, j, v9))
      {
        goto LABEL_7;
      }
    }

    if (*(a1 + 41) >= 2u && (*(*v10 + 4) & 1) != 0)
    {
      goto LABEL_7;
    }

    v13 = v10[10];
    if ((v13 & 0x800) != 0)
    {
      v14 = *(a1 + 42);
      if (v14 <= 0xA)
      {
        v15 = *(*v10 + 24);
        if (v15)
        {
          while (1)
          {
            v17 = *(v15 + 1);
            if ((v17 & 0x82000) == 0)
            {
              break;
            }

            if ((v17 & 0x80000) != 0)
            {
              v16 = (*(v15 + 4) + 8);
            }

            else
            {
              v18 = *v15;
              if (v18 != 114)
              {
                goto LABEL_31;
              }

              v16 = (v15 + 16);
            }

            v15 = *v16;
            if (!v15)
            {
              goto LABEL_42;
            }
          }

          v18 = *v15;
LABEL_31:
          if ((v17 & 0x20) == 0 && v18 == 168)
          {
            if (*(a1 + 42))
            {
              v19 = 0;
              while (v5[v19] != *(v15 + 11) || *(v15 + 12) != *(v5 + v19 + 22))
              {
                if (v14 == ++v19)
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              LODWORD(v19) = 0;
            }

            if (v19 == v14)
            {
LABEL_41:
              v5[v14] = *(v15 + 11);
              v33[v14] = *(v15 + 12);
              *(a1 + 42) = v14 + 1;
              v13 = v10[10];
            }
          }
        }
      }
    }

LABEL_42:
    if ((*(a1 + 36) & v13) == 0)
    {
      goto LABEL_7;
    }

    if ((v13 & 0x100) != 0 || !*(a1 + 16))
    {
      break;
    }

    v20 = **v3;
    v21 = *(a1 + 40);
    if (v13)
    {
      v28 = sub_18197331C(**v3, v10, v21);
      if (v28)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v22 = *v10;
      if (sub_181973454(*v10, v21))
      {
        v23 = 24;
        if ((*(v22 + 4) & 0x400) != 0)
        {
          v24 = 24;
        }

        else
        {
          v24 = 16;
        }

        if ((*(v22 + 4) & 0x400) != 0)
        {
          v23 = 16;
        }

        v25 = *(v22 + v24);
        if ((v25[5] & 2) != 0)
        {
          v27 = sub_1818B4720(v20, v25);
          if (!v27)
          {
LABEL_57:
            v28 = "BINARY";
LABEL_62:
            for (k = *(a1 + 16); ; ++k)
            {
              if (*v28 == *k)
              {
                if (!*v28)
                {
                  LOWORD(v13) = v10[10];
                  goto LABEL_68;
                }
              }

              else if (byte_181A20298[*v28] != byte_181A20298[*k])
              {
                goto LABEL_7;
              }

              ++v28;
            }
          }
        }

        else
        {
          v26 = *(v22 + v23);
          if (v26 && (v26[5] & 2) != 0 || (v27 = sub_1818B4720(v20, v25)) == 0)
          {
            v27 = sub_1818B4720(v20, v26);
            if (!v27)
            {
              goto LABEL_57;
            }
          }
        }

        v28 = *v27;
        goto LABEL_62;
      }
    }

LABEL_7:
    ++v2;
    v10 += 28;
    if (v2 >= *(v3 + 5))
    {
      goto LABEL_3;
    }
  }

LABEL_68:
  if ((v13 & 0x82) != 0)
  {
    v30 = *(*v10 + 24);
    if (v30)
    {
      if (*v30 == 168 && *(v30 + 11) == *v5 && *(v30 + 12) == *v33)
      {
        goto LABEL_7;
      }
    }
  }

  *(a1 + 8) = v3;
  *(a1 + 32) = v2 + 1;
  return v10;
}

unsigned __int16 *sub_1819732DC(uint64_t a1)
{
  *(a1 + 40) = sub_1818D0A24(*(a1 + 24));

  return sub_181972F4C(a1);
}

char *sub_18197331C(void *a1, int *a2, char a3)
{
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *v5;
  if (v6 == 176)
  {
    v6 = v5[2];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v7 = v5;
  if (v6 != 177)
  {
    if (v6 != 139)
    {
      goto LABEL_8;
    }

    v7 = *(v5 + 4);
  }

  if (*v7[4] >= 2)
  {
    v8 = 24 * a2[9];
    LOBYTE(v17) = 54;
    v8 -= 24;
    v9 = *(*(v5 + 4) + v8 + 8);
    v10 = *(*(*(v4 + 4) + 32) + v8 + 8);
    *&v18 = v9;
    *(&v18 + 1) = v10;
    v4 = &v17;
  }

LABEL_8:
  if (!sub_181973454(v4, a3))
  {
    return 0;
  }

  v11 = 24;
  if ((*(v4 + 1) & 0x400) != 0)
  {
    v12 = 24;
  }

  else
  {
    v12 = 16;
  }

  v13 = *(v4 + v12);
  if ((*(v4 + 1) & 0x400) != 0)
  {
    v11 = 16;
  }

  if ((v13[5] & 2) != 0)
  {
    v15 = sub_1818B4720(a1, v13);
    if (!v15)
    {
      return "BINARY";
    }
  }

  else
  {
    v14 = *(v4 + v11);
    if (v14 && (v14[5] & 2) != 0 || (v15 = sub_1818B4720(a1, v13)) == 0)
    {
      v15 = sub_1818B4720(a1, v14);
      if (!v15)
      {
        return "BINARY";
      }
    }
  }

  return *v15;
}

BOOL sub_181973454(uint64_t a1, int a2)
{
  v4 = sub_1818D0A24(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = sub_1818D0A24(v5);
    if (v4 >= 65 && v6 >= 65)
    {
      if (v4 > 0x42 || v6 > 0x42)
      {
        return a2 > 66;
      }

      return 1;
    }

LABEL_15:
    if (v6 >= 65)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    LOBYTE(v4) = v7 | 0x40;
    goto LABEL_19;
  }

  if ((*(a1 + 5) & 0x10) != 0)
  {
    v6 = sub_1818D0A24(*(*(*(a1 + 32) + 32) + 8));
    if (v4 >= 65 && v6 >= 65)
    {
      if (v4 > 0x42 || v6 > 0x42)
      {
        return a2 > 66;
      }

      return 1;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    return 1;
  }

LABEL_19:
  if (v4 < 66)
  {
    return 1;
  }

  if (v4 == 66)
  {
    return a2 == 66;
  }

  return a2 > 66;
}

uint64_t sub_181973540(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  v158 = a1[2];
  v159 = 0;
  v7 = &v5[9 * *(v158 + 16)];
  v8 = v3[2];
  v9 = v7[3];
  if (v4)
  {
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = *(v11 + 5);
      if (v12 >= 1)
      {
        v13 = *(v7 + 9);
        v14 = v11[4] + 20;
        do
        {
          v15 = *(v14 - 2);
          *(v14 - 2) = v15 & 0xFFBF;
          if (*(v14 + 8) == v13 && (*(v14 + 20) & a3) == 0 && (*v14 & 0xF7FF) != 0 && (v15 & 0x80) == 0)
          {
            if ((v7[4] & 0x58) == 0 || (v17 = *(v14 - 20), v18 = *(v17 + 4), (v18 & 3) != 0) && *(v17 + 56) == v13 && ((v7[4] & 0x18) == 0 || (v18 & 2) == 0))
            {
              ++v10;
              *(v14 - 2) = v15 | 0x40;
            }
          }

          v14 += 56;
          --v12;
        }

        while (v12);
      }

      v11 = v11[1];
    }

    while (v11);
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v153 = v8;
  if (v8)
  {
    v151 = v3;
    v20 = *v8;
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = (v8 + 1);
      while (1)
      {
        v23 = &v22[6 * v21];
        v24 = *v23;
        v164 = 0x100000000;
        v165 = 0;
        v163 = 0;
        v160 = 0;
        v161 = sub_1818C7E14;
        v162 = sub_18195A49C;
        if (v24)
        {
          sub_181959BA0(&v160, v24);
          if (!WORD2(v164))
          {
            if ((v23[4] & 2) != 0)
            {
              goto LABEL_55;
            }

            v25 = *v24;
            if (v25 == 114)
            {
              v26 = *(v24 + 2);
              if (*v26 != 168 || *(v26 + 11) != *(v7 + 9))
              {
                goto LABEL_55;
              }

              v27 = *(v26 + 12);
              *(v24 + 12) = v27;
              if ((v27 & 0x80000000) == 0)
              {
                v28 = *(v9 + 8) + 16 * v27;
                v29 = *(v28 + 14);
                if ((v29 & 0x200) != 0)
                {
                  v31 = *v28 - 1;
                    ;
                  }

                  if ((v29 & 4) != 0)
                  {
                      ;
                    }
                  }

                  v30 = (v31 + 1);
                }

                else
                {
                  v30 = 0;
                }

                v34 = *(v24 + 1);
                if (v34)
                {
                  if (!v30)
                  {
                    v30 = "BINARY";
                  }

                  while (1)
                  {
                    if (*v34 == *v30)
                    {
                      if (!*v34)
                      {
                        goto LABEL_26;
                      }
                    }

                    else if (byte_181A20298[*v34] != byte_181A20298[*v30])
                    {
                      goto LABEL_55;
                    }

                    ++v34;
                    ++v30;
                  }
                }

                goto LABEL_55;
              }
            }

            else if (v25 != 168 || *(v24 + 11) != *(v7 + 9))
            {
              goto LABEL_55;
            }
          }
        }

LABEL_26:
        if (++v21 == v20)
        {
          goto LABEL_56;
        }
      }
    }

    LODWORD(v21) = 0;
LABEL_55:
    if (v21 == v20)
    {
LABEL_56:
      v36 = *(v151 + 30);
      if ((v36 & 0x80) == 0 || *(v7 + 33) < 0)
      {
        v35 = (v36 >> 6) & 1;
      }

      else
      {
        v35 = (v36 >> 9) & 1 | 2;
      }
    }

    else
    {
      LODWORD(v20) = 0;
      v35 = 0;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v35 = 0;
  }

  v37 = v20;
  v38 = 20 * v19 + 8 * (v19 + v20);
  if (*v6)
  {
    v39 = sub_181929E8C(*v6, v38 + 128, 0x10300402D53C3A4);
    if (v39)
    {
LABEL_63:
      bzero(v39, v38 + 128);
      v40 = &v39[v19 + 16];
      v41 = v40 + 12 * v19;
      v39[1] = v40;
      v39[3] = v41;
      v39[4] = (v41 + 8 * v20);
      v42 = v7[5];
      v39[11] = v42;
      if ((*(v9 + 48) & 0x80) == 0)
      {
        goto LABEL_85;
      }

      v43 = v9 + 16;
      do
      {
        v44 = *v43;
        v45 = *(*v43 + 99) & 3;
        v43 = *v43 + 40;
      }

      while (v45 != 2);
      v46 = *(v44 + 94);
      if (!*(v44 + 94))
      {
LABEL_85:
        v39[12] = v4;
        v39[13] = v6;
        v39[14].i32[0] = v35;
        v39[14].i32[1] = 0;
        if (v4)
        {
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v95 = v4;
          while (1)
          {
            v96 = *(v95 + 5);
            if (v96 >= 1)
            {
              break;
            }

LABEL_87:
            v95 = v95[1];
            if (!v95)
            {
              goto LABEL_119;
            }
          }

          v97 = v96 + v92;
          v98 = v95[4] + 18;
          while (1)
          {
            v99 = *v98;
            if ((*v98 & 0x40) == 0)
            {
              goto LABEL_92;
            }

            v100 = v40 + 12 * v93;
            *v100 = *(v98 + 14);
            *(v100 + 8) = v92;
            v101 = *(v98 + 2);
            v102 = v101 & 0x3FFF;
            if (v102 == 1)
            {
              if ((v99 & 0x8000) == 0)
              {
                v103 = 1 << v93;
                if (v93 >= 32)
                {
                  v103 = 0;
                }

                v39[14].i32[1] |= v103;
              }

              *(v100 + 4) = 2;
            }

            else if (v102 == 64)
            {
              *(v100 + 4) = *(v98 + 5);
            }

            else if ((*(v98 + 2) & 0x180) != 0)
            {
              if (v102 == 256)
              {
                *(v100 + 4) = 71;
              }

              else
              {
                *(v100 + 4) = 72;
              }
            }

            else
            {
              *(v100 + 4) = v101;
              if ((v101 & 0x3C) != 0)
              {
                v104 = *(*(v98 - 18) + 24);
                v105 = *v104;
                if (v105 == 176)
                {
                  v105 = v104[2];
                }

                if (v105 == 177)
                {
                  goto LABEL_110;
                }

                if (v105 == 139)
                {
                  v104 = *(v104 + 4);
LABEL_110:
                  if (**(v104 + 4) >= 2)
                  {
                    v106 = 1 << v93;
                    if (v93 >= 16)
                    {
                      LOWORD(v106) = 0;
                    }

                    v94 |= v106;
                    if (v102 == 4)
                    {
                      *(v100 + 4) = 32;
                    }

                    else if (v102 == 16)
                    {
                      *(v100 + 4) = 8;
                    }
                  }
                }
              }
            }

            ++v93;
LABEL_92:
            ++v92;
            v98 += 56;
            if (v92 >= v97)
            {
              goto LABEL_87;
            }
          }
        }

        v94 = 0;
        v93 = 0;
LABEL_119:
        v39->i32[0] = v93;
        if (v20 < 1)
        {
          v107 = 0;
        }

        else
        {
          v107 = 0;
          v108 = v153 + 3;
          do
          {
            v109 = *(v108 - 2);
            v164 = 0x100000000;
            v165 = 0;
            v163 = 0;
            v160 = 0;
            v161 = sub_1818C7E14;
            v162 = sub_18195A49C;
            if (v109)
            {
              sub_181959BA0(&v160, v109);
              if (!WORD2(v164))
              {
                v110 = v41 + 8 * v107;
                *v110 = *(v109 + 48);
                *(v110 + 4) = *v108 & 1;
                ++v107;
              }
            }

            v108 += 24;
            --v37;
          }

          while (v37);
        }

        v39[2].i32[0] = v107;
        *(v158 + 9) = 0;
        *(v158 + 12) = 1024;
        *(v158 + 26) = 0;
        *(v158 + 28) &= ~1u;
        v111 = v39->u32[0];
        if (v111 <= *(v158 + 28))
        {
LABEL_131:
          v116 = a1;
          v117 = sub_1819751DC(a1, a2, -1, 0, v39, v94, &v159 + 1, &v159);
          if (v159)
          {
            v117 = sub_1819751DC(a1, a2, -1, 0, v39, v94, &v159 + 1, 0);
          }

          v49 = v117;
          if (!v117)
          {
            v118 = HIDWORD(v159);
            v119 = *v158 & ~a2;
            if (!v119 && !HIDWORD(v159))
            {
              v49 = 0;
              goto LABEL_189;
            }

            v127 = ~a2;
            if (HIDWORD(v159))
            {
              v128 = *v158 & ~a2;
              v49 = sub_1819751DC(a1, a2, -1, 1u, v39, v94, &v159 + 1, 0);
              v129 = *v158 & v127;
              v118 = v129 == 0;
              if (v49)
              {
                goto LABEL_189;
              }

              v119 = v128;
            }

            else
            {
              v129 = 0;
            }

            v130 = 0;
            v155 = v118;
            v150 = v118;
            v152 = v129;
            v154 = v119;
            while (v111 >= 1)
            {
              v131 = v130;
              v132 = 0;
              v130 = -1;
              do
              {
                v135 = *(*&v39[1] + 12 * v132 + 8);
                v136 = v4;
                for (i = *(v4 + 5); v135 >= i; i = *(v136 + 5))
                {
                  v135 -= i;
                  v136 = v136[1];
                }

                v133 = v136[4][7 * v135 + 5] & v127;
                if (v133 >= v130)
                {
                  v134 = v130;
                }

                else
                {
                  v134 = v133;
                }

                if (v133 > v131)
                {
                  v130 = v134;
                }

                ++v132;
              }

              while (v132 != v111);
              if (v130 == -1)
              {
                break;
              }

              if (v130 != v119 && v130 != v129)
              {
                v139 = sub_1819751DC(v116, a2, v130 | a2, 0, v39, v94, &v159 + 1, 0);
                v49 = v139;
                if (*v158 == a2)
                {
                  v140 = v155;
                  if (!HIDWORD(v159))
                  {
                    v140 = 1;
                  }

                  v155 = v140;
                  v150 = 1;
                }

                v116 = a1;
                v129 = v152;
                v119 = v154;
                if (v139)
                {
                  goto LABEL_189;
                }
              }
            }

            if (v150)
            {
              v49 = 0;
              v141 = v155;
            }

            else
            {
              v49 = sub_1819751DC(v116, a2, a2, 0, v39, v94, &v159 + 1, 0);
              v141 = v155;
              if (!HIDWORD(v159))
              {
                v141 = 1;
              }
            }

            if (!(v49 | v141))
            {
              v49 = sub_1819751DC(v116, a2, a2, 1u, v39, v94, &v159 + 1, 0);
            }
          }

LABEL_189:
          v142 = *v6;
          v143 = v39->i32[0];
          if (v39->i32[0] >= 1)
          {
            v144 = 0;
            do
            {
              v145 = &v39[v144];
              v146 = v145[16];
              if (v146)
              {
                if ((*(*&v146 + 20) & 0x9000) != 0 || *(*&v146 + 32))
                {
                  sub_18193CA00(*&v145[16]);
                }

                sub_181929C84(*(*&v146 + 24), *&v146);
                v143 = v39->i32[0];
              }

              v145[16] = 0;
              ++v144;
            }

            while (v144 < v143);
          }

          if (!v39[7].i32[0])
          {
            goto LABEL_207;
          }

          v147 = v39[6];
          if (v147)
          {
            v148 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(*&v147);
              --qword_1ED456A90;
              off_1ED452EB0(*&v147);
              v147 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_206;
              }

              v148 = &xmmword_1ED452F28;
            }

            (*v148)(v147);
          }

LABEL_206:
          v39[6] = 0;
          v39[7].i32[0] = 0;
LABEL_207:
          sub_181929C84(v142, v39);
          return v49;
        }

        v112 = *v6;
        v113 = sub_181929E8C(*v6, 8 * ((v111 + 7) & 0xFFFFFFF8), 0x2004093837F09);
        if (v113)
        {
          v114 = v113;
          memcpy(v113, v158[8], 8 * *(v158 + 28));
          v115 = v158[8];
          if (v115 != v158 + 10)
          {
            sub_181929C84(v112, v115);
          }

          v158[8] = v114;
          *(v158 + 28) = (v111 + 7) & 0xFFF8;
          goto LABEL_131;
        }

        v120 = *v6;
        v121 = v39->i32[0];
        if (v39->i32[0] >= 1)
        {
          v122 = 0;
          do
          {
            v123 = &v39[v122];
            v124 = v123[16];
            if (v124)
            {
              if ((*(*&v124 + 20) & 0x9000) != 0 || *(*&v124 + 32))
              {
                sub_18193CA00(*&v123[16]);
              }

              sub_181929C84(*(*&v124 + 24), *&v124);
              v121 = v39->i32[0];
            }

            v123[16] = 0;
            ++v122;
          }

          while (v122 < v121);
        }

        if (!v39[7].i32[0])
        {
          goto LABEL_155;
        }

        v125 = v39[6];
        if (v125)
        {
          v126 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48[0] -= xmmword_1ED452EC0(*&v125);
            --qword_1ED456A90;
            off_1ED452EB0(*&v125);
            v125 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_154;
            }

            v126 = &xmmword_1ED452F28;
          }

          (*v126)(v125);
        }

LABEL_154:
        v39[6] = 0;
        v39[7].i32[0] = 0;
LABEL_155:
        sub_181929C84(v120, v39);
        return 7;
      }

      v47 = *(v44 + 8);
      if (v46 < 4)
      {
        v48 = 0;
        goto LABEL_80;
      }

      if (v46 >= 0x10)
      {
        v48 = v46 & 0xFFF0;
        v50 = 0uLL;
        v51 = v42;
        v52.i64[0] = 0x3F003F003F003FLL;
        v52.i64[1] = 0x3F003F003F003FLL;
        v53 = vdupq_n_s64(1uLL);
        v54 = v47 + 1;
        v55 = v48;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        do
        {
          v62 = vminq_s16(v54[-1], v52);
          v63 = vminq_s16(*v54, v52);
          v64 = vmovl_s16(*v62.i8);
          v65 = vmovl_high_s16(v62);
          v66 = vmovl_s16(*v63.i8);
          v67 = vmovl_high_s16(v63);
          v68.i64[0] = v65.u32[2];
          v68.i64[1] = v65.u32[3];
          v69 = v68;
          v68.i64[0] = v65.u32[0];
          v68.i64[1] = v65.u32[1];
          v70 = v68;
          v68.i64[0] = v64.u32[2];
          v68.i64[1] = v64.u32[3];
          v71 = v68;
          v68.i64[0] = v64.u32[0];
          v68.i64[1] = v64.u32[1];
          v72 = v68;
          v68.i64[0] = v67.u32[2];
          v68.i64[1] = v67.u32[3];
          v73 = v68;
          v68.i64[0] = v67.u32[0];
          v68.i64[1] = v67.u32[1];
          v74 = v68;
          v68.i64[0] = v66.u32[2];
          v68.i64[1] = v66.u32[3];
          v75 = v68;
          v68.i64[0] = v66.u32[0];
          v68.i64[1] = v66.u32[1];
          v57 = vorrq_s8(vshlq_u64(v53, v69), v57);
          v56 = vorrq_s8(vshlq_u64(v53, v70), v56);
          v50 = vorrq_s8(vshlq_u64(v53, v71), v50);
          v51 = vorrq_s8(vshlq_u64(v53, v72), v51);
          v61 = vorrq_s8(vshlq_u64(v53, v73), v61);
          v60 = vorrq_s8(vshlq_u64(v53, v74), v60);
          v59 = vorrq_s8(vshlq_u64(v53, v75), v59);
          v58 = vorrq_s8(vshlq_u64(v53, v68), v58);
          v54 += 2;
          v55 -= 16;
        }

        while (v55);
        v76 = vorrq_s8(vorrq_s8(vorrq_s8(v58, v51), vorrq_s8(v60, v56)), vorrq_s8(vorrq_s8(v59, v50), vorrq_s8(v61, v57)));
        v42 = vorr_s8(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
        if (v48 == v46)
        {
          goto LABEL_84;
        }

        if ((v46 & 0xC) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v48 = 0;
      }

      v77 = v48;
      v48 = v46 & 0xFFFC;
      v78 = 0uLL;
      v79 = v42;
      v80 = (v47 + 2 * v77);
      v81 = v77 - v48;
      v82 = vdupq_n_s64(1uLL);
      do
      {
        v83 = *v80++;
        v84 = vmovl_s16(vmin_s16(v83, 0x3F003F003F003FLL));
        v85.i64[0] = v84.u32[2];
        v85.i64[1] = v84.u32[3];
        v86 = v85;
        v85.i64[0] = v84.u32[0];
        v85.i64[1] = v84.u32[1];
        v78 = vorrq_s8(vshlq_u64(v82, v86), v78);
        v79 = vorrq_s8(vshlq_u64(v82, v85), v79);
        v81 += 4;
      }

      while (v81);
      v87 = vorrq_s8(v79, v78);
      v42 = vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
      if (v48 != v46)
      {
LABEL_80:
        v88 = v46 - v48;
        v89 = &v47->i16[v48];
        do
        {
          v91 = *v89++;
          v90 = v91;
          if (v91 >= 63)
          {
            v90 = 63;
          }

          *&v42 |= 1 << v90;
          --v88;
        }

        while (v88);
      }

LABEL_84:
      v39[11] = v42;
      goto LABEL_85;
    }
  }

  else
  {
    v39 = sub_181902484(v38 + 128, 0x10300402D53C3A4);
    if (v39)
    {
      goto LABEL_63;
    }
  }

  sub_181910730(v6, "out of memory");
  return 7;
}