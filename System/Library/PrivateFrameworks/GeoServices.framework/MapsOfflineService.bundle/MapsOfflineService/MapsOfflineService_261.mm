uint64_t sub_FEB648(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  result = sub_FEB1FC(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (v9 == v10)
  {
    v11 = a4[31];
    if (v11 >= 0)
    {
      v12 = a4 + 8;
    }

    else
    {
      v12 = *(a4 + 1);
    }

    if (v11 >= 0)
    {
      v13 = a4[31];
    }

    else
    {
      v13 = *(a4 + 2);
    }

    v14 = *(a3 + 1);
    v15 = a3[31];
    if (v15 >= 0)
    {
      v16 = a3 + 8;
    }

    else
    {
      v16 = *(a3 + 1);
    }

    if (v15 >= 0)
    {
      v17 = a3[31];
    }

    else
    {
      v17 = *(a3 + 2);
    }

    if (v17 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v17;
    }

    result = memcmp(v12, v16, v18);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v13 >= v17)
    {
      return result;
    }
  }

  else
  {
    if (v9 >= v10)
    {
      return result;
    }

    v14 = *(a3 + 1);
    LOBYTE(v15) = a3[31];
  }

  *(a3 + 1) = 0;
  *&v42 = *(a3 + 2);
  *(&v42 + 7) = *(a3 + 23);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v19 = *(a4 + 8);
  *(a3 + 3) = *(a4 + 3);
  *(a3 + 8) = v19;
  *a4 = v10;
  *(a4 + 23) = *(&v42 + 7);
  *(a4 + 1) = v14;
  *(a4 + 2) = v42;
  a4[31] = v15;
  v20 = *a3;
  v21 = *a2;
  if (v20 == v21)
  {
    v22 = a3[31];
    if (v22 >= 0)
    {
      v23 = a3 + 8;
    }

    else
    {
      v23 = *(a3 + 1);
    }

    if (v22 >= 0)
    {
      v24 = a3[31];
    }

    else
    {
      v24 = *(a3 + 2);
    }

    v25 = *(a2 + 1);
    v26 = a2[31];
    if (v26 >= 0)
    {
      v27 = a2 + 8;
    }

    else
    {
      v27 = *(a2 + 1);
    }

    if (v26 >= 0)
    {
      v28 = a2[31];
    }

    else
    {
      v28 = *(a2 + 2);
    }

    if (v28 >= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v28;
    }

    result = memcmp(v23, v27, v29);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v24 >= v28)
    {
      return result;
    }
  }

  else
  {
    if (v20 >= v21)
    {
      return result;
    }

    v25 = *(a2 + 1);
    LOBYTE(v26) = a2[31];
  }

  *(a2 + 1) = 0;
  *&v43 = *(a2 + 2);
  *(&v43 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v30 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v30;
  *a3 = v21;
  *(a3 + 1) = v25;
  *(a3 + 23) = *(&v43 + 7);
  *(a3 + 2) = v43;
  a3[31] = v26;
  v31 = *a2;
  v32 = *a1;
  if (v31 == v32)
  {
    v33 = a2[31];
    if (v33 >= 0)
    {
      v34 = a2 + 8;
    }

    else
    {
      v34 = *(a2 + 1);
    }

    if (v33 >= 0)
    {
      v35 = a2[31];
    }

    else
    {
      v35 = *(a2 + 2);
    }

    v36 = *(a1 + 1);
    v37 = a1[31];
    if (v37 >= 0)
    {
      v38 = a1 + 8;
    }

    else
    {
      v38 = *(a1 + 1);
    }

    if (v37 >= 0)
    {
      v39 = a1[31];
    }

    else
    {
      v39 = *(a1 + 2);
    }

    if (v39 >= v35)
    {
      v40 = v35;
    }

    else
    {
      v40 = v39;
    }

    result = memcmp(v34, v38, v40);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v35 >= v39)
    {
      return result;
    }
  }

  else
  {
    if (v31 >= v32)
    {
      return result;
    }

    v36 = *(a1 + 1);
    LOBYTE(v37) = a1[31];
  }

  *&v44 = *(a1 + 2);
  *(&v44 + 7) = *(a1 + 23);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = *a2;
  v41 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v41;
  *a2 = v32;
  *(a2 + 1) = v36;
  *(a2 + 23) = *(&v44 + 7);
  *(a2 + 2) = v44;
  a2[31] = v37;
  return result;
}

uint64_t sub_FEB938(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  result = sub_FEB648(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  if (v10 == v11)
  {
    v12 = a5[31];
    if (v12 >= 0)
    {
      v13 = a5 + 8;
    }

    else
    {
      v13 = *(a5 + 1);
    }

    if (v12 >= 0)
    {
      v14 = a5[31];
    }

    else
    {
      v14 = *(a5 + 2);
    }

    v15 = *(a4 + 1);
    v16 = a4[31];
    if (v16 >= 0)
    {
      v17 = a4 + 8;
    }

    else
    {
      v17 = *(a4 + 1);
    }

    if (v16 >= 0)
    {
      v18 = a4[31];
    }

    else
    {
      v18 = *(a4 + 2);
    }

    if (v18 >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    result = memcmp(v13, v17, v19);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v14 >= v18)
    {
      return result;
    }
  }

  else
  {
    if (v10 >= v11)
    {
      return result;
    }

    v15 = *(a4 + 1);
    LOBYTE(v16) = a4[31];
  }

  *(a4 + 1) = 0;
  *&v55 = *(a4 + 2);
  *(&v55 + 7) = *(a4 + 23);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *a4 = *a5;
  v20 = *(a5 + 8);
  *(a4 + 3) = *(a5 + 3);
  *(a4 + 8) = v20;
  *a5 = v11;
  *(a5 + 23) = *(&v55 + 7);
  *(a5 + 1) = v15;
  *(a5 + 2) = v55;
  a5[31] = v16;
  v21 = *a4;
  v22 = *a3;
  if (v21 == v22)
  {
    v23 = a4[31];
    if (v23 >= 0)
    {
      v24 = a4 + 8;
    }

    else
    {
      v24 = *(a4 + 1);
    }

    if (v23 >= 0)
    {
      v25 = a4[31];
    }

    else
    {
      v25 = *(a4 + 2);
    }

    v26 = *(a3 + 1);
    v27 = a3[31];
    if (v27 >= 0)
    {
      v28 = a3 + 8;
    }

    else
    {
      v28 = *(a3 + 1);
    }

    if (v27 >= 0)
    {
      v29 = a3[31];
    }

    else
    {
      v29 = *(a3 + 2);
    }

    if (v29 >= v25)
    {
      v30 = v25;
    }

    else
    {
      v30 = v29;
    }

    result = memcmp(v24, v28, v30);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v25 >= v29)
    {
      return result;
    }
  }

  else
  {
    if (v21 >= v22)
    {
      return result;
    }

    v26 = *(a3 + 1);
    LOBYTE(v27) = a3[31];
  }

  *(a3 + 1) = 0;
  *&v56 = *(a3 + 2);
  *(&v56 + 7) = *(a3 + 23);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v31 = *(a4 + 8);
  *(a3 + 3) = *(a4 + 3);
  *(a3 + 8) = v31;
  *a4 = v22;
  *(a4 + 1) = v26;
  *(a4 + 23) = *(&v56 + 7);
  *(a4 + 2) = v56;
  a4[31] = v27;
  v32 = *a3;
  v33 = *a2;
  if (v32 == v33)
  {
    v34 = a3[31];
    if (v34 >= 0)
    {
      v35 = a3 + 8;
    }

    else
    {
      v35 = *(a3 + 1);
    }

    if (v34 >= 0)
    {
      v36 = a3[31];
    }

    else
    {
      v36 = *(a3 + 2);
    }

    v37 = *(a2 + 1);
    v38 = a2[31];
    if (v38 >= 0)
    {
      v39 = a2 + 8;
    }

    else
    {
      v39 = *(a2 + 1);
    }

    if (v38 >= 0)
    {
      v40 = a2[31];
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v40 >= v36)
    {
      v41 = v36;
    }

    else
    {
      v41 = v40;
    }

    result = memcmp(v35, v39, v41);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v36 >= v40)
    {
      return result;
    }
  }

  else
  {
    if (v32 >= v33)
    {
      return result;
    }

    v37 = *(a2 + 1);
    LOBYTE(v38) = a2[31];
  }

  *(a2 + 1) = 0;
  *&v57 = *(a2 + 2);
  *(&v57 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v42 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v42;
  *a3 = v33;
  *(a3 + 1) = v37;
  *(a3 + 23) = *(&v57 + 7);
  *(a3 + 2) = v57;
  a3[31] = v38;
  v43 = *a2;
  v44 = *a1;
  if (v43 == v44)
  {
    v45 = a2[31];
    if (v45 >= 0)
    {
      v46 = a2 + 8;
    }

    else
    {
      v46 = *(a2 + 1);
    }

    if (v45 >= 0)
    {
      v47 = a2[31];
    }

    else
    {
      v47 = *(a2 + 2);
    }

    v48 = *(a1 + 1);
    v49 = a1[31];
    if (v49 >= 0)
    {
      v50 = a1 + 8;
    }

    else
    {
      v50 = *(a1 + 1);
    }

    if (v49 >= 0)
    {
      v51 = a1[31];
    }

    else
    {
      v51 = *(a1 + 2);
    }

    if (v51 >= v47)
    {
      v52 = v47;
    }

    else
    {
      v52 = v51;
    }

    result = memcmp(v46, v50, v52);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v47 >= v51)
    {
      return result;
    }
  }

  else
  {
    if (v43 >= v44)
    {
      return result;
    }

    v48 = *(a1 + 1);
    LOBYTE(v49) = a1[31];
  }

  *&v58 = *(a1 + 2);
  *(&v58 + 7) = *(a1 + 23);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = *a2;
  v53 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v53;
  *a2 = v44;
  *(a2 + 1) = v48;
  *(a2 + 23) = *(&v58 + 7);
  *(a2 + 2) = v58;
  a2[31] = v49;
  return result;
}

void sub_FEBD04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 32;
    if (a1 + 32 != a2)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        v8 = v5;
        v5 = v3;
        v7 = v8[32];
        v10 = *v8;
        if (v7 == v10)
        {
          v11 = v8[63];
          if (v11 >= 0)
          {
            v12 = v8 + 40;
          }

          else
          {
            v12 = *(v8 + 5);
          }

          if (v11 >= 0)
          {
            v13 = v8[63];
          }

          else
          {
            v13 = *(v8 + 6);
          }

          v14 = v8[31];
          if (v14 >= 0)
          {
            v15 = v8 + 8;
          }

          else
          {
            v15 = *(v8 + 1);
          }

          if (v14 >= 0)
          {
            v16 = v8[31];
          }

          else
          {
            v16 = *(v8 + 2);
          }

          if (v16 >= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          v18 = memcmp(v12, v15, v17);
          if (v18)
          {
            if ((v18 & 0x80000000) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v13 >= v16)
          {
            goto LABEL_7;
          }
        }

        else if (v7 >= v10)
        {
          goto LABEL_7;
        }

        v43 = v7;
        v44 = *(v8 + 40);
        v45 = *(v8 + 7);
        *(v8 + 5) = 0;
        *(v8 + 6) = 0;
        *(v8 + 7) = 0;
        v19 = v5[31];
        *v5 = *v8;
        if (v19 < 0)
        {
          operator delete(*(v5 + 1));
        }

        v6 = v8 + 8;
        *(v5 + 8) = *(v8 + 8);
        *(v5 + 3) = *(v8 + 3);
        v8[31] = 0;
        v8[8] = 0;
        if (v8 == a1)
        {
LABEL_5:
          LOBYTE(v7) = v43;
          v8 = a1;
          goto LABEL_6;
        }

        v20 = *(v8 - 32);
        if (v7 == v20)
        {
          if (v45 >= 0)
          {
            v21 = &v44;
          }

          else
          {
            v21 = v44;
          }

          if (v45 >= 0)
          {
            v22 = HIBYTE(v45);
          }

          else
          {
            v22 = *(&v44 + 1);
          }

          v23 = *(v8 - 1);
          if (v23 >= 0)
          {
            v24 = v8 - 24;
          }

          else
          {
            v24 = *(v8 - 3);
          }

          if (v23 >= 0)
          {
            v25 = *(v8 - 1);
          }

          else
          {
            v25 = *(v8 - 2);
          }

          if (v25 >= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = v25;
          }

          v27 = memcmp(v21, v24, v26);
          if (v27)
          {
            if ((v27 & 0x80000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (v22 >= v25)
          {
            goto LABEL_6;
          }
        }

        else if (v7 >= v20)
        {
          goto LABEL_6;
        }

        for (i = v4; ; i -= 32)
        {
          v29 = &a1[i];
          *v29 = v20;
          *(v29 + 8) = *&a1[i - 24];
          *(v29 + 3) = *&a1[i - 8];
          *(v29 - 1) = 0;
          *(v29 - 24) = 0;
          if (i == 32)
          {
            v6 = v29 - 24;
            goto LABEL_5;
          }

          LOBYTE(v7) = v43;
          v20 = *(v29 - 64);
          if (v43 != v20)
          {
            if (v43 >= v20)
            {
              goto LABEL_79;
            }

            continue;
          }

          v30 = &a1[i];
          v31 = v45 >= 0 ? &v44 : v44;
          v32 = v45 >= 0 ? HIBYTE(v45) : *(&v44 + 1);
          v35 = *(v30 - 7);
          v33 = v30 - 56;
          v34 = v35;
          v36 = v33[23];
          v37 = v36 >= 0 ? v33 : v34;
          v38 = v36 >= 0 ? v33[23] : *(v33 + 1);
          v39 = v38 >= v32 ? v32 : v38;
          v40 = memcmp(v31, v37, v39);
          if (!v40)
          {
            break;
          }

          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

LABEL_57:
          ;
        }

        if (v32 < v38)
        {
          goto LABEL_57;
        }

LABEL_79:
        v41 = &a1[i];
        v8 = &a1[i - 32];
        v6 = v41 - 24;
LABEL_6:
        *v8 = v7;
        v9 = v44;
        *(v6 + 2) = v45;
        *v6 = v9;
LABEL_7:
        v3 = v5 + 32;
        v4 += 32;
      }

      while (v5 + 32 != a2);
    }
  }
}

void sub_FEBFA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v41 = v2;
    v42 = v3;
    v5 = a1;
    v6 = a1 + 32;
    if (a1 + 32 != a2)
    {
      v7 = a1 + 8;
      do
      {
        v8 = v5;
        v5 = v6;
        v11 = v8[32];
        v12 = *v8;
        if (v11 == v12)
        {
          v13 = v8[63];
          if (v13 >= 0)
          {
            v14 = v8 + 40;
          }

          else
          {
            v14 = *(v8 + 5);
          }

          if (v13 >= 0)
          {
            v15 = v8[63];
          }

          else
          {
            v15 = *(v8 + 6);
          }

          v16 = v8[31];
          if (v16 >= 0)
          {
            v17 = v8 + 8;
          }

          else
          {
            v17 = *(v8 + 1);
          }

          if (v16 >= 0)
          {
            v18 = v8[31];
          }

          else
          {
            v18 = *(v8 + 2);
          }

          if (v18 >= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = v18;
          }

          v20 = memcmp(v14, v17, v19);
          if (v20)
          {
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (v15 >= v18)
          {
            goto LABEL_6;
          }
        }

        else if (v11 >= v12)
        {
          goto LABEL_6;
        }

        v38 = v11;
        v39 = *(v8 + 40);
        v40 = *(v8 + 7);
        *(v8 + 5) = 0;
        *(v8 + 6) = 0;
        *(v8 + 7) = 0;
        v21 = v5[31];
        *v5 = *v8;
        if (v21 < 0)
        {
          operator delete(*(v5 + 1));
        }

        v9 = v8 + 8;
        *(v5 + 8) = *(v8 + 8);
        *(v5 + 3) = *(v8 + 3);
        v8[31] = 0;
        v8[8] = 0;
        v22 = *(v8 - 32);
        if (v11 == v22)
        {
          if (v40 >= 0)
          {
            v23 = &v39;
          }

          else
          {
            v23 = v39;
          }

          if (v40 >= 0)
          {
            v24 = HIBYTE(v40);
          }

          else
          {
            v24 = *(&v39 + 1);
          }

          v25 = *(v8 - 1);
          if (v25 >= 0)
          {
            v26 = v8 - 24;
          }

          else
          {
            v26 = *(v8 - 3);
          }

          if (v25 >= 0)
          {
            v27 = *(v8 - 1);
          }

          else
          {
            v27 = *(v8 - 2);
          }

          if (v27 >= v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = v27;
          }

          v29 = memcmp(v23, v26, v28);
          if (v29)
          {
            if (v29 < 0)
            {
              goto LABEL_53;
            }
          }

          else if (v24 < v27)
          {
LABEL_53:
            for (i = v7; ; i -= 32)
            {
              *(i - 8) = v22;
              *i = *(i - 2);
              *(i + 2) = *(i - 2);
              *(i - 9) = 0;
              *(i - 32) = 0;
              LOBYTE(v11) = v38;
              v22 = *(i - 72);
              if (v38 == v22)
              {
                if (v40 >= 0)
                {
                  v31 = &v39;
                }

                else
                {
                  v31 = v39;
                }

                if (v40 >= 0)
                {
                  v32 = HIBYTE(v40);
                }

                else
                {
                  v32 = *(&v39 + 1);
                }

                v33 = *(i - 41);
                if (v33 >= 0)
                {
                  v34 = i - 64;
                }

                else
                {
                  v34 = *(i - 8);
                }

                if (v33 >= 0)
                {
                  v35 = *(i - 41);
                }

                else
                {
                  v35 = *(i - 7);
                }

                if (v35 >= v32)
                {
                  v36 = v32;
                }

                else
                {
                  v36 = v35;
                }

                v37 = memcmp(v31, v34, v36);
                if (v37)
                {
                  if ((v37 & 0x80000000) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                else if (v32 >= v35)
                {
LABEL_4:
                  v8 = i - 40;
                  v9 = i - 32;
                  break;
                }
              }

              else if (v38 >= v22)
              {
                goto LABEL_4;
              }
            }
          }
        }

        else if (v11 < v22)
        {
          goto LABEL_53;
        }

        *v8 = v11;
        v10 = v39;
        *(v9 + 2) = v40;
        *v9 = v10;
LABEL_6:
        v6 = v5 + 32;
        v7 += 32;
      }

      while (v5 + 32 != a2);
    }
  }
}

unsigned __int8 *sub_FEC220(unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  v68 = *a1;
  v4 = *a1;
  v69 = *(a1 + 8);
  v70 = *(a1 + 3);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v5 = *(a2 - 32);
  if (v4 != v5)
  {
    if (v4 >= v5)
    {
      goto LABEL_46;
    }

    v6 = HIBYTE(v70);
    v8 = *(&v69 + 1);
    v16 = v69;
    v7 = HIBYTE(v70);
    goto LABEL_23;
  }

  v6 = HIBYTE(v70);
  v7 = HIBYTE(v70);
  v8 = *(&v69 + 1);
  v67 = v69;
  if (v70 >= 0)
  {
    v9 = &v69;
  }

  else
  {
    v9 = v69;
  }

  if (v70 >= 0)
  {
    v10 = HIBYTE(v70);
  }

  else
  {
    v10 = *(&v69 + 1);
  }

  v11 = *(a2 - 1);
  if (v11 >= 0)
  {
    v12 = (a2 - 24);
  }

  else
  {
    v12 = *(a2 - 24);
  }

  if (v11 >= 0)
  {
    v13 = *(v2 - 1);
  }

  else
  {
    v13 = *(v2 - 16);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (!v15)
  {
    v16 = v67;
    if (v10 >= v13)
    {
      goto LABEL_46;
    }

LABEL_23:
    if (v7 >= 0)
    {
      v17 = &v69;
    }

    else
    {
      v17 = v16;
    }

    if (v7 >= 0)
    {
      v8 = v6;
    }

    for (i = a1 + 32; ; i += 32)
    {
      v19 = *i;
      if (v4 == v19)
      {
        v20 = i[31];
        if (v20 >= 0)
        {
          v21 = i + 8;
        }

        else
        {
          v21 = *(i + 1);
        }

        if (v20 >= 0)
        {
          v22 = i[31];
        }

        else
        {
          v22 = *(i + 2);
        }

        if (v22 >= v8)
        {
          v23 = v8;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v17, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_69;
          }
        }

        else if (v8 < v22)
        {
          goto LABEL_69;
        }
      }

      else if (v4 < v19)
      {
        goto LABEL_69;
      }
    }
  }

  v16 = v67;
  if (v15 < 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  i = a1 + 32;
  if ((a1 + 32) < v2)
  {
    if (v70 >= 0)
    {
      v25 = &v69;
    }

    else
    {
      v25 = v69;
    }

    if (v70 >= 0)
    {
      v26 = HIBYTE(v70);
    }

    else
    {
      v26 = *(&v69 + 1);
    }

    do
    {
      v27 = *i;
      if (v4 == v27)
      {
        v28 = i[31];
        if (v28 >= 0)
        {
          v29 = i + 8;
        }

        else
        {
          v29 = *(i + 1);
        }

        if (v28 >= 0)
        {
          v30 = i[31];
        }

        else
        {
          v30 = *(i + 2);
        }

        if (v30 >= v26)
        {
          v31 = v26;
        }

        else
        {
          v31 = v30;
        }

        v32 = memcmp(v25, v29, v31);
        if (v32)
        {
          if (v32 < 0)
          {
            break;
          }
        }

        else if (v26 < v30)
        {
          break;
        }
      }

      else if (v4 < v27)
      {
        break;
      }

      i += 32;
    }

    while (i < v2);
  }

LABEL_69:
  if (i < v2)
  {
    if (v70 >= 0)
    {
      v33 = &v69;
    }

    else
    {
      v33 = v69;
    }

    if (v70 >= 0)
    {
      v34 = HIBYTE(v70);
    }

    else
    {
      v34 = *(&v69 + 1);
    }

    for (v2 -= 32; ; v2 -= 32)
    {
      if (v4 == v5)
      {
        v36 = *(v2 + 31);
        if (v36 >= 0)
        {
          v37 = (v2 + 8);
        }

        else
        {
          v37 = *(v2 + 8);
        }

        if (v36 >= 0)
        {
          v38 = *(v2 + 31);
        }

        else
        {
          v38 = *(v2 + 16);
        }

        if (v38 >= v34)
        {
          v39 = v34;
        }

        else
        {
          v39 = v38;
        }

        v40 = memcmp(v33, v37, v39);
        if (v40)
        {
          if ((v40 & 0x80000000) == 0)
          {
            break;
          }
        }

        else if (v34 >= v38)
        {
          break;
        }
      }

      else if (v4 >= v5)
      {
        break;
      }

      v35 = *(v2 - 32);
      v5 = v35;
    }
  }

  if (i < v2)
  {
    v41 = *i;
    do
    {
      v42 = *(i + 1);
      v43 = *(i + 2);
      *&v71[7] = *(i + 23);
      *v71 = v43;
      v44 = i[31];
      *(i + 2) = 0;
      *(i + 3) = 0;
      *(i + 1) = 0;
      *i = *v2;
      v45 = *(v2 + 8);
      *(i + 3) = *(v2 + 24);
      *(i + 8) = v45;
      *v2 = v41;
      *(v2 + 8) = v42;
      *(v2 + 23) = *&v71[7];
      *(v2 + 16) = *v71;
      *(v2 + 31) = v44;
      LOBYTE(v4) = v68;
      if (v70 >= 0)
      {
        v46 = &v69;
      }

      else
      {
        v46 = v69;
      }

      if (v70 >= 0)
      {
        v47 = HIBYTE(v70);
      }

      else
      {
        v47 = *(&v69 + 1);
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v48 = i[32];
            i += 32;
            v41 = v48;
            v49 = v68 >= v48;
            if (v68 == v48)
            {
              break;
            }

            if (!v49)
            {
              goto LABEL_120;
            }
          }

          v50 = i[31];
          v51 = v50 >= 0 ? i + 8 : *(i + 1);
          v52 = v50 >= 0 ? i[31] : *(i + 2);
          v53 = v52 >= v47 ? v47 : v52;
          v54 = memcmp(v46, v51, v53);
          if (!v54)
          {
            break;
          }

          if (v54 < 0)
          {
            goto LABEL_120;
          }
        }
      }

      while (v47 >= v52);
      do
      {
        while (1)
        {
LABEL_120:
          while (1)
          {
            v55 = *(v2 - 32);
            v2 -= 32;
            v56 = v68 >= v55;
            if (v68 == v55)
            {
              break;
            }

            if (v56)
            {
              goto LABEL_95;
            }
          }

          v57 = *(v2 + 31);
          v58 = v57 >= 0 ? (v2 + 8) : *(v2 + 8);
          v59 = v57 >= 0 ? *(v2 + 31) : *(v2 + 16);
          v60 = v59 >= v47 ? v47 : v59;
          v61 = memcmp(v46, v58, v60);
          if (!v61)
          {
            break;
          }

          if ((v61 & 0x80000000) == 0)
          {
            goto LABEL_95;
          }
        }
      }

      while (v47 < v59);
LABEL_95:
      ;
    }

    while (i < v2);
  }

  if (i - 32 == a1)
  {
    v64 = *(i - 1);
    *(i - 32) = v4;
    v62 = i - 24;
    if (v64 < 0)
    {
      operator delete(*v62);
    }
  }

  else
  {
    *a1 = *(i - 32);
    if (a1[31] < 0)
    {
      operator delete(*(a1 + 1));
    }

    v62 = i - 24;
    v63 = *(i - 24);
    *(a1 + 3) = *(i - 1);
    *(a1 + 8) = v63;
    *(i - 1) = 0;
    *(i - 24) = 0;
    *(i - 32) = v68;
  }

  v65 = v69;
  *(v62 + 2) = v70;
  *v62 = v65;
  return i;
}

unsigned __int8 *sub_FEC66C(unsigned __int8 *a1, unint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v63 = *a1;
  v65 = *(a1 + 3);
  v6 = v65;
  v64 = *(a1 + 8);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v7 = HIBYTE(v6);
  if ((v7 & 0x80u) == 0)
  {
    v8 = &v64;
  }

  else
  {
    v8 = v64;
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(&v64 + 1);
  }

  while (1)
  {
    v10 = &a1[v4];
    v11 = a1[v4 + 32];
    if (v11 != v5)
    {
      if (v11 >= v5)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v14 = *(v10 + 5);
    v12 = v10 + 40;
    v13 = v14;
    v15 = v12[23];
    v16 = v15 >= 0 ? v12 : v13;
    v17 = v15 >= 0 ? v12[23] : *(v12 + 1);
    v18 = v9 >= v17 ? v17 : v9;
    v19 = memcmp(v16, v8, v18);
    if (!v19)
    {
      break;
    }

    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 32;
  }

  if (v17 < v9)
  {
    goto LABEL_8;
  }

LABEL_23:
  v20 = &a1[v4 + 32];
  if (!v4)
  {
LABEL_59:
    if (v20 >= a2)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v29 = *(a2 - 32);
      a2 -= 32;
      v30 = v29 >= v5;
      if (v29 == v5)
      {
        v31 = *(a2 + 31);
        if (v31 >= 0)
        {
          v32 = (a2 + 8);
        }

        else
        {
          v32 = *(a2 + 8);
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 31);
        }

        else
        {
          v33 = *(a2 + 16);
        }

        if (v9 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v9;
        }

        v35 = memcmp(v32, v8, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v30 = v33 >= v9;
      }

      if (!v30 || v20 >= a2)
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v21 = *(a2 - 32);
        a2 -= 32;
        v22 = v21 >= v5;
        if (v21 == v5)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_60;
        }
      }

      v23 = *(a2 + 31);
      v24 = v23 >= 0 ? (a2 + 8) : *(a2 + 8);
      v25 = v23 >= 0 ? *(a2 + 31) : *(a2 + 16);
      v26 = v9 >= v25 ? v25 : v9;
      v27 = memcmp(v24, v8, v26);
      if (!v27)
      {
        break;
      }

      if (v27 < 0)
      {
        goto LABEL_60;
      }
    }
  }

  while (v25 >= v9);
