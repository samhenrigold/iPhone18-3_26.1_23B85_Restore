uint64_t sub_236700AAC(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a3 - 1;
  if (a3 < 1)
  {
    goto LABEL_35;
  }

  v13 = 0;
  v45 = a5 + 8 * ~a6 * a4;
  v51 = a5 + 8;
  v52 = a6 + 1;
  v14 = 8 * a6;
  v50 = 8 * a6 + 8;
  v15 = a3;
  v16 = a9;
  v53 = a6;
  while (1)
  {
    v17 = (v13 + 1);
    if (v17 >= a3)
    {
      break;
    }

    v18 = (v51 + v50 * v13);
    a7.n128_u64[0] = -1.0;
    v19 = -1;
    v20 = v13 + 1;
    do
    {
      v21 = *v18++;
      v22 = fabs(v21);
      if (v22 > a7.n128_f64[0])
      {
        a7.n128_f64[0] = v22;
        v19 = v20;
      }

      ++v20;
    }

    while (a3 != v20);
    if (v19 < 0)
    {
      goto LABEL_13;
    }

    v23 = *(a10 + 24);
    if (a7.n128_f64[0] >= v23 || fabs(*(a5 + 8 * v52 * v13)) >= v23)
    {
      goto LABEL_13;
    }

    sub_2367781D0((v13 + a4), (--v15 + a4), (a4 + a1), (a4 + a2), v45);
    v17 = v13;
LABEL_27:
    v13 = v17;
    a6 = v53;
    if (v17 >= v15)
    {
      goto LABEL_32;
    }
  }

  a7.n128_u64[0] = -1.0;
  v19 = -1;
LABEL_13:
  if (v13 != v15 - 1 || *(a5 + 8 * v52 * v13) != 0.0)
  {
    v24 = (a5 + 8 * v52 * v13);
    v25 = v16 + 16 * v13;
    if (v19 == -1)
    {
      goto LABEL_26;
    }

    v26 = fabs(*v24);
    if (v26 >= a7.n128_f64[0] * 0.640388203)
    {
      goto LABEL_26;
    }

    v27 = -1.0;
    if (v13 < v19)
    {
      v28 = (a5 + v14 * v13 + 8 * v19);
      v29 = v19 - v13;
      do
      {
        v27 = fmax(v27, fabs(*v28));
        v28 = (v28 + v14);
        --v29;
      }

      while (v29);
    }

    if (v19 + 1 < a3)
    {
      v30 = (a5 + v14 * v19 + 8 * (v19 + 1));
      v31 = v44 - v19;
      do
      {
        v32 = *v30++;
        v27 = fmax(v27, fabs(v32));
        --v31;
      }

      while (v31);
    }

    a7.n128_f64[0] = a7.n128_f64[0] * (a7.n128_f64[0] * 0.640388203);
    if (a7.n128_f64[0] <= v26 * v27)
    {
LABEL_26:
      sub_236778EA4((a3 - v13), (a3 - v13), a5 + 8 * v52 * v13, a6, v16 + 16 * v13, a11, a7);
    }

    else
    {
      v33 = (a3 - v13);
      if (fabs(*(a5 + 8 * v52 * v19)) >= v27 * 0.640388203)
      {
        v36 = (v13 + a4);
        v37 = a6;
        sub_2367781D0(v36, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_236778EA4(v33, v33, v24, v37, v25, a11, v38);
      }

      else
      {
        v34 = (v17 + a4);
        v35 = a6;
        sub_2367781D0(v34, (v19 + a4), (a4 + a1), (a4 + a2), v45);
        sub_23677B60C((a3 - v13), (a3 - v13), v24, v35, v25, a11);
        v17 = (v13 + 2);
      }

      v16 = a9;
    }

    goto LABEL_27;
  }

  v15 = v13;
LABEL_32:
  v39 = (a3 - v15);
  if (a3 > v15)
  {
    v40 = a9 + 16 * v15;
    v41 = (a5 + 8 * v52 * v15);
    v42 = v14 + 8;
    do
    {
      *v41 = 0x3E50000000000000;
      sub_236778EA4(v39, v39, v41, a6, v40, a11, a7);
      a6 = v53;
      v40 += 16;
      v41 = (v41 + v42);
      v39 = (v39 - 1);
    }

    while (v39);
  }

LABEL_35:
  sub_23677F628((a1 - a3), a3, a5, a6, a5 + 8 * a3, a6, a9, a11);
  return a3;
}

uint64_t sub_236700E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v10 = a4;
  v11 = a3;
  v13 = a3 + 8 * a2 * a4;
  if (a2 >= 48)
  {
    LODWORD(v14) = 0;
    v31 = a4 + 1;
    v26 = a1 - a2;
    v28 = a3 + 8 * a2 * a4;
    v29 = a5;
    v27 = a6;
    do
    {
      v15 = v11 + 8 * v31 * v14;
      v16 = v13 + 16 * v14;
      v17 = a2 - v14;
      if (a2 - v14 >= 48)
      {
        v18 = 48;
      }

      else
      {
        v18 = v17;
      }

      v19 = a1;
      v20 = a7;
      v21 = v10;
      sub_236700AAC(a1 - v14, a2 - v14, v18, v14, v11 + 8 * v31 * v14, v10, a8, a5 + 4 * v14, v13 + 16 * v14, a6, a7);
      v14 = (v18 + v14);
      if (v17 >= 1 && v14 < a2)
      {
        v22 = (v17 - v18);
        v23 = v15 + 8 * v18;
        v24 = v15 + 8 * v31 * v18;
        sub_23674491C(v22, v18, v23, v21, v16, v24, v21, v20);
        if (v19 > a2)
        {
          sub_2367490D0(v26, v22, v18, v23 + 8 * v22, v23, v21, v16, v24 + 8 * v22, v21, v20);
        }
      }

      a5 = v29;
      v11 = a3;
      a6 = v27;
      v13 = v28;
      v10 = v21;
      a7 = v20;
      a1 = v19;
    }

    while (v14 < a2);
  }

  else
  {
    sub_236700AAC(a1, a2, a2, 0, a3, a4, a8, a5, v13, a6, a7);
    return a2;
  }

  return v14;
}

BOOL sub_23670100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a1;
  v9 = a5 + 8 * a1 * a6;
  v10 = *(v9 + 8 * a1);
  v11 = *(v9 + 8 * a2);
  v12 = *(a5 + 8 * (a2 * a6 + a2));
  v13 = fmax(fabs(v10), fmax(fabs(v11), fabs(v12)));
  v14 = *(a7 + 24);
  result = 0;
  if (v13 >= v14)
  {
    v15 = 1.0 / v13;
    v16 = v10 * v15;
    v17 = v12 * (v10 * v15);
    v18 = v11 * (v11 * v15);
    v19 = vabdd_f64(v17, v18);
    if (v19 >= v14 && v19 >= fmax(fabs(v17) * 0.5, fabs(v18) * 0.5))
    {
      v23 = a4;
      v24 = a3;
      v25 = v17 - v18;
      v26 = v12 * v15 / (v17 - v18);
      v27 = -(v11 * v15) / (v17 - v18);
      sub_236701184(a1, a2, a3, a4, a5, a6);
      v29 = v28;
      sub_236701184(a2, v8, v24, v23, a5, a6);
      v31 = fabs(v27);
      v32 = 1.0 / *(a7 + 16);
      if (v31 * v30 + fabs(v26) * v29 <= v32 && fabs(v16 / v25) * v30 + v31 * v29 <= v32)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_236701184(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v6 = 0.0;
  if (a4 < result)
  {
    v7 = a2 - a4;
    v8 = (a5 + 8 * a6 * a4 + 8 * result);
    v9 = result - a4;
    do
    {
      if (v7)
      {
        v10 = fabs(*v8);
        if (v10 > v6)
        {
          v6 = v10;
        }
      }

      --v7;
      v8 += a6;
      --v9;
    }

    while (v9);
  }

  v11 = result + 1;
  if (result + 1 < a3)
  {
    v12 = a2 - v11;
    v13 = (a5 + 8 * a6 * result + 8 * v11);
    v14 = ~result + a3;
    do
    {
      if (v12)
      {
        v15 = fabs(*v13);
        if (v15 > v6)
        {
          v6 = v15;
        }
      }

      --v12;
      ++v13;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_236701238(signed int a1, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a6;
  v12 = 0;
  v39 = a5 + 8 * ~a6 * a4;
  v47 = a3;
  v48 = a6 + 1;
  v44 = a5 + 8;
  v13 = 8 * a6;
  v38 = 8 * a6 + 8;
  v14 = a9;
  v37 = a1 - 2;
  while (2)
  {
    v15 = 0;
    v16 = v12;
    v45 = a5 + 8 * v12 * v10;
    v46 = v12 + 1;
    v17 = (v44 + v13 + v13 * v12 + 8 * v12);
    v18 = v12;
    while (1)
    {
      v19 = v18 + 1;
      if (v18 + 1 >= v47)
      {
        break;
      }

      v20 = v12;
      if (v18 > v16)
      {
        v21 = fabs(*(v45 + 8 * v19));
        v22 = v15;
        v23 = v12 + 1;
        v24 = v17;
        LODWORD(v20) = v12;
        do
        {
          v25 = fabs(*v24);
          if (v25 <= v21)
          {
            v20 = v20;
          }

          else
          {
            v21 = v25;
            v20 = v23;
          }

          v24 = (v24 + v13);
          ++v23;
          --v22;
        }

        while (v22);
      }

      v10 = a6;
      if (sub_23670100C(v20, v19, a1, v12, a5, a6, v14))
      {
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        sub_2367781D0(v46 + a4, (v19 + a4), (a4 + a1), (a4 + a2), v39);
        v27 = a3;
        sub_23677B60C((a1 - v12), a3 - v12, a5 + 8 * v48 * v12, a6, a8 + 16 * v12, a10);
        v29 = (v12 + 2);
        goto LABEL_27;
      }

      if (fabs(*(a5 + 8 * v48 * v20)) <= fabs(*(a5 + 8 * v48 * v19)))
      {
        v20 = v19;
      }

      else
      {
        v20 = v20;
      }

      sub_2367016F4(v20, a1, v12, a5, a6);
      if (v26 < *(v14 + 24))
      {
        v10 = a6;
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        v14 = a9;
        v34 = *(v45 + 8 * v12);
        if (fabs(v34) < *(a9 + 24))
        {
          v34 = INFINITY;
        }

        *(a8 + 16 * v12) = v34;
        *(a8 + 8 * ((2 * v12) | 1)) = 0;
        *(v45 + 8 * v12) = 0x3FF0000000000000;
        v29 = v46;
        if (v46 < a1)
        {
          bzero((v44 + v38 * v12), 8 * (v37 - v12) + 8);
          v14 = a9;
        }

        v27 = a3;
        goto LABEL_27;
      }

      ++v17;
      ++v15;
      v18 = v19;
      v16 = v12;
      if (v26 * *(v14 + 16) <= fabs(*(a5 + 8 * v48 * v20)))
      {
        v10 = a6;
        sub_2367781D0((v12 + a4), (v20 + a4), (a4 + a1), (a4 + a2), v39);
        v27 = a3;
        sub_236778EA4((a1 - v12), a3 - v12, a5 + 8 * v48 * v12, a6, a8 + 16 * v12, a10, v28);
        v14 = a9;
        v29 = v46;
        goto LABEL_27;
      }
    }

    v30 = v16;
    v10 = a6;
    sub_2367016F4(v12, a1, v12, a5, a6);
    v32 = *(a9 + 24);
    if (v31.n128_f64[0] < v32)
    {
      v35 = *(v45 + 8 * v30);
      if (fabs(v35) < v32)
      {
        v35 = INFINITY;
      }

      *(a8 + 16 * v30) = v35;
      *(a8 + 8 * ((2 * v30) | 1)) = 0;
      *(v45 + 8 * v30) = 0x3FF0000000000000;
      v29 = v46;
      if (v46 < a1)
      {
        bzero((v44 + v38 * v30), 8 * (v37 - v12) + 8);
      }

      return v29;
    }

    v33 = (a5 + 8 * v48 * v30);
    v31.n128_f64[0] = v31.n128_f64[0] * *(a9 + 16);
    v29 = v46;
    if (v31.n128_f64[0] > fabs(*v33))
    {
      return v12;
    }

    v27 = a3;
    sub_236778EA4((a1 - v12), a3 - v12, v33, a6, a8 + 16 * v30, a10, v31);
    v14 = a9;
LABEL_27:
    v12 = v29;
    if (v29 < v27)
    {
      continue;
    }

    return v29;
  }
}

uint64_t sub_2367016F4(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0.0;
  if (a3 < result)
  {
    v6 = (a4 + 8 * a5 * a3 + 8 * result);
    v7 = result - a3;
    do
    {
      v8 = fabs(*v6);
      if (v8 > v5)
      {
        v5 = v8;
      }

      v6 += a5;
      --v7;
    }

    while (v7);
  }

  if (result + 1 < a2)
  {
    v9 = (a4 + 8 * a5 * result + 8 * (result + 1));
    v10 = ~result + a2;
    do
    {
      v11 = *v9++;
      v12 = fabs(v11);
      if (v12 > v5)
      {
        v5 = v12;
      }

      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_236701784(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v10 = a3 + 8 * a2 * a4;
  if (a2 < 48)
  {
    return sub_236701238(a1, a2, a2, 0, a3, a4, a5, v10, a6, a7);
  }

  v12 = 0;
  v28 = a4 + 1;
  v24 = a1 - a2;
  v25 = a3 + 8 * a2 * a4;
  v26 = a5;
  v29 = a6;
  do
  {
    v13 = v8 + 8 * v28 * v12;
    v14 = v10 + 16 * v12;
    v15 = a2 - v12;
    if (a2 - v12 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = a2 - v12;
    }

    v17 = a1;
    v18 = a1 - v12;
    v19 = a5 + 4 * v12;
    v20 = sub_236701238(a1 - v12, a2 - v12, v16, v12, v8 + 8 * v28 * v12, a4, v19, v10 + 16 * v12, a6, a7);
    if (v20)
    {
      v21 = v20;
      if (v16 + v12 < a2 && v20 >= 1)
      {
        v22 = (v15 - v16);
        v23 = v13 + 8 * v28 * v16;
        sub_23674491C(v22, v20, v13 + 8 * v16, a4, v14, v23, a4, a7);
        if (v17 > a2)
        {
          sub_2367490D0(v24, v22, v21, v13 + 8 * v16 + 8 * v22, v13 + 8 * v16, a4, v14, v23 + 8 * v22, a4, a7);
        }
      }

      a1 = v17;
      goto LABEL_15;
    }

    if (v15 < 49)
    {
      break;
    }

    v21 = sub_236701238(v18, a2 - v12, a2 - v12, v12, v13, a4, v19, v14, v29, a7);
    a1 = v17;
    if (!v21)
    {
      break;
    }

LABEL_15:
    v12 = (v21 + v12);
    a5 = v26;
    v8 = a3;
    a6 = v29;
    v10 = v25;
  }

  while (v12 < a2);
  return v12;
}

uint64_t sub_236701A2C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a2;
  v78 = a1;
  if (a1 > 192 || a2 > 96)
  {
    if (a8)
    {
      v11 = (a1 - 1) / 96 + 1;
      v83 = a4;
      v12 = (a2 - 1) / 96 + 1;
      v81[0] = a1;
      v81[1] = a2;
      v82 = a3;
      v84 = a2;
      v79 = 0u;
      v80 = 0u;
      sub_236792218(a8, a9 + 64, &v79);
      *(&v80 + 1) = v81;
      v17 = v12 * v11;
      v18 = *(a9 + 80) + 48 * atomic_fetch_add((a9 + 88), v17);
      if (v17 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v17; ++i)
        {
          v21 = v18 + 48 * i;
          atomic_store(0, v21);
          *(v21 + 4) = 0;
          *(v21 + 8) = 0;
          v22 = *(v21 + 16);
          do
          {
            _X5 = *(v21 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X12] }

            _ZF = _X4 == v22;
            v22 = _X4;
          }

          while (!_ZF);
          *(v21 + 32) = 0;
          *(v21 + 40) = 0;
        }
      }

      v77 = v18;
      if (v10 >= 1)
      {
        v71 = 0;
        v75 = v11;
        v70 = 96;
        do
        {
          v27 = v71;
          v28 = v71 / 0x60 * v75;
          v29 = v77 + 48 * v28;
          v30 = v29 + 48 * (v71 / 0x60);
          v73 = v71 / 0x60;
          sub_236792228(&v79, v71 / 0x60, sub_236702178, 1u, _X4, _X5, v15, v16, v30);
          v31 = v78;
          v71 += 96;
          if (v27 + 96 < v78)
          {
            v32 = v70;
            do
            {
              sub_236792228(&v79, v28 + v32 / 0x60uLL, sub_236702274, 2u, _X4, _X5, v15, v16, v30);
              v31 = v78;
              v32 += 96;
            }

            while (v32 < v78);
          }

          v33 = v70;
          if (v71 >= v10)
          {
            break;
          }

          do
          {
            if (v33 < v31)
            {
              v34 = v33 / 0x60u;
              v35 = v33;
              do
              {
                v36 = v35 / 0x60uLL;
                v37 = (v73 + v33 / 0x60u * v75) * v75 + v36;
                if (v35 / 0x60 == v34)
                {
                  sub_236792228(&v79, v37, sub_236702330, 2u, _X4, _X5, v15, v16, v29 + 48 * v34);
                }

                else
                {
                  sub_236792228(&v79, v37, sub_236702330, 3u, _X4, _X5, v15, v16, v29 + 48 * v36);
                }

                v35 += 96;
                v31 = v78;
              }

              while (v35 < v78);
            }

            v33 += 96;
            LODWORD(v10) = a2;
          }

          while (v33 < a2);
          v70 += 96;
        }

        while (v71 < a2);
      }

      if (sub_236792900(&v79))
      {
        sub_2366FCEC8(a8);
      }

      return v84;
    }

    else if (a2 >= 1)
    {
      v39 = 0;
      v61 = a1 - 96;
      v58 = a2 - 96;
      v62 = 768 * a4 + 768;
      v57 = a3 + v62;
      v59 = 96;
      v60 = a3 + 768;
      for (j = a4; ; v9 = j)
      {
        if (v10 - v39 >= 96)
        {
          v40 = 96;
        }

        else
        {
          v40 = v10 - v39;
        }

        v74 = v40;
        v81[0] = v40;
        v86 = 76;
        if (a1 - v39 >= 96)
        {
          v41 = 96;
        }

        else
        {
          v41 = a1 - v39;
        }

        LODWORD(v79) = 0;
        v85 = v9;
        dpotf2_NEWLAPACK();
        v42 = v81[0];
        if (v41 > v81[0])
        {
          APL_dtrsm();
          v42 = v81[0];
        }

        if (v42 < v74)
        {
          break;
        }

        a1 = v78;
        v56 = v39 + 96;
        if (v39 + 96 < v78)
        {
          v43 = v60;
          v44 = v59;
          v45 = v61;
          do
          {
            v46 = v45 - 96;
            APL_dtrsm();
            a1 = v78;
            v43 += 768;
            v44 += 96;
            v45 = v46;
          }

          while (v44 < v78);
        }

        if (v56 >= v10)
        {
          return v10;
        }

        v47 = v59;
        v66 = v57;
        v68 = v60;
        v48 = v58;
        v65 = v61;
        do
        {
          v63 = v48;
          v76 = v10 - v47;
          v64 = v47;
          if (v47 < a1)
          {
            v49 = 0;
            v50 = v47;
            v51 = v66;
            v52 = v68;
            v53 = v65;
            do
            {
              v54 = v53;
              _VF = __OFSUB__(v53, 96);
              v53 -= 96;
              if (v53 < 0 != _VF)
              {
                v55 = v54;
              }

              else
              {
                v55 = 96;
              }

              if (v49 || (cblas_dsyrk_NEWLAPACK(), v76 < v55))
              {
                APL_dgemm();
              }

              v51 += 768;
              v52 += 768;
              v49 -= 768;
              v50 += 96;
              a1 = v78;
            }

            while (v50 < v78);
          }

          v47 = v64 + 96;
          v65 -= 96;
          v48 = v63 - 96;
          v10 = a2;
          v66 += v62;
          v68 += 768;
        }

        while (v64 + 96 < a2);
        v61 -= 96;
        v59 += 96;
        v60 += v62;
        v58 -= 96;
        v39 = v56;
        v57 += v62;
      }

      return 0;
    }
  }

  else
  {
    v81[0] = a2;
    v86 = 76;
    LODWORD(v79) = 0;
    v85 = a4;
    dpotf2_NEWLAPACK();
    v10 = v81[0];
    if (v78 > v81[0])
    {
      APL_dtrsm();
      return v81[0];
    }
  }

  return v10;
}

uint64_t sub_236702178(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  if (*v2 - 96 * a2 >= 96)
  {
    v4 = 96;
  }

  else
  {
    v4 = *v2 - 96 * a2;
  }

  v3 = v2[1];
  if (v3 - 96 * a2 >= 96)
  {
    v5 = 96;
  }

  else
  {
    v5 = v3 - 96 * a2;
  }

  result = dpotf2_NEWLAPACK();
  v7 = v5;
  if (v4 > v5)
  {
    result = APL_dtrsm();
    v7 = v5;
  }

  if (v7 != v5)
  {
    v2[6] = 0;
  }

  return result;
}

uint64_t sub_236702330(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = *(*a1 + 24);
  v5 = (*v4 - 1) / 96 + 1;
  v6 = 3 * (a2 % v5);
  v7 = 96 * (a2 % v5);
  v8 = (v5 * v5);
  v9 = 3 * (a2 / v8);
  v10 = 96 * (a2 / v8);
  if (*v4 - 32 * v6 >= 96)
  {
    v11 = 96;
  }

  else
  {
    v11 = *v4 - 32 * v6;
  }

  v12 = v4[1] - 32 * v9;
  if (8 * v7 != 8 * v10)
  {
    return APL_dgemm();
  }

  result = cblas_dsyrk_NEWLAPACK();
  if (v12 < v11)
  {
    return APL_dgemm();
  }

  return result;
}

uint64_t sub_2367024D8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (a4 < 1)
  {
    return 0;
  }

  v15 = 0;
  v16 = a4;
  v17 = 8 * a7 + 8;
  while (*a6 != 0.0)
  {
    a2.n128_u64[0] = *a6;
    sub_236778EA4(a1, v16, a6, a7, a8, a10, a2);
    *a6 = *a8;
    v15 = (v15 + 1);
    a1 = (a1 - 1);
    a6 = (a6 + v17);
    if (!--v16)
    {
      return a4;
    }
  }

  return v15;
}

uint64_t sub_236702598(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = a2;
  v28[2] = *MEMORY[0x277D85DE8];
  if (a2 < 48)
  {
    return sub_2367024D8(a1, a5, a2, a2, a4, a3, a4, v28, a9, a8);
  }

  LODWORD(v13) = 0;
  v27 = a4 + 1;
  v25 = a1 - a2;
  do
  {
    v14 = &v11[v27 * v13];
    v15 = v12 - v13;
    if (v12 - v13 >= 48)
    {
      v16 = 48;
    }

    else
    {
      v16 = v15;
    }

    v17 = a1;
    v18 = sub_2367024D8((a1 - v13), a5, a2, v16, a4, &v11[v27 * v13], a4, v28, a9, a8);
    v13 = (v18 + v13);
    if (v18 >= 1 && v13 < v12)
    {
      v20 = v18;
      v21 = v15 - v18;
      v22 = v14 + 8 * v18;
      v23 = v14 + 8 * v27 * v18;
      sub_2368013F0(v21, v18, v22, a4, v14, v23, a4, a8);
      if (v17 > v12)
      {
        sub_2368021E4(v25, v21, v20, v22 + 8 * v21, v22, a4, v14, v23 + 8 * v21, a4, a8);
      }
    }

    v11 = a3;
    a1 = v17;
  }

  while (v13 < v12);
  return v13;
}

uint64_t sub_236702720(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4 - 1;
  if (a4 >= 1)
  {
    v10 = 0;
    v11 = a6 + 8;
    do
    {
      cblas_dscal_NEWLAPACK();
      if (v9 >= 1)
      {
        cblas_dger_NEWLAPACK();
      }

      ++v10;
      v11 += 8 * a7 + 8;
      --v9;
    }

    while (a4 != v10);
  }

  if (a1 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
    cblas_dgemm_NEWLAPACK();
  }

  return a4;
}

uint64_t sub_2367028D0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v12 = a2;
  if (a3 >= 100)
  {
    v14 = 0;
    do
    {
      v15 = a3 - v14;
      if (a3 - v14 >= 100)
      {
        v16 = 100;
      }

      else
      {
        v16 = v15;
      }

      sub_236702720(a1 - v14, a2, v15, v16, a5, a4 + 8 * (a5 + 1) * v14, a5);
      v14 += v16;
    }

    while (v14 < a3);
  }

  else
  {
    sub_236702720(a1, a2, a3, a3, a5, a4, a5);
  }

  v17 = __OFSUB__(v12, a3);
  v18 = v12 - a3;
  if (!((v18 < 0) ^ v17 | (v18 == 0)))
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a1 - a3 >= 1 && v18 >= 1)
  {
    cblas_dgemm_NEWLAPACK();
  }

  return a3;
}

uint64_t sub_236702A2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = a3;
  v20 = a1;
  v21 = a10;
  if (a1 > 767 || a3 > 383)
  {
    if (a17)
    {
      v22 = (a1 - 1) / 384;
      v23 = v22 + 1;
      v76[0] = a1;
      v76[1] = a2;
      v78 = a4;
      v77 = a3;
      v24 = (a2 - 1) / 384 + 1;
      v79 = a5;
      v80 = a6;
      v81 = a7;
      v82 = a8;
      v83 = a9;
      v84 = a10;
      v85 = a14;
      v86 = a12;
      v87 = a13;
      v88 = a16;
      v74 = 0u;
      v75 = 0u;
      sub_236792218(a17, a18, &v74);
      *(&v75 + 1) = v76;
      v25 = v24 * (v22 + 1);
      v30 = (*(a12 + 24))(48 * v25);
      if (v25 >= 1)
      {
        _X0 = 0;
        for (i = 0; i != v25; ++i)
        {
          v33 = v30 + 48 * i;
          atomic_store(0, v33);
          *(v33 + 4) = 0;
          *(v33 + 8) = 0;
          v34 = *(v33 + 16);
          do
          {
            _X5 = *(v33 + 24);
            __asm { CASPAL          X4, X5, X0, X1, [X11] }

            _ZF = _X4 == v34;
            v34 = _X4;
          }

          while (!_ZF);
          *(v33 + 32) = 0;
          *(v33 + 40) = 0;
        }
      }

      if (v19 >= 1)
      {
        v64 = v30;
        v65 = 0;
        v39 = 0;
        v40 = v23;
        v62 = 48 * v22 + 48;
        v69 = v23;
        v70 = 384;
        v63 = v19;
        v72 = v30;
        do
        {
          v66 = v39 / 0x180 * v40;
          v68 = v39 / 0x180;
          v41 = v30 + 48 * v66;
          v42 = v41 + 48 * (v39 / 0x180);
          sub_236792228(&v74, v39 / 0x180, sub_236703450, 1u, _X4, _X5, v28, v29, v42);
          v43 = v39;
          if (v39)
          {
            v44 = v40;
            v45 = 0;
            v46 = v64;
            v47 = v65;
            do
            {
              v48 = v42;
              v49 = v44;
              sub_236792228(&v74, v47, sub_2367039D4, 2u, _X4, _X5, v28, v29, v46);
              v44 = v49;
              v42 = v48;
              v45 += 384;
              v46 += v62;
              v47 += v44;
            }

            while (v45 < v43);
          }

          v39 = v43 + 384;
          if (v43 + 384 < v20)
          {
            v50 = v70;
            do
            {
              sub_236792228(&v74, v66 + v50 / 0x180uLL, sub_236703B44, 2u, _X4, _X5, v28, v29, v72 + 48 * (v66 + v50 / 0x180uLL));
              v50 += 384;
            }

            while (v50 < v20);
          }

          if (v39 < a2)
          {
            v51 = v70;
            do
            {
              sub_236792228(&v74, v68 + v51 / 0x180u * v69, sub_236703D30, 2u, _X4, _X5, v28, v29, v42);
              v51 += 384;
            }

            while (v51 < a2);
            v67 = v66 * v24;
            v52 = v70;
            do
            {
              if (v39 < v20)
              {
                v53 = v70;
                do
                {
                  sub_236792228(&v74, v67 + v52 / 0x180u * v69 + v53 / 0x180uLL, sub_2367040E4, 3u, _X4, _X5, v28, v29, v41 + 48 * (v53 / 0x180uLL));
                  v53 += 384;
                }

                while (v53 < v20);
              }

              v52 += 384;
            }

            while (v52 < a2);
          }

          v40 = v69;
          v70 += 384;
          v64 += 48;
          ++v65;
          v19 = v63;
          v30 = v72;
        }

        while (v39 < v63);
      }

      if (sub_236792900(&v74))
      {
        sub_2366FCEC8(a17);
      }

      (*(a12 + 32))(v30);
    }

    else
    {
      if (a3 >= 384)
      {
        v54 = 0;
        v55 = a5 + 1;
        do
        {
          v58 = v19 - v54;
          if (v19 - v54 >= 384)
          {
            v59 = 384;
          }

          else
          {
            v59 = v58;
          }

          v60 = v21;
          sub_2367030A0(v20 - v54, a2 - v54, v58, v59, v54, a4 + 8 * v55 * v54, a5, a6, a7, v21 + 4 * v54, a13);
          v21 = v60;
          v54 += v59;
        }

        while (v54 < v19);
      }

      else
      {
        sub_2367030A0(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
      }

      if (a2 > v19)
      {
        cblas_dtrsm_NEWLAPACK();
      }

      if (v20 - v19 >= 1 && a2 - v19 >= 1)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    sub_2367030A0(a1, a2, a3, a3, 0, a4, a5, a6, a7, a10, a13);
    if (a2 > v19)
    {
      cblas_dtrsm_NEWLAPACK();
    }

    if (v20 - v19 >= 1 && a2 - v19 >= 1)
    {
LABEL_46:
      cblas_dgemm_NEWLAPACK();
    }
  }

  return v19;
}

uint64_t sub_2367030A0(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a4 >= 1)
  {
    v13 = 0;
    v32 = a6 + 8 * ~a7 * a5;
    v38 = (a5 + a3);
    v34 = 8 * a7 + 8;
    v35 = a10 - 4 * a5;
    v33 = a3 - 2;
    v39 = a3 + 1;
    do
    {
      if (a3 - v13 < 1)
      {
        v15 = 0.0;
      }

      else
      {
        v14 = v39 - v13;
        v15 = 0.0;
        v16 = (a6 + 8 * v13 * a7 + 8 * v13);
        do
        {
          v17 = *v16++;
          v18 = fabs(v17);
          if (v15 <= v18)
          {
            v15 = v18;
          }

          --v14;
        }

        while (v14 > 1);
      }

      if (v15 >= *(a11 + 24))
      {
        v20 = (a6 + 8 * v13 * a7 + 8 * v13);
        v21 = v13;
        v22 = v13;
        if (a3 > v13)
        {
          while (fabs(*v20) != v15)
          {
            ++v21;
            ++v20;
            if (a3 == v21)
            {
              v22 = v13;
              goto LABEL_18;
            }
          }

          v22 = v21;
        }

LABEL_18:
        if (v13 != v22)
        {
          v23 = v13 + a5;
          v24 = *(a10 + 4 * v13);
          v25 = v22 + a5;
          *(a10 + 4 * v13) = *(v35 + 4 * v25);
          *(v35 + 4 * v25) = v24;
          if (v38 >= 1)
          {
            v26 = v32;
            v27 = v38;
            do
            {
              v28 = *(v26 + 8 * v23);
              *(v26 + 8 * v23) = *(v26 + 8 * v25);
              *(v26 + 8 * v25) = v28;
              v26 += 8 * a7;
              --v27;
            }

            while (v27);
          }

          if (a2 > a3)
          {
            cblas_dswap_NEWLAPACK();
          }
        }

        v19 = v13 + 1;
        cblas_dscal_NEWLAPACK();
        if (a3 - v13 >= 2 && ~v13 + a4 >= 1)
        {
          cblas_dger_NEWLAPACK();
        }
      }

      else
      {
        *(a6 + 8 * v13 * a7 + 8 * v13) = 0x3E50000000000000;
        v19 = v13 + 1;
        if (v13 + 1 < a3)
        {
          bzero((a6 + 8 + v34 * v13), 8 * (v33 - v13) + 8);
        }
      }

      v13 = v19;
    }

    while (v19 != a4);
  }

  if (a1 > a3)
  {
    cblas_dtrsm_NEWLAPACK();
  }

  if (a3 > a4)
  {
    cblas_dtrsm_NEWLAPACK();
    cblas_dgemm_NEWLAPACK();
  }

  return a4;
}

void sub_236703450(uint64_t a1, uint64_t a2, int64x2_t a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v4 = *v3;
  v5 = v3[1];
  v6 = 3 * (a2 % ((*v3 - 1) / 384 + 1));
  v7 = 384 * (a2 % ((*v3 - 1) / 384 + 1));
  v8 = v7 + 384;
  if (v7 + 384 < *v3)
  {
    v4 = v7 + 384;
  }

  v66 = v4;
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7 + 384;
  }

  v65 = v9;
  v10 = v3[2];
  if (v8 < v10)
  {
    v10 = v7 + 384;
  }

  v68 = v10;
  v11 = (v10 - (v6 << 7));
  v12 = *(v3 + 2);
  v13 = *(v3 + 3);
  v69 = v7;
  v14 = v12 + 8 * (v7 * v13 + v7);
  v67 = v3;
  v15 = *(v3 + 9);
  v16 = (v15 + 4 * v7);
  if (v11 >= 1)
  {
    v17 = 0;
    v18 = *(v67 + 11);
    a3 = vdupq_n_s64(v11 - 1);
    v19 = (v15 + 4 * v69 + 8);
    v20 = xmmword_23681F910;
    v21 = xmmword_23681F920;
    v22 = vdupq_n_s64(4uLL);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(a3, v21));
      if (vuzp1_s16(v23, *a3.i8).u8[0])
      {
        *(v19 - 2) = v17;
      }

      if (vuzp1_s16(v23, *&a3).i8[2])
      {
        *(v19 - 1) = v17 + 1;
      }

      if (vuzp1_s16(*&a3, vmovn_s64(vcgeq_u64(*&a3, *&v20))).i32[1])
      {
        *v19 = v17 + 2;
        v19[1] = v17 + 3;
      }

      v17 += 4;
      v20 = vaddq_s64(v20, v22);
      v21 = vaddq_s64(v21, v22);
      v19 += 4;
    }

    while (((v11 + 3) & 0xFFFFFFFC) != v17);
    v24 = 0;
    v72 = 8 * v13 + 8;
    v71 = v11 - 2;
    v70 = v14 + 8;
    v73 = v68 - v69 + 1;
    do
    {
      if (v11 - v24 < 1)
      {
        a3.i64[0] = 0;
      }

      else
      {
        v25 = v73 - v24;
        a3.i64[0] = 0;
        v26 = (v14 + 8 * v24 * v13 + 8 * v24);
        do
        {
          v27 = *v26++;
          v28 = fabs(v27);
          if (*a3.i64 <= v28)
          {
            *a3.i64 = v28;
          }

          --v25;
        }

        while (v25 > 1);
      }

      v29 = (v14 + 8 * v24 * v13 + 8 * v24);
      v30 = v24;
      if (*a3.i64 >= *(v18 + 24))
      {
        while (fabs(*v29) != *a3.i64)
        {
          ++v30;
          ++v29;
          if (v11 == v30)
          {
            LODWORD(v30) = v24;
            break;
          }
        }

        if (v24 != v30)
        {
          v32 = v16[v24];
          v16[v24] = v16[v30];
          v16[v30] = v32;
          v33 = v14;
          v34 = v11;
          do
          {
            v35 = *(v33 + 8 * v24);
            *(v33 + 8 * v24) = *(v33 + 8 * v30);
            *(v33 + 8 * v30) = v35;
            v33 += 8 * v13;
            --v34;
          }

          while (v34);
        }

        v31 = v24 + 1;
        cblas_dscal_NEWLAPACK();
        if (v11 - v24 >= 2)
        {
          LODWORD(v62) = v13;
          cblas_dger_NEWLAPACK();
        }
      }

      else
      {
        *(v14 + 8 * v24 * v13 + 8 * v24) = 0x3E50000000000000;
        v31 = v24 + 1;
        if (v24 + 1 < v11)
        {
          bzero((v70 + v24 * v72), 8 * (v71 - v24) + 8);
        }
      }

      v24 = v31;
    }

    while (v31 != v11);
  }

  v36 = v67;
  v37 = (*(v67 + 8) + 4 * v69);
  MEMORY[0x28223BE20](a3);
  v39 = &v64 - ((v38 + 15) & 0x7FFFFFFF0);
  memcpy(v39, v37, 4 * v11);
  if (v11 >= 1)
  {
    v41 = v11;
    v42 = v16;
    do
    {
      v43 = *v42++;
      *v37++ = *&v39[4 * v43];
      --v41;
    }

    while (v41);
  }

  v44 = v66 - v68;
  v45 = (v65 - v68);
  if (v66 - v68 > 0)
  {
    LODWORD(v62) = v36[6];
    v61 = v14 + 8 * v11;
    LODWORD(v60) = v62;
    cblas_dtrsm_NEWLAPACK();
  }

  if (v45 >= 1)
  {
    v46 = *(v36 + 4) + 8 * *(v36 + 5) * v69;
    MEMORY[0x28223BE20](v40);
    v47 = 0;
    v48 = 8 * *(v36 + 5);
    v49 = v46;
    do
    {
      if (v11 >= 1)
      {
        v50 = v49;
        v51 = v59;
        v52 = v11;
        do
        {
          *v51++ = *v50;
          v50 = (v50 + v48);
          --v52;
        }

        while (v52);
        v53 = 0;
        v54 = v16;
        v55 = v11;
        do
        {
          v56 = *v54++;
          *(v49 + v53) = v59[v56];
          v53 += v48;
          --v55;
        }

        while (v55);
      }

      ++v47;
      ++v49;
    }

    while (v47 != v45);
    cblas_dtrsm_NEWLAPACK();
    if (v44 >= 1)
    {
      v57 = *(v36 + 5);
      v58 = *(v36 + 6) + 8 * (v68 - v36[2]);
      v63 = *(v36 + 7);
      v62 = v58;
      LODWORD(v61) = v57;
      v60 = v46;
      cblas_dgemm_NEWLAPACK();
    }
  }
}

