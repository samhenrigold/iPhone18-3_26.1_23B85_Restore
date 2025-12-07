uint64_t cv::recip_<unsigned char>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, double a6)
{
  v6 = a5[1];
  a5[1] = v6 - 1;
  if (!v6)
  {
    return result;
  }

  LODWORD(v7) = *a5;
  do
  {
    if (v7 < 4)
    {
      v8 = 0;
      goto LABEL_35;
    }

    v8 = 0;
    do
    {
      v9 = *(result + v8);
      if (*(result + v8))
      {
        v10 = result + v8;
        v11 = *(result + v8 + 1);
        if (*(result + v8 + 1))
        {
          v12 = *(v10 + 2);
          if (*(v10 + 2))
          {
            v13 = *(result + v8 + 3);
            if (*(result + v8 + 3))
            {
              v14 = v8 + 2;
              v15 = v8 + 3;
              v16 = v9;
              v17 = v12;
              v18 = v9 * v11;
              v19 = v12 * v13;
              v20 = a6 / (v18 * v19);
              v21 = v19 * v20;
              v22 = v18 * v20;
              v23 = rint(v21 * v11);
              v9 = v23 & ~(v23 >> 31);
              v24 = rint(v21 * v16);
              if (v9 >= 255)
              {
                LOBYTE(v9) = -1;
              }

              v25 = v24 & ~(v24 >> 31);
              if (v25 >= 255)
              {
                LOBYTE(v25) = -1;
              }

              v26 = rint(v22 * v13);
              v27 = v26 & ~(v26 >> 31);
              if (v27 >= 255)
              {
                LOBYTE(v27) = -1;
              }

              v28 = v22 * v17;
              goto LABEL_31;
            }
          }
        }

        v29 = rint(a6 / v9);
        v9 = v29 & ~(v29 >> 31);
        if (v9 >= 255)
        {
          LOBYTE(v9) = -1;
        }
      }

      if (*(result + v8 + 1))
      {
        v30 = rint(a6 / *(result + v8 + 1));
        if ((v30 & ~(v30 >> 31)) >= 255)
        {
          LOBYTE(v25) = -1;
        }

        else
        {
          LOBYTE(v25) = v30 & ~(v30 >> 31);
        }
      }

      else
      {
        LOBYTE(v25) = 0;
      }

      if (*(result + v8 + 2))
      {
        v31 = rint(a6 / *(result + v8 + 2));
        if ((v31 & ~(v31 >> 31)) >= 255)
        {
          LOBYTE(v27) = -1;
        }

        else
        {
          LOBYTE(v27) = v31 & ~(v31 >> 31);
        }
      }

      else
      {
        LOBYTE(v27) = 0;
      }

      v14 = v8 | 2;
      v15 = v8 | 3;
      v32 = *(result + v8 + 3);
      if (!*(result + v8 + 3))
      {
        goto LABEL_33;
      }

      v28 = a6 / v32;
LABEL_31:
      v33 = rint(v28);
      v32 = v33 & ~(v33 >> 31);
      if (v32 >= 255)
      {
        LOBYTE(v32) = -1;
      }

LABEL_33:
      v34 = (a3 + v8);
      *v34 = v9;
      v34[1] = v25;
      *(a3 + v14) = v27;
      *(a3 + v15) = v32;
      v8 += 4;
      v7 = *a5;
    }

    while (v8 <= v7 - 4);
    v8 = v8;
LABEL_35:
    if (v8 < v7)
    {
      do
      {
        v35 = *(result + v8);
        if (*(result + v8))
        {
          v36 = rint(a6 / v35);
          v35 = v36 & ~(v36 >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }
        }

        *(a3 + v8++) = v35;
        v7 = *a5;
      }

      while (v8 < v7);
    }

    result += a2;
    a3 += a4;
    v37 = a5[1];
    a5[1] = v37 - 1;
  }

  while (v37);
  return result;
}

void cv::recip8s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a8;
  do
  {
    if (v9 < 4)
    {
      v11 = 0;
      goto LABEL_48;
    }

    v11 = 0;
    do
    {
      LOBYTE(v12) = *(a3 + v11);
      LOBYTE(v13) = *(a3 + v11 + 1);
      if (v12)
      {
        if (*(a3 + v11 + 1))
        {
          if (*(a3 + v11 + 2))
          {
            v14 = *(a3 + v11 + 3);
            if (v14)
            {
              v15 = v11 | 2;
              v16 = v12;
              v17 = v11 | 3;
              v18 = v13;
              v19 = *(a3 + v11 + 2);
              v20 = v14;
              v21 = v10 / (v16 * v18 * (v19 * v20));
              v22 = v19 * v20 * v21;
              v23 = v16 * v18 * v21;
              v12 = rint(v22 * v18);
              if (v12 <= -128)
              {
                LODWORD(v12) = -128;
              }

              if (v12 >= 127)
              {
                LOBYTE(v12) = 127;
              }

              v13 = rint(v22 * v16);
              if (v13 <= -128)
              {
                LODWORD(v13) = -128;
              }

              if (v13 >= 127)
              {
                LOBYTE(v13) = 127;
              }

              v24 = rint(v23 * v20);
              if (v24 <= -128)
              {
                LODWORD(v24) = -128;
              }

              if (v24 >= 127)
              {
                LOBYTE(v24) = 127;
              }

              v25 = v23 * v19;
              goto LABEL_42;
            }
          }
        }

        v12 = rint(v10 / v12);
        if (v12 <= -128)
        {
          LODWORD(v12) = -128;
        }

        if (v12 >= 127)
        {
          LOBYTE(v12) = 127;
        }
      }

      if (*(a3 + v11 + 1))
      {
        v26 = rint(v10 / v13);
        if (v26 <= -128)
        {
          LODWORD(v26) = -128;
        }

        if (v26 >= 127)
        {
          LOBYTE(v13) = 127;
        }

        else
        {
          LOBYTE(v13) = v26;
        }
      }

      if (*(a3 + v11 + 2))
      {
        v27 = rint(v10 / *(a3 + v11 + 2));
        if (v27 <= -128)
        {
          LODWORD(v27) = -128;
        }

        if (v27 >= 127)
        {
          LOBYTE(v24) = 127;
        }

        else
        {
          LOBYTE(v24) = v27;
        }
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      v15 = v11 + 2;
      v17 = v11 + 3;
      LOBYTE(v28) = *(a3 + v11 + 3);
      if (v28)
      {
        v25 = v10 / v28;
LABEL_42:
        v28 = rint(v25);
        if (v28 <= -128)
        {
          LODWORD(v28) = -128;
        }

        if (v28 >= 127)
        {
          LOBYTE(v28) = 127;
        }
      }

      v29 = (a5 + v11);
      *v29 = v12;
      v29[1] = v13;
      *(a5 + v15) = v24;
      *(a5 + v17) = v28;
      v11 += 4;
    }

    while (v11 <= v9 - 4);
    v11 = v11;
LABEL_48:
    if (v11 < v9)
    {
      do
      {
        LOBYTE(v30) = *(a3 + v11);
        if (v30)
        {
          v30 = rint(v10 / v30);
          if (v30 <= -128)
          {
            LODWORD(v30) = -128;
          }

          if (v30 >= 127)
          {
            LOBYTE(v30) = 127;
          }
        }

        *(a5 + v11++) = v30;
      }

      while (v11 < v9);
    }

    a3 += a4;
    a5 += a6;
    --v8;
  }

  while (v8);
}

void cv::recip16u(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 2 * (a6 >> 1);
  v13 = 2 * (a4 >> 1);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_34;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      v16 = *(a3 + v15);
      v17 = *(a3 + v15 + 2);
      if (*(a3 + v15))
      {
        if (*(a3 + v15 + 2))
        {
          v18 = a3 + v15;
          v19 = *(a3 + v15 + 4);
          if (*(a3 + v15 + 4))
          {
            v20 = *(v18 + 6);
            if (*(v18 + 6))
            {
              v21 = v14 | 2;
              v22 = v14 | 3;
              v23 = v16;
              v24 = v19;
              v25 = v16 * v17;
              v26 = v19 * v20;
              v27 = v11 / (v25 * v26);
              v28 = v26 * v27;
              v29 = v25 * v27;
              v30 = rint(v28 * v17);
              v16 = v30 & ~(v30 >> 31);
              v31 = rint(v28 * v23);
              if (v16 >= 0xFFFF)
              {
                LOWORD(v16) = -1;
              }

              v17 = v31 & ~(v31 >> 31);
              if (v17 >= 0xFFFF)
              {
                LOWORD(v17) = -1;
              }

              v32 = rint(v29 * v20);
              v33 = v32 & ~(v32 >> 31);
              if (v33 >= 0xFFFF)
              {
                LOWORD(v33) = -1;
              }

              v34 = v29 * v24;
              goto LABEL_30;
            }
          }
        }

        v35 = rint(v11 / v16);
        v16 = v35 & ~(v35 >> 31);
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }
      }

      if (*(a3 + v15 + 2))
      {
        v36 = rint(v11 / v17);
        if ((v36 & ~(v36 >> 31)) >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        else
        {
          LOWORD(v17) = v36 & ~(v36 >> 31);
        }
      }

      if (*(a3 + v15 + 4))
      {
        v37 = rint(v11 / *(a3 + v15 + 4));
        if ((v37 & ~(v37 >> 31)) >= 0xFFFF)
        {
          LOWORD(v33) = -1;
        }

        else
        {
          LOWORD(v33) = v37 & ~(v37 >> 31);
        }
      }

      else
      {
        LOWORD(v33) = 0;
      }

      v21 = v14 + 2;
      v22 = v14 + 3;
      v38 = *(a3 + v15 + 6);
      if (*(a3 + v15 + 6))
      {
        v34 = v11 / v38;
LABEL_30:
        v39 = rint(v34);
        v38 = v39 & ~(v39 >> 31);
        if (v38 >= 0xFFFF)
        {
          LOWORD(v38) = -1;
        }
      }

      v40 = (a5 + v15);
      *v40 = v16;
      v40[1] = v17;
      *(a5 + 2 * v21) = v33;
      *(a5 + 2 * v22) = v38;
      v14 += 4;
      v15 += 8;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_34:
    if (v14 < v10)
    {
      do
      {
        v41 = *(a3 + 2 * v14);
        if (*(a3 + 2 * v14))
        {
          v42 = rint(v11 / v41);
          v41 = v42 & ~(v42 >> 31);
          if (v41 >= 0xFFFF)
          {
            LOWORD(v41) = -1;
          }
        }

        *(a5 + 2 * v14++) = v41;
      }

      while (v9 != v14);
    }

    a5 += v12;
    a3 += v13;
    --v8;
  }

  while (v8);
}

void cv::recip16s(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 2 * (a6 >> 1);
  v13 = 2 * (a4 >> 1);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_48;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      LOWORD(v16) = *(a3 + v15);
      LOWORD(v17) = *(a3 + v15 + 2);
      if (v16)
      {
        if (*(a3 + v15 + 2))
        {
          if (*(a3 + v15 + 4))
          {
            v18 = *(a3 + v15 + 6);
            if (v18)
            {
              v19 = v14 | 2;
              v20 = v16;
              v21 = v14 | 3;
              v22 = v17;
              v23 = *(a3 + v15 + 4);
              v24 = v18;
              v25 = v11 / (v20 * v22 * (v23 * v24));
              v26 = v23 * v24 * v25;
              v27 = v20 * v22 * v25;
              v16 = rint(v26 * v22);
              if (v16 <= -32768)
              {
                LODWORD(v16) = -32768;
              }

              if (v16 >= 0x7FFF)
              {
                LOWORD(v16) = 0x7FFF;
              }

              v17 = rint(v26 * v20);
              if (v17 <= -32768)
              {
                LODWORD(v17) = -32768;
              }

              if (v17 >= 0x7FFF)
              {
                LOWORD(v17) = 0x7FFF;
              }

              v28 = rint(v27 * v24);
              if (v28 <= -32768)
              {
                LODWORD(v28) = -32768;
              }

              if (v28 >= 0x7FFF)
              {
                LOWORD(v28) = 0x7FFF;
              }

              v29 = v27 * v23;
              goto LABEL_42;
            }
          }
        }

        v16 = rint(v11 / v16);
        if (v16 <= -32768)
        {
          LODWORD(v16) = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }
      }

      if (*(a3 + v15 + 2))
      {
        v30 = rint(v11 / v17);
        if (v30 <= -32768)
        {
          LODWORD(v30) = -32768;
        }

        if (v30 >= 0x7FFF)
        {
          LOWORD(v17) = 0x7FFF;
        }

        else
        {
          LOWORD(v17) = v30;
        }
      }

      if (*(a3 + v15 + 4))
      {
        v31 = rint(v11 / *(a3 + v15 + 4));
        if (v31 <= -32768)
        {
          LODWORD(v31) = -32768;
        }

        if (v31 >= 0x7FFF)
        {
          LOWORD(v28) = 0x7FFF;
        }

        else
        {
          LOWORD(v28) = v31;
        }
      }

      else
      {
        LOWORD(v28) = 0;
      }

      v19 = v14 + 2;
      v21 = v14 + 3;
      LOWORD(v32) = *(a3 + v15 + 6);
      if (v32)
      {
        v29 = v11 / v32;
LABEL_42:
        v32 = rint(v29);
        if (v32 <= -32768)
        {
          LODWORD(v32) = -32768;
        }

        if (v32 >= 0x7FFF)
        {
          LOWORD(v32) = 0x7FFF;
        }
      }

      v33 = (a5 + v15);
      *v33 = v16;
      v33[1] = v17;
      *(a5 + 2 * v19) = v28;
      *(a5 + 2 * v21) = v32;
      v14 += 4;
      v15 += 8;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_48:
    if (v14 < v10)
    {
      do
      {
        LOWORD(v34) = *(a3 + 2 * v14);
        if (v34)
        {
          v34 = rint(v11 / v34);
          if (v34 <= -32768)
          {
            LODWORD(v34) = -32768;
          }

          if (v34 >= 0x7FFF)
          {
            LOWORD(v34) = 0x7FFF;
          }
        }

        *(a5 + 2 * v14++) = v34;
      }

      while (v9 != v14);
    }

    a5 += v12;
    a3 += v13;
    --v8;
  }

  while (v8);
}

void cv::recip32s(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = 4 * (a6 >> 2);
  v12 = 4 * (a4 >> 2);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      LODWORD(v15) = *(a3 + v14);
      LODWORD(v16) = *(a3 + v14 + 4);
      if (v15)
      {
        if (v16)
        {
          v17 = *(a3 + v14 + 8);
          if (v17)
          {
            v18 = *(a3 + v14 + 12);
            if (v18)
            {
              v19 = v13 | 2;
              v20 = v15;
              v21 = v17;
              v22 = v15 * v16;
              v23 = v17 * v18;
              v24 = v10 / (v22 * v23);
              v25 = v23 * v24;
              v26 = v22 * v24;
              v15 = rint(v25 * v16);
              v16 = rint(v25 * v20);
              v27 = rint(v26 * v18);
              v28 = v13 | 3;
              v29 = rint(v26 * v21);
              goto LABEL_19;
            }
          }
        }

        v15 = rint(v10 / v15);
      }

      if (v16)
      {
        v16 = rint(v10 / v16);
      }

      v30 = *(a3 + v14 + 8);
      if (v30)
      {
        v27 = rint(v10 / v30);
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v19 = v13 + 2;
      v28 = v13 + 3;
      LODWORD(v29) = *(a3 + v14 + 12);
      if (v29)
      {
        v29 = rint(v10 / v29);
      }

LABEL_19:
      v31 = (a5 + v14);
      *v31 = v15;
      v31[1] = v16;
      *(a5 + 4 * v19) = v27;
      *(a5 + 4 * v28) = v29;
      v13 += 4;
      v14 += 16;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_21:
    if (v13 < v9)
    {
      do
      {
        LODWORD(v32) = *(a3 + 4 * v13);
        if (v32)
        {
          v32 = rint(v10 / v32);
        }

        *(a5 + 4 * v13++) = v32;
      }

      while (v13 < v9);
    }

    a5 += v11;
    a3 += v12;
    --v8;
  }

  while (v8);
}

float *cv::recip32f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  do
  {
    if (v9 < 4)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v13 = 0;
    v12 = 0;
    do
    {
      v15 = *(a3 + v13);
      v14 = *(a3 + v13 + 4);
      v16 = 0.0;
      v17 = 0.0;
      if (v15 != 0.0)
      {
        if (v14 != 0.0)
        {
          v18 = *(a3 + v13 + 8);
          if (v18 != 0.0)
          {
            v19 = *(a3 + v13 + 12);
            if (v19 != 0.0)
            {
              v20 = v12 + 2;
              v21 = v12 + 3;
              v22 = v15;
              v23 = v14;
              v24 = v15 * v23;
              v25 = v18;
              v26 = v19;
              v27 = v18 * v26;
              v28 = v11 / (v24 * v27);
              v29 = v27 * v28;
              v30 = v24 * v28;
              v17 = v29 * v23;
              v16 = v29 * v22;
              v31 = v30 * v26;
              v32 = v30 * v25;
LABEL_18:
              v34 = v32;
              goto LABEL_19;
            }
          }
        }

        v17 = v11 / v15;
      }

      if (v14 != 0.0)
      {
        v16 = v11 / v14;
      }

      v33 = *(a3 + v13 + 8);
      v34 = 0.0;
      v31 = 0.0;
      if (v33 != 0.0)
      {
        v31 = v11 / v33;
      }

      v20 = v12 | 2;
      v21 = v12 | 3;
      v35 = *(a3 + v13 + 12);
      if (v35 != 0.0)
      {
        v32 = v11 / v35;
        goto LABEL_18;
      }

LABEL_19:
      result = (a5 + v13);
      *result = v17;
      result[1] = v16;
      *(a5 + 4 * v20) = v31;
      *(a5 + 4 * v21) = v34;
      v12 += 4;
      v13 += 16;
    }

    while (v12 <= v9 - 4);
    v12 = v12;
LABEL_21:
    if (v12 < v10)
    {
      do
      {
        v37 = *(a3 + 4 * v12);
        if (v37 == 0.0)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = v11 / v37;
        }

        *(a5 + 4 * v12++) = v38;
      }

      while (v9 != v12);
    }

    a5 += 4 * (a6 >> 2);
    a3 += 4 * (a4 >> 2);
    --v8;
  }

  while (v8);
  return result;
}