LABEL_60:
  v36 = v20;
  if (v20 < a2)
  {
    v37 = a2;
    do
    {
      v38 = *(v36 + 1);
      v39 = *(v36 + 2);
      *&v66[7] = *(v36 + 23);
      *v66 = v39;
      v40 = v36[31];
      *(v36 + 2) = 0;
      *(v36 + 3) = 0;
      *(v36 + 1) = 0;
      *v36 = *v37;
      v41 = *(v37 + 8);
      *(v36 + 3) = *(v37 + 24);
      *(v36 + 8) = v41;
      *v37 = v11;
      *(v37 + 8) = v38;
      *(v37 + 23) = *&v66[7];
      *(v37 + 16) = *v66;
      *(v37 + 31) = v40;
      LOBYTE(v5) = v63;
      if (v65 >= 0)
      {
        v42 = &v64;
      }

      else
      {
        v42 = v64;
      }

      if (v65 >= 0)
      {
        v43 = HIBYTE(v65);
      }

      else
      {
        v43 = *(&v64 + 1);
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v44 = v36[32];
            v36 += 32;
            LOBYTE(v11) = v44;
            v45 = v44 >= v63;
            if (v44 == v63)
            {
              break;
            }

            if (v45)
            {
              goto LABEL_87;
            }
          }

          v46 = v36[31];
          v47 = v46 >= 0 ? v36 + 8 : *(v36 + 1);
          v48 = v46 >= 0 ? v36[31] : *(v36 + 2);
          v49 = v43 >= v48 ? v48 : v43;
          v50 = memcmp(v47, v42, v49);
          if (!v50)
          {
            break;
          }

          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }
        }
      }

      while (v48 < v43);
      do
      {
        while (1)
        {
LABEL_87:
          while (1)
          {
            v51 = *(v37 - 32);
            v37 -= 32;
            v52 = v51 >= v63;
            if (v51 == v63)
            {
              break;
            }

            if (!v52)
            {
              goto LABEL_62;
            }
          }

          v53 = *(v37 + 31);
          v54 = v53 >= 0 ? (v37 + 8) : *(v37 + 8);
          v55 = v53 >= 0 ? *(v37 + 31) : *(v37 + 16);
          v56 = v43 >= v55 ? v55 : v43;
          v57 = memcmp(v54, v42, v56);
          if (!v57)
          {
            break;
          }

          if (v57 < 0)
          {
            goto LABEL_62;
          }
        }
      }

      while (v55 >= v43);
LABEL_62:
      ;
    }

    while (v36 < v37);
  }

  if (v36 - 32 == a1)
  {
    v60 = *(v36 - 1);
    *(v36 - 32) = v5;
    v58 = v36 - 24;
    if (v60 < 0)
    {
      operator delete(*v58);
    }
  }

  else
  {
    *a1 = *(v36 - 32);
    if (a1[31] < 0)
    {
      operator delete(*(a1 + 1));
    }

    v58 = v36 - 24;
    v59 = *(v36 - 24);
    *(a1 + 3) = *(v36 - 1);
    *(a1 + 8) = v59;
    *(v36 - 1) = 0;
    *(v36 - 24) = 0;
    *(v36 - 32) = v63;
  }

  v61 = v64;
  *(v58 + 2) = v65;
  *v58 = v61;
  return v36 - 32;
}

BOOL sub_FECA10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_FEB1FC(a1, a1 + 32, a2 - 32);
        return 1;
      case 4:
        sub_FEB648(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        sub_FEB938(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 32);
      v6 = *a1;
      if (v5 == v6)
      {
        v7 = *(a2 - 1);
        if (v7 >= 0)
        {
          v8 = a2 - 24;
        }

        else
        {
          v8 = *(a2 - 3);
        }

        if (v7 >= 0)
        {
          v9 = *(a2 - 1);
        }

        else
        {
          v9 = *(a2 - 2);
        }

        v10 = *(a1 + 1);
        v11 = a1[31];
        if (v11 >= 0)
        {
          v12 = a1 + 8;
        }

        else
        {
          v12 = *(a1 + 1);
        }

        if (v11 >= 0)
        {
          v13 = a1[31];
        }

        else
        {
          v13 = *(a1 + 2);
        }

        if (v13 >= v9)
        {
          v14 = v9;
        }

        else
        {
          v14 = v13;
        }

        v15 = memcmp(v8, v12, v14);
        if (v15)
        {
          if (v15 < 0)
          {
            goto LABEL_84;
          }

          return 1;
        }

        if (v9 >= v13)
        {
          return 1;
        }
      }

      else
      {
        if (v5 >= v6)
        {
          return 1;
        }

        v10 = *(a1 + 1);
        LOBYTE(v11) = a1[31];
      }

LABEL_84:
      *v48 = *(a1 + 2);
      *&v48[7] = *(a1 + 23);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *a1 = *(v2 - 32);
      v45 = *(v2 - 24);
      *(a1 + 3) = *(v2 - 1);
      *(a1 + 8) = v45;
      *(v2 - 32) = v6;
      *(v2 - 9) = *&v48[7];
      *(v2 - 3) = v10;
      *(v2 - 2) = *v48;
      *(v2 - 1) = v11;
      return 1;
    }
  }

  v16 = a1 + 64;
  sub_FEB1FC(a1, a1 + 32, a1 + 64);
  v17 = a1 + 96;
  if (a1 + 96 == v2)
  {
    return 1;
  }

  v18 = 0;
  v47 = 0;
  v46 = v2;
  while (2)
  {
    v19 = *v17;
    v20 = *v16;
    if (v19 == v20)
    {
      v21 = v17[31];
      if (v21 >= 0)
      {
        v22 = v17 + 8;
      }

      else
      {
        v22 = *(v17 + 1);
      }

      if (v21 >= 0)
      {
        v23 = v17[31];
      }

      else
      {
        v23 = *(v17 + 2);
      }

      v24 = v16[31];
      if (v24 >= 0)
      {
        v25 = v16 + 8;
      }

      else
      {
        v25 = *(v16 + 1);
      }

      if (v24 >= 0)
      {
        v26 = v16[31];
      }

      else
      {
        v26 = *(v16 + 2);
      }

      if (v26 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      v28 = memcmp(v22, v25, v27);
      if (v28)
      {
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v23 >= v26)
      {
        goto LABEL_30;
      }
    }

    else if (v19 >= v20)
    {
      goto LABEL_30;
    }

    v48[0] = v19;
    *&v48[8] = *(v17 + 8);
    v49 = *(v17 + 3);
    *(v17 + 1) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *v17 = *v16;
    *(v17 + 8) = *(v16 + 8);
    *(v17 + 3) = *(v16 + 3);
    v16[31] = 0;
    v16[8] = 0;
    v29 = v18;
    do
    {
      v32 = &a1[v29];
      v33 = v48[0];
      v34 = a1[v29 + 32];
      v30 = v48[0] >= v34;
      if (v48[0] != v34)
      {
        goto LABEL_55;
      }

      if (v49 >= 0)
      {
        v35 = &v48[8];
      }

      else
      {
        v35 = *&v48[8];
      }

      if (v49 >= 0)
      {
        v36 = HIBYTE(v49);
      }

      else
      {
        v36 = *&v48[16];
      }

      v37 = v32[63];
      if (v37 >= 0)
      {
        v38 = v32 + 40;
      }

      else
      {
        v38 = *(v32 + 5);
      }

      if (v37 >= 0)
      {
        v39 = v32[63];
      }

      else
      {
        v39 = *(v32 + 6);
      }

      if (v39 >= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = v39;
      }

      v41 = memcmp(v35, v38, v40);
      if (!v41)
      {
        v30 = v36 >= v39;
LABEL_55:
        if (v30)
        {
          goto LABEL_75;
        }

        goto LABEL_56;
      }

      if ((v41 & 0x80000000) == 0)
      {
LABEL_75:
        v42 = &a1[v29 + 72];
        v43 = &a1[v29 + 64];
        goto LABEL_77;
      }

LABEL_56:
      v32[64] = v34;
      v31 = &a1[v29];
      *(v31 + 72) = *&a1[v29 + 40];
      *(v31 + 11) = *&a1[v29 + 56];
      v31[63] = 0;
      v31[40] = 0;
      v29 -= 32;
    }

    while (v29 != -64);
    v33 = v48[0];
    v42 = a1 + 8;
    v43 = a1;
LABEL_77:
    *v43 = v33;
    *v42 = *&v48[8];
    *(v42 + 2) = v49;
    v2 = v46;
    if (v47 != 7)
    {
      ++v47;
LABEL_30:
      v16 = v17;
      v18 += 32;
      v17 += 32;
      if (v17 == v2)
      {
        return 1;
      }

      continue;
    }

    return v17 + 32 == v46;
  }
}