uint64_t sub_2367039D4(uint64_t result, uint64_t a2)
{
  v20[384] = *MEMORY[0x277D85DE8];
  v2 = *(*result + 24);
  v3 = *(v2 + 4);
  v4 = (*v2 - 1) / 384 + 1;
  v5 = a2 / v4;
  if (v3 >= 384 * v5 + 384)
  {
    v3 = 384 * v5 + 384;
  }

  v19 = (v3 - 384 * v5);
  if (v19 >= 1)
  {
    v6 = 0;
    v7 = 384 * (a2 % v4);
    v8 = *(v2 + 72) + 4 * v7;
    v9 = *(v2 + 24);
    v10 = *(v2 + 16) + 8 * v9 * 384 * v5 + 8 * v7;
    v11 = *(v2 + 8);
    if (v11 >= v7 + 384)
    {
      v11 = v7 + 384;
    }

    v12 = v11 - v7;
    v13 = 8 * (v11 - v7);
    v14 = v10;
    do
    {
      result = __memcpy_chk();
      v15 = v8;
      v16 = v14;
      v17 = v13;
      if (v12 >= 1)
      {
        do
        {
          v18 = *v15++;
          *v16++ = v20[v18];
          v17 -= 8;
        }

        while (v17);
      }

      ++v6;
      v14 += v9;
    }

    while (v6 != v19);
  }

  return result;
}

void sub_236703B44(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 24);
  v3 = (*v2 - 1) / 384 + 1;
  v4 = 3 * (a2 % v3);
  v5 = 3 * (a2 / v3);
  if ((*v2 - 384 * (a2 % v3)) >= 384)
  {
    v6 = 384;
  }

  else
  {
    v6 = *v2 - 384 * (a2 % v3);
  }

  if ((v2[1] - 384 * (a2 / v3)) >= 384)
  {
    v7 = 384;
  }

  else
  {
    v7 = v2[1] - 384 * (a2 / v3);
  }

  cblas_dtrsm_NEWLAPACK();
  v8 = v2[2];
  v9 = v8 - (v5 << 7);
  if (v7 < v9)
  {
    v9 = v7;
  }

  v10 = v7 - (v9 & ~(v9 >> 31));
  v11 = v8 - (v4 << 7);
  if (v6 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  v13 = v6 - (v12 & ~(v12 >> 31));
  if (v12 >= 1 && v10 >= 1)
  {
    cblas_dgemm_NEWLAPACK();
  }

  if (v10 >= 1 && v13 >= 1)
  {
    cblas_dgemm_NEWLAPACK();
  }
}

void sub_236703D30(uint64_t a1, uint64_t a2, __n128 a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5 = (*v3 - 1) / 384 + 1;
  v6 = a2 / v5;
  v7 = 3 * (a2 % v5);
  v8 = v7 << 7;
  v9 = 3 * v6;
  v10 = (v9 << 7);
  v11 = *v3 - (v7 << 7);
  if (v11 >= 384)
  {
    v12 = 384;
  }

  else
  {
    v12 = v11;
  }

  v4 = *(v3 + 1);
  if (v4 - (v9 << 7) >= 384)
  {
    v13 = 384;
  }

  else
  {
    v13 = v4 - (v9 << 7);
  }

  v14 = *(v3 + 2);
  v15 = v14 - (v7 << 7);
  if (v15 >= 384)
  {
    v16 = 384;
  }

  else
  {
    v16 = v15;
  }

  v17 = v8;
  v18 = v3[2];
  v19 = v3[3];
  v20 = v18 + 8 * (v8 * v19 + v8);
  v62 = v3[9] + 4 * v8;
  v21 = v14 - (v9 << 7);
  if (v13 < v21)
  {
    v21 = v13;
  }

  v22 = v21 & ~(v21 >> 31);
  v23 = (v13 - v22);
  if (v12 >= v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = v12;
  }

  if (v21 >= 1)
  {
    v54 = v24;
    v56 = v15;
    v58 = v20;
    v59 = (v13 - v22);
    v60 = v16;
    v53[1] = v53;
    v55 = v10;
    v57 = v17;
    v25 = v18 + 8 * v19 * v10 + 8 * v17;
    MEMORY[0x28223BE20](a3);
    v26 = 0;
    v61 = v3;
    v27 = v3[3];
    v28 = v25;
    do
    {
      __memcpy_chk();
      v29 = v62;
      v30 = v28;
      v31 = v12;
      if (v11 >= 1)
      {
        do
        {
          v32 = *v29++;
          *v30++ = v49[v32];
          --v31;
        }

        while (v31);
      }

      ++v26;
      v28 += v27;
    }

    while (v26 != v22);
    v16 = v60;
    cblas_dtrsm_NEWLAPACK();
    v3 = v61;
    v14 = *(v61 + 2);
    v23 = v59;
    v17 = v57;
    LODWORD(v10) = v55;
    v24 = v54;
  }

  if (v23 >= 1)
  {
    v61 = v53;
    v33 = v24 & ~(v24 >> 31);
    v34 = v22 + v10 - v14;
    v35 = v3[4] + 8 * v3[5] * v17 + 8 * v34;
    v36 = MEMORY[0x28223BE20](a3);
    v37 = 0;
    v38 = 8 * v3[5];
    v39 = v35;
    do
    {
      if (v36 >= 1)
      {
        v40 = v39;
        v41 = v49;
        v42 = v16;
        do
        {
          *v41++ = *v40;
          v40 = (v40 + v38);
          --v42;
        }

        while (v42);
        v43 = 0;
        v44 = v62;
        v45 = v16;
        do
        {
          v46 = *v44++;
          *(v39 + v43) = v49[v46];
          v43 += v38;
          --v45;
        }

        while (v45);
      }

      ++v37;
      ++v39;
    }

    while (v37 != v23);
    cblas_dtrsm_NEWLAPACK();
    if (v12 - v33 >= 1)
    {
      v47 = v3[5];
      v48 = v3[6] + 8 * v3[7] * v34 + 8 * (v33 + v17 - *(v3 + 2));
      v52 = v3[7];
      v50 = v47;
      v49[380] = v35;
      v51 = v48;
      cblas_dgemm_NEWLAPACK();
    }
  }
}

uint64_t sub_2367040E4(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 24);
  v3 = v2[1];
  v4 = (*v2 - 1) / 384 + 1;
  v5 = 3 * (a2 % v4);
  v6 = 3 * ((a2 % (v4 + v4 * ((v3 - 1) / 384))) / v4);
  if (*v2 - (v5 << 7) >= 384)
  {
    v7 = 384;
  }

  else
  {
    v7 = *v2 - (v5 << 7);
  }

  if (v3 - (v6 << 7) >= 384)
  {
    v8 = 384;
  }

  else
  {
    v8 = v3 - (v6 << 7);
  }

  v9 = v2[2];
  v10 = v9 - (v6 << 7);
  if (v8 < v10)
  {
    v10 = v8;
  }

  v11 = v8 - (v10 & ~(v10 >> 31));
  if (v7 >= v9 - (v5 << 7))
  {
    v12 = v9 - (v5 << 7);
  }

  else
  {
    v12 = v7;
  }

  if (v10 >= 1)
  {
    result = cblas_dgemm_NEWLAPACK();
  }

  v13 = v7 - (v12 & ~(v12 >> 31));
  if (v12 >= 1 && v11 >= 1)
  {
    result = cblas_dgemm_NEWLAPACK();
  }

  if (v13 >= 1 && v11 >= 1)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  return result;
}

uint64_t sub_236704344(int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a4 < 1)
  {
    return 0;
  }

  v17 = a6;
  v56 = 0;
  v21 = 0;
  v54 = a6 + 8 * ~a7 * a5;
  v52 = a10 - 4 * a5;
  v53 = a8 - 8 * a5 * a9;
  v22 = a11 - 4 * a5;
  v48 = 8 * a7;
  v49 = a7 + 1;
  v50 = 8 * a7 + 8;
  v51 = a6 + 8;
  v47 = a3 - 1;
  v45 = a1 - a3;
  v46 = a6 + 8 * a3;
  LODWORD(v23) = a4;
  while (1)
  {
    v24 = (v21 + 1);
    v25 = 0.0;
    if (v24 < a3)
    {
      v26 = (v51 + v50 * v21);
      v27 = v47 - v21;
      do
      {
        v28 = *v26++;
        v29 = fabs(v28);
        if (v25 <= v29)
        {
          v25 = v29;
        }

        --v27;
      }

      while (v27);
    }

    v30 = v25;
    if (a3 < a1)
    {
      v31 = (v46 + v48 * v21);
      v32 = v45;
      v30 = v25;
      do
      {
        v33 = *v31++;
        v34 = fabs(v33);
        if (v30 <= v34)
        {
          v30 = v34;
        }

        --v32;
      }

      while (v32);
    }

    v35 = *(a13 + 24);
    if (v30 >= v35 || fabs(*(v17 + 8 * v49 * v21)) >= v35)
    {
      v36 = v30 * *(a13 + 16);
      if (v36 <= fabs(*(v17 + 8 * v21 * a7 + 8 * v21)))
      {
        goto LABEL_25;
      }

      if (v36 <= v25)
      {
        if (v24 >= a3)
        {
LABEL_23:
          v41 = -1;
        }

        else
        {
          v40 = (v51 + v50 * v21);
          v41 = v21 + 1;
          while (fabs(*v40) < v25)
          {
            ++v41;
            ++v40;
            if (a3 == v41)
            {
              goto LABEL_23;
            }
          }
        }

        sub_236704748((v21 + a5), v41 + a5, a5 + a2, a5 + a3, v54, a7, v53, a9, v52);
LABEL_25:
        cblas_dscal_NEWLAPACK();
        if (~v21 + a1 >= 1 && (~v21 + a4) >= 1)
        {
          cblas_dger_NEWLAPACK();
        }

        ++v56;
        goto LABEL_29;
      }
    }

    v23 = v23 - 1;
    v37 = v23 + a5;
    v38 = v21 + a5;
    sub_236704748(v38, v23 + a5, a5 + a2, a5 + a3, v54, a7, v53, a9, v52);
    if (v21 == v23)
    {
      break;
    }

    v39 = *(v22 + 4 * v38);
    *(v22 + 4 * v38) = *(v22 + 4 * v37);
    *(v22 + 4 * v37) = v39;
    cblas_dswap_NEWLAPACK();
    v24 = v21;
LABEL_29:
    v21 = v24;
    v17 = a6;
    if (v24 >= v23)
    {
      goto LABEL_33;
    }
  }

  v17 = a6;
LABEL_33:
  if (a3 <= a4)
  {
    return v56;
  }

  v42 = v56;
  if (v56 > 0)
  {
    cblas_dtrsm_NEWLAPACK();
    sub_2367047C0(111, a1 - v56, a3 - a4, v56, v17 + 8 * v56, a7, v17 + 8 * a4 * a7, a7, v17 + 8 * a4 * a7 + 8 * v56, a7, a12, a14, a15, a16);
  }

  return v42;
}

uint64_t sub_236704748(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = *(a9 + 4 * result);
    *(a9 + 4 * result) = *(a9 + 4 * a2);
    *(a9 + 4 * a2) = v9;
    if (a4 >= 1)
    {
      v10 = a4;
      do
      {
        v11 = *(a5 + 8 * result);
        *(a5 + 8 * result) = *(a5 + 8 * a2);
        *(a5 + 8 * a2) = v11;
        a5 += 8 * a6;
        --v10;
      }

      while (v10);
    }

    result = (a3 - a4);
    if (a3 > a4)
    {
      return cblas_dswap_NEWLAPACK();
    }
  }

  return result;
}

uint64_t sub_2367047C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a2 - 1;
  if (a2 < 1)
  {
    v14 = a2 + 254;
  }

  v15 = (v14 >> 8) + 1;
  v16 = a3 - 1;
  if (a3 < 1)
  {
    v16 = a3 + 254;
  }

  v17 = ((v16 >> 8) + 1) * v15;
  if (v17 == 1 || a13 == 0)
  {

    return cblas_dgemm_NEWLAPACK();
  }

  else
  {
    v35 = xmmword_23681FB50;
    v27[0] = a2;
    v27[1] = a3;
    v27[2] = a4;
    v27[3] = 111;
    v28 = a1;
    v29 = a5;
    v30 = a7;
    v31 = a9;
    v32 = a6;
    v33 = a8;
    v34 = a10;
    v36 = a11;
    v37 = a12;
    v25 = 0u;
    v26 = 0u;
    sub_236792218(a13, a14, &v25);
    *(&v26 + 1) = v27;
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        sub_236792228(&v25, i, sub_236705DA0, 0, v20, v21, v22, v23, v25);
      }
    }

    result = sub_236792900(&v25);
    if (result)
    {
      return sub_2366FCEC8(a13);
    }
  }

  return result;
}