double *cv::recip64f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = vdupq_lane_s64(*a8, 0);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v16 = *(a3 + v14);
      v15 = *(a3 + v14 + 8);
      if (v16 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        if (v15 != 0.0)
        {
          v17 = *(a3 + v14 + 16);
          if (v17 != 0.0)
          {
            v18.f64[0] = *(a3 + v14 + 24);
            if (v18.f64[0] != 0.0)
            {
              v19 = v13 + 2;
              v20 = v13 + 3;
              v21 = v11 / (v16 * v15 * (v17 * v18.f64[0]));
              v22 = v17 * v18.f64[0] * v21;
              v23 = v16 * v15 * v21;
              v24 = v15 * v22;
              v25 = v16 * v22;
              v18.f64[1] = *(a3 + v14 + 16);
              v26 = vmulq_n_f64(v18, v23);
              goto LABEL_17;
            }
          }
        }

        v24 = v11 / v16;
      }

      if (v15 == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v11 / v15;
      }

      v19 = v13 | 2;
      v20 = v13 | 3;
      v26 = vbicq_s8(vdivq_f64(v12, *(a3 + v14 + 16)), vceqzq_f64(*(a3 + v14 + 16)));
LABEL_17:
      result = (a5 + v14);
      *result = v24;
      result[1] = v25;
      *(a5 + 8 * v19) = v26.f64[0];
      *(a5 + 8 * v20) = v26.f64[1];
      v13 += 4;
      v14 += 32;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_19:
    if (v13 < v10)
    {
      do
      {
        v28 = *(a3 + 8 * v13);
        if (v28 == 0.0)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = v11 / v28;
        }

        *(a5 + 8 * v13++) = v29;
      }

      while (v9 != v13);
    }

    a5 += 8 * (a6 >> 3);
    a3 += 8 * (a4 >> 3);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::addWeighted8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = *a8;
  v9 = a8[1];
  v10 = a8[2];
  v11 = a7[1];
  a7[1] = v11 - 1;
  if (v11)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    LODWORD(v15) = *a7;
    do
    {
      if (v15 >= 4)
      {
        v17 = 1;
        do
        {
          v18 = result + v17;
          v19 = a3 + v17;
          v20 = rint((((cv::g_8x32fTab[*(a3 + v17 - 1) + 128] * v13) + (cv::g_8x32fTab[*(result + v17 - 1) + 128] * v12)) + v14));
          v21 = v20 & ~(v20 >> 31);
          v22 = (a5 + v17);
          if (v21 >= 255)
          {
            LOBYTE(v21) = -1;
          }

          v23 = rint((((cv::g_8x32fTab[*(a3 + v17) + 128] * v13) + (cv::g_8x32fTab[*(result + v17) + 128] * v12)) + v14));
          *(v22 - 1) = v21;
          if ((v23 & ~(v23 >> 31)) >= 255)
          {
            v24 = -1;
          }

          else
          {
            v24 = v23 & ~(v23 >> 31);
          }

          *v22 = v24;
          v25 = (cv::g_8x32fTab[*(v19 + 2) + 128] * v13) + (cv::g_8x32fTab[*(v18 + 2) + 128] * v12);
          v26 = rint((((cv::g_8x32fTab[*(v19 + 1) + 128] * v13) + (cv::g_8x32fTab[*(v18 + 1) + 128] * v12)) + v14));
          v27 = v26 & ~(v26 >> 31);
          v28 = rint((v25 + v14));
          if (v27 >= 255)
          {
            LOBYTE(v27) = -1;
          }

          v29 = v28 & ~(v28 >> 31);
          if (v29 >= 255)
          {
            LOBYTE(v29) = -1;
          }

          v22[1] = v27;
          v22[2] = v29;
          v15 = *a7;
          v30 = v17 + 3;
          v17 += 4;
        }

        while (v30 <= v15 - 4);
        v16 = (v17 - 1);
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v15)
      {
        do
        {
          v31 = rint((((cv::g_8x32fTab[*(a3 + v16) + 128] * v13) + (cv::g_8x32fTab[*(result + v16) + 128] * v12)) + v14));
          v32 = v31 & ~(v31 >> 31);
          if (v32 >= 255)
          {
            LOBYTE(v32) = -1;
          }

          *(a5 + v16++) = v32;
          v15 = *a7;
        }

        while (v16 < v15);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v33 = a7[1];
      a7[1] = v33 - 1;
    }

    while (v33);
  }

  return result;
}

uint64_t cv::addWeighted8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a8[2];
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        do
        {
          v14 = result + v13;
          v15 = (a3 + v13);
          v16 = rint((((v11 * *(a3 + v13)) + (*(result + v13) * v10)) + v12));
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          v17 = rint((((v11 * v15[1]) + (*(result + v13 + 1) * v10)) + v12));
          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v18 = v17;
          if (v17 <= -128)
          {
            LODWORD(v18) = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v19 = (a5 + v13);
          *v19 = v16;
          v19[1] = v18;
          v20 = rint((((v11 * v15[2]) + (*(v14 + 2) * v10)) + v12));
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          v21 = ((v11 * v15[3]) + (*(v14 + 3) * v10)) + v12;
          if (v20 >= 127)
          {
            v22 = 127;
          }

          else
          {
            v22 = v20;
          }

          v23 = rint(v21);
          if (v23 <= -128)
          {
            LODWORD(v23) = -128;
          }

          if (v23 >= 127)
          {
            LOBYTE(v23) = 127;
          }

          v19[2] = v22;
          v19[3] = v23;
          v13 += 4;
        }

        while (v13 <= v9 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v9)
      {
        do
        {
          v24 = rint((((v11 * *(a3 + v13)) + (*(result + v13) * v10)) + v12));
          if (v24 <= -128)
          {
            LODWORD(v24) = -128;
          }

          if (v24 >= 127)
          {
            LOBYTE(v24) = 127;
          }

          *(a5 + v13++) = v24;
        }

        while (v13 < v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10, double a11, double a12, float a13)
{
  v13 = a7[1];
  if (v13)
  {
    v14 = *a7;
    v15 = *a7;
    v16 = *a8;
    v17 = a8[1];
    v18 = 2 * (a6 >> 1);
    v19 = a8[2];
    v20 = 2 * (a4 >> 1);
    v21 = 2 * (a2 >> 1);
    do
    {
      if (v14 >= 4)
      {
        v23 = 0;
        v22 = 0;
        do
        {
          v24 = result + v23;
          LOWORD(a12) = *(result + v23);
          v25 = a3 + v23;
          LOWORD(a13) = *(a3 + v23);
          *&v26 = v17 * LODWORD(a13);
          v27 = rint(((*&v26 + (LODWORD(a12) * v16)) + v19));
          v28 = v27 & ~(v27 >> 31);
          LOWORD(v27) = *(result + v23 + 2);
          LOWORD(v26) = *(a3 + v23 + 2);
          v29 = v17 * v26;
          v30 = ((v29 + (LODWORD(v27) * v16)) + v19);
          if (v28 >= 0xFFFF)
          {
            LOWORD(v28) = -1;
          }

          v31 = rint(v30);
          v32 = v31 & ~(v31 >> 31);
          if (v32 >= 0xFFFF)
          {
            LOWORD(v32) = -1;
          }

          v33 = (a5 + v23);
          *v33 = v28;
          v33[1] = v32;
          LOWORD(v31) = *(v24 + 4);
          LOWORD(v29) = *(v25 + 4);
          *&v34 = v17 * LODWORD(v29);
          v35 = rint(((*&v34 + (LODWORD(v31) * v16)) + v19));
          v36 = v35 & ~(v35 >> 31);
          LOWORD(v35) = *(v24 + 6);
          LOWORD(v34) = *(v25 + 6);
          a13 = v17 * v34;
          v37 = (a13 + (LODWORD(v35) * v16)) + v19;
          if (v36 >= 0xFFFF)
          {
            v38 = -1;
          }

          else
          {
            v38 = v36;
          }

          a12 = rint(v37);
          v39 = a12 & ~(a12 >> 31);
          if (v39 >= 0xFFFF)
          {
            LOWORD(v39) = -1;
          }

          v33[2] = v38;
          v33[3] = v39;
          v22 += 4;
          v23 += 8;
        }

        while (v22 <= v14 - 4);
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < v15)
      {
        do
        {
          LOWORD(a12) = *(result + 2 * v22);
          LOWORD(a13) = *(a3 + 2 * v22);
          a13 = v17 * LODWORD(a13);
          a12 = rint(((a13 + (LODWORD(a12) * v16)) + v19));
          v40 = a12 & ~(a12 >> 31);
          if (v40 >= 0xFFFF)
          {
            LOWORD(v40) = -1;
          }

          *(a5 + 2 * v22++) = v40;
        }

        while (v14 != v22);
      }

      a5 += v18;
      a3 += v20;
      result += v21;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::addWeighted16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = 2 * (a6 >> 1);
    v14 = a8[2];
    v15 = 2 * (a4 >> 1);
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = result + v18;
          v20 = (a3 + v18);
          v21 = rint((((v12 * *(a3 + v18)) + (*(result + v18) * v11)) + v14));
          if (v21 <= -32768)
          {
            LODWORD(v21) = -32768;
          }

          v22 = rint((((v12 * v20[1]) + (*(result + v18 + 2) * v11)) + v14));
          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          v23 = v22;
          if (v22 <= -32768)
          {
            LODWORD(v23) = -32768;
          }

          if (v23 >= 0x7FFF)
          {
            LOWORD(v23) = 0x7FFF;
          }

          v24 = (a5 + v18);
          *v24 = v21;
          v24[1] = v23;
          v25 = rint((((v12 * v20[2]) + (*(v19 + 4) * v11)) + v14));
          v26 = *(v19 + 6);
          if (v25 <= -32768)
          {
            v27 = -32768;
          }

          else
          {
            v27 = v25;
          }

          v28 = (((v12 * v20[3]) + (v26 * v11)) + v14);
          if (v27 >= 0x7FFF)
          {
            LOWORD(v27) = 0x7FFF;
          }

          v29 = rint(v28);
          if (v29 <= -32768)
          {
            LODWORD(v29) = -32768;
          }

          if (v29 >= 0x7FFF)
          {
            LOWORD(v29) = 0x7FFF;
          }

          v24[2] = v27;
          v24[3] = v29;
          v17 += 4;
          v18 += 8;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          v30 = rint((((v12 * *(a3 + 2 * v17)) + (*(result + 2 * v17) * v11)) + v14));
          if (v30 <= -32768)
          {
            LODWORD(v30) = -32768;
          }

          if (v30 >= 0x7FFF)
          {
            LOWORD(v30) = 0x7FFF;
          }

          *(a5 + 2 * v17++) = v30;
        }

        while (v9 != v17);
      }

      a5 += v13;
      a3 += v15;
      result += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a8[2];
    v13 = 4 * (a6 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = rint(v12 + v11 * *(a3 + v15 + 4) + *(result + v15 + 4) * v10);
          v17 = (a5 + v15);
          *v17 = rint(v12 + v11 * *(a3 + v15) + *(result + v15) * v10);
          v17[1] = v16;
          v18 = rint(v12 + v11 * *(a3 + v15 + 12) + *(result + v15 + 12) * v10);
          v17[2] = rint(v12 + v11 * *(a3 + v15 + 8) + *(result + v15 + 8) * v10);
          v17[3] = v18;
          v14 += 4;
          v15 += 16;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          *(a5 + 4 * v14) = rint(v12 + v11 * *(a3 + 4 * v14) + *(result + 4 * v14) * v10);
          ++v14;
        }

        while (v14 < v9);
      }

      a5 += v13;
      a3 += 4 * (a4 >> 2);
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = *(a8 + 16);
    v14 = vdupq_lane_s64(*a8, 0);
    v15 = vdupq_lane_s64(v13, 0);
    v16 = 4 * (a4 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = (a5 + v18);
          *v19 = vcvt_f32_f64(vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v18)), v12), v14, vcvtq_f64_f32(*(result + v18)))));
          v19[1] = vcvt_f32_f64(vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v18 + 8)), v12), v14, vcvtq_f64_f32(*(result + v18 + 8)))));
          v17 += 4;
          v18 += 16;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          v20 = *&v13 + v12 * *(a3 + 4 * v17) + *(result + 4 * v17) * v11;
          *(a5 + 4 * v17++) = v20;
        }

        while (v9 != v17);
      }

      a5 += 4 * (a6 >> 2);
      a3 += v16;
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = *(a8 + 16);
    v14 = vdupq_lane_s64(*a8, 0);
    v15 = vdupq_lane_s64(v13, 0);
    v16 = 8 * (a4 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = (a5 + v18);
          *v19 = vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(*(a3 + v18), v12), v14, *(result + v18)));
          v19[1] = vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(*(a3 + v18 + 16), v12), v14, *(result + v18 + 16)));
          v17 += 4;
          v18 += 32;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          *(a5 + 8 * v17) = *&v13 + v12 * *(a3 + 8 * v17) + *(result + 8 * v17) * v11;
          ++v17;
        }

        while (v9 != v17);
      }

      a5 += 8 * (a6 >> 3);
      a3 += v16;
      result += 8 * (a2 >> 3);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = *a8;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v9 = v8 != 2;
    v10 = a2;
    v11 = result;
    goto LABEL_9;
  }

  v9 = v8 == 1;
  if (v8 == 4 || v8 == 1)
  {
    v10 = a4;
    v11 = a3;
    a4 = a2;
    a3 = result;
LABEL_9:
    v13 = a7[1];
    v14 = v13 - 1;
    a7[1] = v13 - 1;
    if (v13)
    {
      LODWORD(v15) = *a7;
      do
      {
        if (v15 >= 1)
        {
          v16 = 0;
          do
          {
            *(a5 + v16) = (v9 ^ (*(a3 + v16) <= *(v11 + v16))) << 31 >> 31;
            ++v16;
            v15 = *a7;
          }

          while (v16 < v15);
          v14 = a7[1];
        }

        v17 = v14;
        a3 += a4;
        v11 += v10;
        a5 += a6;
        a7[1] = --v14;
      }

      while (v17);
    }

    return result;
  }

  if (v8 == 5 || v8 == 0)
  {
    v19 = a7[1];
    v20 = v19 - 1;
    a7[1] = v19 - 1;
    if (v19)
    {
      LODWORD(v21) = *a7;
      do
      {
        if (v21 >= 1)
        {
          v22 = 0;
          do
          {
            *(a5 + v22) = ((v8 == 0) ^ (*(result + v22) != *(a3 + v22))) << 31 >> 31;
            ++v22;
            v21 = *a7;
          }

          while (v22 < v21);
          v20 = a7[1];
        }

        v23 = v20;
        result += a2;
        a3 += a4;
        a5 += a6;
        a7[1] = --v20;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t cv::cmp8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v11 = v10 != 2;
    v12 = a2;
    v13 = result;
    a2 = a4;
    result = a3;
LABEL_3:
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    for (; v8; --v8)
    {
      if (v9 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = result + v15;
          v17 = v13 + v15;
          if (*(result + v15 + 1) <= *(v13 + v15 + 1))
          {
            v18 = v14;
          }

          else
          {
            v18 = ~v14;
          }

          if (*(result + v15) <= *(v13 + v15))
          {
            v19 = v14;
          }

          else
          {
            v19 = ~v14;
          }

          v20 = (a5 + v15);
          *v20 = v19;
          v20[1] = v18;
          if (*(v16 + 3) <= *(v17 + 3))
          {
            v21 = v14;
          }

          else
          {
            v21 = ~v14;
          }

          if (*(v16 + 2) <= *(v17 + 2))
          {
            v22 = v14;
          }

          else
          {
            v22 = ~v14;
          }

          v20[2] = v22;
          v20[3] = v21;
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v9)
      {
        do
        {
          if (*(result + v15) <= *(v13 + v15))
          {
            v23 = v14;
          }

          else
          {
            v23 = ~v14;
          }

          *(a5 + v15++) = v23;
        }

        while (v15 < v9);
      }

      result += a2;
      v13 += v12;
      a5 += a6;
    }

    return result;
  }

  v11 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v12 = a4;
      v13 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v12 = a4;
    v13 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  for (; v8; --v8)
  {
    if (v9 >= 4)
    {
      v25 = 0;
      do
      {
        v26 = result + v25;
        v27 = a3 + v25;
        if (*(result + v25 + 1) == *(a3 + v25 + 1))
        {
          v28 = ~v24;
        }

        else
        {
          v28 = v24;
        }

        if (*(result + v25) == *(a3 + v25))
        {
          v29 = ~v24;
        }

        else
        {
          v29 = v24;
        }

        v30 = (a5 + v25);
        *v30 = v29;
        v30[1] = v28;
        if (*(v26 + 3) == *(v27 + 3))
        {
          v31 = ~v24;
        }

        else
        {
          v31 = v24;
        }

        if (*(v26 + 2) == *(v27 + 2))
        {
          v32 = ~v24;
        }

        else
        {
          v32 = v24;
        }

        v30[2] = v32;
        v30[3] = v31;
        v25 += 4;
      }

      while (v25 <= v9 - 4);
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    if (v25 < v9)
    {
      do
      {
        if (*(result + v25) == *(a3 + v25))
        {
          v33 = ~v24;
        }

        else
        {
          v33 = v24;
        }

        *(a5 + v25++) = v33;
      }

      while (v25 < v9);
    }

    result += a2;
    a3 += a4;
    a5 += a6;
  }

  return result;
}

uint64_t cv::cmp16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 1;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 1;
    v14 = result;
    v11 = a4 >> 1;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 2 * v13;
      v17 = 2 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19 + 2) <= *(v14 + v19 + 2))
            {
              v22 = v15;
            }

            else
            {
              v22 = ~v15;
            }

            if (*(result + v19) <= *(v14 + v19))
            {
              v23 = v15;
            }

            else
            {
              v23 = ~v15;
            }

            v24 = (a5 + v18);
            *v24 = v23;
            v24[1] = v22;
            if (*(v20 + 6) <= *(v21 + 6))
            {
              v25 = v15;
            }

            else
            {
              v25 = ~v15;
            }

            if (*(v20 + 4) <= *(v21 + 4))
            {
              v26 = v15;
            }

            else
            {
              v26 = ~v15;
            }

            v24[2] = v26;
            v24[3] = v25;
            v18 += 4;
            v19 += 8;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 2 * v18) <= *(v14 + 2 * v18))
            {
              v27 = v15;
            }

            else
            {
              v27 = ~v15;
            }

            *(a5 + v18++) = v27;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 1;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 1;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v28 = -1;
  }

  else
  {
    v28 = 0;
  }

  if (v8)
  {
    v29 = 2 * (a4 >> 1);
    v30 = 2 * v11;
    do
    {
      if (v9 >= 4)
      {
        v32 = 0;
        v31 = 0;
        do
        {
          v33 = result + v32;
          v34 = a3 + v32;
          if (*(result + v32 + 2) == *(a3 + v32 + 2))
          {
            v35 = ~v28;
          }

          else
          {
            v35 = v28;
          }

          if (*(result + v32) == *(a3 + v32))
          {
            v36 = ~v28;
          }

          else
          {
            v36 = v28;
          }

          v37 = (a5 + v31);
          *v37 = v36;
          v37[1] = v35;
          if (*(v33 + 6) == *(v34 + 6))
          {
            v38 = ~v28;
          }

          else
          {
            v38 = v28;
          }

          if (*(v33 + 4) == *(v34 + 4))
          {
            v39 = ~v28;
          }

          else
          {
            v39 = v28;
          }

          v37[2] = v39;
          v37[3] = v38;
          v31 += 4;
          v32 += 8;
        }

        while (v31 <= v9 - 4);
        v31 = v31;
      }

      else
      {
        v31 = 0;
      }

      if (v31 < v9)
      {
        do
        {
          if (*(result + 2 * v31) == *(a3 + 2 * v31))
          {
            v40 = ~v28;
          }

          else
          {
            v40 = v28;
          }

          *(a5 + v31++) = v40;
        }

        while (v31 < v9);
      }

      a5 += a6;
      a3 += v29;
      result += v30;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = *a8;
  v9 = a4 >> 1;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v10 = v8 != 2;
    v11 = a2 >> 1;
    v12 = result;
    goto LABEL_9;
  }

  v10 = v8 == 1;
  if (v8 == 4 || v8 == 1)
  {
    v11 = a4 >> 1;
    v12 = a3;
    v9 = a2 >> 1;
    a3 = result;
LABEL_9:
    v14 = a7[1];
    v15 = v14 - 1;
    a7[1] = v14 - 1;
    if (v14)
    {
      LODWORD(v16) = *a7;
      v17 = 2 * v11;
      v18 = 2 * v9;
      do
      {
        if (v16 >= 1)
        {
          v19 = 0;
          do
          {
            *(a5 + v19) = (v10 ^ (*(a3 + 2 * v19) <= *(v12 + 2 * v19))) << 31 >> 31;
            ++v19;
            v16 = *a7;
          }

          while (v19 < v16);
          v15 = a7[1];
        }

        v20 = v15;
        a5 += a6;
        a7[1] = --v15;
        v12 += v17;
        a3 += v18;
      }

      while (v20);
    }

    return result;
  }

  if (v8 == 5 || v8 == 0)
  {
    v22 = a7[1];
    v23 = v22 - 1;
    a7[1] = v22 - 1;
    if (v22)
    {
      LODWORD(v24) = *a7;
      v25 = 2 * v9;
      do
      {
        if (v24 >= 1)
        {
          v26 = 0;
          do
          {
            *(a5 + v26) = ((v8 == 0) ^ (*(result + 2 * v26) != *(a3 + 2 * v26))) << 31 >> 31;
            ++v26;
            v24 = *a7;
          }

          while (v26 < v24);
          v23 = a7[1];
        }

        v27 = v23;
        a5 += a6;
        a7[1] = --v23;
        a3 += v25;
        result += 2 * (a2 >> 1);
      }

      while (v27);
    }
  }

  return result;
}

