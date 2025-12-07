size_t sub_10016F47C(uint64_t a1, size_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  if (*a2 * a4)
  {
    a2[117] = sub_100166C7C(a1);
    result = sub_100166C7C(a1);
  }

  else
  {
    result = 0;
    a2[117] = 0;
  }

  a2[118] = result;
  if (!*(a1 + 24) && a4)
  {
    v17 = 0;
    do
    {
      result = sub_10016FB84(a3, *a2, a5, a6, (a2[117] + *a2 * v17), a2[118] + 2 * *a2 * v17, a7, a8);
      ++v17;
      a3 += 2192;
    }

    while (a4 != v17);
  }

  return result;
}

void *sub_10016F560(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = result[115];
  if (!v4)
  {
    v5 = result[114] + 1;
    result[114] = v5;
    v6 = *(result[3] + 4 * v5);
    v7 = *(result[2] + v5);
    result[115] = v6;
    result[116] = *result * v7;
    v8 = result[5];
    if (v8 + 1 == v7)
    {
      v9 = 1;
    }

    else if (result[6] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + 2;
    }

    result[5] = v7;
    result[6] = v8;
    v10 = *(result + v9 + 56);
    v11 = *(result + v9 + 157);
    v12 = *a3;
    *(a4 + (*a3 >> 3)) = (v11 << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    v13 = v12 + v10;
    *a3 = v13;
    v14 = 14;
    if (v6 > 0x2F0)
    {
      v14 = 20;
    }

    v15 = 7;
    if (v6 <= 0x28)
    {
      v15 = 0;
    }

    if (v6 <= 0xB0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = (&unk_10037D31E + 4 * v16 + 4);
    do
    {
      v18 = v16;
      if (v16 == 25)
      {
        break;
      }

      ++v16;
      v19 = *v17;
      v17 += 2;
    }

    while (v6 >= v19);
    v20 = (&unk_10037D31E + 4 * v18);
    v21 = *(v20 + 2);
    v22 = v6 - *v20;
    v23 = *(result + v18 + 830);
    *(a4 + (v13 >> 3)) = (*(result + v18 + 428) << (v13 & 7)) | *(a4 + (v13 >> 3));
    v24 = v13 + v23;
    *a3 = v24;
    *(a4 + (v24 >> 3)) = (v22 << (v24 & 7)) | *(a4 + (v24 >> 3));
    *a3 = v24 + v21;
    v4 = result[115];
  }

  result[115] = v4 - 1;
  v25 = result[116] + a2;
  v26 = *(result[117] + v25);
  v27 = *a3;
  *(a4 + (*a3 >> 3)) = (*(result[118] + 2 * v25) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  *a3 = v27 + v26;
  return result;
}

void *sub_10016F6EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
{
  v7 = result[115];
  if (!v7)
  {
    v8 = result[114] + 1;
    result[114] = v8;
    v9 = *(result[3] + 4 * v8);
    v10 = *(result[2] + v8);
    result[115] = v9;
    result[116] = v10 << a7;
    v11 = result[5];
    if (v11 + 1 == v10)
    {
      v12 = 1;
    }

    else if (result[6] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2;
    }

    result[5] = v10;
    result[6] = v11;
    v13 = *(result + v12 + 56);
    v14 = *(result + v12 + 157);
    v15 = *a5;
    *(a6 + (*a5 >> 3)) = (v14 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    v16 = v15 + v13;
    *a5 = v16;
    v17 = 14;
    if (v9 > 0x2F0)
    {
      v17 = 20;
    }

    v18 = 7;
    if (v9 <= 0x28)
    {
      v18 = 0;
    }

    if (v9 <= 0xB0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = (&unk_10037D31E + 4 * v19 + 4);
    do
    {
      v21 = v19;
      if (v19 == 25)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v20 += 2;
    }

    while (v9 >= v22);
    v23 = (&unk_10037D31E + 4 * v21);
    v24 = *(v23 + 2);
    v25 = v9 - *v23;
    v26 = *(result + v21 + 830);
    *(a6 + (v16 >> 3)) = (*(result + v21 + 428) << (v16 & 7)) | *(a6 + (v16 >> 3));
    v27 = v16 + v26;
    *a5 = v27;
    *(a6 + (v27 >> 3)) = (v25 << (v27 & 7)) | *(a6 + (v27 >> 3));
    *a5 = v27 + v24;
    v7 = result[115];
  }

  result[115] = v7 - 1;
  v28 = a2 + *result * *(a4 + 4 * result[116] + 4 * a3);
  v29 = *(result[117] + v28);
  v30 = *a5;
  *(a6 + (*a5 >> 3)) = (*(result[118] + 2 * v28) << (*a5 & 7)) | *(a6 + (*a5 >> 3));
  *a5 = v30 + v29;
  return result;
}

uint64_t sub_10016F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v29 = *(v23 + 72);
  sub_10016E7A4(v14, v24, a10, a11);
  bzero(v34, 0x408uLL);
  v34[129] = 0x7FF0000000000000;
  bzero(v32, 0xB08uLL);
  v33 = 0x7FF0000000000000;
  bzero(v30, 0x888uLL);
  v31 = 0x7FF0000000000000;
  sub_10016FAE0(v21, v19, v17, v13, a9, v34, v32, v30);
  v25 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v25 + 13;
  result = sub_100166C7C(v22);
  if (!*(v22 + 24))
  {
    v27 = result;
    sub_10016FB84(v34, 0x100uLL, 256, result, v40, v39, a10, a11);
    sub_10016FB84(v32, 0x2C0uLL, 704, v27, v38, v37, a10, a11);
    sub_10016FB84(v30, 0x8CuLL, v29, v27, v36, v35, a10, a11);
    sub_100166DB4(v22, v27);
    result = sub_10016FF64(v21, v19, v17, v13, a9, v40, v39, v38, v37, v36, v35, a10, a11);
    if (v15)
    {
      v28 = *a10 + 7;
      *a10 = v28 & 0xFFFFFFF8;
      *(a11 + (v28 >> 3)) = 0;
    }
  }

  return result;
}

uint64_t sub_10016FAE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 0;
    v9 = *(a7 + 2816);
    do
    {
      v10 = (a4 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      ++*(a7 + 4 * v13);
      *(a7 + 2816) = ++v9;
      if (v12)
      {
        v15 = *(a6 + 1024) + 1;
        do
        {
          ++*(a6 + 4 * *(result + (a2 & a3)));
          *(a6 + 1024) = v15;
          ++a2;
          ++v15;
          --v12;
        }

        while (v12);
      }

      v16 = v11 & 0x1FFFFFF;
      if (v16)
      {
        if (v13 >= 0x80)
        {
          ++*(a8 + 4 * (v14 & 0x3FF));
          ++*(a8 + 2176);
        }
      }

      a2 += v16;
      ++v8;
    }

    while (v8 != a5);
  }

  return result;
}

unint64_t sub_10016FB84(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v14 = result;
  v41 = 0u;
  v42 = 0u;
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (*(result + 4 * v15))
      {
        if (v16 > 3)
        {
          if (v16 != 4)
          {
            break;
          }
        }

        else
        {
          *(&v41 + v16) = v15;
        }

        ++v16;
      }

      ++v15;
    }

    while (a2 != v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = 64 - __clz(a3 - 1);
  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 - 1;
  if (v16 <= 1)
  {
    v20 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v20 += 4;
    *a7 = v20;
    v21 = v41;
    *(a8 + (v20 >> 3)) = (v41 << (v20 & 7)) | *(a8 + (v20 >> 3));
    *a7 = v20 + v18;
    a5[v21] = 0;
    *(a6 + 2 * v21) = 0;
    return result;
  }

  bzero(a5, a2);
  sub_10013CB14(v14, a2, 15, a4, a5);
  result = sub_10013D55C(a5, a2, a6);
  if (v16 <= 4)
  {
    v22 = 0;
    v23 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    *a7 = v23 + 2;
    *(a8 + ((v23 + 2) >> 3)) = (v19 << ((v23 + 2) & 7)) | *(a8 + ((v23 + 2) >> 3));
    v24 = v23 + 4;
    *a7 = v24;
    v25 = &v41 + 8;
    do
    {
      v26 = v22 + 1;
      if (v22 + 1 < v16)
      {
        v27 = *(&v41 + v22);
        v28 = v25;
        v29 = v19;
        do
        {
          v30 = *v28;
          result = a5[v27];
          if (a5[*v28] < result)
          {
            *v28 = v27;
            *(&v41 + v22) = v30;
            v27 = v30;
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      --v19;
      v25 += 8;
      ++v22;
    }

    while (v26 != v16);
    v31 = v41;
    v32 = v24 >> 3;
    v33 = v41 << (v24 & 7);
    v34 = v24 + v18;
    if (v16 == 3)
    {
      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      v35 = v42;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
      v34 += v18;
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (v35 << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    else
    {
      if (v16 != 2)
      {
        *(a8 + v32) = v33 | *(a8 + v32);
        *a7 = v34;
        v37 = v42;
        *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
        v38 = v34 + v18;
        *a7 = v38;
        *(a8 + (v38 >> 3)) = (v37 << (v38 & 7)) | *(a8 + (v38 >> 3));
        v39 = v38 + v18;
        *a7 = v39;
        *(a8 + (v39 >> 3)) = (*(&v42 + 1) << (v39 & 7)) | *(a8 + (v39 >> 3));
        v40 = v39 + v18;
        *a7 = v40;
        *(a8 + (v40 >> 3)) = ((a5[v31] == 1) << (v40 & 7)) | *(a8 + (v40 >> 3));
        v36 = v40 + 1;
        goto LABEL_33;
      }

      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    v36 = v34 + v18;
LABEL_33:
    *a7 = v36;
    return result;
  }

  return sub_10016D458(a5, a2, a4, a7, a8);
}

uint64_t sub_10016FF64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
{
  if (a5)
  {
    v13 = 0;
    v14 = *a12;
    do
    {
      v15 = (a4 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v15 + 6);
      v20 = *(v15 + 7);
      v21 = *(a8 + v19);
      *(a13 + (v14 >> 3)) = (*(a9 + 2 * v19) << (v14 & 7)) | *(a13 + (v14 >> 3));
      v22 = v14 + v21;
      *a12 = v22;
      LOWORD(v23) = v16;
      if (v16 >= 6)
      {
        if (v16 > 0x81)
        {
          if (v16 > 0x841)
          {
            if (v16 >> 1 >= 0xC21)
            {
              if (v16 < 0x5842)
              {
                LOWORD(v23) = 22;
              }

              else
              {
                LOWORD(v23) = 23;
              }
            }

            else
            {
              LOWORD(v23) = 21;
            }
          }

          else
          {
            LODWORD(v23) = (__clz(v16 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v24 = (__clz(v16 - 2) ^ 0x1F) - 1;
          v23 = ((v16 - 2) >> v24) + 2 * v24 + 2;
        }
      }

      v25 = HIBYTE(v17) & 0x80 | (v17 >> 25);
      v26 = v17 & 0x1FFFFFF;
      v27 = (v26 + v25);
      if (v27 > 9)
      {
        if (v27 > 0x85)
        {
          v30 = (__clz(v27 - 70) ^ 0x1F) + 12;
          if (v27 <= 0x845)
          {
            LOWORD(v28) = v30;
          }

          else
          {
            LOWORD(v28) = 23;
          }
        }

        else
        {
          v29 = (__clz(v27 - 6) ^ 0x1F) - 1;
          v28 = ((v27 - 6) >> v29) + 2 * v29 + 4;
        }
      }

      else
      {
        LOWORD(v28) = v26 + v25 - 2;
      }

      v31 = v23;
      v32 = dword_10037C994[v31];
      v33 = v28;
      v34 = ((v27 - *(&unk_10037C9F4 + v33 * 4)) << v32) | (v16 - *(&unk_10037C934 + v31 * 4));
      v35 = dword_10037CA54[v33] + v32;
      *(a13 + (v22 >> 3)) = (v34 << (v22 & 7)) | *(a13 + (v22 >> 3));
      v14 = v22 + v35;
      *a12 = v14;
      if (v16)
      {
        do
        {
          v36 = *(result + (a2 & a3));
          v37 = *(a6 + v36);
          *(a13 + (v14 >> 3)) = (*(a7 + 2 * v36) << (v14 & 7)) | *(a13 + (v14 >> 3));
          v14 += v37;
          *a12 = v14;
          ++a2;
          --v16;
        }

        while (v16);
      }

      if (v26)
      {
        if (v19 >= 0x80)
        {
          v38 = *(a10 + (v20 & 0x3FF));
          *(a13 + (v14 >> 3)) = (*(a11 + 2 * (v20 & 0x3FF)) << (v14 & 7)) | *(a13 + (v14 >> 3));
          *a12 = v14 + v38;
          *(a13 + ((v14 + v38) >> 3)) = (v18 << ((v14 + v38) & 7)) | *(a13 + ((v14 + v38) >> 3));
          v14 += v38 + (v20 >> 10);
          *a12 = v14;
        }
      }

      a2 += v26;
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

uint64_t sub_1001701F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v11 = __chkstk_darwin(a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v24 = *(v23 + 72);
  sub_10016E7A4(v14, v25, a10, a11);
  v26 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v26 + 13;
  if (a9 > 0x80)
  {
    bzero(v36, 0x408uLL);
    v38 = 0x7FF0000000000000;
    bzero(v48, 0xB08uLL);
    v50 = 0x7FF0000000000000;
    bzero(v45, 0x888uLL);
    v47 = 0x7FF0000000000000;
    sub_10016FAE0(v21, v19, v17, v13, a9, v36, v48, v45);
    result = sub_10016D708(v22, v36, *v37, 8, v44, v43, a10, a11);
    if (!*(v22 + 24))
    {
      result = sub_10016D708(v22, v48, *v49, 10, v42, v41, a10, a11);
      if (!*(v22 + 24))
      {
        result = sub_10016D708(v22, v45, *v46, (__clz(v24 - 1) ^ 0x1F) + 1, v40, v39, a10, a11);
        if (!*(v22 + 24))
        {
          result = sub_10016FF64(v21, v19, v17, v13, a9, v44, v43, v42, v41, v40, v39, a10, a11);
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    bzero(v48, 0x400uLL);
    if (a9)
    {
      v27 = 0;
      v28 = 0;
      v29 = v19;
      do
      {
        v30 = (v13 + 16 * v27);
        v31 = *v30;
        if (v31)
        {
          v32 = *v30;
          do
          {
            ++v48[*(v21 + (v29++ & v17))];
            --v32;
          }

          while (v32);
        }

        v28 += v31;
        v29 += v30[1] & 0x1FFFFFF;
        ++v27;
      }

      while (v27 != a9);
    }

    else
    {
      v28 = 0;
    }

    result = sub_10016D708(v22, v48, v28, 8, v41, v45, a10, a11);
    if (!*(v22 + 24))
    {
      v34 = *a10;
      *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
      *a10 = v34 + 56;
      *(a11 + ((v34 + 56) >> 3)) = *(a11 + ((v34 + 56) >> 3));
      *a10 = v34 + 59;
      *(a11 + ((v34 + 59) >> 3)) = (57269251 << ((v34 + 59) & 7)) | *(a11 + ((v34 + 59) >> 3));
      *a10 = v34 + 87;
      result = sub_10016FF64(v21, v19, v17, v13, a9, v41, v45, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v\v", "", &unk_1003F2DA0, &unk_1003F2DE0, a10, a11);
LABEL_16:
      if (v15)
      {
        v35 = *a10 + 7;
        *a10 = v35 & 0xFFFFFFF8;
        *(a11 + (v35 >> 3)) = 0;
      }
    }
  }

  return result;
}

void *sub_1001705B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, unint64_t *a6, uint64_t a7)
{
  v9 = a5;
  v12 = a4 & a3;
  v13 = *a6;
  *(a7 + (*a6 >> 3)) = *(a7 + (*a6 >> 3));
  if (a5 == 1 || (v14 = __clz(a5 - 1) ^ 0x1F, v14 <= 0xE))
  {
    v15 = 4;
  }

  else
  {
    v15 = (v14 + 4) >> 2;
  }

  *(a7 + ((v13 + 1) >> 3)) = ((v15 - 4) << ((v13 + 1) & 7)) | *(a7 + ((v13 + 1) >> 3));
  v16 = v13 + 3;
  *(a7 + (v16 >> 3)) = ((a5 - 1) << (v16 & 7)) | *(a7 + (v16 >> 3));
  v17 = v16 + 4 * v15;
  *(a7 + (v17 >> 3)) = (1 << (v17 & 7)) | *(a7 + (v17 >> 3));
  v18 = v17 + 8;
  v19 = v18 & 0xFFFFFFF8;
  v20 = (a7 + (v19 >> 3));
  *v20 = 0;
  v21 = a4 + 1;
  if (v12 + a5 <= a4 + 1)
  {
    v23 = v18 >> 3;
  }

  else
  {
    v22 = v21 - v12;
    memcpy(v20, (a2 + v12), v21 - v12);
    v12 = 0;
    v19 += 8 * v22;
    v9 -= v22;
    v23 = v19 >> 3;
  }

  result = memcpy((a7 + v23), (a2 + v12), v9);
  v25 = v19 + 8 * v9;
  *a6 = v25;
  *(a7 + (v25 >> 3)) = 0;
  if (a1)
  {
    *(a7 + (v25 >> 3)) = 1 << (v19 & 7);
    *(a7 + ((v25 + 1) >> 3)) = (1 << ((v25 + 1) & 7)) | *(a7 + ((v25 + 1) >> 3));
    v26 = v25 + 9;
    *a6 = v26 & 0xFFFFFFF8;
    *(a7 + (v26 >> 3)) = 0;
  }

  return result;
}

uint64_t sub_100170744(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v3 = __clz(result) ^ 0x1F;
    v4 = *a2;
    *(a3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(a3 + (*a2 >> 3));
    *a2 = v4 + 1;
    *(a3 + ((v4 + 1) >> 3)) = (v3 << ((v4 + 1) & 7)) | *(a3 + ((v4 + 1) >> 3));
    v4 += 4;
    *a2 = v4;
    *(a3 + (v4 >> 3)) = (((-1 << v3) + result) << (v4 & 7)) | *(a3 + (v4 >> 3));
    v5 = v4 + v3;
  }

  else
  {
    v6 = *a2;
    *(a3 + (*a2 >> 3)) = *(a3 + (*a2 >> 3));
    v5 = v6 + 1;
  }

  *a2 = v5;
  return result;
}

compression_status compression_stream_init(compression_stream *stream, compression_stream_operation operation, compression_algorithm algorithm)
{
  if (algorithm > 2192)
  {
    if (algorithm - 2304 < 2)
    {
      return sub_100134EB4(stream, operation, *&algorithm, 0);
    }

    if (algorithm == COMPRESSION_BROTLI)
    {
      return sub_1001344B8(stream, operation);
    }

    if (algorithm == 2193)
    {
      return sub_10015BDE4(stream, operation, *&algorithm, 0);
    }

    return -1;
  }

  if (algorithm > 2048)
  {
    if (algorithm - 2049 < 2)
    {
      return sub_10015BDE4(stream, operation, *&algorithm, 0);
    }

    return -1;
  }

  if (algorithm == COMPRESSION_LZ4)
  {
    return sub_10013A978(stream, operation, 0);
  }

  if (algorithm != COMPRESSION_ZLIB)
  {
    if (algorithm == COMPRESSION_LZMA)
    {
      sub_100133300(stream, operation);
      return result;
    }

    return -1;
  }

  return sub_10013A55C(stream, operation, 0);
}

uint64_t compression_stream_init_with_state_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 - 0x100000000) < 0xFFFFFFFF00000010)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  *a4 = 0;
  *(a4 + 8) = -1412628475;
  *(a4 + 12) = a5;
  return compression_stream_reinit(a1, a2, a3);
}

uint64_t compression_stream_reinit(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 > 2192)
  {
    if ((a3 - 2304) < 2)
    {
      return sub_100134EB4(a1, a2, a3, 1);
    }

    if (a3 != 2193)
    {
      return 0xFFFFFFFFLL;
    }

    return sub_10015BDE4(a1, a2, a3, 1);
  }

  if ((a3 - 2049) < 2)
  {
    return sub_10015BDE4(a1, a2, a3, 1);
  }

  if (a3 != 256)
  {
    if (a3 == 517)
    {
      return sub_10013A55C(a1, a2, 1);
    }

    return 0xFFFFFFFFLL;
  }

  return sub_10013A978(a1, a2, 1);
}

compression_status compression_stream_process(compression_stream *stream, int flags)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v4 = flags;
  src_ptr = stream->src_ptr;
  dst_ptr = stream->dst_ptr;
  v8 = state[1];
  result = COMPRESSION_STATUS_ERROR;
  if (v8 > 2192)
  {
    if ((v8 - 2304) < 2)
    {
      result = sub_100134EE0(stream, flags);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v8 == 2818)
    {
      result = sub_1001343F8(stream, flags, v2);
      if (result)
      {
        return result;
      }

      goto LABEL_24;
    }

    if (v8 != 2193)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v8 > 2048)
  {
    if ((v8 - 2049) >= 2)
    {
      return result;
    }

LABEL_15:
    result = sub_10015BE10(stream, flags);
    if (result)
    {
      return result;
    }

    goto LABEL_24;
  }

  switch(v8)
  {
    case 256:
      result = sub_10013AA30(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    case 517:
      result = sub_10013A60C(&stream->dst_ptr, flags);
      if (result)
      {
        return result;
      }

      break;
    case 774:
      result = sub_1001333A4(stream, flags);
      if (result)
      {
        return result;
      }

      break;
    default:
      return result;
  }

LABEL_24:
  if ((v4 & 1) != 0 && stream->src_ptr == src_ptr && stream->dst_ptr == dst_ptr)
  {
    return -1;
  }

  return result;
}

compression_status compression_stream_destroy(compression_stream *stream)
{
  state = stream->state;
  if (!state)
  {
    return -1;
  }

  v2 = state[1];
  if (v2 <= 2192)
  {
    if (v2 <= 2048)
    {
      if (v2 != 256 && v2 != 517)
      {
        if (v2 == 774)
        {
          return sub_100133458(stream);
        }

        return -1;
      }

      return sub_100134F04(stream);
    }

    if ((v2 - 2049) < 2)
    {
      return sub_100134F04(stream);
    }

    return -1;
  }

  if ((v2 - 2304) < 2)
  {
    return sub_100134F04(stream);
  }

  if (v2 != 2818)
  {
    if (v2 == 2193)
    {
      return sub_100134F04(stream);
    }

    return -1;
  }

  return sub_100134588(stream);
}

uint64_t compression_stream_identify_algorithm(int *a1)
{
  if (sub_10015BE34(a1))
  {
    return 2049;
  }

  if (default argument 2 of Array<A>.jsonString(prettyPrinted:redacted:origin:)())
  {
    return 517;
  }

  if (sub_100133490(a1))
  {
    return 774;
  }

  if (sub_10013B038(a1))
  {
    return 256;
  }

  if (sub_100134F34(a1))
  {
    return 2304;
  }

  if (sub_10014B180(a1))
  {
    return 1794;
  }

  return 0xFFFFFFFFLL;
}

uint64_t compression_stream_get_state_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v3 = *(v1 + 4);
  if (v3 > 2048)
  {
    if ((v3 - 2049) >= 2 && v3 != 2193)
    {
      return result;
    }

    return *(v1 + 12);
  }

  if (v3 == 256 || v3 == 517)
  {
    return *(v1 + 12);
  }

  return result;
}

uint64_t compression_stream_get_encode_state_size(uint64_t a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return sub_100134F9C();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_10015BEC4(a1);
  }

  if ((a1 - 2049) < 2)
  {
    return sub_10015BEC4(a1);
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return default argument 0 of DownloadConfiguration.init(downloadRetries:networkServiceType:alternateCDNHost:maxActiveTasks:chunkSize:)();
    }

    return 0;
  }

  return sub_10013B06C();
}

uint64_t compression_stream_get_decode_state_size(uint64_t a1)
{
  if (a1 > 2192)
  {
    if ((a1 - 2304) < 2)
    {
      return sub_100134FA0();
    }

    if (a1 != 2193)
    {
      return 0;
    }

    return sub_10015BEC8(a1);
  }

  if ((a1 - 2049) < 2)
  {
    return sub_10015BEC8(a1);
  }

  if (a1 != 256)
  {
    if (a1 == 517)
    {
      return sub_10013A950();
    }

    return 0;
  }

  return sub_10013B06C();
}

_DWORD *compression_stream_is_state_valid(_DWORD *result)
{
  if (result)
  {
    if (*result > 1u)
    {
      return 0;
    }

    else
    {
      return (result[2] == -1412628475);
    }
  }

  return result;
}

_DWORD *sub_100170C68(_DWORD *a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v6 = a4;
  v9 = a1;
  if (a1 && a1[3] >= a4)
  {
    v6 = a1[3];
  }

  else
  {
    free(a1);
    v9 = malloc(v6);
    if (!v9)
    {
      return v9;
    }
  }

  if (v6 > a5)
  {
    bzero(v9, v6 - a5);
  }

  *v9 = a2;
  v9[1] = a3;
  v9[2] = -1412628475;
  v9[3] = v6;
  return v9;
}

void sub_100170CFC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v61 = v8;
  if (sub_100132880(v4, v1, v6, v8, 0.75))
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    if (v9)
    {
      v11 = 0;
      v12 = v10;
      v13 = v9;
      do
      {
        if (*(v5 + (v12 & v7)) < 0)
        {
          v15 = 2 * (v11 > 0xDF);
          if (*(v5 + (v12 & v7)) <= 0xBFu)
          {
            v14 = v15;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 0;
        }

        v11 = *(v5 + (v12 & v7));
        ++*(&v63 + v14);
        ++v12;
        --v13;
      }

      while (v13);
      v16 = (v64 + v65) > 0x18;
      bzero(&v63, 0x1800uLL);
      v17 = 0;
      v18 = 0;
      v19 = 495;
      if (v9 < 0x1EF)
      {
        v19 = v9;
      }

      memset(v62, 0, sizeof(v62));
      v20 = v10;
      do
      {
        v21 = *(v5 + (v20 & v7));
        v22 = *(v5 + (v20 & v7));
        ++*(&v63 + 256 * v18 + v22);
        ++v62[v18];
        v18 = v17 >= 0xE0 && v16;
        if (v21 > 0xBFu)
        {
          v18 = v16;
        }

        if (v21 >= 0)
        {
          v18 = 0;
        }

        ++v20;
        v17 = v22;
        --v19;
      }

      while (v19);
      v23 = 0;
      v24 = 2000;
      do
      {
        if (v23 >= 0x1EF)
        {
          if (v23 == 495)
          {
            v25 = 0;
          }

          else
          {
            v26 = v10 + v23;
            v27 = v23 < 0x1F1 || *(v5 + ((v26 - 497) & v7)) < 0xE0u;
            v28 = *(v5 + ((v26 - 496) & v7));
            v29 = !v27 && v16;
            if (v28 > 0xBF)
            {
              v29 = v16;
            }

            v25 = (v28 & 0x80) != 0 && v29;
          }

          v30 = *(v5 + ((v10 + v23 - 495) & v7));
          --*(&v63 + 256 * v25 + v30);
          --v62[v25];
        }

        if (v23 + 495 < v9)
        {
          v31 = *(v5 + ((v10 + v23 + 493) & v7)) >= 0xE0u && v16;
          if (*(v5 + ((v10 + v23 + 494) & v7)) > 0xBFu)
          {
            v31 = v16;
          }

          if (*(v5 + ((v10 + v23 + 494) & v7)) >= 0)
          {
            v31 = 0;
          }

          v32 = *(v5 + ((v10 + v23 + 495) & v7));
          ++*(&v63 + 256 * v31 + v32);
          ++v62[v31];
        }

        if (v23)
        {
          v33 = v10 + v23;
          v34 = v23 == 1 || *(v5 + ((v33 - 2) & v7)) < 0xE0u;
          v36 = *(v5 + ((v33 - 1) & v7));
          v37 = !v34 && v16;
          if (v36 > 0xBF)
          {
            v37 = v16;
          }

          v35 = (v36 & 0x80) != 0 && v37;
        }

        else
        {
          v35 = 0;
        }

        v38 = *(v5 + ((v10 + v23) & v7));
        v39 = &v63 + 256 * v35;
        v40 = v39[v38];
        if (v40 <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39[v38];
        }

        v42 = v62[v35];
        if (v42 > 0xFF)
        {
          v43 = log2(v42);
        }

        else
        {
          v43 = dbl_1003EDA70[v42];
        }

        if (v40 > 0xFF)
        {
          v44 = log2(v41);
        }

        else
        {
          v44 = dbl_1003EDA70[v41];
        }

        v9 = v61;
        v45 = v43 - v44 + 0.02905;
        if (v45 < 1.0)
        {
          v45 = v45 * 0.5 + 0.5;
        }

        if (v23 <= 0x7CF)
        {
          v45 = v24 / -2000.0 * 0.35 + 0.7 + v45;
        }

        v46 = v45;
        v3[v23++] = v46;
        --v24;
      }

      while (v61 != v23);
    }
  }

  else
  {
    bzero(&v63, 0x800uLL);
    if (v9 >= 0x7D0)
    {
      v47 = 2000;
    }

    else
    {
      v47 = v9;
    }

    if (v9)
    {
      v48 = v10;
      v49 = v47;
      do
      {
        ++*(&v63 + *(v5 + (v48++ & v7)));
        --v49;
      }

      while (v49);
      v50 = 0;
      do
      {
        if (v50 >= 0x7D0)
        {
          v51 = *(v5 + ((v10 - 2000) & v7));
          --*(&v63 + v51);
          --v47;
        }

        v52 = v50 + 2000;
        if (v50 + 2000 < v9)
        {
          v53 = *(v5 + ((v10 + 2000) & v7));
          ++*(&v63 + v53);
          ++v47;
        }

        v54 = *(v5 + (v10 & v7));
        v55 = *(&v63 + v54);
        if (v55 <= 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = *(&v63 + v54);
        }

        if (v47 > 0xFF)
        {
          v57 = log2(v47);
        }

        else
        {
          v57 = dbl_1003EDA70[v47];
        }

        if (v55 > 0xFF)
        {
          v58 = log2(v56);
        }

        else
        {
          v58 = dbl_1003EDA70[v56];
        }

        v9 = v61;
        v59 = v57 - v58 + 0.029;
        if (v59 < 1.0)
        {
          v59 = v59 * 0.5 + 0.5;
        }

        v60 = v59;
        *v3++ = v60;
        ++v10;
        v50 = v52 - 1999;
      }

      while (v52 - 1999 != v61);
    }
  }
}

size_t sub_10017124C(unint64_t a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v32 = 0u;
  v33 = 0u;
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    v12 = a3 + v10;
    v13 = *(a3 + v10);
    if ((*(a3 + v10) & 0x80000000) == 0)
    {
      break;
    }

    v19 = v10 + 5;
    if (v10 + 5 > a4)
    {
      return 0;
    }

    v20 = *(a3 + v11);
    v21 = *(v12 + 2);
    v22 = *(v12 + 3);
    v23 = (v13 >> 5) & 3;
    if ((v23 - 2) < 2)
    {
      if (v19 >= a4)
      {
        return 0;
      }

      v24 = *(a3 + v19);
      if (v24 > 0xE0)
      {
        return 0;
      }

      v25 = *(a3 + v19) / 9u;
      BYTE10(v33) = v24 - 9 * v25;
      BYTE8(v33) = (((v24 - ((109 * v24) >> 8)) >> 1) + ((109 * v24) >> 8)) >> 5;
      BYTE9(v33) = v25 - 5 * ((52 * v25) >> 8);
      BYTE11(v33) = ~(-1 << SBYTE9(v33));
      BYTE12(v33) = ~(-1 << SBYTE8(v33));
      if ((BYTE9(v33) + BYTE10(v33)) > 4u)
      {
        goto LABEL_31;
      }

      v19 = v10 + 6;
LABEL_21:
      sub_1001450A0(&v32, a6);
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = (((v21 | (v20 << 8)) & 0xFFE0FFFF | ((v13 & 0x1F) << 16)) + 1);
    v10 = __rev16(v22) + 1 + v19;
    v27 = v10 > a4 || v9 + v26 > a2;
    if (v27 || sub_10036D184(&v32, a1, (a1 + v9), v26 + a1 + v9, a1 + a2, (a3 + v19), a4 - v19) != v26)
    {
      return 0;
    }

    v9 += v26;
LABEL_28:
    if (v10 >= a4)
    {
      return 0;
    }
  }

  if (*(a3 + v10))
  {
    v14 = v10 + 3;
    if (v13 > 2 || v14 > a4)
    {
      return 0;
    }

    v16 = (*(v12 + 2) | (*(a3 + v11) << 8)) + 1;
    v10 = v16 + v14;
    v17 = v16 + v9;
    if (v16 + v14 > a4 || v17 > a2)
    {
      return 0;
    }

    memcpy((a1 + v9), (a3 + v14), v16);
    v9 = v17;
    goto LABEL_28;
  }

  *a5 = v11;
LABEL_31:
  if ((v13 & 0x80) != 0)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_100171470(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 0;
  v4 = a3[1] - 1;
  v5 = v4 + a3[2] + a3[3];
  v43[2] = v4 + a3[2];
  v43[3] = v5;
  v6 = v5 + a3[4];
  v7 = v6 + a3[5];
  v43[4] = v6;
  v43[5] = v7;
  v43[0] = 17;
  v43[1] = v4;
  v8 = a2 + 17;
  do
  {
    v9 = *(v8 + v3);
    v10 = v43[v9];
    v44[v10] = v3 + 17;
    v43[v9] = v10 - 1;
    v11 = *(v8 + v3 - 1);
    v12 = v43[v11];
    v43[v11] = v12 - 1;
    v13 = *(v8 + v3 - 2);
    v14 = v43[v13];
    v44[v12] = v3 + 16;
    v44[v14] = v3 + 15;
    v43[v13] = v14 - 1;
    v15 = *(v8 + v3 - 3);
    v16 = v43[v15];
    v43[v15] = v16 - 1;
    v17 = *(v8 + v3 - 4);
    v18 = v43[v17];
    v44[v16] = v3 + 14;
    v44[v18] = v3 + 13;
    v43[v17] = v18 - 1;
    v19 = *(v8 + v3 - 5);
    v20 = v43[v19];
    v43[v19] = v20 - 1;
    v44[v20] = v3 + 12;
    v3 -= 6;
  }

  while (v3 != -18);
  if (v43[0])
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = result + 128;
    v24 = 2;
    v25 = 0x8000000000000000;
    for (i = 1; i != 6; ++i)
    {
      v27 = a3[i];
      if (a3[i])
      {
        v28 = -v24;
        v22 = v22;
        v29 = 0x1FuLL / v24;
        result = (v29 + 4) & 0x3C;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = 0;
          v32 = i | (v44[v22] << 16);
          v33 = __rbit64(v21);
          v34 = 4 * v33;
          v35 = 12 * v28 + 4 * v33;
          v36 = 8 * v28 + 4 * v33;
          v37 = v28 + v33;
          v38 = v23 - 4 * v24;
          do
          {
            v39 = vdupq_n_s64(v31);
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_1003772E0)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_10037C710)))).i32[1])
            {
              *(v38 + v36) = v32;
              *(v38 + v35) = v32;
            }

            v31 += 4;
            v38 += 16 * v28;
          }

          while (result != v31);
          ++v22;
          v21 += v25;
          --v27;
        }

        while (v27);
      }

      v24 *= 2;
      v25 >>= 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = vdupq_n_s32(v44[0] << 16);
    do
    {
      *(result + v41) = v42;
      v41 += 16;
    }

    while (v41 != 128);
  }

  return result;
}

uint64_t sub_100171708(char *__src, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 - 2);
  v9 = 16;
  do
  {
    v10 = *v8--;
    --v9;
  }

  while (v10 == -1);
  v11 = 0;
  v12 = 1;
  v13 = (1 << a2);
  if (v9 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v9;
  }

  if (v9 >= a2)
  {
    v15 = 1 << a2;
  }

  else
  {
    v15 = 1 << v9;
  }

  v16 = v14;
  v17 = 2;
  v18 = 0x8000000000000000;
  do
  {
    v19 = *(a4 + 2 * v12);
    if (*(a4 + 2 * v12))
    {
      v20 = v12 - 16;
      do
      {
        v20 = *(a3 + 2 * v20);
        v21 = &__src[4 * __rbit64(v11)];
        v22 = v15;
        do
        {
          *&v21[4 * (v22 - v17)] = v12 | (v20 << 16);
          v22 -= v17;
        }

        while (v22 > 0);
        v11 += v18;
        --v19;
      }

      while (v19);
    }

    v17 *= 2;
    v18 >>= 1;
  }

  while (v12++ < v16);
  if (v13 != v15)
  {
    do
    {
      memcpy(&__src[4 * v15], __src, 4 * v15);
      v24 = v13 == 2 * v15;
      v15 *= 2;
    }

    while (!v24);
  }

  if (v9 > a2)
  {
    v25 = 0;
    v26 = a2;
    v27 = v9;
    v28 = a2 + 1;
    v29 = 0x8000000000000000;
    v30 = 2;
    v31 = __src;
    v32 = 1 << a2;
    do
    {
      v33 = v26 + 1;
      if (*(a4 + 2 * (v26 + 1)))
      {
        v34 = v26 - 15;
        do
        {
          if (!v25)
          {
            v35 = v26 + 1;
            if (v26 <= 13)
            {
              v36 = v26;
              v35 = v28;
              v37 = 1 << (v33 - a2);
              while (1)
              {
                v38 = v37 - *(a4 + 2 + 2 * v36);
                if (v38 < 1)
                {
                  break;
                }

                v37 = 2 * v38;
                ++v35;
                if (++v36 >= 14)
                {
                  v35 = 15;
                  break;
                }
              }
            }

            v31 += 4 * v32;
            v32 = 1 << (v35 - a2);
            v13 = (v32 + v13);
            v39 = __rbit64(v11);
            v11 += 0x8000000000000000 >> (a2 - 1);
            *&__src[4 * v39] = v35 | ((((v31 - __src) >> 2) - v39) << 16);
          }

          v34 = *(a3 + 2 * v34);
          v40 = &v31[4 * __rbit64(v25)];
          v41 = v32;
          do
          {
            *&v40[4 * (v41 - v30)] = (v33 - a2) | (v34 << 16);
            v41 -= v30;
          }

          while (v41 > 0);
          v25 += v29;
          v42 = *(a4 + 2 * v33) - 1;
          *(a4 + 2 * v33) = v42;
        }

        while (v42);
      }

      v30 *= 2;
      v29 >>= 1;
      ++v28;
      ++v26;
    }

    while (v33 < v27);
  }

  return v13;
}

uint64_t sub_10017194C(int *__src, char a2, unsigned __int16 *a3, int a4)
{
  v5 = 1;
  v6 = (1 << a2);
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a3[1];
        v15 = *a3;
        if (v14 <= v15)
        {
          *__src = (v14 << 16) | 1;
          v16 = (*a3 << 16) | 1;
        }

        else
        {
          *__src = (v15 << 16) | 1;
          v16 = (a3[1] << 16) | 1;
        }

        __src[1] = v16;
        v5 = 2;
      }
    }

    else
    {
      *__src = *a3 << 16;
      v5 = 1;
    }
  }

  else
  {
    if (a4 == 2)
    {
      *__src = (*a3 << 16) | 1;
      __src[2] = (*a3 << 16) | 1;
      v17 = a3[2];
      v18 = a3[1];
      if (v17 > v18)
      {
        __src[1] = (v18 << 16) | 2;
        v19 = (a3[2] << 16) | 2;
LABEL_24:
        __src[3] = v19;
        v5 = 4;
        goto LABEL_28;
      }

      __src[1] = (v17 << 16) | 2;
      v13 = a3[1];
LABEL_23:
      v19 = (v13 << 16) | 2;
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      if (a4 != 3)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 2;
      do
      {
        v9 = v7++;
        v10 = a3[v9];
        v11 = v8;
        do
        {
          v12 = *(a3 + v11);
          if (v12 < v10)
          {
            *(a3 + v11) = v10;
            a3[v9] = v12;
            v10 = v12;
          }

          v11 += 2;
        }

        while (v11 != 8);
        v8 += 2;
      }

      while (v7 != 3);
      *__src = (*a3 << 16) | 2;
      __src[2] = (a3[1] << 16) | 2;
      __src[1] = (a3[2] << 16) | 2;
      v13 = a3[3];
      goto LABEL_23;
    }

    v20 = a3[3];
    v21 = a3[2];
    if (v20 < v21)
    {
      a3[3] = v21;
      a3[2] = v20;
    }

    *__src = (*a3 << 16) | 1;
    __src[1] = (a3[1] << 16) | 2;
    __src[2] = (*a3 << 16) | 1;
    __src[3] = (a3[2] << 16) | 3;
    __src[4] = (*a3 << 16) | 1;
    __src[5] = (a3[1] << 16) | 2;
    __src[6] = (*a3 << 16) | 1;
    __src[7] = (a3[3] << 16) | 3;
    v5 = 8;
  }

LABEL_28:
  while (v5 != v6)
  {
    memcpy(&__src[v5], __src, 4 * v5);
    v5 *= 2;
  }

  return v6;
}