uint64_t sub_236704934(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a3 - 1;
  if (a3 < 1)
  {
    return 0;
  }

  v12 = a6;
  v13 = a5;
  v15 = a2;
  v69 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v81 = a5 + 8 * ~a6 * a4;
  v74 = a9 - 4 * a4;
  v75 = a7 - 8 * a4 * a8;
  v70 = (a2 - a3);
  v20 = a5 + 8;
  v21 = 8 * a6;
  v79 = 8 * a6 + 8;
  v66 = 8 * (~a3 + a2);
  v64 = a3 - 2;
  v65 = a1 - 2;
  v84 = 16 * a6;
  LODWORD(v22) = a3;
  v67 = a10 - 4 * a4;
  v73 = a5 + 8 * a3;
  v71 = a5 + 8;
  do
  {
    while (1)
    {
      v23 = (v18 + 1);
      v24 = 0.0;
      if (v23 < a3)
      {
        v25 = (v20 + v79 * v18);
        v26 = v78 - v18;
        do
        {
          v27 = *v25++;
          v28 = fabs(v27);
          if (v24 <= v28)
          {
            v24 = v28;
          }

          --v26;
        }

        while (v26);
      }

      v85 = v19;
      v29 = v24;
      if (a3 < a1)
      {
        v30 = (v73 + v21 * v18);
        v31 = a3;
        v29 = v24;
        do
        {
          v32 = *v30++;
          v33 = fabs(v32);
          if (v29 <= v33)
          {
            v29 = v33;
          }

          ++v31;
        }

        while (v31 < a1);
      }

      v34 = *(a12 + 24);
      v35 = v13 + 8 * v18 * v12;
      if (v29 >= v34 || fabs(*(v35 + 8 * v18)) >= v34)
      {
        v43 = v29 * *(a12 + 16);
        if (v43 <= fabs(*(v35 + 8 * v18)))
        {
          goto LABEL_34;
        }

        if (v43 <= v24)
        {
          if (v23 >= a3)
          {
LABEL_32:
            v48 = -1;
          }

          else
          {
            v47 = (v20 + v79 * v18);
            v48 = v18 + 1;
            while (fabs(*v47) < v24)
            {
              ++v48;
              ++v47;
              if (a3 == v48)
              {
                goto LABEL_32;
              }
            }
          }

          sub_236704748((v18 + a4), v48 + a4, a4 + v15, a4 + a3, v81, v12, v75, a8, v74);
LABEL_34:
          cblas_dscal_NEWLAPACK();
          if (~v18 + a1 >= 1 && ~v18 + a3 >= 1)
          {
            cblas_dger_NEWLAPACK();
          }

          v19 = (v85 + 1);
          v17 = 1;
          v12 = a6;
          v13 = a5;
          goto LABEL_63;
        }

        v77 = v17;
        v22 = v22 - 1;
        v44 = v22 + a4;
        v45 = v18 + a4;
        v46 = v12;
        sub_236704748(v45, v22 + a4, a4 + v15, a4 + a3, v81, v12, v75, a8, v74);
        goto LABEL_60;
      }

      v36 = 0.0;
      if (v23 < a3)
      {
        v37 = (a5 + v21 + v21 * v18 + 8 * v18);
        v38 = v78 - v18;
        do
        {
          v39 = fabs(*v37);
          if (v36 <= v39)
          {
            v36 = v39;
          }

          v37 = (v37 + v21);
          --v38;
        }

        while (v38);
      }

      if (v36 < v34)
      {
        v40 = v81;
        if (v15 <= a3)
        {
          v41 = v69;
        }

        else
        {
          v41 = v69;
          if (v19 > v69)
          {
            v42 = v17;
            cblas_dtrsm_NEWLAPACK();
            v17 = v42;
            v40 = v81;
            v12 = a6;
            v41 = v85;
            if (a3 > v85)
            {
              cblas_dgemm_NEWLAPACK();
              v17 = v42;
              v40 = v81;
              v12 = a6;
              v41 = v85;
            }
          }
        }

        v69 = v41;
        v15 = a2;
        if (a2 <= a3)
        {
          v20 = v71;
          goto LABEL_46;
        }

        v49 = (a7 + 8 * v18 * a8);
        v50 = v70;
        v20 = v71;
        do
        {
          v51 = *v49++;
          v52 = fabs(v51);
          if (v36 <= v52)
          {
            v36 = v52;
          }

          --v50;
        }

        while (v50);
      }

      v40 = v81;
LABEL_46:
      if (v36 < *(a12 + 24))
      {
        *(v35 + 8 * v18) = 0x7FF0000000000000;
        if (a1 > v23)
        {
          v53 = v17;
          bzero((v20 + v79 * v18), 8 * (v65 - v18) + 8);
          v17 = v53;
        }

        v13 = a5;
        if (v23 < a3)
        {
          v54 = 0;
          v55 = a5 + 8 * v18;
          v56 = (v64 - v18);
          v57 = vdupq_n_s64(v56);
          do
          {
            v58 = vmovn_s64(vcgeq_u64(v57, vorrq_s8(vdupq_n_s64(v54), xmmword_23681F920)));
            if (v58.i8[0])
            {
              *(v55 + v21 + v21 * v18) = 0;
            }

            if (v58.i8[4])
            {
              *(v55 + v21 * (v18 + 2)) = 0;
            }

            v54 += 2;
            v55 += v84;
          }

          while (((v56 + 2) & 0x1FFFFFFFELL) != v54);
        }

        if (v70 >= 1)
        {
          v59 = (a7 + 8 * v18 * a8);
          v60 = v17;
          bzero(v59, v66 + 8);
          v17 = v60;
        }

        v19 = (v85 + 1);
        v12 = a6;
        goto LABEL_63;
      }

      v77 = v17;
      v22 = v22 - 1;
      v44 = v22 + a4;
      v45 = v18 + a4;
      v46 = v12;
      sub_236704748(v45, v22 + a4, a4 + v15, a4 + a3, v40, v12, v75, a8, v74);
LABEL_60:
      if (v18 == v22)
      {
        break;
      }

      v61 = *(v67 + 4 * v45);
      *(v67 + 4 * v45) = *(v67 + 4 * v44);
      *(v67 + 4 * v44) = v61;
      cblas_dswap_NEWLAPACK();
      v23 = v18;
      v12 = v46;
      v13 = a5;
      v19 = v85;
      v15 = a2;
      v20 = v71;
      v17 = v77;
LABEL_63:
      v18 = v23;
      if (v23 >= v22)
      {
        goto LABEL_64;
      }
    }

    v12 = v46;
    v13 = a5;
    v19 = v85;
    v15 = a2;
    v20 = v71;
    LOBYTE(v17) = v77;
LABEL_64:
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v18 = v19;
    LODWORD(v22) = a3;
  }

  while (a3 > v19);
  if (v15 > a3 && v19 > v69)
  {
    v62 = v19;
    cblas_dtrsm_NEWLAPACK();
    if (a3 > v62)
    {
      cblas_dgemm_NEWLAPACK();
    }

    return v62;
  }

  return v19;
}

uint64_t sub_2367050AC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = a8;
  v21 = a5;
  v22 = a4;
  v24 = a1;
  v25 = a2;
  if (a3 >= 100)
  {
    v28 = 0;
    v29 = a5 + 1;
    do
    {
      if (a3 - v28 < 101)
      {
        break;
      }

      v30 = v24;
      v31 = sub_236704344(v24 - v28, v25 - v28, a3 - v28, 0x64u, v28, v22 + 8 * v29 * v28, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, a12, a13, a16, a17, a18);
      v24 = v30;
      a2 = v25;
      v22 = a4;
      v28 += v31;
    }

    while (v31);
    if (a2 > a3 && v28 >= 1)
    {
      LODWORD(v36) = a7;
      v37 = v24;
      cblas_dtrsm_NEWLAPACK();
      LODWORD(v24) = v37;
      a2 = v25;
      v22 = a4;
      if (a3 > v28)
      {
        v36 = a6 + 8 * v28 * a7;
        cblas_dgemm_NEWLAPACK();
        LODWORD(v24) = v37;
        a2 = v25;
        v22 = a4;
      }
    }

    v32 = v22 + 8 * v29 * v28;
    v26 = v24;
    v21 = a5;
    v27 = sub_236704934(v24 - v28, a2 - v28, a3 - v28, v28, v32, a5, a6 + 8 * v28 * a7, a7, a10 + 4 * v28, a11 + 4 * v28, v36, a13) + v28;
    v18 = a8;
  }

  else
  {
    v26 = a1;
    v27 = sub_236704934(a1, a2, a3, 0, a4, a5, a6, a7, a10, a11, v36, a13);
  }

  v33 = (v26 - a3);
  if (v33 >= 1)
  {
    v34 = (v25 - a3);
    if (v34 >= 1)
    {
      sub_2367047C0(112, v33, v34, v27, a4 + 8 * a3, v21, a6, a7, v18, a9, a12, a16, a17, a18);
    }
  }

  return v27;
}

uint64_t sub_23670535C(int a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = a2;
  v99 = a4;
  v10 = a4 + 1;
  v11 = *(*(a2 + 120) + 8 * v10) - *(*(a2 + 120) + 8 * a4);
  v12 = *(a2 + 88);
  v112 = v10;
  v106 = *(v12 + 4 * v10);
  v105 = *(v12 + 4 * a4);
  v13 = (v106 - v105);
  v97 = *(a3[5] + 8 * a4);
  v14 = v97 + 1;
  v96 = *v97;
  v15 = 2 * v13;
  v116 = a1 - 3;
  if ((a1 - 3) >= 2)
  {
    v15 = 0;
  }

  v109 = v15;
  v16 = atomic_load((a3[6] + 4 * a4));
  *(a3[5] + 8 * a4) = (*(a2 + 24))(8 * (2 * (v16 + v13) + (v16 + v11) * (v16 + v13)) + 4 * (v16 + v13) + 8);
  v102 = a3;
  v17 = *(a3[5] + 8 * a4);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v98 = v16;
  *v17 = 8 * (2 * (v16 + v13) + (v16 + v11) * (v16 + v13)) + 4 * (v16 + v13) + 8;
  v101 = a1;
  if (a1 == 4)
  {
    v18 = a3[5];
    v19 = v99;
    v20 = atomic_load((a3[6] + 4 * v99));
    v17 = *(v18 + 8 * v19);
    v21 = v112;
  }

  else
  {
    v20 = 0;
    v21 = v112;
    v19 = v99;
  }

  v23 = *(v8 + 88);
  v24 = *(v23 + 4 * v21);
  v25 = *(v23 + 4 * v19);
  v26 = v24 - v25 + v20;
  v27 = v17 + 1;
  v95 = v20 + *(*(v8 + 120) + 8 * v21) - *(*(v8 + 120) + 8 * v19);
  if (v116 >= 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = 2 * v26;
  }

  v29 = 8 * v95;
  v100 = v8;
  v113 = v17;
  v115 = v17 + 1;
  v93 = v28;
  v94 = v24 - v25 + v20;
  if (v13 >= 1)
  {
    v30 = &v14[v11 * v13 + v109];
    v31 = v24 - v25 + v20;
    v32 = &v17[v26 * v95 + 1 + v28];
    v33 = (v106 - v105);
    do
    {
      v34 = *v30++;
      *v32++ = v34;
      --v33;
    }

    while (v33);
    v35 = 0;
    v36 = 8 * v13 + 8;
    v107 = 8 * (v20 + v24 + v105 + ~v25 - v106);
    v108 = v36;
    v37 = 8 * v11;
    v38 = v37 + 8;
    v39 = v29 + 8;
    v40 = &v17[v98 + 1 + v13];
    v41 = (v97 + v36);
    v42 = v17 + 1;
    v110 = v24 - v25 + v20;
    v104 = v37 + 8;
    v103 = v29 + 8;
    do
    {
      v43 = 0;
      do
      {
        v42[v43] = v14[v43];
        ++v43;
      }

      while (v35 + v43 < v13);
      if (v13 < v31)
      {
        bzero(v113 + v36 + v29 * v35, v107 + 8);
        v39 = v103;
        v38 = v104;
        v37 = 8 * v11;
        v36 = v108;
        v31 = v110;
        v29 = 8 * v95;
        v27 = v115;
      }

      v44 = v13;
      v45 = v41;
      for (i = v40; v44 < v11; ++v44)
      {
        v47 = *v45++;
        *i++ = v47;
      }

      ++v35;
      v14 = (v14 + v38);
      v42 = (v42 + v39);
      v40 += v29;
      v41 = (v41 + v37);
    }

    while (v35 != v13);
    v19 = v99;
    v8 = v100;
    v21 = v112;
  }

  bzero(&v27[v95 * v13], 8 * v98 * v95);
  v48 = *(v8 + 120);
  v49 = *(v48 + 8 * v19);
  v50 = *(v48 + 8 * v21);
  v51 = v50 <= v49;
  v52 = v50 - v49;
  v53 = a3;
  v54 = v101;
  if (!v51)
  {
    v55 = 0;
    v56 = *(v8 + 128) + 4 * v49;
    do
    {
      *(a5 + 4 * *(v56 + 4 * v55)) = v55;
      ++v55;
    }

    while (v52 != v55);
  }

  v57 = *(v8 + 96);
  v58 = *(v57 + 4 * v19);
  if (v58 < *(v57 + 4 * v21))
  {
    v111 = v113 + 1;
    v59 = v13;
    do
    {
      v60 = *(*(v8 + 104) + 4 * v58);
      if (v54 == 4)
      {
        v61 = atomic_load((v53[6] + 4 * v60));
        v48 = *(v8 + 120);
      }

      else
      {
        v61 = 0;
      }

      v62 = *(v48 + 8 * (v60 + 1));
      v63 = *(v8 + 88);
      v64 = *(v63 + 4 * (v60 + 1));
      v65 = v64 - *(v63 + 4 * v60) + v61;
      v66 = v65;
      if (v54 == 4)
      {
        v66 = *(v53[7] + 4 * v60);
      }

      if (v116 >= 2)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2 * v65;
      }

      if (v65 != v66)
      {
        if (v66 < v65)
        {
          v68 = *(v53[5] + 8 * v60);
          v69 = (v61 + v62 - *(v48 + 8 * v60));
          v114 = *(v63 + 4 * v60);
          v70 = v64 - v114;
          v71 = v59 - v66;
          v72 = v66;
          v73 = 8 * v65;
          v74 = (v68 + v73 * v69 + 8 * v67 + 4 * v66 + 8);
          v75 = v59;
          v76 = v66;
          do
          {
            v77 = *v74++;
            *(&v115[v94 * v95 + v93] + v75) = v77;
            ++v76;
            ++v75;
          }

          while (v76 < v65);
          v78 = 8 * v69 + 8;
          v79 = v68 + v78 * v66 + 8;
          v80 = &v111[v59];
          v81 = v59;
          v82 = v66;
          do
          {
            v83 = 0;
            do
            {
              *(&v80[v83] + 8 * v95 * v81) = *(v79 + 8 * v83);
              ++v83;
            }

            while (v82 + v83 < v65);
            ++v82;
            v79 += v78;
            ++v80;
            ++v81;
          }

          while (v82 < v65);
          v84 = *(v48 + 8 * v60) + v70;
          v85 = v68 + 8 * v66 * v69 + 8 * v64 + v73 - 8 * v114 - 8 * v70 + 8;
          v8 = v100;
          v53 = v102;
          v54 = v101;
          do
          {
            if (v84 < v62)
            {
              v86 = *(v100 + 128);
              v87 = v85;
              v88 = v84;
              do
              {
                v89 = *(a5 + 4 * *(v86 + 4 * v88));
                v90 = *v87++;
                v91 = v90;
                if (v89 >= v13)
                {
                  v92 = &v115[v98 + v95 * (v71 + v72) + v89];
                }

                else
                {
                  v92 = &v115[v71 + v72 + v89 * v95];
                }

                *v92 = v91;
                ++v88;
              }

              while (v88 < v62);
            }

            ++v72;
            v85 += 8 * v69;
          }

          while (v72 < v65);
        }

        v59 = v65 + v59 - v66;
        v21 = v112;
      }

      ++v58;
    }

    while (v58 < *(*(v8 + 96) + 4 * v21));
  }

  if (v96)
  {
    (*(v8 + 32))(v97);
  }

  return 0;
}

uint64_t sub_23670590C(uint64_t result, int a2, int a3, uint64_t a4, double *a5, unsigned int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = a9;
  v14 = 8 * a2;
  if (a9)
  {
    v14 = 0;
  }

  else
  {
    v13 = a11;
  }

  v58 = v13;
  v64 = a6;
  if (((a2 | result) & 0x80000000) != 0 || a6 < 1 || ((v15 = (a12 - v14) >> 3, v15 >= a2) ? (v16 = a6 < a2) : (v16 = 1), !v16 ? (v17 = v15 <= 0) : (v17 = 1), v17))
  {
    __break(1u);
  }

  else
  {
    v19 = a5;
    v20 = result;
    if (a2 >= result)
    {
      v21 = result;
    }

    else
    {
      v21 = a2;
    }

    if (v21)
    {
      v60 = (a11 + v14);
      v56 = a3;
      v55 = a6;
      v54 = result;
      if (v21 < 33)
      {
        v22 = 0;
        v23 = 32;
      }

      else if (v21 < 0x41 || v15 >= 32 * a2)
      {
        v23 = 32;
        v22 = 64;
      }

      else
      {
        v22 = 64;
        v23 = v15 / a2;
      }

      v24 = 0;
      v63 = v21 - v22;
      if (v21 > v22 && v23 >= 2 && v23 < v21)
      {
        if (v63 < 1)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v24 = 0;
          v26 = a4;
          v59 = a4 - 4;
          v27 = v21;
          v28 = v58;
          v57 = v21;
          do
          {
            if (v23 >= v27)
            {
              v29 = v27;
            }

            else
            {
              v29 = v23;
            }

            v30 = v21 + v25;
            if (v21 + v25 >= v23)
            {
              v31 = v23;
            }

            else
            {
              v31 = v21 + v25;
            }

            v32 = *(v59 + 4 * (v29 + v24));
            v33 = (v25 + v32);
            v34 = v33 & ~(v33 >> 31);
            if (v34 < v31)
            {
              if (v23 < v30)
              {
                v30 = v23;
              }

              bzero((v58 + 8 * (((v32 + v25) & ~((v32 + v25) >> 31)) + v24)), 8 * (v30 + ~v34) + 8);
            }

            if (v33 >= 1)
            {
              sub_236705EA4(v33, v31, v26, v24, &a5[v24 + v24 * v64], v64, v28, v60);
              if (v24 + v31 < a2)
              {
                dlarft_NEWLAPACK();
                v21 = v57;
                dlarfb_NEWLAPACK();
              }
            }

            v24 += v23;
            v28 += 8 * v23;
            v26 += 4 * v23;
            v25 -= v23;
            v27 -= v23;
          }

          while (v63 > v24);
        }
      }

      v19 = a5;
      v12 = a2;
      v20 = v54;
      if (v24 < v21)
      {
        sub_236705EA4((v54 - v24), a2 - v24, a4 + 4 * v24, v24, &a5[v24 + v24 * v64], v64, v58 + 8 * v24, v60);
      }

      a3 = v56;
      a6 = v55;
    }

    LODWORD(v35) = v20 - a3;
    if (v20 >= a3)
    {
      v36 = a3;
    }

    else
    {
      v36 = v20;
    }

    if (v36 >= 1)
    {
      if (*v19 == 0.0)
      {
        return 1;
      }

      v37 = 0;
      v38 = a6 + 1;
      while (v36 - 1 != v37)
      {
        v39 = v19[v38];
        v38 += a6 + 1;
        ++v37;
        if (v39 == 0.0)
        {
          return v37 < v36;
        }
      }
    }

    if (a7 && a3 >= 1)
    {
      v40 = 0;
      v41 = v19;
      v42 = v12;
      do
      {
        v43 = v42;
        v44 = a7;
        v45 = v41;
        if (v40 < v12)
        {
          do
          {
            v46 = *v45++;
            *v44++ = v46;
            --v43;
          }

          while (v43);
        }

        ++v40;
        v41 += a6 + 1;
        a7 += a8 + 1;
        --v42;
      }

      while (v40 != a3);
    }

    v47 = v12 - a3;
    if (v20 >= v12)
    {
      v35 = v47;
    }

    else
    {
      v35 = v35;
    }

    if (v35 >= 1)
    {
      v48 = 0;
      v50 = &v19[a3 + a3 * a6];
      do
      {
        if (v48 < v47)
        {
          v51 = 0;
          do
          {
            *(a10 + 8 * v51) = v50[v51];
            ++v51;
          }

          while (v48 + v51 < v47);
        }

        ++v48;
        v50 += a6 + 1;
        a10 += 8 * v12 - 8 * a3 + 8;
      }

      while (v48 != v35);
    }

    return 0;
  }

  return result;
}

