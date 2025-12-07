uint64_t (*sub_239F69D68(uint64_t (*result)(char *, float), void *a2, float a3))(char *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 += v21;
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F69F18(uint64_t (*result)(__int16 *, float), void *a2, float a3))(__int16 *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A0C8(uint64_t (*result)(int *, float), void *a2, float a3))(int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A264(uint64_t (*result)(unsigned int *, float), void *a2, float a3))(unsigned int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v25 = a2[1];
    v26 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v23 = v14;
    v24 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v21 = 0;
          do
          {
            v28 = *(a2[7] + 4 * v21);
            result = v5(&v28, a3);
            v10[v21++] = result;
          }

          while (v12 != v21);
        }
      }

      else
      {
        v27 = v6;
        v16 = v24;
        v17 = v10;
        v18 = v9;
        if (v24)
        {
          do
          {
            v19 = *v18++;
            v30 = v19;
            result = v5(&v30, a3);
            *v17++ = result;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v25;
        v20 = v23;
        v6 = v27;
        if (v26 < v25)
        {
          do
          {
            v29 = *(a2[7] + 4 * v20);
            result = v5(&v29, a3);
            v10[v20++] = result;
          }

          while (v15 != v20);
        }
      }

      v10 = (v10 + a2[2]);
      v22 = a2[5];
      v9 = (v9 + v22);
      v7 += v22;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A3F0(uint64_t (*result)(int *, float), void *a2, float a3))(int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    if (v8 >= v11)
    {
      v12 = a2[1];
    }

    else
    {
      v12 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v13 = a2[4];
    }

    else
    {
      v13 = a2[1];
    }

    v22 = v13;
    v23 = v12;
    v14 = 4 * v11;
    v15 = (v11 + v13 - v12);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + v20);
            result = v5(&v27, a3);
            v10[v20 / 4] = result;
            v20 += 4;
          }

          while (v14 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A584(uint64_t (*result)(char *, float), void *a2, float a3))(char *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    if (v8 >= v11)
    {
      v12 = a2[1];
    }

    else
    {
      v12 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v13 = a2[4];
    }

    else
    {
      v13 = a2[1];
    }

    v22 = v13;
    v23 = v12;
    v14 = 4 * v11;
    v15 = (v11 + v13 - v12);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + v20);
            result = v5(&v27, a3);
            v10[v20 / 4] = result;
            v20 += 4;
          }

          while (v14 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 += v21;
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A738(uint64_t (*result)(__int16 *, float), void *a2, float a3))(__int16 *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    if (v8 >= v11)
    {
      v12 = a2[1];
    }

    else
    {
      v12 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v13 = a2[4];
    }

    else
    {
      v13 = a2[1];
    }

    v22 = v13;
    v23 = v12;
    v14 = 4 * v11;
    v15 = (v11 + v13 - v12);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + v20);
            result = v5(&v27, a3);
            v10[v20 / 4] = result;
            v20 += 4;
          }

          while (v14 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6A8EC(uint64_t (*result)(int *, float), void *a2, float a3))(int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    if (v8 >= v11)
    {
      v12 = a2[1];
    }

    else
    {
      v12 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v13 = a2[4];
    }

    else
    {
      v13 = a2[1];
    }

    v22 = v13;
    v23 = v12;
    v14 = 4 * v11;
    v15 = (v11 + v13 - v12);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + v20);
            result = v5(&v27, a3);
            v10[v20 / 4] = result;
            v20 += 4;
          }

          while (v14 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v7 += v21;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6AA8C(uint64_t (*result)(unsigned int *, float), void *a2, float a3))(unsigned int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    if (v8 >= v11)
    {
      v12 = a2[1];
    }

    else
    {
      v12 = a2[4];
    }

    v25 = a2[1];
    v26 = a2[4];
    if (v11 >= v8)
    {
      v13 = a2[4];
    }

    else
    {
      v13 = a2[1];
    }

    v23 = v13;
    v24 = v12;
    v14 = 4 * v11;
    v15 = (v11 + v13 - v12);
    do
    {
      if (v7 >= a2[6])
      {
        if (v11)
        {
          v21 = 0;
          do
          {
            v28 = *(a2[7] + v21);
            result = v5(&v28, a3);
            v10[v21 / 4] = result;
            v21 += 4;
          }

          while (v14 != v21);
        }
      }

      else
      {
        v27 = v6;
        v16 = v24;
        v17 = v10;
        v18 = v9;
        if (v24)
        {
          do
          {
            v19 = *v18++;
            v30 = v19;
            result = v5(&v30, a3);
            *v17++ = result;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v25;
        v20 = v23;
        v6 = v27;
        if (v26 < v25)
        {
          do
          {
            v29 = *(a2[7] + 4 * v20);
            result = v5(&v29, a3);
            v10[v20++] = result;
          }

          while (v15 != v20);
        }
      }

      v10 = (v10 + a2[2]);
      v22 = a2[5];
      v9 = (v9 + v22);
      v7 += v22;
      ++v6;
    }

    while (v6 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6AD78(uint64_t (*result)(int *, float), void *a2, float a3))(int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v6 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v6 += v21;
      ++v7;
    }

    while (v7 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6AF18(uint64_t (*result)(char *, float), void *a2, float a3))(char *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v6 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 += v21;
      v6 += v21;
      ++v7;
    }

    while (v7 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6B0E8(uint64_t (*result)(__int16 *, float), void *a2, float a3))(__int16 *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v6 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v6 += v21;
      ++v7;
    }

    while (v7 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6B2B8(uint64_t (*result)(int *, float), void *a2, float a3))(int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v24 = a2[1];
    v25 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v22 = v14;
    v23 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v6 >= a2[6])
      {
        if (v11)
        {
          v20 = 0;
          do
          {
            v27 = *(a2[7] + 4 * v20);
            result = v5(&v27, a3);
            v10[v20++] = result;
          }

          while (v12 != v20);
        }
      }

      else
      {
        v26 = v6;
        v16 = v23;
        v17 = v10;
        v18 = v9;
        if (v23)
        {
          do
          {
            result = v5(v18, a3);
            *v17++ = result;
            ++v18;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v24;
        v19 = v22;
        v6 = v26;
        if (v25 < v24)
        {
          do
          {
            v28 = *(a2[7] + 4 * v19);
            result = v5(&v28, a3);
            v10[v19++] = result;
          }

          while (v15 != v19);
        }
      }

      v10 = (v10 + a2[2]);
      v21 = a2[5];
      v9 = (v9 + v21);
      v6 += v21;
      ++v7;
    }

    while (v7 < a2[8]);
  }

  return result;
}

uint64_t (*sub_239F6B464(uint64_t (*result)(unsigned int *, float), void *a2, float a3))(unsigned int *, float)
{
  if (a2[8])
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v9 = a2[3];
    v8 = a2[4];
    v10 = *a2;
    v11 = a2[1];
    v12 = v11;
    if (v8 >= v11)
    {
      v13 = a2[1];
    }

    else
    {
      v13 = a2[4];
    }

    v25 = a2[1];
    v26 = a2[4];
    if (v11 >= v8)
    {
      v14 = a2[4];
    }

    else
    {
      v14 = a2[1];
    }

    v23 = v14;
    v24 = v13;
    v15 = (v11 + v14 - v13);
    do
    {
      if (v6 >= a2[6])
      {
        if (v11)
        {
          v21 = 0;
          do
          {
            v28 = *(a2[7] + 4 * v21);
            result = v5(&v28, a3);
            v10[v21++] = result;
          }

          while (v12 != v21);
        }
      }

      else
      {
        v27 = v6;
        v16 = v24;
        v17 = v10;
        v18 = v9;
        if (v24)
        {
          do
          {
            v19 = *v18++;
            v30 = v19;
            result = v5(&v30, a3);
            *v17++ = result;
            --v16;
          }

          while (v16);
        }

        LOBYTE(v11) = v25;
        v20 = v23;
        v6 = v27;
        if (v26 < v25)
        {
          do
          {
            v29 = *(a2[7] + 4 * v20);
            result = v5(&v29, a3);
            v10[v20++] = result;
          }

          while (v15 != v20);
        }
      }

      v10 = (v10 + a2[2]);
      v22 = a2[5];
      v9 = (v9 + v22);
      v6 += v22;
      ++v7;
    }

    while (v7 < a2[8]);
  }

  return result;
}

uint64_t sub_239F6B868(uint64_t a1)
{
  if (a1 == 770)
  {
    v1 = 16;
  }

  else
  {
    v1 = 8;
  }

  if (a1 == 260)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 258)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 4)
  {
    v4 = 32;
  }

  else
  {
    v4 = 8;
  }

  if (a1 == 3)
  {
    v4 = 24;
  }

  if (a1 == 2)
  {
    v4 = 16;
  }

  if (a1 <= 257)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