__n128 sub_FECDE0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v67 = v4;
  v68 = v5;
  v8 = v6 >> 1;
  if ((v6 >> 1) < &a4[-a1] >> 5)
  {
    return result;
  }

  v10 = &a4[-a1] >> 4;
  v11 = v10 + 1;
  v12 = (a1 + 32 * (v10 + 1));
  v13 = v10 + 2;
  if (v10 + 2 < a3)
  {
    v14 = v12[32];
    v15 = *v12;
    if (v15 != v14)
    {
      if (v15 >= v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v16 = a4;
    v17 = v12[31];
    if (v17 >= 0)
    {
      v18 = v12 + 8;
    }

    else
    {
      v18 = *(v12 + 1);
    }

    if (v17 >= 0)
    {
      v19 = v12[31];
    }

    else
    {
      v19 = *(v12 + 2);
    }

    v20 = v12[63];
    if (v20 >= 0)
    {
      v21 = v12 + 40;
    }

    else
    {
      v21 = *(v12 + 5);
    }

    if (v20 >= 0)
    {
      v22 = v12[63];
    }

    else
    {
      v22 = *(v12 + 6);
    }

    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v18, v21, v23);
    if (v24)
    {
      a4 = v16;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    a4 = v16;
    if (v19 < v22)
    {
LABEL_24:
      v12 += 32;
      v11 = v13;
    }
  }

LABEL_25:
  v26 = *v12;
  v27 = *a4;
  v28 = v26 >= v27;
  if (v26 == v27)
  {
    v29 = v12[31];
    if (v29 >= 0)
    {
      v30 = v12 + 8;
    }

    else
    {
      v30 = *(v12 + 1);
    }

    if (v29 >= 0)
    {
      v31 = v12[31];
    }

    else
    {
      v31 = *(v12 + 2);
    }

    v32 = a4;
    v33 = a4[31];
    if (v33 >= 0)
    {
      v34 = a4 + 8;
    }

    else
    {
      v34 = *(a4 + 1);
    }

    if (v33 >= 0)
    {
      v35 = a4[31];
    }

    else
    {
      v35 = *(a4 + 2);
    }

    if (v35 >= v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = v35;
    }

    v37 = memcmp(v30, v34, v36);
    if (v37)
    {
      a4 = v32;
      if (v37 < 0)
      {
        return result;
      }

      goto LABEL_47;
    }

    v28 = v31 >= v35;
    a4 = v32;
  }

  if (!v28)
  {
    return result;
  }

LABEL_47:
  v64 = v27;
  v65 = *(a4 + 8);
  v66 = *(a4 + 3);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *a4 = *v12;
  v38 = (v12 + 8);
  v39 = *(v12 + 8);
  *(a4 + 3) = *(v12 + 3);
  *(a4 + 8) = v39;
  v12[31] = 0;
  v12[8] = 0;
  if (v8 >= v11)
  {
    v63 = v8;
    while (1)
    {
      v41 = v12;
      v43 = 2 * v11;
      v11 = (2 * v11) | 1;
      v12 = (a1 + 32 * v11);
      v44 = v43 + 2;
      if (v43 + 2 >= a3)
      {
        goto LABEL_76;
      }

      v45 = v12[32];
      v46 = *v12;
      if (v46 != v45)
      {
        break;
      }

      v47 = v12[31];
      if (v47 >= 0)
      {
        v48 = v12 + 8;
      }

      else
      {
        v48 = *(v12 + 1);
      }

      if (v47 >= 0)
      {
        v49 = v12[31];
      }

      else
      {
        v49 = *(v12 + 2);
      }

      v50 = v12[63];
      if (v50 >= 0)
      {
        v51 = v12 + 40;
      }

      else
      {
        v51 = *(v12 + 5);
      }

      if (v50 >= 0)
      {
        v52 = v12[63];
      }

      else
      {
        v52 = *(v12 + 6);
      }

      if (v52 >= v49)
      {
        v53 = v49;
      }

      else
      {
        v53 = v52;
      }

      v54 = memcmp(v48, v51, v53);
      if (v54)
      {
        v8 = v63;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_75:
        v12 += 32;
        v11 = v44;
        goto LABEL_76;
      }

      v28 = v49 >= v52;
      v8 = v63;
      if (!v28)
      {
        goto LABEL_75;
      }

LABEL_76:
      v55 = *v12;
      v40 = v64;
      if (v55 == v64)
      {
        v56 = v12[31];
        if (v56 >= 0)
        {
          v57 = v12 + 8;
        }

        else
        {
          v57 = *(v12 + 1);
        }

        if (v56 >= 0)
        {
          v58 = v12[31];
        }

        else
        {
          v58 = *(v12 + 2);
        }

        if (v66 >= 0)
        {
          v59 = &v65;
        }

        else
        {
          v59 = v65.n128_u64[0];
        }

        if (v66 >= 0)
        {
          v60 = HIBYTE(v66);
        }

        else
        {
          v60 = v65.n128_u64[1];
        }

        if (v60 >= v58)
        {
          v61 = v58;
        }

        else
        {
          v61 = v60;
        }

        v62 = memcmp(v57, v59, v61);
        if (v62)
        {
          v8 = v63;
          if (v62 < 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v28 = v58 >= v60;
          v8 = v63;
          if (!v28)
          {
            goto LABEL_49;
          }
        }
      }

      else if (v55 < v64)
      {
        goto LABEL_49;
      }

      *v41 = v55;
      v38 = (v12 + 8);
      v42 = *(v12 + 8);
      *(v41 + 3) = *(v12 + 3);
      *(v41 + 8) = v42;
      v12[31] = 0;
      v12[8] = 0;
      if (v8 < v11)
      {
        goto LABEL_48;
      }
    }

    if (v46 >= v45)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_48:
  v40 = v64;
  v41 = v12;
LABEL_49:
  *v41 = v40;
  result = v65;
  v38[1].n128_u64[0] = v66;
  *v38 = result;
  return result;
}

void sub_FED13C(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *result;
    v6 = *(result + 1);
    *v14 = *(result + 2);
    *&v14[7] = *(result + 23);
    v7 = result[31];
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 1) = 0;
    v10 = sub_FED2B8(result, a3, a4);
    if (v10 == a2 - 32)
    {
      *v10 = v5;
      if (*(v10 + 31) < 0)
      {
        v13 = v10;
        operator delete(*(v10 + 8));
        v10 = v13;
      }

      *(v10 + 8) = v6;
      *(v10 + 16) = *v14;
      *(v10 + 23) = *&v14[7];
      *(v10 + 31) = v7;
    }

    else
    {
      *v10 = *(a2 - 32);
      if (*(v10 + 31) < 0)
      {
        v11 = v10;
        operator delete(*(v10 + 8));
        v10 = v11;
      }

      v12 = *(a2 - 24);
      *(v10 + 24) = *(a2 - 8);
      *(v10 + 8) = v12;
      *(a2 - 32) = v5;
      *(a2 - 24) = v6;
      *(a2 - 16) = *v14;
      *(a2 - 9) = *&v14[7];
      *(a2 - 1) = v7;
      sub_FED3FC(result, v10 + 32, a3, (v10 + 32 - result) >> 5);
    }
  }
}

void sub_FED2A0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FED2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = a1 + 32 * v5;
    v7 = v9 + 32;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v13 = v9 + 64;
      v12 = *(v9 + 64);
      v14 = *(v9 + 32);
      if (v14 == v12)
      {
        v17 = *(v9 + 72);
        v15 = v9 + 72;
        v16 = v17;
        v18 = *(v15 - 9);
        if (v18 >= 0)
        {
          v19 = (v15 - 32);
        }

        else
        {
          v19 = *(v15 - 32);
        }

        if (v18 >= 0)
        {
          v20 = *(v15 - 9);
        }

        else
        {
          v20 = *(v15 - 24);
        }

        v21 = *(v15 + 23);
        if (v21 >= 0)
        {
          v22 = v15;
        }

        else
        {
          v22 = v16;
        }

        if (v21 >= 0)
        {
          v23 = *(v15 + 23);
        }

        else
        {
          v23 = *(v15 + 8);
        }

        if (v23 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        v25 = memcmp(v19, v22, v24);
        if (v25)
        {
          if (v25 < 0)
          {
            goto LABEL_2;
          }
        }

        else if (v20 < v23)
        {
LABEL_2:
          v7 = v13;
          v5 = v11;
        }
      }

      else if (v14 < v12)
      {
        goto LABEL_2;
      }
    }

    *a1 = *v7;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v8 = *(v7 + 8);
    *(a1 + 24) = *(v7 + 24);
    *(a1 + 8) = v8;
    *(v7 + 31) = 0;
    *(v7 + 8) = 0;
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

__n128 sub_FED3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 32 * (v4 >> 1));
    v8 = *v7;
    v9 = *(a2 - 32);
    if (v8 == v9)
    {
      v10 = v7[31];
      if (v10 >= 0)
      {
        v11 = v7 + 8;
      }

      else
      {
        v11 = *(v7 + 1);
      }

      if (v10 >= 0)
      {
        v12 = v7[31];
      }

      else
      {
        v12 = *(v7 + 2);
      }

      v13 = a2;
      v14 = *(a2 - 1);
      v15 = *(a2 - 16);
      if ((v14 & 0x80u) == 0)
      {
        v16 = (a2 - 24);
      }

      else
      {
        v16 = *(a2 - 24);
      }

      if ((v14 & 0x80u) == 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      if (v17 >= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v11, v16, v18);
      if (v19)
      {
        a2 = v13;
        if ((v19 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else
      {
        a2 = v13;
        if (v12 >= v17)
        {
          return result;
        }
      }
    }

    else if (v8 >= v9)
    {
      return result;
    }

    v36 = v9;
    v37 = *(a2 - 24);
    v38 = *(a2 - 8);
    *(a2 - 24) = 0;
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    *(a2 - 32) = *v7;
    v21 = (v7 + 8);
    v22 = *(v7 + 8);
    *(a2 - 8) = *(v7 + 3);
    *(a2 - 24) = v22;
    v7[31] = 0;
    v7[8] = 0;
    if (v4 >= 2)
    {
      v23 = v9;
      if (v38 >= 0)
      {
        v25 = &v37;
      }

      else
      {
        v25 = v37.n128_u64[0];
      }

      __s2 = v25;
      if (v38 >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37.n128_u64[1];
      }

      do
      {
        v24 = v7;
        v28 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 32 * v6);
        v29 = *v7;
        if (v29 == v36)
        {
          v30 = v7[31];
          if (v30 >= 0)
          {
            v31 = v7 + 8;
          }

          else
          {
            v31 = *(v7 + 1);
          }

          if (v30 >= 0)
          {
            v32 = v7[31];
          }

          else
          {
            v32 = *(v7 + 2);
          }

          if (v26 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v26;
          }

          v34 = memcmp(v31, __s2, v33);
          if (v34)
          {
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_26;
            }
          }

          else if (v32 >= v26)
          {
            goto LABEL_26;
          }
        }

        else if (v29 >= v36)
        {
          goto LABEL_26;
        }

        *v24 = v29;
        v21 = (v7 + 8);
        v27 = *(v7 + 3);
        *(v24 + 8) = *(v7 + 8);
        *(v24 + 3) = v27;
        v7[31] = 0;
        v7[8] = 0;
      }

      while (v28 >= 2);
    }

    v23 = v36;
    v24 = v7;
LABEL_26:
    *v24 = v23;
    result = v37;
    v21[1].n128_u64[0] = v38;
    *v21 = result;
  }

  return result;
}

unsigned __int8 *sub_FED600(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a2;
    if (a1 + 32 != a2)
    {
      v5 = *a1;
      while (1)
      {
        v7 = v5;
        v5 = a1[32];
        if (v7 == v5)
        {
          v8 = a1[31];
          if (v8 >= 0)
          {
            v9 = a1[31];
          }

          else
          {
            v9 = *(a1 + 2);
          }

          v10 = a1[63];
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(a1 + 6);
          }

          if (v9 == v10)
          {
            v12 = v8 >= 0 ? a1 + 8 : *(a1 + 1);
            v13 = v11 >= 0 ? a1 + 40 : *(a1 + 5);
            if (!memcmp(v12, v13, v9))
            {
              break;
            }
          }
        }

        v6 = a1 + 64;
        a1 += 32;
        if (v6 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (a1 != a2)
      {
        for (i = a1 + 64; i != a2; i += 32)
        {
          v16 = *i;
          if (*a1 != v16)
          {
            goto LABEL_23;
          }

          v17 = a1[31];
          if (v17 >= 0)
          {
            v18 = a1[31];
          }

          else
          {
            v18 = *(a1 + 2);
          }

          v19 = i[31];
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(i + 2);
          }

          if (v18 == v19)
          {
            v21 = v17 >= 0 ? a1 + 8 : *(a1 + 1);
            v22 = v20 >= 0 ? i + 8 : *(i + 1);
            if (!memcmp(v21, v22, v18))
            {
              continue;
            }
          }

LABEL_23:
          a1[32] = v16;
          a1 += 32;
          if (a1[31] < 0)
          {
            operator delete(*(a1 + 1));
          }

          v15 = *(i + 8);
          *(a1 + 3) = *(i + 3);
          *(a1 + 8) = v15;
          i[31] = 0;
          i[8] = 0;
        }

        return a1 + 32;
      }
    }
  }

  return result;
}

void sub_FED7B0(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_FED8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_FED8F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    for (i = a1; i != a2; i += 552)
    {
      sub_F63718(&v14, i);
      v7 = a3[1];
      if (v7 >= a3[2])
      {
        v9 = sub_FEDA38(a3, &v14);
        v10 = SHIBYTE(v17);
        a3[1] = v9;
        if (v10 < 0)
        {
          operator delete(__p);
          v11 = v14;
          if (v14)
          {
LABEL_10:
            v12 = *(&v14 + 1);
            v13 = v11;
            if (*(&v14 + 1) != v11)
            {
              do
              {
                v12 = sub_4547F0(v12 - 552);
              }

              while (v12 != v11);
              v13 = v14;
            }

            *(&v14 + 1) = v11;
            operator delete(v13);
          }
        }

        else
        {
          v11 = v14;
          if (v14)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = v14;
        *(v7 + 16) = v15;
        v15 = 0;
        v14 = 0uLL;
        v8 = v17;
        *(v7 + 24) = __p;
        *(v7 + 40) = v8;
        v17 = 0;
        __p = 0uLL;
        a3[1] = v7 + 48;
      }
    }
  }

  return a3;
}

uint64_t sub_FEDA38(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v18 = 48 * v2 + 48;
  v19 = 0;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_17:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_FEDBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_FEDBF4(void *a1, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) < a2)
  {
    if (a2 < 0x75075075075076)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_FEDCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FEDF2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FEDCF8(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0uLL;
      *v8 = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0uLL;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 40) = 0;
      *(v8 + 24) = 0uLL;
      v11 = *(v8 + 48);
      v12 = *(v8 + 80);
      v13 = *(v8 + 96);
      *(v9 + 64) = *(v8 + 64);
      *(v9 + 80) = v12;
      *(v9 + 48) = v11;
      *(v9 + 96) = v13;
      *(v9 + 104) = 0;
      *(v9 + 112) = 0uLL;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 120) = *(v8 + 120);
      *(v8 + 120) = 0;
      *(v8 + 104) = 0uLL;
      *(v9 + 144) = 0;
      *(v9 + 128) = 0uLL;
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v8 + 144) = 0;
      *(v8 + 128) = 0uLL;
      *(v9 + 168) = 0;
      *(v9 + 152) = 0uLL;
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v8 + 168) = 0;
      *(v8 + 152) = 0uLL;
      v14 = *(v8 + 192);
      v15 = *(v8 + 208);
      *(v9 + 176) = *(v8 + 176);
      *(v9 + 192) = v14;
      *(v9 + 208) = v15;
      *(v9 + 216) = 0;
      *(v9 + 224) = 0uLL;
      *(v9 + 216) = *(v8 + 216);
      *(v9 + 232) = *(v8 + 232);
      *(v8 + 232) = 0;
      *(v8 + 216) = 0uLL;
      *(v9 + 256) = 0;
      *(v9 + 240) = 0uLL;
      *(v9 + 240) = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v8 + 256) = 0;
      *(v8 + 240) = 0uLL;
      v16 = *(v8 + 264);
      v17 = *(v8 + 296);
      *(v9 + 280) = *(v8 + 280);
      *(v9 + 296) = v17;
      *(v9 + 264) = v16;
      v18 = *(v8 + 424);
      v20 = *(v8 + 376);
      v19 = *(v8 + 392);
      *(v9 + 408) = *(v8 + 408);
      *(v9 + 424) = v18;
      *(v9 + 376) = v20;
      *(v9 + 392) = v19;
      v21 = *(v8 + 488);
      v23 = *(v8 + 440);
      v22 = *(v8 + 456);
      *(v9 + 472) = *(v8 + 472);
      *(v9 + 488) = v21;
      *(v9 + 440) = v23;
      *(v9 + 456) = v22;
      v24 = *(v8 + 312);
      v25 = *(v8 + 328);
      v26 = *(v8 + 360);
      *(v9 + 344) = *(v8 + 344);
      *(v9 + 360) = v26;
      *(v9 + 312) = v24;
      *(v9 + 328) = v25;
      *(v9 + 504) = *(v8 + 504);
      *(v9 + 512) = *(v8 + 512);
      *(v8 + 520) = 0;
      *(v8 + 504) = 0uLL;
      *(v9 + 544) = 0;
      *(v9 + 528) = 0uLL;
      *(v9 + 528) = *(v8 + 528);
      *(v9 + 544) = *(v8 + 544);
      *(v8 + 544) = 0;
      *(v8 + 528) = 0uLL;
      *(v9 + 552) = *(v8 + 552);
      v8 += 560;
      v9 += 560;
    }

    while (v8 != v5);
    do
    {
      result = sub_4547F0(result) + 560;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v27 = *a1;
  *a1 = v7;
  a1[1] = v27;
  a2[1] = v27;
  v28 = a1[1];
  a1[1] = a2[2];
  a2[2] = v28;
  v29 = a1[2];
  a1[2] = a2[3];
  a2[3] = v29;
  *a2 = a2[1];
  return result;
}

uint64_t sub_FEDF2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 560;
    sub_4547F0(i - 560);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_FEDF80(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x75075075075075)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) >= 0x3A83A83A83A83ALL)
  {
    v5 = 0x75075075075075;
  }

  else
  {
    v5 = v3;
  }

  v32 = a1;
  if (v5)
  {
    if (v5 <= 0x75075075075075)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 560 * v2;
  __p = 0;
  v29 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 64) = v8;
  *(v6 + 80) = v9;
  *(v6 + 48) = v7;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(v6 + 176) = v10;
  *(v6 + 192) = v11;
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v6 + 240) = *(a2 + 240);
  *(v6 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v12 = *(a2 + 264);
  v13 = *(a2 + 296);
  *(v6 + 280) = *(a2 + 280);
  *(v6 + 296) = v13;
  *(v6 + 264) = v12;
  v14 = *(a2 + 312);
  v15 = *(a2 + 328);
  v16 = *(a2 + 360);
  *(v6 + 344) = *(a2 + 344);
  *(v6 + 360) = v16;
  *(v6 + 312) = v14;
  *(v6 + 328) = v15;
  v17 = *(a2 + 376);
  v18 = *(a2 + 392);
  v19 = *(a2 + 424);
  *(v6 + 408) = *(a2 + 408);
  *(v6 + 424) = v19;
  *(v6 + 376) = v17;
  *(v6 + 392) = v18;
  v20 = *(a2 + 440);
  v21 = *(a2 + 456);
  v22 = *(a2 + 488);
  *(v6 + 472) = *(a2 + 472);
  *(v6 + 488) = v22;
  *(v6 + 440) = v20;
  *(v6 + 456) = v21;
  *(v6 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v23 = *(a2 + 528);
  *(v6 + 512) = *(a2 + 512);
  *(v6 + 528) = v23;
  *(v6 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  *(v6 + 552) = *(a2 + 552);
  v30 = 560 * v2 + 560;
  v31 = 0;
  sub_FEDCF8(a1, &__p);
  v24 = a1[1];
  v26 = v29;
  for (i = v30; v30 != v26; i = v30)
  {
    v30 = i - 560;
    sub_4547F0(i - 560);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v24;
}

void sub_FEE20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_FEDF2C(va);
  _Unwind_Resume(a1);
}

void sub_FEE220(char **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = v8;
      if (v10 != v8)
      {
        do
        {
          v10 = sub_1324260((v10 - 48));
        }

        while (v10 != v8);
        v11 = *result;
      }

      result[1] = v8;
      operator delete(v11);
      v7 = 0;
      *result = 0;
      result[1] = 0;
      result[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result[1];
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_132492C(v8, v5);
        v5 += 48;
        v8 += 48;
      }

      while (v5 != a3);
      v15 = result[1];
    }

    while (v15 != v8)
    {
      v15 -= 48;
      sub_1324260(v15);
    }

    result[1] = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        sub_132492C(v8, v5);
        v5 += 48;
        v8 += 48;
        v16 -= 48;
      }

      while (v16);
      v15 = result[1];
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        sub_1324194(&v15[v19], v17 + v19);
        v19 += 48;
      }

      while (v17 + v19 != a3);
      v18 = &v15[v19];
    }

    result[1] = v18;
  }
}