uint64_t cv::cmp32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 2;
    v14 = result;
    v11 = a4 >> 2;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 4 * v13;
      v17 = 4 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19 + 4) <= *(v14 + v19 + 4))
            {
              v22 = v15;
            }

            else
            {
              v22 = ~v15;
            }

            if (*(result + v19) <= *(v14 + v19))
            {
              v23 = v15;
            }

            else
            {
              v23 = ~v15;
            }

            v24 = (a5 + v18);
            *v24 = v23;
            v24[1] = v22;
            v27 = v20 + 8;
            v26 = *(v20 + 8);
            v25 = *(v27 + 4);
            v29 = v21 + 8;
            v28 = *(v21 + 8);
            if (v25 <= *(v29 + 4))
            {
              v30 = v15;
            }

            else
            {
              v30 = ~v15;
            }

            if (v26 <= v28)
            {
              v31 = v15;
            }

            else
            {
              v31 = ~v15;
            }

            v24[2] = v31;
            v24[3] = v30;
            v18 += 4;
            v19 += 16;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 4 * v18) <= *(v14 + 4 * v18))
            {
              v32 = v15;
            }

            else
            {
              v32 = ~v15;
            }

            *(a5 + v18++) = v32;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 2;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 2;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  if (v8)
  {
    v34 = 4 * (a4 >> 2);
    v35 = 4 * v11;
    do
    {
      if (v9 >= 4)
      {
        v37 = 0;
        v36 = 0;
        do
        {
          v38 = result + v37;
          v39 = a3 + v37;
          if (*(result + v37 + 4) == *(a3 + v37 + 4))
          {
            v40 = ~v33;
          }

          else
          {
            v40 = v33;
          }

          if (*(result + v37) == *(a3 + v37))
          {
            v41 = ~v33;
          }

          else
          {
            v41 = v33;
          }

          v42 = (a5 + v36);
          *v42 = v41;
          v42[1] = v40;
          v45 = v38 + 8;
          v44 = *(v38 + 8);
          v43 = *(v45 + 4);
          v47 = v39 + 8;
          v46 = *(v39 + 8);
          if (v43 == *(v47 + 4))
          {
            v48 = ~v33;
          }

          else
          {
            v48 = v33;
          }

          if (v44 == v46)
          {
            v49 = ~v33;
          }

          else
          {
            v49 = v33;
          }

          v42[2] = v49;
          v42[3] = v48;
          v36 += 4;
          v37 += 16;
        }

        while (v36 <= v9 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < v9)
      {
        do
        {
          if (*(result + 4 * v36) == *(a3 + 4 * v36))
          {
            v50 = ~v33;
          }

          else
          {
            v50 = v33;
          }

          *(a5 + v36++) = v50;
        }

        while (v36 < v9);
      }

      a5 += a6;
      a3 += v34;
      result += v35;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 2;
    v14 = result;
    v11 = a4 >> 2;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 4 * v13;
      v17 = 4 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19) <= *(v14 + v19))
            {
              v22 = 0;
            }

            else
            {
              v22 = -1;
            }

            v23 = v15 ^ v22;
            if (*(result + v19 + 4) <= *(v14 + v19 + 4))
            {
              v24 = 0;
            }

            else
            {
              v24 = -1;
            }

            v25 = (a5 + v18);
            *v25 = v23;
            v25[1] = v15 ^ v24;
            v26 = *(v20 + 12);
            if (*(v20 + 8) <= *(v21 + 8))
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v15 ^ v27;
            if (v26 <= *(v21 + 12))
            {
              v29 = 0;
            }

            else
            {
              v29 = -1;
            }

            v25[2] = v28;
            v25[3] = v15 ^ v29;
            v18 += 4;
            v19 += 16;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 4 * v18) <= *(v14 + 4 * v18))
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }

            *(a5 + v18++) = v15 ^ v30;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 2;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 2;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v8)
  {
    v32 = 4 * (a4 >> 2);
    v33 = 4 * v11;
    do
    {
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = result + v35;
          v37 = a3 + v35;
          if (*(result + v35) == *(a3 + v35))
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = v31 ^ v38;
          if (*(result + v35 + 4) == *(a3 + v35 + 4))
          {
            v40 = -1;
          }

          else
          {
            v40 = 0;
          }

          v41 = (a5 + v34);
          *v41 = v39;
          v41[1] = v31 ^ v40;
          v42 = *(v36 + 12);
          if (*(v36 + 8) == *(v37 + 8))
          {
            v43 = -1;
          }

          else
          {
            v43 = 0;
          }

          v44 = v31 ^ v43;
          if (v42 == *(v37 + 12))
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          v41[2] = v44;
          v41[3] = v31 ^ v45;
          v34 += 4;
          v35 += 16;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v9)
      {
        do
        {
          if (*(result + 4 * v34) == *(a3 + 4 * v34))
          {
            v46 = -1;
          }

          else
          {
            v46 = 0;
          }

          *(a5 + v34++) = v31 ^ v46;
        }

        while (v34 < v9);
      }

      a5 += a6;
      a3 += v32;
      result += v33;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 3;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 3;
    v14 = result;
    v11 = a4 >> 3;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 8 * v13;
      v17 = 8 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19) <= *(v14 + v19))
            {
              v22 = 0;
            }

            else
            {
              v22 = -1;
            }

            v23 = v15 ^ v22;
            if (*(result + v19 + 8) <= *(v14 + v19 + 8))
            {
              v24 = 0;
            }

            else
            {
              v24 = -1;
            }

            v25 = (a5 + v18);
            *v25 = v23;
            v25[1] = v15 ^ v24;
            v26 = *(v20 + 24);
            if (*(v20 + 16) <= *(v21 + 16))
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v15 ^ v27;
            if (v26 <= *(v21 + 24))
            {
              v29 = 0;
            }

            else
            {
              v29 = -1;
            }

            v25[2] = v28;
            v25[3] = v15 ^ v29;
            v18 += 4;
            v19 += 32;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 8 * v18) <= *(v14 + 8 * v18))
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }

            *(a5 + v18++) = v15 ^ v30;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 3;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 3;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v8)
  {
    v32 = 8 * (a4 >> 3);
    v33 = 8 * v11;
    do
    {
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = result + v35;
          v37 = a3 + v35;
          if (*(result + v35) == *(a3 + v35))
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = v31 ^ v38;
          if (*(result + v35 + 8) == *(a3 + v35 + 8))
          {
            v40 = -1;
          }

          else
          {
            v40 = 0;
          }

          v41 = (a5 + v34);
          *v41 = v39;
          v41[1] = v31 ^ v40;
          v42 = *(v36 + 24);
          if (*(v36 + 16) == *(v37 + 16))
          {
            v43 = -1;
          }

          else
          {
            v43 = 0;
          }

          v44 = v31 ^ v43;
          if (v42 == *(v37 + 24))
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          v41[2] = v44;
          v41[3] = v31 ^ v45;
          v34 += 4;
          v35 += 32;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v9)
      {
        do
        {
          if (*(result + 8 * v34) == *(a3 + 8 * v34))
          {
            v46 = -1;
          }

          else
          {
            v46 = 0;
          }

          *(a5 + v34++) = v31 ^ v46;
        }

        while (v34 < v9);
      }

      a5 += a6;
      a3 += v32;
      result += v33;
      --v8;
    }

    while (v8);
  }

  return result;
}