id sub_239F6C144(void *a1, void *a2)
{
  v212 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  memset(&__str, 0, sizeof(__str));
  v5 = v3;
  v16 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  sub_239E552A0(&__str, v16);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v19 = p_str + size;
  if (size)
  {
    v20 = p_str;
    v21 = (p_str + size);
    do
    {
      v22 = v20;
      v23 = v20;
      while (1)
      {
        v24 = *v23++;
        if (v24 == 46)
        {
          break;
        }

        v22 = v23;
        if (v23 == v19)
        {
          v22 = v21;
          goto LABEL_16;
        }
      }

      v20 = (&v22->__r_.__value_.__l.__data_ + 1);
      v21 = v22;
    }

    while (v23 != v19);
  }

  else
  {
    v22 = p_str;
  }

LABEL_16:
  v25 = v22 - p_str;
  if (v22 == v19)
  {
    v26 = -1;
  }

  else
  {
    v26 = v25;
  }

  memset(&v208, 0, sizeof(v208));
  std::string::basic_string(&v208, &__str, v26 + 1, size, &v207);
  std::string::basic_string(&v207, &__str, 0, v26, &v210);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  __str = v207;
  if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v27, &__str, 4, *&v207.__r_.__value_.__l.__data_, v32, v33, v34, v28, v29, v30, v31);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v27, v207.__r_.__value_.__l.__data_, 4, *&v207.__r_.__value_.__l.__data_, v32, v33, v34, v28, v29, v30, v31);
  }
  v40 = ;
  if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v35, &v208, 4, v41, v42, v43, v44, v36, v37, v38, v39);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v35, v208.__r_.__value_.__l.__data_, 4, v41, v42, v43, v44, v36, v37, v38, v39);
  }
  v45 = ;
  if (objc_msgSend_characterAtIndex_(v3, v46, 0, v47, v52, v53, v54, v55, v48, v49, v50, v51) == 47)
  {
    v66 = objc_alloc(MEMORY[0x277CBEBC0]);
    v77 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v67, @"file://%@", v68, v73, v74, v75, v76, v69, v70, v71, v72, v3);
    v88 = objc_msgSend_initWithString_(v66, v78, v77, v79, v84, v85, v86, v87, v80, v81, v82, v83);

    if (v88)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  if (objc_msgSend_rangeOfString_(v3, v56, @":", v57, v62, v63, v64, v65, v58, v59, v60, v61) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v101 = objc_alloc(MEMORY[0x277CBEBC0]);
    v100 = objc_msgSend_initWithString_(v101, v102, v3, v103, v108, v109, v110, v111, v104, v105, v106, v107);
LABEL_34:
    v88 = v100;
    if (v100)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  if (v4)
  {
    v100 = objc_msgSend_URLForResource_withExtension_(v4, v89, v40, v45, v96, v97, v98, v99, v92, v93, v94, v95);
    goto LABEL_34;
  }

LABEL_35:
  v112 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v89, v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);
  v88 = objc_msgSend_URLForResource_withExtension_(v112, v113, v40, v45, v118, v119, v120, v121, v114, v115, v116, v117);

  if (!v88)
  {
    v133 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);
    v145 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v134, v135, v136, v141, v142, v143, v144, v137, v138, v139, v140);
    v157 = objc_msgSend_resourcePath(v145, v146, v147, v148, v153, v154, v155, v156, v149, v150, v151, v152);
    v167 = objc_msgSend_contentsOfDirectoryAtPath_error_(v133, v158, v157, 0, v163, v164, v165, v166, v159, v160, v161, v162);

    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v168 = v167;
    v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v203, v211, v173, v174, v175, v176, 16, v170, v171, v172);
    if (v88)
    {
      v202 = v133;
      v187 = *v204;
      while (2)
      {
        for (i = 0; i != v88; i = i + 1)
        {
          if (*v204 != v187)
          {
            objc_enumerationMutation(v168);
          }

          v189 = *(*(&v203 + 1) + 8 * i);
          if (objc_msgSend_hasPrefix_(v189, v177, v3, v178, v183, v184, v185, v186, v179, v180, v181, v182))
          {
            v133 = v202;
            v191 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v177, v190, v178, v183, v184, v185, v186, v179, v180, v181, v182);
            v88 = objc_msgSend_URLForResource_withExtension_(v191, v192, v189, 0, v197, v198, v199, v200, v193, v194, v195, v196);

            goto LABEL_46;
          }
        }

        v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v177, &v203, v211, v183, v184, v185, v186, 16, v180, v181, v182);
        if (v88)
        {
          continue;
        }

        break;
      }

      v133 = v202;
    }

LABEL_46:
  }

LABEL_47:

  if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v208.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v88;
}