void sub_FEE484(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 48;
    v7 = -v4;
    do
    {
      v6 = sub_1324260(v6) - 48;
      v7 += 48;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *sub_FEE4B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_FEE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_FEE610(void *a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 33);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v3 && *(v11 + 5) == HIDWORD(v3))
        {
          return v11;
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_31;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_31;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (*(v11 + 4) != v3 || *(v11 + 5) != HIDWORD(v3))
  {
    goto LABEL_12;
  }

  return v11;
}

void ***sub_FEE988(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_FE90B8(v4 - 308);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_FEEA00()
{
  byte_27C0557 = 3;
  LODWORD(qword_27C0540) = 5136193;
  byte_27C056F = 3;
  LODWORD(qword_27C0558) = 5136194;
  byte_27C0587 = 3;
  LODWORD(qword_27C0570) = 5136195;
  byte_27C059F = 15;
  strcpy(&qword_27C0588, "vehicle_mass_kg");
  byte_27C05B7 = 21;
  strcpy(&xmmword_27C05A0, "vehicle_cargo_mass_kg");
  byte_27C05CF = 19;
  strcpy(&qword_27C05B8, "vehicle_aux_power_w");
  byte_27C05E7 = 15;
  strcpy(&qword_27C05D0, "dcdc_efficiency");
  strcpy(&qword_27C05E8, "drive_train_efficiency");
  HIBYTE(word_27C05FE) = 22;
  operator new();
}

void sub_FEEBDC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C05FE) < 0)
  {
    sub_21E6198();
  }

  sub_21E61A4();
  _Unwind_Resume(a1);
}

_BYTE *sub_FEEBFC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[5] == 1)
  {
    if (result[6])
    {
      if (byte_27C065F < 0)
      {
        return sub_325C(a2, xmmword_27C0648, *(&xmmword_27C0648 + 1));
      }

      else
      {
        *a2 = xmmword_27C0648;
        *(a2 + 16) = unk_27C0658;
      }
    }

    else
    {
      *a2 = *"avoid_toll";
      *(a2 + 16) = 0xA00000000000000;
    }
  }

  else if (result[6])
  {
    *(a2 + 16) = 0xE00000000000000;
    *a2 = *"avoid_highways";
  }

  else
  {
    *(a2 + 16) = 0x800000000000000;
    *a2 = *"standard";
  }

  return result;
}

_BYTE *sub_FEECA4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if ((result[2] & 1) == 0 && (*result & 1) == 0 && (result[1] & 1) == 0 && (result[3] & 1) == 0 && (result[4] & 1) == 0 && (result[5] & 1) == 0 && (result[6] & 1) == 0 && (result[8] & 1) == 0 && (result[11] & 1) == 0 && (result[9] & 1) == 0 && result[10] != 1)
  {
LABEL_18:
    *(a2 + 16) = 0x800000000000000;
    *a2 = *"standard";
    return result;
  }

  if (result[5] != 1)
  {
    if (result[6])
    {
      *(a2 + 16) = 0xE00000000000000;
      *a2 = *"avoid_highways";
      return result;
    }

    goto LABEL_18;
  }

  if (result[6])
  {
    if (byte_27C065F < 0)
    {
      return sub_325C(a2, xmmword_27C0648, *(&xmmword_27C0648 + 1));
    }

    else
    {
      *a2 = xmmword_27C0648;
      *(a2 + 16) = unk_27C0658;
    }
  }

  else
  {
    *a2 = *"avoid_toll";
    *(a2 + 16) = 0xA00000000000000;
  }

  return result;
}

BOOL sub_FEEDA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (sub_FC1BE4(a1, *a2) && (*(a2 + 176) & 1) == 0)
  {
    v5 = 0;
    if ((*(a2 + 177) & 1) == 0 && !*(a2 + 1144) && !*(a2 + 1148))
    {
      v5 = *(a2 + 1152) == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  if (a3 != -1 && !v5)
  {
    v6 = sub_74700();
    if (sub_74234(v6))
    {
      return 1;
    }

    v7 = atomic_load(sub_102DC44());
    if (v7 >= a3)
    {
      return 1;
    }
  }

  return result;
}

void sub_FEEE4C()
{
  byte_27C0677 = 3;
  LODWORD(qword_27C0660) = 5136193;
  byte_27C068F = 3;
  LODWORD(qword_27C0678) = 5136194;
  byte_27C06A7 = 3;
  LODWORD(qword_27C0690) = 5136195;
  byte_27C06BF = 15;
  strcpy(&qword_27C06A8, "vehicle_mass_kg");
  byte_27C06D7 = 21;
  strcpy(&xmmword_27C06C0, "vehicle_cargo_mass_kg");
  byte_27C06EF = 19;
  strcpy(&qword_27C06D8, "vehicle_aux_power_w");
  byte_27C0707 = 15;
  strcpy(&qword_27C06F0, "dcdc_efficiency");
  strcpy(&qword_27C0708, "drive_train_efficiency");
  HIBYTE(word_27C071E) = 22;
  operator new();
}

void sub_FEF060(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C071E) < 0)
  {
    sub_21E6274();
  }

  sub_21E6280();
  _Unwind_Resume(a1);
}

void sub_FEF080(void *a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF6B4(a2);
  a1[4] = sub_3B1348(a2);
  a1[5] = sub_3AF144(a2);
  a1[6] = a6;
  operator new();
}

void sub_FEFBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      if (a33 < 0)
      {
LABEL_8:
        operator delete(a28);
        sub_360988((v33 + 98));
        sub_616CD4(v34);
        v36 = v33[23];
        if (!v36)
        {
          goto LABEL_13;
        }

LABEL_12:
        v33[24] = v36;
        operator delete(v36);
LABEL_13:
        v37 = v33[10];
        v33[10] = 0;
        if (v37)
        {
          operator delete();
        }

        sub_FF2E64(v33 + 9);
        v38 = v33[8];
        v33[8] = 0;
        if (v38)
        {
          operator delete();
        }

        sub_FF2DD0(v33 + 7);
        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_360988((v33 + 98));
      sub_616CD4(v34);
      v36 = v33[23];
      if (!v36)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_1A104(&a16);
    if (a27 < 0)
    {
      goto LABEL_5;
    }
  }

  if (a33 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_FEFE9C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *a1 = sub_5F9D0(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 5;
  strcpy(__p, "ratio");
  *(a1 + 8) = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 4;
  strcpy(__p, "diff");
  *(a1 + 16) = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 8;
  strcpy(__p, "length_m");
  *(a1 + 24) = sub_64514();
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "min_head_length_m");
  *(a1 + 32) = sub_64514();
  if (v5 < 0)
  {
    operator delete(*__p);
  }
}