void cv::crossCorr(cv::Mat *a1, cv::Mat *a2, int32x2_t *this, int *a4, uint64_t a5, int32x2_t *a6, char a7, double a8)
{
  v8 = a5;
  v284[5] = *MEMORY[0x277D85DE8];
  v239 = 0;
  v238 = 0;
  v240 = 0;
  v14 = *a2;
  *v230 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 24);
  v232 = v16;
  v233 = *(a2 + 40);
  v17 = *(a2 + 7);
  v231 = v15;
  v234 = v17;
  v235 = &v230[2];
  v236 = v237;
  v237[1] = 0;
  v237[0] = 0;
  if (v16)
  {
    atomic_fetch_add(v16, 1u);
    v18 = *(a2 + 1);
  }

  else
  {
    v18 = DWORD1(v14);
  }

  if (v18 > 2)
  {
    v230[1] = 0;
    cv::Mat::copySize(v230, a2);
  }

  else
  {
    v19 = *(a2 + 9);
    v20 = v236;
    *v236 = *v19;
    v20[1] = v19[1];
  }

  v21 = v230[0];
  if (*(a1 + 1) > 2 || v230[1] > 2 || this->i32[1] >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v277, "img.dims <= 2 && templ.dims <= 2 && corr.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v268, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v22 = cv::Exception::Exception(v281, -215, v277, v268, __p, 60);
    cv::error(v22, v23);
  }

  v187 = *a1;
  v24 = *a1 & 7;
  v25 = v24;
  if (v24 != (v230[0] & 7))
  {
    if (v24 <= 5)
    {
      v26 = 5;
    }

    else
    {
      v26 = *a1 & 7;
    }

    v25 = v230[0] & 7;
    if (v25 != v26)
    {
      cv::_OutputArray::_OutputArray(v281, v230);
      cv::Mat::convertTo(a2, v281, v26, 1.0, 0.0);
      v25 = v230[0] & 7;
    }

    if (v24 != v25 && v25 != 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v277, "depth == tdepth || tdepth == CV_32F");
      std::string::basic_string[abi:ne200100]<0>(v268, "crossCorr");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
      v27 = cv::Exception::Exception(v281, -215, v277, v268, __p, 68);
      cv::error(v27, v28);
    }
  }

  if (a4[1] >= v230[2] + *(a1 + 2) || *a4 >= v230[3] + *(a1 + 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v277, "corrsize.height <= img.rows + templ.rows - 1 && corrsize.width <= img.cols + templ.cols - 1");
    std::string::basic_string[abi:ne200100]<0>(v268, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v29 = cv::Exception::Exception(v281, -215, v277, v268, __p, 70);
    cv::error(v29, v30);
  }

  if ((v8 & 0xFF8) != 0 && a8 != 0.0)
  {
    std::string::basic_string[abi:ne200100]<0>(v277, "ccn == 1 || delta == 0");
    std::string::basic_string[abi:ne200100]<0>(v268, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v31 = cv::Exception::Exception(v281, -215, v277, v268, __p, 72);
    cv::error(v31, v32);
  }

  v33 = *a4;
  v34 = a4[1];
  v35 = v8 & 0xFFF;
  v181 = a1;
  if (this->i32[1] > 2 || this[1].i32[0] != v34 || this[1].i32[1] != v33 || (this->i32[0] & 0xFFF) != v35 || !*&this[2])
  {
    v281[0] = a4[1];
    v281[1] = v33;
    cv::Mat::create(this, 2, v281, v35, a5, a6);
    v34 = this[1].i32[0];
    v33 = this[1].i32[1];
  }

  v36 = v8 & 7;
  if (v25 <= v36)
  {
    v37 = v8 & 7;
  }

  else
  {
    v37 = v25;
  }

  if (v37 <= 5)
  {
    v37 = 5;
  }

  if (v24 > 1)
  {
    v37 = 6;
  }

  v192 = v37;
  v38 = v230[2];
  v39 = rint(v230[3] * 4.5);
  if (257 - v230[3] > v39)
  {
    LODWORD(v39) = 257 - v230[3];
  }

  if (v33 >= v39)
  {
    v33 = v39;
  }

  OptimalDFTSize = cv::getOptimalDFTSize((v230[3] + v33 - 1));
  v41 = 257 - v38;
  v42 = rint(v38 * 4.5);
  if (257 - v38 <= v42)
  {
    v41 = v42;
  }

  if (v34 < v41)
  {
    v41 = v34;
  }

  if (OptimalDFTSize <= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = OptimalDFTSize;
  }

  v46 = cv::getOptimalDFTSize((v41 + v230[2] - 1));
  if (v46 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v277, "the input arrays are too big");
    std::string::basic_string[abi:ne200100]<0>(v268, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v47 = cv::Exception::Exception(v281, -211, v277, v268, __p, 89);
    cv::error(v47, v48);
  }

  v49 = *&v230[2];
  v191 = (v21 >> 3) & 0x1FF;
  v50 = this[1];
  v282 = &v281[2];
  v283 = v284;
  v284[0] = 0;
  v284[1] = 0;
  v281[0] = 1124007936;
  memset(&v281[1], 0, 60);
  LODWORD(v277[0]) = v46 * (v191 + 1);
  DWORD1(v277[0]) = v43;
  v51 = v43;
  cv::Mat::create(v281, 2, v277, v192, v44, v45);
  v278 = v277 + 8;
  v279 = v280;
  v280[1] = 0;
  v280[0] = 0;
  LODWORD(v277[0]) = 1124007936;
  memset(v277 + 4, 0, 48);
  v277[3] = 0u;
  v268[0] = __PAIR64__(v43, v46);
  cv::Mat::create(v277, 2, v268, v192, v52, v53);
  v54 = 0;
  v190 = v46;
  v193 = (v187 >> 3) & 0x1FF;
  v55 = vsub_s32(__PAIR64__(v43, v46), v49);
  v56 = vadd_s32(v55, 0x100000001);
  v57 = vcgt_s32(v50, v55);
  v58 = 2 * v25;
  if (v191 && v25 != v192)
  {
    v54 = (v230[2] * v230[3]) << ((0xFA50u >> v58) & 3);
  }

  v59 = vbsl_s8(v57, v56, v50);
  v175 = v59;
  if (v193)
  {
    if (v24 != v192)
    {
      v60 = vadd_s32(v59, vadd_s32(*&v230[2], -1));
      v61 = vmul_lane_s32(v60, v60, 1).u32[0] << ((0xFA50u >> (2 * v24)) & 3);
      if (v54 <= v61)
      {
        v54 = v61;
      }
    }
  }

  if (((v187 | v8) & 0xFF8) != 0 && v36 != v192)
  {
    v62 = vmul_lane_s32(v175, v175, 1).u32[0] << ((0xFA50u >> (2 * v36)) & 3);
    if (v54 <= v62)
    {
      v54 = v62;
    }
  }

  v174 = this;
  v179 = 2 * v36;
  if (v54 <= (v239 - v238))
  {
    if (v54 < (v239 - v238))
    {
      v239 = v238 + v54;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&v238, v54 - (v239 - v238));
  }

  v63 = 0;
  v184 = (0xFA50u >> v58) & 3;
  do
  {
    *v268 = *v230;
    v270 = v232;
    v271 = v233;
    v269 = v231;
    v272 = v234;
    v273 = &v268[1];
    v274 = &v275;
    v275 = 0;
    v276 = 0;
    if (v232)
    {
      atomic_fetch_add(v232, 1u);
    }

    if (v230[1] > 2)
    {
      HIDWORD(v268[0]) = 0;
      cv::Mat::copySize(v268, v230);
    }

    else
    {
      v64 = v236;
      v65 = v274;
      *v274 = *v236;
      v65[1] = v64[1];
    }

    v214.i32[0] = 0;
    v214.i32[1] = v63 * v190;
    v214.i64[1] = __PAIR64__(v190, v51);
    cv::Mat::Mat(__p, v281, &v214);
    v259.i32[0] = 0;
    v259.i32[1] = v63 * v190;
    v259.u64[1] = vrev64_s32(*&v230[2]);
    cv::Mat::Mat(&v214, v281, &v259);
    if (v191)
    {
      if (v25 == v192)
      {
        v259 = v214;
        v261 = v216;
        v262 = v217;
        v260 = v215;
        v263 = v218;
        v264 = &v259.i8[8];
        v265 = &v266;
        v266 = 0;
        v267 = 0;
        if (v216)
        {
          atomic_fetch_add(v216, 1u);
        }

        if (v214.i32[1] > 2)
        {
          v259.i32[1] = 0;
          cv::Mat::copySize(&v259, &v214);
        }

        else
        {
          v67 = v220;
          v68 = v265;
          *v265 = *v220;
          v68[1] = v67[1];
        }
      }

      else
      {
        v66 = v235[1];
        v259.i32[2] = *v235;
        v259.i32[3] = v66;
        v260 = v238;
        *&v261 = 0;
        v264 = &v259.i8[8];
        v265 = &v266;
        v259.i32[1] = 2;
        v259.i32[0] = v25 | 0x42FF4000;
        v266 = v66 << v184;
        v267 = (1 << ((0xFA50u >> v58) & 3));
        v263 = 0;
        *(&v262 + 1) = v238 + (v66 << v184) * v259.i32[2];
        *(&v261 + 1) = v238;
        *&v262 = *(&v262 + 1);
      }

      if (v261)
      {
        atomic_fetch_add(v261, 1u);
      }

      if (v270 && atomic_fetch_add(v270, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v268);
      }

      v269 = 0;
      v271 = 0uLL;
      *(&v270 + 1) = 0;
      if (v268[0] <= 0)
      {
        *&v270 = 0;
        LODWORD(v268[0]) = v259.i32[0];
      }

      else
      {
        v69 = 0;
        v70 = v273;
        do
        {
          *(v70 + v69++) = 0;
        }

        while (v69 < SHIDWORD(v268[0]));
        *&v270 = 0;
        LODWORD(v268[0]) = v259.i32[0];
        if (SHIDWORD(v268[0]) > 2)
        {
          goto LABEL_94;
        }
      }

      if (v259.i32[1] <= 2)
      {
        HIDWORD(v268[0]) = v259.i32[1];
        v268[1] = v259.i64[1];
        v71 = v265;
        v72 = v274;
        *v274 = *v265;
        v72[1] = v71[1];
        goto LABEL_95;
      }

LABEL_94:
      cv::Mat::copySize(v268, &v259);
LABEL_95:
      v271 = v262;
      v270 = v261;
      v269 = v260;
      v272 = v263;
      if (v261 && atomic_fetch_add(v261, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v259);
      }

      v260 = 0;
      v262 = 0uLL;
      *(&v261 + 1) = 0;
      if (v259.i32[1] >= 1)
      {
        v73 = 0;
        v74 = v264;
        do
        {
          *&v74[4 * v73++] = 0;
        }

        while (v73 < v259.i32[1]);
      }

      *&v261 = 0;
      if (v265)
      {
        v75 = v265 == &v266;
      }

      else
      {
        v75 = 1;
      }

      if (!v75)
      {
        free(v265);
      }

      v259.i64[0] = v63;
      cv::mixChannels(v230, 1, v268, 1, &v259, 1);
    }

    if (v215 != v269)
    {
      cv::_OutputArray::_OutputArray(&v259, &v214);
      cv::Mat::convertTo(v268, &v259, v214.i8[0] & 7, 1.0, 0.0);
    }

    if (SHIDWORD(__p[1]) > v230[3])
    {
      v204.i32[0] = 0;
      v204.i32[1] = v230[2];
      v196.i64[0] = __PAIR64__(HIDWORD(__p[1]), v230[3]);
      cv::Mat::Mat(&v259);
      v204 = 0u;
      v205 = 0u;
      cv::Mat::operator=(&v259, &v204);
      if (v261 && atomic_fetch_add(v261, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v259);
      }

      v260 = 0;
      v262 = 0uLL;
      *(&v261 + 1) = 0;
      if (v259.i32[1] >= 1)
      {
        v76 = 0;
        v77 = v264;
        do
        {
          *&v77[4 * v76++] = 0;
        }

        while (v76 < v259.i32[1]);
      }

      *&v261 = 0;
      if (v265)
      {
        v78 = v265 == &v266;
      }

      else
      {
        v78 = 1;
      }

      if (!v78)
      {
        free(v265);
      }
    }

    cv::_InputArray::_InputArray(&v259, __p);
    cv::_OutputArray::_OutputArray(&v204, __p);
    cv::dft(&v259, &v204, 0);
    if (v216 && atomic_fetch_add(v216, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v214);
    }

    v215 = 0;
    v217 = 0uLL;
    *(&v216 + 1) = 0;
    if (v214.i32[1] >= 1)
    {
      v79 = 0;
      v80 = v219;
      do
      {
        *(v80 + 4 * v79++) = 0;
      }

      while (v79 < v214.i32[1]);
    }

    *&v216 = 0;
    if (v220)
    {
      v81 = v220 == v221;
    }

    else
    {
      v81 = 1;
    }

    if (!v81)
    {
      free(v220);
    }

    if (v224 && atomic_fetch_add(v224, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    v223 = 0;
    v225 = 0uLL;
    *(&v224 + 1) = 0;
    if (SHIDWORD(__p[0]) >= 1)
    {
      v82 = 0;
      v83 = v227;
      do
      {
        *(v83 + 4 * v82++) = 0;
      }

      while (v82 < SHIDWORD(__p[0]));
    }

    *&v224 = 0;
    if (v228)
    {
      v84 = v228 == v229;
    }

    else
    {
      v84 = 1;
    }

    if (!v84)
    {
      free(v228);
    }

    if (v270 && atomic_fetch_add(v270, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v268);
    }

    v269 = 0;
    v271 = 0uLL;
    *(&v270 + 1) = 0;
    if (SHIDWORD(v268[0]) >= 1)
    {
      v85 = 0;
      v86 = v273;
      do
      {
        *(v86 + v85++) = 0;
      }

      while (v85 < SHIDWORD(v268[0]));
    }

    *&v270 = 0;
    if (v274)
    {
      v87 = v274 == &v275;
    }

    else
    {
      v87 = 1;
    }

    if (!v87)
    {
      free(v274);
    }

    v75 = v63++ == v191;
  }

  while (!v75);
  v89 = this[1].i32[0];
  v88 = this[1].i32[1];
  v90 = *(v181 + 7);
  v213 = vrev64_s32(**(v181 + 8));
  *v212 = 0;
  v91 = *v181;
  *v268 = *v181;
  v92 = *(v181 + 24);
  v270 = v92;
  v271 = *(v181 + 40);
  v269 = *(v181 + 2);
  v272 = v90;
  v273 = &v268[1];
  v274 = &v275;
  v276 = 0;
  v275 = 0;
  if (v92)
  {
    atomic_fetch_add(v92, 1u);
    v93 = *(v181 + 1);
  }

  else
  {
    v93 = DWORD1(v91);
  }

  if (v93 > 2)
  {
    HIDWORD(v268[0]) = 0;
    cv::Mat::copySize(v268, v181);
  }

  else
  {
    v94 = *(v181 + 9);
    v95 = v274;
    *v274 = *v94;
    v95[1] = v94[1];
  }

  if ((a7 & 0x10) == 0)
  {
    cv::Mat::locateROI(v181, &v213, v212);
    cv::Mat::adjustROI(v268, v212[1], v213.i32[1] - (v212[1] + *(v181 + 2)), v212[0], v213.i32[0] - (v212[0] + *(v181 + 3)));
  }

  v171 = (v175.i32[0] + v89 - 1) / v175.i32[0] * ((v175.i32[1] + v88 - 1) / v175.i32[1]);
  v172 = (v175.i32[1] + v88 - 1) / v175.i32[1];
  if (v171 >= 1)
  {
    v96 = 0;
    v170 = (0xFA50uLL >> (2 * v24)) & 3;
    v169 = (0xFA50u >> v179) & 3;
    v180 = (1 << ((0xFA50u >> v179) & 3));
    do
    {
      v97.i32[0] = v96 / v172;
      v97.i32[1] = v96 % v172;
      v98 = vmul_s32(v97, v175);
      v185 = vmin_s32(vsub_s32(this[1], v98), v175);
      v186 = v98;
      v188 = vadd_s32(vadd_s32(*&v230[2], -1), v185);
      v99 = vadd_s32(vsub_s32(v98, vrev64_s32(*a6)), vrev64_s32(*v212));
      v100 = vmax_s32(v99, 0);
      v101 = vmin_s32(vadd_s32(v99, v188), v268[1]);
      *v214.i8 = vzip1_s32(v100, v101);
      *v259.i8 = vzip2_s32(v100, v101);
      cv::Mat::Mat(__p);
      v259.i64[0] = 0;
      v259.u64[1] = vrev64_s32(v188);
      cv::Mat::Mat(&v214, v277, &v259);
      v178 = vsub_s32(v101, v100);
      *v204.i8 = vrev64_s32(vsub_s32(v100, v99));
      v204.u64[1] = vrev64_s32(v178);
      cv::Mat::Mat(&v259, v277, &v204);
      v176 = v96;
      v102.i64[0] = v186;
      v102.u64[1] = v185;
      v196 = vrev64q_s32(v102);
      cv::Mat::Mat(&v204, this, &v196);
      v103 = 0;
      v177 = (v178.i32[1] << v170) * v178.i32[0];
      v189 = vcgt_s32(v188, v178).i32[1] | (v178.i32[0] < v188.i32[0]);
      v182 = (v185.i32[1] << v169) * v185.i32[0];
      do
      {
        v197 = v223;
        v196 = *__p;
        v198 = v224;
        v199 = v225;
        v200 = v226;
        v201 = &v196.i8[8];
        v202 = v203;
        v203[0] = 0;
        v203[1] = 0;
        if (v224)
        {
          atomic_fetch_add(v224, 1u);
        }

        if (SHIDWORD(__p[0]) > 2)
        {
          v196.i32[1] = 0;
          cv::Mat::copySize(&v196, __p);
        }

        else
        {
          v104 = v228;
          v105 = v202;
          *v202 = *v228;
          v105[1] = v104[1];
        }

        *v252 = 0u;
        v251 = 0u;
        cv::Mat::operator=(v277, &v251);
        if (v193)
        {
          if (v24 == v192)
          {
            v251 = v259;
            *&v252[8] = v261;
            v253 = v262;
            *v252 = v260;
            v254 = v263;
            v255 = &v251.i64[1];
            v256 = &v257;
            v257 = 0;
            v258 = 0;
            if (v261)
            {
              atomic_fetch_add(v261, 1u);
            }

            if (v259.i32[1] > 2)
            {
              v251.i32[1] = 0;
              cv::Mat::copySize(&v251, &v259);
            }

            else
            {
              v106 = v265;
              v107 = v256;
              *v256 = *v265;
              v107[1] = v106[1];
            }
          }

          else
          {
            v251.u64[1] = v178;
            *v252 = v238;
            v255 = &v251.i64[1];
            v256 = &v257;
            v251.i32[1] = 2;
            v251.i32[0] = v24 | 0x42FF4000;
            v257 = v178.i32[1] << v170;
            v258 = 1 << v170;
            v254 = 0;
            *(&v253 + 1) = v238 + v177;
            *&v252[16] = v238;
            *&v253 = v238 + v177;
          }

          if (*&v252[8])
          {
            atomic_fetch_add(*&v252[8], 1u);
          }

          if (v198 && atomic_fetch_add(v198, 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(&v196);
          }

          v197 = 0;
          v199 = 0uLL;
          *(&v198 + 1) = 0;
          if (v196.i64[0] <= 0)
          {
            *&v198 = 0;
            v196.i32[0] = v251.i32[0];
          }

          else
          {
            v108 = 0;
            v109 = v201;
            do
            {
              *&v109[4 * v108++] = 0;
            }

            while (v108 < v196.i32[1]);
            *&v198 = 0;
            v196.i32[0] = v251.i32[0];
            if (v196.i32[1] > 2)
            {
LABEL_193:
              cv::Mat::copySize(&v196, &v251);
              goto LABEL_194;
            }
          }

          if (v251.i32[1] > 2)
          {
            goto LABEL_193;
          }

          v196.i32[1] = v251.i32[1];
          v196.i64[1] = v251.i64[1];
          v110 = v256;
          v111 = v202;
          *v202 = *v256;
          v111[1] = v110[1];
LABEL_194:
          v197 = *v252;
          v199 = v253;
          v198 = *&v252[8];
          v200 = v254;
          if (*&v252[8] && atomic_fetch_add(*&v252[8], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(&v251);
          }

          *v252 = 0;
          v253 = 0uLL;
          *&v252[16] = 0;
          if (v251.i32[1] >= 1)
          {
            v112 = 0;
            v113 = v255;
            do
            {
              *(v113 + v112++) = 0;
            }

            while (v112 < v251.i32[1]);
          }

          *&v252[8] = 0;
          if (v256)
          {
            v114 = v256 == &v257;
          }

          else
          {
            v114 = 1;
          }

          if (!v114)
          {
            free(v256);
          }

          v251.i64[0] = v103;
          cv::mixChannels(__p, 1, &v196, 1, &v251, 1);
        }

        if (v260 != v197)
        {
          cv::_OutputArray::_OutputArray(&v251, &v259);
          cv::Mat::convertTo(&v196, &v251, v259.i8[0] & 7, 1.0, 0.0);
        }

        if (v189)
        {
          cv::_InputArray::_InputArray(&v251, &v259);
          cv::_OutputArray::_OutputArray(&v241, &v214);
          memset(v195, 0, sizeof(v195));
          cv::copyMakeBorder(&v251);
        }

        cv::_InputArray::_InputArray(&v251, v277);
        cv::_OutputArray::_OutputArray(&v241, v277);
        cv::dft(&v251, &v241, 0);
        v115 = v103 * v190;
        if (!v191)
        {
          v115 = 0;
        }

        v241.i32[0] = 0;
        v241.i32[1] = v115;
        v242 = __PAIR64__(v190, v51);
        cv::Mat::Mat(&v251, v281, &v241);
        cv::_InputArray::_InputArray(&v241, v277);
        cv::_InputArray::_InputArray(v195, &v251);
        cv::_OutputArray::_OutputArray(v194, v277);
        cv::mulSpectrums(&v241, v195, v194, 0, 1);
        cv::_InputArray::_InputArray(&v241, v277);
        cv::_OutputArray::_OutputArray(v195, v277);
        cv::dft(&v241, v195, 3);
        *&v195[0] = 0;
        *(&v195[0] + 1) = __PAIR64__(v185.u32[0], v185.u32[1]);
        cv::Mat::Mat(&v241, v277, v195);
        if (v244)
        {
          atomic_fetch_add(v244, 1u);
        }

        if (v198 && atomic_fetch_add(v198, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v196);
        }

        v197 = 0;
        v199 = 0uLL;
        *(&v198 + 1) = 0;
        if (v196.i64[0] <= 0)
        {
          *&v198 = 0;
          v196.i32[0] = v241.i32[0];
        }

        else
        {
          v116 = 0;
          v117 = v201;
          do
          {
            *&v117[4 * v116++] = 0;
          }

          while (v116 < v196.i32[1]);
          *&v198 = 0;
          v196.i32[0] = v241.i32[0];
          if (v196.i32[1] > 2)
          {
LABEL_225:
            cv::Mat::copySize(&v196, &v241);
            goto LABEL_226;
          }
        }

        if (v241.i32[1] > 2)
        {
          goto LABEL_225;
        }

        v196.i32[1] = v241.i32[1];
        v196.i64[1] = v242;
        v118 = v248;
        v119 = v202;
        *v202 = *v248;
        v119[1] = v118[1];
LABEL_226:
        v197 = v243;
        v199 = v245;
        v198 = v244;
        v200 = v246;
        if (v244 && atomic_fetch_add(v244, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v241);
        }

        v243 = 0;
        v245 = 0uLL;
        *(&v244 + 1) = 0;
        if (v241.i32[1] >= 1)
        {
          v120 = 0;
          v121 = v247;
          do
          {
            *(v121 + v120++) = 0;
          }

          while (v120 < v241.i32[1]);
        }

        *&v244 = 0;
        if (v248)
        {
          v122 = v248 == &v249;
        }

        else
        {
          v122 = 1;
        }

        if (!v122)
        {
          free(v248);
        }

        if ((v8 & 0xFF8) != 0)
        {
          if (v36 != v192)
          {
            v242 = v185;
            v243 = v238;
            *&v244 = 0;
            v247 = &v242;
            v248 = &v249;
            v241.i32[1] = 2;
            v241.i32[0] = v36 | 0x42FF4000;
            v249 = v185.i32[1] << v169;
            v250 = v180;
            v246 = 0;
            *(&v245 + 1) = v238 + v182;
            *(&v244 + 1) = v238;
            *&v245 = v238 + v182;
            cv::_OutputArray::_OutputArray(v195, &v241);
            cv::Mat::convertTo(&v196, v195, v36, 1.0, a8);
            if (v244)
            {
              atomic_fetch_add(v244, 1u);
            }

            if (v198 && atomic_fetch_add(v198, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v196);
            }

            v197 = 0;
            v199 = 0uLL;
            *(&v198 + 1) = 0;
            if (v196.i64[0] <= 0)
            {
              *&v198 = 0;
              v196.i32[0] = v241.i32[0];
            }

            else
            {
              v123 = 0;
              v124 = v201;
              do
              {
                *&v124[4 * v123++] = 0;
              }

              while (v123 < v196.i32[1]);
              *&v198 = 0;
              v196.i32[0] = v241.i32[0];
              if (v196.i32[1] > 2)
              {
LABEL_265:
                cv::Mat::copySize(&v196, &v241);
                goto LABEL_266;
              }
            }

            if (v241.i32[1] > 2)
            {
              goto LABEL_265;
            }

            v196.i32[1] = v241.i32[1];
            v196.i64[1] = v242;
            v127 = v248;
            v128 = v202;
            *v202 = *v248;
            v128[1] = v127[1];
LABEL_266:
            v197 = v243;
            v199 = v245;
            v198 = v244;
            v200 = v246;
            if (v244 && atomic_fetch_add(v244, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v241);
            }

            v243 = 0;
            v245 = 0uLL;
            *(&v244 + 1) = 0;
            if (v241.i32[1] >= 1)
            {
              v129 = 0;
              v130 = v247;
              do
              {
                *(v130 + v129++) = 0;
              }

              while (v129 < v241.i32[1]);
            }

            *&v244 = 0;
            if (v248)
            {
              v131 = v248 == &v249;
            }

            else
            {
              v131 = 1;
            }

            if (!v131)
            {
              free(v248);
            }
          }

          v241.i32[0] = 0;
          v241.i32[1] = v103;
          cv::mixChannels(&v196, 1, &v204, 1, &v241, 1);
          goto LABEL_294;
        }

        if (v103)
        {
          if (v36 != v192)
          {
            v242 = v185;
            v243 = v238;
            *&v244 = 0;
            v247 = &v242;
            v248 = &v249;
            v241.i32[1] = 2;
            v241.i32[0] = v36 | 0x42FF4000;
            v249 = v185.i32[1] << v169;
            v250 = v180;
            v246 = 0;
            *(&v245 + 1) = v238 + v182;
            *(&v244 + 1) = v238;
            *&v245 = v238 + v182;
            cv::_OutputArray::_OutputArray(v195, &v241);
            cv::Mat::convertTo(&v196, v195, v36, 1.0, 0.0);
            if (v244)
            {
              atomic_fetch_add(v244, 1u);
            }

            if (v198 && atomic_fetch_add(v198, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v196);
            }

            v197 = 0;
            v199 = 0uLL;
            *(&v198 + 1) = 0;
            if (v196.i64[0] <= 0)
            {
              *&v198 = 0;
              v196.i32[0] = v241.i32[0];
            }

            else
            {
              v125 = 0;
              v126 = v201;
              do
              {
                *&v126[4 * v125++] = 0;
              }

              while (v125 < v196.i32[1]);
              *&v198 = 0;
              v196.i32[0] = v241.i32[0];
              if (v196.i32[1] > 2)
              {
LABEL_281:
                cv::Mat::copySize(&v196, &v241);
                goto LABEL_282;
              }
            }

            if (v241.i32[1] > 2)
            {
              goto LABEL_281;
            }

            v196.i32[1] = v241.i32[1];
            v196.i64[1] = v242;
            v132 = v248;
            v133 = v202;
            *v202 = *v248;
            v133[1] = v132[1];
LABEL_282:
            v197 = v243;
            v199 = v245;
            v198 = v244;
            v200 = v246;
            if (v244 && atomic_fetch_add(v244, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v241);
            }

            v243 = 0;
            v245 = 0uLL;
            *(&v244 + 1) = 0;
            if (v241.i32[1] >= 1)
            {
              v134 = 0;
              v135 = v247;
              do
              {
                *(v135 + v134++) = 0;
              }

              while (v134 < v241.i32[1]);
            }

            *&v244 = 0;
            if (v248)
            {
              v136 = v248 == &v249;
            }

            else
            {
              v136 = 1;
            }

            if (!v136)
            {
              free(v248);
            }
          }

          cv::_InputArray::_InputArray(&v241, &v196);
          cv::_InputArray::_InputArray(v195, &v204);
          v137 = cv::_OutputArray::_OutputArray(v194, &v204);
          v138 = cv::noArray(v137);
          cv::add(&v241, v195, v194, v138, 0xFFFFFFFFLL);
          goto LABEL_294;
        }

        cv::_OutputArray::_OutputArray(&v241, &v204);
        cv::Mat::convertTo(&v196, &v241, v36, 1.0, a8);
LABEL_294:
        if (*&v252[8] && atomic_fetch_add(*&v252[8], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v251);
        }

        *v252 = 0;
        v253 = 0uLL;
        *&v252[16] = 0;
        if (v251.i32[1] >= 1)
        {
          v139 = 0;
          v140 = v255;
          do
          {
            *(v140 + v139++) = 0;
          }

          while (v139 < v251.i32[1]);
        }

        *&v252[8] = 0;
        if (v256)
        {
          v141 = v256 == &v257;
        }

        else
        {
          v141 = 1;
        }

        if (!v141)
        {
          free(v256);
        }

        if (v198 && atomic_fetch_add(v198, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v196);
        }

        v197 = 0;
        v199 = 0uLL;
        *(&v198 + 1) = 0;
        if (v196.i32[1] >= 1)
        {
          v142 = 0;
          v143 = v201;
          do
          {
            *&v143[4 * v142++] = 0;
          }

          while (v142 < v196.i32[1]);
        }

        *&v198 = 0;
        if (v202)
        {
          v144 = v202 == v203;
        }

        else
        {
          v144 = 1;
        }

        if (!v144)
        {
          free(v202);
        }

        v75 = v103++ == v193;
      }

      while (!v75);
      if (*(&v205 + 1) && atomic_fetch_add(*(&v205 + 1), 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v204);
      }

      *&v205 = 0;
      v207 = 0;
      v208 = 0;
      v206 = 0;
      this = v174;
      if (v204.i32[1] >= 1)
      {
        v145 = 0;
        v146 = v209;
        do
        {
          *(v146 + 4 * v145++) = 0;
        }

        while (v145 < v204.i32[1]);
      }

      *(&v205 + 1) = 0;
      if (v210)
      {
        v147 = v210 == &v211;
      }

      else
      {
        v147 = 1;
      }

      if (!v147)
      {
        free(v210);
      }

      if (v261 && atomic_fetch_add(v261, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v259);
      }

      v260 = 0;
      v262 = 0uLL;
      *(&v261 + 1) = 0;
      if (v259.i32[1] >= 1)
      {
        v148 = 0;
        v149 = v264;
        do
        {
          *&v149[4 * v148++] = 0;
        }

        while (v148 < v259.i32[1]);
      }

      *&v261 = 0;
      if (v265)
      {
        v150 = v265 == &v266;
      }

      else
      {
        v150 = 1;
      }

      if (!v150)
      {
        free(v265);
      }

      if (v216 && atomic_fetch_add(v216, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v214);
      }

      v215 = 0;
      v217 = 0uLL;
      *(&v216 + 1) = 0;
      if (v214.i32[1] >= 1)
      {
        v151 = 0;
        v152 = v219;
        do
        {
          *(v152 + 4 * v151++) = 0;
        }

        while (v151 < v214.i32[1]);
      }

      *&v216 = 0;
      if (v220)
      {
        v153 = v220 == v221;
      }

      else
      {
        v153 = 1;
      }

      if (!v153)
      {
        free(v220);
      }

      if (v224 && atomic_fetch_add(v224, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(__p);
      }

      v223 = 0;
      v225 = 0uLL;
      *(&v224 + 1) = 0;
      if (SHIDWORD(__p[0]) >= 1)
      {
        v154 = 0;
        v155 = v227;
        do
        {
          *(v155 + 4 * v154++) = 0;
        }

        while (v154 < SHIDWORD(__p[0]));
      }

      *&v224 = 0;
      if (v228)
      {
        v156 = v228 == v229;
      }

      else
      {
        v156 = 1;
      }

      if (!v156)
      {
        free(v228);
      }

      ++v96;
    }

    while (v176 + 1 != v171);
  }

  if (v270 && atomic_fetch_add(v270, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v268);
  }

  v269 = 0;
  v271 = 0uLL;
  *(&v270 + 1) = 0;
  if (SHIDWORD(v268[0]) >= 1)
  {
    v157 = 0;
    v158 = v273;
    do
    {
      *(v158 + v157++) = 0;
    }

    while (v157 < SHIDWORD(v268[0]));
  }

  *&v270 = 0;
  if (v274)
  {
    v159 = v274 == &v275;
  }

  else
  {
    v159 = 1;
  }

  if (!v159)
  {
    free(v274);
  }

  if (*(&v277[1] + 1) && atomic_fetch_add(*(&v277[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v277);
  }

  *&v277[1] = 0;
  memset(&v277[2], 0, 24);
  if (SDWORD1(v277[0]) >= 1)
  {
    v160 = 0;
    v161 = v278;
    do
    {
      *&v161[4 * v160++] = 0;
    }

    while (v160 < SDWORD1(v277[0]));
  }

  *(&v277[1] + 1) = 0;
  if (v279)
  {
    v162 = v279 == v280;
  }

  else
  {
    v162 = 1;
  }

  if (!v162)
  {
    free(v279);
  }

  if (*&v281[6] && atomic_fetch_add(*&v281[6], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v281);
  }

  *&v281[4] = 0;
  memset(&v281[8], 0, 24);
  if (v281[1] >= 1)
  {
    v163 = 0;
    v164 = v282;
    do
    {
      v164[v163++] = 0;
    }

    while (v163 < v281[1]);
  }

  *&v281[6] = 0;
  if (v283)
  {
    v165 = v283 == v284;
  }

  else
  {
    v165 = 1;
  }

  if (!v165)
  {
    free(v283);
  }

  if (v232 && atomic_fetch_add(v232, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v230);
  }

  v231 = 0;
  v233 = 0uLL;
  *(&v232 + 1) = 0;
  if (v230[1] >= 1)
  {
    v166 = 0;
    v167 = v235;
    do
    {
      v167[v166++] = 0;
    }

    while (v166 < v230[1]);
  }

  *&v232 = 0;
  if (v236)
  {
    v168 = v236 == v237;
  }

  else
  {
    v168 = 1;
  }

  if (!v168)
  {
    free(v236);
  }

  if (v238)
  {
    v239 = v238;
    operator delete(v238);
  }
}

void sub_22D2394E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  cv::Exception::~Exception((v10 - 256));
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (STACK[0x348] && atomic_fetch_add(STACK[0x348], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&STACK[0x330]);
  }

  STACK[0x340] = 0;
  STACK[0x358] = 0;
  STACK[0x360] = 0;
  STACK[0x350] = 0;
  if (SLODWORD(STACK[0x334]) >= 1)
  {
    v12 = 0;
    v13 = STACK[0x370];
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < SLODWORD(STACK[0x334]));
  }

  STACK[0x348] = 0;
  v14 = STACK[0x378];
  if (STACK[0x378])
  {
    v15 = v14 == a10;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v14);
  }

  v16 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void cv::getRowSumFilter(cv *this, const char *a2)
{
  if (((a2 ^ this) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v11, "CV_MAT_CN(sumType) == CV_MAT_CN(srcType)");
    std::string::basic_string[abi:ne200100]<0>(&v10, "getRowSumFilter");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
    cv::Exception::Exception(v12, -215, &v11, &v10, &__p, 619);
    cv::error(v12, v5);
  }

  v6 = a2 & 7;
  v7 = this & 7;
  if ((this & 7) == 0 && v6 == 4)
  {
    operator new();
  }

  if ((this & 7) == 0 && v6 == 6)
  {
    operator new();
  }

  if (v7 == 2 && v6 == 4)
  {
    operator new();
  }

  if (v7 == 2 && v6 == 6)
  {
    operator new();
  }

  if (v7 == 3 && v6 == 4)
  {
    operator new();
  }

  if (v7 == 4 && v6 == 4)
  {
    operator new();
  }

  if (v7 == 3 && v6 == 6)
  {
    operator new();
  }

  if (v7 == 5 && v6 == 6)
  {
    operator new();
  }

  if (v7 == 6 && v6 == 6)
  {
    operator new();
  }

  cv::format(&v11, this, a2);
  std::string::basic_string[abi:ne200100]<0>(&v10, "getRowSumFilter");
  std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
  cv::Exception::Exception(v12, -213, &v11, &v10, &__p, 645);
  cv::error(v12, v8);
}

void sub_22D239FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::getColumnSumFilter(cv *this, const char *a3)
{
  if (((a3 ^ this) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "CV_MAT_CN(sumType) == CV_MAT_CN(dstType)");
    std::string::basic_string[abi:ne200100]<0>(&v11, "getColumnSumFilter");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
    cv::Exception::Exception(v13, -215, &v12, &v11, &__p, 655);
    cv::error(v13, v6);
  }

  v7 = this & 7;
  v8 = a3 & 7;
  if (v7 == 4 && (a3 & 7) == 0)
  {
    operator new();
  }

  if (v7 == 6 && (a3 & 7) == 0)
  {
    operator new();
  }

  if (v7 == 4 && v8 == 2)
  {
    operator new();
  }

  if (v7 == 6 && v8 == 2)
  {
    operator new();
  }

  if (v7 == 4 && v8 == 3)
  {
    operator new();
  }

  if (v7 == 6 && v8 == 3)
  {
    operator new();
  }

  if (v7 == 4 && v8 == 4)
  {
    operator new();
  }

  if (v7 == 4 && v8 == 5)
  {
    operator new();
  }

  if (v7 == 6 && v8 == 5)
  {
    operator new();
  }

  if (v7 == 4 && v8 == 6)
  {
    operator new();
  }

  if (v7 == 6 && v8 == 6)
  {
    operator new();
  }

  cv::format(&v12, this, a3);
  std::string::basic_string[abi:ne200100]<0>(&v11, "getColumnSumFilter");
  std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
  cv::Exception::Exception(v13, -213, &v12, &v11, &__p, 685);
  cv::error(v13, v9);
}

void sub_22D23A5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::createBoxFilter(cv *this, const char *a2, int *a3, int *a4, int a5)
{
  if ((this & 7u) > 4 || a5 && ((this & 7) != 2 ? (v6 = 0x10000) : (v6 = 0x8000), (this & 7) != 0 ? (v7 = v6) : (v7 = 0x800000), a3[1] * *a3 > v7))
  {
    v8 = 6;
  }

  else
  {
    v8 = 4;
  }

  cv::getRowSumFilter(this, (v8 | this & 0xFF8u));
}

void sub_22D23A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  cv::Ptr<cv::BaseFilter>::~Ptr(va);
  cv::Ptr<cv::BaseColumnFilter>::~Ptr(va1);
  cv::Ptr<cv::BaseRowFilter>::~Ptr(va2);
  _Unwind_Resume(a1);
}

void cv::boxFilter(void (***a1)(uint64_t *__return_ptr), uint64_t a2, int a3, _DWORD *a4, uint64_t *a5, int a6, char a7)
{
  (**a1)(&v17);
  v13 = v17;
  if (a3 >= 0)
  {
    v13 = a3;
  }

  v16[0] = vrev64_s32(*v20);
  (*(*a2 + 128))(a2, v16, v17 & 0xFF8 | v13 & 7, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v16, a2, 0xFFFFFFFFLL);
  if ((a7 & 0x10) != 0 && a6)
  {
    if (v18 == 1)
    {
      a4[1] = 1;
    }

    if (v19 == 1)
    {
      *a4 = 1;
    }
  }

  *&v14 = *a4;
  v15 = *a5;
  cv::createBoxFilter((v17 & 0xFFF), (v16[0] & 0xFFF), &v14, &v15, a6);
}

void sub_22D23AC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  cv::Ptr<cv::FilterEngine>::~Ptr(&a13);
  cv::Mat::~Mat(&a15);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,unsigned char>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055BF0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055BF0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,unsigned char>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v36, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v35, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v37, -215, &v36, &v35, &__p, 254);
        cv::error(v37, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = v25[v31] + *(v13 + v31);
          v33 = v32 & ~(v32 >> 31);
          if (v33 >= 255)
          {
            LOBYTE(v33) = -1;
          }

          *(a3 + v31) = v33;
          *(v13 + v31) = v32 - v26[v31];
          ++v31;
        }

        while (a6 != v31);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        v30 = v29 & ~(v29 >> 31);
        if (v30 >= 255)
        {
          LOBYTE(v30) = -1;
        }

        *(a3 + v27) = v30;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,unsigned short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055C38;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055C38;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,unsigned short>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v36, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v35, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v37, -215, &v36, &v35, &__p, 531);
        cv::error(v37, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = v25[v31] + *(v13 + v31);
          v33 = v32 & ~(v32 >> 31);
          if (v33 >= 0xFFFF)
          {
            LOWORD(v33) = -1;
          }

          *(a3 + 2 * v31) = v33;
          *(v13 + v31) = v32 - v26[v31];
          ++v31;
        }

        while (a6 != v31);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        v30 = v29 & ~(v29 >> 31);
        if (v30 >= 0xFFFF)
        {
          LOWORD(v30) = -1;
        }

        *(a3 + 2 * v27) = v30;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055C80;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055C80;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,short>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v35, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v34, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v36, -215, &v35, &v34, &__p, 394);
        cv::error(v36, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v30 = 0;
        do
        {
          v31 = v25[v30] + *(v13 + v30);
          if (v31 <= -32768)
          {
            v32 = -32768;
          }

          else
          {
            v32 = v25[v30] + *(v13 + v30);
          }

          if (v32 >= 0x7FFF)
          {
            LOWORD(v32) = 0x7FFF;
          }

          *(a3 + 2 * v30) = v32;
          *(v13 + v30) = v31 - v26[v30];
          ++v30;
        }

        while (a6 != v30);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        if (v29 <= -32768)
        {
          LODWORD(v29) = -32768;
        }

        if (v29 >= 0x7FFF)
        {
          LOWORD(v29) = 0x7FFF;
        }

        *(a3 + 2 * v27) = v29;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23B744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::RowSum<unsigned char,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned char,int>::operator()(uint64_t result, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(result + 8) * a5;
    v7 = (a4 - 1) * a5;
    v8 = &a3[a5];
    do
    {
      if (v6 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v10 += *(a2 + v9);
          v9 += a5;
        }

        while (v6 > v9);
      }

      *a3 = v10;
      if (v7 >= 1)
      {
        for (i = 0; i < v7; i += a5)
        {
          result = *(a2 + i);
          v10 = v10 - result + *(a2 + v6 + i);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<unsigned char,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned char,double>::operator()(uint64_t result, uint64_t a2, double *a3, int a4, int a5, double a6, double a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = *(result + 8) * a5;
    v9 = (a4 - 1) * a5;
    v10 = &a3[a5];
    do
    {
      if (v8 < 1)
      {
        v12 = 0.0;
      }

      else
      {
        v11 = 0;
        v12 = 0.0;
        do
        {
          LOBYTE(a7) = *(a2 + v11);
          a7 = *&a7;
          v12 = v12 + a7;
          v11 += a5;
        }

        while (v8 > v11);
      }

      *a3 = v12;
      if (v9 >= 1)
      {
        for (i = 0; i < v9; i += a5)
        {
          a7 = (*(a2 + v8 + i) - *(a2 + i));
          v12 = v12 + a7;
          v10[i] = v12;
        }
      }

      ++v7;
      ++a2;
      ++a3;
      ++v10;
    }

    while (v7 != a5);
  }

  return result;
}

void cv::RowSum<unsigned short,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned short,int>::operator()(uint64_t result, unsigned __int16 *a2, int *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 = v10 - a2[v12] + a2[v7 + v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<unsigned short,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned short,double>::operator()(uint64_t result, _WORD *a2, double *a3, int a4, int a5, double a6, double a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = (a4 - 1) * a5;
    v9 = *(result + 8) * a5;
    v10 = &a3[a5];
    do
    {
      if (v9 < 1)
      {
        v12 = 0.0;
      }

      else
      {
        v11 = 0;
        v12 = 0.0;
        v13 = a2;
        do
        {
          LOWORD(a7) = *v13;
          a7 = *&a7;
          v12 = v12 + a7;
          v13 += a5;
          v11 += a5;
        }

        while (v9 > v11);
      }

      *a3 = v12;
      if (v8 >= 1)
      {
        for (i = 0; i < v8; i += a5)
        {
          result = a2[i];
          a7 = (a2[v9 + i] - result);
          v12 = v12 + a7;
          v10[i] = v12;
        }
      }

      ++v7;
      ++a2;
      ++a3;
      ++v10;
    }

    while (v7 != a5);
  }

  return result;
}

void cv::RowSum<short,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<short,int>::operator()(uint64_t result, __int16 *a2, int *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 = v10 - a2[v12] + a2[v7 + v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<int,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<int,int>::operator()(uint64_t result, unsigned int *a2, _DWORD *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 += a2[v7 + v12] - a2[v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<short,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<short,double>::operator()(uint64_t result, __int16 *a2, double *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          result = a2[i];
          v10 = v10 + (a2[v7 + i] - result);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<float,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<float,double>::operator()(uint64_t result, float *a2, double *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          v10 = v10 + (a2[v7 + i] - a2[i]);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<double,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<double,double>::operator()(uint64_t result, double *a2, double *a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = (a4 - 1) * a5;
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          v10 = v10 + a2[v7 + i] - a2[i];
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::ColumnSum<double,unsigned char>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F08;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F08;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,unsigned char>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v68, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v67, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v69, -215, &v68, &v67, &__p, 145);
        cv::error(v69, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v19 = *(a1 + 8);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (!((v21 < 0) ^ v20 | (v21 == 0)))
  {
    v22 = 0;
    do
    {
      v23 = *v10;
      if (a6 >= 2)
      {
        v25 = 0;
        v26 = v13;
        v27 = *v10;
        do
        {
          v28 = *v27++;
          *v26 = vaddq_f64(*v26, v28);
          ++v26;
          v25 += 2;
        }

        while (v25 <= a6 - 2);
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }

      if (v24 < a6)
      {
        v29 = &v13->f64[v24];
        v30 = a6 - v24;
        v31 = &v23->f64[v24];
        do
        {
          v32 = *v31++;
          *v29 = v32 + *v29;
          ++v29;
          --v30;
        }

        while (v30);
      }

      ++v22;
      ++v10;
    }

    while (v22 != v21);
    *(a1 + 24) = v21;
  }

LABEL_21:
  if (a5)
  {
    v33 = a6 - 2;
    do
    {
      v34 = *v10;
      v35 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v37 = 0;
          v52 = v13;
          v53 = *v10;
          v54 = v10[1 - *(a1 + 8)];
          do
          {
            v55 = (a3 + v37);
            v56 = *v53++;
            v57 = vaddq_f64(*v52, v56);
            v58 = rint(v57.f64[0]);
            v59 = v58 & ~(v58 >> 31);
            if (v59 >= 255)
            {
              LOBYTE(v59) = -1;
            }

            *v55 = v59;
            v60 = rint(v57.f64[1]);
            v61 = v60 & ~(v60 >> 31);
            if (v61 >= 255)
            {
              LOBYTE(v61) = -1;
            }

            v55[1] = v61;
            v62 = *v54++;
            *v52++ = vsubq_f64(v57, v62);
            v37 += 2;
          }

          while (v37 <= v33);
          v37 = v37;
        }

        else
        {
          v37 = 0;
        }

        if (v37 < a6)
        {
          do
          {
            v63 = v13->f64[v37] + v34->f64[v37];
            v64 = rint(v63);
            v65 = v64 & ~(v64 >> 31);
            if (v65 >= 255)
            {
              LOBYTE(v65) = -1;
            }

            *(a3 + v37) = v65;
            v13->f64[v37] = v63 - v35->f64[v37];
            ++v37;
          }

          while (a6 != v37);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v38 = v13;
          v39 = *v10;
          v40 = v10[1 - *(a1 + 8)];
          do
          {
            v41 = (a3 + v36);
            v42 = *v39++;
            v43 = vaddq_f64(*v38, v42);
            v44 = rint(v15 * v43.f64[0]);
            v45 = v44 & ~(v44 >> 31);
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            *v41 = v45;
            v46 = rint(vmuld_lane_f64(v15, v43, 1));
            v47 = v46 & ~(v46 >> 31);
            if (v47 >= 255)
            {
              LOBYTE(v47) = -1;
            }

            v41[1] = v47;
            v48 = *v40++;
            *v38++ = vsubq_f64(v43, v48);
            v36 += 2;
          }

          while (v36 <= v33);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v49 = v13->f64[v36] + v34->f64[v36];
            v50 = rint(v15 * v49);
            v51 = v50 & ~(v50 >> 31);
            if (v51 >= 255)
            {
              LOBYTE(v51) = -1;
            }

            *(a3 + v36) = v51;
            v13->f64[v36] = v49 - v35->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23C4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,unsigned short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,unsigned short>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v67, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v66, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v68, -215, &v67, &v66, &__p, 145);
        cv::error(v68, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v51 = v13;
          v52 = *v10;
          v53 = v10[v31];
          do
          {
            v54 = (a3 + 2 * v36);
            v55 = *v52++;
            v56 = vaddq_f64(*v51, v55);
            v57 = rint(v56.f64[0]);
            v58 = v57 & ~(v57 >> 31);
            if (v58 >= 0xFFFF)
            {
              LOWORD(v58) = -1;
            }

            v59 = rint(v56.f64[1]);
            *v54 = v58;
            v60 = v59 & ~(v59 >> 31);
            if (v60 >= 0xFFFF)
            {
              LOWORD(v60) = -1;
            }

            v61 = *v53++;
            v54[1] = v60;
            *v51++ = vsubq_f64(v56, v61);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v62 = v13->f64[v36] + v33->f64[v36];
            v63 = rint(v62);
            v64 = v63 & ~(v63 >> 31);
            if (v64 >= 0xFFFF)
            {
              LOWORD(v64) = -1;
            }

            *(a3 + 2 * v36) = v64;
            v13->f64[v36] = v62 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = v10[v31];
          do
          {
            v40 = (a3 + 2 * v35);
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            v43 = rint(v15 * v42.f64[0]);
            v44 = v43 & ~(v43 >> 31);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            v45 = rint(vmuld_lane_f64(v15, v42, 1));
            *v40 = v44;
            v46 = v45 & ~(v45 >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = *v39++;
            v40[1] = v46;
            *v37++ = vsubq_f64(v42, v47);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v48 = v13->f64[v35] + v33->f64[v35];
            v49 = rint(v15 * v48);
            v50 = v49 & ~(v49 >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            *(a3 + 2 * v35) = v50;
            v13->f64[v35] = v48 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23C9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,short>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v61, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v60, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v62, -215, &v61, &v60, &__p, 145);
        cv::error(v62, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v48 = v13;
          v49 = *v10;
          v50 = v10[v31];
          do
          {
            v51 = (a3 + 2 * v36);
            v52 = *v49++;
            v53 = vaddq_f64(*v48, v52);
            v54 = rint(v53.f64[0]);
            if (v54 <= -32768)
            {
              LODWORD(v54) = -32768;
            }

            if (v54 >= 0x7FFF)
            {
              LOWORD(v54) = 0x7FFF;
            }

            *v51 = v54;
            v55 = rint(v53.f64[1]);
            if (v55 <= -32768)
            {
              LODWORD(v55) = -32768;
            }

            if (v55 >= 0x7FFF)
            {
              LOWORD(v55) = 0x7FFF;
            }

            v56 = *v50++;
            v51[1] = v55;
            *v48++ = vsubq_f64(v53, v56);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v57 = v13->f64[v36] + v33->f64[v36];
            v58 = rint(v57);
            if (v58 <= -32768)
            {
              LODWORD(v58) = -32768;
            }

            if (v58 >= 0x7FFF)
            {
              LOWORD(v58) = 0x7FFF;
            }

            *(a3 + 2 * v36) = v58;
            v13->f64[v36] = v57 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = v10[v31];
          do
          {
            v40 = (a3 + 2 * v35);
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            v43 = rint(v15 * v42.f64[0]);
            if (v43 <= -32768)
            {
              LODWORD(v43) = -32768;
            }

            if (v43 >= 0x7FFF)
            {
              LOWORD(v43) = 0x7FFF;
            }

            *v40 = v43;
            v44 = rint(vmuld_lane_f64(v15, v42, 1));
            if (v44 <= -32768)
            {
              LODWORD(v44) = -32768;
            }

            if (v44 >= 0x7FFF)
            {
              LOWORD(v44) = 0x7FFF;
            }

            v45 = *v39++;
            v40[1] = v44;
            *v37++ = vsubq_f64(v42, v45);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v46 = v13->f64[v35] + v33->f64[v35];
            v47 = rint(v15 * v46);
            if (v47 <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            *(a3 + 2 * v35) = v47;
            v13->f64[v35] = v46 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23CF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,int>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055FE0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055FE0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,int>::operator()(uint64_t a1, int32x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v49, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v48, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v50, -215, &v49, &v48, &__p, 145);
        cv::error(v50, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_20;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_20:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v44 = 0;
          v35 = 0;
          do
          {
            v45 = vadd_s32(v32[v44], v13[v44]);
            *(a3 + v44 * 8) = v45;
            v13[v44] = vsub_s32(v45, v33[v44]);
            v35 += 2;
            ++v44;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v46 = v32->i32[v35] + v13->i32[v35];
            *(a3 + 4 * v35) = v46;
            v13->i32[v35] = v46 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v34 = 0;
          v36 = v13;
          v37 = *v10;
          v38 = v10[1 - *(a1 + 8)];
          do
          {
            v39 = (a3 + 4 * v34);
            v40 = *v37++;
            v41 = vadd_s32(v40, *v36);
            *v39 = rint(v15 * v41.i32[0]);
            v39[1] = rint(v15 * v41.i32[1]);
            v42 = *v38++;
            *v36++ = vsub_s32(v41, v42);
            v34 += 2;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v43 = v32->i32[v34] + v13->i32[v34];
            *(a3 + 4 * v34) = rint(v15 * v43);
            v13->i32[v34] = v43 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,float>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056028;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056028;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,float>::operator()(uint64_t a1, int32x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v47, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v46, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v48, -215, &v47, &v46, &__p, 145);
        cv::error(v48, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }

    end = v12[-1].__end_;
  }

  else
  {
    end = v12[-1].__end_;
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  v15 = *&end;
  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_21:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v41 = 0;
          v35 = 0;
          do
          {
            v42 = vadd_s32(v32[v41], v13[v41]);
            *(a3 + v41 * 8) = vcvt_f32_s32(v42);
            v13[v41] = vsub_s32(v42, v33[v41]);
            v35 += 2;
            ++v41;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v43 = v32->i32[v35] + v13->i32[v35];
            *(a3 + 4 * v35) = v43;
            v13->i32[v35] = v43 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v34 = 0;
          do
          {
            v37 = vadd_s32(v32[v36], v13[v36]);
            v38.i64[0] = v37.i32[0];
            v38.i64[1] = v37.i32[1];
            *(a3 + v36 * 8) = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_s64(v38), v15));
            v13[v36] = vsub_s32(v37, v33[v36]);
            v34 += 2;
            ++v36;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v39 = v32->i32[v34] + v13->i32[v34];
            v40 = v15 * v39;
            *(a3 + 4 * v34) = v40;
            v13->i32[v34] = v39 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23D864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,float>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056070;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056070;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,float>::operator()(uint64_t a1, float64x2_t **a2, float32x2_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  v55 = v15;
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v58, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v57, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v59, -215, &v58, &v57, &__p, 145);
        cv::error(v59, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    v15 = v55;
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
    v15 = v55;
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v46 = v13;
          v47 = *v10;
          v48 = a3;
          v49 = v10[v31];
          do
          {
            v50 = *v47++;
            v51 = vaddq_f64(*v46, v50);
            *v48++ = vcvt_f32_f64(v51);
            v52 = *v49++;
            *v46++ = vsubq_f64(v51, v52);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v53 = v13->f64[v36] + v33->f64[v36];
            v54 = v53;
            a3->f32[v36] = v54;
            v13->f64[v36] = v53 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = a3;
          v40 = v10[v31];
          do
          {
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            *v39++ = vcvt_f32_f64(vmulq_n_f64(v42, v15));
            v43 = *v40++;
            *v37++ = vsubq_f64(v42, v43);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v44 = v13->f64[v35] + v33->f64[v35];
            v45 = v15 * v44;
            a3->f32[v35] = v45;
            v13->f64[v35] = v44 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 = (a3 + a4);
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23DCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,double>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_2840560B8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_2840560B8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,double>::operator()(uint64_t a1, int32x2_t **a2, float64x2_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v57, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v56, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v58, -215, &v57, &v56, &__p, 145);
        cv::error(v58, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }

    end = v12[-1].__end_;
  }

  else
  {
    end = v12[-1].__end_;
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  v15 = *&end;
  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_21:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v45 = v13;
          v46 = *v10;
          v47 = a3;
          v48 = v10[1 - *(a1 + 8)];
          do
          {
            v49 = *v46++;
            v50 = vadd_s32(v49, *v45);
            v51.i64[0] = v50.i32[0];
            v51.i64[1] = v50.i32[1];
            *v47++ = vcvtq_f64_s64(v51);
            v52 = *v48++;
            *v45++ = vsub_s32(v50, v52);
            v35 += 2;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v53 = v32->i32[v35] + v13->i32[v35];
            a3->f64[v35] = v53;
            v13->i32[v35] = v53 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v34 = 0;
          v36 = v13;
          v37 = *v10;
          v38 = a3;
          v39 = v10[1 - *(a1 + 8)];
          do
          {
            v40 = *v37++;
            v41 = vadd_s32(v40, *v36);
            v42.i64[0] = v41.i32[0];
            v42.i64[1] = v41.i32[1];
            *v38++ = vmulq_n_f64(vcvtq_f64_s64(v42), v15);
            v43 = *v39++;
            *v36++ = vsub_s32(v41, v43);
            v34 += 2;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v44 = v32->i32[v34] + v13->i32[v34];
            a3->f64[v34] = v15 * v44;
            v13->i32[v34] = v44 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 = (a3 + a4);
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23E1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,double>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,double>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  v43 = v15;
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v46, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(&v45, "operator()");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v47, -215, &v46, &v45, &__p, 145);
        cv::error(v47, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    v15 = v43;
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
    v15 = v43;
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v40 = 0;
          v36 = 0;
          do
          {
            v41 = vaddq_f64(v13[v40], v33[v40]);
            *(a3 + v40 * 16) = v41;
            v13[v40] = vsubq_f64(v41, v34[v40]);
            v36 += 2;
            ++v40;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v42 = v13->f64[v36] + v33->f64[v36];
            *(a3 + 8 * v36) = v42;
            v13->f64[v36] = v42 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v37 = 0;
          v35 = 0;
          do
          {
            v38 = vaddq_f64(v13[v37], v33[v37]);
            *(a3 + v37 * 16) = vmulq_n_f64(v38, v15);
            v13[v37] = vsubq_f64(v38, v34[v37]);
            v35 += 2;
            ++v37;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v39 = v13->f64[v35] + v33->f64[v35];
            *(a3 + 8 * v35) = v15 * v39;
            v13->f64[v35] = v39 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23E614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::copyMakeBorder(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v177[515] = *MEMORY[0x277D85DE8];
  (**v1)(&v165);
  if ((v11 | v13 | v9 | v7) < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v176, "top >= 0 && bottom >= 0 && left >= 0 && right >= 0");
    std::string::basic_string[abi:ne200100]<0>(&v155, "copyMakeBorder");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/utils.cpp");
    cv::Exception::Exception(&v151, -215, &v176, &v155, &__p, 208);
    cv::error(&v151, v16);
  }

  v17 = v165;
  if ((v5 & 0x10) == 0 && (v165 & 0x8000) != 0)
  {
    v145 = v5;
    v18 = v3;
    v151 = 0;
    *&v176 = 0;
    cv::Mat::locateROI(&v165, &v151, &v176);
    if (SDWORD1(v176) >= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = DWORD1(v176);
    }

    if (HIDWORD(v151) - (DWORD1(v176) + v166) >= v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = HIDWORD(v151) - (DWORD1(v176) + v166);
    }

    if (v176 >= v9)
    {
      v21 = v9;
    }

    else
    {
      v21 = v176;
    }

    if (v151 - (v176 + v167) >= v7)
    {
      v22 = v7;
    }

    else
    {
      v22 = v151 - (v176 + v167);
    }

    cv::Mat::adjustROI(&v165, v19, v20, v21, v22);
    v13 -= v19;
    v9 -= v21;
    v11 -= v20;
    v7 -= v22;
    v17 = v165;
    v3 = v18;
    v5 = v145;
  }

  (*(*v15 + 136))(v15, (v13 + v11 + v166), (v9 + v7 + v167), v17 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**v15)(&v155, v15, 0xFFFFFFFFLL);
  if (!v13 && !v9 && !v11 && !v7)
  {
    if (__src != v156 || v175 != v163)
    {
      cv::_OutputArray::_OutputArray(&v151, &v155);
      cv::Mat::copyTo(&v165, &v151);
    }

    goto LABEL_123;
  }

  v139 = v5 & 0xFFFFFFEF;
  v130 = v13;
  if ((v5 & 0xFFFFFFEF) != 0)
  {
    v135 = v175;
    v23 = __src;
    v24 = v173[1];
    v25 = v163;
    v129 = v156;
    v26 = v161[1];
    if (SHIDWORD(v165) < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = *(v174 + 2 * HIDWORD(v165) - 2);
    }

    v137 = *v173;
    v126 = *v161;
    v134 = ((__src | v156 | v27 | v175) | v163) & 3;
    if ((((__src | v156 | v27 | v175) | v163) & 3) != 0)
    {
      v32 = v27;
    }

    else
    {
      v32 = (v27 / 4);
    }

    v33 = v32 * (v26 - v24);
    v151 = &v153;
    v152 = 1032;
    if (v33 >= 0x409)
    {
      v152 = v33;
      operator new[]();
    }

    v127 = v26;
    if (v9 >= 1)
    {
      v34 = 0;
      v35 = &v154;
      __n = vdupq_n_s64(4uLL);
      v146 = vdupq_n_s64(v32 - 1);
      do
      {
        v36 = cv::borderInterpolate((v34 - v9), v24, v139);
        if (v32 >= 1)
        {
          v37 = v36 * v32;
          v38 = (v32 + 3) & 0xFFFFFFFC;
          v39 = v35;
          v40 = xmmword_22D297DE0;
          v41 = xmmword_22D297DD0;
          do
          {
            v42 = vmovn_s64(vcgeq_u64(v146, v40));
            if (vuzp1_s16(v42, *v40.i8).u8[0])
            {
              *(v39 - 2) = v37;
            }

            if (vuzp1_s16(v42, *&v40).i8[2])
            {
              *(v39 - 1) = v37 + 1;
            }

            if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v146, *&v41))).i32[1])
            {
              *v39 = v37 + 2;
              *(v39 + 1) = v37 + 3;
            }

            v41 = vaddq_s64(v41, __n);
            v40 = vaddq_s64(v40, __n);
            v37 += 4;
            v39 += 2;
            v38 -= 4;
          }

          while (v38);
        }

        ++v34;
        v35 = (v35 + 4 * v32);
      }

      while (v34 != v9);
    }

    v43 = (v127 - (v24 + v9));
    if (v43 >= 1)
    {
      v44 = 0;
      v147 = vdupq_n_s64(v32 - 1);
      v45 = &v153 + 4 * v32 * v9 + 8;
      __na = vdupq_n_s64(4uLL);
      do
      {
        v46 = cv::borderInterpolate((v24 + v44), v24, v139);
        if (v32 >= 1)
        {
          v47 = v46 * v32;
          v48 = (v32 + 3) & 0xFFFFFFFC;
          v49 = v45;
          v50 = xmmword_22D297DE0;
          v51 = xmmword_22D297DD0;
          do
          {
            v52 = vmovn_s64(vcgeq_u64(v147, v50));
            if (vuzp1_s16(v52, *v50.i8).u8[0])
            {
              *(v49 - 2) = v47;
            }

            if (vuzp1_s16(v52, *&v50).i8[2])
            {
              *(v49 - 1) = v47 + 1;
            }

            if (vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v147, *&v51))).i32[1])
            {
              *v49 = v47 + 2;
              v49[1] = v47 + 3;
            }

            v51 = vaddq_s64(v51, __na);
            v50 = vaddq_s64(v50, __na);
            v47 += 4;
            v49 += 4;
            v48 -= 4;
          }

          while (v48);
        }

        ++v44;
        v45 += 4 * v32;
      }

      while (v44 != v43);
    }

    v128 = v32 * v127;
    v53 = v25 * v130;
    v132 = &v129[v53];
    v131 = 2 * (v134 == 0);
    if (v137 >= 1)
    {
      v54 = 0;
      v55 = (v32 * v9);
      v56 = &v132[v55 << v131];
      v57 = v32 * v24;
      __nb = (v32 * v24) << v131;
      v58 = (v32 * v43);
      v59 = v53 + (v55 << v131);
      v60 = &v129[v59 - v55];
      v61 = &v129[v59 + v57];
      v62 = &v129[v59 - 4 * v55];
      v63 = &v129[4 * v57 + v59];
      do
      {
        if (v56 != v23)
        {
          memcpy(v56, v23, __nb);
        }

        if (v134)
        {
          v64 = &v153;
          v65 = v60;
          v66 = v55;
          if (v55 >= 1)
          {
            do
            {
              v67 = *v64;
              v64 = (v64 + 4);
              *v65++ = v23[v67];
              --v66;
            }

            while (v66);
          }

          v68 = &v153 + v55;
          v69 = v61;
          v70 = v58;
          if (v58 >= 1)
          {
            do
            {
              v71 = *v68++;
              *v69++ = v23[v71];
              --v70;
            }

            while (v70);
          }
        }

        else
        {
          v72 = &v153;
          v73 = v62;
          v74 = v55;
          if (v55 >= 1)
          {
            do
            {
              v75 = *v72;
              v72 = (v72 + 4);
              *v73 = *&v23[4 * v75];
              v73 += 4;
              --v74;
            }

            while (v74);
          }

          v76 = &v153 + v55;
          v77 = v63;
          v78 = v58;
          if (v58 >= 1)
          {
            do
            {
              v79 = *v76++;
              *v77 = *&v23[4 * v79];
              v77 += 4;
              --v78;
            }

            while (v78);
          }
        }

        ++v54;
        v56 += v25;
        v23 += v135;
        v60 += v25;
        v61 += v25;
        v62 += v25;
        v63 += v25;
      }

      while (v54 != v137);
    }

    v80 = v128 << v131;
    if (v130 >= 1)
    {
      v81 = v129;
      v82 = -v130;
      v83 = v130;
      do
      {
        v84 = cv::borderInterpolate(v82, v137, v139);
        memcpy(v81, &v132[v25 * v84], v80);
        v81 += v25;
        v82 = (v82 + 1);
        --v83;
      }

      while (v83);
    }

    v85 = (v126 - (v137 + v130));
    if (v85 >= 1)
    {
      v86 = &v129[v25 * (v130 + v137)];
      v87 = v137;
      do
      {
        v88 = cv::borderInterpolate(v87, v137, v139);
        memcpy(v86, &v132[v25 * v88], v80);
        v86 += v25;
        v87 = (v87 + 1);
        --v85;
      }

      while (v85);
    }

    if (v151 != &v153 && v151 != 0)
    {
LABEL_122:
      MEMORY[0x2318CB180]();
    }
  }

  else
  {
    v28 = (v165 >> 3) & 0x1FF;
    v29 = v28 + 1;
    v151 = &v153;
    v152 = 520;
    if (v28 < 4)
    {
      v31 = v28 + 1;
    }

    else
    {
      v30 = *v3;
      if (*v3 != v3[1] || v30 != v3[2] || v30 != v3[3])
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "value[0] == value[1] && value[0] == value[2] && value[0] == value[3]");
        std::string::basic_string[abi:ne200100]<0>(&v150, "copyMakeBorder");
        std::string::basic_string[abi:ne200100]<0>(&v149, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/utils.cpp");
        cv::Exception::Exception(&v176, -215, &__p, &v150, &v149, 248);
        cv::error(&v176, v90);
      }

      v31 = 1;
    }

    v91.n128_f64[0] = cv::scalarToRawData(v3, &v153, (v165 & 7 | (8 * v31)) - 8, v29);
    v92 = v161[1];
    if (SHIDWORD(v165) < 1)
    {
      v93 = 0;
    }

    else
    {
      v93 = *(v174 + 2 * HIDWORD(v165) - 2);
    }

    v94 = __src;
    v95 = v175;
    v96 = v173[1];
    v148 = *v173;
    v97 = v163;
    v136 = *v161;
    v98 = v151;
    *&v176 = v177;
    *(&v176 + 1) = 4104;
    v140 = v93 * v92;
    __nc = v156;
    if ((v93 * v92) >= 0x1009)
    {
      *(&v176 + 1) = v140;
      operator new[]();
    }

    if (v92 >= 1)
    {
      v99 = 0;
      v100 = v177;
      do
      {
        if (v93 >= 1)
        {
          v101 = v98;
          v102 = v100;
          v103 = v93;
          do
          {
            v104 = *v101;
            v101 = (v101 + 1);
            *v102++ = v104;
            --v103;
          }

          while (v103);
        }

        ++v99;
        v100 = (v100 + v93);
      }

      while (v99 != v92);
    }

    v133 = v148 + v13;
    v138 = v13;
    if (v148 >= 1)
    {
      v105 = v92 - (v96 + v9);
      v106 = v93 * v9;
      v107 = &__nc[v97 * v13];
      v108 = v106;
      v109 = v93 * v96;
      v110 = v93 * v105;
      v111 = v109;
      v112 = v108 + v109;
      v113 = v148;
      do
      {
        if (v94 != &v107[v108])
        {
          memcpy(&v107[v108], v94, v111);
        }

        memcpy(v107, v177, v108);
        memcpy(&v107[v112], v177, v110);
        v94 += v95;
        v107 += v97;
        --v113;
      }

      while (v113);
    }

    v114 = (v136 - v133);
    if (v130 >= 1)
    {
      v115 = __nc;
      v116 = v130;
      do
      {
        memcpy(v115, v177, v140);
        v115 += v97;
        --v116;
      }

      while (v116);
    }

    if (v114 >= 1)
    {
      v117 = &__nc[v97 * (v138 + v148)];
      do
      {
        memcpy(v117, v177, v140);
        v117 += v97;
        --v114;
      }

      while (v114);
    }

    if (v176 != v177 && v176 != 0)
    {
      MEMORY[0x2318CB180](v91);
    }

    if (v151 != &v153 && v151 != 0)
    {
      goto LABEL_122;
    }
  }

LABEL_123:
  if (v157 && atomic_fetch_add(v157, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v155);
  }

  v156 = 0;
  v158 = 0;
  v160 = 0;
  v159 = 0;
  if (SDWORD1(v155) >= 1)
  {
    v120 = 0;
    v121 = v161;
    do
    {
      v121[v120++] = 0;
    }

    while (v120 < SDWORD1(v155));
  }

  v157 = 0;
  if (v162)
  {
    v122 = v162 == &v163;
  }

  else
  {
    v122 = 1;
  }

  if (!v122)
  {
    free(v162);
  }

  if (v169 && atomic_fetch_add(v169, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v165);
  }

  __src = 0;
  v170 = 0;
  v172 = 0;
  v171 = 0;
  if (SHIDWORD(v165) >= 1)
  {
    v123 = 0;
    v124 = v173;
    do
    {
      v124[v123++] = 0;
    }

    while (v123 < SHIDWORD(v165));
  }

  v169 = 0;
  if (v174)
  {
    v125 = v174 == &v175;
  }

  else
  {
    v125 = 1;
  }

  if (!v125)
  {
    free(v174);
  }
}

void sub_22D23F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  cv::Exception::~Exception(&STACK[0x1208]);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (SLOBYTE(STACK[0x11A7]) < 0)
  {
    operator delete(STACK[0x1190]);
  }

  if (a41 != a22)
  {
    if (a41)
    {
      MEMORY[0x2318CB180]();
    }
  }

  cv::Mat::~Mat(&STACK[0x1130]);
  cv::Mat::~Mat(&STACK[0x11A8]);
  _Unwind_Resume(a1);
}

void cv::getDerivKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, int a5, char a6, char a7, int a8)
{
  if (a5 <= 0)
  {
    cv::getScharrKernels(this, a2, a3, a4, a6, a7);
  }

  else
  {
    cv::getSobelKernels(this, a2, a3, a4, a5, a6, a7);
  }
}

void cv::getScharrKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, unsigned __int8 a5, int a6)
{
  v32 = a3;
  v65 = *MEMORY[0x277D85DE8];
  if ((a6 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "ktype == CV_32F || ktype == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(v37, "getScharrKernels");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v8 = cv::Exception::Exception(&v53, -215, v45, v37, &__p, 136);
    cv::error(v8, v9);
  }

  (*(*this + 136))(this, 3, 1, a6, 0xFFFFFFFFLL, 1, 0);
  (*(*a2 + 136))(a2, 3, 1, a6, 0xFFFFFFFFLL, 1, 0);
  (**this)(v45, this, 0xFFFFFFFFLL);
  (**a2)(v37, a2, 0xFFFFFFFFLL);
  if ((a4 | v32) < 0 || a4 + v32 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "dx >= 0 && dy >= 0 && dx+dy == 1");
    std::string::basic_string[abi:ne200100]<0>(&v64, "getScharrKernels");
    std::string::basic_string[abi:ne200100]<0>(&v36, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v10 = cv::Exception::Exception(&v53, -215, &__p, &v64, &v36, 142);
    cv::error(v10, v11);
  }

  v12 = 1;
  do
  {
    v13 = v12;
    if (v12)
    {
      v14 = v45;
    }

    else
    {
      v14 = v37;
    }

    if (v12)
    {
      v15 = v32;
    }

    else
    {
      v15 = a4;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_18;
      }

      v16 = 0xFFFFFFFFLL;
      v17 = 1;
    }

    else
    {
      v17 = 3;
      v16 = 0xA00000003;
    }

    *&v64 = v16;
    DWORD2(v64) = v17;
LABEL_18:
    if (v13)
    {
      v18 = v45;
    }

    else
    {
      v18 = v37;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v54[0] = v20;
    v54[1] = v19;
    v55 = &v64;
    v56 = 0;
    v61 = v54;
    v62 = v63;
    v53 = 0x242FF4004;
    v63[0] = 4 * v19;
    v63[1] = 4;
    v59 = &v64 + 4 * v19 * v20;
    v60 = 0;
    v57 = &v64;
    v58 = v59;
    cv::_OutputArray::_OutputArray(&__p, v14);
    v21 = 0.03125;
    if (((v15 != 1) & a5) == 0)
    {
      v21 = 1.0;
    }

    cv::Mat::convertTo(&v53, &__p, a6, v21, 0.0);
    if (v56 && atomic_fetch_add(v56, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v53);
    }

    v55 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    if (SHIDWORD(v53) >= 1)
    {
      v22 = 0;
      v23 = v61;
      do
      {
        v23[v22++] = 0;
      }

      while (v22 < SHIDWORD(v53));
    }

    v56 = 0;
    if (v62)
    {
      v24 = v62 == v63;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      free(v62);
    }

    v12 = 0;
  }

  while ((v13 & 1) != 0);
  if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v37);
  }

  v37[2] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (SHIDWORD(v37[0]) >= 1)
  {
    v25 = 0;
    v26 = v42;
    do
    {
      *(v26 + 4 * v25++) = 0;
    }

    while (v25 < SHIDWORD(v37[0]));
  }

  v38 = 0;
  if (v43)
  {
    v27 = v43 == &v44;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v43);
  }

  if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v45);
  }

  v45[2] = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (SHIDWORD(v45[0]) >= 1)
  {
    v28 = 0;
    v29 = v50;
    do
    {
      *(v29 + 4 * v28++) = 0;
    }

    while (v28 < SHIDWORD(v45[0]));
  }

  v46 = 0;
  if (v51)
  {
    v30 = v51 == &v52;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v51);
  }
}

void sub_22D23FA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::getSobelKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, int a5, int a6, int a7)
{
  v59 = a3;
  if (a3 > 0 && a5 == 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = a5;
  }

  if (a4 > 0 && a5 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = a5;
  }

  v61 = v11;
  v62 = v10;
  if ((a7 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v75, "ktype == CV_32F || ktype == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(v67, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v12 = cv::Exception::Exception(&v83, -215, v75, v67, &__p, 171);
    cv::error(v12, v13);
  }

  (*(*this + 136))(this, v10, 1, a7, 0xFFFFFFFFLL, 1, 0);
  (*(*a2 + 136))(a2, v61, 1, a7, 0xFFFFFFFFLL, 1, 0);
  (**this)(v75, this, 0xFFFFFFFFLL);
  (**a2)(v67, a2, 0xFFFFFFFFLL);
  if (a5 > 31 || (a5 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "The kernel size must be odd and not larger than 31");
    std::string::basic_string[abi:ne200100]<0>(v66, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(&v65, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v14 = cv::Exception::Exception(&v83, -211, &__p, v66, &v65, 179);
    cv::error(v14, v15);
  }

  v16 = v62;
  if (v62 <= v61)
  {
    v16 = v61;
  }

  std::vector<int>::vector[abi:ne200100](v66, v16 + 1);
  if ((a4 | v59) < 0 || (a4 + v59 < 0) ^ __OFADD__(a4, v59) | (a4 + v59 == 0))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "dx >= 0 && dy >= 0 && dx+dy > 0");
    std::string::basic_string[abi:ne200100]<0>(&v65, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(&v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v17 = cv::Exception::Exception(&v83, -215, &__p, &v65, &v64, 182);
    cv::error(v17, v18);
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v19)
    {
      v21 = v75;
    }

    else
    {
      v21 = v67;
    }

    if (v19)
    {
      v22 = v59;
    }

    else
    {
      v22 = a4;
    }

    if (v19)
    {
      v23 = v62;
    }

    else
    {
      v23 = v61;
    }

    if (v23 <= v22)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ksize > order");
      std::string::basic_string[abi:ne200100]<0>(&v65, "getSobelKernels");
      std::string::basic_string[abi:ne200100]<0>(&v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
      v24 = cv::Exception::Exception(&v83, -215, &__p, &v65, &v64, 190);
      cv::error(v24, v25);
    }

    v26 = v66[0];
    v27 = v66[0];
    if (v23 == 1)
    {
      goto LABEL_51;
    }

    if (v23 == 3)
    {
      v28 = 0x200000001;
      if (v22)
      {
        if (v22 == 1)
        {
          v28 = 0xFFFFFFFFLL;
        }

        else
        {
          v28 = 0xFFFFFFFE00000001;
        }
      }

      v27 = v66[0] + 8;
      *v66[0] = v28;
LABEL_51:
      *v27 = 1;
      goto LABEL_52;
    }

    *v66[0] = 1;
    if (v23 >= 1)
    {
      bzero(v26 + 1, 4 * v23);
    }

    v29 = v23 + ~v22;
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (v23 >= 1)
        {
          v31 = *v26;
          v32 = (v23 + 1) - 1;
          v33 = v26;
          v34 = v26;
          do
          {
            v35 = v34[1];
            ++v34;
            v36 = *v33;
            *v33 = v31;
            v31 = v36 + v35;
            v33 = v34;
            --v32;
          }

          while (v32);
        }
      }
    }

    if (v22 >= 1)
    {
      for (j = 0; j != v22; ++j)
      {
        if (v23 >= 1)
        {
          v38 = -*v26;
          v39 = (v23 + 1) - 1;
          v40 = v26;
          v41 = v26;
          do
          {
            v42 = v41[1];
            ++v41;
            v43 = *v40;
            *v40 = v38;
            v38 = v43 - v42;
            v40 = v41;
            --v39;
          }

          while (v39);
        }
      }
    }

LABEL_52:
    if (v20)
    {
      v44 = v75;
    }

    else
    {
      v44 = v67;
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v84[0] = v46;
    v84[1] = v45;
    v85 = v26;
    v86 = 0;
    v91 = v84;
    v92 = v93;
    v83 = 0x242FF4004;
    v93[0] = 4 * v45;
    v93[1] = 4;
    v89 = v26 + 4 * v45 * v46;
    v90 = 0;
    v87 = v26;
    v88 = v89;
    v47 = 1.0;
    if (a6)
    {
      v47 = 1.0 / (1 << (v23 + ~v22));
    }

    cv::_OutputArray::_OutputArray(&__p, v21);
    cv::Mat::convertTo(&v83, &__p, a7, v47, 0.0);
    if (v86 && atomic_fetch_add(v86, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v83);
    }

    v85 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    if (SHIDWORD(v83) >= 1)
    {
      v48 = 0;
      v49 = v91;
      do
      {
        v49[v48++] = 0;
      }

      while (v48 < SHIDWORD(v83));
    }

    v86 = 0;
    if (v92)
    {
      v50 = v92 == v93;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      free(v92);
    }

    v19 = 0;
  }

  while ((v20 & 1) != 0);
  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v68 && atomic_fetch_add(v68, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v67);
  }

  v67[2] = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  if (SHIDWORD(v67[0]) >= 1)
  {
    v51 = 0;
    v52 = v72;
    do
    {
      *(v52 + 4 * v51++) = 0;
    }

    while (v51 < SHIDWORD(v67[0]));
  }

  v68 = 0;
  if (v73)
  {
    v53 = v73 == &v74;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    free(v73);
  }

  if (v76 && atomic_fetch_add(v76, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v75);
  }

  v75[2] = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  if (SHIDWORD(v75[0]) >= 1)
  {
    v54 = 0;
    v55 = v80;
    do
    {
      *(v55 + 4 * v54++) = 0;
    }

    while (v54 < SHIDWORD(v75[0]));
  }

  v76 = 0;
  if (v81)
  {
    v56 = v81 == &v82;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    free(v81);
  }
}

void sub_22D2402E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  cv::Exception::~Exception((v57 - 240));
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a31)
  {
    operator delete(a31);
  }

  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat(&a52);
  _Unwind_Resume(a1);
}

void cv::Sobel(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, const cv::_OutputArray *a4, int a5, int a6, unsigned int a7, double a8, double a9)
{
  v15 = a3;
  (**this)(v33);
  if (v15 < 0)
  {
    v15 = v33[0] & 7;
  }

  v32[0] = vrev64_s32(*v33[8]);
  (*(*a2 + 128))(a2, v32, v33[0] & 0xFF8 | v15 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v32, a2, 0xFFFFFFFFLL);
  v17 = v33[0] & 7;
  v29 = &v28[2];
  v30 = v31;
  if (v15 > v17)
  {
    v17 = v15;
  }

  v31[0] = 0;
  v31[1] = 0;
  if (v17 <= 5)
  {
    v18 = 5;
  }

  else
  {
    v18 = v17;
  }

  v28[0] = 1124007936;
  memset(&v28[1], 0, 60);
  v25 = &v24[2];
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  v24[0] = 1124007936;
  memset(&v24[1], 0, 60);
  cv::_OutputArray::_OutputArray(v34, v28);
  cv::_OutputArray::_OutputArray(v23, v24);
  cv::getDerivKernels(v34, v23, a4, a5, a6, 0, v18, v19);
  if (a8 != 1.0)
  {
    if (a4)
    {
      cv::_OutputArray::_OutputArray(v34, v24);
      cv::Mat::convertTo(v24, v34, -1, a8, 0.0);
    }

    else
    {
      cv::_OutputArray::_OutputArray(v34, v28);
      cv::Mat::convertTo(v28, v34, -1, a8, 0.0);
    }
  }

  cv::_InputArray::_InputArray(v34, v33);
  cv::_OutputArray::_OutputArray(v23, v32);
  cv::_InputArray::_InputArray(v22, v28);
  cv::_InputArray::_InputArray(v21, v24);
  v20 = -1;
  cv::sepFilter2D(v34, v23, v15, v22, v21, &v20, a7, a9);
}

void sub_22D2408B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  cv::Mat::~Mat(va);
  cv::Mat::~Mat((v46 - 224));
  _Unwind_Resume(a1);
}

void cv::Scharr(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, const cv::_OutputArray *a4, int a5, unsigned int a6, double a7, double a8)
{
  v13 = a3;
  (**this)(v30);
  if (v13 < 0)
  {
    v13 = v30[0] & 7;
  }

  v29[0] = vrev64_s32(*v30[8]);
  (*(*a2 + 128))(a2, v29, v30[0] & 0xFF8 | v13 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v29, a2, 0xFFFFFFFFLL);
  v15 = v30[0] & 7;
  v26 = &v25[2];
  v27 = v28;
  if (v13 > v15)
  {
    v15 = v13;
  }

  v28[0] = 0;
  v28[1] = 0;
  if (v15 <= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v15;
  }

  v25[0] = 1124007936;
  memset(&v25[1], 0, 60);
  v22 = &v21[2];
  v23 = v24;
  v24[0] = 0;
  v24[1] = 0;
  v21[0] = 1124007936;
  memset(&v21[1], 0, 60);
  cv::_OutputArray::_OutputArray(v31, v25);
  cv::_OutputArray::_OutputArray(v20, v21);
  cv::getScharrKernels(v31, v20, a4, a5, 0, v16);
  if (a7 != 1.0)
  {
    if (a4)
    {
      cv::_OutputArray::_OutputArray(v31, v21);
      cv::Mat::convertTo(v21, v31, -1, a7, 0.0);
    }

    else
    {
      cv::_OutputArray::_OutputArray(v31, v25);
      cv::Mat::convertTo(v25, v31, -1, a7, 0.0);
    }
  }

  cv::_InputArray::_InputArray(v31, v30);
  cv::_OutputArray::_OutputArray(v20, v29);
  cv::_InputArray::_InputArray(v19, v25);
  cv::_InputArray::_InputArray(v18, v21);
  v17 = -1;
  cv::sepFilter2D(v31, v20, v13, v19, v18, &v17, a6, a8);
}

void sub_22D240D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  cv::Mat::~Mat(va);
  cv::Mat::~Mat((v46 - 208));
  _Unwind_Resume(a1);
}

void cv::Laplacian(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, int a4, char a5, double a6, double a7)
{
  v11 = a3;
  v57[3] = *MEMORY[0x277D85DE8];
  (**this)(v42);
  if (v11 < 0)
  {
    v11 = v42[0] & 7;
  }

  v34[0] = vrev64_s32(*v47);
  (*(*a2 + 128))(a2, v34, v42[0] & 0xFF8 | v11 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v34, a2, 0xFFFFFFFFLL);
  if ((a4 | 2) != 3)
  {
    v22 = v42[0];
    v31 = v30 + 8;
    v32 = &v33;
    if ((v42[0] & 7) < 6)
    {
      v23 = 5;
    }

    else
    {
      v23 = 6;
    }

    v24 = (v42[0] & 7) == 0 && a4 < 6;
    v33 = 0uLL;
    LODWORD(v30[0]) = 1124007936;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = v23;
    }

    memset(v30 + 4, 0, 32);
    if (v11 <= (v42[0] & 7))
    {
      v26 = v42[0] & 7;
    }

    else
    {
      v26 = v11;
    }

    *(&v30[2] + 4) = 0uLL;
    if (v26 <= 5)
    {
      v27 = 5;
    }

    else
    {
      v27 = v26;
    }

    v30[3] = 0uLL;
    v55 = v54 + 8;
    v56 = v57;
    v57[0] = 0;
    v57[1] = 0;
    LODWORD(v54[0]) = 1124007936;
    memset(v54 + 4, 0, 60);
    cv::_OutputArray::_OutputArray(&v29, v30);
    cv::_OutputArray::_OutputArray(&v53, v54);
    cv::getSobelKernels(&v29, &v53, 2, 0, a4, 0, v27);
    v28 = v42[0];
    cv::_InputArray::_InputArray(&v29, v30);
    cv::_InputArray::_InputArray(&v53, v54);
    v50 = -1;
    *v51 = 0u;
    v52 = 0u;
    cv::createSeparableLinearFilter(v28 & 0xFFF, v25 | v22 & 0xFF8, &v29, &v53, &v50);
  }

  v55 = 0x4000000000000000;
  v54[0] = xmmword_22D29BA20;
  v54[1] = unk_22D29BA30;
  v54[2] = xmmword_22D29BA40;
  v54[3] = unk_22D29BA50;
  *(v30 + 4) = 0x300000002;
  *&v30[1] = v54 + 36 * (a4 == 3);
  *(&v30[1] + 1) = 0;
  v31 = v30 + 8;
  v32 = &v33;
  HIDWORD(v30[0]) = 3;
  LODWORD(v30[0]) = 1124024325;
  v33 = xmmword_22D29BA10;
  v30[3] = (*&v30[1] + 36);
  *&v30[2] = *&v30[1];
  *(&v30[2] + 1) = *&v30[1] + 36;
  if (a6 != 1.0)
  {
    cv::_OutputArray::_OutputArray(&v29, v30);
    cv::Mat::convertTo(v30, &v29, -1, a6, 0.0);
  }

  cv::_InputArray::_InputArray(&v29, v42);
  cv::_OutputArray::_OutputArray(&v53, v34);
  cv::_InputArray::_InputArray(v51, v30);
  v50 = -1;
  cv::filter2D(&v29, &v53, v11, v51, &v50, a5, a7);
  if (*(&v30[1] + 1) && atomic_fetch_add(*(&v30[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v30);
  }

  *&v30[1] = 0;
  memset(&v30[2], 0, 24);
  if (SDWORD1(v30[0]) >= 1)
  {
    v13 = 0;
    v14 = v31;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < SDWORD1(v30[0]));
  }

  *(&v30[1] + 1) = 0;
  if (v32)
  {
    v15 = v32 == &v33;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v32);
  }

  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v34);
  }

  v34[2] = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (SHIDWORD(v34[0]) >= 1)
  {
    v16 = 0;
    v17 = v39;
    do
    {
      *(v17 + 4 * v16++) = 0;
    }

    while (v16 < SHIDWORD(v34[0]));
  }

  v35 = 0;
  if (v40)
  {
    v18 = v40 == &v41;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    free(v40);
  }

  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v42);
  }

  v42[2] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (SHIDWORD(v42[0]) >= 1)
  {
    v19 = 0;
    v20 = v47;
    do
    {
      v20->i32[v19++] = 0;
    }

    while (v19 < SHIDWORD(v42[0]));
  }

  v43 = 0;
  if (v48)
  {
    v21 = v48 == &v49;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    free(v48);
  }
}