void sub_239F6C558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_239F6CE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F6D1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_239F6DB60(void *a1, size_t a2, __n128 a3)
{
  v4 = a1;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v18 = objc_msgSend_bytes(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v19 = a3.n128_i32[1];
    v29 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v20, a3.n128_i32[1] * a2, v21, a3, v26, v27, v28, v22, v23, v24, v25);
    v30 = v29;
    v42 = objc_msgSend_mutableBytes(v30, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    if (a3.n128_i32[1] >= 1)
    {
      v43 = (v42 + a2 * (a3.n128_i32[1] - 1));
      do
      {
        memcpy(v43, v18, a2);
        v43 -= a2;
        v18 += a2;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t sub_239F6E2E4(float32x2_t *a1, float32x4_t a2)
{
  v2 = vabsq_f32(a2);
  if (v2.f32[0] < v2.f32[1] || v2.f32[0] < v2.f32[2])
  {
    v2.i32[0] = a2.i32[2];
    v4 = -a2.f32[0];
    if (a2.f32[2] > 0.0)
    {
      LODWORD(v5) = 5;
    }

    else
    {
      v4 = a2.f32[0];
      LODWORD(v5) = 4;
    }

    v6 = COERCE_DOUBLE(__PAIR64__(a2.u32[1], LODWORD(v4)));
    if (a2.f32[1] > 0.0)
    {
      v7 = 2;
    }

    else
    {
      v2.f32[0] = -a2.f32[2];
      v7 = 3;
    }

    a2.i32[1] = v2.i32[0];
    if (v2.f32[1] >= v2.f32[2])
    {
      v5 = v7;
    }

    else
    {
      v5 = v5;
    }

    if (v2.f32[1] >= v2.f32[2])
    {
      v2.f32[0] = v2.f32[1];
    }

    else
    {
      v2.f32[0] = v2.f32[2];
    }

    if (v2.f32[1] < v2.f32[2])
    {
      *a2.i64 = v6;
    }

    goto LABEL_26;
  }

  if (v2.f32[0] != 0.0)
  {
    v9 = a2.f32[2];
    v5 = a2.f32[0] <= 0.0;
    if (a2.f32[0] <= 0.0)
    {
      v9 = -a2.f32[2];
    }

    a2.f32[0] = v9;
LABEL_26:
    v8 = vadd_f32(vdiv_f32(vmul_f32(*a2.f32, 0x3F0000003F000000), vdup_lane_s32(*v2.f32, 0)), 0x3F0000003F000000);
    goto LABEL_27;
  }

  v5 = 0;
  v8 = 0;
LABEL_27:
  *a1 = v8;
  return v5;
}

float32x2_t directionForPixel(int a1, float a2, float64x2_t _Q1, float64x2_t a4)
{
  result = 0x3F80000000000000;
  if (SLODWORD(a2) >= 1)
  {
    v6 = *a4.f64;
    v7 = 2.0 / LODWORD(a2);
    v8 = HIDWORD(_Q1.f64[0]);
    _Q1.f64[0] = v7 * (SLODWORD(_Q1.f64[0]) + v6) + -1.0;
    a4.f64[0] = v7 * (v8 - v6) + -1.0;
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          __asm { FMOV            V0.2D, #-1.0 }

          _Q0.f64[0] = _Q1.f64[0];
          _Q1.f64[0] = -a4.f64[0];
          break;
        case 4:
          _Q0.f64[0] = -_Q1.f64[0];
          _Q0.f64[1] = a4.f64[0];
          __asm { FMOV            V1.2D, #1.0 }

          break;
        case 5:
          _Q1.f64[1] = a4.f64[0];
          _Q0 = _Q1;
          __asm { FMOV            V1.2D, #-1.0 }

          break;
        default:
          return result;
      }

      return vcvt_f32_f64(vmulq_n_f64(_Q0, 1.0 / sqrt(vaddvq_f64(vmulq_f64(_Q0, _Q0)) + vmulq_f64(_Q1, _Q1).f64[0])));
    }

    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          return result;
        }

        __asm { FMOV            V0.2D, #1.0 }

        _Q0.f64[0] = _Q1.f64[0];
        _Q1 = a4;
        return vcvt_f32_f64(vmulq_n_f64(_Q0, 1.0 / sqrt(vaddvq_f64(vmulq_f64(_Q0, _Q0)) + vmulq_f64(_Q1, _Q1).f64[0])));
      }

      _Q1.f64[0] = -_Q1.f64[0];
      __asm { FMOV            V0.2D, #-1.0 }
    }

    else
    {
      __asm { FMOV            V0.2D, #1.0 }
    }

    _Q0.f64[1] = a4.f64[0];
    return vcvt_f32_f64(vmulq_n_f64(_Q0, 1.0 / sqrt(vaddvq_f64(vmulq_f64(_Q0, _Q0)) + vmulq_f64(_Q1, _Q1).f64[0])));
  }

  return result;
}

float32x2_t equirectangularCoordinateForDirection(__n128 a1)
{
  v2 = a1.n128_f32[1];
  v3 = atan2f(a1.n128_f32[2], a1.n128_f32[0]);
  return vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(acosf(v2)), LODWORD(v3)), 0x3EA2F9833E22F983);
}

double sub_239F6E4F4(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  v14 = objc_msgSend_channelCount(a1, a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9);
  if (v14 > 2)
  {
    if (v14 == 3)
    {

      return sub_239F6E80C(a1, a2, a3, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }

    else
    {
      if (v14 != 4)
      {
        return 0.0;
      }

      return sub_239F6E910(a1, a2, a3, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    if (v14 != 1)
    {
      if (v14 == 2)
      {

        return sub_239F6E708(a1, a2, a3, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      }

      return 0.0;
    }

    return sub_239F6E604(a1, a2, a3, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

double sub_239F6E604(void *result, const char *a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (!a2)
  {
    return 0.0;
  }

  if (objc_msgSend_isCube(result, a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9))
  {
    v14.i64[0] = result[35];
    v14.i32[1] /= 6;
    v27 = v14;
    v15 = result[36] * v14.i32[1];
    v29 = 0;
    v16 = &a2[v15 * sub_239F6E2E4(&v29, a3)];
    *v22.f32 = v29;
    v23 = v29.f32[1];
    v24 = v27;
  }

  else
  {
    v26 = atan2f(a3.f32[2], a3.f32[0]);
    v24.f32[0] = acosf(a3.f32[1]);
    v22.f32[0] = v26 * 0.15915;
    v23 = v24.f32[0] * 0.31831;
    v24.i64[0] = result[35];
    v16 = a2;
  }

  return sub_239F726B0(v16, v24, v22, v23, v17, v18, v19, v20, v21);
}

double sub_239F6E708(void *result, const char *a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (!a2)
  {
    return 0.0;
  }

  if (objc_msgSend_isCube(result, a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9))
  {
    v14 = result[35];
    v14.i32[1] /= 6;
    v28 = v14;
    v15 = result[36] * v14.i32[1];
    v30 = 0;
    v16 = &a2[v15 * sub_239F6E2E4(&v30, a3)];
    v22 = v30;
    v23 = v30.f32[1];
    v24 = v28;
  }

  else
  {
    v26 = atan2f(a3.f32[2], a3.f32[0]);
    v27 = acosf(a3.f32[1]);
    v22.f32[0] = v26 * 0.15915;
    v23 = v27 * 0.31831;
    v24 = result[35];
    v16 = a2;
  }

  return sub_239F727F8(v16, v24, v22, v23, v17, v18, v19, v20, v21);
}

double sub_239F6E80C(void *result, const char *a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (!a2)
  {
    return 0.0;
  }

  if (objc_msgSend_isCube(result, a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9))
  {
    v14 = result[35];
    v14.i32[1] /= 6;
    v28 = v14;
    v15 = result[36] * v14.i32[1];
    v30 = 0;
    v16 = &a2[v15 * sub_239F6E2E4(&v30, a3)];
    v22 = v30;
    v23 = v30.f32[1];
    v24 = v28;
  }

  else
  {
    v26 = atan2f(a3.f32[2], a3.f32[0]);
    v27 = acosf(a3.f32[1]);
    v22.f32[0] = v26 * 0.15915;
    v23 = v27 * 0.31831;
    v24 = result[35];
    v16 = a2;
  }

  return sub_239F7293C(v16, v24, v22, v23, v17, v18, v19, v20, v21);
}

double sub_239F6E910(void *result, const char *a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __n128 a11, __n128 a12)
{
  if (!a2)
  {
    return 0.0;
  }

  if (objc_msgSend_isCube(result, a2, a4, a5, a3, a10, a11, a12, a6, a7, a8, a9))
  {
    v14 = result[35];
    v14.i32[1] /= 6;
    v28 = v14;
    v15 = result[36] * v14.i32[1];
    v30 = 0;
    v16 = &a2[v15 * sub_239F6E2E4(&v30, a3)];
    v22 = v30;
    v23 = v30.f32[1];
    v24 = v28;
  }

  else
  {
    v26 = atan2f(a3.f32[2], a3.f32[0]);
    v27 = acosf(a3.f32[1]);
    v22.f32[0] = v26 * 0.15915;
    v23 = v27 * 0.31831;
    v24 = result[35];
    v16 = a2;
  }

  return sub_239F72A80(v16, v24, v22, v23, v17, v18, v19, v20, v21);
}

double sub_239F6EA14(int32x2_t *result, float32x4_t a2)
{
  v2 = result[32].i32[0];
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return sub_239F6EDBC(result, 0, a2);
      }

      return 0.0;
    }

    return sub_239F6ECA0(result, 0, a2);
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return sub_239F6EB84(result, 0, a2);
      }

      return 0.0;
    }

    return sub_239F6EA68(result, 0, a2);
  }
}

double sub_239F6EA68(int32x2_t *result, unsigned int a2, float32x4_t a3)
{
  v3 = result[a2];
  if (!*&v3)
  {
    return 0.0;
  }

  v4 = a3;
  *a3.f32 = vshl_s32(result[33], vneg_s32(vdup_n_s32(a2)));
  if (result[35].i8[0] == 1)
  {
    a3.i32[1] /= 6;
    v18 = a3;
    v5 = (*&result[34] >> a2) * a3.i32[1];
    v19 = 0;
    v6 = *&v3 + v5 * sub_239F6E2E4(&v19, v4);
    *v12.f32 = v19;
    v13 = v19.f32[1];
  }

  else
  {
    v17 = v4.f32[1];
    v18 = a3;
    v15 = atan2f(v4.f32[2], v4.f32[0]);
    v16 = acosf(v17);
    v12.f32[0] = v15 * 0.15915;
    v13 = v16 * 0.31831;
    v6 = v3;
  }

  return sub_239F726B0(v6, v18, v12, v13, v7, v8, v9, v10, v11);
}

double sub_239F6EB84(int32x2_t *result, unsigned int a2, float32x4_t a3)
{
  v3 = result[a2];
  if (!*&v3)
  {
    return 0.0;
  }

  v5 = vshl_s32(result[33], vneg_s32(vdup_n_s32(a2)));
  if (result[35].i8[0] == 1)
  {
    v5.i32[1] /= 6;
    v19 = v5;
    v6 = (*&result[34] >> a2) * v5.i32[1];
    v20 = 0;
    v7 = *&v3 + v6 * sub_239F6E2E4(&v20, a3);
    v13 = v20;
    v14 = v20.f32[1];
  }

  else
  {
    v18 = a3.f32[1];
    v19 = v5;
    v16 = atan2f(a3.f32[2], a3.f32[0]);
    v17 = acosf(v18);
    v13.f32[0] = v16 * 0.15915;
    v14 = v17 * 0.31831;
    v7 = v3;
  }

  return sub_239F727F8(v7, v19, v13, v14, v8, v9, v10, v11, v12);
}

double sub_239F6ECA0(int32x2_t *result, unsigned int a2, float32x4_t a3)
{
  v3 = result[a2];
  if (!*&v3)
  {
    return 0.0;
  }

  v5 = vshl_s32(result[33], vneg_s32(vdup_n_s32(a2)));
  if (result[35].i8[0] == 1)
  {
    v5.i32[1] /= 6;
    v19 = v5;
    v6 = (*&result[34] >> a2) * v5.i32[1];
    v20 = 0;
    v7 = *&v3 + v6 * sub_239F6E2E4(&v20, a3);
    v13 = v20;
    v14 = v20.f32[1];
  }

  else
  {
    v18 = a3.f32[1];
    v19 = v5;
    v16 = atan2f(a3.f32[2], a3.f32[0]);
    v17 = acosf(v18);
    v13.f32[0] = v16 * 0.15915;
    v14 = v17 * 0.31831;
    v7 = v3;
  }

  return sub_239F7293C(v7, v19, v13, v14, v8, v9, v10, v11, v12);
}

double sub_239F6EDBC(int32x2_t *result, unsigned int a2, float32x4_t a3)
{
  v3 = result[a2];
  if (!*&v3)
  {
    return 0.0;
  }

  v5 = vshl_s32(result[33], vneg_s32(vdup_n_s32(a2)));
  if (result[35].i8[0] == 1)
  {
    v5.i32[1] /= 6;
    v19 = v5;
    v6 = (*&result[34] >> a2) * v5.i32[1];
    v20 = 0;
    v7 = *&v3 + v6 * sub_239F6E2E4(&v20, a3);
    v13 = v20;
    v14 = v20.f32[1];
  }

  else
  {
    v18 = a3.f32[1];
    v19 = v5;
    v16 = atan2f(a3.f32[2], a3.f32[0]);
    v17 = acosf(v18);
    v13.f32[0] = v16 * 0.15915;
    v14 = v17 * 0.31831;
    v7 = v3;
  }

  return sub_239F72A80(v7, v19, v13, v14, v8, v9, v10, v11, v12);
}

double sub_239F6EED8(int32x2_t *a1, float32x4_t a2, float a3)
{
  v5 = a3;
  v18 = a3 - truncf(a3);
  v6 = a1[32].i32[0];
  result = 0.0;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2;
      *v12.i64 = sub_239F6ECA0(a1, a3, a2);
      v17 = v12;
      *v9.i64 = sub_239F6ECA0(a1, v5 + 1, v16);
    }

    else
    {
      if (v6 != 4)
      {
        return result;
      }

      v14 = a2;
      *v10.i64 = sub_239F6EDBC(a1, a3, a2);
      v17 = v10;
      *v9.i64 = sub_239F6EDBC(a1, v5 + 1, v14);
    }
  }

  else if (v6 == 1)
  {
    v15 = a2;
    *v11.i64 = sub_239F6EA68(a1, a3, a2);
    v17 = v11;
    *v9.i64 = sub_239F6EA68(a1, v5 + 1, v15);
  }

  else
  {
    if (v6 != 2)
    {
      return result;
    }

    v13 = a2;
    *v8.i64 = sub_239F6EB84(a1, a3, a2);
    v17 = v8;
    *v9.i64 = sub_239F6EB84(a1, v5 + 1, v13);
  }

  *&result = vmlaq_n_f32(v17, vsubq_f32(v9, v17), v18).u64[0];
  return result;
}

double sub_239F6F000(double a1, float a2, int32x4_t a3)
{
  v3 = (a2 * a2) * (a2 * a2);
  v4 = *&a1 * 6.28318531;
  v5 = sqrt((1.0 - *(&a1 + 1)) / ((v3 + -1.0) * *(&a1 + 1) + 1.0));
  v20 = v5;
  v6 = sqrtf(1.0 - (v5 * v5));
  v7 = __sincosf_stret(v4);
  v8.f64[0] = fabsf(*&a3.i32[2]);
  v9.f64[0] = 0.999;
  v10 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v9, v8).i64[0], 0), xmmword_239F9C070, xmmword_239F9AD10);
  v11 = vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL);
  v12 = vmlaq_f32(vnegq_f32(vmulq_f32(v10, v11)), a3, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = (v14.f32[2] + v14.f32[0]) + v14.f32[1];
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)), *v14.f32);
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), a3)), v11, v16);
  *&result = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a3, v20), v16, v6 * v7.__cosval), vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL), v6 * v7.__sinval).u64[0];
  return result;
}