uint64_t shim_check_tailspin()
{
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_1004B9FB8;
  v9 = qword_1004B9FB8;
  if (!qword_1004B9FB8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001724B8;
    v3[4] = &unk_100484AE8;
    v4 = &v6;
    v5 = v3;
    v10 = *off_100484AC8;
    v11 = 0;
    v7[3] = _sl_dlopen();
    qword_1004B9FB8 = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np("%s", v3[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return 1;
}

void sub_100171CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id shim_MGQSerialNumber()
{
  v0 = MGGetStringAnswer();

  return v0;
}

id shim_MGQOceanComputeCarrierID()
{
  v0 = MGCopyAnswer();

  return v0;
}

id shim_MGQOceanComputeCarrierSlot()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t shim_TMSetupTime()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v0 = dispatch_queue_create("com.apple.darwinit-time-sync", 0);
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v5 = v1;
  TMSetupTime();
  v2 = dispatch_time(0, 60000000000);
  dispatch_group_wait(v5, v2);
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_100171F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171F78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10036EEB0(a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t shim_register_config(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];

  v2 = register_config_from_buffer();
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036EF30(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return v2;
}

uint64_t shim_register_secureconfig_parameters(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  [v6 bytes];
  [v6 length];

  [v5 UTF8String];
  v7 = register_config_parameters();
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036EFA4(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return v7;
}

uint64_t shim_cryptex_lockdown()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = off_1004B9FC0;
  v8 = off_1004B9FC0;
  if (!off_1004B9FC0)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100172550;
    v4[3] = &unk_100484B10;
    v4[4] = &v5;
    sub_100172550(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    sub_10036F018();
    v3 = v2;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

BOOL shim_validateImage4Ticket()
{
  v8 = -1;
  image4_environment_new();
  image4_trust_new();
  image4_trust_set_payload();
  image4_trust_record_property_integer();
  image4_trust_record_property_data();
  image4_trust_evaluate();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10036F03C(&v8, v0, v1, v2, v3, v4, v5, v6);
  }

  image4_environment_destroy();
  image4_trust_destroy();
  return v8 == 0;
}

uint64_t sub_1001724B8(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004B9FB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100172550(uint64_t a1)
{
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = qword_1004B9FC8;
  v11 = qword_1004B9FC8;
  if (!qword_1004B9FC8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001726EC;
    v5[4] = &unk_100484AE8;
    v6 = &v8;
    v7 = v5;
    v12 = *off_100484B30;
    v13 = 0;
    v9[3] = _sl_dlopen();
    qword_1004B9FC8 = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  v3 = v5[0];
  if (!v2)
  {
    v3 = abort_report_np("%s", v5[0]);
    __break(1u);
    goto LABEL_7;
  }

  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "cryptex_lockdown");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1004B9FC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1001726CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001726EC(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1004B9FC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100172784(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t sub_100172844@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100172944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  sub_100013E54(a1, &v8 - v5, &qword_1004A9CF8, &qword_10037BF90);
  return (*(**a2 + 136))(v6);
}

uint64_t CryptexCacheDelegate.Entry.extractionPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A9CF8, &qword_10037BF90);
}

uint64_t CryptexCacheDelegate.Entry.extractionPath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100172AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CryptexCacheDelegate.Entry.__allocating_init(at:lock:archivePath:removeArchiveOnDeinit:aeaDecryptionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v8 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v11 + v12, 1, 1, v13);
  v16 = *(v14 + 32);
  v16(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, a1, v13);
  *(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = a2;
  v16(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, a3, v13);
  *(v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v20;
  sub_100172F4C(v21, v11 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v15(v10, 1, 1, v13);
  v17 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(v10, v11 + v17);
  swift_endAccess();
  return v11;
}

uint64_t CryptexCacheDelegate.Entry.init(at:lock:archivePath:removeArchiveOnDeinit:aeaDecryptionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v9 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v5 + v12, 1, 1, v13);
  v16 = *(v14 + 32);
  v16(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, a1, v13);
  *(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = a2;
  v16(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, a3, v13);
  *(v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v20;
  sub_100172F4C(v21, v5 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v15(v11, 1, 1, v13);
  v17 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();
  sub_100172AD8(v11, v5 + v17);
  swift_endAccess();
  return v5;
}

uint64_t sub_100172F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AA048, &unk_1003F2F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CryptexCacheDelegate.Entry.copyObject(fromPath:toPath:)()
{
  v0 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v1 = String._bridgeToObjectiveC()();

  FilePath.string.getter();
  v2 = String._bridgeToObjectiveC()();

  v13 = 0;
  v3 = [v0 copyItemAtPath:v1 toPath:v2 error:&v13];

  v4 = v13;
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static CryptexCacheDelegate.logger);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Caught copyItem error %@.", v10, 0xCu);
      sub_100013F2C(v11, &qword_1004AA050, &unk_1003F2F10);
    }

    else
    {
    }
  }
}

id CryptexCacheDelegate.Entry.fetchTicketandGinfPath()(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  type metadata accessor for CryptexManager();
  result = static CryptexManager.setUpExtractedPath()();
  if (!v2)
  {
    v23 = a2;
    v24 = v5;
    v17 = *(v5 + 16);
    v25 = 0;
    v17(v13, v15, v4);
    FilePath.appending(_:)();
    v17(v13, v15, v4);
    FilePath.appending(_:)();
    v18 = v27;
    v19 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
    v17(v10, (v27 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path), v4);
    FilePath.appending(_:)();
    v17(v26, (v18 + v19), v4);
    FilePath.appending(_:)();
    v20 = *(*v18 + 160);
    v20(v13, v28);
    v20(v10, v23);
    v21 = *(v24 + 8);
    v21(v10, v4);
    v21(v13, v4);
    return (v21)(v15, v4);
  }

  return result;
}

Swift::Void __swiftcall CryptexCacheDelegate.Entry.deleteTicketAndginf()()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v34[-v8];
  __chkstk_darwin(v7);
  v11 = &v34[-v10];
  v12 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v13 = *(v3 + 16);
  v13(v9, v1 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v2);
  FilePath.appending(_:)();
  v13(v9, v1 + v12, v2);
  FilePath.appending(_:)();
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  FilePath.string.getter();
  v16 = String._bridgeToObjectiveC()();

  v35 = 0;
  LODWORD(v13) = [v15 removeItemAtPath:v16 error:&v35];

  if (v13)
  {
    v17 = v35;
  }

  else
  {
    v18 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, static CryptexCacheDelegate.logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No ticket to delete", v22, 2u);
    }
  }

  v23 = [v14 defaultManager];
  FilePath.string.getter();
  v24 = String._bridgeToObjectiveC()();

  v35 = 0;
  v25 = [v23 removeItemAtPath:v24 error:&v35];

  if (v25)
  {
    v26 = *(v3 + 8);
    v27 = v35;
    v26(v6, v2);
    v26(v11, v2);
  }

  else
  {
    v28 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000270B4(v29, static CryptexCacheDelegate.logger);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No ginf to delete", v32, 2u);
    }

    v33 = *(v3 + 8);
    v33(v6, v2);
    v33(v11, v2);
  }
}

uint64_t CryptexCacheDelegate.Entry.ingestTicketandGINF(ticket:ginfPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v157 = a2;
  v147 = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v161 = *(v4 - 8);
  v162 = v4;
  __chkstk_darwin(v4);
  v152 = v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v7 = __chkstk_darwin(v6 - 8);
  v138 = v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v143 = v136 - v10;
  v11 = __chkstk_darwin(v9);
  v149 = v136 - v12;
  __chkstk_darwin(v11);
  v153 = (v136 - v13);
  v14 = type metadata accessor for FilePath();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v142 = v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v141 = v136 - v19;
  v20 = __chkstk_darwin(v18);
  v156 = v136 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v136 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = v136 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v136 - v29;
  __chkstk_darwin(v28);
  v32 = v136 - v31;
  v33 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v159 = v15;
  v34 = *(v15 + 16);
  v34(v30, v3 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v14);
  v154 = v32;
  FilePath.appending(_:)();
  v35 = v3 + v33;
  v36 = v27;
  v37 = v15 + 16;
  v38 = v34;
  v39 = v37;
  v34(v30, v35, v14);
  FilePath.appending(_:)();
  if (qword_1004A9DD8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  v41 = sub_1000270B4(v40, static CryptexCacheDelegate.logger);
  v38(v24, v157, v14);
  v42 = v156;
  v38(v156, v36, v14);
  v140 = v41;
  v43 = Logger.logObject.getter();
  LODWORD(v146) = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v43, v146);
  v45 = v24;
  v155 = v36;
  v158 = v39;
  v160 = v38;
  v148 = v30;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v163 = v145;
    *v46 = 136315394;
    sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v144 = v43;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    v50 = *(v159 + 8);
    v50(v45, v14);
    v51 = sub_1000026C0(v47, v49, &v163);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = v46;
    v53 = v42;
    v54 = v161;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = v53;
    v59 = v14;
    v151 = v50;
    v50(v58, v14);
    v38 = v160;
    v60 = sub_1000026C0(v55, v57, &v163);

    *(v52 + 14) = v60;
    v61 = v144;
    _os_log_impl(&_mh_execute_header, v144, v146, "Copying ginf ticket from %s to %s", v52, 0x16u);
    swift_arrayDestroy();

    v30 = v148;
    v62 = v152;
  }

  else
  {

    v59 = v14;
    v63 = *(v159 + 8);
    v63(v42, v59);
    v151 = v63;
    v63(v24, v59);
    v54 = v161;
    v62 = v152;
  }

  v139 = objc_opt_self();
  v146 = [v139 defaultManager];
  v38(v30, v157, v59);
  v65 = *(v54 + 104);
  v64 = v54 + 104;
  LODWORD(v157) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v156 = v65;
  (v65)(v62);
  v66 = v153;
  sub_1001746A8(v30, v62, v153);
  v67 = type metadata accessor for URL();
  v68 = v59;
  v69 = *(v67 - 8);
  v70 = v69 + 6;
  isa = v69[6].isa;
  if (isa(v66, 1, v67) == 1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  URL._bridgeToObjectiveC()(v72);
  v145 = v73;
  v75 = v69[1].isa;
  v74 = v69 + 1;
  v153 = v75;
  v75(v66, v67);
  v150 = v68;
  v160(v30, v155, v68);
  v161 = v64;
  (v156)(v62, v157, v162);
  v76 = v149;
  sub_1001746A8(v30, v62, v149);
  v144 = v70;
  v137 = isa;
  if (isa(v76, 1, v67) == 1)
  {
    goto LABEL_19;
  }

  URL._bridgeToObjectiveC()(v77);
  v79 = v78;
  v153(v76, v67);
  v163 = 0;
  v80 = v145;
  v81 = v146;
  v82 = [v146 copyItemAtURL:v145 toURL:v79 error:&v163];

  v83 = v163;
  if (!v82)
  {
LABEL_17:
    v131 = v150;
    v132 = v83;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v133 = v131;
    v134 = v131;
    v135 = v151;
    v151(v155, v133);
    return v135(v154, v134);
  }

  v84 = v74;
  v85 = v141;
  v86 = v150;
  v87 = v160;
  v160(v141, v147, v150);
  v88 = v142;
  v87(v142, v154, v86);
  v89 = v83;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  v92 = os_log_type_enabled(v90, v91);
  v136[2] = v84;
  if (v92)
  {
    v93 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v163 = v149;
    *v93 = 136315394;
    sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v146 = v90;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v67;
    v97 = v96;
    LODWORD(v145) = v91;
    v98 = v86;
    v99 = v86;
    v100 = v151;
    v151(v85, v98);
    v101 = sub_1000026C0(v94, v97, &v163);

    *(v93 + 4) = v101;
    *(v93 + 12) = 2080;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v104 = v103;
    v105 = v88;
    v106 = v95;
    v100(v105, v99);
    v107 = sub_1000026C0(v102, v104, &v163);

    *(v93 + 14) = v107;
    v108 = v146;
    _os_log_impl(&_mh_execute_header, v146, v145, "Copying personalized ticket from %s to %s", v93, 0x16u);
    swift_arrayDestroy();

    v109 = v143;
  }

  else
  {

    v110 = v86;
    v99 = v86;
    v111 = v151;
    v151(v88, v110);
    v111(v85, v99);
    v109 = v143;
    v106 = v67;
  }

  v149 = [v139 defaultManager];
  v112 = v148;
  v113 = v99;
  v114 = v99;
  v115 = v160;
  v160(v148, v147, v113);
  v116 = v152;
  (v156)(v152, v157, v162);
  sub_1001746A8(v112, v116, v109);
  v117 = v137;
  result = v137(v109, 1, v106);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL._bridgeToObjectiveC()(v119);
    v147 = v120;
    v153(v109, v106);
    v115(v112, v154, v114);
    (v156)(v116, v157, v162);
    v121 = v138;
    sub_1001746A8(v112, v116, v138);
    result = v117(v121, 1, v106);
    if (result != 1)
    {
      URL._bridgeToObjectiveC()(v122);
      v124 = v123;
      v153(v121, v106);
      v163 = 0;
      v125 = v149;
      v126 = v147;
      v127 = [v149 copyItemAtURL:v147 toURL:v124 error:&v163];

      v83 = v163;
      if (v127)
      {
        v128 = v163;
        v130 = v150;
        v129 = v151;
        v151(v155, v150);
        return v129(v154, v130);
      }

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001746A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

id CryptexCacheDelegate.Entry.extract()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v17 - v13;
  (*(*v1 + 128))(v12);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_100013F2C(v14, &qword_1004A9CF8, &qword_10037BF90);
    type metadata accessor for CryptexManager();
    result = static CryptexManager.setUpExtractedPath()();
    if (v2)
    {
      return result;
    }

    (*(v5 + 16))(v11, v7, v4);
    v18 = *(v5 + 56);
    v18(v11, 0, 1, v4);
    v16 = *(*v1 + 136);
    v17[0] = *v1 + 136;
    v17[1] = v16;
    v16(v11);
    FilePath.extract(to:using:)(v7, v1 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
    v14 = v7;
  }

  return (*(v5 + 32))(a1, v14, v4);
}

void CryptexCacheDelegate.Entry.cleanup()()
{
  FilePath.remove()();
  if (v0)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, static Logger.caching);

    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v4 = 136315394;
      type metadata accessor for FilePath();
      sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = sub_1000026C0(v7, v8, &v11);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v10;
      *v5 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove %s from cache: %@", v4, 0x16u);
      sub_100013F2C(v5, &qword_1004AA050, &unk_1003F2F10);

      sub_100003C3C(v6);
    }

    else
    {
    }
  }
}

uint64_t CryptexCacheDelegate.Entry.deinit()
{
  if (*(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) == 1)
  {
    CryptexCacheDelegate.Entry.cleanup()();
  }

  v1 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v2);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters, &qword_1004AA048, &unk_1003F2F00);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, &qword_1004A9CF8, &qword_10037BF90);
  return v0;
}