void sub_FF000C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FF003C(void *a1)
{
  sub_360988((a1 + 98));
  v2 = a1[95];
  if (v2)
  {
    do
    {
      v13 = *v2;
      v14 = v2[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v2[6];
      v2[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v2);
      v2 = v13;
    }

    while (v13);
  }

  v3 = a1[93];
  a1[93] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  a1[10] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    sub_CDE540(v6);
    operator delete();
  }

  v7 = a1[8];
  a1[8] = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = a1[7];
  a1[7] = 0;
  if (v8)
  {
    if (*(v8 + 519) < 0)
    {
      operator delete(*(v8 + 496));
    }

    v9 = *(v8 + 432);
    if (v9)
    {
      do
      {
        v10 = *v9;
        sub_253B4((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(v8 + 416);
    *(v8 + 416) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    operator delete();
  }

  return a1;
}

void *sub_FF01A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v140 = v9;
  v132 = v10;
  v133 = v11;
  v13 = v12;
  v14 = v8;
  *v15 = 0;
  v15[1] = 0;
  v135 = v15;
  v15[2] = 0;
  result = sub_4D1F6C(v12);
  if (result)
  {
    return result;
  }

  sub_112D984(v202, 2, *v14);
  sub_FF3ED4(v199, v140, *(v14 + 72), v202, *(v14 + 64), *v14, *(v14 + 8));
  v17 = *(v14 + 1560);
  v199[6] = *(v14 + 1568);
  v199[7] = v17;
  v200 = *(v14 + 1832);
  v201 = *(v14 + 1552);
  v197[1] = 0;
  v197[0] = 0;
  v198 = 0;
  v195[1] = 0;
  v195[0] = 0;
  v196 = 0;
  v193[1] = 0;
  v193[0] = 0;
  v194 = 0;
  v18 = sub_F73E78(v13);
  sub_60BAC4(v135, v18);
  *v190 = 0u;
  *v191 = 0u;
  v192 = 1065353216;
  if (sub_F73E78(v13) < 2)
  {
    goto LABEL_7;
  }

  v19 = sub_45AC50(v13);
  for (i = sub_588D8(v13); v19 != i; v19 += 6)
  {
    if (!sub_45336C(v19))
    {
      goto LABEL_7;
    }
  }

  v21 = sub_45AC50(v13);
  v22 = sub_588D8(v13);
  if (v21 != v22)
  {
LABEL_157:
    nullsub_1();
    v118 = *v117;
    v119 = v117[1];
    while (1)
    {
      if (v118 == v119)
      {
        v21 += 48;
        if (v21 != v22)
        {
          goto LABEL_157;
        }

        break;
      }

      v120 = sub_73EEC(v118);
      v121 = v120;
      if (*v120 != 0x7FFFFFFF && v120[9] != 0x7FFFFFFF && sub_4566B4(v120 + 2))
      {
        v123 = v121[28];
        if (v123)
        {
          if (v123 == 2)
          {
            v124 = *(v121 + 13);
            if (v124 <= 0xFFFFFFFEFFFFFFFFLL && v124)
            {
              goto LABEL_172;
            }
          }

          else
          {
            if (v123 != 1)
            {
              sub_5AF20();
            }

            if (*(v121 + 13) != -1)
            {
LABEL_172:
              *v147 = *(sub_73EEC(v118) + 104);
              sub_FF2EB8(v190, v147, v147);
            }
          }
        }
      }

      v118 += 552;
    }
  }

LABEL_7:
  v23 = sub_F73E78(v13);
  if (v23)
  {
    v24 = 0;
    v131 = v23;
    while (1)
    {
      nullsub_1();
      v26 = *v25;
      v134 = v24;
      v27 = *v132;
      v141 = *v133;
      v138 = sub_4E3D6C((*v133 + 48 * v24));
      v189 = 0;
      memset(v188, 0, sizeof(v188));
      v186 = 0;
      __p = 0;
      v187 = 0;
      v139 = v26;
      v142 = 48 * v24;
      v28 = sub_F63FF4((v26 + 48 * v24));
      if (0xE21A291C077975B9 * ((v187 - __p) >> 3) < v28)
      {
        if (v28 <= 0x3BCBADC7F10D14)
        {
          operator new();
        }

        sub_1794();
      }

      nullsub_1();
      v30 = v29[1] - *v29;
      if (v30)
      {
        v31 = 0;
        v136 = 0xF128CFC4A33F128DLL * (v30 >> 3);
        v137 = (v27 + 24 * v24);
        do
        {
          v197[1] = v197[0];
          v195[1] = v195[0];
          v193[1] = v193[0];
          v34 = sub_F63CBC((v139 + v142), v31);
          v35 = sub_4D1DB0(v34);
          v36 = *(sub_E63190(v140, *v35) + 2);
          v37 = sub_F69688(v34);
          v38 = *(sub_E63190(v140, *v37) + 2);
          v39 = sub_FF4504(v34, v31 == 0, v199);
          v40 = v39;
          if (!v31 && (v39 & 2) != 0)
          {
            v188[0].i64[0] = *(*(v14 + 48) + 56);
          }

          if (sub_4E3D6C((v141 + v142)))
          {
            sub_4C35D4(v141 + v142, v147);
            v41 = v147[0] + 56 * v31;
            v42 = *(v41 + 2);
            *v179 = *v41;
            *&v179[8] = v42;
            v182 = 0;
            v183 = 0;
            v181 = 0;
            v44 = *(v41 + 2);
            v43 = *(v41 + 3);
            if (v43 != v44)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 2) < 0x1555555555555556)
              {
                operator new();
              }

              sub_1794();
            }

            v45 = *(v41 + 5);
            DWORD2(v184) = *(v41 + 12);
            *&v184 = v45;
            if (*(v14 + 1849) == 1)
            {
LABEL_28:
              sub_1184AF8(v147, *v14);
            }
          }

          else
          {
            v184 = 0u;
            v180 = 0;
            *v179 = 0x7FFFFFFF;
            *&v179[4] = 0x7FFFFFFF7FFFFFFFLL;
            v181 = 0;
            v182 = 0;
            v183 = 0;
            *&v184 = 0x8000000080000000;
            DWORD2(v184) = 0x7FFFFFFF;
            if (*(v14 + 1849) == 1)
            {
              goto LABEL_28;
            }
          }

          v46 = sub_765A78(v34);
          v47 = sub_F6D168(v34);
          v48 = sub_F6E3D4(v34);
          sub_FF1AB0(v14, v46, v47, v48, __dst);
          v167[0] = v36;
          v167[1] = v38;
          sub_3EDCF4(v147, (*v137 + 288 * v31));
          sub_FD6FA8(*(v14 + 80), v34, v188[0].i64, &v145, v49);
          sub_1190BE0(v14 + 88, v34, &v143);
          v50 = v186;
          if (v186 >= v187)
          {
            v52 = 0xE21A291C077975B9 * ((v186 - __p) >> 3) + 1;
            if (v52 > 0x3BCBADC7F10D14)
            {
              sub_1794();
            }

            if (0xC43452380EF2EB72 * ((v187 - __p) >> 3) > v52)
            {
              v52 = 0xC43452380EF2EB72 * ((v187 - __p) >> 3);
            }

            if (0xE21A291C077975B9 * ((v187 - __p) >> 3) >= 0x1DE5D6E3F8868ALL)
            {
              v53 = 0x3BCBADC7F10D14;
            }

            else
            {
              v53 = v52;
            }

            p_p = &__p;
            if (v53)
            {
              if (v53 <= 0x3BCBADC7F10D14)
              {
                operator new();
              }

              sub_1808();
            }

            v202[664] = 0;
            v203 = 8 * ((v186 - __p) >> 3);
            v204 = v203;
            v205 = 0;
            sub_4D3408(v203, v34, v167, 0, v40, v147, v179, &v145, &v143, __dst);
            v54 = v204;
            v55 = v186;
            v56 = __p;
            v57 = (v203 + __p - v186);
            if (v186 != __p)
            {
              v58 = __p;
              v59 = (v203 + __p - v186);
              do
              {
                sub_4C6AE8(v59, v58);
                v58 += 1096;
                v59 = (v60 + 1096);
              }

              while (v58 != v55);
              do
              {
                sub_3EEA68(v56);
                v56 += 1096;
              }

              while (v56 != v55);
              v56 = __p;
            }

            v51 = (v54 + 1096);
            __p = v57;
            v186 = (v54 + 1096);
            v187 = v205;
            if (v56)
            {
              operator delete(v56);
            }
          }

          else
          {
            sub_4D3408(v186, v34, v167, 0, v40, v147, v179, &v145, &v143, __dst);
            v51 = v50 + 1096;
          }

          v186 = v51;
          v61 = v143;
          if (v143)
          {
            v62 = v144;
            v63 = v143;
            if (v144 != v143)
            {
              do
              {
                v65 = *(v62 - 4);
                if (v65)
                {
                  v66 = *(v62 - 3);
                  v64 = *(v62 - 4);
                  if (v66 != v65)
                  {
                    v67 = *(v62 - 3);
                    do
                    {
                      v69 = *(v67 - 24);
                      v67 -= 24;
                      v68 = v69;
                      if (v69)
                      {
                        *(v66 - 16) = v68;
                        operator delete(v68);
                      }

                      v66 = v67;
                    }

                    while (v67 != v65);
                    v64 = *(v62 - 4);
                  }

                  *(v62 - 3) = v65;
                  operator delete(v64);
                }

                v62 -= 64;
              }

              while (v62 != v61);
              v63 = v143;
            }

            v144 = v61;
            operator delete(v63);
          }

          if (v145)
          {
            v146 = v145;
            operator delete(v145);
          }

          if (v165)
          {
            v166 = v165;
            operator delete(v165);
          }

          if (v163)
          {
            v164 = v163;
            operator delete(v163);
          }

          if (v161)
          {
            v162 = v161;
            operator delete(v161);
          }

          if (v159)
          {
            v160 = v159;
            operator delete(v159);
          }

          if (v157)
          {
            v158 = v157;
            operator delete(v157);
          }

          if (*(&v155 + 1))
          {
            *&v156 = *(&v155 + 1);
            operator delete(*(&v155 + 1));
          }

          if (v154)
          {
            *(&v154 + 1) = v154;
            operator delete(v154);
          }

          if (v152[0])
          {
            v152[1] = v152[0];
            operator delete(v152[0]);
          }

          if (v150)
          {
            *(&v150 + 1) = v150;
            operator delete(v150);
          }

          if (v148[0])
          {
            v148[1] = v148[0];
            operator delete(v148[0]);
          }

          if (v177)
          {
            v178 = v177;
            operator delete(v177);
          }

          if (v175)
          {
            v176 = v175;
            operator delete(v175);
          }

          if (v173)
          {
            v174 = v173;
            operator delete(v173);
          }

          if (v171)
          {
            v172 = v171;
            operator delete(v171);
          }

          if (v169[1])
          {
            v170 = v169[1];
            operator delete(v169[1]);
          }

          if (__dst[0])
          {
            __dst[1] = __dst[0];
            operator delete(__dst[0]);
          }

          if (v181)
          {
            v182 = v181;
            operator delete(v181);
          }

          v70 = v186;
          v71 = *(v14 + 1552);
          if ((v71 & 0x40) != 0)
          {
            v72 = *(v14 + 64);
            sub_F6D05C(v34, v147);
            sub_43A664(v72, v147, __dst);
            if (v197[0])
            {
              v197[1] = v197[0];
              operator delete(v197[0]);
            }

            *v197 = *__dst;
            v198 = v169[0];
            v71 = *(v14 + 1552);
          }

          v73 = v70 - 1096;
          if ((v71 & 0x10) != 0)
          {
            sub_428444(*(v14 + 56), v73, v147);
          }

          if ((v71 & 0x20) != 0)
          {
            sub_42C878(*(v14 + 56), v73, v147);
            if (v193[0])
            {
              v193[1] = v193[0];
              operator delete(v193[0]);
            }

            *v193 = *v147;
            v194 = v148[0];
          }

          v74 = sub_FF3EF8(v34, v197, v195, v193, v199);
          sub_4D395C(v73, v74);
          v75 = sub_4D39C4(v73);
          v76 = sub_FF465C(v34, v75, v197, v195, v199);
          sub_4D396C(v73, v76);
          sub_FF4FFC(v34, v197, v195, v193, v199, __dst, v77);
          if (v138)
          {
            sub_4E3D90((v141 + v142), v31, v147);
            v78 = sub_4D2130(v73);
            v79 = *v147;
            v80 = *v148;
            *(v78 + 32) = v149;
            *v78 = v79;
            *(v78 + 16) = v80;
            v81 = *(v78 + 40);
            if (v81)
            {
              *(v78 + 48) = v81;
              operator delete(v81);
              *(v78 + 40) = 0;
              *(v78 + 48) = 0;
              *(v78 + 56) = 0;
            }

            v82 = *(v78 + 64);
            *(v78 + 40) = v150;
            *(v78 + 56) = v151;
            v150 = 0uLL;
            v151 = 0;
            if (v82)
            {
              *(v78 + 72) = v82;
              operator delete(v82);
              *(v78 + 64) = 0;
              *(v78 + 72) = 0;
              *(v78 + 80) = 0;
              v82 = v150;
            }

            *(v78 + 64) = *v152;
            *(v78 + 80) = v153;
            v152[0] = 0;
            v152[1] = 0;
            v153 = 0;
            v83 = v156;
            v84 = v155;
            *(v78 + 88) = v154;
            *(v78 + 104) = v84;
            *(v78 + 120) = v83;
            if (v82)
            {
              *(&v150 + 1) = v82;
              operator delete(v82);
            }

            sub_4E3DA4((v141 + v142), v31, v147);
            v85 = sub_73F54(v73);
            v86 = *v147;
            v87 = *v148;
            *(v85 + 32) = v149;
            *v85 = v86;
            *(v85 + 16) = v87;
            v88 = *(v85 + 40);
            if (v88)
            {
              *(v85 + 48) = v88;
              operator delete(v88);
              *(v85 + 40) = 0;
              *(v85 + 48) = 0;
              *(v85 + 56) = 0;
            }

            v89 = *(v85 + 64);
            *(v85 + 40) = v150;
            *(v85 + 56) = v151;
            v150 = 0uLL;
            v151 = 0;
            if (v89)
            {
              *(v85 + 72) = v89;
              operator delete(v89);
              *(v85 + 64) = 0;
              *(v85 + 72) = 0;
              *(v85 + 80) = 0;
              v89 = v150;
            }

            *(v85 + 64) = *v152;
            *(v85 + 80) = v153;
            v152[0] = 0;
            v152[1] = 0;
            v153 = 0;
            v90 = v156;
            v91 = v155;
            *(v85 + 88) = v154;
            *(v85 + 104) = v91;
            *(v85 + 120) = v90;
            if (v89)
            {
              *(&v150 + 1) = v89;
              operator delete(v89);
            }

            v32 = __dst[1];
          }

          else
          {
            v32 = sub_FF5A2C(v34);
            LODWORD(__dst[1]) = v32;
          }

          v33.i64[0] = __PAIR64__(HIDWORD(__dst[1]), v32);
          v33.i64[1] = v169[0];
          *(v188 + 8) = vaddq_s32(v33, *(v188 + 8));
          v188[1].u64[1] = vadd_s32(v188[1].u64[1], v169[1]);
          v189 += v170;
          ++v31;
        }

        while (v31 != v136);
      }

      v92 = sub_FF4B0C(&__p, v190, v199);
      *v179 = v92;
      v93 = v135[1];
      if (v93 >= v135[2])
      {
        v94 = sub_FF2C08(v135, &__p, v179, v188);
      }

      else
      {
        sub_4C3348(v135[1], &__p, v92, v188);
        v94 = v93 + 128;
      }

      v135[1] = v94;
      if (*(v14 + 1848) != 1)
      {
        goto LABEL_144;
      }

      sub_D7B0(v147);
      sub_4A5C(v148, " probe_data_computed_using=pathlets ", 36);
      v95 = sub_58BBC(v135[1] - 128);
      v96 = *v95;
      v97 = v95[1];
      if (*v95 != v97)
      {
        do
        {
          v98 = sub_4D4730(v96);
          sub_FF210C(v148, v98);
          v96 += 1096;
        }

        while (v96 != v97);
      }

      v99 = v135[1];
      if ((v156 & 0x10) != 0)
      {
        break;
      }

      if ((v156 & 8) != 0)
      {
        v101 = v151;
        v102 = &v150;
LABEL_133:
        v103 = *v102;
        v100 = v101 - *v102;
        if (v100 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v100 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v169[0]) = v101 - *v102;
        if (v100)
        {
          memmove(__dst, v103, v100);
        }

        goto LABEL_139;
      }

      v100 = 0;
      HIBYTE(v169[0]) = 0;
LABEL_139:
      *(__dst + v100) = 0;
      sub_4C5174(v99 - 128, __dst);
      if (SHIBYTE(v169[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      v147[0] = *&v130;
      *(v147 + *(*&v130 - 24)) = v129;
      v148[0] = *&v128;
      if (SBYTE7(v155) < 0)
      {
        operator delete(v154);
      }

      std::locale::~locale(&v149);
      std::iostream::~basic_iostream();
      std::ios::~ios();
LABEL_144:
      v104 = __p;
      if (__p)
      {
        v105 = v186;
        v106 = __p;
        if (v186 != __p)
        {
          do
          {
            v105 = sub_3EEA68((v105 - 1096));
          }

          while (v105 != v104);
          v106 = __p;
        }

        v186 = v104;
        operator delete(v106);
      }

      v24 = v134 + 1;
      if (v134 + 1 == v131)
      {
        goto LABEL_148;
      }
    }

    v101 = *(&v155 + 1);
    v102 = v152;
    if (*(&v155 + 1) < v152[1])
    {
      *(&v155 + 1) = v152[1];
      v101 = v152[1];
      v102 = v152;
    }

    goto LABEL_133;
  }

LABEL_148:
  v108 = *v135;
  v107 = v135[1];
  if (*v135 != v107)
  {
    while ((sub_4C513C(v108, 10) & 1) == 0)
    {
      v108 += 128;
      if (v108 == v107)
      {
        v108 = v107;
        break;
      }
    }

    v107 = v135[1];
  }

  if (v108 != v107)
  {
    v188[0].i64[0] = sub_4E4D04(v108, *(v14 + 24));
    v188[0].i32[2] = v109;
    __p = sub_4E4E0C(v108, *(v14 + 24));
    LODWORD(v186) = v110;
    v111 = sub_452F94(v108);
    v112 = sub_3B1D8C(*v14);
    v113 = sub_4D2130(v111);
    v114 = sub_2AB71C(v112, *(v113 + 104), *(v113 + 112));
    v115 = sub_3B1D8C(*v14);
    v145 = sub_2ACC94(v115, v114);
    LODWORD(v146) = v116;
    sub_5C0C0(__dst);
    sub_5C0C4(__dst);
  }

  v125 = v191[0];
  if (v191[0])
  {
    do
    {
      v126 = *v125;
      operator delete(v125);
      v125 = v126;
    }

    while (v126);
  }

  v127 = v190[0];
  v190[0] = 0;
  if (v127)
  {
    operator delete(v127);
  }

  if (v193[0])
  {
    v193[1] = v193[0];
    operator delete(v193[0]);
  }

  if (v195[0])
  {
    v195[1] = v195[0];
    operator delete(v195[0]);
  }

  if (v197[0])
  {
    v197[1] = v197[0];
    operator delete(v197[0]);
  }

  return sub_3E3DF0(v202);
}

void sub_FF1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (*(v51 + 23) < 0)
  {
    operator delete(*(v52 - 152));
  }

  std::ios::~ios();
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_3DB9A4(&STACK[0x210]);
  sub_11BD8(&STACK[0x320]);
  v54 = STACK[0x350];
  if (STACK[0x350])
  {
    STACK[0x358] = v54;
    operator delete(v54);
    v55 = STACK[0x370];
    if (!STACK[0x370])
    {
LABEL_7:
      v56 = STACK[0x390];
      if (!STACK[0x390])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v55 = STACK[0x370];
    if (!STACK[0x370])
    {
      goto LABEL_7;
    }
  }

  STACK[0x378] = v55;
  operator delete(v55);
  v56 = STACK[0x390];
  if (!STACK[0x390])
  {
LABEL_9:
    sub_3E3DF0(&STACK[0x408]);
    sub_60A84C(a20);
    _Unwind_Resume(a1);
  }

LABEL_8:
  STACK[0x398] = v56;
  operator delete(v56);
  goto LABEL_9;
}

void sub_FF1AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  a5[7] = 0u;
  a5[8] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  if (a3 != a2)
  {
    v7 = (a1 + 1576);
    v8 = (a3 - a2) / 56;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v8 - 1;
    if (v8 == 1)
    {
      if (*v7 == 1)
      {
        v56 = 0uLL;
        v57 = 0uLL;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 0);
          *(&v57 + 1) = (v45 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5, &v56);
        }
      }

      if (*(a1 + 1616) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 1);
          *(&v57 + 1) = (v46 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 24, &v56);
        }
      }

      if (*(a1 + 1656) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 2);
          *(&v57 + 1) = (v47 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744((a5 + 3), &v56);
        }
      }

      if (*(a1 + 1696) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 3);
          *(&v57 + 1) = (v48 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 72, &v56);
        }
      }

      if (*(a1 + 1736) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 4);
          *(&v57 + 1) = (v49 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744((a5 + 6), &v56);
        }
      }

      if (*(a1 + 1776) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 5);
          *(&v57 + 1) = (v50 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 120, &v56);
        }
      }
    }

    else
    {
      v11 = 0;
      v51 = (a1 + 1576);
      do
      {
        v12 = &v7[40 * v11];
        if (*v12 == 1)
        {
          v13 = 0;
          v56 = 0u;
          v57 = 0u;
          v55 = a5 + 24 * v11;
          v14 = 0.0;
          do
          {
            v15 = (a2 + 56 * v13);
            v16 = v15[5];
            *&v57 = v57 + v16;
            sub_FF2404(a1, *v15, v11);
            v14 = v14 + v17 * v16;
            if (v57 >= *(v12 + 3))
            {
              v18 = 0;
              v19 = *(a1 + 16);
              v20 = v15[7];
              v21 = (v20 >> 30) & 0xFFFFFFFC | (v20 << 32);
              v22 = (v20 >> 61) & 2 | (v20 >> 63) | v21;
              v23 = ((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) ^ ~((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) ^ ((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) >> 47)) << 21);
              v24 = 21 * ((265 * (v23 ^ (v23 >> 24))) ^ ((265 * (v23 ^ (v23 >> 24))) >> 14));
              v25 = 2147483649u * (v24 ^ (v24 >> 28));
              v26 = v19 + 48 * (((((v24 ^ (v24 >> 28)) >> 8) ^ ((-2147483647 * (v24 ^ (v24 >> 28))) >> 16)) ^ ((-2147483647 * (v24 ^ (v24 >> 28))) >> 24)) & 0xF);
              v27 = v26 + 3896;
              v28 = v25 >> 7;
              v29 = *(v26 + 3920);
              v30 = *(v26 + 3896);
              v31 = 0x101010101010101 * (v25 & 0x7F);
              while (1)
              {
                v32 = v28 & v29;
                v33 = *(v30 + v32);
                v34 = ((v33 ^ v31) - 0x101010101010101) & ~(v33 ^ v31) & 0x8080808080808080;
                if (v34)
                {
                  break;
                }

LABEL_17:
                if ((v33 & (~v33 << 6) & 0x8080808080808080) != 0)
                {
                  goto LABEL_20;
                }

                v18 += 8;
                v28 = v18 + v32;
              }

              while (1)
              {
                v35 = (v32 + (__clz(__rbit64(v34)) >> 3)) & v29;
                v36 = (*(v27 + 8) + 24 * v35);
                if (((4 * v36[1]) | (*v36 << 32) | (v36[1] >> 31) | (v36[1] >> 29) & 2) == v22)
                {
                  break;
                }

                v34 &= v34 - 1;
                if (!v34)
                {
                  goto LABEL_17;
                }
              }

              if (v29 == v35)
              {
LABEL_20:
                if (sub_363C44(v19, v20) < *(v12 + 4))
                {
                  goto LABEL_11;
                }

                goto LABEL_21;
              }

              if (*(v36 + 1) < *(v12 + 4))
              {
                goto LABEL_11;
              }

LABEL_21:
              *(&v57 + 1) = v14 / v57;
              sub_FF2404(a1, v15[7], v11);
              v38 = *(&v57 + 1) / v37;
              v39 = vabdd_f64(*(&v57 + 1), v37);
              v40 = *(v12 + 1);
              if ((v38 >= 1.0 / v40 || v38 <= v40) && v39 >= *(v12 + 2))
              {
                v43 = a4 - (v57 + v56);
                if (a4 < v57 + v56)
                {
                  v43 = 0;
                }

                *(&v56 + 1) = v43;
                sub_2C3744(v55, &v56);
                v56 = (v57 + v56);
                v57 = 0uLL;
                v14 = 0.0;
              }
            }

LABEL_11:
            ++v13;
          }

          while (v13 != v9);
          *&v57 = *(a3 - 16) + v57;
          if (v57)
          {
            sub_FF2404(a1, *(a3 - 56), v11);
            *(&v57 + 1) = (v14 + v44 * *(a3 - 16)) / v57;
            sub_2C3744(v55, &v56);
          }

          v7 = v51;
        }

        ++v11;
      }

      while (v11 != 6);
    }
  }
}

void *sub_FF210C(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0;
  do
  {
    sub_4DB110(v3, __p);
    if ((v18 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v5 = v18;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_4A5C(v2, v4, v5);
    sub_4A5C(v6, ":", 1);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = a1;
    v16 = v3;
    v7 = (a2 + 24 * v3);
    v9 = *v7;
    v8 = v7[1];
    if (*v7 != v8)
    {
      do
      {
        sub_4A5C(a1, " (", 2);
        v10 = std::ostream::operator<<();
        sub_4A5C(v10, ",", 1);
        v11 = std::ostream::operator<<();
        sub_4A5C(v11, ")", 1);
        v9 += 32;
      }

      while (v9 != v8);
    }

    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v12 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v3 = v16 + 1;
  }

  while (v16 != 5);
  return a1;
}

void sub_FF2304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FF2334(void *a1, unsigned int *a2)
{
  sub_456754(a2);
  std::ostream::operator<<();
  v4 = sub_4A5C(a1, " % (", 4);
  v5 = sub_3F80(a2);
  v6 = sub_70ACC(v4, v5);
  v7 = sub_4A5C(v6, ": [", 3);
  v8 = sub_5AAC4(a2);
  v9 = sub_70ACC(v7, v8);
  v10 = sub_4A5C(v9, ", ", 2);
  v11 = sub_4566A4(a2);
  v12 = sub_70ACC(v10, v11);
  sub_4A5C(v12, "])", 2);
  return a1;
}

void sub_FF2404(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      sub_3E8EF0(*(a1 + 32), a2);
      return;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (sub_FF2688(*(a1 + 32), a2))
        {
          sub_3E8EF0(*(a1 + 32), a2);
        }
      }

      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

LABEL_24:
    sub_FF2A14(a1, v9);
    return;
  }

  if (a3 == 3)
  {
    if (!sub_FF2688(*(a1 + 32), a2))
    {
      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

    goto LABEL_24;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      return;
    }

    sub_3E8FE8(*(a1 + 32), a2);
    if (!sub_FF2688(*(a1 + 32), a2))
    {
      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

    goto LABEL_24;
  }

  v7 = *(a1 + 32);

  sub_3E8FE8(v7, a2);
}

uint64_t sub_FF2688(uint64_t a1, unint64_t a2)
{
  v2 = 0.0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return (v2 * sub_3E8FE8(a1, a2) + 0.5);
  }

  v3 = a2;
  v4 = a1;
  v5 = sub_2B3284(a1, a2, 1);
  if (!v5)
  {
    a2 = v3;
    a1 = v4;
    return (v2 * sub_3E8FE8(a1, a2) + 0.5);
  }

  v7 = v5;
  v8 = &v5[-*v5];
  v9 = *v8;
  a2 = v3;
  if (!(v3 >> 62))
  {
    a1 = v4;
    if (v9 >= 0xD)
    {
      v10 = v8[6];
      if (!v8[6])
      {
        goto LABEL_13;
      }

LABEL_10:
      v11 = &v7[v10 + *&v7[v10]];
      if (*v11 > (HIDWORD(v3) & 0x3FFFFFFFu))
      {
        v12 = v11 + 2 * (HIDWORD(v3) & 0x3FFFFFFF) + 4;
LABEL_15:
        LOWORD(v6) = *v12;
        v2 = v6;
        return (v2 * sub_3E8FE8(a1, a2) + 0.5);
      }

      goto LABEL_13;
    }

LABEL_12:
    if (v9 < 9)
    {
      return (v2 * sub_3E8FE8(a1, a2) + 0.5);
    }

    goto LABEL_13;
  }

  a1 = v4;
  if (v9 < 0xB)
  {
    goto LABEL_12;
  }

  v10 = v8[5];
  if (v8[5])
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = v8[4];
  if (v13)
  {
    v12 = &v7[v13];
    goto LABEL_15;
  }

  return (v2 * sub_3E8FE8(a1, a2) + 0.5);
}

void sub_FF2780(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = *(a1 + 776);
  prime = *(a1 + 752);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a2, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a1 + 752));
    v5 = *(a2 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a1 + 760); i; i = *i)
  {
    sub_D3B9CC(a2, i + 4, (i + 2));
  }
}