void sub_239F6F158(void *a1, const char *a2, int a3, float a4, __n128 a5, uint64_t a6, int a7, uint64_t a8)
{
  v44 = a1;
  if (a3 == 5)
  {
    v13 = 4;
  }

  else
  {
    v13 = a3;
  }

  if (a3 == 4)
  {
    v14 = 5;
  }

  else
  {
    v14 = v13;
  }

  if (a5.n128_i32[1] >= 1)
  {
    v15 = 0;
    *&v16.f64[1] = a5.n128_u64[1];
    if (4 * a7 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 4 * a7;
    }

    __asm { FMOV            V0.4S, #1.0 }

    v42 = _Q0;
    do
    {
      v23 = 0;
      do
      {
        *&v16.f64[0] = __PAIR64__(v15, v23);
        v12.n128_u32[0] = 0.5;
        *v24.f32 = directionForPixel(v14, a5.n128_f32[0], v16, v12);
        if (a7 < 1)
        {
          v46.i64[0] = 0;
          v47 = 0u;
        }

        else
        {
          v25 = v24;
          v26 = 0;
          v24.i64[0] = 0;
          v46 = v24;
          v47 = 0u;
          v49 = v25;
          v45 = vnegq_f32(v25);
          do
          {
            *&v27 = v26 * (1.0 / (4 * a7));
            HIDWORD(v27) = vcvts_n_f32_u32(__rbit32(v26), 0x20uLL);
            *v34.i64 = sub_239F6F000(v27, a4, v49);
            v35 = v34;
            v36 = vmulq_f32(v34, v49);
            v12.n128_f32[0] = vaddv_f32(*v36.f32);
            v37 = vmlaq_n_f32(v45, v35, (v12.n128_f32[0] + v36.f32[2]) + (v12.n128_f32[0] + v36.f32[2]));
            v38 = vmulq_f32(v37, v49);
            v12.n128_f32[0] = vaddv_f32(v38.n128_u64[0]);
            v38.n128_f32[0] = fmaxf(fminf(v12.n128_f32[0] + v38.n128_f32[2], 1.0), 0.0);
            v48 = v38;
            if (v38.n128_f32[0] >= 0.00000011921)
            {
              *v39.i64 = sub_239F6E4F4(v44, a2, v37, v28, v29, v30, v31, v32, v33, v38, v12, v49);
              v40 = v46;
              v12 = v48;
              v40.f32[0] = v48.n128_f32[0] + v46.f32[0];
              v46 = v40;
              v47 = vmlaq_n_f32(v47, v39, v48.n128_f32[0]);
            }

            ++v26;
          }

          while (v17 != v26);
        }

        *&v16.f64[1] = v47.i64[1];
        *(a8 + 16 * (a5.n128_u32[1] + ~v15) * a5.n128_i32[0] + 16 * v23++) = vmulq_f32(v47, vdivq_f32(v42, vdupq_lane_s32(*v46.f32, 0)));
      }

      while (v23 != a5.n128_u32[1]);
      ++v15;
    }

    while (v15 != a5.n128_u32[1]);
  }
}

void sub_239F6F6D8(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_239F7259C(result, a2 - v2);
  }
}

void sub_239F6F948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239F70A20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLCheckerboardTexture;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_239F71838(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x23EE802C0](v4, 0x10A0C401EE0EB22);

  _Unwind_Resume(a1);
}

void sub_239F7190C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MDLSkyCubeTexture;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_239F72130(unsigned int a1, int a2, unsigned int *a3, float a4, float a5)
{
  v10 = malloc_type_malloc(4 * (a2 * a1), 0x100004052888210uLL);
  if (v10)
  {
    if (a4 <= 1.0)
    {
      v12 = a4;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = v12 * 5.0;
    if (a4 < 0.0)
    {
      v13 = 0.0;
    }

    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    v15 = a2 - 1;
    if (a2 >= 1)
    {
      v16 = 0;
      v17 = (&unk_239F9EBDC + 1300 * v14);
      v18 = *v17;
      v19 = v10;
      v20 = a3;
      do
      {
        v21 = a1;
        v22 = v19;
        v23 = a1 - 1;
        if (a1 >= 1)
        {
          do
          {
            v25 = *v20++;
            v24 = v25;
            v26 = 0.0;
            v27 = HIBYTE(v25);
            if (HIBYTE(v25))
            {
              v28 = 255.0 / v27;
              v29 = vmul_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v24), 0xFFFFFFF0FFFFFFF8), 0xFF000000FFLL)), 0x3DE147AE3F170A3DLL);
              v30 = v28 * (0.0039216 * ((v29.f32[0] + (v24 * 0.3)) + v29.f32[1]));
              if (v30 <= 1.0)
              {
                v31 = v30;
              }

              else
              {
                v31 = 1.0;
              }

              if (v30 >= 0.0)
              {
                v26 = v31;
              }

              else
              {
                v26 = 0.0;
              }
            }

            *v22++ = v26;
            --v21;
          }

          while (v21);
        }

        ++v16;
        v19 += a1;
      }

      while (v16 != a2);
      v32 = 0;
      v33 = v17 + 1;
      v34 = -a5;
      v35 = (&unk_239F9EBDC + 1300 * v14 + 8);
      v36 = vdup_n_s32(0x42FF0000u);
      do
      {
        if (a1 >= 1)
        {
          v37 = 0;
          do
          {
            if (v18)
            {
              v38 = 0.0;
              v39 = v18;
              v40 = v35;
              v41 = v18;
              v42 = 0.0;
              do
              {
                v43 = v37 + *(v40 - 4);
                v44 = v32 + *(v40 - 3);
                if (v23 >= v43)
                {
                  v45 = v37 + *(v40 - 4);
                }

                else
                {
                  v45 = a1 - 1;
                }

                if (v43 >= 0)
                {
                  v46 = v45;
                }

                else
                {
                  v46 = 0;
                }

                if (v15 >= v44)
                {
                  v47 = v32 + *(v40 - 3);
                }

                else
                {
                  v47 = a2 - 1;
                }

                if (v44 >= 0)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = 0;
                }

                v49 = v10[v46 + v48 * a1];
                v50 = *v40;
                v40 += 2;
                v51 = v50;
                v52 = &v33[2 * v41];
                v53 = v37 + *v52;
                v54 = v32 + *(v52 + 1);
                if (v23 >= v53)
                {
                  v55 = v37 + *v52;
                }

                else
                {
                  v55 = a1 - 1;
                }

                if (v53 >= 0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 0;
                }

                if (v15 >= v54)
                {
                  v57 = v32 + *(v52 + 1);
                }

                else
                {
                  v57 = a2 - 1;
                }

                if (v54 >= 0)
                {
                  v58 = v57;
                }

                else
                {
                  v58 = 0;
                }

                v42 = v42 + (v51 * v49);
                v38 = v38 + (v52[1] * v10[v56 + v58 * a1]);
                ++v41;
                --v39;
              }

              while (v39);
            }

            else
            {
              v42 = 0.0;
              v38 = 0.0;
            }

            v59 = *a3 & 0xFF000000;
            v60 = v42 * v34;
            v61 = v38 * v34;
            v62 = sqrtf(((v60 * v60) + 1.0) + (v61 * v61));
            if (v62 > 0.0001)
            {
              v63 = (HIBYTE(*a3) * 0.0039216) / v62;
              v11.i32[0] = 1124007936;
              v64 = (((v60 * 127.5) * v63) + 127.5);
              v65 = vdup_lane_s32(v11, 0);
              v65.f32[0] = v61 * 127.5;
              v66 = vshl_u32(vcvt_u32_f32(vmla_n_f32(v36, v65, v63)), 0x1000000008);
              v59 |= v66.i32[0] | v64 | v66.i32[1];
            }

            *a3++ = v59;
            ++v37;
          }

          while (v37 != a1);
        }

        ++v32;
      }

      while (v32 != a2);
    }

    free(v10);
  }
}

void sub_239F7259C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_239E797B4();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_239E91AC8(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

double sub_239F726B0(uint64_t a1, float32x4_t a2, float32x4_t a3, float a4, int8x16_t a5, double a6, double a7, uint8x8_t a8, uint8x8_t a9)
{
  v9.i32[1] = -1;
  v9.i64[1] = -1;
  v10 = vadd_s32(*a2.f32, -1);
  a3.f32[1] = 1.0 - a4;
  v11 = 4 * a2.i32[0];
  v12 = vmla_f32(COERCE_FLOAT32X2_T(-0.0000305175853), vcvt_f32_s32(*a2.f32), *a3.f32);
  *a5.i8 = vcvt_s32_f32(v12);
  *a3.f32 = vabd_f32(v12, vrnd_f32(v12));
  v13 = a5.i32[1];
  v14 = vmax_s32(*a5.i8, -1);
  v15 = a5.i32[0] & ~(a5.i32[0] >> 31);
  a5.i32[1] = 1;
  v16 = vmin_s32(v10, vadd_s32(v14, 0x100000001));
  if (v10.i32[0] < v15)
  {
    v15 = v10.i32[0];
  }

  v17 = v13 & ~(v13 >> 31);
  if (v10.i32[1] < v17)
  {
    v17 = v10.i32[1];
  }

  v18 = v11 * v17;
  v19 = 4 * v16.i32[0];
  v20 = v16.i32[1] * v11;
  v16.i32[0] = *(a1 + v18 + 4 * v15);
  a5.i32[0] = 1262485504;
  v9.i32[0] = -884998144;
  v21 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v16)), a5), v9);
  v10.i32[0] = *(a1 + v19 + v18);
  v22 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v10)), a5), v9);
  a8.i32[0] = *(a1 + v20 + 4 * v15);
  v23 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), a5), v9);
  a9.i32[0] = *(a1 + v20 + v19);
  v24 = vmovl_u16(*&vmovl_u8(a9));
  v25 = vaddq_f32(vorrq_s8(v24, a5), v9);
  v24.f32[0] = (1.0 - a3.f32[1]) * (1.0 - a3.f32[0]);
  v9.f32[0] = (1.0 - a3.f32[1]) * a3.f32[0];
  a2.f32[0] = vmuls_lane_f32(1.0 - a3.f32[0], *a3.f32, 1);
  a3.f32[0] = vmuls_lane_f32(a3.f32[0], *a3.f32, 1);
  a2.i64[0] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v21, v24), v9, v22), a2, v23), a3, v25).u32[0], vdupq_n_s32(0x3B808081u)).u64[0];
  return *a2.i64;
}