uint64_t sub_236705EA4(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, float64x2_t *a8)
{
  if (a2 >= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  if (v8 >= 1)
  {
    v13 = 0;
    do
    {
      v27 = *(a3 + 4 * v13) - (v13 + a4);
      if (v27 <= 0)
      {
        *(a7 + 8 * v13) = 0;
        v14 = v13 + 1;
      }

      else
      {
        v14 = v13 + 1;
        result = dlarfg_NEWLAPACK();
        if (v13 + 1 < a2)
        {
          v23 = (a5 + 8 * (v13 + a6 * v13));
          v24 = *v23;
          *v23 = 1.0;
          result = sub_2367E3678((~v13 + a2), v27, v23, a6, (a7 + 8 * v13), a5 + 8 * (a6 * v13 + v14), a6, a8, v15, v16, v17, v18, v19, v20, v21, v22);
          *(a5 + 8 * (v13 + v13 * a6)) = v24;
        }
      }

      v13 = v14;
    }

    while (v14 != v8);
  }

  return result;
}

void _SparseSpMV_Float(float alpha, SparseMatrix_Float *A, DenseMatrix_Float *x, BOOL accumulate, DenseMatrix_Float *y)
{
  v5 = 4;
  if (*&y->attributes)
  {
    v5 = 0;
  }

  v314 = *(&y->rowCount + v5);
  v6 = *(&A->structure.blockSize + 2);
  rowIndices = A->structure.rowIndices;
  data = A->data;
  columnStarts = A->structure.columnStarts;
  if (!accumulate && v314 >= 1)
  {
    v7 = 0;
    v8 = 4;
    if ((*&A->structure.attributes & 1) == 0)
    {
      v8 = 0;
    }

    v9 = *(&A->structure.rowCount + v8) * v6;
    do
    {
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = y->data;
        columnStride = y->columnStride;
        do
        {
          if (*&y->attributes)
          {
            v13 = v10;
          }

          else
          {
            v13 = v7;
          }

          if (*&y->attributes)
          {
            v14 = v7;
          }

          else
          {
            v14 = v10;
          }

          v11[v14 + columnStride * v13] = 0.0;
          ++v10;
        }

        while (v9 != v10);
      }

      ++v7;
    }

    while (v7 != v314);
  }

  v295 = (v6 * v6);
  v15 = (*&A->structure.attributes >> 2) & 3;
  if ((v15 - 1) >= 2)
  {
    if (v15)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v159 = 0;
        v160 = 0;
        v316 = v6 + 1;
        v161 = *columnStarts;
        v302 = 4 * v295;
        v162 = 4 * v6;
        v300 = 1;
        do
        {
          v304 = v160;
          v296 = v160 + 1;
          v303 = columnStarts[v160 + 1];
          if (v161 < v303)
          {
            v163 = v160 * v6;
            v307 = (data + v302 * v161);
            v306 = data + v302 * v161 + 4;
            do
            {
              v305 = v161;
              v164 = rowIndices[v161];
              v165 = *&A->structure.attributes;
              if ((v165 & 2) == 0 || v304 <= v164)
              {
                v166 = v304 < v164 && (*&A->structure.attributes & 2) == 0;
                if (!v166 && (v164 & 0x80000000) == 0 && v164 < A->structure.rowCount)
                {
                  if (v304 == v164)
                  {
                    v167 = &data[v161 * v295];
                    if ((v165 & 2) != 0)
                    {
                      if (v314 >= 1)
                      {
                        v168 = 0;
                        v169 = v164 * v6;
                        v299 = v164 * v6 + 1;
                        v301 = v159;
                        do
                        {
                          if (v6)
                          {
                            v170 = 0;
                            v171 = x->data;
                            v313 = y->columnStride;
                            v172 = y->data;
                            v173 = v6 - 1;
                            v175 = v299;
                            v174 = v300;
                            v176 = v306;
                            do
                            {
                              v177 = v167;
                              v178 = v170 + 1;
                              if (v170 + 1 < v6)
                              {
                                v179 = x->columnStride;
                                v180 = y->columnStride;
                                v181 = v175 + v168 * v180;
                                v182 = v168 + v180 * v175;
                                v183 = v174 + v168 * v179;
                                v184 = v168 + v179 * v174;
                                v185 = v173;
                                v186 = v176;
                                do
                                {
                                  if (*&x->attributes)
                                  {
                                    v187 = v170 + v163;
                                  }

                                  else
                                  {
                                    v187 = v168;
                                  }

                                  if (*&x->attributes)
                                  {
                                    v188 = v168;
                                  }

                                  else
                                  {
                                    v188 = v170 + v163;
                                  }

                                  v189 = v171[v188 + v179 * v187];
                                  if (*&y->attributes)
                                  {
                                    v190 = v182;
                                  }

                                  else
                                  {
                                    v190 = v181;
                                  }

                                  v172[v190] = v172[v190] + ((*v186 * alpha) * v189);
                                  v191 = *v186++;
                                  v192 = v191 * alpha;
                                  if (*&x->attributes)
                                  {
                                    v193 = v184;
                                  }

                                  else
                                  {
                                    v193 = v183;
                                  }

                                  v194 = v171[v193];
                                  if (*&y->attributes)
                                  {
                                    v195 = v169 + v170;
                                  }

                                  else
                                  {
                                    v195 = v168;
                                  }

                                  if (*&y->attributes)
                                  {
                                    v196 = v168;
                                  }

                                  else
                                  {
                                    v196 = v169 + v170;
                                  }

                                  v172[v196 + v180 * v195] = v172[v196 + v180 * v195] + (v192 * v194);
                                  ++v181;
                                  v182 += v180;
                                  ++v183;
                                  v184 += v179;
                                  --v185;
                                }

                                while (v185);
                              }

                              v167 = v177;
                              if (*&x->attributes)
                              {
                                v197 = v168 + x->columnStride * (v170 + v163);
                              }

                              else
                              {
                                v197 = v170 + v163 + x->columnStride * v168;
                              }

                              v198 = v171[v197];
                              if (*&y->attributes)
                              {
                                v199 = v168 + v313 * (v169 + v170);
                              }

                              else
                              {
                                v199 = v169 + v170 + v313 * v168;
                              }

                              v172[v199] = v172[v199] + ((v177[v170 * v316] * alpha) * v198);
                              v176 += v6 + 1;
                              ++v175;
                              ++v174;
                              --v173;
                              ++v170;
                            }

                            while (v178 != v6);
                          }

                          ++v168;
                          v159 = v301;
                        }

                        while (v168 != v314);
                      }
                    }

                    else if (v314 >= 1)
                    {
                      v237 = 0;
                      v238 = v164 * v6;
                      v239 = v6 * v164;
                      do
                      {
                        if (v6)
                        {
                          v240 = 0;
                          v241 = x->data;
                          v242 = y->data;
                          v243 = y->columnStride;
                          v244 = v307;
                          do
                          {
                            if (v240)
                            {
                              v245 = x->columnStride;
                              v246 = y->columnStride;
                              v247 = v238 + v237 * v246;
                              v248 = v237 + v239 * v246;
                              v249 = v159 + v237 * v245;
                              v250 = v237 + v159 * v245;
                              v251 = v240;
                              v252 = v244;
                              do
                              {
                                if (*&x->attributes)
                                {
                                  v253 = v240 + v163;
                                }

                                else
                                {
                                  v253 = v237;
                                }

                                if (*&x->attributes)
                                {
                                  v254 = v237;
                                }

                                else
                                {
                                  v254 = v240 + v163;
                                }

                                v255 = v241[v254 + v245 * v253];
                                if (*&y->attributes)
                                {
                                  v256 = v248;
                                }

                                else
                                {
                                  v256 = v247;
                                }

                                v242[v256] = v242[v256] + ((*v252 * alpha) * v255);
                                v257 = *v252++;
                                v258 = v257 * alpha;
                                if (*&x->attributes)
                                {
                                  v259 = v250;
                                }

                                else
                                {
                                  v259 = v249;
                                }

                                v260 = v241[v259];
                                if (*&y->attributes)
                                {
                                  v261 = v238 + v240;
                                }

                                else
                                {
                                  v261 = v237;
                                }

                                if (*&y->attributes)
                                {
                                  v262 = v237;
                                }

                                else
                                {
                                  v262 = v238 + v240;
                                }

                                v242[v262 + v246 * v261] = v242[v262 + v246 * v261] + (v258 * v260);
                                ++v247;
                                v248 += v246;
                                ++v249;
                                v250 += v245;
                                --v251;
                              }

                              while (v251);
                            }

                            if (*&x->attributes)
                            {
                              v263 = v237 + x->columnStride * (v240 + v163);
                            }

                            else
                            {
                              v263 = v240 + v163 + x->columnStride * v237;
                            }

                            v264 = v241[v263];
                            if (*&y->attributes)
                            {
                              v265 = v237 + v243 * (v238 + v240);
                            }

                            else
                            {
                              v265 = v238 + v240 + v243 * v237;
                            }

                            v242[v265] = v242[v265] + ((v167[v240 * v316] * alpha) * v264);
                            ++v240;
                            v244 = (v244 + v162);
                          }

                          while (v240 != v6);
                        }

                        ++v237;
                      }

                      while (v237 != v314);
                    }
                  }

                  else if (v314 >= 1)
                  {
                    v200 = 0;
                    v201 = v164 * v6;
                    do
                    {
                      if (v6)
                      {
                        v202 = 0;
                        v203 = x->data;
                        v204 = y->data;
                        v205 = x->columnStride;
                        v206 = y->columnStride;
                        v207 = v307;
                        do
                        {
                          v208 = v6;
                          v209 = v200 + v201 * v206;
                          v210 = v201 + v206 * v200;
                          v211 = v207;
                          do
                          {
                            v212 = *v211++;
                            v213 = v212;
                            if (*&x->attributes)
                            {
                              v214 = v202 + v163;
                            }

                            else
                            {
                              v214 = v200;
                            }

                            if (*&x->attributes)
                            {
                              v215 = v200;
                            }

                            else
                            {
                              v215 = v202 + v163;
                            }

                            v216 = v203[v215 + v205 * v214];
                            v217 = v213 * alpha;
                            if (*&y->attributes)
                            {
                              v218 = v209;
                            }

                            else
                            {
                              v218 = v210;
                            }

                            v204[v218] = v204[v218] + (v217 * v216);
                            ++v210;
                            v209 += v206;
                            --v208;
                          }

                          while (v208);
                          ++v202;
                          v207 = (v207 + v162);
                        }

                        while (v202 != v6);
                      }

                      ++v200;
                    }

                    while (v200 != v314);
                    v219 = 0;
                    v220 = v6 * v164;
                    do
                    {
                      if (v6)
                      {
                        v221 = 0;
                        v222 = x->data;
                        v223 = y->data;
                        v224 = x->columnStride;
                        v225 = y->columnStride;
                        v226 = v307;
                        do
                        {
                          v227 = v6;
                          v228 = v219 + v220 * v224;
                          v229 = v201 + v224 * v219;
                          v230 = v226;
                          do
                          {
                            v231 = *v230++;
                            v232 = v231 * alpha;
                            if (*&x->attributes)
                            {
                              v233 = v228;
                            }

                            else
                            {
                              v233 = v229;
                            }

                            v234 = v222[v233];
                            if (*&y->attributes)
                            {
                              v235 = v221 + v163;
                            }

                            else
                            {
                              v235 = v219;
                            }

                            if (*&y->attributes)
                            {
                              v236 = v219;
                            }

                            else
                            {
                              v236 = v221 + v163;
                            }

                            v223[v236 + v225 * v235] = v223[v236 + v225 * v235] + (v232 * v234);
                            ++v229;
                            v228 += v224;
                            --v227;
                          }

                          while (v227);
                          ++v221;
                          v226 = (v226 + v162);
                        }

                        while (v221 != v6);
                      }

                      ++v219;
                    }

                    while (v219 != v314);
                  }
                }
              }

              v161 = v305 + 1;
              v307 = (v307 + v302);
              v306 += v302;
            }

            while (v305 + 1 != v303);
          }

          v159 += v6;
          v300 += v6;
          v161 = v303;
          v160 = v296;
        }

        while (v296 != columnCount);
      }
    }

    else
    {
      v73 = A->structure.columnCount;
      if (*&A->structure.attributes)
      {
        if (v73 >= 1)
        {
          v74 = 0;
          v75 = *columnStarts;
          v76 = 4 * v295;
          do
          {
            v77 = v74 + 1;
            v78 = columnStarts[v74 + 1];
            if (v75 < v78)
            {
              v79 = v74 * v6;
              v80 = (data + v76 * v75);
              do
              {
                v81 = rowIndices[v75];
                if ((v81 & 0x80000000) == 0 && v81 < A->structure.rowCount && v314 >= 1)
                {
                  v83 = 0;
                  v84 = v81 * v6;
                  do
                  {
                    if (v6)
                    {
                      v85 = 0;
                      v86 = x->data;
                      v87 = y->data;
                      v88 = x->columnStride;
                      v89 = y->columnStride;
                      v90 = v80;
                      do
                      {
                        v91 = v6;
                        v92 = v83 + v84 * v88;
                        v93 = v84 + v88 * v83;
                        v94 = v90;
                        do
                        {
                          v95 = *v94++;
                          v96 = v95 * alpha;
                          if (*&x->attributes)
                          {
                            v97 = v92;
                          }

                          else
                          {
                            v97 = v93;
                          }

                          v98 = v86[v97];
                          if (*&y->attributes)
                          {
                            v99 = v85 + v79;
                          }

                          else
                          {
                            v99 = v83;
                          }

                          if (*&y->attributes)
                          {
                            v100 = v83;
                          }

                          else
                          {
                            v100 = v85 + v79;
                          }

                          v87[v100 + v89 * v99] = v87[v100 + v89 * v99] + (v96 * v98);
                          ++v93;
                          v92 += v88;
                          --v91;
                        }

                        while (v91);
                        ++v85;
                        v90 += v6;
                      }

                      while (v85 != v6);
                    }

                    ++v83;
                  }

                  while (v83 != v314);
                }

                ++v75;
                v80 = (v80 + v76);
              }

              while (v75 != v78);
            }

            v75 = v78;
            v74 = v77;
          }

          while (v77 != v73);
        }
      }

      else if (v73 >= 1)
      {
        v266 = 0;
        v267 = *columnStarts;
        v268 = 4 * v295;
        do
        {
          v269 = v266 + 1;
          v270 = columnStarts[v266 + 1];
          if (v267 < v270)
          {
            v271 = v266 * v6;
            v272 = (data + v268 * v267);
            do
            {
              v273 = rowIndices[v267];
              if ((v273 & 0x80000000) == 0 && v273 < A->structure.rowCount && v314 >= 1)
              {
                v275 = 0;
                v276 = v273 * v6;
                do
                {
                  if (v6)
                  {
                    v277 = 0;
                    v278 = x->data;
                    v279 = y->data;
                    v280 = x->columnStride;
                    v281 = y->columnStride;
                    v282 = v272;
                    do
                    {
                      v283 = v6;
                      v284 = v275 + v276 * v281;
                      v285 = v276 + v281 * v275;
                      v286 = v282;
                      do
                      {
                        v287 = *v286++;
                        v288 = v287;
                        if (*&x->attributes)
                        {
                          v289 = v277 + v271;
                        }

                        else
                        {
                          v289 = v275;
                        }

                        if (*&x->attributes)
                        {
                          v290 = v275;
                        }

                        else
                        {
                          v290 = v277 + v271;
                        }

                        v291 = v278[v290 + v280 * v289];
                        v292 = v288 * alpha;
                        if (*&y->attributes)
                        {
                          v293 = v284;
                        }

                        else
                        {
                          v293 = v285;
                        }

                        v279[v293] = v279[v293] + (v292 * v291);
                        ++v285;
                        v284 += v281;
                        --v283;
                      }

                      while (v283);
                      ++v277;
                      v282 += v6;
                    }

                    while (v277 != v6);
                  }

                  ++v275;
                }

                while (v275 != v314);
              }

              ++v267;
              v272 = (v272 + v268);
            }

            while (v267 != v270);
          }

          v267 = v270;
          v266 = v269;
        }

        while (v269 != v73);
      }
    }

    return;
  }

  v315 = A->structure.columnCount;
  if ((*&A->structure.attributes & 1) == 0)
  {
    if (v315 < 1)
    {
      return;
    }

    v101 = 0;
    v102 = 0;
    v103 = *columnStarts;
    v104 = 4 * (v6 * v6);
    v105 = 4 * v6;
    while (1)
    {
      v312 = v101;
      v310 = v102 + 1;
      v106 = columnStarts[v102 + 1];
      if (v103 < v106)
      {
        break;
      }

LABEL_177:
      if ((*&A->structure.attributes & 0xC) == 8 && v314 >= 1)
      {
        v152 = 0;
        do
        {
          if (v6)
          {
            v153 = x->data;
            v154 = y->data;
            v155 = v6;
            v156 = v312;
            do
            {
              if (*&x->attributes)
              {
                v157 = v152 + x->columnStride * v156;
              }

              else
              {
                v157 = v156 + v152 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v158 = v152 + y->columnStride * v156;
              }

              else
              {
                v158 = v156 + v152 * y->columnStride;
              }

              v154[v158] = v154[v158] + (alpha * v153[v157]);
              ++v156;
              --v155;
            }

            while (v155);
          }

          ++v152;
        }

        while (v152 != v314);
      }

      v101 = v312 + v6;
      v103 = v106;
      v102 = v310;
      if (v310 == v315)
      {
        return;
      }
    }

    v107 = v102 * v6;
    v108 = (data + v104 * v103);
    while (1)
    {
      v109 = rowIndices[v103];
      v110 = *&A->structure.attributes;
      if (((v110 & 2) == 0 || v102 <= v109) && v109 < A->structure.rowCount)
      {
        if ((v110 & 2) != 0)
        {
          if ((v109 & 0x80000000) == 0)
          {
LABEL_133:
            if (v109 == v102)
            {
              if (v314 >= 1)
              {
                v111 = 0;
                v112 = (v110 & 0xC) == 8;
                v113 = v109 * v6;
                do
                {
                  if (v6)
                  {
                    v114 = 0;
                    v115 = v108;
                    do
                    {
                      v116 = (v114 + v112) & (v110 << 30 >> 31);
                      v117 = v114 + 1;
                      v118 = v114 + 1 - v112;
                      if ((v110 & 2) != 0)
                      {
                        v119 = v6;
                      }

                      else
                      {
                        v119 = v114 + 1 - v112;
                      }

                      if (v116 < v119)
                      {
                        v120 = x->data;
                        v121 = v114 + v107;
                        v122 = y->data;
                        v123 = x->columnStride;
                        v124 = y->columnStride;
                        v125 = v111 + v124 * (v113 + v116);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v126 = v121;
                          }

                          else
                          {
                            v126 = v111;
                          }

                          if (*&x->attributes)
                          {
                            v127 = v111;
                          }

                          else
                          {
                            v127 = v121;
                          }

                          v128 = v120[v127 + v123 * v126];
                          if (*&y->attributes)
                          {
                            v129 = v125;
                          }

                          else
                          {
                            v129 = v113 + v111 * v124 + v116;
                          }

                          v122[v129] = v122[v129] + ((v115[v116++] * alpha) * v128);
                          v110 = *&A->structure.attributes;
                          if ((v110 & 2) != 0)
                          {
                            v130 = v6;
                          }

                          else
                          {
                            v130 = v118;
                          }

                          v125 += v124;
                        }

                        while (v116 < v130);
                      }

                      v115 = (v115 + v105);
                      v114 = v117;
                    }

                    while (v117 != v6);
                  }

                  ++v111;
                }

                while (v111 != v314);
              }
            }

            else if (v314 >= 1)
            {
              v131 = 0;
              v132 = v109 * v6;
              v133 = v6 * v109;
              do
              {
                if (v6)
                {
                  v134 = 0;
                  v135 = x->data;
                  v136 = y->data;
                  v137 = x->columnStride;
                  v138 = y->columnStride;
                  v139 = v108;
                  do
                  {
                    v140 = v6;
                    v141 = v131 + v133 * v138;
                    v142 = v132 + v138 * v131;
                    v143 = v139;
                    do
                    {
                      v144 = *v143++;
                      v145 = v144;
                      if (*&x->attributes)
                      {
                        v146 = v134 + v107;
                      }

                      else
                      {
                        v146 = v131;
                      }

                      if (*&x->attributes)
                      {
                        v147 = v131;
                      }

                      else
                      {
                        v147 = v134 + v107;
                      }

                      v148 = v135[v147 + v137 * v146];
                      v149 = v145 * alpha;
                      if (*&y->attributes)
                      {
                        v150 = v141;
                      }

                      else
                      {
                        v150 = v142;
                      }

                      v136[v150] = v136[v150] + (v149 * v148);
                      ++v142;
                      v141 += v138;
                      --v140;
                    }

                    while (v140);
                    ++v134;
                    v139 = (v139 + v105);
                  }

                  while (v134 != v6);
                }

                ++v131;
              }

              while (v131 != v314);
            }
          }
        }

        else if (v102 >= v109)
        {
          goto LABEL_133;
        }
      }

      ++v103;
      v108 = (v108 + v104);
      if (v103 == v106)
      {
        goto LABEL_177;
      }
    }
  }

  if (v315 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = *columnStarts;
    v19 = 4 * (v6 * v6);
    v20 = 4 * v6;
    while (1)
    {
      v311 = v16;
      v309 = v17 + 1;
      v21 = columnStarts[v17 + 1];
      if (v18 < v21)
      {
        break;
      }

LABEL_75:
      if ((*&A->structure.attributes & 0xC) == 8 && v314 >= 1)
      {
        v66 = 0;
        do
        {
          if (v6)
          {
            v67 = x->data;
            v68 = y->data;
            v69 = v6;
            v70 = v311;
            do
            {
              if (*&x->attributes)
              {
                v71 = v66 + x->columnStride * v70;
              }

              else
              {
                v71 = v70 + v66 * x->columnStride;
              }

              if (*&y->attributes)
              {
                v72 = v66 + y->columnStride * v70;
              }

              else
              {
                v72 = v70 + v66 * y->columnStride;
              }

              v68[v72] = v68[v72] + (alpha * v67[v71]);
              ++v70;
              --v69;
            }

            while (v69);
          }

          ++v66;
        }

        while (v66 != v314);
      }

      v16 = v311 + v6;
      v18 = v21;
      v17 = v309;
      if (v309 == v315)
      {
        return;
      }
    }

    v22 = v17 * v6;
    v23 = (data + v19 * v18);
    while (1)
    {
      v24 = rowIndices[v18];
      v25 = *&A->structure.attributes;
      if (((v25 & 2) == 0 || v17 <= v24) && v24 < A->structure.rowCount)
      {
        if ((v25 & 2) != 0)
        {
          if ((v24 & 0x80000000) == 0)
          {
LABEL_31:
            if (v24 == v17)
            {
              if (v314 >= 1)
              {
                v26 = 0;
                v27 = (v25 & 0xC) == 8;
                v28 = v24 * v6;
                do
                {
                  if (v6)
                  {
                    v29 = 0;
                    v30 = v23;
                    do
                    {
                      v31 = (v29 + v27) & (v25 << 30 >> 31);
                      v32 = v29 + 1;
                      v33 = v29 + 1 - v27;
                      if ((v25 & 2) != 0)
                      {
                        v34 = v6;
                      }

                      else
                      {
                        v34 = v29 + 1 - v27;
                      }

                      if (v31 < v34)
                      {
                        v35 = x->data;
                        v36 = y->data;
                        v37 = v29 + v22;
                        v38 = x->columnStride;
                        v39 = y->columnStride;
                        v40 = v26 + v38 * (v28 + v31);
                        do
                        {
                          if (*&x->attributes)
                          {
                            v41 = v40;
                          }

                          else
                          {
                            v41 = v28 + v26 * v38 + v31;
                          }

                          v42 = v35[v41];
                          if (*&y->attributes)
                          {
                            v43 = v37;
                          }

                          else
                          {
                            v43 = v26;
                          }

                          if (*&y->attributes)
                          {
                            v44 = v26;
                          }

                          else
                          {
                            v44 = v37;
                          }

                          v36[v44 + v39 * v43] = v36[v44 + v39 * v43] + ((v30[v31++] * alpha) * v42);
                          v25 = *&A->structure.attributes;
                          if ((v25 & 2) != 0)
                          {
                            v45 = v6;
                          }

                          else
                          {
                            v45 = v33;
                          }

                          v40 += v38;
                        }

                        while (v31 < v45);
                      }

                      v30 = (v30 + v20);
                      v29 = v32;
                    }

                    while (v32 != v6);
                  }

                  ++v26;
                }

                while (v26 != v314);
              }
            }

            else if (v314 >= 1)
            {
              v46 = 0;
              v47 = v24 * v6;
              v48 = v6 * v24;
              do
              {
                if (v6)
                {
                  v49 = 0;
                  v50 = x->data;
                  v51 = y->data;
                  v52 = x->columnStride;
                  v53 = y->columnStride;
                  v54 = v23;
                  do
                  {
                    v55 = v6;
                    v56 = v46 + v48 * v52;
                    v57 = v47 + v52 * v46;
                    v58 = v54;
                    do
                    {
                      v59 = *v58++;
                      v60 = v59 * alpha;
                      if (*&x->attributes)
                      {
                        v61 = v56;
                      }

                      else
                      {
                        v61 = v57;
                      }

                      v62 = v50[v61];
                      if (*&y->attributes)
                      {
                        v63 = v49 + v22;
                      }

                      else
                      {
                        v63 = v46;
                      }

                      if (*&y->attributes)
                      {
                        v64 = v46;
                      }

                      else
                      {
                        v64 = v49 + v22;
                      }

                      v51[v64 + v53 * v63] = v51[v64 + v53 * v63] + (v60 * v62);
                      ++v57;
                      v56 += v52;
                      --v55;
                    }

                    while (v55);
                    ++v49;
                    v54 = (v54 + v20);
                  }

                  while (v49 != v6);
                }

                ++v46;
              }

              while (v46 != v314);
            }
          }
        }

        else if (v17 >= v24)
        {
          goto LABEL_31;
        }
      }

      ++v18;
      v23 = (v23 + v19);
      if (v18 == v21)
      {
        goto LABEL_75;
      }
    }
  }
}

SparseOpaquePreconditioner_Float *__cdecl _SparseCreatePreconditioner_Float(SparseOpaquePreconditioner_Float *__return_ptr retstr, SparsePreconditioner_t type, SparseMatrix_Float *A)
{
  if (type <= SparsePreconditionerUser)
  {
    if (type)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BA40();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BA84();
    }

    _SparseTrap();
  }

  if (type == SparsePreconditionerDiagonal)
  {
    v5 = *(&A->structure.blockSize + 2);
    v6 = A->structure.rowCount * v5;
    v7 = A->structure.columnCount * v5;
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    *&retstr->type = 2;
    result = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
    v10 = result;
    retstr->mem = result;
    retstr->apply = sub_23670B980;
    if (v8 >= 1)
    {
      memset_pattern16(result, &unk_23681FB80, 4 * v8);
    }

    if ((*&A->structure.attributes & 0xC) != 8)
    {
      columnCount = A->structure.columnCount;
      if (columnCount >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = *(&A->structure.blockSize + 2);
        columnStarts = A->structure.columnStarts;
        v16 = *columnStarts;
        v17 = 4 * (v14 * v14);
        do
        {
          v18 = v12 + 1;
          v19 = columnStarts[v12 + 1];
          if (v16 < v19)
          {
            result = (v10 + 4 * v13);
            rowIndices = A->structure.rowIndices;
            v21 = v17 * v16;
            do
            {
              if (v12 == rowIndices[v16] && v14 != 0)
              {
                v23 = (A->data + v21);
                v24 = (&v10->type + v13);
                v25 = v14;
                do
                {
                  if (*v23 != 0.0)
                  {
                    *v24 = 1.0 / *v23;
                  }

                  v23 += v14 + 1;
                  ++v24;
                  --v25;
                }

                while (v25);
              }

              ++v16;
              v21 += v17;
            }

            while (v16 != v19);
          }

          v13 += v14;
          v16 = v19;
          ++v12;
        }

        while (v18 != columnCount);
      }
    }
  }

  else
  {

    sub_2367070F4(A, retstr);
  }

  return result;
}