uint64_t sub_FF28C0@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32);
  v5 = (*a2 >> 61) & 2 | (*a2 >> 63) | v4;
  v6 = ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ~((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_5:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_8;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  while (1)
  {
    v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    v18 = (v9[1] + 16 * v17);
    if (((4 * *(v18 + 1)) | (*v18 << 32) | (*(v18 + 1) >> 31) | (*(v18 + 1) >> 29) & 2) == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  if (v11 == v17)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v9;
  a3[1] = (result + 768);
  a3[2] = (v12 + v17);
  a3[3] = v18;
  a3[4] = (v12 + v11);
  return result;
}

double sub_FF2A14(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  v27 = a2;
  __p = 0;
  v25 = 0;
  sub_351010(*(a1 + 16), a2, &__p);
  v4 = __p;
  v5 = v25;
  v6 = 0.0;
  if (__p != v25)
  {
    do
    {
      v7 = *v4;
      v8 = *(a1 + 16);
      v9 = sub_31D994(v8 + 16, *v4, 1);
      if (v9 && (v10 = &v9[-*v9], *v10 >= 0xBu) && *(v10 + 5) && (v11 = &v9[*(v10 + 5) + *&v9[*(v10 + 5)]], *v11 > WORD2(v7)) && (v12 = &v11[8 * WORD2(v7)], v14 = *(v12 + 1), v13 = (v12 + 4), v14))
      {
        v15 = sub_33515C(v8, v7, v13);
      }

      else
      {
        v15 = v7 & 0xFFFFFFFFFFFFLL | (((v7 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
      }

      v6 = v6 + sub_2BC7A8(*(a1 + 40), v15);
      ++v4;
    }

    while (v4 != v5);
  }

  v16 = 0x2127599BF4325C37 * (((a2 >> 61) & 2 | (a2 >> 63) | (a2 >> 30) & 0xFFFFFFFC | (a2 << 32)) ^ (((a2 >> 30) & 0xFFFFFFFC | (a2 << 32)) >> 23));
  v17 = (v16 ^ ~(v16 >> 47)) + ((v16 ^ (v16 >> 47)) << 21);
  v18 = 21 * ((265 * (v17 ^ (v17 >> 24))) ^ ((265 * (v17 ^ (v17 >> 24))) >> 14));
  v19 = (a1 + 48 * (((((v18 ^ (v18 >> 28)) >> 8) ^ ((-2147483647 * (v18 ^ (v18 >> 28))) >> 16)) ^ ((-2147483647 * (v18 ^ (v18 >> 28))) >> 24)) & 0xF) + 784);
  v20 = sub_FF333C(v19, &v27, 2147483649u * (v18 ^ (v18 >> 28)));
  if (v21)
  {
    v22 = (v19[1] + 16 * v20);
    *v22 = v27;
    v22[1] = 0;
  }

  *(v19[1] + 16 * v20 + 8) = v6;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_FF2BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FF2C08(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v20 = v4 << 7;
  sub_4C3348(v4 << 7, a2, *a3, a4);
  v9 = (v4 << 7) + 128;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 + v20 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = *a1 + v20 - v11;
    do
    {
      *v14 = 0;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = *v13;
      *(v14 + 2) = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 5) = *(v13 + 5);
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 5) = 0;
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = *(v13 + 5);
      *(v14 + 94) = *(v13 + 94);
      *(v14 + 4) = v16;
      *(v14 + 5) = v17;
      *(v14 + 3) = v15;
      v18 = *(v13 + 104);
      *(v14 + 15) = *(v13 + 15);
      *(v14 + 104) = v18;
      *(v13 + 14) = 0;
      *(v13 + 15) = 0;
      *(v13 + 13) = 0;
      v13 += 128;
      v14 += 128;
    }

    while (v13 != v11);
    do
    {
      sub_60B38C(v10);
      v10 += 128;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_FF2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_FF2DD0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 519) < 0)
    {
      operator delete(*(v1 + 496));
    }

    v2 = *(v1 + 432);
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_253B4((v2 + 2));
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 416);
    *(v1 + 416) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_FF2E64(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_CDE540(v2);
    operator delete();
  }

  return a1;
}

uint64_t **sub_FF2EB8(void *a1, uint64_t a2, _OWORD *a3)
{
  v5 = *(a2 + 8);
  if (v5 == -1)
  {
    v6 = 299792458;
  }

  else
  {
    v6 = (off_2674E48[v5])(&v24, a2, a3);
    v7 = *(a2 + 8);
    if (v7 != -1)
    {
      goto LABEL_6;
    }
  }

  v7 = -1;
LABEL_6:
  v8 = __ROR8__(v7 + 16, 16);
  v9 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v6)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v6)))) >> 47))) ^ v7;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_41;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v9;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = v9 & (*&v10 - 1);
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v11.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        v16 = *(v14 + 6);
        v17 = *(a2 + 8);
        if (v16 != -1 && v17 == v16)
        {
          v26 = &v25;
          if ((off_2674E60[v16])(&v26, v14 + 2, a2))
          {
            return v14;
          }
        }

        else if (v17 == v16)
        {
          return v14;
        }
      }

      else if ((v15 & (*&v10 - 1)) != v12)
      {
        goto LABEL_41;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v19 = v14[1];
    if (v19 == v9)
    {
      break;
    }

    if (v19 >= *&v10)
    {
      v19 %= *&v10;
    }

    if (v19 != v12)
    {
      goto LABEL_41;
    }

LABEL_29:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_41;
    }
  }

  v20 = *(v14 + 6);
  v21 = *(a2 + 8);
  if (v20 == -1 || v21 != v20)
  {
    if (v21 == v20)
    {
      return v14;
    }

    goto LABEL_29;
  }

  v26 = &v25;
  if (((off_2674E60[v20])(&v26, v14 + 2, a2) & 1) == 0)
  {
    goto LABEL_29;
  }

  return v14;
}

unint64_t sub_FF32FC(uint64_t a1, void *a2)
{
  v2 = __ROR8__(*a2, 32);
  v3 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) >> 33));
  return v3 ^ (v3 >> 33);
}