uint64_t CryptexCacheDelegate.Entry.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) == 1)
  {
    CryptexCacheDelegate.Entry.cleanup()();
  }

  v1 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path;
  v2 = type metadata accessor for FilePath();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v2);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters, &qword_1004AA048, &unk_1003F2F00);
  sub_100013F2C(v0 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, &qword_1004A9CF8, &qword_10037BF90);

  return swift_deallocClassInstance();
}

uint64_t CryptexCacheDelegate.AccessParameter.init(digest:alternateKnoxCDNHost:aeaDecryptionParameters:maxActiveNetworkTasks:chunkSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v15 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  result = sub_100172F4C(a4, a9 + v15[6]);
  v17 = a9 + v15[7];
  *v17 = a5;
  v17[8] = a6 & 1;
  v18 = a9 + v15[8];
  *v18 = a7;
  v18[8] = a8 & 1;
  return result;
}

Swift::Int DInitFeatureFlagsError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t CryptexCacheDelegate.handleCacheMiss(forCacheEntryDirectory:lock:downloadInformation:downloadedFile:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a4;
  v6[15] = a6;
  v6[12] = a2;
  v6[13] = a3;
  v6[11] = a1;
  type metadata accessor for CacheDownloadInformation(0);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  v6[22] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048, &unk_1003F2F00);
  v6[23] = swift_task_alloc();
  v8 = type metadata accessor for FilePath();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_100175528, 0, 0);
}