void sub_2367070F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v180[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 28);
  v5 = (*(a1 + 4) * v4);
  *a2 = 0;
  *a2 = 3;
  v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v8 = v6;
  a2[1] = v6;
  a2[2] = sub_23670B980;
  v9 = (v4 * v4);
  v10 = (*(a1 + 24) >> 2) & 3;
  if ((v10 - 1) >= 2)
  {
    if (v10 != 3)
    {
      if (*(a1 + 24))
      {
        bzero(v6, 4 * v5);
        v142 = *(a1 + 4);
        if (v142 >= 1)
        {
          v143 = 0;
          v144 = *(a1 + 8);
          v145 = *v144;
          v146 = 4 * (v4 * v4);
          do
          {
            v147 = v144[++v143];
            if (v145 < v147)
            {
              v148 = *(a1 + 16);
              v149 = v146 * v145;
              do
              {
                v150 = *(v148 + 4 * v145);
                if ((v150 & 0x80000000) == 0 && v150 < *a1 && v4)
                {
                  v151 = 0;
                  v152 = &v8[(v150 * v4)];
                  v153 = (*(a1 + 32) + v149);
                  do
                  {
                    v154 = v4;
                    v155 = v153;
                    v156 = v152;
                    do
                    {
                      v157 = *v155++;
                      *v156 = *v156 + (v157 * v157);
                      ++v156;
                      --v154;
                    }

                    while (v154);
                    ++v151;
                    v153 += v4;
                  }

                  while (v151 != v4);
                }

                ++v145;
                v149 += v146;
              }

              while (v145 != v147);
            }

            v145 = v147;
          }

          while (v143 != v142);
        }

        if (v5 >= 1)
        {
          do
          {
            v158 = fabsf(*v8);
            v159 = 1.0;
            if (v158 >= 0.00000011921)
            {
              v159 = 1.0 / sqrt(v158);
            }

            *v8++ = v159;
            --v5;
          }

          while (v5);
        }
      }

      else if (*(a1 + 4) >= 1)
      {
        v162 = 0;
        v163 = 4 * v4;
        v164 = 4 * (v4 * v4);
        v165 = (4 * v4 + 15) & 0x7F0;
        do
        {
          MEMORY[0x28223BE20](v7);
          v166 = (v180 - v165);
          if (v4)
          {
            bzero(v180 - v165, 4 * v4);
          }

          v167 = *(a1 + 8);
          v168 = *(v167 + 8 * v162++);
          v169 = *(v167 + 8 * v162);
          if (v168 < v169)
          {
            v170 = *(a1 + 16);
            v171 = v164 * v168;
            do
            {
              v172 = *(v170 + 4 * v168);
              if ((v172 & 0x80000000) == 0 && v172 < *a1 && v4)
              {
                v173 = 0;
                v174 = (*(a1 + 32) + v171);
                do
                {
                  v7.n128_f32[0] = v166[v173];
                  v175 = v4;
                  v176 = v174;
                  do
                  {
                    v177 = *v176++;
                    v7.n128_f32[0] = v7.n128_f32[0] + (v177 * v177);
                    --v175;
                  }

                  while (v175);
                  v166[v173++] = v7.n128_f32[0];
                  v174 = (v174 + v163);
                }

                while (v173 != v4);
              }

              ++v168;
              v171 += v164;
            }

            while (v168 != v169);
          }

          v178 = v4;
          v179 = v8;
          if (v4)
          {
            do
            {
              v7.n128_u32[0] = 1.0;
              if (*v166 >= 0.00000011921)
              {
                v7.n128_f64[0] = 1.0 / sqrt(*v166);
                v7.n128_f32[0] = v7.n128_f64[0];
              }

              *v179++ = v7.n128_f32[0];
              ++v166;
              --v178;
            }

            while (v178);
          }

          v8 = (v8 + v163);
        }

        while (v162 < *(a1 + 4));
      }

      return;
    }

    bzero(v6, 4 * v5);
    v49 = *(a1 + 4);
    if (v49 < 1)
    {
LABEL_82:
      if (v5 >= 1)
      {
        do
        {
          v88 = fabsf(*v8);
          v89 = 1.0;
          if (v88 >= 0.00000011921)
          {
            v89 = 1.0 / sqrt(v88);
          }

          *v8++ = v89;
          --v5;
        }

        while (v5);
      }

      return;
    }

    v50 = 0;
    v51 = *(a1 + 8);
    v52 = *v51;
    v53 = 4 * (v4 * v4);
    v54 = 4 * v4;
    v180[0] = v8 + 1;
    while (1)
    {
      v55 = v50 + 1;
      v56 = v51[v50 + 1];
      if (v52 < v56)
      {
        break;
      }

LABEL_81:
      v52 = v56;
      ++v50;
      if (v55 == v49)
      {
        goto LABEL_82;
      }
    }

    v57 = &v8[v50 * v4];
    v58 = *(a1 + 16);
    v59 = v53 * v52;
    v60 = v53 * v52 + 4;
    while (1)
    {
      v61 = *(v58 + 4 * v52);
      v62 = v61;
      if ((*(a1 + 24) & 2) != 0)
      {
        if (v50 <= v61 && v61 < *a1)
        {
          v70 = v61 * v4;
          v71 = *(a1 + 32);
          v65 = (v71 + 4 * v52 * v9);
          if (v50 == v62)
          {
            if (v4)
            {
              v72 = 0;
              v73 = (v71 + v60);
              v74 = v4 - 1;
              v75 = v180[0] + 4 * v70;
              do
              {
                v76 = v65[v72 + (v72 * v4)];
                v57[v72] = v57[v72] + (v76 * v76);
                v77 = v72 + 1;
                if (v72 + 1 < v4)
                {
                  v78 = v74;
                  v79 = v75;
                  v80 = v73;
                  do
                  {
                    v57[v72] = v57[v72] + (*v80 * *v80);
                    v81 = *v80++;
                    *v79 = *v79 + (v81 * v81);
                    ++v79;
                    --v78;
                  }

                  while (v78);
                }

                v73 += v4 + 1;
                v75 += 4;
                --v74;
                ++v72;
              }

              while (v77 != v4);
            }

            goto LABEL_80;
          }

          goto LABEL_75;
        }
      }

      else if (v50 >= v61)
      {
        v63 = v61 * v4;
        v64 = *(a1 + 32);
        v65 = (v64 + 4 * v52 * v9);
        if (v50 != v62)
        {
          v70 = v63;
LABEL_75:
          if (v4)
          {
            v82 = 0;
            v83 = &v8[v70];
            do
            {
              v84 = v4;
              v85 = v83;
              v86 = v65;
              do
              {
                v57[v82] = v57[v82] + (*v86 * *v86);
                v87 = *v86++;
                *v85 = *v85 + (v87 * v87);
                ++v85;
                --v84;
              }

              while (v84);
              ++v82;
              v65 = (v65 + v54);
            }

            while (v82 != v4);
          }

          goto LABEL_80;
        }

        if (v4)
        {
          v66 = 0;
          v67 = &v8[v63];
          v68 = v64 + v59;
          do
          {
            if (v66)
            {
              for (i = 0; i != v66; ++i)
              {
                v57[v66] = v57[v66] + (*(v68 + 4 * i) * *(v68 + 4 * i));
                v67[i] = v67[i] + (*(v68 + 4 * i) * *(v68 + 4 * i));
              }
            }

            v57[v66] = v57[v66] + (v65[v66 * (v4 + 1)] * v65[v66 * (v4 + 1)]);
            ++v66;
            v68 += v54;
          }

          while (v66 != v4);
        }
      }

LABEL_80:
      ++v52;
      v60 += v53;
      v59 += v53;
      if (v52 == v56)
      {
        goto LABEL_81;
      }
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 4) < 1)
    {
      return;
    }

    v90 = vdupq_n_s64(v4 - 1);
    while (1)
    {
      MEMORY[0x28223BE20](v90);
      v103 = (v180 - v102);
      if (v4)
      {
        if ((*(a1 + 24) & 0xC) == 8)
        {
          v104 = v101;
        }

        else
        {
          v104 = v100;
        }

        v105 = v103 + 2;
        v106 = v92;
        v107 = v96;
        v108 = v95;
        do
        {
          v109 = vmovn_s64(vcgeq_u64(v90, v107));
          if (vuzp1_s16(v109, v90.n128_u64[0]).u8[0])
          {
            *(v105 - 2) = v104;
          }

          if (vuzp1_s16(v109, *&v90).i8[2])
          {
            *(v105 - 1) = v104;
          }

          if (vuzp1_s16(*&v90, vmovn_s64(vcgeq_u64(*&v90, *&v108))).i32[1])
          {
            *v105 = v104;
            v105[1] = v104;
          }

          v108 = vaddq_s64(v108, v97);
          v107 = vaddq_s64(v107, v97);
          v105 += 4;
          v106 -= 4;
        }

        while (v106);
      }

      v110 = *(a1 + 8);
      v111 = *(v110 + 8 * v94);
      v112 = v94 + 1;
      v113 = *(v110 + 8 * (v94 + 1));
      if (v111 < v113)
      {
        break;
      }

LABEL_139:
      v139 = v4;
      v140 = v8;
      if (v4)
      {
        do
        {
          v141 = 1.0;
          if (*v103 >= v98)
          {
            v141 = v99 / sqrt(*v103);
          }

          *v140++ = v141;
          ++v103;
          --v139;
        }

        while (v139);
      }

      v8 = (v8 + v91);
      if (v112 >= *(a1 + 4))
      {
        return;
      }
    }

    v114 = *(a1 + 16);
    v115 = *(a1 + 24);
    v116 = v115 & 0xC;
    v117 = v93 * v111;
    while (1)
    {
      v118 = *(v114 + 4 * v111);
      v119 = v118;
      if ((v115 & 2) != 0)
      {
        if (v94 <= v118 && v118 < *a1)
        {
          v125 = *(a1 + 32);
          if (v94 == v118)
          {
            if (v4)
            {
              v126 = 0;
              v127 = v125 + v117;
              do
              {
                if (v116 == 8)
                {
                  v128 = v126 + 1;
                }

                else
                {
                  v128 = v126;
                }

                if (v128 < v4)
                {
                  v129 = v103[v126];
                  v130 = (v127 + 4 * v128);
                  v131 = v4 - v128;
                  do
                  {
                    v132 = *v130++;
                    v129 = v129 + (v132 * v132);
                    --v131;
                  }

                  while (v131);
                  v103[v126] = v129;
                }

                ++v126;
                v127 += v91;
              }

              while (v126 != v4);
            }

            goto LABEL_138;
          }

          v133 = (v125 + 4 * v111 * v9);
          if (v4)
          {
            goto LABEL_134;
          }
        }
      }

      else if (v94 >= v118)
      {
        v120 = *(a1 + 32);
        if (v94 == v119)
        {
          if (v4)
          {
            for (j = 0; j != v4; ++j)
            {
              if (v116 == 8)
              {
                LODWORD(v122) = j;
              }

              else
              {
                LODWORD(v122) = j + 1;
              }

              v122 = v122;
              if (v122)
              {
                v123 = v103[j];
                v124 = v120;
                do
                {
                  v123 = v123 + (*(v124 + v117) * *(v124 + v117));
                  v124 += 4;
                  --v122;
                }

                while (v122);
                v103[j] = v123;
              }

              v120 += v91;
            }
          }

          goto LABEL_138;
        }

        v133 = (v120 + 4 * v111 * v9);
        if (v4)
        {
LABEL_134:
          for (k = 0; k != v4; ++k)
          {
            v135 = v103[k];
            v136 = v4;
            v137 = v133;
            do
            {
              v138 = *v137++;
              v135 = v135 + (v138 * v138);
              --v136;
            }

            while (v136);
            v103[k] = v135;
            v133 = (v133 + v91);
          }
        }
      }

LABEL_138:
      ++v111;
      v117 += v93;
      if (v111 == v113)
      {
        goto LABEL_139;
      }
    }
  }

  bzero(v6, 4 * v5);
  v11 = *(a1 + 4);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = *v13;
    v15 = 4 * (v4 * v4);
    v16 = 4 * v4;
    while (1)
    {
      v17 = v12 + 1;
      v18 = v13[v12 + 1];
      if (v14 < v18)
      {
        break;
      }

LABEL_44:
      v14 = v18;
      ++v12;
      if (v17 == v11)
      {
        goto LABEL_45;
      }
    }

    v19 = *(a1 + 16);
    v20 = v15 * v14;
    while (1)
    {
      v21 = *(v19 + 4 * v14);
      v22 = *(v19 + 4 * v14);
      v23 = *(a1 + 24);
      if ((v23 & 2) != 0)
      {
        if (v12 <= v21 && v22 < *a1)
        {
          v32 = *(a1 + 32);
          if (v12 == v21)
          {
            if (v4)
            {
              v33 = 0;
              v34 = &v8[v22 * v4];
              v35 = v32 + v20;
              do
              {
                if ((*(a1 + 24) & 0xC) == 8)
                {
                  v36 = v33 + 1;
                }

                else
                {
                  v36 = v33;
                }

                if (v36 < v4)
                {
                  v37 = &v34[v36];
                  v38 = (v35 + 4 * v36);
                  v39 = v4 - v36;
                  do
                  {
                    v40 = *v38++;
                    *v37 = *v37 + (v40 * v40);
                    ++v37;
                    --v39;
                  }

                  while (v39);
                }

                ++v33;
                v35 += v16;
              }

              while (v33 != v4);
            }

            goto LABEL_43;
          }

          v41 = (v32 + 4 * v14 * v9);
          if (v4)
          {
            goto LABEL_39;
          }
        }
      }

      else if (v12 >= v21)
      {
        v24 = *(a1 + 32);
        if (v12 == v21)
        {
          if (v4)
          {
            v25 = 0;
            v26 = &v8[v21 * v4];
            v27 = v24 + v20;
            do
            {
              v28 = v25 + 1;
              if ((v23 & 0xC) != 8 || v25 != 0)
              {
                v30 = 0;
                do
                {
                  v26[v30] = v26[v30] + (*(v27 + 4 * v30) * *(v27 + 4 * v30));
                  ++v30;
                  v23 = *(a1 + 24);
                  if ((v23 & 0xC) == 8)
                  {
                    v31 = v25;
                  }

                  else
                  {
                    v31 = v25 + 1;
                  }
                }

                while (v30 < v31);
              }

              v27 += v16;
              ++v25;
            }

            while (v28 != v4);
          }

          goto LABEL_43;
        }

        v41 = (v24 + 4 * v14 * v9);
        if (v4)
        {
LABEL_39:
          v42 = 0;
          v43 = &v8[v22 * v4];
          do
          {
            v44 = v4;
            v45 = v41;
            v46 = v43;
            do
            {
              v47 = *v45++;
              *v46 = *v46 + (v47 * v47);
              ++v46;
              --v44;
            }

            while (v44);
            ++v42;
            v41 = (v41 + v16);
          }

          while (v42 != v4);
        }
      }

LABEL_43:
      ++v14;
      v20 += v15;
      if (v14 == v18)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if ((*(a1 + 24) & 0xC) == 8)
  {
    if (v5 >= 1)
    {
      do
      {
        v48 = 1.0 / sqrt(*v8 + 1.0);
        *v8++ = v48;
        --v5;
      }

      while (v5);
    }
  }

  else if (v5 >= 1)
  {
    do
    {
      v160 = fabsf(*v8);
      v161 = 1.0;
      if (v160 >= 0.00000011921)
      {
        v161 = 1.0 / sqrt(v160);
      }

      *v8++ = v161;
      --v5;
    }

    while (v5);
  }
}

void _SparseCGIterate_Float(const SparseCGOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Float *X, DenseMatrix_Float *B, DenseMatrix_Float *R, const SparseOpaquePreconditioner_Float *Preconditioner, void *ApplyOperator)
{
  v10 = state;
  v11 = 4;
  if (*&X->attributes)
  {
    v11 = 0;
  }

  v12 = *(&X->rowCount + v11);
  if (!iteration)
  {
    goto LABEL_11;
  }

  if (v12 >= 1)
  {
    v13 = 0;
    data = R->data;
    do
    {
      if (*&R->attributes)
      {
        v15 = v13;
      }

      else
      {
        v15 = R->columnStride * v13;
      }

      data[v15] = *&state[4 * v12 + 4 * v13++];
    }

    while (v12 != v13);
  }

  if ((iteration & 0x80000000) == 0)
  {
LABEL_11:
    v16 = *&X->attributes;
    v17 = 4;
    if (v16)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(&X->rowCount + v18);
    if (v16)
    {
      v17 = 0;
    }

    v20 = *(&X->rowCount + v17);
    v67 = v12;
    v68 = &state[4 * v12];
    if (Preconditioner)
    {
      v21 = &state[4 * v20];
      v22 = v20 * v19;
      v23 = &v21[v20 * v19];
      mem = Preconditioner->mem;
      apply = Preconditioner->apply;
      v66 = &v23[v20 * v19];
      if (iteration)
      {
        v73 = *R;
        *&v72.rowCount = __PAIR64__(v20, v19);
        *&v72.columnStride = v19;
        v72.data = &v21[v22];
        (apply)(mem, 0, &v73, &v72);
        if (v20 >= 1)
        {
          v26 = 0;
          v27 = 4 * v19;
          v28 = &v21[v20 * v19];
          v29 = &v23[v20 * v19];
          do
          {
            v30 = *&v10[4 * v26];
            cblas_sdot_NEWLAPACK();
            *&v10[4 * v26] = v31;
            if (v19 >= 1)
            {
              v32 = v28;
              v33 = v29;
              v34 = v19;
              v35 = v31 / v30;
              do
              {
                v36 = *v32++;
                *v33 = v36 + (v35 * *v33);
                ++v33;
                --v34;
              }

              while (v34);
            }

            ++v26;
            v29 = (v29 + v27);
            v28 = (v28 + v27);
          }

          while (v26 != v20);
        }
      }

      else
      {
        v37 = v22;
        v73 = *R;
        *&v72.rowCount = __PAIR64__(v20, v19);
        *&v72.columnStride = v19;
        v72.data = &v21[v37];
        (apply)(mem, *&iteration, &v73, &v72);
        memcpy(&v23[v20 * v19], v23, v37 * 4);
        if (v20 >= 1)
        {
          v38 = 0;
          v39 = v10;
          v40 = v20;
          do
          {
            cblas_sdot_NEWLAPACK();
            *v39 = v41;
            v39 += 4;
            v23 += v19;
            ++v38;
            --v40;
          }

          while (v40);
        }
      }

      v42 = *(ApplyOperator + 2);
      *&v73.rowCount = __PAIR64__(v20, v19);
      *&v73.columnStride = v19;
      v73.data = v66;
      *&v72.rowCount = __PAIR64__(v20, v19);
      *&v72.columnStride = v19;
      v72.data = v21;
      v42(ApplyOperator, 0, 111, &v73, &v72);
      if (v20 >= 1)
      {
        v43 = 0;
        do
        {
          if (!converged[v43])
          {
            cblas_sdot_NEWLAPACK();
            cblas_saxpy_NEWLAPACK();
            cblas_saxpy_NEWLAPACK();
          }

          ++v43;
          v10 += 4;
          v21 += v19;
          --v20;
        }

        while (v20);
      }
    }

    else
    {
      if (*&R->attributes)
      {
        columnStride = R->columnStride;
      }

      else
      {
        columnStride = 1;
      }

      v45 = &state[4 * v20];
      *&v73.rowCount = __PAIR64__(v20, v19);
      v46 = &v45[4 * v20 * v19];
      v73.data = v46;
      *&v73.columnStride = v19;
      if (iteration)
      {
        if (v20 >= 1)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*&R->attributes)
            {
              v48 = i;
            }

            else
            {
              v48 = R->columnStride * i;
            }

            v49 = &R->data[v48];
            v50 = *&v10[4 * i];
            cblas_sdot_NEWLAPACK();
            *&v10[4 * i] = v51;
            if (v19 >= 1)
            {
              v52 = v46;
              v53 = v19;
              v54 = v51 / v50;
              do
              {
                *v52 = *v49 + (v54 * *v52);
                ++v52;
                v49 += columnStride;
                --v53;
              }

              while (v53);
            }

            v46 += v19;
          }
        }
      }

      else
      {
        sub_2367CDB58(&R->rowCount, &v73);
        if (v20 >= 1)
        {
          for (j = 0; j != v20; ++j)
          {
            cblas_sdot_NEWLAPACK();
            *&v10[4 * j] = v56;
          }
        }
      }

      v57 = *(ApplyOperator + 2);
      v72 = v73;
      v70[0] = v19;
      v70[1] = v20;
      v70[2] = v19;
      v70[3] = 0;
      v71 = v45;
      v57(ApplyOperator, 0, 111, &v72, v70);
      if (v20 >= 1)
      {
        v58 = 0;
        v59 = 4 * v19;
        do
        {
          if (!converged[v58])
          {
            cblas_sdot_NEWLAPACK();
            cblas_saxpy_NEWLAPACK();
            cblas_saxpy_NEWLAPACK();
            v59 = 4 * v19;
          }

          ++v58;
          v10 += 4;
          v45 += v59;
          --v20;
        }

        while (v20);
      }
    }

    if (v67 >= 1)
    {
      v60 = 0;
      v61 = 0;
      v62 = R->data;
      do
      {
        if (*&R->attributes)
        {
          v63 = 1;
        }

        else
        {
          v63 = R->columnStride;
        }

        *&v68[v61] = v62[v63 * v60];
        cblas_snrm2_NEWLAPACK();
        v62 = R->data;
        v65 = v60;
        if ((*&R->attributes & 1) == 0)
        {
          v65 = R->columnStride * v60;
        }

        v62[v65] = v64;
        v61 += 4;
        ++v60;
      }

      while (4 * v67 != v61);
    }
  }
}

uint64_t sub_236708260(int a1, int a2, int a3)
{
  v3 = a3 * a2;
  if (!a1)
  {
    v3 = 0;
  }

  return 4 * (v3 + ((2 * a2) | 1) * a3);
}

SparseIterativeStatus_t _SparseCGSolve_Float(const SparseCGOptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v52 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&X->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&X->rowCount + v10);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v12 = *(&X->rowCount + v9);
  v13 = v12 * v11;
  if (Preconditioner)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = 4 * (((2 * v11) | 1) * v12 + (v12 + v13) + v14) + v12 + 24;
  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (v16)
  {
    data = v16;
    *&R.attributes = 0;
    R.rowCount = v11;
    R.columnCount = v12;
    R.columnStride = v11;
    v18 = (&v16[v12 * v11 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v16 + v15 < v18)
    {
      goto LABEL_59;
    }

    v19 = v16 + v15;
    v47 = Preconditioner;
    v48 = options;
    R.data = v16;
    v46 = ApplyOperator;
    sub_236708720(&X->rowCount, B, &R.rowCount, ApplyOperator);
    v20 = (v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v19 < v20)
    {
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      v21 = v12;
      v22 = data;
      v23 = v18;
      do
      {
        cblas_snrm2_NEWLAPACK();
        *v23++ = v24;
        v22 += v11;
        --v21;
      }

      while (v21);
    }

    if (v19 < ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_59:
      __break(1u);
    }

    bzero(((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8), v12);
    if (v48->maxIterations)
    {
      maxIterations = v48->maxIterations;
    }

    else
    {
      maxIterations = 100;
    }

    atol = v48->atol;
    v27.n128_u64[0] = *&v48->rtol;
    v27.n128_f32[0] = v27.n128_f64[0];
    v30 = v27.n128_f32[0] == 0.0;
    if (v27.n128_f32[0] < 0.0)
    {
      v27.n128_f32[0] = 0.0;
    }

    if (v30)
    {
      v31 = 0.00034527;
    }

    else
    {
      v31 = v27.n128_f32[0];
    }

    reportStatus = v48->reportStatus;
    if (reportStatus)
    {
      v25 = (reportStatus)("   Itr   ||r[0]||_2\n", v27);
    }

    if (maxIterations < 1)
    {
LABEL_42:
      reportError = v48->reportError;
      if (!v48->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BAC8();
        }

        _SparseTrap();
      }

      memset(&__str[35], 0, 221);
      strcpy(__str, "Exceeded maximum iteration limit.\n");
      (reportError)(__str);
      v44 = SparseIterativeMaxIterations;
    }

    else
    {
      v33 = 0;
      v34 = atol;
      while (1)
      {
        if (v48->reportStatus && (v33 < 0xA || !(v33 % 0xA)))
        {
          if (v33)
          {
            v35 = data;
          }

          else
          {
            v35 = v18;
          }

          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v33, *v35);
          v25 = (v48->reportStatus)(__str);
        }

        _SparseCGIterate_Float(v25, v33, ((v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8), ((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8), X, v26, &R, v47, v46);
        data = R.data;
        if (v12 < 1)
        {
          break;
        }

        v36 = 4 * R.columnStride;
        v37 = 1;
        v38 = v12;
        v39 = ((v18 + 4 * v12 + 7) & 0xFFFFFFFFFFFFFFF8);
        v40 = v18;
        v41 = R.data;
        do
        {
          if ((*v39 & 1) == 0)
          {
            v42 = fabsf(*v41) < (v34 + (v31 * *v40));
            *v39 = v42;
            v37 &= v42;
          }

          v41 = (v41 + v36);
          ++v40;
          ++v39;
          --v38;
        }

        while (v38);
        if (v37)
        {
          goto LABEL_53;
        }

        if (++v33 == maxIterations)
        {
          goto LABEL_42;
        }
      }

      v33 = 0;
LABEL_53:
      if (!v48->reportStatus)
      {
        v44 = SparseIterativeConverged;
        goto LABEL_56;
      }

      snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v33 + 1, *data);
      (v48->reportStatus)(__str);
      v44 = SparseIterativeConverged;
    }

    data = R.data;
LABEL_56:
    free(data);
    return v44;
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BB0C();
    }

    _SparseTrap();
  }

  memset(__str, 0, 256);
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v15);
  (options->reportError)(__str);
  return -99;
}

uint64_t sub_236708720(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = 4;
  if (*(a1 + 3))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + v7);
  if (*(a1 + 3))
  {
    v6 = 0;
  }

  v9 = *(a1 + v6);
  v10 = *(a4 + 16);
  v25 = *a1;
  v26 = *(a1 + 2);
  v23 = *a3;
  v24 = *(a3 + 2);
  result = v10(a4, 0, 111, &v25, &v23);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if (v8 >= 1)
      {
        v13 = 0;
        v14 = *(a2 + 16);
        v15 = *(a3 + 2);
        v16 = *(a2 + 8);
        v17 = *(a3 + 2);
        do
        {
          if (*(a2 + 12))
          {
            v18 = v13;
          }

          else
          {
            v18 = i;
          }

          if (*(a2 + 12))
          {
            v19 = i;
          }

          else
          {
            v19 = v13;
          }

          v20 = *(v14 + 4 * (v19 + v16 * v18));
          if (*(a3 + 3))
          {
            v21 = v13;
          }

          else
          {
            v21 = i;
          }

          if (*(a3 + 3))
          {
            v22 = i;
          }

          else
          {
            v22 = v13;
          }

          *(v15 + 4 * (v22 + v17 * v21)) = v20 - *(v15 + 4 * (v22 + v17 * v21));
          ++v13;
        }

        while (v8 != v13);
      }
    }
  }

  return result;
}

uint64_t sub_23670882C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 20);
  if (!v4)
  {
    v4 = 16;
  }

  v5 = *(a1 + 16);
  v6 = ((v4 + 3) * v4 + (2 * v4 + 2) * a3) * a4;
  v7 = a4 + a4 * (v4 + a3) * (v4 + 3);
  v8 = a4 * a3 * v4;
  if (v5 != 2)
  {
    v8 = 0;
  }

  v9 = v8 + a4 + v7;
  if ((v5 - 1) > 1)
  {
    v9 = v6;
  }

  return 4 * v9;
}