unint64_t sub_FF333C(void *a1, void *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  while (1)
  {
    v6 = v4 & v5;
    v7 = *(*a1 + (v4 & v5));
    v8 = ((v7 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v7 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v8)
    {
      break;
    }

LABEL_5:
    if ((v7 & (~v7 << 6) & 0x8080808080808080) != 0)
    {
      return sub_FF3430(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v6;
  }

  while (1)
  {
    v9 = (v6 + (__clz(__rbit64(v8)) >> 3)) & v5;
    v10 = (a1[1] + 16 * v9);
    if (((4 * v10[1]) | (*v10 << 32) | (v10[1] >> 31) | (v10[1] >> 29) & 2) == ((*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32) | (*a2 >> 63) | (*a2 >> 61) & 2))
    {
      return v9;
    }

    v8 &= v8 - 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }
}

unint64_t sub_FF3430(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_FF3528(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_FF3528(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_FF3558(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_FF3738(a1);
}

uint64_t sub_FF3738(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 16 * i);
        v19 = 0x2127599BF4325C37 * (((v18 >> 61) & 2 | (v18 >> 63) | (v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) ^ (((v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) >> 23));
        v20 = (v19 ^ ~(v19 >> 47)) + ((v19 ^ (v19 >> 47)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            *(v27 + 16 * v16) = *(v27 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v28 = *(v27 + 16 * i);
            *(v27 + 16 * i) = *(v27 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v28;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v29 = i - (i >> 3);
    v30 = i == 7;
    v31 = 6;
    if (!v30)
    {
      v31 = v29;
    }
  }

  else
  {
    v31 = 0;
  }

  *(result + 40) = v31 - *(result + 16);
  return result;
}

void sub_FF3A20()
{
  byte_27C077F = 3;
  LODWORD(qword_27C0768) = 5136193;
  byte_27C0797 = 3;
  LODWORD(qword_27C0780) = 5136194;
  byte_27C07AF = 3;
  LODWORD(qword_27C0798) = 5136195;
  byte_27C07C7 = 15;
  strcpy(&qword_27C07B0, "vehicle_mass_kg");
  byte_27C07DF = 21;
  strcpy(&xmmword_27C07C8, "vehicle_cargo_mass_kg");
  byte_27C07F7 = 19;
  strcpy(&qword_27C07E0, "vehicle_aux_power_w");
  byte_27C080F = 15;
  strcpy(&qword_27C07F8, "dcdc_efficiency");
  strcpy(&qword_27C0810, "drive_train_efficiency");
  HIBYTE(word_27C0826) = 22;
  operator new();
}

void sub_FF3BFC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0826) < 0)
  {
    sub_21E6350();
  }

  sub_21E635C();
  _Unwind_Resume(a1);
}

unint64_t sub_FF3C1C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E7A3D0(a1);
  v7 = sub_E7A124(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

unint64_t sub_FF3D04(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E7C414(a1);
  v7 = sub_E7C160(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

unint64_t sub_FF3DEC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E8237C(a1);
  v7 = sub_E7FE50(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

float64x2_t sub_FF3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = vnegq_f64(v7);
  *(a1 + 48) = result;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return result;
}

unint64_t sub_FF3EF8(void *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4, void *a5)
{
  v10 = sub_F68F18(a1) & 0xFFFFFFFFFFFFF9F1;
  v11 = a5[10];
  if ((v11 & 0x10) == 0 || (v12 = *a3, v13 = a3[1], *a3 == v13))
  {
LABEL_5:
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v14 = a5[10];
    if ((v14 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  while (*v12 - 2 > 2)
  {
    v12 += 40;
    if (v12 == v13)
    {
      goto LABEL_5;
    }
  }

  v10 |= 8uLL;
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  v17 = *a2;
  v16 = a2[1];
  if (v17 == v16)
  {
LABEL_19:
    v10 &= ~4uLL;
    v14 = a5[10];
    if ((v14 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_7:
    if ((v14 & 4) != 0)
    {
      goto LABEL_38;
    }

LABEL_8:
    v15 = v10;
    if ((v14 & 0x20) == 0)
    {
      return v15;
    }

LABEL_106:
    v63 = a4[1];
    v64 = *a4;
    if (*a4 == v63)
    {
LABEL_110:
      v66 = v15 & 0xFFFFFFFFFFFFFDFFLL;
      if (v64 != v63)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v65 = *a4;
      while (*(v65 + 8) != 1)
      {
        v65 += 32;
        if (v65 == v63)
        {
          goto LABEL_110;
        }
      }

      v66 = v15 | 0x200;
      if (v64 != v63)
      {
LABEL_113:
        v67 = v64 + 32;
        do
        {
          v68 = *(v67 - 24);
          v69 = v68 != 1 || v67 == v63;
          v67 += 32;
        }

        while (!v69);
        if ((v68 & 1) == 0)
        {
          return v66 | 0x400;
        }
      }
    }

    return v66 & 0xFFFFFFFFFFFFFBFFLL;
  }

  while (*(v17 + 48) != 1 || !*(**(v17 + 32) + 704 * *(v17 + 40) + 689) || sub_FF5658(v17))
  {
    v17 += 64;
    if (v17 == v16)
    {
      goto LABEL_19;
    }
  }

  v10 |= 4uLL;
  v14 = a5[10];
  if ((v14 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  sub_F6D05C(a1, &v73);
  v18 = v73;
  v19 = v74;
  v20 = v75;
  v21 = v76;
  if (v73)
  {
    if (v75)
    {
      while (1)
      {
        v24 = sub_F6D024(v18);
        v25 = sub_F6D024(v20);
        if (v19 >= v24 || v21 >= v25)
        {
          if (v19 < v24 == v21 < v25)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v26 = sub_F6D17C(v18, v19);
          if (v26 == sub_F6D17C(v20, v21))
          {
            goto LABEL_37;
          }
        }

        v23 = sub_F6D17C(v18, v19++);
        if (sub_4389AC(a5[3], v23))
        {
          goto LABEL_35;
        }
      }
    }

    while (v19 < sub_F6D024(v18))
    {
      v22 = sub_F6D17C(v18, v19++);
      if (sub_4389AC(a5[3], v22))
      {
        goto LABEL_35;
      }
    }
  }

  else if (v75)
  {
    while (v21 < sub_F6D024(v20))
    {
      v27 = sub_F6D17C(0, v19++);
      if (sub_4389AC(a5[3], v27))
      {
LABEL_35:
        v10 |= 2uLL;
        v14 = a5[10];
        if ((v14 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v10 &= ~2uLL;
  v14 = a5[10];
  if ((v14 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  sub_116528C(a5[1], a1, &v73);
  v28 = v73;
  if (v73 == v74)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v15 = (v10 & 0xFFFFFFFFFFFFFFFELL) + 1;
  }

  if (v73 != v74 && (v10 & 2) == 0)
  {
    v30 = *(sub_F69654(a1) + 32);
    if (__PAIR64__(v28[2], *v28) == __PAIR64__(WORD2(v30), v30) && *(v28 + 6) == BYTE6(v30))
    {
      v31 = *v73[1] + 464 * v73[2];
      if (*(v31 + 71) < 0)
      {
        sub_325C(__s2, *(v31 + 48), *(v31 + 56));
      }

      else
      {
        v32 = *(v31 + 48);
        v72 = *(v31 + 64);
        *__s2 = v32;
      }
    }

    else
    {
      HIBYTE(v72) = 0;
      LOBYTE(__s2[0]) = 0;
    }

    v34 = v73;
    v33 = v74;
    v35 = v73;
    if (v73 != v74)
    {
      if (v72 >= 0)
      {
        v36 = HIBYTE(v72);
      }

      else
      {
        v36 = __s2[1];
      }

      if (v72 < 0)
      {
        v44 = __s2[0];
        v35 = v73;
        while (1)
        {
          v45 = *v35[1] + 464 * v35[2];
          v46 = *(v45 + 71);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v45 + 56);
          }

          if (v46 == v36)
          {
            v50 = *(v45 + 48);
            v48 = v45 + 48;
            v49 = v50;
            v51 = (v47 >= 0 ? v48 : v49);
            if (!memcmp(v51, v44, v36))
            {
              break;
            }
          }

          v35 += 3;
          if (v35 == v33)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        v35 = v73;
        while (1)
        {
          v37 = *v35[1] + 464 * v35[2];
          v38 = *(v37 + 71);
          v39 = v38;
          if ((v38 & 0x80u) != 0)
          {
            v38 = *(v37 + 56);
          }

          if (v38 == v36)
          {
            v42 = *(v37 + 48);
            v40 = v37 + 48;
            v41 = v42;
            v43 = (v39 >= 0 ? v40 : v41);
            if (!memcmp(v43, __s2, v36))
            {
              break;
            }
          }

          v35 += 3;
          if (v35 == v33)
          {
            goto LABEL_97;
          }
        }
      }
    }

    if (v35 != v33)
    {
      v52 = v35 + 3;
      if (v35 + 3 != v33)
      {
        do
        {
          v54 = *v52[1] + 464 * v52[2];
          v55 = *(v54 + 71);
          if (v55 >= 0)
          {
            v56 = *(v54 + 71);
          }

          else
          {
            v56 = *(v54 + 56);
          }

          v57 = HIBYTE(v72);
          if (v72 < 0)
          {
            v57 = __s2[1];
          }

          if (v56 != v57 || ((v60 = *(v54 + 48), v58 = (v54 + 48), v59 = v60, v55 >= 0) ? (v61 = v58) : (v61 = v59), v72 >= 0 ? (v62 = __s2) : (v62 = __s2[0]), memcmp(v61, v62, v56)))
          {
            v53 = *v52;
            *(v35 + 3) = *(v52 + 3);
            *v35 = v53;
            *(v35 + 1) = *(v52 + 1);
            v35 += 3;
          }

          v52 += 3;
        }

        while (v52 != v33);
        v34 = v73;
        v33 = v74;
      }

      if (v35 != v33)
      {
        v74 = v35;
        v33 = v35;
      }
    }

LABEL_97:
    if (v34 == v33)
    {
LABEL_100:
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_102:
        v28 = v73;
        goto LABEL_103;
      }
    }

    else
    {
      while (!sub_1131728(a5[2], *v34[1] + 464 * v34[2]))
      {
        v34 += 3;
        if (v34 == v33)
        {
          goto LABEL_100;
        }
      }

      v15 |= 2uLL;
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }
    }

    operator delete(__s2[0]);
    goto LABEL_102;
  }

LABEL_103:
  if (v28)
  {
    v74 = v28;
    operator delete(v28);
  }

  if ((a5[10] & 0x20) != 0)
  {
    goto LABEL_106;
  }

  return v15;
}

void sub_FF44B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_FF4504(uint64_t a1, int a2, _BYTE *a3)
{
  if ((a3[80] & 1) == 0)
  {
    return 0;
  }

  v8 = sub_73F1C(a1);
  if (*(v8 + 72) == 1)
  {
    v3 = *(v8 + 73);
  }

  else
  {
    v3 = 0;
  }

  if (a2 && (sub_F6E658(a1, 14) & 1) == 0 && (sub_F6E658(a1, 16) & 1) == 0)
  {
    v9 = *(*a3 + 8);
    v10 = **a3;
    if (v10 != v9)
    {
      while (*(v10 + 176) != 1)
      {
        v10 += 440;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }
    }

    if (v10 != v9 && *(v10 + 432))
    {
      v3 |= 2uLL;
    }
  }

LABEL_17:
  v11 = sub_F6C814(a1);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x2Fu)
  {
    v13 = v12[23];
    if (v13)
    {
      v14 = *(*v11 + v13);
      v15 = v14 > 0x2D;
      v16 = (1 << v14) & 0x208040000000;
      if (!v15 && v16 != 0)
      {
        return v3;
      }
    }
  }

  if (*(sub_F69058(a1) + 32) != 1 || *(sub_F69058(a1) + 8) < *(a3 + 7))
  {
    return v3;
  }

  return v3 | 4;
}

unint64_t sub_FF465C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 80);
  if ((v9 & 2) != 0)
  {
    v43 = sub_4DAC3C(a2);
    LODWORD(v44) = v12;
    v51 = sub_4DACB0(a2);
    v52 = v13;
    if (!sub_4566B4(&v51))
    {
      if (sub_4566B4(&v43) || sub_4DADBC(a2))
      {
        v10 = 496;
        if ((*(a5 + 80) & 0x40) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v10 = 0;
        if ((*(a5 + 80) & 0x40) == 0)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_41;
    }

    v14 = sub_456698((*(a5 + 40) + 320));
    v15 = sub_456698((*(a5 + 40) + 344));
    v16 = sub_456698((*(a5 + 40) + 416));
    v17 = sub_4DADB4(a2);
    v18 = *(v17 + 8);
    v49 = *v17;
    v50 = v18;
    v19 = sub_456C80(&v49, &v43);
    v20 = sub_456698(&v51);
    v21 = *(a5 + 64);
    v22 = v21 * v14;
    if (v22 >= 0.0)
    {
      if (v22 >= 4.50359963e15)
      {
        goto LABEL_15;
      }

      v23 = (v22 + v22) + 1;
    }

    else
    {
      if (v22 <= -4.50359963e15)
      {
        goto LABEL_15;
      }

      v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    }

    v22 = (v23 >> 1);
LABEL_15:
    v24 = 16 * (v19 < v22);
    v25 = *(a5 + 72) * v15;
    if (v25 >= 0.0)
    {
      v26 = *(a5 + 72) * v15;
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v27 = (v25 + v25) + 1;
    }

    else
    {
      v26 = *(a5 + 72) * v15;
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v26 = (v27 >> 1);
LABEL_21:
    if (v19 < v26)
    {
      v24 |= 0x20uLL;
    }

    v28 = v21 * v16;
    if (v28 >= 0.0)
    {
      if (v28 >= 4.50359963e15)
      {
        goto LABEL_29;
      }

      v29 = (v28 + v28) + 1;
    }

    else
    {
      if (v28 <= -4.50359963e15)
      {
        goto LABEL_29;
      }

      v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
    }

    v28 = (v29 >> 1);
LABEL_29:
    if (v20 < v28)
    {
      v24 |= 0x40uLL;
    }

    if (v25 >= 0.0)
    {
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_37;
      }

      v30 = (v25 + v25) + 1;
    }

    else
    {
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_37;
      }

      v30 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v25 = (v30 >> 1);
LABEL_37:
    if (v20 >= v25)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 | 0x80;
    }

    if ((*(a5 + 80) & 0x40) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v10 = 0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_59;
  }

LABEL_41:
  v32 = *a3;
  for (i = a3[1]; v32 != i; v32 += 64)
  {
    if (*(v32 + 48) == 1 && *(**(v32 + 32) + 704 * *(v32 + 40) + 689) && !sub_FF5658(v32))
    {
      break;
    }
  }

  while (v32 != i)
  {
    if (*(v32 + 48) != 1)
    {
      sub_5AF20();
    }

    if (*(**(v32 + 32) + 704 * *(v32 + 40) + 689) - 1 <= 2)
    {
      v10 |= qword_22AEC10[(*(**(v32 + 32) + 704 * *(v32 + 40) + 689) - 1)];
    }

    do
    {
      v32 += 64;
    }

    while (v32 != i && (*(v32 + 48) != 1 || !*(**(v32 + 32) + 704 * *(v32 + 40) + 689) || sub_FF5658(v32)));
  }

LABEL_59:
  v33 = *(a5 + 80);
  if ((v33 & 8) == 0)
  {
    goto LABEL_76;
  }

  sub_1168CF4(*(a5 + 8), a1, &v43);
  if (v43 == v44 && v45 == v46 && (v34 = __p, __p == v48))
  {
    v10 &= ~0x200uLL;
    if (__p)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v10 |= 0x200uLL;
    v34 = __p;
    if (__p)
    {
LABEL_64:
      v35 = v48;
      v36 = v34;
      if (v48 != v34)
      {
        v37 = v48;
        do
        {
          v39 = *(v37 - 3);
          v37 -= 24;
          v38 = v39;
          if (v39)
          {
            *(v35 - 2) = v38;
            operator delete(v38);
          }

          v35 = v37;
        }

        while (v37 != v34);
        v36 = __p;
      }

      v48 = v34;
      operator delete(v36);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v33 = *(a5 + 80);
LABEL_76:
  if ((v33 & 0x10) != 0)
  {
    v40 = *a4;
    v41 = *(a4 + 8);
    if (*a4 == v41)
    {
      return v10 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      while (*v40 != 3)
      {
        v40 += 40;
        if (v40 == v41)
        {
          return v10 & 0xFFFFFFFFFFFFFFF7;
        }
      }

      return v10 | 8;
    }
  }

  return v10;
}

uint64_t sub_FF4B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4D20B0(*a1, 14);
  if (sub_4D20B0(a1[1] - 1096, 15))
  {
    v6 |= 2uLL;
  }

  if (sub_4D20B0(*a1, 16))
  {
    v6 |= 8uLL;
  }

  if (sub_4D20C0(*a1, 1))
  {
    v6 |= 0x10uLL;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF1BLL;
  if (sub_4D20C0(*a1, 0))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_4D20C0(a1[1] - 1096, 2);
  v10 = 4;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v8 | v10;
  v12 = sub_4D20B0(*a1, 17);
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = sub_4D20C0(*a1, 3);
  v16 = 128;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v14 | v16 | v7;
  if ((*(a3 + 80) & 2) != 0)
  {
    if (sub_4D20C0(a1[1] - 1096, 6))
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0;
    }

    if (sub_4D20C0(a1[1] - 1096, 7))
    {
      v19 = 0x2000;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a3 + 40);
    v21 = sub_3B1D8C(*(a3 + 32));
    v22 = sub_445D54((v20 + 20), v20, v21);
    if (v22)
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    v24 = a1[1];
    v25 = *a1 + 1096;
    if (v25 != v24)
    {
      v48 = a2;
      do
      {
        v26 = sub_4D2130(v25);
        if (*v26 != 0x7FFFFFFF && v26[9] != 0x7FFFFFFF)
        {
          v28 = v26;
          if (sub_4566B4(v26 + 2))
          {
            v29 = v28[28];
            if (v29)
            {
              if (v29 == 2)
              {
                v30 = *(v28 + 13);
                if (v30 <= 0xFFFFFFFEFFFFFFFFLL && v30)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                if (v29 != 1)
                {
                  sub_5AF20();
                }

                if (*(v28 + 13) != -1)
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }

        v25 += 1096;
      }

      while (v25 != v24);
      v25 = v24;
LABEL_43:
      a2 = v48;
    }

    if (*(a2 + 24) == 1)
    {
      v31 = v22;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) != 0 || a1[1] == v25)
    {
      goto LABEL_52;
    }

    v32 = sub_4D2130(v25);
    v33 = *(a2 + 16);
    v34 = *(v32 + 112);
    v35 = *(v33 + 24);
    if (v34 == -1 || v35 != v34)
    {
      if (v35 != v34)
      {
LABEL_52:
        v36 = (v18 | v19 | v23) & 0xFFFFFFFFFFFFFBFFLL | v17 & 0xFFFFFFFFFFFFC9FFLL;
        v37 = *a1;
        v38 = a1[1];
        if (*a1 != v38)
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v50[0] = &__p;
      if (((off_2674E78[v34])(v50, v32 + 104, v33 + 16) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v36 = v18 | v19 | v23 | v17 & 0xFFFFFFFFFFFFCDFFLL | 0x400;
    v37 = *a1;
    v38 = a1[1];
    if (*a1 != v38)
    {
LABEL_53:
      while (!sub_4531E0(v37, *(a3 + 40), *(a3 + 32)))
      {
        v37 += 1096;
        if (v37 == v38)
        {
          goto LABEL_55;
        }
      }

      v39 = v36 | 0x800;
LABEL_57:
      v40 = sub_4D39C4(a1[1] - 1096);
      v51 = sub_4DACB0(v40);
      v52 = v41;
      v42 = vcvtd_n_f64_s64(sub_449640(&v51, *(a3 + 40)), 1uLL);
      if (v42 >= 0.0)
      {
        if (v42 < 4.50359963e15)
        {
          v43 = (v42 + v42) + 1;
          goto LABEL_62;
        }
      }

      else if (v42 > -4.50359963e15)
      {
        v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
LABEL_62:
        v42 = (v43 >> 1);
      }

      v44 = v42;
      v45 = *(a3 + 40);
      v46 = sub_3B1D8C(*(a3 + 32));
      sub_445D54((v45 + 20), v45, v46);
      if (*(a3 + 48) > v44)
      {
        sub_455440(v50, *(a3 + 40), *(*(a3 + 40) + 440), *(a3 + 32));
      }

      return v39 | 0x100;
    }

LABEL_55:
    v39 = v36 & 0xFFFFFFFFFFFFF7FFLL;
    goto LABEL_57;
  }

  return v17;
}

void sub_FF4FFC(void *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 **a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, int32x4_t a7@<Q4>)
{
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v12 = *(a5 + 80);
  if ((v12 & 0x10) != 0)
  {
    v15 = *a3;
    v14 = a3[1];
    if (*a3 == v14)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v16 = v14 - v15 - 40;
    if (v16 >= 0x28)
    {
      v19 = 0;
      v20 = 0;
      v21 = v16 / 0x28 + 1;
      v18 = &v15[40 * (v21 & 0xFFFFFFFFFFFFFFELL)];
      v22 = v21 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        if (*v15 - 2 < 3)
        {
          ++v19;
        }

        if (v15[40] - 2 < 3)
        {
          ++v20;
        }

        v15 += 80;
        v22 -= 2;
      }

      while (v22);
      v17 = v20 + v19;
      if (v21 == (v21 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        *(a6 + 12) = sub_314EB0(v17);
        v25 = *a3;
        v24 = a3[1];
        if (*a3 == v24)
        {
          v27 = 0;
        }

        else
        {
          v26 = v24 - v25 - 40;
          if (v26 >= 0x28)
          {
            v29 = 0;
            v30 = 0;
            v31 = v26 / 0x28 + 1;
            v28 = &v25[40 * (v31 & 0xFFFFFFFFFFFFFFELL)];
            v32 = v31 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              if (*v25 == 1)
              {
                ++v29;
              }

              if (v25[40] == 1)
              {
                ++v30;
              }

              v25 += 80;
              v32 -= 2;
            }

            while (v32);
            v27 = v30 + v29;
            if (v31 == (v31 & 0xFFFFFFFFFFFFFFELL))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v27 = 0;
            v28 = *a3;
          }

          do
          {
            v33 = *v28;
            v28 += 40;
            if (v33 == 1)
            {
              ++v27;
            }
          }

          while (v28 != v24);
        }

LABEL_30:
        *(a6 + 16) = sub_314EB0(v27);
        v12 = *(a5 + 80);
        goto LABEL_31;
      }
    }

    else
    {
      v17 = 0;
      v18 = *a3;
    }

    do
    {
      v23 = *v18;
      v18 += 40;
      if ((v23 - 2) < 3)
      {
        ++v17;
      }
    }

    while (v18 != v14);
    goto LABEL_16;
  }

LABEL_31:
  if ((v12 & 8) != 0)
  {
    sub_11681B4(*(a5 + 8), a1, &v89);
    v34 = v89;
    v35 = v90;
    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    if (v34 != v35)
    {
      *(a6 + 20) = 1;
    }
  }

  v36 = *(a5 + 80);
  if ((v36 & 0x20) != 0)
  {
    v38 = *a4;
    v37 = a4[1];
    if (*a4 != v37)
    {
      v39 = v37 - v38 - 32;
      if (v39 < 0x60)
      {
        v40 = 0;
        v41 = 0;
        v42 = *a4;
        goto LABEL_51;
      }

      v43 = (v39 >> 5) + 1;
      if (v39 >= 0x3E0)
      {
        v45 = 0uLL;
        v44 = v43 & 0xFFFFFFFFFFFFFE0;
        v46.i64[0] = 0x101010101010101;
        v46.i64[1] = 0x101010101010101;
        v47 = *a4;
        v48 = 0uLL;
        v49 = v43 & 0xFFFFFFFFFFFFFE0;
        v50 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        do
        {
          v64.i8[0] = v47[8];
          v65.i8[0] = v64.i8[0];
          v65.i8[1] = v47[40];
          v64.i8[1] = v65.i8[1];
          v64.i8[2] = v47[72];
          v65.i8[2] = v64.i8[2];
          v65.i8[3] = v47[104];
          v65.i8[4] = v47[136];
          v64.i8[3] = v65.i8[3];
          v64.i8[4] = v65.i8[4];
          v66.i8[0] = v47[520];
          v64.i8[5] = v47[168];
          v65.i8[5] = v64.i8[5];
          v65.i8[6] = v47[200];
          v64.i8[6] = v65.i8[6];
          v65.i8[7] = v47[232];
          v64.i8[7] = v65.i8[7];
          v65.i8[8] = v47[264];
          v67.i8[0] = v66.i8[0];
          v67.i8[1] = v47[552];
          v68.i8[0] = v65.i8[8];
          v68.i8[1] = v47[296];
          v66.i8[1] = v67.i8[1];
          v65.i8[9] = v68.i8[1];
          v68.i8[2] = v47[328];
          v65.i8[10] = v68.i8[2];
          v67.i8[2] = v47[584];
          v66.i8[2] = v67.i8[2];
          v67.i8[3] = v47[616];
          v68.i8[3] = v47[360];
          v65.i8[11] = v68.i8[3];
          v67.i8[4] = v47[648];
          v66.i8[3] = v67.i8[3];
          v68.i8[4] = v47[392];
          v66.i8[4] = v67.i8[4];
          v65.i8[12] = v68.i8[4];
          v68.i8[5] = v47[424];
          v65.i8[13] = v68.i8[5];
          v67.i8[5] = v47[680];
          v66.i8[5] = v67.i8[5];
          v67.i8[6] = v47[712];
          v68.i8[6] = v47[456];
          v65.i8[14] = v68.i8[6];
          v67.i8[7] = v47[744];
          v66.i16[3] = v67.i16[3];
          v68.i8[7] = v47[488];
          v65.i8[15] = v68.i8[7];
          v67.i8[8] = v47[776];
          v67.i8[9] = v47[808];
          v69.i16[0] = v67.i16[4];
          v67.i8[10] = v47[840];
          v69.i8[2] = v67.i8[10];
          v67.i8[11] = v47[872];
          v69.i8[3] = v67.i8[11];
          v67.i8[12] = v47[904];
          v69.i8[4] = v67.i8[12];
          v67.i8[13] = v47[936];
          v69.i8[5] = v67.i8[13];
          v67.i8[14] = v47[968];
          v69.i8[6] = v67.i8[14];
          v67.i8[15] = v47[1000];
          v69.i8[7] = v67.i8[15];
          v70 = vmovl_u8(v64);
          v71 = vmovl_u8(v68);
          v72 = vmovl_u8(v66);
          v73 = vmovl_u8(v69);
          v51 = vaddw_high_u16(v51, v71);
          v48 = vaddw_high_u16(v48, v70);
          v50 = vaddw_u16(v50, *v71.i8);
          v45 = vaddw_u16(v45, *v70.i8);
          v53 = vaddw_high_u16(v53, v72);
          v55 = vaddw_high_u16(v55, v73);
          v54 = vaddw_u16(v54, *v73.i8);
          v52 = vaddw_u16(v52, *v72.i8);
          v74 = veorq_s8(v65, v46);
          v75 = veorq_s8(v67, v46);
          v76 = vmovl_u8(*v74.i8);
          v77 = vmovl_high_u8(v74);
          v78 = vmovl_u8(*v75.i8);
          v79 = vmovl_high_u8(v75);
          v59 = vaddw_high_u16(v59, v77);
          v58 = vaddw_u16(v58, *v77.i8);
          v57 = vaddw_high_u16(v57, v76);
          v56 = vaddw_u16(v56, *v76.i8);
          v63 = vaddw_high_u16(v63, v79);
          v62 = vaddw_u16(v62, *v79.i8);
          v61 = vaddw_high_u16(v61, v78);
          v60 = vaddw_u16(v60, *v78.i8);
          v47 += 1024;
          v49 -= 32;
        }

        while (v49);
        a7 = vaddq_s32(v54, v50);
        v40 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v52, v45), a7), vaddq_s32(vaddq_s32(v53, v48), vaddq_s32(v55, v51))));
        v41 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v60, v56), vaddq_s32(v62, v58)), vaddq_s32(vaddq_s32(v61, v57), vaddq_s32(v63, v59))));
        if (v43 == v44)
        {
          goto LABEL_52;
        }

        if ((v43 & 0x1C) == 0)
        {
          v42 = &v38[32 * v44];
          do
          {
LABEL_51:
            v85 = v42[8];
            v40 += v85;
            v41 += v85 ^ 1;
            v42 += 32;
          }

          while (v42 != v37);
LABEL_52:
          *(a6 + 24) = v40;
          *(a6 + 28) = v41;
          goto LABEL_53;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v44 = 0;
      }

      v80 = v40;
      v81 = v41;
      v42 = &v38[32 * (v43 & 0xFFFFFFFFFFFFFFCLL)];
      v82 = v44 - (v43 & 0xFFFFFFFFFFFFFFCLL);
      v83 = &v38[32 * v44 + 72];
      v84.i64[0] = 0xFF000000FFLL;
      v84.i64[1] = 0xFF000000FFLL;
      do
      {
        a7.i8[0] = *(v83 - 64);
        a7.i8[2] = *(v83 - 32);
        a7.i8[4] = *v83;
        a7.i8[6] = v83[32];
        v80 = vaddq_s32(v80, vandq_s8(vmovl_u16(*a7.i8), v84));
        a7 = vandq_s8(vmovl_u16(veor_s8(*a7.i8, 0x1000100010001)), v84);
        v81 = vaddq_s32(v81, a7);
        v83 += 128;
        v82 += 4;
      }

      while (v82);
      v40 = vaddvq_s32(v80);
      v41 = vaddvq_s32(v81);
      if (v43 == (v43 & 0xFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

LABEL_53:
  if ((v36 & 0x40) != 0)
  {
    v87 = *a2;
    for (i = a2[1]; v87 != i; v87 += 64)
    {
      if (*(v87 + 48) == 1 && *(**(v87 + 32) + 704 * *(v87 + 40) + 689) && !sub_FF5658(v87))
      {
        break;
      }
    }

    if (v87 == i)
    {
      v88 = 0;
    }

    else
    {
      v88 = 0;
      do
      {
        do
        {
          v87 += 64;
        }

        while (v87 != i && (*(v87 + 48) != 1 || !*(**(v87 + 32) + 704 * *(v87 + 40) + 689) || sub_FF5658(v87)));
        ++v88;
      }

      while (v87 != i);
    }

    *(a6 + 32) = v88;
  }
}

BOOL sub_FF5658(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    sub_5AF20();
  }

  if (*(**(a1 + 32) + 704 * *(a1 + 40) + 688) != 5)
  {
    return 0;
  }

  v2 = *a1;
  v1 = *(a1 + 8);
  sub_4D0560();
  v6 = v4;
  v7 = v5;
  if (!v2)
  {
    if (!v4 || v5 >= sub_F6D024(v4))
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = sub_F6D024(v2);
  v9 = v8;
  if (!v6)
  {
    if (v1 < v8)
    {
      goto LABEL_14;
    }

    return 1;
  }

  v10 = sub_F6D024(v6);
  if (v1 >= v9 || v7 >= v10)
  {
    if (v1 < v9 != v7 < v10)
    {
      goto LABEL_14;
    }

    return 1;
  }

  v11 = sub_F6D17C(v2, v1);
  if (v11 == sub_F6D17C(v6, v7))
  {
    return 1;
  }

LABEL_14:
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_F6C0C8();
  v16 = v15;
  v18 = v17;
  if (v13)
  {
    v19 = v14 < sub_F6D024(v13);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_24:
    v21 = 0;
    return v19 ^ v21 ^ 1;
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_16:
  v20 = sub_F6D024(v16);
  v21 = v18 < v20;
  if (v18 < v20 && v19)
  {
    v23 = sub_F6D17C(v13, v14);
    return v23 == sub_F6D17C(v16, v18);
  }

  return v19 ^ v21 ^ 1;
}

void sub_FF5830()
{
  byte_27C0887 = 3;
  LODWORD(qword_27C0870) = 5136193;
  byte_27C089F = 3;
  LODWORD(qword_27C0888) = 5136194;
  byte_27C08B7 = 3;
  LODWORD(qword_27C08A0) = 5136195;
  byte_27C08CF = 15;
  strcpy(&qword_27C08B8, "vehicle_mass_kg");
  byte_27C08E7 = 21;
  strcpy(&xmmword_27C08D0, "vehicle_cargo_mass_kg");
  byte_27C08FF = 19;
  strcpy(&qword_27C08E8, "vehicle_aux_power_w");
  byte_27C0917 = 15;
  strcpy(&qword_27C0900, "dcdc_efficiency");
  strcpy(&qword_27C0918, "drive_train_efficiency");
  HIBYTE(word_27C092E) = 22;
  operator new();
}

void sub_FF5A0C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C092E) < 0)
  {
    sub_21E642C();
  }

  sub_21E6438();
  _Unwind_Resume(a1);
}

uint64_t sub_FF5A2C(uint64_t a1)
{
  v1 = sub_F6E3D4(a1) / 100000.0 * 0.062 * 3.168 * 1000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      return (v2 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v2 >> 1);
  }

  return v1;
}

void sub_FF5AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  a1[1] = a6;
  a1[2] = a4;
  a1[3] = a5;
  operator new();
}

void sub_FF5BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 48);
  if (v16)
  {
    *(v14 + 56) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FF5C00(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = *(a1 + 152);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 8;
  if (v3 >= 0x40)
  {
    v6 = (v3 >> 3) + 1;
    v7 = v6 & 7;
    if ((v6 & 7) == 0)
    {
      v7 = 8;
    }

    v8 = v6 - v7;
    v5 = (v2 + 8 * v8);
    v9 = (v2 + 32);
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = v9 - 8;
      v15 = vld2q_f32(v14);
      v16 = vld2q_f32(v9);
      v11 = vaddw_high_u32(v11, v15);
      v10 = vaddw_u32(v10, *&v15);
      v13 = vaddw_high_u32(v13, v16);
      v12 = vaddw_u32(v12, *&v16);
      v9 += 16;
      v8 -= 8;
    }

    while (v8);
    result = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v10), vaddq_s64(v13, v11)));
  }

  else
  {
    result = 0;
    v5 = v2;
  }

  do
  {
    v17 = *v5;
    v5 += 2;
    result += v17;
  }

  while (v5 != v1);
  return result;
}

uint64_t sub_FF5CB0(uint64_t a1, void *a2, uint64_t a3, int *a4, int a5, int a6, void *a7, void *a8)
{
  v8 = a8;
  v10 = a5;
  v11 = a2;
  v12 = a1;
  if (!a5)
  {
    v20 = a6;
    v17 = 0;
    v70 = 0;
    if (*(a1 + 89) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v14 = *(a1 + 8);
  sub_43EDEC(&__p);
  *(v14 + 9954) = 1;
  v16 = __p;
  v15 = v80;
  if (__p == v80)
  {
    v17 = 0;
    v10 = a5;
    v20 = a6;
    if (__p)
    {
LABEL_14:
      v80 = v16;
      operator delete(v16);
    }
  }

  else
  {
    v17 = 0;
    do
    {
      *(v14 + 9954) = 1;
      sub_100A578(v14 + 9960, 1);
      v19 = sub_100A97C(v14 + 9960, v16);
      if (v19 == -1)
      {
        sub_100AA78(v14 + 9960, v16, v18, v85);
      }

      v17 |= v19 == -1;
      v16 += 8;
    }

    while (v16 != v15);
    v16 = __p;
    v11 = a2;
    v12 = a1;
    v10 = a5;
    v20 = a6;
    if (__p)
    {
      goto LABEL_14;
    }
  }

  v8 = a8;
  v70 = v10;
  if (*(v12 + 89) != 1)
  {
LABEL_16:
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_32:
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_33:
    v90 = 0;
    v91 = 0;
    v92 = 0;
    goto LABEL_39;
  }

LABEL_8:
  v21 = *(v12 + 8);
  sub_11631A4(v11, 0, *v12, &__p);
  *(v21 + 9954) = 1;
  v23 = __p;
  v22 = v80;
  if (__p == v80)
  {
    v11 = a2;
    v20 = a6;
    if (__p)
    {
LABEL_30:
      v80 = v23;
      operator delete(v23);
    }
  }

  else
  {
    v24 = 0;
    do
    {
      *(v21 + 9954) = 1;
      sub_100A578(v21 + 9960, 1);
      v26 = sub_100A97C(v21 + 9960, v23);
      if (v26 == -1)
      {
        sub_100AA78(v21 + 9960, v23, v25, v85);
      }

      v24 |= v26 == -1;
      v23 += 8;
    }

    while (v23 != v22);
    v23 = __p;
    v11 = a2;
    v12 = a1;
    v17 |= v24;
    v20 = a6;
    if (__p)
    {
      goto LABEL_30;
    }
  }

  v10 = v70;
  if ((v70 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  sub_1162C8C(*(v12 + 16), v11, &v93);
  v28 = v93;
  for (i = v94; v28 != i; v28 += 3)
  {
    sub_1006B30(a7, v28, v28);
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_20:
  sub_1162F2C(v11, &v90);
  v30 = v90;
  v29 = v91;
  if (v90 != v91)
  {
    do
    {
      sub_1006B30(v8, v30, v30);
      v30 += 3;
    }

    while (v30 != v29);
    v30 = v90;
    v29 = v91;
  }

  if (v30 != v29)
  {
    sub_F6BA80(v11, 0);
    v30 = v90;
    v29 = v91;
  }

  if (v30 != v29)
  {
    while (*(*v30[1] + 464 * v30[2] + 352) != 1)
    {
      v30 += 3;
      if (v30 == v29)
      {
        goto LABEL_39;
      }
    }

    sub_F6BA80(v11, 1);
  }

LABEL_39:
  if (v10)
  {
    sub_1163BD4(v85);
    v31 = v12 + 8;
    v32 = *(v12 + 8);
    v34 = *(&v86 + 1);
    v33 = v87;
    *(v32 + 9954) = 1;
    if (v34 == v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = 0;
      do
      {
        *(v32 + 9954) = 1;
        sub_1006F00(v32 + 10040, 1);
        v37 = sub_1007A48(v32 + 10040, v34);
        if (v37 == -1)
        {
          sub_1007CA8(v32 + 10040, v34, v36, &__p);
        }

        v35 |= v37 == -1;
        v34 += 88;
      }

      while (v34 != v33);
      v32 = *v31;
      v11 = a2;
    }

    v10 = v70;
  }

  else
  {
    v35 = 0;
    v89 = 0;
    v87 = 0u;
    *v88 = 0u;
    *v85 = 0u;
    v86 = 0u;
    v31 = v12 + 8;
    v32 = *(v12 + 8);
    *(v32 + 9954) = 1;
  }

  v38 = sub_F8F510(v32 + 8, v88);
  sub_11637AC(*(a1 + 16), v11, a3, a4, &__p);
  if (__p != v80 || v81 != v82 || v83 != v84)
  {
    sub_F6BA80(v11, 3);
  }

  if (v10)
  {
    sub_43EDEC(&v76);
    if (v76 != v77)
    {
      sub_F6BA80(v11, 2);
    }

    v39 = v17 | v35 | v38;
    v40 = v93;
    v41 = v94;
    if (v93 != v94)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v39 = v17 | v35 | v38;
    v40 = v93;
    v41 = v94;
    if (v93 != v94)
    {
      goto LABEL_62;
    }
  }

  if (v85[0] == v85[1] && *(&v86 + 1) == v87 && v88[0] == v88[1])
  {
    v57 = *v31;
    *(*v31 + 9954) = 1;
    v58 = __p;
    v59 = v80;
    if (__p == v80)
    {
      v60 = 0;
    }

    else
    {
      v60 = 0;
      do
      {
        *(v57 + 9954) = 1;
        sub_100A578(v57 + 9960, 1);
        v62 = sub_100A97C(v57 + 9960, v58);
        if (v62 == -1)
        {
          sub_100AA78(v57 + 9960, v58, v61, v96);
        }

        v60 |= v62 == -1;
        ++v58;
      }

      while (v58 != v59);
      v57 = *v31;
    }

    *(v57 + 9954) = 1;
    v63 = v81;
    v64 = v82;
    if (v81 == v82)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      do
      {
        *(v57 + 9954) = 1;
        sub_1006F00(v57 + 10040, 1);
        v67 = sub_1007A48(v57 + 10040, v63);
        if (v67 == -1)
        {
          sub_1007CA8(v57 + 10040, v63, v66, v96);
        }

        v65 |= v67 == -1;
        v63 += 88;
      }

      while (v63 != v64);
      v57 = *v31;
    }

    v68 = sub_F8F510(v57 + 8, &v83);
    v40 = v93;
    v41 = v94;
    v42 = v39 & 1;
    if ((v60 | v65 | v68))
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

LABEL_62:
  if (__p != v80 || v81 != v82)
  {
    v42 = v39 & 1;
LABEL_65:
    v42 |= 2uLL;
    goto LABEL_66;
  }

  v42 = v39 & 1;
  if (v83 != v84)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v40 == v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 4;
  }

  if (v85[0] != v85[1] || *(&v86 + 1) != v87 || v88[0] != v88[1])
  {
    v43 |= 8uLL;
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  v44 = v83;
  if (v83)
  {
    v45 = v84;
    v46 = v83;
    if (v84 != v83)
    {
      v47 = v84;
      do
      {
        v49 = *(v47 - 3);
        v47 -= 24;
        v48 = v49;
        if (v49)
        {
          *(v45 - 2) = v48;
          operator delete(v48);
        }

        v45 = v47;
      }

      while (v47 != v44);
      v46 = v83;
    }

    v84 = v44;
    operator delete(v46);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v50 = v88[0];
  if (v88[0])
  {
    v51 = v88[1];
    v52 = v88[0];
    if (v88[1] != v88[0])
    {
      v53 = v88[1];
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v88[0];
    }

    v88[1] = v50;
    operator delete(v52);
  }

  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  return v43;
}

void sub_FF643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(&a20);
  sub_4266B8(va);
  v30 = *(v28 - 168);
  if (v30)
  {
    *(v28 - 160) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 144);
  if (v31)
  {
    *(v28 - 136) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

void sub_FF66E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FF6710(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  a1[1] = a6;
  a1[2] = a4;
  a1[3] = a5;
  operator new();
}

void sub_FF6808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 48);
  if (v16)
  {
    *(v14 + 56) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double sub_FF683C(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      do
      {
        v6 = *v2;
        v7 = v2[8];
        if (v7)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        v9 = v2[6];
        v2[6] = 0;
        if (v9)
        {
          operator delete(v9);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6);
    }

    *(a1 + 112) = 0;
    v3 = *(a1 + 104);
    if (v3)
    {
      bzero(*(a1 + 96), 8 * v3);
    }

    *(a1 + 120) = 0;
  }

  v4 = *(a1 + 8);

  return sub_FF68E4(v4);
}

double sub_FF68E4(uint64_t a1)
{
  v2 = a1 + 28672;
  *(a1 + 31330) = 0;
  sub_F8F518(a1 + 8);
  result = sub_1006A70(a1 + 31336);
  LODWORD(result) = *(v2 + 2760);
  v4 = 4;
  if (!vcvts_n_u32_f32(*&result, 2uLL))
  {
    do
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v4 *= 2;
    }

    while (!(*&result * v4));
  }

  if (*(a1 + 31552) || v4 != *(a1 + 31560))
  {

    *&result = sub_1007E1C(a1 + 31416, v4).u64[0];
  }

  return result;
}

uint64_t sub_FF69CC(uint64_t a1, void *a2, int32x2_t *a3, int *a4, int a5, int a6, void *a7, void *a8)
{
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v13 = a1;
  if (!a5 || *(a1 + 88) != 1)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v14 = *(a1 + 8);
  sub_11681B4(*(a1 + 16), a2, &__p);
  *(v14 + 31330) = 1;
  v16 = __p;
  v15 = v90;
  if (__p == v90)
  {
    v17 = 0;
    v10 = a6;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_111;
  }

  v75 = a8;
  v17 = 0;
  do
  {
    *(v14 + 31330) = 1;
    sub_100A578(v14 + 31336, 1);
    v19 = sub_100A97C(v14 + 31336, v16);
    if (v19 == -1)
    {
      sub_100AA78(v14 + 31336, v16, v18, v95);
    }

    v17 |= v19 == -1;
    ++v16;
  }

  while (v16 != v15);
  v16 = __p;
  v11 = a5;
  a8 = v75;
  v10 = a6;
  if (__p)
  {
LABEL_111:
    v90 = v16;
    operator delete(v16);
  }

LABEL_9:
  if (*(v13 + 89) != 1)
  {
    goto LABEL_18;
  }

  v78 = v10;
  v20 = *(v13 + 8);
  v79 = v13;
  sub_1165504(v12, 0, *v13, &__p);
  *(v20 + 31330) = 1;
  v22 = __p;
  v21 = v90;
  if (__p == v90)
  {
    v11 = a5;
    v10 = v78;
    if (!__p)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v76 = a8;
    v23 = 0;
    do
    {
      *(v20 + 31330) = 1;
      sub_100A578(v20 + 31336, 1);
      v25 = sub_100A97C(v20 + 31336, v22);
      if (v25 == -1)
      {
        sub_100AA78(v20 + 31336, v22, v24, v95);
      }

      v23 |= v25 == -1;
      ++v22;
    }

    while (v22 != v21);
    v22 = __p;
    a8 = v76;
    v17 |= v23;
    v11 = a5;
    v10 = v78;
    if (!__p)
    {
      goto LABEL_17;
    }
  }

  v90 = v22;
  operator delete(v22);
LABEL_17:
  v13 = v79;
LABEL_18:
  if ((v11 & 1) == 0)
  {
    v103 = 0;
    v104 = 0;
    v105 = 0;
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_32:
    v100 = 0;
    v101 = 0;
    v102 = 0;
    goto LABEL_36;
  }

  sub_1164FEC(*(v13 + 16), v12, &v103);
  v27 = v103;
  for (i = v104; v27 != i; v27 += 3)
  {
    sub_1007F30(a7, v27, v27);
  }

  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_22:
  sub_116528C(*(v13 + 16), v12, &v100);
  v29 = v100;
  v28 = v101;
  if (v100 != v101)
  {
    do
    {
      sub_1007F30(a8, v29, v29);
      v29 += 3;
    }

    while (v29 != v28);
    v29 = v100;
    v28 = v101;
  }

  if (v29 != v28)
  {
    sub_F6BA80(v12, 0);
    v29 = v100;
    v28 = v101;
  }

  if (v29 != v28)
  {
    while (*(*v29[1] + 464 * v29[2] + 352) != 1)
    {
      v29 += 3;
      if (v29 == v28)
      {
        goto LABEL_36;
      }
    }

    sub_F6BA80(v12, 1);
  }

LABEL_36:
  if (v11)
  {
    v82 = v12;
    sub_1168CF4(*(v13 + 16), v12, v95);
    v30 = v13;
    v31 = (v13 + 8);
    v32 = *(v13 + 8);
    v34 = *(&v96 + 1);
    v33 = v97;
    *(v32 + 31330) = 1;
    if (v34 == v33)
    {
      v35 = 0;
      v12 = v82;
    }

    else
    {
      v80 = v31;
      v35 = 0;
      do
      {
        *(v32 + 31330) = 1;
        sub_1008300(v32 + 31416, 1);
        v37 = sub_1008EEC(v32 + 31416, v34);
        if (v37 == -1)
        {
          sub_10091E8(v32 + 31416, v34, v36, &__p);
        }

        v35 |= v37 == -1;
        v34 += 96;
      }

      while (v34 != v33);
      v31 = v80;
      v32 = *v80;
      v12 = v82;
      v11 = a5;
    }

    v13 = v30;
  }

  else
  {
    v35 = 0;
    v99 = 0;
    v97 = 0u;
    *v98 = 0u;
    *v95 = 0u;
    v96 = 0u;
    v31 = (v13 + 8);
    v32 = *(v13 + 8);
    *(v32 + 31330) = 1;
  }

  v38 = sub_F8F510(v32 + 8, v98);
  sub_1165B0C(*(v13 + 16), v12, a3, a4, &__p);
  if (__p != v90 || v91 != v92 || v93 != v94)
  {
    sub_F6BA80(v12, 3);
  }

  v83 = v38;
  if (v11)
  {
    sub_1169BAC(*(v13 + 16), &v86);
    v39 = v86;
    if (v86 != v87)
    {
      sub_F6BA80(v12, 2);
      v39 = v86;
    }
  }

  else
  {
    v39 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  v40 = *v31;
  *(*v31 + 31330) = 1;
  v41 = v87;
  if (v39 == v87)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0;
    do
    {
      *(v40 + 31330) = 1;
      sub_100A578(v40 + 31336, 1);
      v44 = sub_100A97C(v40 + 31336, v39);
      if (v44 == -1)
      {
        sub_100AA78(v40 + 31336, v39, v43, v106);
      }

      v42 |= v44 == -1;
      ++v39;
    }

    while (v39 != v41);
  }

  v45 = v17 | v35 | v83 | v42;
  v46 = v103;
  v47 = v104;
  if (v103 == v104 && v95[0] == v95[1] && *(&v96 + 1) == v97 && v98[0] == v98[1])
  {
    v63 = *v31;
    *(*v31 + 31330) = 1;
    v64 = __p;
    v65 = v90;
    if (__p == v90)
    {
      v66 = 0;
    }

    else
    {
      v66 = 0;
      do
      {
        *(v63 + 31330) = 1;
        sub_100A578(v63 + 31336, 1);
        v68 = sub_100A97C(v63 + 31336, v64);
        if (v68 == -1)
        {
          sub_100AA78(v63 + 31336, v64, v67, v106);
        }

        v66 |= v68 == -1;
        ++v64;
      }

      while (v64 != v65);
      v63 = *v31;
    }

    *(v63 + 31330) = 1;
    v69 = v91;
    v70 = v92;
    if (v91 == v92)
    {
      v71 = 0;
    }

    else
    {
      v71 = 0;
      do
      {
        *(v63 + 31330) = 1;
        sub_1008300(v63 + 31416, 1);
        v73 = sub_1008EEC(v63 + 31416, v69);
        if (v73 == -1)
        {
          sub_10091E8(v63 + 31416, v69, v72, v106);
        }

        v71 |= v73 == -1;
        v69 += 96;
      }

      while (v69 != v70);
      v63 = *v31;
    }

    v74 = sub_F8F510(v63 + 8, &v93);
    v46 = v103;
    v47 = v104;
    v48 = v45 & 1;
    if ((v66 | v71 | v74))
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (__p != v90 || v91 != v92)
    {
      v48 = v45 & 1;
LABEL_67:
      v48 |= 2uLL;
      goto LABEL_68;
    }

    v48 = v45 & 1;
    if (v93 != v94)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  if (v46 == v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = v48 | 4;
  }

  if (v95[0] != v95[1] || *(&v96 + 1) != v97 || v98[0] != v98[1])
  {
    v49 |= 8uLL;
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  v50 = v93;
  if (v93)
  {
    v51 = v94;
    v52 = v93;
    if (v94 != v93)
    {
      v53 = v94;
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v93;
    }

    v94 = v50;
    operator delete(v52);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  v56 = v98[0];
  if (v98[0])
  {
    v57 = v98[1];
    v58 = v98[0];
    if (v98[1] != v98[0])
    {
      v59 = v98[1];
      do
      {
        v61 = *(v59 - 3);
        v59 -= 24;
        v60 = v61;
        if (v61)
        {
          *(v57 - 2) = v60;
          operator delete(v60);
        }

        v57 = v59;
      }

      while (v59 != v56);
      v58 = v98[0];
    }

    v98[1] = v56;
    operator delete(v58);
  }

  if (*(&v96 + 1))
  {
    *&v97 = *(&v96 + 1);
    operator delete(*(&v96 + 1));
  }

  if (v95[0])
  {
    v95[1] = v95[0];
    operator delete(v95[0]);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  return v49;
}

void sub_FF7204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(&a20);
  sub_4266B8(va);
  v30 = *(v28 - 168);
  if (v30)
  {
    *(v28 - 160) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 144);
  if (v31)
  {
    *(v28 - 136) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}