uint64_t sub_100175528()
{
  v80 = v0;
  v1 = *(*(v0 + 200) + 16);
  v1(*(v0 + 232), *(v0 + 88), *(v0 + 192));
  FilePath.appending(_:)();
  FilePath.readArchiveMagic()();
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v3 = [objc_opt_self() defaultManager];
    FilePath.string.getter();
    v4 = String._bridgeToObjectiveC()();

    FilePath.string.getter();
    v5 = String._bridgeToObjectiveC()();

    *(v0 + 80) = 0;
    v6 = [v3 moveItemAtPath:v4 toPath:v5 error:v0 + 80];

    v7 = *(v0 + 240);
    if (v6)
    {
      v8 = v1;
      v74 = *(v0 + 80);
      v9 = *(v0 + 224);
      v10 = *(v0 + 232);
      v11 = *(v0 + 192);
      v12 = *(v0 + 200);
      v13 = *(v0 + 184);
      v76 = *(v0 + 176);
      v14 = *(v0 + 120);
      v72 = *(v0 + 96);
      v8(v10, *(v0 + 88), v11);
      v15 = *(v12 + 32);
      v15(v9, v7, v11);
      v16 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
      sub_100013E54(v14 + *(v16 + 24), v13, &qword_1004AA048, &unk_1003F2F00);
      type metadata accessor for CryptexCacheDelegate.Entry(0);
      v17 = swift_allocObject();
      v18 = *(v12 + 56);
      v18(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v11);
      v15(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v10, v11);
      *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v72;
      v15(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v9, v11);
      *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = 0;
      sub_100172F4C(v13, v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
      v18(v76, 1, 1, v11);
      v19 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
      swift_beginAccess();
      v20 = v74;

      v21 = v17 + v19;
      v22 = v76;
LABEL_14:
      sub_100172AD8(v22, v21);
      swift_endAccess();

      v59 = *(v0 + 8);

      return v59(v17);
    }

    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 80);
    _convertNSErrorToError(_:)();

    goto LABEL_20;
  }

  v23 = **(v0 + 120);
  if (!v23)
  {
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 104);
    v32 = type metadata accessor for Logger();
    sub_1000270B4(v32, static CryptexCacheDelegate.logger);
    sub_1001794E4(v31, v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 144);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136315138;
      type metadata accessor for URL();
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100179548(v36);
      v42 = sub_1000026C0(v39, v41, &v79);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%s] No digest found when digest is required.", v37, 0xCu);
      sub_100003C3C(v38);
    }

    else
    {

      sub_100179548(v36);
    }

    v7 = *(v0 + 240);
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    sub_1001795A4();
    swift_allocError();
    *v66 = 1;