void _SparseGMRESIterate_Float(const SparseGMRESOptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Float *X, DenseMatrix_Float *B, DenseMatrix_Float *R, const SparseOpaquePreconditioner_Float *Preconditioner, void *ApplyOperator)
{
  v205 = R;
  v9 = state;
  v10 = ApplyOperator;
  variant = options->variant;
  if ((variant - 1) >= 2)
  {
    if (options->variant == SparseVariantDQGMRES)
    {
      v17 = *&X->attributes;
      v18 = 4;
      if (v17)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v18 = 0;
      }

      if (options->nvec)
      {
        nvec = options->nvec;
      }

      else
      {
        nvec = 16;
      }

      if (*&R->attributes)
      {
        columnStride = R->columnStride;
      }

      else
      {
        columnStride = 1;
      }

      if (iteration < 0)
      {

        sub_236708720(&X->rowCount, B, &R->rowCount, ApplyOperator);
      }

      else
      {
        v46 = *(&X->rowCount + v19);
        v47 = *(&X->rowCount + v18);
        v204 = v47;
        v198 = nvec * v47 * nvec;
        v176 = &state[4 * nvec * v47 * v46 + 4 * v198];
        v178 = &state[4 * nvec * v47 * v46];
        v196 = 2 * nvec * v47;
        v208 = 4 * v47 * v46;
        v48 = &v176[4 * v196 + v208];
        v201 = nvec * v47 * v46;
        __dst = &v48[4 * v201];
        v187 = &__dst[v208];
        v194 = (iteration % nvec);
        v215 = v47 * v46;
        v49 = iteration % nvec * v47 * v46;
        __srca = &v48[4 * v49];
        if (!iteration && v47 >= 1)
        {
          v50 = 0;
          v51 = state;
          v52 = 4 * columnStride;
          do
          {
            if (!converged[v50])
            {
              v53 = (*&R->attributes & 1) != 0 ? v50 : R->columnStride * v50;
              v54 = &R->data[v53];
              cblas_snrm2_NEWLAPACK();
              R = v205;
              *&v187[4 * v50 * nvec] = v55;
              if (v46 >= 1)
              {
                v56 = v51;
                v57 = v46;
                do
                {
                  *v56++ = *v54 / *&v187[4 * v50 * nvec];
                  v54 = (v54 + v52);
                  --v57;
                }

                while (v57);
              }
            }

            ++v50;
            v51 += 4 * v46;
          }

          while (v50 != v204);
        }

        v58 = 4 * v201;
        v59 = 4 * v198;
        v202 = 4 * v196;
        memcpy(__dst, __srca, v208);
        if (Preconditioner)
        {
          mem = Preconditioner->mem;
          apply = Preconditioner->apply;
          v221 = *&v46;
          v222 = v204;
          v223 = v46;
          v224 = 0;
          v225 = &v9[4 * v49];
          v216 = v46;
          v217 = v204;
          v218 = v46;
          v219 = 0;
          v220 = __srca;
          (apply)(mem, 0, &v221, &v216);
        }

        else if (v204 >= 1)
        {
          v62 = 4 * v46;
          v63 = &v9[4 * v49 + v59 + v58 + v202 + v208];
          v64 = converged;
          v65 = v204;
          do
          {
            v66 = *v64++;
            if ((v66 & 1) == 0)
            {
              memcpy(v63, &v9[4 * v49], v62);
            }

            v49 += v46;
            v63 += v62;
            --v65;
          }

          while (v65);
        }

        v67 = *(ApplyOperator + 2);
        v221 = *&v46;
        v222 = v204;
        v223 = v46;
        v224 = 0;
        v225 = __srca;
        v216 = v46;
        v217 = v204;
        v218 = v46;
        v219 = 0;
        v220 = &v176[4 * v196];
        v67(ApplyOperator, 0, 111, &v221, &v216);
        if (v204 >= 1)
        {
          v68 = 0;
          v69 = nvec - iteration;
          if (nvec <= iteration)
          {
            v69 = 1;
          }

          v209 = nvec - v69;
          v70 = nvec < 1 || nvec - v69 < 0;
          v71 = v70;
          v171 = v71;
          v213 = v194 * nvec;
          v190 = ((iteration + 1) % nvec);
          v72 = &v9[4 * (iteration + 1) % nvec * v215];
          v211 = v69 + v194;
          v73 = 4 * v46;
          v74 = &v9[v202 + v59 + v58];
          v185 = (iteration - nvec) & ~((iteration - nvec) >> 31);
          do
          {
            if (!converged[v68])
            {
              v199 = v74;
              v203 = v72;
              v75 = &v178[4 * v68 * nvec * nvec];
              if ((v171 & 1) == 0)
              {
                v76 = 0;
                do
                {
                  cblas_sdot_NEWLAPACK();
                  *&v75[4 * ((v211 + v76) % nvec) + 4 * v213] = v77;
                  cblas_saxpy_NEWLAPACK();
                  if (v76 + 1 >= nvec)
                  {
                    break;
                  }

                  v70 = v76++ < v209;
                }

                while (v70);
              }

              cblas_snrm2_NEWLAPACK();
              if (v78 == 0.0)
              {
                v78 = 1.1755e-38;
              }

              v221 = v78;
              v79 = v199;
              v80 = v203;
              v81 = v46;
              if (v46 >= 1)
              {
                do
                {
                  v82 = *v79++;
                  *v80++ = v82 / v78;
                  --v81;
                }

                while (v81);
              }

              v83 = &v176[4 * v68 * 2 * nvec];
              v84 = &v75[4 * v213];
              if (iteration > v185)
              {
                v85 = iteration - v185;
                v86 = (iteration - nvec) & ~((iteration - nvec) >> 31);
                do
                {
                  v87 = v86 % nvec;
                  v88 = *&v83[8 * (v86 % nvec)];
                  if (v86 % nvec + 1 < nvec)
                  {
                    v89 = v87 + 1;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v90 = *&v83[4 * ((2 * (v87 & 0x3FFFFFFF)) | 1)];
                  if (nvec == v85)
                  {
                    v91 = v88 * *&v84[4 * v89];
                  }

                  else
                  {
                    v92 = *&v84[4 * v87];
                    v93 = *&v84[4 * v89];
                    *&v84[4 * v87] = (v90 * v93) + (v88 * v92);
                    v91 = (v88 * v93) - (v90 * v92);
                  }

                  *&v84[4 * v89] = v91;
                  ++v86;
                  --v85;
                }

                while (v85);
              }

              v94 = &v187[4 * v68 * nvec];
              v95 = &v83[4 * (2 * v194)];
              v96 = &v83[4 * ((2 * (v194 & 0x3FFFFFFF)) | 1)];
              cblas_srotg_NEWLAPACK();
              *&v94[4 * v190] = -(*v96 * *&v94[4 * v194]);
              *&v94[4 * v194] = *v95 * *&v94[4 * v194];
              if (nvec <= iteration)
              {
                cblas_saxpy_NEWLAPACK();
                cblas_sgemm_NEWLAPACK();
              }

              cblas_sgemm_NEWLAPACK();
              cblas_sscal_NEWLAPACK();
              cblas_saxpy_NEWLAPACK();
              if (*&v205->attributes)
              {
                v97 = v68;
              }

              else
              {
                v97 = v205->columnStride * v68;
              }

              v72 = v203;
              v73 = 4 * v46;
              v74 = v199;
              v205->data[v97] = fabsf(*&v94[4 * v190]);
            }

            ++v68;
            v72 += v73;
            v74 += v73;
          }

          while (v68 != v204);
        }
      }
    }

    return;
  }

  v12 = 4;
  if (*&X->attributes)
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&X->rowCount + v13);
  if (*&X->attributes)
  {
    v12 = 0;
  }

  v15 = *(&X->rowCount + v12);
  if (*&R->attributes)
  {
    v16 = R->columnStride;
  }

  else
  {
    v16 = 1;
  }

  v188 = v16;
  if (options->nvec)
  {
    v21 = options->nvec;
  }

  else
  {
    v21 = 16;
  }

  v207 = (iteration % v21);
  v177 = v21 + 1;
  v22 = (v21 + 1) * v15;
  v173 = 4 * v22 * v14;
  v214 = v21 * v21;
  v193 = &state[v173];
  v167 = 8 * v15 * v21;
  v168 = 4 * v21 * v21 * v15;
  v186 = &state[v173 + v168];
  v195 = v15 * v14;
  v181 = &v186[4 * v195 + v167];
  __src = v15 * v14;
  v23 = v181 + 4 * v195;
  v189 = v21;
  v24 = 4 * v21 * v15 * v14;
  if (variant == 2)
  {
    v25 = v181 + 4 * v15 * v14;
  }

  else
  {
    v25 = 0;
  }

  v184 = v25;
  if (variant != 2)
  {
    v24 = 0;
  }

  v197 = v23 + v24;
  v210 = v15;
  v212 = v23 + v24 + 4 * v22;
  if (iteration < 0 || !v207)
  {
    if (!iteration)
    {
LABEL_127:
      if (v15 >= 1)
      {
        v119 = 0;
        v120 = v9;
        do
        {
          *(v212 + 4 * v119) = 0;
          if (!converged[v119])
          {
            v121 = (*&R->attributes & 1) != 0 ? v119 : R->columnStride * v119;
            v122 = &R->data[v121];
            cblas_snrm2_NEWLAPACK();
            R = v205;
            *(v197 + 4 * v119 * v177) = v123;
            v15 = v210;
            if (v14 >= 1)
            {
              v124 = v120;
              v125 = v14;
              do
              {
                *v124++ = *v122 / *(v197 + 4 * v119 * v177);
                v122 += v188;
                --v125;
              }

              while (v125);
            }
          }

          ++v119;
          v120 += v14;
        }

        while (v119 != v15);
      }

      goto LABEL_137;
    }

    if (v15 < 1)
    {
      v33 = X;
      if (variant == 2)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v26 = 0;
      v27 = 4 * v22;
      v165 = v24 + 8 * v195;
      v28 = v165 + v168 + v173 + v167;
      v29 = &state[v28];
      v166 = v27;
      v30 = &state[v27 + v28];
      v31 = v15;
      do
      {
        v32 = *v30;
        v30 += 4;
        if (v32)
        {
          cblas_strsv_NEWLAPACK();
        }

        v29 += 4 * v177;
        v26 += v214;
        --v31;
      }

      while (v31);
      v33 = X;
      v34 = 0;
      if (variant == 2)
      {
        v35 = v210;
        do
        {
          if (*(v212 + 4 * v34))
          {
            cblas_sgemv_NEWLAPACK();
            v35 = v210;
            if (v14 >= 1)
            {
              data = X->data;
              v37 = X->columnStride;
              v38 = v37 * v34;
              v39 = &v9[v168 + v173 + v167];
              v40 = v34;
              v41 = v14;
              do
              {
                v42 = *v39++;
                v43 = v42;
                if (*&X->attributes)
                {
                  v44 = v40;
                }

                else
                {
                  v44 = v38;
                }

                data[v44] = v43 + data[v44];
                ++v38;
                v40 += v37;
                --v41;
              }

              while (v41);
            }
          }

          ++v34;
        }

        while (v34 != v35);
        goto LABEL_126;
      }

      v98 = v168 + v173 + v167;
      v99 = v98 + 4 * __src;
      v100 = 4 * v14;
      v101 = v98 + v165;
      v102 = v98 + v165 + v166;
      v15 = v210;
      v103 = v210;
      do
      {
        if (*&v9[v102])
        {
          cblas_sgemv_NEWLAPACK();
          v15 = v210;
        }

        v99 += v100;
        v34 += v100;
        v101 += 4 * v177;
        v102 += 4;
        --v103;
      }

      while (v103);
    }

    if (Preconditioner)
    {
      v104 = Preconditioner->mem;
      v105 = Preconditioner->apply;
      v221 = *&v14;
      v222 = v15;
      v223 = v14;
      v224 = 0;
      v225 = &v186[4 * v195 + v167];
      v216 = v14;
      v217 = v15;
      v218 = v14;
      v219 = 0;
      v220 = &v186[v167];
      (v105)(v104, 0, &v221, &v216);
      v15 = v210;
      v106 = &v186[v167];
    }

    else
    {
      v106 = &v186[4 * v195 + v167];
    }

    if (v15 >= 1)
    {
      v107 = 0;
      for (i = 0; i != v15; ++i)
      {
        if (v14 >= 1 && *(v212 + 4 * i))
        {
          v109 = (v106 + 4 * v107);
          v110 = v33->data;
          v111 = v33->columnStride;
          v112 = v111 * i;
          v113 = i;
          v114 = v14;
          do
          {
            v115 = *v109++;
            v116 = v115;
            if (*&v33->attributes)
            {
              v117 = v113;
            }

            else
            {
              v117 = v112;
            }

            v110[v117] = v116 + v110[v117];
            ++v112;
            v113 += v111;
            --v114;
          }

          while (v114);
        }

        v107 += v14;
      }
    }

LABEL_126:
    p_rowCount = &v33->rowCount;
    v10 = ApplyOperator;
    sub_236708720(p_rowCount, B, &v205->rowCount, ApplyOperator);
    v15 = v210;
    R = v205;
    if (iteration < 0)
    {
      return;
    }

    goto LABEL_127;
  }

LABEL_137:
  if (Preconditioner)
  {
    v126 = Preconditioner->mem;
    v127 = Preconditioner->apply;
    if (options->variant == SparseVariantFGMRES)
    {
      v128 = v184 + 4 * v207 * __src;
    }

    else
    {
      v128 = &v186[4 * v195 + v167];
    }

    v221 = *&v14;
    v222 = v15;
    v223 = v14;
    v224 = 0;
    v225 = &v9[4 * v207 * __src];
    v216 = v14;
    v217 = v15;
    v218 = v14;
    v219 = 0;
    v220 = v128;
    v129 = v15;
    (v127)(v126, 0, &v221, &v216);
    v130 = v10[2];
    v221 = *&v14;
    v222 = v129;
    v223 = v14;
    v224 = 0;
    v225 = v128;
    v216 = v14;
    v217 = v129;
    v218 = v14;
    v219 = 0;
    v220 = &v186[v167];
    v130(v10, 0, 111, &v221, &v216);
  }

  else
  {
    v131 = v10[2];
    v221 = *&v14;
    v222 = v15;
    v223 = v14;
    v224 = 0;
    v225 = &v9[4 * v207 * __src];
    v216 = v14;
    v217 = v15;
    v218 = v14;
    v219 = 0;
    v220 = &v186[v167];
    v129 = v15;
    v131(v10, 0, 111, &v221, &v216, B);
  }

  if (v129 >= 1)
  {
    v132 = v129;
    v133 = 0;
    v134 = 0;
    v172 = v189 * v207;
    v179 = 2 * v189;
    v135 = &v9[4 * v172 + v173];
    v136 = 4 * v14;
    v137 = v168 + v173;
    v174 = v168 + v173 + v167;
    v138 = &v9[v137 + 4];
    v139 = 4 * v179;
    v191 = v135;
    v169 = v135 + 4;
    while (converged[v134])
    {
LABEL_160:
      ++v134;
      v133 += v214;
      v9 += v136;
      v138 += v139;
      if (v134 == v132)
      {
        return;
      }
    }

    ++*(v212 + 4 * v134);
    if ((v207 & 0x80000000) == 0)
    {
      v140 = (v207 + 1);
      v141 = &v191[4 * v133];
      v142 = v9;
      do
      {
        cblas_sdot_NEWLAPACK();
        *v141 = v143;
        v141 += 4;
        cblas_saxpy_NEWLAPACK();
        v142 += 4 * v195;
        --v140;
      }

      while (v140);
    }

    cblas_snrm2_NEWLAPACK();
    v221 = v144;
    if (v144 == 0.0)
    {
      v145 = v205;
      v146 = v205->data;
      v147 = 0.0;
      if (*&v205->attributes)
      {
LABEL_151:
        v148 = v134;
LABEL_159:
        v132 = v210;
        v136 = 4 * v14;
        v139 = 4 * v179;
        v146[v148] = v147;
        goto LABEL_160;
      }
    }

    else
    {
      v149 = v174;
      v150 = 4 * (v207 + 1) * v195;
      v151 = v14;
      if (v14 >= 1)
      {
        do
        {
          *&v9[v150] = *&v9[v149] / v144;
          v150 += 4;
          v149 += 4;
          --v151;
        }

        while (v151);
      }

      if (v207 >= 1)
      {
        v152 = *&v193[4 * v214 * v134 + 4 * v172];
        v153 = v138;
        v154 = v207;
        v155 = &v169[4 * v133];
        do
        {
          v156 = *(v153 - 1);
          v157 = (*v153 * *v155) + (v156 * v152);
          v152 = (v156 * *v155) - (*v153 * v152);
          *(v155 - 1) = v157;
          *v155 = v152;
          v153 += 2;
          ++v155;
          --v154;
        }

        while (v154);
      }

      v158 = &v186[4 * v134 * v179];
      v159 = v197 + 4 * v134 * v177;
      v160 = &v158[8 * v207];
      v161 = &v158[4 * ((2 * v207) | 1)];
      cblas_srotg_NEWLAPACK();
      v162 = *(v159 + 4 * v207);
      v163 = -(*v161 * v162);
      *(v159 + 4 * (v207 + 1)) = v163;
      *(v159 + 4 * v207) = v162 * *v160;
      v147 = fabsf(v163);
      v145 = v205;
      v146 = v205->data;
      if (*&v205->attributes)
      {
        goto LABEL_151;
      }
    }

    v148 = v145->columnStride * v134;
    goto LABEL_159;
  }
}

SparseIterativeStatus_t _SparseGMRESSolve_Float(SparseGMRESOptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = 4;
  if (*&X->attributes)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&X->rowCount + v8);
  if (*&X->attributes)
  {
    v7 = 0;
  }

  v10 = *(&X->rowCount + v7);
  variant = options->variant;
  if (Preconditioner || variant != 2)
  {
    if (options->nvec)
    {
      nvec = options->nvec;
    }

    else
    {
      nvec = 16;
    }

    v14 = variant - 1;
    v15 = v10 * v9;
    if (variant == 2)
    {
      v16 = v15 * nvec;
    }

    else
    {
      v16 = 0;
    }

    v17 = v10 + 4 * (v10 + (v10 + v15) + v16 + v10 + v10 * (nvec + v9) * (nvec + 3));
    if (v14 > 1)
    {
      v17 = v10 + 4 * (((nvec + 3) * nvec + (2 * nvec + 2) * v9) * v10 + (v10 + v10 * v9));
    }

    v18 = v17 + 24;
    v19 = malloc_type_malloc(v17 + 24, 0x100004077774924uLL);
    if (v19)
    {
      v20 = v19 + v18;
      *&R.attributes = 0;
      R.rowCount = v9;
      R.columnCount = v10;
      R.columnStride = v9;
      v21 = ((&v19[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8);
      if (v20 < v21 || (v52 = v19, R.data = v19, LODWORD(v19) = sub_236708720(&X->rowCount, B, &R.rowCount, ApplyOperator), v22 = &v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8, v20 < v22) || (Preconditionera = Preconditioner, bzero(v21, v10), v49 = ((v22 + 4 * v10 + 7) & 0xFFFFFFFFFFFFFFF8), v20 < v49))
      {
        __break(1u);
        return v19;
      }

      v47 = v9;
      if (v10 >= 1)
      {
        v23 = v10;
        v24 = v52;
        v25 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
        do
        {
          cblas_snrm2_NEWLAPACK();
          *v25++ = v26;
          v24 += v9;
          --v23;
        }

        while (v23);
      }

      if (options->maxIterations)
      {
        maxIterations = options->maxIterations;
      }

      else
      {
        maxIterations = 100;
      }

      rtol = options->rtol;
      v29 = rtol == 0.0;
      if (rtol < 0.0)
      {
        rtol = 0.0;
      }

      if (v29)
      {
        v30 = 0.00034527;
      }

      else
      {
        v30 = rtol;
      }

      if (maxIterations < 1)
      {
LABEL_51:
        reportError = options->reportError;
        if (!options->reportError)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_23670BAC8();
          }

          _SparseTrap();
        }

        memset(&__str[35], 0, 221);
        strcpy(__str, "Exceeded maximum iteration limit.\n");
        (reportError)(__str);
        v44 = 1;
        v43 = v52;
      }

      else
      {
        v31 = 0;
        atol = options->atol;
        v33 = v47;
        if (*&R.attributes)
        {
          v33 = 1;
        }

        v34 = 4 * v33;
        while (1)
        {
          if (options->reportStatus && (v31 < nvec || !(v31 % nvec)))
          {
            v35 = v52;
            if (!v31)
            {
              v35 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
            }

            snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31, *v35);
            (options->reportStatus)(__str);
          }

          _SparseGMRESIterate_Float(options, v31, v49, v21, X, B, &R, Preconditionera, ApplyOperator);
          if (v10 < 1)
          {
            break;
          }

          v36 = 1;
          v37 = v10;
          v38 = v52;
          v39 = v21;
          v40 = (&v21[v10 + 7] & 0xFFFFFFFFFFFFFFF8);
          do
          {
            v41 = *v39 || fabsf(*v38) < (atol + (v30 * *v40));
            *v39++ = v41;
            v36 &= v41;
            ++v40;
            v38 = (v38 + v34);
            --v37;
          }

          while (v37);
          if (v36)
          {
            goto LABEL_65;
          }

          if (++v31 == maxIterations)
          {
            goto LABEL_51;
          }
        }

        v31 = 0;
LABEL_65:
        v43 = v52;
        if (options->reportStatus)
        {
          snprintf(__str, 0xC8uLL, "%5d   %10.2e\n", v31 + 1, *v52);
          (options->reportStatus)(__str);
        }

        _SparseGMRESIterate_Float(options, -1, v49, v21, X, B, &R, Preconditionera, ApplyOperator);
        v44 = 0;
      }

      free(v43);
    }

    else
    {
      if (!options->reportError)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_23670BB0C();
        }

        _SparseTrap();
      }

      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld.\n", v18);
      (options->reportError)(__str);
      v44 = -99;
    }
  }

  else
  {
    v12 = options->reportError;
    if (!options->reportError)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_23670BB88();
      }

      _SparseTrap();
    }

    memset(&__str[100], 0, 156);
    strcpy(__str, "FGMRES requires a preconditioner.\nIf no preconditioner is available, use GMRES or DQGMRES instead.\n");
    (v12)(__str);
    v44 = -1;
  }

  LODWORD(v19) = v44;
  return v19;
}

uint64_t sub_236709EA4(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v5 = *(a1 + 16);
  if (v5 >= a3)
  {
    v5 = a3;
  }

  if (v5 >= a4)
  {
    v5 = a4;
  }

  v6 = 4 * (a3 + (v5 + 3) * a4 + 3) + 88;
  v7 = 8 * a4 * a5 + 104;
  if (!a2)
  {
    v7 = 104;
  }

  return v7 + v6 * a5;
}

void _SparseLSMRIterate_Float(const SparseLSMROptions *options, int iteration, char *state, const BOOL *converged, DenseMatrix_Float *X, DenseMatrix_Float *B, DenseMatrix_Float *R, const SparseOpaquePreconditioner_Float *Preconditioner, void *ApplyOperator)
{
  v12 = converged;
  v13 = options;
  v14 = 4;
  if (*&B->attributes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&B->rowCount + v15);
  if (*&X->attributes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(&X->rowCount + v17);
  if (*&X->attributes)
  {
    v14 = 0;
  }

  v19 = *(&X->rowCount + v14);
  v20 = ApplyOperator;
  nvec = options->nvec;
  if (nvec >= v16)
  {
    nvec = v16;
  }

  if (nvec >= v18)
  {
    v22 = *(&X->rowCount + v17);
  }

  else
  {
    v22 = nvec;
  }

  v65[0] = v18;
  v65[1] = v19;
  v65[2] = v18;
  v65[3] = 0;
  v66 = &state[88 * v19 + 7] & 0xFFFFFFFFFFFFFFF8;
  v63[0] = v18;
  v63[1] = v19;
  v63[2] = v18;
  v63[3] = 0;
  v64 = v66 + 4 * v19 * v18;
  v23 = v64 + 4 * v19 * v18;
  *&v61 = __PAIR64__(v19, v16);
  *(&v61 + 1) = v16;
  v62 = v23 + 4 * v19 * v18 * v22;
  *&v59 = __PAIR64__(v19, v18);
  *(&v59 + 1) = v18;
  v60 = v62 + 4 * v19 * v16;
  v24 = (v60 + 4 * v19 * v18);
  *&v57 = __PAIR64__(v19, v18);
  *(&v57 + 1) = v18;
  v58 = 0;
  *&v55 = __PAIR64__(v19, v18);
  *(&v55 + 1) = v18;
  v56 = 0;
  if (Preconditioner)
  {
    v25 = 4 * v19 * v18;
    v58 = v60 + v25;
    v56 = &v24[v25 / 4];
    if ((iteration & 0x80000000) == 0)
    {
      v24 = (v24 + v25 + v25);
      goto LABEL_18;
    }

    v47 = Preconditioner;
    sub_2367CDB58(&X->rowCount, &v57);
    mem = v47->mem;
    apply = v47->apply;
    v69 = v57;
    v70 = v58;
    v67 = *&X->rowCount;
    data = X->data;
    (apply)(mem, 111, &v69, &v67);
LABEL_46:
    sub_236708720(&X->rowCount, B, &R->rowCount, ApplyOperator);
    return;
  }

  if (iteration < 0)
  {
    goto LABEL_46;
  }

LABEL_18:
  v26 = &v24[v19];
  v27 = &v26[v19];
  if (iteration || (v54 = state, v53 = Preconditioner, v52 = &v26[v19], v30 = sub_23670A23C(options, v16, v18, v19, converged, &v61, &v59, &X->rowCount, &B->rowCount, &v57, v65, v63, v23, Preconditioner, ApplyOperator, state), v13 = options, iteration = 0, v12 = converged, Preconditioner = v53, v20 = ApplyOperator, v26 = &v24[v19], v27 = v52, state = v54, (v30 & 1) == 0))
  {
    lambda = v13->lambda;
    v51 = v20;
    v50 = Preconditioner;
    v32 = state;
    v33 = X;
    v34 = v26;
    sub_23670A62C(iteration, v16, v18, v19, v12, &v61, &v59, v33, lambda, &v57, &v55, v65, v63, v23, v24, v26, v27, v50, v51, state);
    if (v19 >= 1)
    {
      v35 = 0;
      v36 = 4;
      if ((*&R->attributes & 1) == 0)
      {
        v36 = 0;
      }

      v37 = *(&R->rowCount + v36);
      v38 = (v32 + 36);
      do
      {
        if (v37 >= 1)
        {
          v39 = (*&R->attributes & 1) != 0 ? v35 : R->columnStride * v35;
          v40 = R->data;
          v40[v39] = fabsf(*v38);
          if (v37 != 1)
          {
            columnStride = R->columnStride;
            v42 = columnStride * v35;
            v43 = (*&R->attributes & 1) != 0 ? v35 + columnStride : v42 + 1;
            v40[v43] = *&v24[v35];
            if (v37 >= 3)
            {
              v44 = v42 + 2;
              if (*&R->attributes)
              {
                v44 = v35 + 2 * columnStride;
              }

              v40[v44] = *&v34[v35];
              if (v37 != 3)
              {
                if (*&R->attributes)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = v35;
                }

                if (*&R->attributes)
                {
                  v46 = v35;
                }

                else
                {
                  v46 = 3;
                }

                v40[v46 + columnStride * v45] = *&v27[v35];
              }
            }
          }
        }

        ++v35;
        v38 += 22;
      }

      while (v19 != v35);
    }
  }
}