double sub_239F727F8(uint64_t a1, int32x2_t a2, float32x2_t a3, float a4, double a5, double a6, double a7, uint8x8_t a8, uint8x8_t a9)
{
  v9 = vadd_s32(a2, -1);
  v10 = 4 * a2.i32[0];
  a3.f32[1] = 1.0 - a4;
  v11 = vmla_f32(COERCE_FLOAT32X2_T(-0.0000305175853), vcvt_f32_s32(a2), a3);
  v12 = vcvt_s32_f32(v11);
  v13 = vabd_f32(v11, vrnd_f32(v11));
  v14 = v12.i32[0] & ~(v12.i32[0] >> 31);
  v15 = vmin_s32(v9, vadd_s32(vmax_s32(v12, -1), 0x100000001));
  if (v9.i32[0] < v14)
  {
    v14 = v9.i32[0];
  }

  v16 = v12.i32[1] & ~(v12.i32[1] >> 31);
  if (v9.i32[1] < v16)
  {
    v16 = v9.i32[1];
  }

  v17 = v10 * v16;
  v18 = 4 * v15.i32[0];
  v19 = v15.i32[1] * v10;
  v15.i32[0] = *(a1 + v17 + 4 * v14);
  v20 = vdupq_n_s32(0x4B400000u);
  v21 = vdupq_n_s32(0xCB400000);
  v9.i32[0] = *(a1 + v18 + v17);
  a8.i32[0] = *(a1 + v19 + 4 * v14);
  a9.i32[0] = *(a1 + v19 + v18);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v15)), v20), v21), (1.0 - v13.f32[1]) * (1.0 - v13.f32[0])), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v9)), v20), v21), (1.0 - v13.f32[1]) * v13.f32[0]), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v20), v21), vmuls_lane_f32(1.0 - v13.f32[0], v13, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a9)), v20), v21), vmuls_lane_f32(v13.f32[0], v13, 1)).u64[0], vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_239F7293C(uint64_t a1, int32x2_t a2, float32x2_t a3, float a4, double a5, double a6, double a7, uint8x8_t a8, uint8x8_t a9)
{
  v9 = vadd_s32(a2, -1);
  v10 = 4 * a2.i32[0];
  a3.f32[1] = 1.0 - a4;
  v11 = vmla_f32(COERCE_FLOAT32X2_T(-0.0000305175853), vcvt_f32_s32(a2), a3);
  v12 = vcvt_s32_f32(v11);
  v13 = vabd_f32(v11, vrnd_f32(v11));
  v14 = v12.i32[0] & ~(v12.i32[0] >> 31);
  v15 = vmin_s32(v9, vadd_s32(vmax_s32(v12, -1), 0x100000001));
  if (v9.i32[0] < v14)
  {
    v14 = v9.i32[0];
  }

  v16 = v12.i32[1] & ~(v12.i32[1] >> 31);
  if (v9.i32[1] < v16)
  {
    v16 = v9.i32[1];
  }

  v17 = v10 * v16;
  v18 = 4 * v15.i32[0];
  v19 = v15.i32[1] * v10;
  v15.i32[0] = *(a1 + v17 + 4 * v14);
  v20 = vdupq_n_s32(0x4B400000u);
  v21 = vdupq_n_s32(0xCB400000);
  v9.i32[0] = *(a1 + v18 + v17);
  a8.i32[0] = *(a1 + v19 + 4 * v14);
  a9.i32[0] = *(a1 + v19 + v18);
  v22 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v15)), v20), v21), (1.0 - v13.f32[1]) * (1.0 - v13.f32[0])), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v9)), v20), v21), (1.0 - v13.f32[1]) * v13.f32[0]), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v20), v21), vmuls_lane_f32(1.0 - v13.f32[0], v13, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a9)), v20), v21), vmuls_lane_f32(v13.f32[0], v13, 1));
  v22.i32[3] = 0;
  *&result = vmulq_f32(v22, vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double sub_239F72A80(uint64_t a1, int32x2_t a2, float32x2_t a3, float a4, double a5, double a6, double a7, uint8x8_t a8, uint8x8_t a9)
{
  v9 = vadd_s32(a2, -1);
  v10 = 4 * a2.i32[0];
  a3.f32[1] = 1.0 - a4;
  v11 = vmla_f32(COERCE_FLOAT32X2_T(-0.0000305175853), vcvt_f32_s32(a2), a3);
  v12 = vcvt_s32_f32(v11);
  v13 = vabd_f32(v11, vrnd_f32(v11));
  v14 = v12.i32[0] & ~(v12.i32[0] >> 31);
  v15 = vmin_s32(v9, vadd_s32(vmax_s32(v12, -1), 0x100000001));
  if (v9.i32[0] < v14)
  {
    v14 = v9.i32[0];
  }

  v16 = v12.i32[1] & ~(v12.i32[1] >> 31);
  if (v9.i32[1] < v16)
  {
    v16 = v9.i32[1];
  }

  v17 = v10 * v16;
  v18 = 4 * v15.i32[0];
  v19 = v15.i32[1] * v10;
  v15.i32[0] = *(a1 + v17 + 4 * v14);
  v20 = vdupq_n_s32(0x4B400000u);
  v21 = vdupq_n_s32(0xCB400000);
  v9.i32[0] = *(a1 + v18 + v17);
  a8.i32[0] = *(a1 + v19 + 4 * v14);
  a9.i32[0] = *(a1 + v19 + v18);
  *&result = vmulq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v15)), v20), v21), (1.0 - v13.f32[1]) * (1.0 - v13.f32[0])), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v9)), v20), v21), (1.0 - v13.f32[1]) * v13.f32[0]), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a8)), v20), v21), vmuls_lane_f32(1.0 - v13.f32[0], v13, 1)), vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(a9)), v20), v21), vmuls_lane_f32(v13.f32[0], v13, 1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

void sub_239F72BC0(const pxrInternal__aapl__pxrReserved__::UsdPrim *a1, double a2)
{
  v3 = objc_alloc_init(MDLCamera);
  v4 = MEMORY[0x277CCACA8];
  v10 = *sub_239E5DFB4(a1) & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    v15 = (v10 + 16);
    if (*(v10 + 39) < 0)
    {
      objc_msgSend_stringWithCString_encoding_(v4, v5, *v15, 4, v11, v12, v13, v14, v6, v7, v8, v9);
      goto LABEL_6;
    }
  }

  else
  {
    v15 = "";
  }

  objc_msgSend_stringWithCString_encoding_(v4, v5, v15, 4, v11, v12, v13, v14, v6, v7, v8, v9);
  v16 = LABEL_6:;
  objc_msgSend_setName_(v3, v17, v16, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  v27.n128_u32[0] = 1008981770;
  objc_msgSend_setWorldToMetersConversionScale_(v3, v28, v29, v30, v27, v35, v36, v37, v31, v32, v33, v34);
  v39[6] = 0;
  v39[7] = 0;
  v38 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v39[4] = 0;
  v39[5] = MEMORY[0x277D866D8] + 16;
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetProjectionAttr(v39, v38);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_239F7311C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E690](v2 - 88);

  _Unwind_Resume(a1);
}