LABEL_20:
    swift_willThrow();
    (*(v27 + 8))(v7, v28);
    goto LABEL_21;
  }

  v24 = *(v0 + 240);
  v25 = *(v0 + 168);
  *(v0 + 64) = v23;
  v77 = v1;
  v26 = v2;

  sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
  sub_10000E720(&qword_1004AA068, &qword_1004A71E0, &qword_100376D60, &protocol conformance descriptor for <A> [A]);
  SymmetricKey.init<A>(data:)();
  FilePath.wrapFileContentsInAppleEncryptedArchive(at:using:permissions:compression:)(v24, v25, 384, v26 & 1);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v77(*(v0 + 232), *(v0 + 88), *(v0 + 192));
  FilePath.appending(_:)();
  v43 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v44 = String._bridgeToObjectiveC()();

  FilePath.string.getter();
  v45 = String._bridgeToObjectiveC()();

  *(v0 + 72) = 0;
  v46 = [v43 moveItemAtPath:v44 toPath:v45 error:v0 + 72];

  v47 = *(v0 + 72);
  v48 = *(v0 + 240);
  if (v46)
  {
    v49 = v77;
    v68 = *(v0 + 232);
    v69 = *(v0 + 224);
    v50 = *(v0 + 192);
    v51 = *(v0 + 200);
    v78 = *(v0 + 176);
    v70 = *(v0 + 216);
    v71 = *(v0 + 120);
    v52 = *(v0 + 88);
    v73 = *(v0 + 184);
    v75 = *(v0 + 96);
    v53 = v51[1];
    v54 = v47;
    v53(v48, v50);
    v49(v68, v52, v50);
    v55 = v51[4];
    v55(v69, v70, v50);
    v56 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
    sub_100013E54(v71 + *(v56 + 24), v73, &qword_1004AA048, &unk_1003F2F00);
    type metadata accessor for CryptexCacheDelegate.Entry(0);
    v17 = swift_allocObject();
    v57 = v51[7];
    v57(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v50);
    v55(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v68, v50);
    *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v75;
    v55(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v69, v50);
    *(v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = 1;
    sub_100172F4C(v73, v17 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
    v57(v78, 1, 1, v50);
    v58 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
    swift_beginAccess();

    v21 = v17 + v58;
    v22 = v78;
    goto LABEL_14;
  }

  v61 = *(v0 + 216);
  v63 = *(v0 + 192);
  v62 = *(v0 + 200);
  v64 = v47;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v65 = *(v62 + 8);
  v65(v61, v63);
  v65(v48, v63);
LABEL_21:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t CryptexCacheDelegate.handleCacheHit(forCacheEntryDirectory:lock:downloadInformation:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for SHA256Digest();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_1000039E8(&qword_1004AA048, &unk_1003F2F00);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  type metadata accessor for CacheDownloadInformation(0);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v8 = type metadata accessor for FilePath();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100176774, 0, 0);
}

uint64_t sub_100176774()
{
  v97 = v0;
  v1 = *(v0[24] + 16);
  (v1)(v0[29], v0[7], v0[23]);
  FilePath.appending(_:)();
  v2 = FilePath.exists()();
  if (v3)
  {

LABEL_8:
    if (qword_1004A9DD8 != -1)
    {
      swift_once();
    }

    v6 = v0[22];
    v7 = v0[9];
    v8 = type metadata accessor for Logger();
    sub_1000270B4(v8, static CryptexCacheDelegate.logger);
    sub_1001794E4(v7, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[22];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v96[0] = v14;
      *v13 = 136315138;
      type metadata accessor for URL();
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_100179548(v12);
      v18 = sub_1000026C0(v15, v17, v96);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] Cached archive missing", v13, 0xCu);
      sub_100003C3C(v14);
    }

    else
    {

      sub_100179548(v12);
    }

    v19 = v0[30];
    v21 = v0[23];
    v20 = v0[24];
    sub_100179660();
    swift_allocError();
    *v22 = 2;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
    goto LABEL_14;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = URL.scheme.getter();
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v4 != 2020568683 || v5 != 0xE400000000000000)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_21;
    }

LABEL_18:
    v26 = v0[19];
    v27 = v0[10];
    v28 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
    sub_100013E54(v27 + *(v28 + 24), v26, &qword_1004AA048, &unk_1003F2F00);
    v29 = type metadata accessor for AEADecryptionParameters(0);
    LODWORD(v27) = (*(*(v29 - 8) + 48))(v26, 1, v29);
    sub_100013F2C(v26, &qword_1004AA048, &unk_1003F2F00);
    if (v27 != 1)
    {
      goto LABEL_21;
    }

    v30 = v0[10];
    (v1)(v0[29], v0[7], v0[23]);
    FilePath.appending(_:)();
    v31 = *v30;
    if (v31)
    {
      v32 = v0[27];
      v33 = v0[17];
      v0[5] = v31;

      sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
      sub_10000E720(&qword_1004AA068, &qword_1004A71E0, &qword_100376D60, &protocol conformance descriptor for <A> [A]);
      SymmetricKey.init<A>(data:)();
      FilePath.extractAppleEncryptedArchive(to:using:expectingArchiveIdentifier:mode:)(v32, v33, 0, 0xF000000000000000, 0x180u);
      (*(v0[16] + 8))(v0[17], v0[15]);
      v58 = FilePath.fileExists()();
      if (v59)
      {

LABEL_36:
        v60 = v0[30];
        v61 = v0[27];
        v63 = v0[23];
        v62 = v0[24];
        sub_1001795A4();
        swift_allocError();
        *v68 = 0;
        goto LABEL_37;
      }

      if (!v58)
      {
        goto LABEL_36;
      }

      v66 = v0[26];
      v67 = v0[14];
      (v1)(v66, v0[27], v0[23]);
      SHA256Digest.init(_:)(v66, v67);
      v71 = v0[13];
      v70 = v0[14];
      v72 = v0[12];
      v0[6] = v31;
      sub_1001795F8(&qword_1004AA078, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      sub_10000E720(&qword_1004A71E8, &qword_1004A71E0, &qword_100376D60, &protocol conformance descriptor for <A> [A]);
      v73 = static Digest.== infix<A>(_:_:)();
      (*(v71 + 8))(v70, v72);
      if (v73)
      {
        v74 = v0[27];
        v75 = v0[28];
        v76 = v0[23];
        v77 = v0[24];
        (*(v77 + 8))(v0[30], v76);
        v95 = *(v77 + 32);
        v95(v75, v74, v76);
        v94 = 1;
        goto LABEL_22;
      }

      if (qword_1004A9DD8 != -1)
      {
        swift_once();
      }

      v78 = v0[21];
      v79 = v0[9];
      v80 = type metadata accessor for Logger();
      sub_1000270B4(v80, static CryptexCacheDelegate.logger);
      sub_1001794E4(v79, v78);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v0[21];
      if (v83)
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v96[0] = v86;
        *v85 = 136315138;
        type metadata accessor for URL();
        sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v87 = dispatch thunk of CustomStringConvertible.description.getter();
        v89 = v88;
        sub_100179548(v84);
        v90 = sub_1000026C0(v87, v89, v96);

        *(v85 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v81, v82, "[%s] Cached file failed sha validation!", v85, 0xCu);
        sub_100003C3C(v86);
      }

      else
      {

        sub_100179548(v84);
      }

      v60 = v0[30];
      v61 = v0[27];
      v63 = v0[23];
      v62 = v0[24];
      sub_100179660();
      swift_allocError();
      v65 = 2;
    }

    else
    {
      if (qword_1004A9DD8 != -1)
      {
        swift_once();
      }

      v45 = v0[20];
      v46 = v0[9];
      v47 = type metadata accessor for Logger();
      sub_1000270B4(v47, static CryptexCacheDelegate.logger);
      sub_1001794E4(v46, v45);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v0[20];
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v96[0] = v53;
        *v52 = 136315138;
        type metadata accessor for URL();
        sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        sub_100179548(v51);
        v57 = sub_1000026C0(v54, v56, v96);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "[%s] No digest found when digest is required.", v52, 0xCu);
        sub_100003C3C(v53);
      }

      else
      {

        sub_100179548(v51);
      }

      v60 = v0[30];
      v61 = v0[27];
      v63 = v0[23];
      v62 = v0[24];
      sub_1001795A4();
      swift_allocError();
      v65 = 1;
    }

    *v64 = v65;
LABEL_37:
    swift_willThrow();
    v69 = *(v62 + 8);
    v69(v61, v63);
    v69(v60, v63);
LABEL_14:

    v23 = v0[1];

    return v23();
  }

LABEL_21:
  v95 = *(v0[24] + 32);
  v95(v0[28], v0[30], v0[23]);
  v94 = 0;
LABEL_22:
  v34 = v0[28];
  v35 = v0[25];
  v37 = v0[23];
  v36 = v0[24];
  v38 = v0[18];
  v91 = v0[29];
  v39 = v0[10];
  v92 = v0[8];
  v93 = v0[11];
  v1();
  v95(v35, v34, v37);
  v40 = type metadata accessor for CryptexCacheDelegate.AccessParameter(0);
  sub_100013E54(v39 + *(v40 + 24), v38, &qword_1004AA048, &unk_1003F2F00);
  type metadata accessor for CryptexCacheDelegate.Entry(0);
  v41 = swift_allocObject();
  v42 = *(v36 + 56);
  v42(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath, 1, 1, v37);
  v95(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_path, v91, v37);
  *(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_lock) = v92;
  v95(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_archivePath, v35, v37);
  *(v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_removeArchiveOnDeInit) = v94;
  sub_100172F4C(v38, v41 + OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_aeaDecryptionParameters);
  v42(v93, 1, 1, v37);
  v43 = OBJC_IVAR____TtCC10DarwinInit20CryptexCacheDelegate5Entry_extractionPath;
  swift_beginAccess();

  sub_100172AD8(v93, v41 + v43);
  swift_endAccess();

  v44 = v0[1];

  return v44(v41);
}

uint64_t CryptexCacheDelegate.handleDownload(from:to:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for URL();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for SHA256Digest();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for FilePath();
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001776BC, 0, 0);
}

uint64_t sub_1001776BC()
{
  v1 = URL.scheme.getter();
  if (!v2)
  {
LABEL_7:
    v5 = *(v0 + 200);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v7 + 16);
    *(v0 + 224) = v11;
    *(v0 + 232) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v12 = *v8;
    v13 = *(v8 + 8);
    v14 = v9 + *(type metadata accessor for CryptexCacheDelegate.AccessParameter(0) + 28);
    v15 = *v14;
    v16 = *(v14 + 8);
    *(v0 + 16) = xmmword_1003F2EE0;
    *(v0 + 32) = xmmword_1003F2EF0;
    *(v0 + 48) = 1;
    v17 = swift_task_alloc();
    *(v0 + 240) = v17;
    *v17 = v0;
    v17[1] = sub_100177C34;
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 72);

    return static Network.downloadItem(at:to:attempts:backoff:background:maxActiveTasks:chunkSize:)(v18, v20, v19, v12, v0 + 16, v13, v15, v16);
  }

  if (v1 == 2020568683 && v2 == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 104);
  (*(v24 + 16))(v22, *(v0 + 80), v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v27 = *(v25 + 8);
  v26 = *(v25 + 16);
  v28 = swift_task_alloc();
  *(v0 + 216) = v28;
  *v28 = v0;
  v28[1] = sub_100177968;
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v33 = *(v0 + 72);

  return static KnoxClientWrapper.downloadRaw(from:to:configuration:authentication:alternateCDNHost:)(v29, v33, v30, v31, v32, v27, v26);
}

uint64_t sub_100177968()
{
  v1 = *(*v0 + 200);

  sub_100013F2C(v1, &qword_1004A9CF8, &qword_10037BF90);

  return _swift_task_switch(sub_100177A90, 0, 0);
}

uint64_t sub_100177A90()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100013F2C(v1, &qword_1004A9CF8, &qword_10037BF90);
    sub_1001795A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100177C34()
{
  v1 = *(*v0 + 200);

  sub_100013F2C(v1, &qword_1004A9CF8, &qword_10037BF90);

  return _swift_task_switch(sub_100177D5C, 0, 0);
}

uint64_t sub_100177D5C()
{
  v38 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100013F2C(v1, &qword_1004A9CF8, &qword_10037BF90);
    sub_1001795A4();
    swift_allocError();
    *v4 = 2;
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v3 + 32);
    v6(*(v0 + 184), v1, v2);
    v7 = *v5;
    if (!*v5 || (v8 = *(v0 + 176), v9 = *(v0 + 152), (*(v0 + 224))(v8, *(v0 + 184), *(v0 + 160)), SHA256Digest.init(_:)(v8, v9), v11 = *(v0 + 144), v10 = *(v0 + 152), v12 = *(v0 + 136), *(v0 + 56) = v7, sub_1000039E8(&qword_1004A71E0, &qword_100376D60), sub_1001795F8(&qword_1004AA078, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest), sub_10000E720(&qword_1004A71E8, &qword_1004A71E0, &qword_100376D60, &protocol conformance descriptor for <A> [A]), v13 = static Digest.== infix<A>(_:_:)(), (*(v11 + 8))(v10, v12), (v13 & 1) != 0))
    {
      v6(*(v0 + 64), *(v0 + 184), *(v0 + 160));

      v14 = *(v0 + 8);
      goto LABEL_13;
    }

    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = *(v0 + 72);
    v19 = type metadata accessor for Logger();
    sub_1000270B4(v19, static Logger.caching);
    (*(v16 + 16))(v15, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      sub_1001795F8(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_1000026C0(v28, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Downloaded file failed sha validation!", v26, 0xCu);
      sub_100003C3C(v27);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    sub_1001795A4();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();
    (*(v34 + 8))(v32, v33);
  }

  v14 = *(v0 + 8);
LABEL_13:

  return v14();
}

double default argument 4 of static Network.post<A>(_:to:attempts:timeout:backoff:)@<D0>(uint64_t a1@<X8>)
{
  result = -9.63067605e-257;
  *a1 = xmmword_1003F2EE0;
  *(a1 + 16) = xmmword_1003F2EF0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t CryptexCacheDelegate.entryPurge(from:)(uint64_t a1)
{
  v34 = type metadata accessor for FilePath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  FilePath.string.getter();
  v6 = String._bridgeToObjectiveC()();

  v36 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v36];

  v8 = v36;
  if (v7)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v8;
    v11 = v9;

    v35 = *(v9 + 16);
    if (v35)
    {
      v14 = 0;
      v32 = (v3 + 8);
      v15 = (v9 + 40);
      *&v13 = 136315138;
      v29 = v13;
      v16 = v31;
      v30 = a1;
      v33 = v11;
      do
      {
        if (v14 >= *(v11 + 16))
        {
          __break(1u);
        }

        v17 = *(v15 - 1);
        v18 = *v15;
        v36 = v17;
        v37 = v18;
        __chkstk_darwin(v12);
        *(&v29 - 2) = &v36;

        if (sub_100012A04(sub_100013DA8, (&v29 - 2), &off_100484B98))
        {
        }

        else
        {
          if (qword_1004A9F70 != -1)
          {
            swift_once();
          }

          v19 = type metadata accessor for Logger();
          sub_1000270B4(v19, static Logger.caching);

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v36 = v23;
            *v22 = v29;
            *(v22 + 4) = sub_1000026C0(v17, v18, &v36);
            _os_log_impl(&_mh_execute_header, v20, v21, "%s is not a permitted file, removing it from the cache", v22, 0xCu);
            sub_100003C3C(v23);
            v16 = v31;
          }

          v36 = FilePath.string.getter();
          v37 = v24;

          v25._countAndFlagsBits = 47;
          v25._object = 0xE100000000000000;
          String.append(_:)(v25);

          v26._countAndFlagsBits = v17;
          v26._object = v18;
          String.append(_:)(v26);

          FilePath.init(_:)();
          sub_10017970C(v16);
          if (v1)
          {
            (*v32)(v16, v34);
          }

          v12 = (*v32)(v16, v34);
          v11 = v33;
        }

        ++v14;
        v15 += 2;
      }

      while (v35 != v14);
    }
  }

  else
  {
    v27 = v36;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t sub_1001786BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 16) = a1;
  v17 = (*(**v7 + 80) + **(**v7 + 80));
  v15 = swift_task_alloc();
  *(v8 + 24) = v15;
  *v15 = v8;
  v15[1] = sub_10017B0C8;

  return v17(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_100178820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 16) = a1;
  v15 = (*(**v6 + 88) + **(**v6 + 88));
  v13 = swift_task_alloc();
  *(v7 + 24) = v13;
  *v13 = v7;
  v13[1] = sub_100178978;

  return v15(a2, a3, a4, a5, a6);
}