uint64_t sub_23670A23C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6, __int128 *a7, int *a8, int *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v20 = a2;
  }

  v46 = a3;
  if (v20 >= a3)
  {
    v20 = a3;
  }

  v42 = v20;
  sub_2367CDB58(a9, a6);
  sub_2367CDC98(a8);
  v21 = 1;
  if (a4 >= 1)
  {
    v22 = 0;
    v23 = a16;
    v24 = a4;
    v25 = 1;
LABEL_7:
    v26 = v23 + 88 * v22++;
    do
    {
      if ((*(a5 + v22 - 1) & 1) == 0)
      {
        *v26 = 0;
        *(v26 + 4) = 0;
        cblas_snrm2_NEWLAPACK();
        *(v26 + 8) = v27;
        if (v27 > 0.0)
        {
          cblas_sscal_NEWLAPACK();
          v25 = 0;
          v23 = a16;
          if (v22 != a4)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }

        *v26 = 1;
        *(v26 + 36) = 0;
      }

      ++v22;
      v26 += 88;
    }

    while (v22 - a4 != 1);
    v23 = a16;
    if (v25)
    {
      v21 = 1;
      return v21 & 1;
    }

LABEL_17:
    v28 = *(a15 + 16);
    v49 = *a6;
    v50 = *(a6 + 2);
    if (a14)
    {
      v47 = *a10;
      v48 = *(a10 + 2);
      v28();
      v29 = *(a14 + 8);
      v30 = *(a14 + 16);
      v49 = *a10;
      v50 = *(a10 + 2);
      v47 = *a7;
      v48 = *(a7 + 2);
      v30(v29, 112, &v49, &v47);
    }

    else
    {
      v47 = *a7;
      v48 = *(a7 + 2);
      v28();
    }

    v31 = 0;
    v32 = 0;
    __n = 4 * v46;
    v33 = (v23 + 84);
    v21 = 1;
    do
    {
      if ((*(a5 + v32) & 1) == 0 && *(v33 - 19) != 0.0)
      {
        v34 = (*(a7 + 2) + 4 * v32 * *(a7 + 2));
        v35 = *(a11 + 8);
        v43 = *(a11 + 16);
        v44 = *(a12 + 16);
        v36 = *(a12 + 8);
        cblas_snrm2_NEWLAPACK();
        *(v33 - 20) = v37;
        if (v37 > 0.0)
        {
          cblas_sscal_NEWLAPACK();
          v37 = *(v33 - 20);
        }

        v38 = v37 * *(v33 - 19);
        if (v38 == 0.0)
        {
          *(v33 - 84) = 1;
        }

        else
        {
          *(v33 - 44) = v42 > 0;
          *(v33 - 10) = 0.0;
          *(v33 - 9) = v42;
          *(v33 - 43) = 0;
          if (v42 >= 1)
          {
            memcpy((a13 + 4 * v31), v34, __n);
            v37 = *(v33 - 20);
            v38 = v37 * *(v33 - 19);
          }

          *(v33 - 12) = v38;
          *(v33 - 18) = v37;
          *(v33 - 17) = xmmword_23681FB60;
          memcpy((v43 + 4 * v32 * v35), v34, __n);
          bzero((v44 + 4 * v32 * v36), __n);
          v21 = 0;
          v39 = *(v33 - 20);
          *(v33 - 7) = *(v33 - 19);
          *(v33 - 8) = 0.0;
          *(v33 - 13) = 0.0;
          *(v33 - 6) = xmmword_23681FB70;
          *v33 = v39 * v39;
          *(v33 - 1) = 0x7F7FFFFF00000000;
        }
      }

      ++v32;
      v33 += 22;
      v31 += v46 * v42;
    }

    while (v24 != v32);
  }

  return v21 & 1;
}