void sub_239F7321C(void *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  v168 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (sub_239E5E5B4(a2))
  {
    v165[1] = 0;
    v165[2] = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v165[0] = MEMORY[0x277D866D8] + 16;
    if (objc_msgSend_projection(v3, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10) == 1)
    {
      v26 = atomic_load(MEMORY[0x277D86550]);
      if (!v26)
      {
        sub_239E864C4(MEMORY[0x277D86550]);
      }

      v27 = *(v26 + 760);
      v166 = v27;
      v167 = &off_284D16248 + 1;
      if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v166 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateProjectionAttr(&v161, v165, &v166);
      if ((v164 & 7) != 0)
      {
        atomic_fetch_add_explicit((v164 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v163);
      if (v162)
      {
        sub_239E5E560(v162);
      }

      sub_239E5B240(&v166);
    }

    objc_msgSend_sensorVerticalAperture(v3, v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v29 = v28;
    v167 = &unk_284D15333;
    *&v166 = v28;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateVerticalApertureAttr(&v157, v165, &v166);
    if ((v160 & 7) != 0)
    {
      atomic_fetch_add_explicit((v160 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v159);
    if (v158)
    {
      sub_239E5E560(v158);
    }

    sub_239E5B240(&v166);
    objc_msgSend_sensorAspect(v3, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    v167 = &unk_284D15333;
    *&v166 = v41 * v29;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateHorizontalApertureAttr(&v153, v165, &v166);
    if ((v156 & 7) != 0)
    {
      atomic_fetch_add_explicit((v156 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v155);
    if (v154)
    {
      sub_239E5E560(v154);
    }

    sub_239E5B240(&v166);
    objc_msgSend_sensorShift(v3, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v167 = &unk_284D15333;
    v128 = v53;
    LODWORD(v166) = v54;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateHorizontalApertureOffsetAttr(&v149, v165, &v166);
    if ((v152 & 7) != 0)
    {
      atomic_fetch_add_explicit((v152 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v151);
    if (v150)
    {
      sub_239E5E560(v150);
    }

    sub_239E5B240(&v166);
    v167 = &unk_284D15333;
    LODWORD(v166) = v128;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateVerticalApertureOffsetAttr(&v145, v165, &v166);
    if ((v148 & 7) != 0)
    {
      atomic_fetch_add_explicit((v148 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v147);
    if (v146)
    {
      sub_239E5E560(v146);
    }

    sub_239E5B240(&v166);
    objc_msgSend_focalLength(v3, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
    v167 = &unk_284D15333;
    LODWORD(v166) = v66;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateFocalLengthAttr(&v141, v165, &v166);
    if ((v144 & 7) != 0)
    {
      atomic_fetch_add_explicit((v144 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v143);
    if (v142)
    {
      sub_239E5E560(v142);
    }

    sub_239E5B240(&v166);
    objc_msgSend_fStop(v3, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
    v167 = &unk_284D15333;
    LODWORD(v166) = v78;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateFStopAttr(&v137, v165, &v166);
    if ((v140 & 7) != 0)
    {
      atomic_fetch_add_explicit((v140 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v139);
    if (v138)
    {
      sub_239E5E560(v138);
    }

    sub_239E5B240(&v166);
    objc_msgSend_worldToMetersConversionScale(v3, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
    v91 = v90.n128_f32[0];
    objc_msgSend_focusDistance(v3, v92, v93, v94, v90, v99, v100, v101, v95, v96, v97, v98);
    v102 = v91 * 100.0;
    v167 = &unk_284D15333;
    *&v166 = v103 * (v91 * 100.0);
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateFocusDistanceAttr(&v133, v165, &v166);
    if ((v136 & 7) != 0)
    {
      atomic_fetch_add_explicit((v136 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v135);
    if (v134)
    {
      sub_239E5E560(v134);
    }

    sub_239E5B240(&v166);
    objc_msgSend_nearVisibilityDistance(v3, v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
    v116 = v115.n128_f32[0];
    objc_msgSend_farVisibilityDistance(v3, v117, v118, v119, v115, v124, v125, v126, v120, v121, v122, v123);
    v167 = &off_284D16808 + 3;
    *&v166 = v116 * v102;
    *(&v166 + 1) = v127 * v102;
    pxrInternal__aapl__pxrReserved__::UsdGeomCamera::CreateClippingRangeAttr(&v129, v165, &v166);
    if ((v132 & 7) != 0)
    {
      atomic_fetch_add_explicit((v132 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v131);
    if (v130)
    {
      sub_239E5E560(v130);
    }

    sub_239E5B240(&v166);
    MEMORY[0x23EE7E690](v165);
  }
}

void sub_239F73704(_Unwind_Exception *a1)
{
  MEMORY[0x23EE7E690](v2 - 96);

  _Unwind_Resume(a1);
}

atomic_ullong *sub_239F737B4(atomic_ullong *result, atomic_ullong **a2)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    result = *a2;
    v2 = (*a2)[1];
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void sub_239F737DC(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]");
  v6 = sub_239E56B30();
  v8 = sub_239E863B0(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 16 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 16;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

uint64_t sub_239F73850(uint64_t a1)
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  v3[2] = 416;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::GfVec3f, Args = <pxrInternal__aapl__pxrReserved__::GfVec3f>]";
  v4 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v1 = 4;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_239F738CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a2 + 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v7 *= 2;
  }

  while (v8 < v6);
  v9 = sub_239E6D048(a1, v8);
  if (a2)
  {
    do
    {
      sub_239EB632C();
    }

    while (!v10);
  }

  v11 = *a3;
  v12 = v9 + 12 * a2;
  *(v12 + 2) = *(a3 + 2);
  *v12 = v11;
  sub_239E56C80(a1);
  *(a1 + 32) = v9;
}

uint64_t sub_239F73968(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4, a2);
  if (v4 != a2)
  {
    sub_239EB4CCC(v4, a2);
  }

  return sub_239E5B240(v4);
}

uint64_t sub_239F739F4(uint64_t a1)
{
  *a1 = "usdGeom/primvar.h";
  *(a1 + 8) = "_ComputeFlattenedHelper";
  *(a1 + 16) = 848;
  *(a1 + 24) = "static BOOL pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::_ComputeFlattenedHelper(const VtArray<ScalarType> &, const VtIntArray &, int, VtArray<ScalarType> *, std::string *) [ScalarType = pxrInternal__aapl__pxrReserved__::GfVec3f]";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
}

uint64_t sub_239F73A40(uint64_t a1)
{
  *a1 = "usdGeom/primvar.h";
  *(a1 + 8) = "_ComputeFlattenedHelper";
  *(a1 + 16) = 848;
  *(a1 + 24) = "static BOOL pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::_ComputeFlattenedHelper(const VtArray<ScalarType> &, const VtIntArray &, int, VtArray<ScalarType> *, std::string *) [ScalarType = float]";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
}

void sub_239F73A8C(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique() [T = float]");
  v6 = sub_239E56B30();
  v8 = sub_239EBF248(v6, v7);
  v9 = v8;
  if (v2)
  {
    v10 = 4 * v2;
    v11 = v8;
    do
    {
      v12 = *v3++;
      *v11++ = v12;
      v10 -= 4;
    }

    while (v10);
  }

  sub_239E56C80(a1);
  *a2 = v9;
}

void sub_239F73B00()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v3, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique() [T = unsigned int]");
  v4 = sub_239E56B30();
  v6 = sub_239EC8628(v4, v5);
  if (v2)
  {
    do
    {
      sub_239E5B1DC();
    }

    while (!v7);
  }

  sub_239E56C80(v1);
  *v0 = v6;
}

void sub_239F73B68()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique() [T = unsigned char]");
  v3 = *v0;
  v4 = *v1;
  v5 = sub_239EC8E68(v1, *v1);
  v6 = v5;
  if (v4)
  {
    v7 = v5;
    do
    {
      v8 = *v3++;
      *v7++ = v8;
      --v4;
    }

    while (v4);
  }

  sub_239E56C80(v1);
  *v0 = v6;
}

uint64_t sub_239F73BE0(uint64_t a1)
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  v3[2] = 416;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back(Args &&...) [T = int, Args = <const int &>]";
  v4 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v1 = 4;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

uint64_t sub_239F73C5C(uint64_t a1)
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  v3[2] = 416;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back(Args &&...) [T = float, Args = <const float &>]";
  v4 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v1 = 4;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_239F73CD8()
{
  sub_239E56B44();
  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < v4);
  v7 = sub_239EBF248(v0, v6);
  v8 = v7;
  if (v1)
  {
    v9 = 4 * v1;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 4;
    }

    while (v9);
  }

  *(v7 + v1) = *v2;
  sub_239E56C80(v0);
  *(v0 + 32) = v8;
}

uint64_t sub_239F73D54()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

void sub_239F73DC0()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DetachIfNotUnique() [T = unsigned short]");
  v5 = sub_239E56B30();
  v7 = sub_239EC9678(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 2 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 2;
    }

    while (v9);
  }

  sub_239E56C80(v1);
  *v0 = v8;
}

uint64_t sub_239F73E30()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

uint64_t sub_239F73E9C()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

void sub_239F73F08()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique() [T = double]");
  v5 = sub_239E56B30();
  v7 = sub_239ECA4AC(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 8 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 8;
    }

    while (v9);
  }

  sub_239E56C80(v1);
  *v0 = v8;
}

void sub_239F73F78(uint64_t a1, float *a2, float32x2_t a3)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 8);
  v58.i32[0] = *a1;
  v58.f32[1] = v4;
  v59 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = *(a1 + 24);
  v56 = __PAIR64__(LODWORD(v7), LODWORD(v6));
  v57 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 36);
  v11 = *(a1 + 40);
  v54 = __PAIR64__(LODWORD(v10), LODWORD(v9));
  v55 = v11;
  v12 = ((v58.f32[0] * v58.f32[0]) + (v4 * v4)) + (v5 * v5);
  if (v12 < 2.351e-38)
  {
    a3 = sub_239F74208(&v58);
  }

  else
  {
    a3.f32[0] = sqrtf(v12);
  }

  if (a3.f32[0] != 0.0)
  {
    v58 = vdiv_f32(v58, vdup_lane_s32(a3, 0));
    v59 = v59 / a3.f32[0];
  }

  v13 = ((v6 * v6) + (v7 * v7)) + (v8 * v8);
  if (v13 < 2.351e-38)
  {
    a3 = sub_239F74208(&v56);
  }

  else
  {
    a3.f32[0] = sqrtf(v13);
  }

  if (a3.f32[0] != 0.0)
  {
    v56 = vdiv_f32(v56, vdup_lane_s32(a3, 0));
    v57 = v57 / a3.f32[0];
  }

  v14 = ((v9 * v9) + (v10 * v10)) + (v11 * v11);
  if (v14 < 2.351e-38)
  {
    LODWORD(v15) = sub_239F74208(&v54).u32[0];
    v10 = *(&v54 + 1);
    LODWORD(v9) = v54;
    v11 = v55;
  }

  else
  {
    v15 = sqrtf(v14);
  }

  if (v15 != 0.0)
  {
    v16 = 1.0 / v15;
    v9 = v9 * v16;
    v10 = v10 * v16;
    v54 = __PAIR64__(LODWORD(v10), LODWORD(v9));
    v11 = v11 * v16;
    v55 = v11;
  }

  *v44.f32 = v58;
  v44.i64[1] = LODWORD(v59);
  v45 = v56;
  v46 = v57;
  v47 = 0;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v52 = 0;
  v51 = 0;
  v53 = 1065353216;
  v17 = atan2f(v57, v11);
  *a2 = v17;
  v42 = 0;
  v43 = 0x3F80000000000000;
  v19 = __sincosf_stret(v17);
  v18.f32[0] = v19.__sinval;
  *v20.i32 = v19.__cosval * 0.0;
  v21 = (v19.__sinval * -0.0) - (v19.__cosval * 0.0);
  v22 = (v19.__sinval * -0.0) + v19.__cosval;
  v36 = xmmword_239F9AD10;
  v23 = v21 * 0.0;
  v37 = ((v22 * 0.0) + v21) - (v19.__sinval * 0.0);
  v38 = ((v21 * 0.0) + v22) - (v19.__sinval * 0.0);
  v24 = ((v21 * 0.0) - v19.__sinval) + (v22 * 0.0);
  v25 = ((v22 * 0.0) + v23) - (v19.__sinval * 0.0);
  *v26.f32 = vdup_lane_s32(v20, 0);
  v18.f32[1] = v19.__sinval * -0.0;
  v39 = v24;
  v40 = v25;
  v27 = vadd_f32(*v26.f32, v18);
  *v28.i8 = vmul_f32(v27, 0);
  *v29.f32 = vrev64_s32(v27);
  v29.i64[1] = __PAIR64__(v28.u32[1], LODWORD(v19.__cosval));
  v30 = vaddq_f32(vzip1q_s32(v28, vrev64q_s32(v28)), v29);
  *&v28.i32[1] = v19.__cosval * 0.0;
  v26.i64[1] = v28.i64[0];
  v41 = vaddq_f32(v30, v26);
  sub_239ECC8E0(&v36, &v44, &v33);
  v32 = v34;
  v31 = v35;
  a2[1] = atan2f(-v33.f32[2], sqrtf((v33.f32[0] * v33.f32[0]) + (v33.f32[1] * v33.f32[1])));
  a2[2] = atan2f(-v32, v31);
}

float32x2_t sub_239F74208(float32x2_t *a1)
{
  v2 = vcgez_f32(*a1);
  v1 = vbsl_s8(v2, *a1, vneg_f32(*a1));
  v2.i32[0] = a1[1].i32[0];
  v3 = -*v2.i32;
  if (*v2.i32 >= 0.0)
  {
    v3 = a1[1].f32[0];
  }

  v2.i32[0] = v1.i32[1];
  if (v1.f32[0] >= v1.f32[1])
  {
    *v2.i32 = v1.f32[0];
  }

  if (*v2.i32 < v3)
  {
    *v2.i32 = v3;
  }

  if (*v2.i32 == 0.0)
  {
    return 0;
  }

  else
  {
    v4 = vdiv_f32(v1, vdup_lane_s32(v2, 0));
    result = vmul_f32(v4, v4);
    result.f32[0] = sqrtf(vaddv_f32(result) + ((v3 / *v2.i32) * (v3 / *v2.i32))) * *v2.i32;
  }

  return result;
}

uint64_t sub_239F74270(void *a1)
{
  sub_239E5B574((a1 + 12));
  v2 = a1[7];
  if (v2)
  {
    v3 = sub_239E56B60(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  result = a1[5];
  if (result)
  {
    result = sub_239E56B60(result);
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v6 = a1[3];
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_239F74318(uint64_t a1)
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  v3[2] = 416;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<float>::emplace_back(Args &&...) [T = float, Args = <float>]";
  v4 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v1 = 4;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_239F74394(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 32);
  v7 = a2 + 1;
  v8 = 1;
  do
  {
    v9 = v8;
    v8 *= 2;
  }

  while (v9 < v7);
  v10 = sub_239EBF248(a1, v9);
  v11 = v10;
  if (a2)
  {
    v12 = 4 * a2;
    v13 = v10;
    do
    {
      v14 = *v6++;
      *v13++ = v14;
      v12 -= 4;
    }

    while (v12);
  }

  *(v10 + a2) = *a3;
  sub_239E56C80(a1);
  *(a1 + 32) = v11;
}

void sub_239F74424(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

void sub_239F74464(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, uint64_t **a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::TfToken]");
  v4 = sub_239EEC0C8(a1, *a2, *a1, *a1);
  sub_239EEBFE4(a1);
  *a2 = v4;
}

void *sub_239F744C0(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_239F744DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_239E5B574(a1);
  if (*a2)
  {
    sub_239E5E560(*a2);
  }

  result = *a3;
  if (*a3)
  {
    result = sub_239E56B60(result);
    if (v6)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_239F74544(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_239EF1FFC("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::UsdStage>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::UsdStage]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  sub_239F745B0(v3, v4, v5);
}

void sub_239F745B0(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }

  if (*a3)
  {
    operator delete(*a3);
  }
}

uint64_t sub_239F745EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (*(result + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(result);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_239F74634()
{
  v4[0] = "vt/array.h";
  v4[1] = "emplace_back";
  sub_239E5B1EC();
  if (v0)
  {
    sub_239EF458C();
    if (!v2)
    {
      ++v1;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Array rank %u != 1", v1);
}

void sub_239F746A0()
{
  sub_239E56B44();
  do
  {
    sub_239E5B1B0();
  }

  while (!v5);
  v6 = sub_239EC8628(v0, v4);
  v7 = v6;
  if (v1)
  {
    v8 = 4 * v1;
    v9 = v6;
    do
    {
      v10 = *v3++;
      *v9++ = v10;
      v8 -= 4;
    }

    while (v8);
  }

  *(v6 + v1) = *v2;
  sub_239E56C80(v0);
  *(v0 + 32) = v7;
}

void sub_239F74714()
{
  if (__cxa_guard_acquire(byte_27DF91298))
  {
    dword_27DF91290 = 1;

    __cxa_guard_release(byte_27DF91298);
  }
}

void sub_239F74760()
{
  if (__cxa_guard_acquire(byte_27DF912A0))
  {
    dword_27DF91294 = 1065353216;

    __cxa_guard_release(byte_27DF912A0);
  }
}

void sub_239F747D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = vmul_f32(*(a2 + 4), *(a2 + 4));
  v8 = (v7.f32[0] + (*a2 * *a2)) + v7.f32[1];
  if (v8 < 2.351e-38)
  {
    *&a4 = sub_239F74208(a2);
  }

  else
  {
    *&a4 = sqrtf(v8);
  }

  if (*&a4 == 0.0)
  {
    *a2 = 0;
    *(a2 + 8) = 1065353216;
  }

  v9 = vmul_f32(*(a3 + 4), *(a3 + 4));
  v10 = (v9.f32[0] + (*a3 * *a3)) + v9.f32[1];
  if (v10 < 2.351e-38)
  {
    *&a4 = sub_239F74208(a3);
  }

  else
  {
    *&a4 = sqrtf(v10);
  }

  if (*&a4 == 0.0)
  {
    *a3 = 0x3F80000000000000;
    *(a3 + 8) = 0;
    *&a4 = COERCE_UNSIGNED_INT(1.0) | 0x3F80000000000000;
    v11 = 0.0;
    v12 = 0.0;
  }

  else
  {
    LODWORD(a4) = *(a3 + 4);
    v12 = *(a3 + 8);
    v11 = *a3;
  }

  v14 = *(a2 + 4);
  v13 = *(a2 + 8);
  v15 = *a2;
  *&v16 = -((v14 * v12) - (v13 * *&a4));
  *&v17 = -((v11 * v13) - (*a2 * v12));
  v18 = -((*a2 * *&a4) - (v11 * v14));
  v46 = __PAIR64__(v17, v16);
  v47 = v18;
  v19 = ((*&v16 * *&v16) + (*&v17 * *&v17)) + (v18 * v18);
  if (v19 < 2.351e-38)
  {
    *&a4 = sub_239F74208(&v46);
    v14 = *(a2 + 4);
    v13 = *(a2 + 8);
    v15 = *a2;
  }

  else
  {
    *&a4 = sqrtf(v19);
  }

  if (*&a4 == 0.0)
  {
    v20 = (v14 - v13) * 0.0;
    v21 = v15 * 0.0;
    v22 = v13 - v21;
    v23 = v21 - v14;
    *a3 = v20;
    *(a3 + 4) = v22;
    *(a3 + 8) = v23;
    v24 = ((v20 * v20) + (v22 * v22)) + (v23 * v23);
    if (v24 < 2.351e-38)
    {
      *&a4 = sub_239F74208(a3);
    }

    else
    {
      *&a4 = sqrtf(v24);
    }

    v14 = *(a2 + 4);
    v13 = *(a2 + 8);
    v15 = *a2;
    if (*&a4 == 0.0)
    {
      HIDWORD(a4) = 0;
      v25 = v13 * 0.0;
      *a3 = v14 - v25;
      *(a3 + 4) = v25 - v15;
      *(a3 + 8) = (v15 - v14) * 0.0;
      v14 = *(a2 + 4);
      v13 = *(a2 + 8);
      v15 = *a2;
    }
  }

  v27 = *(a3 + 4);
  v26 = *(a3 + 8);
  v28 = -((v14 * v26) - (v13 * v27));
  v29 = *a3 * v13;
  v30 = -((v15 * v27) - (*a3 * v14));
  v46.f32[0] = v28;
  v46.f32[1] = -(v29 - (v15 * v26));
  v47 = v30;
  v31 = -((v46.f32[1] * v13) - (v30 * v14));
  v32 = -((v30 * v15) - (v28 * v13));
  v33 = -((v28 * v14) - (v46.f32[1] * v15));
  v44.f32[0] = v31;
  v44.f32[1] = v32;
  v45 = v33;
  v34 = ((v28 * v28) + (v46.f32[1] * v46.f32[1])) + (v30 * v30);
  if (v34 < 2.351e-38)
  {
    *&a4 = sub_239F74208(&v46);
  }

  else
  {
    *&a4 = sqrtf(v34);
  }

  if (*&a4 == 0.0)
  {
    v35 = 0;
    v36 = 0.0;
  }

  else
  {
    v35 = vdiv_f32(v46, vdup_lane_s32(*&a4, 0));
    v36 = v47 / *&a4;
  }

  v37 = ((v31 * v31) + (v32 * v32)) + (v33 * v33);
  if (v37 < 2.351e-38)
  {
    *&a4 = sub_239F74208(&v44);
  }

  else
  {
    *&a4 = sqrtf(v37);
  }

  if (*&a4 == 0.0)
  {
    v38 = 0;
    v39 = 0.0;
  }

  else
  {
    v38 = vdiv_f32(v44, vdup_lane_s32(*&a4, 0));
    v39 = v45 / *&a4;
  }

  v40 = vmul_f32(*(a2 + 4), *(a2 + 4));
  v41 = (v40.f32[0] + (*a2 * *a2)) + v40.f32[1];
  if (v41 < 2.351e-38)
  {
    *&a4 = sub_239F74208(a2);
  }

  else
  {
    *&a4 = sqrtf(v41);
  }

  if (*&a4 == 0.0)
  {
    v42 = 0;
    v43 = 0.0;
  }

  else
  {
    v42 = vdiv_f32(*a2, vdup_lane_s32(*&a4, 0));
    v43 = *(a2 + 8) / *&a4;
  }

  *a1 = v35;
  *(a1 + 8) = v36;
  *(a1 + 12) = 0;
  *(a1 + 16) = v38;
  *(a1 + 24) = v39;
  *(a1 + 28) = 0;
  *(a1 + 32) = v42;
  *(a1 + 40) = v43;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
}

void sub_239F74B20(__n128 *a1, __n128 a2)
{
  a1[16] = a2;
  v2.n128_f64[0] = sub_239F16730(a1[3].n128_i64[1]);
  v14 = v2;
  sub_239F166FC();
  __asm { FMOV            V2.4S, #1.0 }

  v10 = vmulq_f32(v9, vdivq_f32(_Q2, v8));
  DWORD1(v19) = v11;
  *(&v19 + 1) = 0;
  *v20 = 0;
  *&v20[8] = v11;
  *&v20[20] = 0;
  *&v20[12] = 0;
  *&v20[28] = v11;
  *&v15[0] = v10.i64[0];
  DWORD2(v15[0]) = v10.i32[2];
  v16 = 0x3F80000000000000;
  v17 = 0;
  sub_239F747D0(&v18, v15, &v16, 0.0078125);
  v15[0] = v18;
  v15[1] = v19;
  v15[2] = *v20;
  v15[3] = *&v20[16];
  v12 = sub_239E56B74();
  sub_239ECB24C(v12, v15);
  v13 = sub_239E56B74();
  sub_239F15ECC(v13, v14);
}

void sub_239F74BE0(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[16] = a2;
  v3.n128_f64[0] = sub_239F16730(a1[3].n128_i64[1]);
  v16 = v3;
  sub_239F166FC();
  DWORD1(v21) = v4;
  __asm { FMOV            V2.4S, #1.0 }

  *(&v21 + 1) = 0;
  *v22 = 0;
  *&v22[8] = v4;
  *&v22[20] = 0;
  v12 = vmulq_f32(v11, vdivq_f32(_Q2, v10));
  *&v22[12] = 0;
  *&v22[28] = v4;
  DWORD2(v17[0]) = v12.i32[2];
  *&v17[0] = v12.i64[0];
  v18 = a3.n128_u64[0];
  v19 = a3.n128_u32[2];
  sub_239F747D0(&v20, v17, &v18, a3.n128_f64[0]);
  v17[0] = v20;
  v17[1] = v21;
  v17[2] = *v22;
  v17[3] = *&v22[16];
  v13 = sub_239E56B74();
  sub_239ECB24C(v13, v17);
  v14 = sub_239E56B74();
  sub_239F15ECC(v14, v16);
}

void sub_239F74CA8(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 56) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;

    operator delete(v7);
  }
}

void sub_239F74D14(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    v3 = a2[2];
    if (v3 < 0)
    {
      if (v3 == -2 || (v5 = a2[2], atomic_compare_exchange_strong_explicit(a2 + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed), v5 != v3))
      {
        if ((pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked() & 1) == 0)
        {
          return;
        }
      }

      else if (v3 != -1)
      {
        return;
      }
    }

    else if (atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_release) != 1)
    {
      return;
    }

    v4 = *(*a2 + 8);

    v4(a2);
  }
}

uint64_t sub_239F74DD4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v2)
    {
      sub_239F17CC4();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

uint64_t sub_239F74E24(uint64_t a1)
{
  *a1 = "usd/primRange.h";
  *(a1 + 8) = "set_begin";
  *(a1 + 16) = 348;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::UsdPrimRange::set_begin(const iterator &)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
}

uint64_t sub_239F74E70(uint64_t a1)
{
  result = sub_239E56B60(a1);
  if (v2)
  {
    sub_239F17CC4();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

uint64_t sub_239F74EB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_239E56B60(a1);
  if (v4)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_239E56B60(result);
    if (v4)
    {
      sub_239F17CC4();
      return (*(v6 + 8))();
    }
  }

  return result;
}

void sub_239F74F34(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, __int128 **a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]");
  v4 = *a2;
  v5 = *a1;
  v6 = sub_239F21410(a1, *a1);
  v7 = v6;
  if (v5)
  {
    v8 = v5 << 6;
    v9 = v6;
    do
    {
      v10 = *v4;
      v11 = v4[1];
      v12 = v4[3];
      v9[2] = v4[2];
      v9[3] = v12;
      *v9 = v10;
      v9[1] = v11;
      v9 += 4;
      v4 += 4;
      v8 -= 64;
    }

    while (v8);
  }

  sub_239E56C80(a1);
  *a2 = v7;
}

void sub_239F74FC0(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a1, char **a2)
{
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(a1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]");
  v4 = *a2;
  v5 = *a1;
  v6 = sub_239F21F20(a1, *a1);
  v7 = v6;
  if (v5)
  {
    v8 = v5 << 7;
    v9 = v6;
    do
    {
      memcpy(v9, v4, 0x80uLL);
      v4 += 128;
      v9 += 128;
      v8 -= 128;
    }

    while (v8);
  }

  sub_239E56C80(a1);
  *a2 = v7;
}

void sub_239F75050()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]");
  v5 = sub_239E56B30();
  v7 = sub_239F32428(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 24 * v2;
    v10 = v7;
    do
    {
      v11 = *v3;
      v10[2] = *(v3 + 2);
      *v10 = v11;
      v10 += 3;
      v3 = (v3 + 24);
      v9 -= 24;
    }

    while (v9);
  }

  sub_239E56C80(v1);
  *v0 = v8;
}

void sub_239F750D0()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatf]");
  v5 = sub_239E56B30();
  v7 = sub_239F33230(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 16 * v2;
    v10 = v7;
    do
    {
      v11 = *v3++;
      *v10++ = v11;
      v9 -= 16;
    }

    while (v9);
  }

  sub_239E56C80(v1);
  *v0 = v8;
}

void sub_239F75140()
{
  sub_239ECA5AC();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v4, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatd]");
  v5 = sub_239E56B30();
  v7 = sub_239F33930(v5, v6);
  v8 = v7;
  if (v2)
  {
    v9 = 32 * v2;
    v10 = v7;
    do
    {
      v11 = *v3;
      v12 = v3[1];
      v3 += 2;
      *v10 = v11;
      v10[1] = v12;
      v10 += 2;
      v9 -= 32;
    }

    while (v9);
  }

  sub_239E56C80(v1);
  *v0 = v8;
}

uint64_t sub_239F751B0(uint64_t a1)
{
  sub_239E5B1C0(a1);
  result = *(v3 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v5)
    {
      sub_239F17CC4();
      result = (*(v6 + 8))();
    }
  }

  *v1 = *v2;
  return result;
}

uint64_t sub_239F75210(uint64_t a1)
{
  sub_239E5B1C0(a1);
  if (*v3 < 0)
  {
    operator delete(*v2);
  }

  result = *(v1 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v5)
    {
      sub_239F17CC4();
      return (*(v6 + 8))();
    }
  }

  return result;
}

uint64_t *sub_239F75278(uint64_t *result, uint64_t *a2)
{
  result[1] = &off_284D16248 + 1;
  v2 = *a2;
  *result = *a2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *result &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

uint64_t sub_239F752B8(uint64_t a1, uint64_t a2)
{
  sub_239E5B574(a1);
  result = *(a2 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v4)
    {
      sub_239F17CC4();
      return (*(v5 + 8))();
    }
  }

  return result;
}

uint64_t sub_239F7530C(uint64_t a1, uint64_t *a2)
{
  MEMORY[0x23EE7E610](a1);
  result = *a2;
  if (*a2)
  {
    result = sub_239E56B60(result);
    if (v4)
    {
      sub_239F17CC4();
      return (*(v5 + 8))();
    }
  }

  return result;
}

BOOL sub_239F75360(atomic_uint **a1, uint64_t a2, void *a3)
{
  sub_239F178C8(a1);
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_239E56B60(v5);
    if (v6)
    {
      sub_239F17CC4();
      (*(v7 + 8))();
    }
  }

  return *a3 == 0;
}

uint64_t sub_239F753C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_239E91CE0(a2, *a1);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  result = *(a4 + 8);
  if (result)
  {
    result = sub_239E56B60(result);
    if (v7)
    {
      sub_239F17CC4();
      return (*(v8 + 8))();
    }
  }

  return result;
}

void sub_239F75438(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_239F75464(uint64_t a1)
{
  v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
  *a1 = sub_239EF1FFC("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v2, 0x2Fu);
  *(a1 + 8) = "operator->";
  *(a1 + 16) = 186;
  *(a1 + 24) = "DataType *pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr, pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->() const [PtrTemplate = pxrInternal__aapl__pxrReserved__::TfWeakPtr, Type = pxrInternal__aapl__pxrReserved__::SdfLayer]";
  *(a1 + 32) = 0;
  v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  return sub_239F754D0(v3);
}

uint64_t sub_239F754D0(uint64_t a1)
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  v3[2] = 416;
  v3[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<int>::emplace_back(Args &&...) [T = int, Args = <int>]";
  v4 = 0;
  if (*(a1 + 12))
  {
    if (*(a1 + 16))
    {
      v1 = 4;
    }

    else
    {
      v1 = 3;
    }
  }

  else
  {
    v1 = 2;
  }

  return pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

uint64_t sub_239F7554C()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

uint64_t sub_239F755B8()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

uint64_t sub_239F75624()
{
  sub_239ECA59C();
  v2 = sub_239E5B1A4(v0, v1);
  v4 = v3(v2);
  sub_239ECA5B8(v4, v5);
  return sub_239E5B240(v7);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtStreamOut()
{
  return MEMORY[0x282205FA8]();
}

{
  return MEMORY[0x282205FB0]();
}

{
  return MEMORY[0x282205FB8]();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase()
{
  return MEMORY[0x282206190]();
}

{
  return MEMORY[0x282206198]();
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::UsdAttributeQuery()
{
  return MEMORY[0x282206420]();
}

{
  return MEMORY[0x282206428]();
}

void pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>()
{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdStage::Open()
{
  return MEMORY[0x282206BD8]();
}

{
  return MEMORY[0x282206BE8]();
}

{
  return MEMORY[0x282206BF0]();
}

uint64_t Alembic::Abc::v12::ErrorHandler::operator()()
{
  return MEMORY[0x282206D58]();
}

{
  return MEMORY[0x282206D60]();
}

void Alembic::Abc::v12::OCompoundProperty::~OCompoundProperty(Alembic::Abc::v12::OCompoundProperty *this)
{
  MEMORY[0x282206D90](this);
}

{
  MEMORY[0x282206D98](this);
}

void Alembic::Abc::v12::OObject::~OObject(Alembic::Abc::v12::OObject *this)
{
  MEMORY[0x282206DB0](this);
}

{
  MEMORY[0x282206DB8](this);
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2d>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<BOOL>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<double>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::GfMatrix4d>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::SdfAssetPath>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::TfToken>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>()
{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::UsdAttributeQuery::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>()
{
    ;
  }
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7928]();
}

uint64_t std::ofstream::open()
{
  return MEMORY[0x2821F79D8]();
}

{
  return MEMORY[0x2821F79E0]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}