uint64_t sub_100178978(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100178A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(**v6 + 96) + **(**v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100001FE0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100178C38(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000279B4(v3, a2);
  v4 = sub_1000270B4(v3, a2);
  if (qword_1004A9F68 != -1)
  {
    swift_once();
  }

  v5 = sub_1000270B4(v3, static Logger.cryptexcache);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_100178D6C()
{
  v0 = type metadata accessor for FilePath();
  sub_1000279B4(v0, static Cache<>.defaultCacheDirectoryPath);
  sub_1000270B4(v0, static Cache<>.defaultCacheDirectoryPath);
  return FilePath.init(stringLiteral:)();
}

uint64_t sub_100178E08(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_1000270B4(v5, a3);
}

uint64_t sub_100178EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000270B4(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t default argument 0 of FirewallInstaller.init(computer:interfaceFinder:)@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static RealComputer.shared;
  a1[3] = type metadata accessor for RealComputer();
  a1[4] = &protocol witness table for RealComputer;
  *a1 = v2;
}

uint64_t default argument 1 of FirewallInstaller.init(computer:interfaceFinder:)()
{
  type metadata accessor for InterfaceFinder();

  return swift_allocObject();
}

uint64_t default argument 2 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001795F8(&qword_1004A7A70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78, &qword_1003F2F40);
  sub_10000E720(&qword_1004A7A80, &qword_1004A7A78, &qword_1003F2F40, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

double default argument 2 of Cache.access(entryBackedByResourceAt:authentication:downloadConfiguration:delegateParameter:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *&result = 4;
  *(a1 + 32) = xmmword_1003761F0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1001791D0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

_DWORD *sub_1001792B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1001792D8(uint64_t a1)
{
  v2 = sub_1001795F8(&qword_1004AA3C8, type metadata accessor for URLResourceKey, &unk_1003F33E8);
  v3 = sub_1001795F8(&qword_1004AA3D0, type metadata accessor for URLResourceKey, &unk_1003F3388);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100179394(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1001793E0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100179440(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100179450(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1001794E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheDownloadInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100179548(uint64_t a1)
{
  v2 = type metadata accessor for CacheDownloadInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001795A4()
{
  result = qword_1004AA060;
  if (!qword_1004AA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA060);
  }

  return result;
}

uint64_t sub_1001795F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100179660()
{
  result = qword_1004AA070;
  if (!qword_1004AA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA070);
  }

  return result;
}

uint64_t sub_1001796B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10017970C(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.remove()();
  if (v6)
  {
    if (qword_1004A9F70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, static Logger.caching);
    (*(v3 + 16))(v5, a1, v2);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v10 = 136315394;
      sub_1001795F8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v3 + 8))(v5, v2);
      v14 = sub_1000026C0(v11, v13, &v19);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v16 = v17;
      *v17 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to remove %s from cache: %@", v10, 0x16u);
      sub_100013F2C(v16, &qword_1004AA050, &unk_1003F2F10);

      sub_100003C3C(v18);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    swift_willThrow();
  }
}

unint64_t sub_100179A14()
{
  result = qword_1004AA080;
  if (!qword_1004AA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA080);
  }

  return result;
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleCacheMiss(forCacheEntryDirectory:lock:downloadInformation:downloadedFile:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 80) + **(*v6 + 80));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_10017B0CC;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleCacheHit(forCacheEntryDirectory:lock:downloadInformation:tempDir:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_100179D4C;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t sub_100179D4C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CryptexCacheDelegate.handleDownload(from:to:authentication:downloadConfiguration:delegateParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6)
{
  v11 = v7;
  v13 = *(a4 + 32);
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = *(a5 + 48);
  v22 = (*(*v6 + 96) + **(*v6 + 96));
  v17 = swift_task_alloc();
  v18 = *a4;
  v19 = a4[1];
  *(v11 + 112) = v17;
  *(v11 + 88) = v19;
  *(v11 + 104) = v13;
  *(v11 + 16) = v14;
  *(v11 + 72) = v18;
  *(v11 + 24) = v15;
  v20 = *(a5 + 2);
  *(v11 + 32) = *(a5 + 1);
  *(v11 + 48) = v20;
  *(v11 + 64) = v16;
  *v17 = v11;
  v17[1] = sub_100179FDC;

  return v22(a1, a2, a3, v11 + 72, v11 + 16, a6);
}

uint64_t sub_100179FDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10017A124(uint64_t a1)
{
  type metadata accessor for FilePath();
  if (v1 <= 0x3F)
  {
    sub_10017A400(319, &qword_1004AA1B0, type metadata accessor for AEADecryptionParameters);
    if (v2 <= 0x3F)
    {
      sub_10017A400(319, &qword_1004AA1B8, &type metadata accessor for FilePath);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10017A400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10017A468(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000039E8(&qword_1004AA048, &unk_1003F2F00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10017A544(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000039E8(&qword_1004AA048, &unk_1003F2F00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10017A5F4(uint64_t a1)
{
  sub_10017A748(319);
  if (v1 <= 0x3F)
  {
    sub_10017B034(319, &qword_1004AA318, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10017A400(319, &qword_1004AA1B0, type metadata accessor for AEADecryptionParameters);
      if (v3 <= 0x3F)
      {
        sub_10017B034(319, &qword_1004AA320, &type metadata for Int, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10017B034(319, &unk_1004AA328, &type metadata for UInt64, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10017A748(uint64_t a1)
{
  if (!qword_1004AA310)
  {
    sub_100003A94(&qword_1004A71E0, &qword_100376D60);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AA310);
    }
  }
}

__n128 sub_10017A7E4(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10017A810(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017A830(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

__n128 sub_10017A8D0(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10017A904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10017A960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_10017AA00(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10017AA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 184))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 149);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10017AA90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10017AD98(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10017AE04(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FirewallInstaller.Error(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FirewallInstaller.Error(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10017AF74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10017AF94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10017B034(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10017B0F4()
{
  v1 = *v0;
  v2 = 0x534F63616DLL;
  v3 = 5459817;
  v4 = 0x534F6863746177;
  if (v1 != 3)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1397716596;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10017B178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001863F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10017B1A0(uint64_t a1)
{
  v2 = sub_10017BA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B1DC(uint64_t a1)
{
  v2 = sub_10017BA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B224@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10017B254(uint64_t a1)
{
  v2 = sub_10017BB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B290(uint64_t a1)
{
  v2 = sub_10017BB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B2CC(uint64_t a1)
{
  v2 = sub_10017BBC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B308(uint64_t a1)
{
  v2 = sub_10017BBC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B344(uint64_t a1)
{
  v2 = sub_10017BA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B380(uint64_t a1)
{
  v2 = sub_10017BA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B3BC(uint64_t a1)
{
  v2 = sub_10017BB70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B3F8(uint64_t a1)
{
  v2 = sub_10017BB70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B434(uint64_t a1)
{
  v2 = sub_10017BAC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B470(uint64_t a1)
{
  v2 = sub_10017BAC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ComputerPlatform.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1000039E8(&qword_1004AA438, &qword_1003F3750);
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v29 - v4;
  v5 = sub_1000039E8(&qword_1004AA440, &qword_1003F3758);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_1000039E8(&qword_1004AA448, &qword_1003F3760);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v29 - v8;
  v9 = sub_1000039E8(&qword_1004AA450, &qword_1003F3768);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1000039E8(&qword_1004AA458, &qword_1003F3770);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v41 = sub_1000039E8(&qword_1004AA460, &unk_1003F3778);
  v15 = *(v41 - 8);
  __chkstk_darwin(v41);
  v17 = &v29 - v16;
  sub_10000E2A8(a1, a1[3]);
  sub_10017BA20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_10017BB70();
      v28 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_10017BBC4();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_10017BB1C();
    v26 = v29;
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_10017BAC8();
    v19 = v32;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_10017BA74();
    v19 = v35;
    v20 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

unint64_t sub_10017BA20()
{
  result = qword_1004AA468;
  if (!qword_1004AA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA468);
  }

  return result;
}

unint64_t sub_10017BA74()
{
  result = qword_1004AA470;
  if (!qword_1004AA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA470);
  }

  return result;
}

unint64_t sub_10017BAC8()
{
  result = qword_1004AA478;
  if (!qword_1004AA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA478);
  }

  return result;
}

unint64_t sub_10017BB1C()
{
  result = qword_1004AA480;
  if (!qword_1004AA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA480);
  }

  return result;
}

unint64_t sub_10017BB70()
{
  result = qword_1004AA488;
  if (!qword_1004AA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA488);
  }

  return result;
}

unint64_t sub_10017BBC4()
{
  result = qword_1004AA490;
  if (!qword_1004AA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA490);
  }

  return result;
}

uint64_t sub_10017BC30@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100186598(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall Computer.run(shell:command:)(Swift::String_optional shell, Swift::String command)
{
  v4 = v3;
  v5 = v2;
  object = command._object;
  countAndFlagsBits = command._countAndFlagsBits;
  v8 = shell.value._object;
  v9 = shell.value._countAndFlagsBits;
  v10 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  v13 = type metadata accessor for FilePath();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  LOBYTE(v4) = (*(v4 + 280))(v9, v8, countAndFlagsBits, object, v12, v5, v4);
  sub_100013F2C(v12, &qword_1004A9CF8, &qword_10037BF90);
  return v4 & 1;
}

uint64_t sub_10017BDB4(uint64_t a1)
{
  type metadata accessor for RealComputer();
  v1 = swift_allocObject();
  v1[2] = 0;
  v2 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v1[6] = v2;
  v1[7] = &protocol witness table for RealFileSystem;
  v1[3] = inited;
  v4 = type metadata accessor for RealSystemLog();
  result = swift_allocObject();
  v1[11] = v4;
  v1[12] = &protocol witness table for RealSystemLog;
  v1[8] = result;
  static RealComputer.shared = v1;
  return result;
}

void *RealComputer.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = 0;
  v1 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v0[6] = v1;
  v0[7] = &protocol witness table for RealFileSystem;
  v0[3] = inited;
  v3 = type metadata accessor for RealSystemLog();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &protocol witness table for RealSystemLog;
  v0[8] = v4;
  return v0;
}

uint64_t *RealComputer.shared.unsafeMutableAddressor()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  return &static RealComputer.shared;
}

uint64_t static RealComputer.shared.getter()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RealComputer.shared.setter(uint64_t a1)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RealComputer.shared = a1;
}

uint64_t (*static RealComputer.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10017C098@<X0>(void *a1@<X8>)
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static RealComputer.shared;
}

uint64_t sub_10017C118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = qword_1004A9DF0;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RealComputer.shared = v4;
}

uint64_t Volume.keys.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t RealComputer.nvram.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = (*(*v1 + 112))();
  if (v4)
  {
    v5 = v4;
    result = type metadata accessor for RealNVRAM();
LABEL_3:
    a1[3] = result;
    a1[4] = &protocol witness table for RealNVRAM;
    *a1 = v5;
    return result;
  }

  v7 = type metadata accessor for RealNVRAM();
  swift_allocObject();
  result = RealNVRAM.init()();
  if (!v2)
  {
    v5 = result;
    v8 = *(*v1 + 120);

    v8(v9);
    result = v7;
    goto LABEL_3;
  }

  return result;
}

uint64_t RealComputer.set(computerName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017C3BC, 0, 0);
}

uint64_t sub_10017C3BC()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting computerName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017C654;

  return sub_10017C840(sub_10017C840, 5, 0, "set(computerName:)", 18, 2, sub_100186D34, v10);
}

uint64_t sub_10017C654()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10017C7D4;
  }

  else
  {

    v2 = sub_10017C770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017C770()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C7D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10017C840(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a7;
  *(v9 + 184) = a3;
  *(v9 + 24) = a1;
  *(v9 + 64) = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 72) = v10;
  *(v9 + 80) = *(v10 - 8);
  *(v9 + 88) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v9 + 96) = v11;
  *(v9 + 104) = *(v11 - 8);
  *(v9 + 112) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  *(v9 + 120) = v12;
  *(v9 + 128) = *(v12 - 8);
  *(v9 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10017C9D0, 0, 0);
}

uint64_t sub_10017C9D0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 184);
  v7 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 64);
  sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v8 = static OS_dispatch_queue.global(qos:)();
  *(v0 + 144) = v8;
  (*(v1 + 8))(v2, v3);
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = v6 & 1;
  *(v9 + 40) = v15;
  *(v9 + 48) = v4;
  *(v9 + 56) = v16;
  v10 = v5;

  static DispatchQoS.unspecified.getter();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100189A44(&qword_1004A7A70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000039E8(&qword_1004A7A78, &qword_1003F2F40);
  sub_100189A8C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  v11[2] = v8;
  v11[3] = 0;
  v11[4] = v17;
  v11[5] = v18;
  v11[6] = sub_100189A1C;
  v11[7] = v9;
  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_10017CC5C;
  v13 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD00000000000001FLL, 0x800000010043DC10, sub_100189AF0, v11, &type metadata for () + 1);
}

uint64_t sub_10017CC5C()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017CE30, 0, 0);
  }

  else
  {
    v3 = v2[18];
    v5 = v2[13];
    v4 = v2[14];
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[9];
    v9 = v2[10];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_10017CE30()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t RealComputer.set(hostName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017CF38, 0, 0);
}

uint64_t sub_10017CF38()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting hostName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017D1D8;

  return sub_10017C840(sub_10017C840, 5, 0, "set(hostName:)", 14, 2, sub_100186D64, v10);
}

uint64_t sub_10017D1D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100189CC4;
  }

  else
  {

    v2 = sub_100189CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t RealComputer.set(localHostName:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10017D314, 0, 0);
}

uint64_t sub_10017D314()
{
  v14 = v0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000270B4(v1, qword_1004B00F8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000026C0(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting localHostName to %s", v6, 0xCu);
    sub_100003C3C(v7);
  }

  v0[4] = sub_1001BE7C0();
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  v0[5] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_10017D1D8;

  return sub_10017C840(sub_10017C840, 5, 0, "set(localHostName:)", 19, 2, sub_100186D94, v10);
}

void sub_10017D5AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a2, a3);
  if (!v4)
  {
    SCPreferencesRef.commit()();
    if (!v5)
    {
      SCPreferencesRef.apply()();
    }
  }
}

Swift::OpaquePointer_optional __swiftcall RealComputer.set(preferences:)(Swift::OpaquePointer preferences)
{
  v118 = sub_100186DEC(_swiftEmptyArrayStorage, &qword_1004AA758, &qword_1003F3E20);
  v121 = preferences._rawValue + 64;
  v2 = 1 << *(preferences._rawValue + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v124 = v3 & *(preferences._rawValue + 8);
  v120 = (v2 + 63) >> 6;
  rawValue = preferences._rawValue;

  v4 = 0;
LABEL_5:
  for (i = v4; ; i = v122)
  {
    v6 = v124;
    if (!v124)
    {
      while (1)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_108;
        }

        if (v7 >= v120)
        {

          v117 = v118;
          if (!v118[2])
          {

            v117 = 0;
          }

          goto LABEL_112;
        }

        v6 = *&v121[8 * v7];
        ++i;
        if (v6)
        {
          goto LABEL_11;
        }
      }
    }

    v7 = i;
LABEL_11:
    v124 = (v6 - 1) & v6;
    v122 = v7;
    v8 = __clz(__rbit64(v6)) | (v7 << 6);
    v9 = (rawValue[6] + 16 * v8);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(rawValue[7] + 8 * v8);

    v123 = sub_100186DEC(_swiftEmptyArrayStorage, &qword_1004AA750, &qword_1003F3E18);
    v13 = v12 + 64;
    v130 = v12;
    v14 = 1 << *(v12 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(v12 + 64);
    v17 = (v14 + 63) >> 6;
    v125 = v11;
    v127 = v12 + 64;
    v128 = v10;
    v18 = v11 == 0x72657355796E41 && v10 == 0xE700000000000000;
    v19 = v18;
    v129 = v19;
    v126 = (v14 + 63) >> 6;
    v20 = 0;
    if (v16)
    {
      break;
    }

    while (1)
    {
LABEL_22:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_107;
      }

      if (v21 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        goto LABEL_25;
      }
    }

    if (v123[2])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v118;
      sub_100183620(v123, v125, v128, isUniquelyReferenced_nonNull_native, &qword_1004AA758, &qword_1003F3E20);

      v118 = v152;
      v4 = v122;
      goto LABEL_5;
    }
  }

LABEL_21:
  v21 = v20;
LABEL_25:
  v22 = v16;
  v133 = v21;
  v23 = __clz(__rbit64(v16)) | (v21 << 6);
  v24 = (*(v130 + 48) + 16 * v23);
  v25 = v24[1];
  v134 = *v24;
  v143 = *(*(v130 + 56) + 8 * v23);
  if (v129 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v26 = kCFPreferencesAnyUser;
  }

  else
  {

    v26 = String._bridgeToObjectiveC()();
  }

  v27 = v26;
  v28 = v134 == 0x696C707041796E41 && v25 == 0xEE006E6F69746163;
  v131 = v25;
  if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v29 = kCFPreferencesAnyApplication;
  }

  else
  {
    v29 = String._bridgeToObjectiveC()();
  }

  v30 = v29;
  v132 = (v22 - 1) & v22;
  v31 = v143 + 64;
  v32 = 1 << *(v143 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(v143 + 64);
  v35 = (v32 + 63) >> 6;

  v137 = v30;
  v136 = v27;
  v138 = kCFPreferencesCurrentHost;
  v36 = 0;
  for (j = v35; v34; v35 = j)
  {
LABEL_44:
    v142 = v34;
    v155 = *(*(v143 + 56) + 8 * (__clz(__rbit64(v34)) | (v36 << 6)));

    JSON.propertyListValue.getter();
    value = v38;
    if (qword_1004A9E38 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v39 = off_1004AB710;
    Hasher.init(_seed:)();
    type metadata accessor for CFString(0);
    sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
    v40 = v137;
    v41 = v136;
    v42 = v138;
    v150 = v40;
    _CFObject.hash(into:)();
    v146 = v41;
    _CFObject.hash(into:)();
    v144 = v42;
    _CFObject.hash(into:)();
    v43 = Hasher._finalize()();
    v44 = v39 + 56;
    v148 = v39;
    v45 = -1 << v39[32];
    v46 = v43 & ~v45;
    if ((*&v39[((v46 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v46))
    {
      v47 = ~v45;
      do
      {
        v48 = *(v148 + 6) + 24 * v46;
        v49 = *(v48 + 8);
        v50 = *(v48 + 16);
        v51 = *v48;
        v52 = v49;
        v53 = v50;
        if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
        {
          v54 = static _CFObject.== infix(_:_:)();

          if (v54)
          {
            v55 = v144;

            v56 = v146;
            v57 = *(v148 + 6) + 24 * v46;
            v58 = *(v57 + 8);
            v59 = *(v57 + 16);
            v60 = *v57;
            v61 = v58;
            v62 = v59;
            goto LABEL_55;
          }
        }

        else
        {
        }

        v46 = (v46 + 1) & v47;
      }

      while (((*&v44[(v46 >> 3) & 0xFFFFFFFFFFFFFF8] >> v46) & 1) != 0);
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v152 = off_1004AB710;
    off_1004AB710 = 0x8000000000000000;
    v60 = v150;
    v56 = v146;
    v61 = v146;
    v55 = v144;
    v62 = v144;
    sub_100185744(v60, v61, v62, v46, v63);
    off_1004AB710 = v152;
LABEL_55:
    v34 = (v142 - 1) & v142;
    swift_endAccess();

    v64 = String._bridgeToObjectiveC()();

    CFPreferencesSetValue(v64, value, v150, v56, v55);
    swift_unknownObjectRelease();

    v31 = v143 + 64;
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      if (qword_1004A9E38 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v65 = v137;
      v66 = v136;
      v67 = v138;
      sub_100184D50(&v152, v65, v66, v67);
      swift_endAccess();

      v149 = v67;
      v147 = v66;
      if (CFPreferencesSynchronize(v65, v66, v67))
      {

        v68 = v65;
      }

      else
      {
        if (qword_1004A9F20 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_1000270B4(v69, qword_1004B00F8);
        v70 = v65;
        v71 = v66;
        v68 = Logger.logObject.getter();
        v72 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v68, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *v73 = 138412546;
          *(v73 + 4) = v71;
          *(v73 + 12) = 2112;
          *(v73 + 14) = v70;
          *v74 = v71;
          v74[1] = v70;
          _os_log_impl(&_mh_execute_header, v68, v72, "Failed to synchronize %@.%@", v73, 0x16u);
          sub_1000039E8(&qword_1004AA050, &unk_1003F2F10);
          swift_arrayDestroy();
          v31 = v143 + 64;
        }

        else
        {

          v68 = v70;
        }

        v66 = v147;
      }

      v140 = sub_100186EE8(_swiftEmptyArrayStorage);
      v75 = 1 << *(v143 + 32);
      v76 = *(v143 + 64);
      if (v75 < 64)
      {
        v77 = ~(-1 << v75);
      }

      else
      {
        v77 = -1;
      }

      v78 = v77 & v76;
      v79 = (v75 + 63) >> 6;
      v145 = v65;
      v80 = 0;
      if ((v77 & v76) != 0)
      {
        while (1)
        {
          v81 = v80;
LABEL_75:
          v82 = __clz(__rbit64(v78)) | (v81 << 6);
          v83 = (*(v143 + 48) + 16 * v82);
          v85 = *v83;
          v84 = v83[1];
          v151 = *(*(v143 + 56) + 8 * v82);
          v152 = v151;

          JSON.propertyListValue.getter();
          v87 = v86;
          swift_beginAccess();
          v88 = v65;
          v89 = v66;
          v90 = v149;
          sub_100184D50(&v152, v88, v89, v90);
          swift_endAccess();

          v91 = String._bridgeToObjectiveC()();
          v92 = CFPreferencesCopyValue(v91, v88, v89, v90);

          v93 = v87;
          if (v87)
          {
            v94 = v92;
            if (v92)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v93 = kCFNull;
            v96 = kCFNull;
            v94 = v92;
            if (v92)
            {
              goto LABEL_77;
            }
          }

          v94 = kCFNull;
LABEL_77:
          v78 &= v78 - 1;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v95 = CFEqual(v93, v94);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v95)
          {

            v97 = swift_isUniquelyReferenced_nonNull_native();
            v152 = v140;
            v98 = v85;
            v99 = sub_100013364(v85, v84);
            v101 = v140[2];
            v102 = (v100 & 1) == 0;
            v103 = __OFADD__(v101, v102);
            v104 = v101 + v102;
            if (v103)
            {
              goto LABEL_109;
            }

            if (v140[3] >= v104)
            {
              if (v97)
              {
                goto LABEL_87;
              }

              v108 = v99;
              v109 = v100;
              sub_10018420C();
              v99 = v108;
              v98 = v85;
              if ((v109 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_88:
              v107 = v99;

              v140 = v152;
              *(v152[7] + 8 * v107) = v151;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v141 = v100;
              sub_100182348(v104, v97);
              v99 = sub_100013364(v85, v84);
              v106 = v105 & 1;
              v100 = v141;
              if ((v141 & 1) != v106)
              {
                goto LABEL_111;
              }

LABEL_87:
              if (v100)
              {
                goto LABEL_88;
              }

LABEL_90:
              v110 = v152;
              v152[(v99 >> 6) + 8] |= 1 << v99;
              v111 = (v110[6] + 16 * v99);
              *v111 = v98;
              v111[1] = v84;
              *(v110[7] + 8 * v99) = v151;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v112 = v110[2];
              v103 = __OFADD__(v112, 1);
              v113 = v112 + 1;
              if (v103)
              {
                goto LABEL_110;
              }

              v140 = v110;
              v110[2] = v113;
            }

            v31 = v143 + 64;
            v65 = v145;
            v66 = v147;
            v80 = v81;
            if (!v78)
            {
              goto LABEL_72;
            }

            continue;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v80 = v81;
          v31 = v143 + 64;
          v65 = v145;
          v66 = v147;
          if (!v78)
          {
            goto LABEL_72;
          }
        }
      }

      while (1)
      {
LABEL_72:
        v81 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_106;
        }

        if (v81 >= v79)
        {
          break;
        }

        v78 = *(v31 + 8 * v81);
        ++v80;
        if (v78)
        {
          goto LABEL_75;
        }
      }

      if (v140[2])
      {
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v123;
        sub_100183620(v140, v134, v131, v114, &qword_1004AA750, &qword_1003F3E18);

        v123 = v152;
        v17 = v126;
        v13 = v127;
        v16 = v132;
        v20 = v133;
        if (!v132)
        {
          goto LABEL_22;
        }
      }

      else
      {

        v16 = v132;
        v20 = v133;
        v17 = v126;
        v13 = v127;
        if (!v132)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_21;
    }

    v34 = *(v31 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_44;
    }
  }

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
  v117 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_112:
  result.value._rawValue = v117;
  result.is_nil = v116;
  return result;
}

Swift::Bool __swiftcall RealComputer.configurePasswordlessSudo()()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000270B4(v0, qword_1004B00F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Password-less sudo has no effect because it is not available on this platform", v3, 2u);
  }

  return 0;
}

Swift::Bool __swiftcall RealComputer.setLocale(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = String._bridgeToObjectiveC()();
  v3 = qword_1004A9E38;
  v4 = kCFPreferencesAnyApplication;
  v5 = kCFPreferencesCurrentUser;
  v6 = kCFPreferencesAnyHost;
  v7 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = v4;
  v9 = v5;
  v10 = v6;
  sub_100184D50(&v36, v8, v9, v10);
  swift_endAccess();

  v11 = String._bridgeToObjectiveC()();
  CFPreferencesSetValue(v11, v7, v8, v9, v10);

  swift_beginAccess();
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_100184D50(&v36, v12, v13, v14);
  swift_endAccess();

  if (!CFPreferencesSynchronize(v12, v13, v14))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000270B4(v23, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    v28 = "Failed to set AppleLocale to %{public}s: Failed to synchronize preferences.";
    goto LABEL_19;
  }

  _s10DarwinInit13CFPreferencesO11flushCachesyyFZ_0();
  swift_beginAccess();
  v12 = v12;
  v13 = v13;
  v14 = v14;
  sub_100184D50(&v36, v12, v13, v14);
  swift_endAccess();

  v15 = String._bridgeToObjectiveC()();
  v16 = CFPreferencesCopyValue(v15, v12, v13, v14);

  if (!v16)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000270B4(v29, qword_1004B00F8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_20;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    v28 = "Failed to set AppleLocale to %{public}s: Failed persist preferences.";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v24, v25, v28, v26, 0xCu);
    sub_100003C3C(v27);

LABEL_20:

LABEL_21:
    return 0;
  }

  if (!CFEqual(v16, v7))
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000270B4(v30, qword_1004B00F8);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to set AppleLocale to %{public}s: Invalid persisted value.", v33, 0xCu);
      sub_100003C3C(v34);
    }

    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000270B4(v17, qword_1004B00F8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000026C0(countAndFlagsBits, object, &v36);
    _os_log_impl(&_mh_execute_header, v18, v19, "Set AppleLocale to %{public}s.", v20, 0xCu);
    sub_100003C3C(v21);
  }

  swift_unknownObjectRelease();
  return 1;
}

Swift::String_optional __swiftcall RealComputer.getAutomatedDeviceGroup()()
{
  v0 = shim_automatedDeviceGroup();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, qword_1004B00F8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000026C0(v2, v4, &v17);
      _os_log_impl(&_mh_execute_header, v6, v7, "Found AutomatedDeviceGroup: %{public}s", v8, 0xCu);
      sub_100003C3C(v9);
    }
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, qword_1004B00F8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find an AutomatedDeviceGroup for this device", v13, 2u);
    }

    v2 = 0;
    v4 = 0;
  }

  v14 = v2;
  v15 = v4;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

Swift::Bool __swiftcall RealComputer.setAutomatedDeviceGroup(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = String._bridgeToObjectiveC()();
  shim_setAutomatedDeviceGroup(v4);

  v5 = (*(*v1 + 192))();
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v5 == countAndFlagsBits && v6 == object)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000270B4(v9, qword_1004B00F8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_1000026C0(countAndFlagsBits, object, &v20);
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to set AutomatedDeviceGroup to %{public}s", v12, 0xCu);
        sub_100003C3C(v13);
      }

      return 0;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000026C0(countAndFlagsBits, object, &v20);
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully set AutomatedDeviceGroup to %{public}s", v18, 0xCu);
    sub_100003C3C(v19);
  }

  return 1;
}

uint64_t RealComputer.uniqueChipID.getter()
{
  result = shim_MGQUniqueChipID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.serialNumber.getter()
{
  v0 = shim_MGQSerialNumber();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RealComputer.securityDomain.getter()
{
  result = shim_MGQSecurityDomain();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.boardID.getter()
{
  result = shim_MGQBoardID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.chipID.getter()
{
  result = shim_MGQChipID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

id sub_10017F1E0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();

    return 0;
  }

  return result;
}

BOOL RealComputer.isHostAttached.getter()
{
  v0 = remote_device_copy_unique_of_type();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t RealComputer.isDarwinCloud.getter()
{
  (*(*v0 + 320))();
  sub_10000B080();
  v1 = StringProtocol.contains<A>(_:)();

  return v1 & 1;
}

id sub_10017F380(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RealComputer.buildVersion.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_buildVersion_obj();

    if (!v2)
    {
      return 0;
    }

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void RealComputer.releaseType.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_releaseType_obj();

    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t RealComputer.shouldLoadConfigFromNVRAM.getter()
{
  if ((*(*v0 + 336))() & 1) != 0 || ((*(*v0 + 288))())
  {
    return 1;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_ephemeralDataModeOverride_obj();

    if (v3)
    {
      sub_10001AA40(0, &qword_1004AA498, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
      v5 = static NSObject.== infix(_:_:)();

      return v5 & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealComputer.osVariantHasInternalContent.getter()
{
  String.utf8CString.getter();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.lockCryptexes()()
{
  v0 = shim_cryptex_lockdown();
  if (v0)
  {
    v1 = v0;
    sub_100187D3C();
    swift_allocError();
    *v2 = v1;
    swift_willThrow();
  }
}

uint64_t RealComputer.defaultUSRAction.getter()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    return 5;
  }

  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  if (!IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0))
  {

    return 5;
  }

  swift_dynamicCast();
  v3 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v6 = *(v21 + 16);
    v7 = __DataStorage._bytes.getter();
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v7;
    v9 = __DataStorage._offset.getter();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      __DataStorage._length.getter();
      if (v10)
      {
LABEL_17:
        v4 = *v10;
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v3)
  {
    if (v21 <= v21 >> 32)
    {
      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
LABEL_32:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_33;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v13))
      {
        v10 = (v21 - v13 + v12);
        result = __DataStorage._length.getter();
        if (v10)
        {
          goto LABEL_17;
        }

LABEL_33:
        __break(1u);
        return result;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __DataStorage._length.getter();
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v21;
LABEL_19:
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v19 = v2;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v4;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%@ is %u", v18, 0x12u);
    sub_100013F2C(v19, &qword_1004AA050, &unk_1003F2F10);

    sub_100031928(v21, v22);
  }

  else
  {
    sub_100031928(v21, v22);
  }

  if (v4 == 6)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.userspaceReboot(_:)(DarwinInit::DInitUSR a1)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000270B4(v2, qword_1004B00F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = 0xE300000000000000;
    v8 = 0xE400000000000000;
    v9 = 1701736302;
    v10 = 0xE000000000000000;
    v11 = 0x746C7561666564;
    if (a1 == DarwinInit_DInitUSR_empty)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (a1 != DarwinInit_DInitUSR_none)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = 0x7665642D6D6572;
    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v12 = 7169394;
    }

    if (a1 <= DarwinInit_DInitUSR_remDev)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    if (a1 <= DarwinInit_DInitUSR_remDev)
    {
      v14 = v7;
    }

    else
    {
      v14 = v8;
    }

    v15 = sub_1000026C0(v13, v14, &v23);

    *(v5 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Getting ready to reboot with type %s", v5, 0xCu);
    sub_100003C3C(v6);
  }

  if (a1 == DarwinInit_DInitUSR_none)
  {
    goto LABEL_22;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_24:
    sub_100187FC0();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    *(v18 + 24) = 3;
LABEL_25:
    swift_willThrow();
    return;
  }

  if (a1 == DarwinInit_DInitUSR_empty)
  {
LABEL_22:

    goto LABEL_24;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_24;
  }

  v19 = a1;
  if (a1 <= DarwinInit_DInitUSR_remDev)
  {
    if (a1)
    {
      v19 = DarwinInit_DInitUSR_rem;
      v21 = 0x2100000000000000;
      v22 = 5;
    }

    else
    {
      v21 = 0x2100000000000000;
      v22 = 4;
    }
  }

  else
  {
    if (a1 - 2 < 2)
    {
      sub_100187F6C();
      swift_allocError();
      *v20 = 1;
      goto LABEL_25;
    }

    v22 = 0;
    v21 = 0x2000000000000000;
    v19 = DarwinInit_DInitUSR_remDev;
  }

  v24 = v19;
  sub_100187D90(v21, v22 | (v19 << 32));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.reboot()()
{
  if (shim_reboot3())
  {
    v0 = errno.getter();
    sub_100187D3C();
    v1 = swift_allocError();
    *v2 = v0;
    sub_100187FC0();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v1;
    *(v3 + 24) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.shutdown()()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000270B4(v0, qword_1004B00F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Shutdown only available on macOS", v3, 2u);
  }

  sub_100187FC0();
  swift_allocError();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 1;
  *(v4 + 24) = 3;
  swift_willThrow();
}

uint64_t RealComputer.registerSecureconfig(parameters:securityPolicy:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (v4)
  {
LABEL_5:
    v4 = String._bridgeToObjectiveC()();
  }

LABEL_6:
  v6 = shim_register_secureconfig_parameters(isa, v4);

  return v6;
}

uint64_t RealComputer.registerSecureconfig(config:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v3 = shim_register_config(isa);

  return v3;
}

void *RealComputer.deinit()
{

  sub_100003C3C((v0 + 24));
  sub_100003C3C((v0 + 64));
  return v0;
}

uint64_t RealComputer.__deallocating_deinit()
{

  sub_100003C3C((v0 + 24));
  sub_100003C3C((v0 + 64));

  return swift_deallocClassInstance();
}

void *RealComputer.init()()
{
  v0[2] = 0;
  v1 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v0[6] = v1;
  v0[7] = &protocol witness table for RealFileSystem;
  v0[3] = inited;
  v3 = type metadata accessor for RealSystemLog();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &protocol witness table for RealSystemLog;
  v0[8] = v4;
  return v0;
}

uint64_t sub_10018010C(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 144) + **(**v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100001FE0;

  return v8(a1, a2);
}

uint64_t sub_100180238(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 152) + **(**v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t sub_100180364(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

void sub_100180EDC(const __SCPreferences *a1, uint64_t a2, char a3, uint64_t (*a4)(const __SCPreferences *))
{
  if (SCPreferencesLock(a1, 1u))
  {
    a4(a1);
LABEL_3:
    sub_1001BE1B4();
  }

  else
  {
    v23 = a4;
    v24 = a2;
    v8 = 0;
    while (1)
    {
      v10 = SCError();
      if (qword_1004A9E28 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000270B4(v11, static SCPreferencesRef.logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        sub_100189C58();
        swift_allocError();
        *v16 = "lock()";
        *(v16 + 8) = 6;
        *(v16 + 16) = 2;
        *(v16 + 20) = v10;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&_mh_execute_header, v12, v13, "Unable to lock SCPreferences: %@", v14, 0xCu);
        sub_100013F2C(v15, &qword_1004AA050, &unk_1003F2F10);
      }

      sub_100189C58();
      swift_allocError();
      *v18 = "lock()";
      *(v18 + 8) = 6;
      *(v18 + 16) = 2;
      *(v18 + 20) = v10;
      swift_willThrow();
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      if ((swift_dynamicCast() & 1) == 0 || v28 != 3005)
      {
        goto LABEL_19;
      }

      if ((a3 & 1) == 0)
      {
        if (v8 < v24)
        {
          swift_allocError();
          *v22 = v25;
          *(v22 + 8) = v26;
          *(v22 + 16) = v27;
          *(v22 + 20) = 3005;
          swift_willThrow();
LABEL_19:

          return;
        }

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Synchronizing and trying to lock again.", v21, 2u);
        }

        SCPreferencesSynchronize(a1);
        if (__OFADD__(v8++, 1))
        {
          break;
        }
      }

      if (SCPreferencesLock(a1, 1u))
      {
        v23(a1);
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100181294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a2;
  v18[1] = a5;
  v10 = sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v11 + 16))(v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_100189BD0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_10048A120;
  v16 = _Block_copy(aBlock);

  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
}

uint64_t sub_100181468(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_1000039E8(&qword_1004AA7D0, &unk_1003F3EA8);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100181500(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFString(0);
    sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return sub_1001816A8(a1, v2);
}

unint64_t sub_1001815D0(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001817C8(a1, v2);
}

unint64_t sub_100181630(unint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  UTF8String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100181960(a1, a2, v4);
}

unint64_t sub_1001816A8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString, &unk_1003F3558);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001817C8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100181960(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      if (sub_100305028(a1, a2, *(*(v3 + 48) + 16 * v5), *(*(v3 + 48) + 16 * v5 + 8)))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100181A08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100181A38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000039E8(&qword_1004AA788, &qword_1003F3E58);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1000279A4((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_100003CA0(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1000279A4(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

Swift::Int sub_100181DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA7B8, &qword_1003F3E88);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1001820A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000039E8(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100182348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA7C0, &qword_1003F3E90);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_1001825F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA728, &qword_1003F3DD8);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100182898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000039E8(&qword_1004AA718, &qword_1003F3DC8);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10018991C(v28, v41);
      }

      else
      {
        sub_1001898B8(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10018991C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100182BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = type metadata accessor for URL();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000039E8(&qword_1004AA730, &qword_1003F3DE0);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

Swift::Int sub_100182F54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA748, &qword_1003F3E10);
  v52 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v25 = v22 | (v8 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v5 + 56) + 240 * v25;
      if (v52)
      {
        v69 = *v29;
        v30 = *(v29 + 56);
        v31 = *(v29 + 88);
        v84 = *(v29 + 72);
        v85 = v31;
        v60 = *(v29 + 112);
        v86 = *(v29 + 104);
        v32 = *(v29 + 24);
        v80 = *(v29 + 8);
        v81 = v32;
        v82 = *(v29 + 40);
        v83 = v30;
        v53 = *(v29 + 120);
        v54 = *(v29 + 136);
        v55 = *(v29 + 152);
        v56 = *(v29 + 128);
        v57 = *(v29 + 168);
        v58 = *(v29 + 144);
        v59 = *(v29 + 184);
        v68 = *(v29 + 192);
        v66 = *(v29 + 200);
        v61 = *(v29 + 208);
        v62 = *(v29 + 160);
        v63 = *(v29 + 216);
        v64 = *(v29 + 176);
        v67 = *(v29 + 224);
        v65 = *(v29 + 232);
      }

      else
      {
        v34 = *(v29 + 16);
        v33 = *(v29 + 32);
        *v71 = *v29;
        *&v71[16] = v34;
        *&v71[32] = v33;
        v35 = *(v29 + 96);
        v37 = *(v29 + 48);
        v36 = *(v29 + 64);
        *&v71[80] = *(v29 + 80);
        *&v71[96] = v35;
        *&v71[48] = v37;
        *&v71[64] = v36;
        v38 = *(v29 + 160);
        v40 = *(v29 + 112);
        v39 = *(v29 + 128);
        v74 = *(v29 + 144);
        v75 = v38;
        v72 = v40;
        v73 = v39;
        v41 = *(v29 + 224);
        v43 = *(v29 + 176);
        v42 = *(v29 + 192);
        v78 = *(v29 + 208);
        v79 = v41;
        v76 = v43;
        v77 = v42;
        v67 = v41;
        v68 = v42;
        v65 = *(&v41 + 1);
        v66 = *(&v42 + 1);
        v63 = *(&v78 + 1);
        v64 = v43;
        v59 = BYTE8(v43);
        v61 = v78;
        v57 = *(&v75 + 1);
        v62 = v75;
        v55 = *(&v74 + 1);
        v58 = v74;
        v54 = *(&v73 + 1);
        v56 = v73;
        v53 = BYTE8(v72);
        v60 = v72;
        v69 = *v71;

        sub_100189980(v71, v70);
        v84 = *&v71[72];
        v85 = *&v71[88];
        v86 = *&v71[104];
        v80 = *&v71[8];
        v81 = *&v71[24];
        v82 = *&v71[40];
        v83 = *&v71[56];
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v44 = -1 << *(v7 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v14 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v14 + 8 * v46);
          if (v50 != -1)
          {
            v15 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v45) & ~*(v14 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v28;
      v17 = *(v7 + 56) + 240 * v15;
      v18 = v82;
      *(v17 + 56) = v83;
      v19 = v85;
      *(v17 + 72) = v84;
      *(v17 + 88) = v19;
      v20 = v81;
      *(v17 + 8) = v80;
      *(v17 + 24) = v20;
      *v17 = v69;
      v21 = v86;
      *(v17 + 40) = v18;
      *(v17 + 104) = v21;
      *(v17 + 112) = v60;
      *(v17 + 120) = v53;
      *(v17 + 128) = v56;
      *(v17 + 136) = v54;
      *(v17 + 144) = v58;
      *(v17 + 152) = v55;
      *(v17 + 160) = v62;
      *(v17 + 168) = v57;
      *(v17 + 176) = v64;
      *(v17 + 184) = v59;
      *(v17 + 192) = v68;
      *(v17 + 200) = v66;
      *(v17 + 208) = v61;
      *(v17 + 216) = v63;
      *(v17 + 224) = v67;
      *(v17 + 232) = v65;
      ++*(v7 + 16);
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v12 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v51 = 1 << *(v5 + 32);
    v3 = v2;
    if (v51 >= 64)
    {
      bzero((v5 + 64), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v51;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100183420(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001815D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100183E00();
      goto LABEL_7;
    }

    sub_100181A38(v17, a3 & 1);
    v23 = sub_1001815D0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100183C44(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100003C3C(v21);

  return sub_1000279A4(a1, v21);
}

void sub_100183620(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100013364(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1001820A8(v20, a4 & 1, a5, a6);
      v15 = sub_100013364(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1001840AC(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

void sub_1001837C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100013364(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100182348(v16, a4 & 1);
      v11 = sub_100013364(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10018420C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10018393C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100013364(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100184720();
      goto LABEL_7;
    }

    sub_100182BD4(v15, a4 & 1);
    v25 = sub_100013364(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_100183D50(v12, a2, a3, a1, v18);
}

void sub_100183ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100013364(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10005C8A8(v18, a5 & 1);
      v13 = sub_100013364(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10005D630();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    sub_100031928(v25, v26);
    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v23[6] + 16 * v13);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v23[7] + 16 * v13);
  *v28 = a1;
  v28[1] = a2;
  v29 = v23[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v30;
}

_OWORD *sub_100183C44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000279A4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100183D08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100183D50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for URL();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_100183E00()
{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA788, &qword_1003F3E58);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100003CA0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1000279A4(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_1001840AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000039E8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10018420C()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA7C0, &qword_1003F3E90);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_100184380()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA728, &qword_1003F3DD8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1001844F0()
{
  v1 = v0;
  v2 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA718, &qword_1003F3DC8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001898B8(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10018991C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_100184720()
{
  v1 = v0;
  v35 = type metadata accessor for URL();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA730, &qword_1003F3DE0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}