void sub_23670A62C(int a1, unsigned int a2, uint64_t a3, unsigned int a4, _BYTE *a5, __int128 *a6, __int128 *a7, uint64_t a8, float a9, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16, _DWORD *a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{
  v22 = a3;
  v142 = a5;
  if (a4 >= 1)
  {
    v23 = a4;
    v24 = a5;
    v25 = a20;
    v26 = a15;
    v27 = a16;
    v28 = a17;
    do
    {
      v29 = *v24++;
      if ((v29 & 1) == 0 && *v25 == 1)
      {
        *v26 = 0;
        *v27 = 0;
        *v28 = -1082130432;
      }

      ++v28;
      ++v27;
      ++v26;
      v25 += 88;
      --v23;
    }

    while (v23);
    v30 = 0;
    v31 = a20 + 4;
    do
    {
      if ((a5[v30] & 1) == 0 && (*(v31 - 4) & 1) == 0)
      {
        cblas_sscal_NEWLAPACK();
        a5 = v142;
      }

      ++v30;
      v31 += 88;
    }

    while (a4 != v30);
  }

  if (a18)
  {
    v32 = *(a18 + 8);
    v33 = *(a18 + 16);
    v145 = *a7;
    v146 = *(a7 + 2);
    v143 = *a10;
    v144 = *(a10 + 2);
    v33(v32, 111, &v145, &v143);
    v34 = *(a19 + 16);
    v145 = *a10;
    v35 = *(a10 + 2);
  }

  else
  {
    v34 = *(a19 + 16);
    v145 = *a7;
    v35 = *(a7 + 2);
  }

  v146 = v35;
  v143 = *a6;
  v144 = *(a6 + 2);
  v34(a19, 1, 111, &v145, &v143);
  v36 = v142;
  if (a4 >= 1)
  {
    v140 = a4;
    v37 = 0;
    v38 = 0;
    v130 = v22;
    v39 = 4 * v22;
    v126 = v22;
    v40 = a20 + 48;
    v136 = v22;
    while (2)
    {
      v131 = v38;
      v41 = &v40[88 * v37];
      v42 = v39 * v37;
      v43 = v37++;
      while (1)
      {
        if ((v36[v37 - 1] & 1) == 0 && (*(v41 - 12) & 1) == 0)
        {
          v44 = *(a7 + 2);
          v45 = *(a7 + 2);
          v46 = *v41;
          cblas_snrm2_NEWLAPACK();
          v36 = v142;
          *(v41 - 10) = v47;
          if (v47 > 0.0)
          {
            break;
          }
        }

        ++v37;
        v41 += 22;
        v42 += v39;
        ++v43;
        if (v37 - a4 == 1)
        {
          v54 = v126;
          v56 = a16;
          v55 = a17;
          v57 = a20;
          v58 = a11;
          if ((v131 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_32;
        }
      }

      cblas_sscal_NEWLAPACK();
      if (*(v41 - 8) == 1)
      {
        v48 = *v41;
        v49 = *(v41 - 1) + 1;
        *(v41 - 1) = v49;
        if (v49 >= SLODWORD(v48))
        {
          v49 = 0;
          *(v41 - 1) = 0.0;
          *(v41 - 7) = 1;
        }

        if (v126 >= 1)
        {
          v50 = (a14 + 4 * v49 * v126 + v42 * v46);
          v51 = (v44 + 4 * v45 * v43);
          v52 = v136;
          do
          {
            v53 = *v51++;
            *v50++ = v53;
            --v52;
          }

          while (v52);
        }
      }

      v38 = 1;
      v54 = v126;
      cblas_sscal_NEWLAPACK();
      v36 = v142;
      v56 = a16;
      v55 = a17;
      v57 = a20;
      v58 = a11;
      v40 = a20 + 48;
      if (a4 != v37)
      {
        continue;
      }

      break;
    }

LABEL_32:
    v59 = *(a19 + 16);
    if (a18)
    {
      v145 = *a6;
      v146 = *(a6 + 2);
      v143 = *a10;
      v144 = *(a10 + 2);
      v59();
      v60 = *(a18 + 8);
      v61 = *(a18 + 16);
      v145 = *a10;
      v146 = *(a10 + 2);
      v143 = *v58;
      v144 = *(v58 + 2);
      v61(v60, 112, &v145, &v143);
      v62 = 0;
      v36 = v142;
      do
      {
        if (v54 >= 1)
        {
          v63 = (*(a7 + 2) + 4 * *(a7 + 2) * v62);
          v64 = (*(v58 + 2) + 4 * *(v58 + 2) * v62);
          v65 = v136;
          do
          {
            v66 = *v64++;
            *v63 = v66 + *v63;
            ++v63;
            --v65;
          }

          while (v65);
        }

        ++v62;
      }

      while (v62 != a4);
    }

    else
    {
      v145 = *a6;
      v146 = *(a6 + 2);
      v143 = *a7;
      v144 = *(a7 + 2);
      v59();
      v36 = v142;
    }

LABEL_40:
    v67 = 0;
    v68 = 0;
    v127 = fabsf(a9);
    v69 = 4 * v130;
    v70 = v140;
    v128 = a9;
    do
    {
      if ((v36[v68] & 1) == 0)
      {
        v71 = v57 + 88 * v68;
        if ((*v71 & 1) == 0)
        {
          v139 = *(a7 + 2);
          v137 = *(a7 + 2);
          v72 = *(a12 + 16);
          v73 = *(a12 + 8);
          v74 = *(a13 + 16);
          v75 = *(a13 + 8);
          if (*(v71 + 8) > 0.0)
          {
            v132 = *(a13 + 8);
            v76 = *(a13 + 16);
            v134 = *(a12 + 8);
            v77 = *(a12 + 16);
            if (*(v71 + 40) == 1)
            {
              v78 = *(v71 + 48);
              if ((*(v71 + 41) & 1) == 0)
              {
                v78 = *(v71 + 44) + 1;
              }

              v54 = v126;
              if (v78 >= 1)
              {
                v79 = v78;
                v80 = a14 + v67 * *(v71 + 48);
                do
                {
                  cblas_sdot_NEWLAPACK();
                  cblas_saxpy_NEWLAPACK();
                  v80 += v69;
                  --v79;
                }

                while (v79);
              }
            }

            cblas_snrm2_NEWLAPACK();
            *(v71 + 4) = v81;
            v56 = a16;
            v55 = a17;
            v72 = v77;
            v73 = v134;
            v74 = v76;
            v75 = v132;
            if (v81 > 0.0)
            {
              cblas_sscal_NEWLAPACK();
              v75 = v132;
              v74 = v76;
              v73 = v134;
              v72 = v77;
            }
          }

          v82 = *(v71 + 12);
          v83 = 0.0;
          v84 = 0.0;
          v85 = v82;
          if (a9 != 0.0)
          {
            v86 = v127 + fabsf(v82);
            v85 = 0.0;
            if (v86 != 0.0)
            {
              v85 = sqrt((((a9 / v86) * (a9 / v86)) + ((v82 / v86) * (v82 / v86)))) * v86;
            }

            v84 = a9 / v85;
          }

          v135 = v84;
          v87 = *(v71 + 24);
          v88 = *(v71 + 8);
          v89 = fabsf(v85) + fabsf(v88);
          if (v89 != 0.0)
          {
            v83 = sqrt((((v88 / v89) * (v88 / v89)) + ((v85 / v89) * (v85 / v89)))) * v89;
          }

          *(v71 + 24) = v83;
          v90 = v85 / v83;
          v91 = v88 / v83;
          v92 = *(v71 + 4);
          v93 = v91 * v92;
          *(v71 + 12) = (v85 / v83) * v92;
          v94 = *(v71 + 28);
          v133 = *(v71 + 32);
          v95 = v83 * *(v71 + 16);
          v96 = fabsf(v91 * v92) + fabsf(v95);
          v97 = 0.0;
          if (v96 != 0.0)
          {
            v97 = sqrt((((v93 / v96) * (v93 / v96)) + ((v95 / v96) * (v95 / v96)))) * v96;
          }

          v98 = v83 * *(v71 + 20);
          *(v71 + 16) = v95 / v97;
          *(v71 + 20) = v93 / v97;
          v99 = *(v71 + 36);
          *(v71 + 28) = v97;
          *(v71 + 32) = (v95 / v97) * v99;
          *(v71 + 36) = -((v93 / v97) * v99);
          v57 = a20;
          if (v54 <= 0)
          {
            cblas_saxpy_NEWLAPACK();
            v70 = v140;
          }

          else
          {
            v100 = (v74 + 4 * v75 * v68);
            v101 = (v72 + 4 * v73 * v68);
            v102 = v136;
            v103 = v101;
            do
            {
              v104 = *v103++;
              *v100 = v104 + (((*(v71 + 24) * -v98) / (v87 * v94)) * *v100);
              ++v100;
              --v102;
            }

            while (v102);
            cblas_saxpy_NEWLAPACK();
            v70 = v140;
            v105 = (v139 + 4 * v137 * v68);
            v106 = v136;
            do
            {
              v107 = *v105++;
              *v101 = v107 + ((-v93 / *(v71 + 24)) * *v101);
              ++v101;
              --v106;
            }

            while (v106);
          }

          v108 = *(v71 + 56);
          v109 = (v82 / v85) * v108;
          v110 = -(v91 * v109);
          *(v71 + 56) = v110;
          v111 = *(v71 + 72);
          v112 = *(v71 + 64);
          v113 = fabsf(v98) + fabsf(v112);
          v114 = 0.0;
          v36 = v142;
          if (v113 != 0.0)
          {
            v114 = sqrt((((v98 / v113) * (v98 / v113)) + ((v112 / v113) * (v112 / v113)))) * v113;
          }

          v115 = v112 / v114;
          v116 = *(v71 + 28);
          v117 = *(v71 + 32);
          v118 = (v98 / v114) * v116;
          v119 = v115 * v116;
          v120 = ((v90 * v109) * v115) - ((v98 / v114) * *(v71 + 52));
          *(v71 + 52) = v120;
          v121 = (v133 - (v111 * *(v71 + 68))) / v114;
          *(v71 + 68) = v121;
          *(v71 + 72) = v118;
          v122 = *(v71 + 60) + (-(v135 * v108) * -(v135 * v108));
          *(v71 + 60) = v122;
          *(v71 + 64) = v119;
          *&a15[v68] = sqrtf((v122 + ((v120 - ((v117 - (v118 * v121)) / v119)) * (v120 - ((v117 - (v118 * v121)) / v119)))) + (v110 * v110));
          v123 = *(v71 + 84) + (*(v71 + 8) * *(v71 + 8));
          *(v71 + 84) = v123;
          *&v56[v68] = sqrtf(v123);
          *(v71 + 84) = *(v71 + 84) + (*(v71 + 4) * *(v71 + 4));
          v124 = *(v71 + 76);
          a9 = v128;
          if (v94 > v124)
          {
            *(v71 + 76) = v94;
            v124 = v94;
          }

          v125 = *(v71 + 80);
          if (a1 >= 1 && v94 < v125)
          {
            *(v71 + 80) = v94;
            v125 = v94;
          }

          if (v124 <= v95)
          {
            v124 = v95;
          }

          if (v125 >= v95)
          {
            v125 = v95;
          }

          *&v55[v68] = v124 / v125;
        }
      }

      ++v68;
      v67 += v69;
    }

    while (v68 != v70);
  }
}

SparseIterativeStatus_t _SparseLSMRSolve_Float(SparseLSMROptions *options, DenseMatrix_Float *X, DenseMatrix_Float *B, void *ApplyOperator, const SparseOpaquePreconditioner_Float *Preconditioner)
{
  v5 = Preconditioner;
  v128 = *MEMORY[0x277D85DE8];
  v9 = 4;
  if (*&B->attributes)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(&B->rowCount + v10);
  if (*&X->attributes)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(&X->rowCount + v12);
  if (*&X->attributes)
  {
    v9 = 0;
  }

  v14 = *(&X->rowCount + v9);
  maxIterations = options->maxIterations;
  if (maxIterations <= 0)
  {
    maxIterations = 4 * v13;
  }

  v90 = maxIterations;
  nvec = options->nvec;
  if (nvec >= v11)
  {
    nvec = v11;
  }

  if (nvec >= v13)
  {
    nvec = *(&X->rowCount + v12);
  }

  v17 = 4 * (v11 + (nvec + 3) * v13 + 3) + 88;
  v18 = 8 * v13 * v14 + 104;
  if (!Preconditioner)
  {
    v18 = 104;
  }

  v19 = 5 * v14 + v18 + v17 * v14 + 16;
  v20 = malloc_type_malloc(v19, 0xEC5780E5uLL);
  if (v20)
  {
    v21 = v20;
    v22 = v20 + v19;
    v23 = options->nvec;
    if (v23 >= v11)
    {
      v23 = v11;
    }

    if (v23 >= v13)
    {
      v24 = v13;
    }

    else
    {
      v24 = v23;
    }

    v25 = (&v20[22 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
    if (v22 >= v25)
    {
      v110[0] = v13;
      v110[1] = v14;
      v110[2] = v13;
      v110[3] = 0;
      v26 = v14 * v13;
      v27 = (v25 + 4 * v14 * v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v22 >= v27)
      {
        v28 = v11;
        v29 = 4 * v26;
        v111 = (&v20[22 * v14 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
        v108[0] = v13;
        v108[1] = v14;
        v108[2] = v13;
        v108[3] = 0;
        v30 = (v27 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v22 >= v30)
        {
          v109 = (v25 + 4 * v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          v31 = (v30 + 4 * v24 * v26 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v22 >= v31)
          {
            *&v106 = __PAIR64__(v14, v28);
            *(&v106 + 1) = v28;
            v32 = (v31 + 4 * (v14 * v28) + 7) & 0xFFFFFFFFFFFFFFF8;
            if (v22 >= v32)
            {
              v107 = v31;
              *&v104 = __PAIR64__(v14, v13);
              *(&v104 + 1) = v13;
              v33 = ((v32 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
              if (v22 >= v33)
              {
                v105 = (v31 + 4 * (v14 * v28) + 7) & 0xFFFFFFFFFFFFFFF8;
                *&v102 = __PAIR64__(v14, v13);
                *(&v102 + 1) = v13;
                v103 = 0;
                *&v100 = __PAIR64__(v14, v13);
                *(&v100 + 1) = v13;
                v101 = 0;
                if (v5)
                {
                  v34 = &v33[v29 + 7] & 0xFFFFFFFFFFFFFFF8;
                  if (v22 < v34)
                  {
                    goto LABEL_102;
                  }

                  v103 = v33;
                  v33 = ((v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
                  if (v22 < v33)
                  {
                    goto LABEL_102;
                  }

                  v101 = v34;
                }

                v35 = &v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8;
                if (v22 >= v35)
                {
                  v36 = 4 * v14;
                  v94 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                  v37 = (v35 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if (v22 >= v37)
                  {
                    v96 = v37;
                    v38 = (v37 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                    if (v22 >= v38)
                    {
                      v39 = (v38 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
                      if (v22 >= v39)
                      {
                        v95 = v38;
                        v91 = v28;
                        v97 = ((v38 + v36 + 7) & 0xFFFFFFFFFFFFFFF8);
                        if (v22 >= ((v39 + v36 + 7) & 0xFFFFFFFFFFFFFFF8))
                        {
                          bzero(v33, v14);
                          v40 = ApplyOperator;
                          if (sub_23670A23C(options, v91, v13, v14, v33, &v106, &v104, &X->rowCount, &B->rowCount, &v102, v110, v108, v30, v5, ApplyOperator, v21))
                          {
                            if (v5)
                            {
                              sub_2367CDB58(&X->rowCount, &v102);
                              mem = v5->mem;
                              apply = v5->apply;
LABEL_41:
                              *__str = v102;
                              *&v113 = v103;
                              v98 = *&X->rowCount;
                              data = X->data;
                              (apply)(mem, 111, __str, &v98);
                            }
                          }

                          else
                          {
                            convergenceTest = options->convergenceTest;
                            if (convergenceTest)
                            {
                              if (convergenceTest == SparseLSMRCTFongSaunders && v14 >= 1)
                              {
                                v45 = (v21 + 2);
                                v46 = v14;
                                v47 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                                do
                                {
                                  v48 = *v45;
                                  v45 += 22;
                                  *v47++ = v48;
                                  --v46;
                                }

                                while (v46);
                              }
                            }

                            else if (v14 >= 1)
                            {
                              v49 = v21 + 9;
                              v50 = v14;
                              v51 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v52 = *v49;
                                v49 += 22;
                                *v51++ = fabsf(v52);
                                --v50;
                              }

                              while (v50);
                            }

                            conditionLimit = options->conditionLimit;
                            v54 = 0.0;
                            if (conditionLimit > 0.0)
                            {
                              v54 = 1.0 / conditionLimit;
                            }

                            reportStatus = options->reportStatus;
                            if (reportStatus)
                            {
                              (reportStatus)("\n   Itn       y(1)           norm rbar    Abar'rbar Compatible    LS    norm Abar cond Abar\n");
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e\n", 0, *X->data, 0.0, v21[2], (v21[2] * v21[1]), 1.0, (v21[1] / v21[2]));
                              (options->reportStatus)(__str);
                            }

                            rtol = options->rtol;
                            v57 = rtol == 0.0;
                            if (rtol < 0.0)
                            {
                              rtol = 0.0;
                            }

                            if (v57)
                            {
                              v58 = 0.00034527;
                            }

                            else
                            {
                              v58 = rtol;
                            }

                            v59 = v95;
                            v60 = v96;
                            v61 = v97;
                            if (v90 < 1)
                            {
LABEL_96:
                              free(v21);
                              return 1;
                            }

                            v62 = 0;
                            v88 = v21 + 9;
                            v89 = v5;
                            v93 = v21;
                            v87 = v30;
                            while (1)
                            {
                              lambda = options->lambda;
                              sub_23670A62C(v62, v91, v13, v14, v33, &v106, &v104, X, lambda, &v102, &v100, v110, v108, v30, v60, v59, v61, v5, v40, v21);
                              v64 = options->convergenceTest;
                              if (v64 == SparseLSMRCTFongSaunders)
                              {
                                break;
                              }

                              if (v64 || v14 < 1)
                              {
                                goto LABEL_98;
                              }

                              v65 = 1;
                              v66 = v14;
                              v67 = v88;
                              v68 = v33;
                              v69 = (&v33[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
                              do
                              {
                                v70 = *v68 || options->atol + (v58 * *v69) >= fabsf(*v67);
                                *v68++ = v70;
                                v65 &= v70;
                                ++v69;
                                v67 += 22;
                                --v66;
                              }

                              while (v66);
LABEL_90:
                              v21 = v93;
                              if (v65)
                              {
                                goto LABEL_98;
                              }

                              if (options->reportStatus && (v62 < 0xA || !(v62 % 0xA)))
                              {
                                v85 = fabsf(*v88);
                                snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v62, *X->data, 0.0, *v96, v85, (*v96 / *v94), (v85 / (*v96 * *v95)), *v95, *v97);
                                (options->reportStatus)(__str);
                              }

                              ++v62;
                              v5 = v89;
                              v40 = ApplyOperator;
                              v30 = v87;
                              v59 = v95;
                              v60 = v96;
                              v61 = v97;
                              if (v62 == v90)
                              {
                                goto LABEL_96;
                              }
                            }

                            if (v14 >= 1)
                            {
                              v71 = 0;
                              v65 = 1;
                              v72 = 9;
                              while (1)
                              {
                                if ((v33[v71] & 1) == 0)
                                {
                                  v73 = v93[v72];
                                  cblas_snrm2_NEWLAPACK();
                                  v75 = 1.0 / v97[v71];
                                  if (v75 + 1.0 <= 1.0 || v75 <= v54)
                                  {
                                    free(v93);
                                    return -2;
                                  }

                                  v76 = v96[v71];
                                  v77 = v95[v71];
                                  v78 = (fabsf(v73) / (v76 * v77));
                                  if (v78 + 1.0 <= 1.0 || (v79 = v94[v71], v80 = v76 / v79, atol = options->atol, v82 = options->btol + atol * v77 * v74 / v79, v80 <= v82) || atol >= v78 || (v83 = v80 / (((v74 * v77) / v79) + 1.0), v83 + 1.0 <= 1.0))
                                  {
                                    v84 = 1;
                                    v33[v71] = 1;
                                  }

                                  else
                                  {
                                    v84 = v33[v71] != 0;
                                  }

                                  v65 &= v84;
                                }

                                ++v71;
                                v72 += 22;
                                if (v14 == v71)
                                {
                                  goto LABEL_90;
                                }
                              }
                            }

LABEL_98:
                            if (options->reportStatus)
                            {
                              v86 = fabsf(*v88);
                              snprintf(__str, 0xC8uLL, "%6d%17.9e+%17.9ei%17.9e%10.2e%10.2e%10.2e%10.2e%10.2e\n", v62, *X->data, 0.0, *v96, v86, (*v96 / *v94), (v86 / (*v96 * *v95)), *v95, *v97);
                              (options->reportStatus)(__str);
                            }

                            if (v89)
                            {
                              sub_2367CDB58(&X->rowCount, &v102);
                              mem = v89->mem;
                              apply = v89->apply;
                              goto LABEL_41;
                            }
                          }

                          free(v21);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_102:
    __break(1u);
  }

  if (!options->reportError)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_23670BBCC();
    }

    _SparseTrap();
  }

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  *__str = 0u;
  v113 = 0u;
  snprintf(__str, 0x100uLL, "Failed to allocate workspace of size %ld\n", v19);
  (options->reportError)(__str);
  return -99;
}

float *sub_23670B980(float *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 4;
  if (*(a3 + 12))
  {
    v4 = 0;
  }

  v5 = *(a3 + v4);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4;
    if ((*(a3 + 12) & 1) == 0)
    {
      v7 = 0;
    }

    v8 = *(a3 + v7);
    v9 = *(a3 + 16);
    v10 = *(a3 + 8);
    v11 = *(a4 + 16);
    v12 = *(a4 + 8);
    do
    {
      if (*(a3 + 12))
      {
        v13 = v6;
      }

      else
      {
        v13 = v10 * v6;
      }

      if (*(a3 + 12))
      {
        v14 = v10;
      }

      else
      {
        v14 = 1;
      }

      v15 = *(a4 + 12);
      if (v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v12 * v6;
      }

      if (v15)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v8 >= 1)
      {
        v18 = (v9 + 4 * v13);
        v19 = 4 * v17;
        v20 = 4 * v14;
        v21 = v8;
        v22 = result;
        v23 = (v11 + 4 * v16);
        do
        {
          v24 = *v22++;
          *v23 = v24 * *v18;
          v23 = (v23 + v19);
          v18 = (v18 + v20);
          --v21;
        }

        while (v21);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_23670BC48(int *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, unsigned int *__b, uint64_t a11, unsigned int *a12)
{
  *a8 = a3;
  *(a8 + 4) = a3;
  v18 = a6 + 8 * a3 + 16;
  *(a8 + 8) = a6;
  *(a8 + 16) = v18;
  *(a8 + 24) = 0;
  *(a8 + 28) = *(a1 + 28);
  __pattern4 = -1;
  memset_pattern4(__b, &__pattern4, 4 * *a1);
  if (a3 <= 0)
  {
    memset_pattern4(a12, &__pattern4, 4 * a1[1]);
    v20 = a3;
    bzero(a7, 4 * a3);
    v23 = 0;
  }

  else
  {
    v19 = 0;
    v20 = a3;
    do
    {
      __b[*(a4 + 4 * v19)] = v19;
      ++v19;
    }

    while (a3 != v19);
    memset_pattern4(a12, &__pattern4, 4 * a1[1]);
    v21 = 0;
    do
    {
      a12[*(a5 + 4 * v21)] = v21;
      ++v21;
    }

    while (a3 != v21);
    bzero(a7, 4 * a3);
    v22 = 0;
    v23 = 0;
    v24 = *(a1 + 1);
    v25 = *(a2 + 8);
    do
    {
      *(a6 + 8 * v22) = v23;
      v26 = (v24 + 8 * *(a5 + 4 * v22));
      v28 = *v26;
      v27 = v26[1];
      v29 = v27 <= v28;
      v30 = v27 - v28;
      if (!v29)
      {
        v31 = (*(a1 + 2) + 4 * v28);
        do
        {
          v33 = *v31++;
          v32 = v33;
          if ((v33 & 0x80000000) == 0 && v32 < *a1)
          {
            v34 = __b[v32];
            v35 = v22 == v34 || v34 >= a3;
            if (!v35 && v22 >= a7[v34])
            {
              *(v18 + 4 * v23++) = v34;
              a7[v34] = v22 + 1;
            }
          }

          --v30;
        }

        while (v30);
      }

      v36 = (v25 + 8 * *(a4 + 4 * v22));
      v38 = *v36;
      v37 = v36[1];
      v39 = v37 - v38;
      if (v37 <= v38)
      {
        v40 = v22 + 1;
      }

      else
      {
        v40 = v22 + 1;
        v41 = (*(a2 + 16) + 4 * v38);
        do
        {
          v42 = *v41++;
          v43 = a12[v42];
          v44 = v22 == v43 || v43 >= a3;
          if (!v44 && v22 >= a7[v43])
          {
            *(v18 + 4 * v23++) = v43;
            a7[v43] = v40;
          }

          --v39;
        }

        while (v39);
      }

      v22 = v40;
    }

    while (v40 != a3);
  }

  *(a6 + 8 * v20) = v23;
}

uint64_t sub_23670BE58(int a1, int a2, uint64_t a3, int a4)
{
  v4 = a4 * a2;
  if (a4 * a1 > a4 * a2)
  {
    v4 = a4 * a1;
  }

  return 4 * ((a4 * a4) * a3 + 5 * a4 * a2 + a4 * a2 + 2 * a4 * a1) + 8 * (a4 * a1 + (2 * a4 * a2) + v4 + (a4 * a4) * a3 + a4 * a2 + 1 + a4 * a1 + 2 * a4 * a2) + 112;
}

uint64_t sub_23670BEB4(uint64_t a1, char *__b, long double *a3, long double *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = *(a1 + 28);
  v9 = (*a1 * v8);
  v10 = (*(a1 + 4) * v8);
  v11 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v11;
  v15 = *(a1 + 32);
  v12 = sub_23670BF70(0, v14, __b, v9, a3, v9, a4, v10, a5, a6);
  if (v9)
  {
    do
    {
      *v7 = exp(*v7);
      ++v7;
      --v9;
    }

    while (v9);
  }

  if (v10)
  {
    do
    {
      *v6 = exp(*v6);
      ++v6;
      --v10;
    }

    while (v10);
  }

  return v12;
}

uint64_t sub_23670BF70(int a1, signed int *a2, char *__b, uint64_t a4, double *a5, unint64_t a6, double *a7, unint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = a2;
  v13 = a9;
  v14 = *(a2 + 28);
  v15 = a2[1];
  v16 = v15 * v14;
  v264 = *(a2 + 1);
  v261 = (v14 * v14);
  v17 = (*(v264 + 8 * v15) * v261) << a1;
  v240 = v15 * v14 + 1;
  v18 = *a2 * v14;
  v19 = &a9[v240];
  v20 = (4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v19 + v20;
  v22 = v17;
  v266 = &v19[v17] + v20;
  v238 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  v254 = &v266[(20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  v23 = v15 * v14;
  v234 = 8 * v18;
  v252 = &v254[v234];
  v24 = &v254[8 * v23 + v234];
  v243 = v17;
  v247 = (20 * v15 * v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v237 = v23 & 0x1FFFFFFFFFFFFFFFLL;
  v258 = (v24 + 8 * v23);
  v25 = &a9[v23];
  v263 = v23;
  v251 = 8 * v240;
  v269 = __b;
  v250 = v20;
  v248 = v18;
  if (v15 * v14 < 1)
  {
    *v25 = 0;
    if ((a1 & 1) == 0)
    {
      goto LABEL_65;
    }

    v235 = v15 * v14;
    v245 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v52 = 0;
  }

  else
  {
    v232 = &a9[v16];
    v235 = v15 * v14;
    v245 = v17 & 0x1FFFFFFFFFFFFFFFLL;
    v26 = 0;
    v27 = 0;
    v259 = &a9[v240] + v20;
    v28 = 0;
    do
    {
      a9[v26] = v27;
      v29 = (v264 + 8 * (v26 / v14));
      v30 = *v29;
      v31 = v29[1];
      if (v30 < v31)
      {
        v32 = *(v11 + 2);
        v28 = v27;
        do
        {
          v33 = *(v32 + 4 * v30);
          if ((v33 & 0x80000000) == 0)
          {
            v34 = v33 < (v26 / v14) ? a1 : 0;
            if ((v34 & 1) == 0 && v33 < *v11)
            {
              v35 = v26 % v14;
              v36 = v35 * v14;
              if (!a1)
              {
                v35 = 0;
              }

              v37 = *(v11 + 4) + 8 * v30 * v261 + 8 * v36;
              v38 = v35 + v33 * v14;
              do
              {
                v39 = *(v37 + 8 * v35);
                if (v39 != 0.0)
                {
                  *(v19 + v28) = v38;
                  *(v21 + 8 * v28++) = fabs(v39);
                }

                ++v35;
                ++v38;
              }

              while (v35 < v14);
            }
          }

          ++v30;
        }

        while (v30 != v31);
      }

      v40 = v28 - v27;
      if (v28 > v27)
      {
        v41 = &v259[8 * v27];
        do
        {
          *v41 = log(*v41);
          ++v41;
          --v40;
        }

        while (v40);
      }

      ++v26;
      v27 = v28;
      v23 = v263;
      __b = v269;
      v11 = a2;
    }

    while (v26 != v263);
    *v232 = v28;
    v13 = a9;
    v18 = v248;
    if ((a1 & 1) == 0)
    {
      goto LABEL_49;
    }

    v42 = v28 + 1;
    bzero(v266, 4 * v263);
    v43 = 0;
    v44 = 0;
    v45 = *a9;
    do
    {
      v46 = v43 + 1;
      v47 = a9[v43 + 1];
      *&v266[4 * v43] += v47 - v45;
      v48 = v47 - v45;
      if (v47 > v45)
      {
        v49 = &a9[v251 / 8] + v45;
        do
        {
          v51 = *v49++;
          v50 = v51;
          if (v43 == v51)
          {
            ++v44;
          }

          else
          {
            ++*&v266[4 * v50];
          }

          --v48;
        }

        while (v48);
      }

      v45 = v47;
      ++v43;
    }

    while (v46 != v263);
    v52 = 2 * v28 - v44;
    v53 = v52 + 1;
    v54 = a9;
    v55 = v263;
    __b = v269;
    v11 = a2;
    do
    {
      v56 = v55 - 1;
      v57 = v54[v55 - 1] + 1;
      v58 = v53;
      if (v42 > v57)
      {
        v59 = 0;
        do
        {
          *(&a9[v251 / 8 - 2 + v53 + v59] + v250) = *(&a9[v251 / 8 - 2 + v42 + v59] + v250);
          *(&a9[v251 / 8 - 1] + v53 + v59) = *(&a9[v251 / 8 - 1] + v42 + v59);
          --v59;
        }

        while (v42 + v59 > v57);
        v58 = v53 + v59;
      }

      v54 = a9;
      a9[v56] = v58 - 1;
      v53 -= *&v266[4 * v56];
      *&v266[4 * v56] = v42 - v57;
      v42 = v57;
      v124 = v55-- <= 1;
    }

    while (!v124);
    v60 = v263;
    v13 = a9;
    v18 = v248;
    do
    {
      v61 = v60--;
      v62 = *&v266[4 * v60];
      if (v62 >= 1)
      {
        v63 = a9[v60];
        v64 = v63 + v62;
        do
        {
          v65 = *(v19 + v63);
          if (v60 != v65)
          {
            v66 = a9[v65] - 1;
            a9[v65] = v66;
            *(v21 + 8 * v66) = *(&a9[v63] + v250 + v251);
            *(v19 + v66) = v60;
          }

          ++v63;
        }

        while (v63 < v64);
      }
    }

    while (v61 >= 2);
    v25 = v232;
  }

  *v25 = v52;
LABEL_49:
  v22 = v245;
  v16 = v235;
  if (v23 >= 1)
  {
    v67 = 0;
    v68 = *v13;
    do
    {
      v69 = v67 + 1;
      v70 = v13[v67 + 1];
      v71 = v70 - v68;
      if (v70 - v68 == -1)
      {
        v72 = v245 - v68;
      }

      else
      {
        v72 = v70 - v68;
      }

      if (v72)
      {
        v73 = (v21 + 8 * v68);
        v74 = *v73;
        v75 = 8 * v72;
        do
        {
          v76 = *v73++;
          v77 = v76;
          if (v74 < v76)
          {
            v74 = v77;
          }

          v75 -= 8;
        }

        while (v75);
      }

      else
      {
        v74 = NAN;
      }

      *(v24 + 8 * v67) = v74;
      if (v70 > v68)
      {
        v78 = (&v13[v68] + v250 + v251);
        do
        {
          *v78 = v74 - *v78;
          ++v78;
          --v71;
        }

        while (v71);
      }

      v68 = v70;
      ++v67;
    }

    while (v69 != v23);
  }

LABEL_65:
  v236 = 8 * v16;
  v246 = v243;
  v79 = sub_23670D0B4(v18, v23, v13, v240, v19, v243, v21, v22, __b, a4, v254, v238, v252, v237, v258);
  if (!a1 || v79 == v23)
  {
    v244 = v79;
    v139 = v248;
    if (v248 >= 1)
    {
      v140 = (&v13[v246] + v250 + v247 + v251);
      v141 = a5;
      do
      {
        v142 = *v140++;
        *v141++ = v142;
        --v139;
      }

      while (v139);
    }

    v143 = a7;
    v144 = v269;
    if (v23 >= 1)
    {
      v145 = (&v13[v246] + v250 + v247 + v234 + v251);
      v146 = v23;
      v147 = a7;
      do
      {
        v148 = v145[v236 / 8];
        v149 = *v145++;
        *v147++ = v149 - v148;
        --v146;
      }

      while (v146);
    }

    v150 = *(v11 + 28);
    v265 = *v11;
    v151 = *v11 * v150;
    v152 = v11[1] * v150;
    if (v151 == v152)
    {
      v153 = a6;
      if (v151 != -1)
      {
        v153 = *v11 * *(v11 + 28);
      }

      v154 = 0.0;
      v155 = 0.0;
      if (v153)
      {
        v156 = 8 * v153;
        v157 = a5;
        do
        {
          v158 = *v157++;
          v155 = v155 + v158;
          v156 -= 8;
        }

        while (v156);
      }

      v159 = a8;
      if (v151 != -1)
      {
        v159 = *v11 * *(v11 + 28);
      }

      if (v159)
      {
        v160 = 8 * v159;
        v154 = 0.0;
        v161 = a7;
        do
        {
          v162 = *v161++;
          v154 = v154 + v162;
          v160 -= 8;
        }

        while (v160);
      }

      if (v151 >= 1)
      {
        v163 = (v155 / v151 - v154 / v151) * 0.5;
        v164 = v151;
        v165 = v151;
        do
        {
          *a5 = *a5 - v163;
          ++a5;
          --v165;
        }

        while (v165);
        do
        {
          *v143 = v163 + *v143;
          ++v143;
          --v164;
        }

        while (v164);
      }
    }

    else
    {
      v253 = *(v11 + 1);
      v268 = *(v11 + 2);
      v262 = v150 * v150;
      v260 = *(v11 + 4);
      v249 = v11[1] * v150;
      v272 = *(v11 + 28);
      if (v151 >= v152)
      {
        if (v152 < v151)
        {
          v242 = *v11 * *(v11 + 28);
          if (v151 <= 0)
          {
            v184 = (0.0 / v79 - 0.0 / v79) * 0.5;
          }

          else
          {
            v177 = 0.0;
            v178 = v269;
            v179 = a5;
            v180 = v151;
            v181 = 0.0;
            do
            {
              v183 = *v178++;
              v182 = v183;
              if (v183 != -1)
              {
                v181 = v181 + *v179;
                v177 = v177 + a7[v182];
              }

              ++v179;
              --v180;
            }

            while (v180);
            v184 = (v181 / v79 - v177 / v79) * 0.5;
            v185 = a5;
            v186 = v151;
            do
            {
              *v185 = *v185 - v184;
              ++v185;
              --v186;
            }

            while (v186);
          }

          v239 = v151;
          if (v152 <= 0)
          {
            bzero(v258, 8 * v151);
          }

          else
          {
            v210 = a7;
            v211 = v152;
            do
            {
              *v210 = v184 + *v210;
              ++v210;
              --v211;
            }

            while (v211);
            bzero(v258, 8 * v151);
            v212 = 0;
            if (v150 <= 1)
            {
              v213 = 1;
            }

            else
            {
              v213 = v150;
            }

            v256 = v213;
            do
            {
              v214 = v212 / v150;
              v215 = (v253 + 8 * v214);
              v216 = *v215;
              v217 = v215[1];
              if (*v215 < v217)
              {
                do
                {
                  v218 = *(v268 + 4 * v216);
                  if ((v218 & 0x80000000) == 0 && v218 < v265)
                  {
                    v219 = 0;
                    v220 = &v258[8 * v218 * v272];
                    v221 = v256;
                    do
                    {
                      v222 = fabs(*(v260 + 8 * v216 * v262 + 8 * (v212 - v214 * v272) * v272 + 8 * v219));
                      v223 = v222 * exp(a7[v212]);
                      if (*v220 >= v223)
                      {
                        v223 = *v220;
                      }

                      *v220++ = v223;
                      ++v219;
                      --v221;
                    }

                    while (v221);
                  }

                  ++v216;
                }

                while (v216 != v217);
              }

              ++v212;
              v150 = v272;
            }

            while (v212 != v152);
          }

          if (v242 >= 1)
          {
            v224 = (&a9[2 * v263 + v246] + v250 + v247 + v234 + v251);
            v225 = v269;
            v226 = v239;
            do
            {
              v227 = *v225++;
              if (v227 == -1)
              {
                v228 = 0.0;
                if (*v224 != 0.0)
                {
                  v229 = v225;
                  v228 = log(1.0 / *v224);
                  v225 = v229;
                }

                *a5 = v228;
              }

              ++a5;
              ++v224;
              --v226;
            }

            while (v226);
          }
        }
      }

      else
      {
        v241 = *v11 * *(v11 + 28);
        if (v151 <= 0)
        {
          v174 = (0.0 / v79 - 0.0 / v79) * 0.5;
        }

        else
        {
          v166 = v151;
          v167 = 0.0;
          v168 = v269;
          v169 = a5;
          v170 = v151;
          v171 = 0.0;
          do
          {
            v173 = *v168++;
            v172 = v173;
            if (v173 != -1)
            {
              v167 = v167 + *v169;
              v171 = v171 + a7[v172];
            }

            ++v169;
            --v170;
          }

          while (v170);
          v174 = (v167 / v79 - v171 / v79) * 0.5;
          v175 = a5;
          do
          {
            *v175 = *v175 - v174;
            ++v175;
            --v166;
          }

          while (v166);
        }

        if (v152 >= 1)
        {
          v187 = a7;
          v188 = v152;
          do
          {
            *v187 = v174 + *v187;
            ++v187;
            --v188;
          }

          while (v188);
          v189 = 0;
          if (v150 <= 1)
          {
            v190 = 1;
          }

          else
          {
            v190 = v150;
          }

          do
          {
            v191 = (v253 + 8 * (v189 / v150));
            v193 = *v191;
            v192 = v191[1];
            v194 = 0.0;
            if (*v191 < v192)
            {
              v195 = 0.0;
              v196 = v189 % v150 * v150;
              do
              {
                v197 = *(v268 + 4 * v193);
                if ((v197 & 0x80000000) == 0 && v197 < v265)
                {
                  v198 = 0;
                  v199 = &a5[v197 * v272];
                  v200 = v190;
                  do
                  {
                    v201 = fabs(*(v260 + 8 * v193 * v262 + 8 * v196 + 8 * v198));
                    v202 = *v199++;
                    v203 = v201 * exp(v202);
                    if (v195 < v203)
                    {
                      v195 = v203;
                    }

                    ++v198;
                    --v200;
                  }

                  while (v200);
                }

                ++v193;
                v23 = v263;
                v144 = v269;
              }

              while (v193 != v192);
              v194 = 0.0;
              v152 = v249;
              v150 = v272;
              if (v195 != 0.0)
              {
                v194 = log(1.0 / v195);
                v144 = v269;
              }
            }

            *&v258[8 * v189++] = v194;
          }

          while (v189 != v152);
        }

        v204 = a7;
        if (v241 >= 1)
        {
          v205 = v241;
          do
          {
            v207 = *v144++;
            v206 = v207;
            if (v207 != -1)
            {
              *&v258[8 * v206] = a7[v206];
            }

            --v205;
          }

          while (v205);
        }

        if (v152 >= 1)
        {
          v208 = (&a9[2 * v23 + v246] + v250 + v247 + v234 + v251);
          do
          {
            v209 = *v208++;
            *v204++ = v209;
            --v152;
          }

          while (v152);
        }
      }
    }
  }

  else
  {
    v80 = 2 * v23;
    if (v23 == -1)
    {
      v81 = 0x3FFFFFFFFFFFFFFDLL;
    }

    else
    {
      v81 = v23;
    }

    v82 = &v266[4 * v80];
    if (v248 >= 1)
    {
      v83 = 0;
      v84 = 0;
      v85 = v79 + 1;
      v86 = &v13[v246] + v250 + v251;
      do
      {
        if (v269[v83] > -2)
        {
          *&v86[4 * v83] = v84;
          *&v266[4 * v23 + 4 * v84++] = v83;
        }

        else
        {
          *&v86[4 * v83] = ~v85++;
        }

        ++v83;
      }

      while (v248 != v83);
    }

    *v13 = 0;
    if (v23 <= 0)
    {
      return sub_23670D0B4(0, 0, v13, v240, v19, v243, v21, v22, v82, v81, v254, v238, v252, v237, v258);
    }

    v87 = v22;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = v80;
    do
    {
      v93 = v88 + 1;
      v94 = v13[v88 + 1];
      if (v269[v88] >= -1)
      {
        v95 = v94 - v91;
        if (v94 > v91)
        {
          v96 = &v13[v251 / 8] + v91;
          v97 = (&v13[v91] + v250 + v251);
          do
          {
            v99 = *v96++;
            v98 = v99;
            if (v269[v99] >= -1)
            {
              *(v19 + v89) = *&v266[4 * v98];
              *(v21 + 8 * v89++) = *v97;
            }

            ++v97;
            --v95;
          }

          while (v95);
        }

        v13[++v90] = v89;
      }

      v88 = v93;
      v91 = v94;
    }

    while (v93 != v23);
    v244 = sub_23670D0B4(v90, v90, v13, v240, v19, v243, v21, v87, v82, v81, v254, v238, v252, v237, v258);
    v100 = (&v13[v246] + v250 + v251);
    v101 = (&v13[v246] + v250 + v247 + v236 + v234 + v251);
    v102 = v23;
    v103 = a5;
    do
    {
      v105 = *v100++;
      v104 = v105;
      if (v105 >= -1)
      {
        v106 = (*&v254[8 * v104] + v252[v104] - *v101) * 0.5;
      }

      else
      {
        v106 = -INFINITY;
      }

      *v103++ = v106;
      ++v101;
      --v102;
    }

    while (v102);
    memset_pattern16(v269, &unk_23681FAD0, 4 * v23);
    v107 = v269;
    if (v90 > 0)
    {
      v108 = v90;
      v109 = v246 * 8 + v250 + v251;
      v110 = (v13 + 4 * v92 + v109);
      v111 = (v13 + 4 * v23 + v109);
      do
      {
        v113 = *v110++;
        v112 = v113;
        v114 = *v111++;
        v269[v114] = v112;
        --v108;
      }

      while (v108);
    }

    v115 = (&v13[v246] + v250 + v251);
    v116 = v23;
    do
    {
      if (*v107 == -2)
      {
        *v107 = *v115;
      }

      ++v107;
      ++v115;
      --v116;
    }

    while (v116);
    v117 = (&v13[v246] + v250 + v247 + v236 + v234 + v251);
    v118 = a5;
    do
    {
      v119 = *v118++;
      *v117++ = v119;
      --v23;
    }

    while (v23);
    v120 = 0;
    v255 = *(a2 + 1);
    do
    {
      v121 = (v255 + 8 * (v120 / v14));
      v122 = *v121;
      v270 = v121[1];
      if (*v121 < v270)
      {
        v267 = *(a2 + 2);
        do
        {
          v123 = *(v267 + 4 * v122);
          if ((v123 & 0x80000000) == 0)
          {
            v124 = v123 >= (v120 / v14) && v123 < *a2;
            if (v124)
            {
              v125 = (v123 * v14);
              v126 = *(a2 + 4) + 8 * v122 * v261 + 8 * v120 % v14 * v14;
              v127 = v120 % v14;
              do
              {
                v128 = v127 + v125;
                v129 = *(v126 + 8 * v127);
                if (*(v24 + 8 * v120) == -INFINITY && *(v24 + 8 * v128) != -INFINITY)
                {
                  v130 = log(fabs(v129)) + a5[v128];
                  if (a5[v120] >= v130)
                  {
                    v130 = a5[v120];
                  }

                  a5[v120] = v130;
                }

                if (*(v24 + 8 * v128) == -INFINITY && *(v24 + 8 * v120) != -INFINITY)
                {
                  v131 = log(fabs(v129)) + a5[v120];
                  if (a5[v128] >= v131)
                  {
                    v131 = a5[v128];
                  }

                  a5[v128] = v131;
                }

                ++v127;
              }

              while (v127 < v14);
            }
          }

          ++v122;
        }

        while (v122 != v270);
      }

      ++v120;
      v132 = v263;
    }

    while (v120 != v263);
    v133 = a7;
    v134 = (&a9[v246] + v250 + v247 + v236 + v234 + v251);
    v135 = v263;
    v136 = a5;
    do
    {
      if (*v134 == -INFINITY)
      {
        if (*v136 == -INFINITY)
        {
          v137 = 0.0;
        }

        else
        {
          v137 = -*v136;
        }

        *v136 = v137;
      }

      ++v134;
      ++v136;
      --v135;
    }

    while (v135);
    do
    {
      v138 = *a5++;
      *v133++ = v138;
      --v132;
    }

    while (v132);
  }

  return v244;
}