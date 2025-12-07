uint64_t sub_2982F4694(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *(*a2 + 8);
  if (!v7)
  {
    v31 = *a3;
    if (!*(*a3 + 8))
    {
      return result;
    }

LABEL_77:
    result = sub_2982FD558(v6, v31);
    v50 = *a2;
    v51 = *(v50 + 8);
    if (v51)
    {
      v52 = *v5;
      v53 = *(*v5 + 8);
      if (!v53)
      {
        goto LABEL_97;
      }

      v54 = *(v53 + 23);
      v55 = *(v51 + 23);
      if (v55 >= 0)
      {
        v56 = *(v51 + 23);
      }

      else
      {
        v56 = *(v51 + 8);
      }

      if (v55 >= 0)
      {
        v57 = *(v50 + 8);
      }

      else
      {
        v57 = *v51;
      }

      if (v54 >= 0)
      {
        v58 = *(v53 + 23);
      }

      else
      {
        v58 = v53[1];
      }

      if (v54 >= 0)
      {
        v59 = v53;
      }

      else
      {
        v59 = *v53;
      }

      if (v58 >= v56)
      {
        v60 = v56;
      }

      else
      {
        v60 = v58;
      }

      result = memcmp(v57, v59, v60);
      v61 = v56 < v58;
      if (result)
      {
        v61 = result < 0;
      }

      if (v61)
      {
LABEL_97:
        v29 = v52;
        v30 = v50;
        goto LABEL_98;
      }
    }

    return result;
  }

  v8 = *result;
  v9 = *(*result + 8);
  if (v9)
  {
    v10 = *(v9 + 23);
    v11 = *(v7 + 23);
    if (v11 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = v7[1];
    }

    if (v11 >= 0)
    {
      v13 = *(*a2 + 8);
    }

    else
    {
      v13 = *v7;
    }

    if (v10 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = *(v9 + 8);
    }

    if (v10 >= 0)
    {
      v15 = *(*result + 8);
    }

    else
    {
      v15 = *v9;
    }

    if (v14 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v14;
    }

    result = memcmp(v13, v15, v16);
    v17 = v12 < v14;
    if (result)
    {
      v17 = result < 0;
    }

    if (!v17)
    {
      v31 = *a3;
      v44 = *(v31 + 8);
      if (!v44)
      {
        return result;
      }

      v45 = *(v44 + 23);
      if (v45 >= 0)
      {
        v46 = *(v44 + 23);
      }

      else
      {
        v46 = *(v44 + 8);
      }

      if (v45 >= 0)
      {
        v47 = *(v31 + 8);
      }

      else
      {
        v47 = *v44;
      }

      if (v12 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = v12;
      }

      result = memcmp(v47, v13, v48);
      v49 = v46 < v12;
      if (result)
      {
        v49 = result < 0;
      }

      if (!v49)
      {
        return result;
      }

      goto LABEL_77;
    }
  }

  v18 = *a3;
  v19 = *(*a3 + 8);
  if (v19)
  {
    v20 = *(v7 + 23);
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = *(v19 + 23);
    }

    else
    {
      v22 = *(v19 + 8);
    }

    if (v21 >= 0)
    {
      v23 = *(*a3 + 8);
    }

    else
    {
      v23 = *v19;
    }

    if (v20 >= 0)
    {
      v24 = *(v7 + 23);
    }

    else
    {
      v24 = v7[1];
    }

    if (v20 >= 0)
    {
      v25 = v7;
    }

    else
    {
      v25 = *v7;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      v29 = v8;
      v30 = v18;
LABEL_98:

      return sub_2982FD558(v29, v30);
    }
  }

  result = sub_2982FD558(v8, v6);
  v32 = *a3;
  v33 = *(*a3 + 8);
  if (v33)
  {
    v34 = *a2;
    v35 = *(v34 + 8);
    if (!v35)
    {
      goto LABEL_63;
    }

    v36 = *(v35 + 23);
    v37 = *(v33 + 23);
    if (v37 >= 0)
    {
      v38 = *(v33 + 23);
    }

    else
    {
      v38 = *(v33 + 8);
    }

    if (v37 >= 0)
    {
      v39 = *(*a3 + 8);
    }

    else
    {
      v39 = *v33;
    }

    if (v36 >= 0)
    {
      v40 = *(v35 + 23);
    }

    else
    {
      v40 = *(v35 + 8);
    }

    if (v36 >= 0)
    {
      v41 = *(v34 + 8);
    }

    else
    {
      v41 = *v35;
    }

    if (v40 >= v38)
    {
      v42 = v38;
    }

    else
    {
      v42 = v40;
    }

    result = memcmp(v39, v41, v42);
    v43 = v38 < v40;
    if (result)
    {
      v43 = result < 0;
    }

    if (v43)
    {
LABEL_63:
      v29 = v34;
      v30 = v32;
      goto LABEL_98;
    }
  }

  return result;
}

uint64_t sub_2982F4954(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_2982F4694(a1, a2, a3);
  v9 = *a4;
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *a3;
    v12 = *(*a3 + 8);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = *(v12 + 23);
    v14 = *(v10 + 23);
    if (v14 >= 0)
    {
      v15 = *(v10 + 23);
    }

    else
    {
      v15 = *(v10 + 8);
    }

    if (v14 >= 0)
    {
      v16 = *(v9 + 8);
    }

    else
    {
      v16 = *v10;
    }

    if (v13 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    if (v13 >= 0)
    {
      v18 = *(*a3 + 8);
    }

    else
    {
      v18 = *v12;
    }

    if (v17 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v17;
    }

    result = memcmp(v16, v18, v19);
    v20 = v15 < v17;
    if (result)
    {
      v20 = result < 0;
    }

    if (v20)
    {
LABEL_21:
      result = sub_2982FD558(v11, v9);
      v21 = *a3;
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *a2;
        v24 = *(*a2 + 8);
        if (!v24)
        {
          goto LABEL_41;
        }

        v25 = *(v24 + 23);
        v26 = *(v22 + 23);
        if (v26 >= 0)
        {
          v27 = *(v22 + 23);
        }

        else
        {
          v27 = *(v22 + 8);
        }

        if (v26 >= 0)
        {
          v28 = *(v21 + 8);
        }

        else
        {
          v28 = *v22;
        }

        if (v25 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v25 >= 0)
        {
          v30 = *(*a2 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        result = memcmp(v28, v30, v31);
        v32 = v27 < v29;
        if (result)
        {
          v32 = result < 0;
        }

        if (v32)
        {
LABEL_41:
          result = sub_2982FD558(v23, v21);
          v33 = *a2;
          v34 = *(v33 + 8);
          if (v34)
          {
            v35 = *a1;
            v36 = *(v35 + 8);
            if (!v36)
            {
              goto LABEL_61;
            }

            v37 = *(v36 + 23);
            v38 = *(v34 + 23);
            if (v38 >= 0)
            {
              v39 = *(v34 + 23);
            }

            else
            {
              v39 = *(v34 + 8);
            }

            if (v38 >= 0)
            {
              v40 = *(v33 + 8);
            }

            else
            {
              v40 = *v34;
            }

            if (v37 >= 0)
            {
              v41 = *(v36 + 23);
            }

            else
            {
              v41 = *(v36 + 8);
            }

            if (v37 >= 0)
            {
              v42 = *(v35 + 8);
            }

            else
            {
              v42 = *v36;
            }

            if (v41 >= v39)
            {
              v43 = v39;
            }

            else
            {
              v43 = v41;
            }

            result = memcmp(v40, v42, v43);
            v44 = v39 < v41;
            if (result)
            {
              v44 = result < 0;
            }

            if (v44)
            {
LABEL_61:

              return sub_2982FD558(v35, v33);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2982F4B34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_2982F4954(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = *a4;
    v14 = *(*a4 + 8);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *(v14 + 23);
    v16 = *(v12 + 23);
    if (v16 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    if (v16 >= 0)
    {
      v18 = *(v11 + 8);
    }

    else
    {
      v18 = *v12;
    }

    if (v15 >= 0)
    {
      v19 = *(v14 + 23);
    }

    else
    {
      v19 = *(v14 + 8);
    }

    if (v15 >= 0)
    {
      v20 = *(*a4 + 8);
    }

    else
    {
      v20 = *v14;
    }

    if (v19 >= v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v19;
    }

    result = memcmp(v18, v20, v21);
    v22 = v17 < v19;
    if (result)
    {
      v22 = result < 0;
    }

    if (v22)
    {
LABEL_21:
      result = sub_2982FD558(v13, v11);
      v23 = *a4;
      v24 = *(v23 + 8);
      if (v24)
      {
        v25 = *a3;
        v26 = *(*a3 + 8);
        if (!v26)
        {
          goto LABEL_41;
        }

        v27 = *(v26 + 23);
        v28 = *(v24 + 23);
        if (v28 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v28 >= 0)
        {
          v30 = *(v23 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v27 >= 0)
        {
          v31 = *(v26 + 23);
        }

        else
        {
          v31 = *(v26 + 8);
        }

        if (v27 >= 0)
        {
          v32 = *(*a3 + 8);
        }

        else
        {
          v32 = *v26;
        }

        if (v31 >= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v31;
        }

        result = memcmp(v30, v32, v33);
        v34 = v29 < v31;
        if (result)
        {
          v34 = result < 0;
        }

        if (v34)
        {
LABEL_41:
          result = sub_2982FD558(v25, v23);
          v35 = *a3;
          v36 = *(v35 + 8);
          if (v36)
          {
            v37 = *a2;
            v38 = *(*a2 + 8);
            if (!v38)
            {
              goto LABEL_61;
            }

            v39 = *(v38 + 23);
            v40 = *(v36 + 23);
            if (v40 >= 0)
            {
              v41 = *(v36 + 23);
            }

            else
            {
              v41 = *(v36 + 8);
            }

            if (v40 >= 0)
            {
              v42 = *(v35 + 8);
            }

            else
            {
              v42 = *v36;
            }

            if (v39 >= 0)
            {
              v43 = *(v38 + 23);
            }

            else
            {
              v43 = *(v38 + 8);
            }

            if (v39 >= 0)
            {
              v44 = *(*a2 + 8);
            }

            else
            {
              v44 = *v38;
            }

            if (v43 >= v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = v43;
            }

            result = memcmp(v42, v44, v45);
            v46 = v41 < v43;
            if (result)
            {
              v46 = result < 0;
            }

            if (v46)
            {
LABEL_61:
              result = sub_2982FD558(v37, v35);
              v47 = *a2;
              v48 = *(v47 + 8);
              if (v48)
              {
                v49 = *a1;
                v50 = *(v49 + 8);
                if (!v50)
                {
                  goto LABEL_81;
                }

                v51 = *(v50 + 23);
                v52 = *(v48 + 23);
                if (v52 >= 0)
                {
                  v53 = *(v48 + 23);
                }

                else
                {
                  v53 = *(v48 + 8);
                }

                if (v52 >= 0)
                {
                  v54 = *(v47 + 8);
                }

                else
                {
                  v54 = *v48;
                }

                if (v51 >= 0)
                {
                  v55 = *(v50 + 23);
                }

                else
                {
                  v55 = *(v50 + 8);
                }

                if (v51 >= 0)
                {
                  v56 = *(v49 + 8);
                }

                else
                {
                  v56 = *v50;
                }

                if (v55 >= v53)
                {
                  v57 = v53;
                }

                else
                {
                  v57 = v55;
                }

                result = memcmp(v54, v56, v57);
                v58 = v53 < v55;
                if (result)
                {
                  v58 = result < 0;
                }

                if (v58)
                {
LABEL_81:

                  return sub_2982FD558(v49, v47);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2982F4D94(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2982F4694(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_2982F4954(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_2982F4B34(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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
      v5 = *(a2 - 1);
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = *a1;
        v8 = *(*a1 + 8);
        if (!v8)
        {
          goto LABEL_24;
        }

        v9 = *(v8 + 23);
        v10 = *(v6 + 23);
        v11 = v10 >= 0 ? *(v6 + 23) : *(v6 + 8);
        v12 = v10 >= 0 ? *(v5 + 8) : *v6;
        v13 = v9 >= 0 ? *(v8 + 23) : *(v8 + 8);
        v14 = v9 >= 0 ? *(v7 + 8) : *v8;
        v15 = v13 >= v11 ? v11 : v13;
        v16 = memcmp(v12, v14, v15);
        v17 = v11 < v13;
        if (v16)
        {
          v17 = v16 < 0;
        }

        if (v17)
        {
LABEL_24:
          sub_2982FD558(v7, v5);
        }
      }

      return 1;
    }
  }

  v18 = a1 + 2;
  sub_2982F4694(a1, a1 + 1, a1 + 2);
  v19 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v20 = 0;
    do
    {
      v21 = v18;
      v18 = v19;
      v22 = *v19;
      v23 = *(*v19 + 8);
      if (v23)
      {
        v24 = *(*v21 + 8);
        if (!v24)
        {
          goto LABEL_52;
        }

        v25 = *(v24 + 23);
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = *(v23 + 23);
        }

        else
        {
          v27 = v23[1];
        }

        if (v26 >= 0)
        {
          v28 = v23;
        }

        else
        {
          v28 = *v23;
        }

        if (v25 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        if (v25 >= 0)
        {
          v30 = *(*v21 + 8);
        }

        else
        {
          v30 = *v24;
        }

        if (v29 >= v27)
        {
          v31 = v27;
        }

        else
        {
          v31 = v29;
        }

        v32 = memcmp(v28, v30, v31);
        v33 = v27 < v29;
        if (v32)
        {
          v33 = v32 < 0;
        }

        if (v33)
        {
LABEL_52:
          sub_2982FD600(v48, v22);
          sub_2982FD604(*v18, *v21);
          if (v21 != a1)
          {
            while (v49)
            {
              v34 = v21 - 1;
              v35 = *(v21 - 1);
              v36 = *(v35 + 8);
              if (v36)
              {
                v37 = *(v36 + 23);
                v38 = *(v49 + 23);
                if (v38 >= 0)
                {
                  v39 = *(v49 + 23);
                }

                else
                {
                  v39 = v49[1];
                }

                if (v38 >= 0)
                {
                  v40 = v49;
                }

                else
                {
                  v40 = *v49;
                }

                if (v37 >= 0)
                {
                  v41 = *(v36 + 23);
                }

                else
                {
                  v41 = *(v36 + 8);
                }

                if (v37 >= 0)
                {
                  v42 = *(v35 + 8);
                }

                else
                {
                  v42 = *v36;
                }

                if (v41 >= v39)
                {
                  v43 = v39;
                }

                else
                {
                  v43 = v41;
                }

                v44 = memcmp(v40, v42, v43);
                v45 = v39 < v41;
                if (v44)
                {
                  v45 = v44 < 0;
                }

                if (!v45)
                {
                  break;
                }
              }

              sub_2982FD604(*v21--, v35);
              if (v34 == a1)
              {
                goto LABEL_76;
              }
            }
          }

          v34 = v21;
LABEL_76:
          sub_2982FD604(*v34, v48);
          if (++v20 == 8)
          {
            v46 = v18 + 1 == a2;
            sub_2982FD51C(v48);
            return v46;
          }

          sub_2982FD51C(v48);
        }
      }

      v19 = v18 + 1;
    }

    while (v18 + 1 != a2);
  }

  return 1;
}

void sub_2982F5088(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  std::string::append(*a1, 2 * *(a1 + 8), 32);
  std::string::append(*a1, a2);
  std::string::append(*a1, ": ");
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  std::string::append(*a1, v7, v8);
  v9 = *a1;

  std::string::push_back(v9, 10);
}

const char *sub_2982F5120(uint64_t a1, int a2)
{
  if (a2)
  {
    return "true";
  }

  else
  {
    return "false";
  }
}

void sub_2982F5164(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  std::string::reserve(a2, v4 + 2);
  std::string::push_back(a2, 34);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  if (v7)
  {
    v8 = 0;
    v9 = MEMORY[0x29EDCA600];
    do
    {
      v10 = *v6;
      if (*v6 > 0x21u)
      {
        switch(v10)
        {
          case '""':
            std::string::push_back(a2, 92);
            v11 = 34;
            goto LABEL_30;
          case '\'':
            std::string::push_back(a2, 92);
            v11 = 39;
            goto LABEL_30;
          case '\\':
            v11 = 92;
            std::string::push_back(a2, 92);
            goto LABEL_30;
        }
      }

      else
      {
        switch(v10)
        {
          case 9:
            std::string::push_back(a2, 92);
            v11 = 116;
            goto LABEL_30;
          case 0xA:
            std::string::push_back(a2, 92);
            v11 = 110;
            goto LABEL_30;
          case 0xD:
            std::string::push_back(a2, 92);
            v11 = 114;
            goto LABEL_30;
        }
      }

      v11 = *v6;
      if (v10 < 0)
      {
        v12 = __maskrune(v10, 0x40000uLL);
      }

      else
      {
        v12 = *(v9 + 4 * v10 + 60) & 0x40000;
      }

      if (!v12 || (v10 & 0x80u) == 0 && (v8 & 1) != 0 && (*(v9 + 4 * v10 + 60) & 0x10000) != 0)
      {
        std::string::push_back(a2, 92);
        std::string::push_back(a2, 120);
        sub_2982FF2BC(v10, 2uLL, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a2, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = 1;
        goto LABEL_31;
      }

LABEL_30:
      std::string::push_back(a2, v11);
      v8 = 0;
LABEL_31:
      ++v6;
      --v7;
    }

    while (v7);
  }

  std::string::push_back(a2, 34);
}

void sub_2982F538C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2982F53D8@<X0>(unint64_t __val@<X1>, _BYTE *a2@<X0>, std::string *a3@<X8>)
{
  v3 = __val;
  std::to_string(&v16, __val);
  v6 = std::string::insert(&v16, 0, "[");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v17, " bytes] ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  a3->__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&a3->__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  std::string::reserve(a3, size + 3 * v3);
  for (; v3; --v3)
  {
    std::string::push_back(a3, a0123456789abcd[*a2 >> 4]);
    std::string::push_back(a3, a0123456789abcd[*a2 & 0xF]);
    std::string::push_back(a3, 32);
    ++a2;
  }

  v11 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v12 = v11;
  v13 = a3 + v11;
  if (v12 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v13 = (a3->__r_.__value_.__r.__words[0] + a3->__r_.__value_.__l.__size_);
    v14 = a3->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(a3, &v13[~v14], 1uLL);
}

void sub_2982F5534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982F5600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_298300798();
  }

  _Unwind_Resume(exception_object);
}

void sub_2982F5698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_298300798();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982F56B4(uint64_t a1)
{
  sub_2982DDC40((a1 + 48));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_2982F56FC(void *a1, uint64_t a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  sub_2982DCC98(&v7, a2);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_2982DCD54(a1, v5, &object, 1);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2982F57B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2982F57FC(void *a1, void *a2, size_t a3, unsigned int __val)
{
  std::to_string(&v11, __val);
  v7 = SHIBYTE(v11.__r_.__value_.__r.__words[2]);
  v8 = v11.__r_.__value_.__r.__words[0];
  sub_2982DE378(&object, a2, a3);
  if (v7 >= 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v8;
  }

  sub_2982DCD54(a1, v9, &object, 1);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2982F58A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2982F58D4(void *a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2982DC788(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2982DE1A4(&v30, v15 != 0);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2982DD334(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2982DD478(&v27, v18);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C287EE0](v16) == v14)
      {
        sub_2982DCC98(&v26, v15);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982F5B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2982F5BE0(void *a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2982DC788(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2982DE1A4(&v30, v15 != 0);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2982DD334(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2982DD478(&v27, v18);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C287EE0](v16) == v14)
      {
        sub_2982DD824(&v26, v15);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982F5E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2982F5EEC(void *a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2982DC788(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2982DE1A4(&v30, v15 != 0);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2982DD334(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2982DD478(&v27, v18);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C287EE0](v16) == v14)
      {
        sub_2982F6A80(&v26, v15);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982F618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2982F61F8(void *a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2982DC788(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C287EE0](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2982DE1A4(&v30, v15 != 0);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2982DD334(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2982DD478(&v27, v18);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C287EE0](v16) == v14)
      {
        sub_2982DDAA8(v15, &v26);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2982DCCD8(a1, __p, a4);
  sub_2982DCD54(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2982F6498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void *sub_2982F6578(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB66A8;
  sub_2982F66E0(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_2982F660C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB66A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t sub_2982F6660(uint64_t a1)
{
  sub_2982DDC40((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t sub_2982F66E0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  v9 = v6;
  v7 = WISMetadataLoader::WISMetadataLoader(a2, v5, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result, v7);
  }

  return result;
}

void sub_2982F6750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_298300798();
  }

  _Unwind_Resume(exception_object);
}

void *sub_2982F67E0(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1EB66F8;
  sub_2982F68F0(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_2982F6874(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB66F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t sub_2982F68F0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  v8 = v6;
  LazyMetadataLoader::LazyMetadataLoader(a2, v5, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2982F6960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_298300798();
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_2982F6988(void **a1, void **a2, xpc_object_t *a3)
{
  v6 = *a1;
  v11[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v11[0] = xpc_null_create();
  }

  v11[1] = a1[1];
  v7 = *a2;
  v10[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v10[0] = xpc_null_create();
  }

  v10[1] = a2[1];
  sub_2982F6B88(v11, v10, a3, object);
  v8 = object[2];
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v10[0]);
  v10[0] = 0;
  xpc_release(v11[0]);
  return v8;
}

void sub_2982F6A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_2982F6A80@<X0>(uint64_t *__return_ptr a1@<X8>, int64_t value@<X1>)
{
  result = xpc_int64_create(value);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

xpc_object_t sub_2982F6AC0@<X0>(void *a1@<X8>, double a2@<D0>)
{
  result = xpc_double_create(a2);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

xpc_object_t sub_2982F6AFC@<X0>(void *a1@<X8>, float a2@<S0>)
{
  result = xpc_double_create(a2);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

void **sub_2982F6B3C(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void sub_2982F6B88(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v9[0] = *a1;
  *a1 = xpc_null_create();
  v9[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  sub_2982F6C54(v9, object, a3, a4);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v9[0]);
}

void sub_2982F6C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void sub_2982F6C54(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v18[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v18[0] = xpc_null_create();
  }

  v18[1] = a1[1];
  v17[0] = *a2;
  *a2 = xpc_null_create();
  v17[1] = a2[1];
  sub_2982F6E84(v18, v17, v19);
  xpc_release(v17[0]);
  v17[0] = 0;
  xpc_release(v18[0]);
  v18[0] = 0;
  v15[0] = v19[0];
  v19[0] = xpc_null_create();
  v15[1] = v19[1];
  object[0] = v20;
  v20 = xpc_null_create();
  object[1] = v21;
  sub_2982F6F98(v15, object, a3, v16);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v15[0]);
  v15[0] = 0;
  v12[0] = *a1;
  *a1 = xpc_null_create();
  v12[1] = a1[1];
  v11[0] = v16[0];
  v16[0] = xpc_null_create();
  v11[1] = v16[1];
  sub_2982F7058(v12, v11, v13);
  v9 = v16[2];
  *a4 = v13[0];
  v10 = xpc_null_create();
  v13[0] = v10;
  a4[1] = v13[1];
  a4[2] = v9;
  xpc_release(v10);
  v13[0] = 0;
  xpc_release(v11[0]);
  v11[0] = 0;
  xpc_release(v12[0]);
  v12[0] = 0;
  xpc_release(v16[0]);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19[0]);
}

void sub_2982F6E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(a18);
  sub_2982F720C((v18 - 64));
  _Unwind_Resume(a1);
}

void sub_2982F6E84(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  *a1 = xpc_null_create();
  v7 = *(a1 + 8);
  if (v6)
  {
    xpc_retain(v6);
    v8 = v6;
  }

  else
  {
    v8 = xpc_null_create();
  }

  v9 = xpc_null_create();
  xpc_release(v9);
  v10 = *a2;
  *a2 = xpc_null_create();
  v11 = *(a2 + 8);
  if (v10)
  {
    xpc_retain(v10);
    v12 = v10;
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = xpc_null_create();
  xpc_release(v13);
  *a3 = v8;
  v14 = xpc_null_create();
  a3[1] = v7;
  a3[2] = v12;
  v15 = xpc_null_create();
  a3[3] = v11;
  xpc_release(v15);
  xpc_release(v10);
  xpc_release(v14);
  xpc_release(v6);
}

xpc_object_t *sub_2982F6F98@<X0>(xpc_object_t *a1@<X1>, xpc_object_t *a2@<X2>, xpc_object_t *a3@<X3>, xpc_object_t *a4@<X8>)
{
  v12 = a3;
  for (i = a1[1]; i != a2[1] || *a1 != *a2; a1[1] = i)
  {
    v10[0] = a1;
    v10[1] = i;
    sub_2982F70F4(v10, &value);
    xpc_array_append_value(*a3, value);
    xpc_release(value);
    i = a1[1] + 1;
  }

  return sub_2982F713C(a4, a1, &v12);
}

void sub_2982F7058(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v7[0] = *a1;
  *a1 = xpc_null_create();
  v7[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  sub_2982F7194(v7, object, a3);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7[0]);
}

xpc_object_t sub_2982F70F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t *sub_2982F713C(xpc_object_t *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  *a1 = *a2;
  *a2 = xpc_null_create();
  a1[1] = a2[1];
  a1[2] = *a3;
  return a1;
}

void sub_2982F7194(void **a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  *a1 = xpc_null_create();
  v6 = *a2;
  *a2 = xpc_null_create();
  v7 = a2[1];
  *a3 = v6;
  v8 = xpc_null_create();
  a3[1] = v7;
  xpc_release(v8);
  xpc_release(v5);
}

xpc_object_t *sub_2982F720C(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

double WISMetadataLoader::WISMetadataLoader(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a1 = v3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  return result;
}

{
  v3 = *a3;
  *a3 = 0;
  *a1 = v3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  return result;
}

double WISMetadataLoader::loadDeviceConfigMetadata@<D0>(WISMetadataLoader *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 24))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sMetricToJsonTransform(wis *this@<X1>, unsigned __int8 *a2@<X2>, uint64_t a4@<X8>)
{
  if (this)
  {
    v5 = a2;
    if (a2)
    {
      memset(v18, 0, sizeof(v18));
      wis::GetProtobufTag(v18, this, a2);
      v7 = 0;
      v8 = this + v18[0];
      v9 = this + v18[0] + v5 - LODWORD(v18[0]);
      v10 = v5 - LODWORD(v18[0]);
      v11 = 0;
      v12 = 0;
      v13 = v5 - LODWORD(v18[0]);
      v14 = xmmword_298304740;
      v15 = *MEMORY[0x29EDC9750];
      v16 = 0;
      v17 = 0;
      sub_2982E7E5C(a4, 0, 0, 0, 1);
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
}

void sub_2982F74C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_2982D89F4(a26);
  }

  sub_2982E1E24(v26 + 1, *v26);
  MEMORY[0x29C2877D0](&a9);
  _Unwind_Resume(a1);
}

void sConvertTriggerToJson(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 && a3)
  {
    sub_2982E7E5C(a4, 0, 0, 0, 1);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
}

void sub_2982F762C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_2982D89F4(a24);
  }

  sub_2982E1E24(v24 + 1, *v24);
  MEMORY[0x29C2877D0](&a10);
  _Unwind_Resume(a1);
}

void sub_2982F76EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_2983006D0(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982F7708(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __int128 *a2, uint64_t *a3)
{
  v6 = *(this + 1);
  if (v6 < *(this + 2))
  {
    TagFallback = *v6;
    if ((TagFallback & 0x80000000) == 0)
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((*(this + 36) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
        goto LABEL_54;
      }

      return;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = wis::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v61 = *a2;
  v62 = *(a2 + 2);
  MetricFileMetadataHelper::getSubfieldType((a3 + 1), &v61, HIDWORD(v8), &v51);
  v61 = v51;
  v62 = v52;
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v61);
  v12 = BuiltinType;
  DecodingType = wis::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType > 13)
  {
    if ((DecodingType - 15) >= 0xC)
    {
      if (DecodingType != 14)
      {
        if (DecodingType == 27)
        {
          LODWORD(__p) = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
            {
              goto LABEL_51;
            }
          }

          else
          {
            LODWORD(__p) = *v25;
            *(this + 1) = v25 + 1;
          }

          *v55 = this;
          v55[2] = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          ++*(this + 14);
          *&v53 = this;
          v61 = *a2;
          v62 = *(a2 + 2);
          v57 = v51;
          v58 = v52;
          sub_2982F8E18(a3, this, &v61, v10, &v57);
        }

LABEL_51:
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }

      v55[0] = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (v28 = *v27, (v28 & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55))
        {
          goto LABEL_51;
        }

        v28 = v55[0];
      }

      else
      {
        v55[0] = *v27;
        *(this + 1) = v27 + 1;
      }

      sub_2982DE234(&v61, v28);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v61);
      if (Raw)
      {
        v57 = *a2;
        v58 = *(a2 + 2);
        sub_2982F8CE0(a3, &v61, &v57, v10);
      }

      goto LABEL_137;
    }

    v50 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v50 = *v16;
      *(this + 1) = v16 + 1;
    }

    UnpackedType = wis::reflect::getUnpackedType(v14);
    WireTypeForType = wis::reflect::getWireTypeForType(UnpackedType);
    v48 = this;
    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    __p = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            if (v14 > 20)
            {
              if (v14 <= 23)
              {
                if (v14 != 21)
                {
                  if (v14 != 22)
                  {
                    sub_2982E5B14(&__p, &v61);
                    v57 = *a2;
                    v58 = *(a2 + 2);
                    sub_2982F9AD0(a3, &v61, &v57, v10, UnpackedType);
                  }

                  sub_2982E6418(&__p, &v61);
                  v57 = *a2;
                  v58 = *(a2 + 2);
                  sub_2982F9E68(a3, &v61, &v57, v10, UnpackedType);
                }

                sub_2982E5B14(&__p, &v61);
                v57 = *a2;
                v58 = *(a2 + 2);
                sub_2982F9AD0(a3, &v61, &v57, v10, UnpackedType);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2982E5D88(&__p, v55);
                  v53 = *a2;
                  v54 = *(a2 + 2);
                  v61 = *a2;
                  v62 = *(a2 + 2);
                  sub_2982DC788(a3, &v61, v10);
                  v60 = 0;
                  *&v61 = 0;
                  v59[0] = 2;
                  *&v57 = 0;
                  sub_2982E80AC();
                case 0x19:
                  sub_2982E5FD8(&__p, &v61);
                  v57 = *a2;
                  v58 = *(a2 + 2);
                  sub_2982F9C9C(a3, &v61, &v57, v10, UnpackedType);
                case 0x18:
                  sub_2982E578C(&__p, &v61);
                  v57 = *a2;
                  v58 = *(a2 + 2);
                  sub_2982F9904(a3, &v61, &v57, v10, UnpackedType);
              }
            }

            else
            {
              if (v14 > 17)
              {
                if (v14 != 18)
                {
                  if (v14 != 19)
                  {
                    sub_2982E5B14(&__p, &v61);
                    v57 = *a2;
                    v58 = *(a2 + 2);
                    sub_2982F9E68(a3, &v61, &v57, v10, UnpackedType);
                  }

                  sub_2982E6110(&__p, &v61);
                  v57 = *a2;
                  v58 = *(a2 + 2);
                  sub_2982F9C9C(a3, &v61, &v57, v10, UnpackedType);
                }

                sub_2982E578C(&__p, &v61);
                v57 = *a2;
                v58 = *(a2 + 2);
                sub_2982F9904(a3, &v61, &v57, v10, UnpackedType);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2982E580C(&__p, v55);
                  v53 = *a2;
                  v54 = *(a2 + 2);
                  v61 = *a2;
                  v62 = *(a2 + 2);
                  sub_2982DC788(a3, &v61, v10);
                  v60 = 0;
                  *&v61 = 0;
                  v59[0] = 2;
                  *&v57 = 0;
                  sub_2982E80AC();
                case 0x10:
                  sub_2982E5C4C(&__p, v55);
                  v53 = *a2;
                  v54 = *(a2 + 2);
                  v61 = *a2;
                  v62 = *(a2 + 2);
                  sub_2982DC788(a3, &v61, v10);
                  v60 = 0;
                  *&v61 = 0;
                  v59[0] = 2;
                  *&v57 = 0;
                  sub_2982E80AC();
                case 0x11:
                  sub_2982E5FD8(&__p, &v61);
                  v57 = *a2;
                  v58 = *(a2 + 2);
                  sub_2982F9C9C(a3, &v61, &v57, v10, UnpackedType);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C2879E0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          *&v61 = 0;
          sub_2982E3C80(&__p, &v61);
          if (WireTypeForType <= 1)
          {
            break;
          }

          if (WireTypeForType == 5)
          {
            LODWORD(v61) = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v61);
            *(v46 - 1) = v61;
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (WireTypeForType == 2)
          {
LABEL_48:
            if (__p)
            {
              v46 = __p;
              operator delete(__p);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            goto LABEL_51;
          }
        }

        if (!WireTypeForType)
        {
          break;
        }

        if (WireTypeForType == 1)
        {
          LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v46 - 1);
LABEL_31:
          if ((LittleEndian64Fallback & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      v21 = v46 - 1;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
      {
        LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
        goto LABEL_31;
      }

      *v21 = v23;
      *(this + 1) = v22 + 1;
    }
  }

  if ((DecodingType - 1) >= 0xC)
  {
    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      v55[0] = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v55))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v55[0] = *v24;
        *(this + 1) = v24 + 1;
      }

      v61 = 0uLL;
      v62 = 0;
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (Raw)
      {
        v57 = *a2;
        v58 = *(a2 + 2);
        sub_2982F8BE4(a3, &v61, &v57, v10);
      }

      if ((SHIBYTE(v62) & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v40 = v61;
      goto LABEL_139;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        *&v61 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v61))
        {
          goto LABEL_51;
        }
      }

      else
      {
        *&v61 = 0;
        if (!sub_2982E3C28(this, &v61))
        {
          goto LABEL_51;
        }
      }

      v38 = v61;
LABEL_144:
      sub_2982F8F84(a3, v38, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      LODWORD(v61) = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v61))
      {
        goto LABEL_51;
      }

      v38 = v61;
      goto LABEL_144;
    }

    LODWORD(v57) = 0;
    if (!sub_2982E3C54(this, &v57))
    {
      goto LABEL_51;
    }

    sub_2982DE234(&v61, v57);
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v61);
    if (Raw)
    {
      sub_2982F903C(a3, v61, *(&v61 + 1) - v61, v10);
    }

LABEL_137:
    v40 = v61;
    if (!v61)
    {
      goto LABEL_140;
    }

    *(&v61 + 1) = v61;
LABEL_139:
    operator delete(v40);
LABEL_140:
    if ((Raw & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  __p = 0;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_94;
      }

      LODWORD(v61) = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v61))
      {
        __p = v61;
        goto LABEL_94;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
LABEL_54:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!v9)
  {
    v26 = *(this + 1);
    if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p) & 1) == 0)
      {
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }
    }

    else
    {
      __p = *v26;
      *(this + 1) = v26 + 1;
    }

LABEL_94:
    v29 = __p;
    switch(v12)
    {
      case 1:
      case 15:
        v32 = wis::protobuf::NumberConverter<(wis::reflect::Type)1>::decode(__p);
        *v55 = *a2;
        v56 = *(a2 + 2);
        v61 = *a2;
        v62 = *(a2 + 2);
        v31 = sub_2982DC788(a3, &v61, v10);
        LOBYTE(v53) = 7;
        *(&v53 + 1) = v32;
        if (v12 == 11)
        {
          v57 = *v55;
          v58 = v56;
          sub_2982DD334(a3, &v57, v10, v32, &v61);
          v42 = HIBYTE(v62);
          if (v62 < 0)
          {
            v42 = *(&v61 + 1);
          }

          if (v42)
          {
            *(&v57 + 1) = 0;
            LOBYTE(v57) = 3;
            operator new();
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }
        }

        else if (v12 == 12)
        {
          LOBYTE(v53) = 4;
          LOBYTE(v57) = 7;
          *(&v53 + 1) = v32 != 0.0;
          *(&v57 + 1) = v32;
          sub_2982E1E24(&v57 + 1, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = wis::protobuf::NumberConverter<(wis::reflect::Type)2>::decode(__p);
        *v55 = *a2;
        v56 = *(a2 + 2);
        v61 = *a2;
        v62 = *(a2 + 2);
        v31 = sub_2982DC788(a3, &v61, v10);
        LOBYTE(v53) = 7;
        *(&v53 + 1) = v30;
        if (v12 == 11)
        {
          v57 = *v55;
          v58 = v56;
          sub_2982DD334(a3, &v57, v10, v30, &v61);
          v41 = HIBYTE(v62);
          if (v62 < 0)
          {
            v41 = *(&v61 + 1);
          }

          if (v41)
          {
            *(&v57 + 1) = 0;
            LOBYTE(v57) = 3;
            operator new();
          }

          if (v62 < 0)
          {
            operator delete(v61);
          }
        }

        else if (v12 == 12)
        {
          LOBYTE(v53) = 4;
          LOBYTE(v57) = 7;
          *(&v53 + 1) = v30 != 0.0;
          *(&v57 + 1) = v30;
          sub_2982E1E24(&v57 + 1, 7);
        }

LABEL_161:
        v61 = *v55;
        v62 = v56;
        v43 = sub_2982DCCD8(a3, &v61, v10);
        sub_2982FA5E4(a3, v31, &v53, v43);
        v36 = v53;
        v37 = &v53 + 1;
        goto LABEL_162;
      case 3:
      case 11:
      case 17:
      case 25:
        goto LABEL_105;
      case 4:
      case 10:
      case 18:
      case 24:
        *&v57 = __p;
        v61 = *a2;
        v62 = *(a2 + 2);
        sub_2982F9174(a3, &v57, &v61, v10, v12);
        return;
      case 5:
      case 19:
        v29 = wis::protobuf::NumberConverter<(wis::reflect::Type)5>::decode(__p);
LABEL_105:
        *&v57 = v29;
        v61 = *a2;
        v62 = *(a2 + 2);
        sub_2982F953C(a3, &v57, &v61, v10, v12);
        return;
      case 6:
      case 20:
        LODWORD(v57) = __p;
        goto LABEL_107;
      case 7:
      case 9:
      case 21:
      case 23:
        LODWORD(v57) = __p;
        v61 = *a2;
        v62 = *(a2 + 2);
        sub_2982F9358(a3, &v57, &v61, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v57) = wis::protobuf::NumberConverter<(wis::reflect::Type)8>::decode(__p);
LABEL_107:
        v61 = *a2;
        v62 = *(a2 + 2);
        sub_2982F9720(a3, &v57, &v61, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v57 = *a2;
        v58 = *(a2 + 2);
        v61 = *a2;
        v62 = *(a2 + 2);
        v34 = sub_2982DC788(a3, &v61, v10);
        LOBYTE(v55[0]) = 4;
        *&v55[2] = v33;
        if (v12 == 12)
        {
          LOBYTE(v55[0]) = 4;
          LOBYTE(v53) = 4;
          *(&v53 + 1) = v33;
          sub_2982E1E24(&v53 + 1, 4);
        }

        v61 = v57;
        v62 = v58;
        v35 = sub_2982DCCD8(a3, &v61, v10);
        sub_2982FA5E4(a3, v34, v55, v35);
        v36 = LOBYTE(v55[0]);
        v37 = &v55[2];
LABEL_162:
        sub_2982E1E24(v37, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C2879E0](exception, "This should never happen, no matter what the input!");
        goto LABEL_54;
    }
  }

  if (v9 != 1 || (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p) & 1) != 0)
  {
    goto LABEL_94;
  }

  if (v10 || (*(this + 36) & 1) == 0)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C2879E0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2982F89EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2982E1E24((v26 + 8), a21);
  _Unwind_Resume(a1);
}

void sub_2982F8BE4(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2982DC788(a1, &v5, a4);
  v4[0] = 3;
  operator new();
}

void sub_2982F8CE0(uint64_t a1, void *a2, __int128 *a3, unsigned int a4)
{
  __p = *a3;
  sub_2982DC788(a1, &__p, a4);
  sub_2982F53CC(*a2, a2[1] - *a2, &__p);
  v6 = 0;
  v5[0] = 3;
  operator new();
}

void sub_2982F8DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982F8E18(uint64_t *a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, __int128 *a3, unsigned int a4, uint64_t a5)
{
  v6 = *a3;
  v7 = *(a3 + 2);
  sub_2982DC788(a1, &v6, a4);
  sub_2982E7E5C(v5, 0, 0, 0, 1);
}

void sub_2982F8F28(_Unwind_Exception *a1, unsigned __int8 a2, unsigned __int8 a3, ...)
{
  va_start(va, a3);
  sub_2982E1E24(va, a3);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2982F8F48(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2982F8F84(unsigned __int8 **a1, void ***a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6[0] = 6;
  v7 = a2;
  sub_2982FA5E4(a1, v5, v6, 1);
  sub_2982E1E24(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2982F9014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2982E1E24((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2982F903C(uint64_t a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2982F53CC(a2, a3, &__p);
  v8 = 0;
  v7[0] = 3;
  operator new();
}

void sub_2982F912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2982E1E24((v22 + 8), a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2982F9174(unsigned __int8 **a1, void ****a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F9324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F9358(unsigned __int8 **a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2982E1E24(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F9508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F953C(unsigned __int8 **a1, void ****a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F96EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F9720(unsigned __int8 **a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2982DC788(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2982DD334(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2982E1E24(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2982DCCD8(a1, __p, a4);
  sub_2982FA5E4(a1, v10, v18, v13);
  sub_2982E1E24(&v19, v18[0]);
}

void sub_2982F98D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2982E1E24((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2982F9904(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v7 = *(a3 + 2);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v5, 0, 0, 0, 2);
}

void sub_2982F9AD0(uint64_t a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v7 = *(a3 + 2);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v5, 0, 0, 0, 2);
}

void sub_2982F9C9C(uint64_t a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v7 = *(a3 + 2);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v5, 0, 0, 0, 2);
}

void sub_2982F9E68(uint64_t a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v7 = *(a3 + 2);
  sub_2982DC788(a1, __p, a4);
  sub_2982E7E5C(v5, 0, 0, 0, 2);
}

uint64_t MetadataHandle::getMessage(MetadataHandle *this)
{
  v1 = *this;
  if (*this && (v2 = *(this + 1), v4 = v1 + 32, v3 = *(v1 + 32), v2 < (*(v4 + 8) - v3) >> 3))
  {
    return *(v3 + 8 * v2);
  }

  else
  {
    return 0;
  }
}

void *MetadataHelper::MetadataHelper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = 0xFFFFFFFFLL;
  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = 0xFFFFFFFFLL;
  return result;
}

__n128 MetricFileMetadataHelper::MetricFileMetadataHelper(MetricFileMetadataHelper *a1, void *a2)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  result = v2[5];
  v2[1] = result;
  v2[2].n128_u64[0] = v2[6].n128_u64[0];
  return result;
}

{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  result = v2[5];
  v2[1] = result;
  v2[2].n128_u64[0] = v2[6].n128_u64[0];
  return result;
}

double MetricFileMetadataHelper::getHandleForMetric@<D0>(MetricFileMetadataHelper *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(this + 5);
  v6 = *(this + 12);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(this, &v5, a2, &v7);
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_2982FA164(uint64_t a1)
{
  sub_2982DDC40((a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2982D89F4(v2);
  }

  return a1;
}

uint64_t MetricFileMetadataHelper::MetricFileMetadataHelper(uint64_t a1, void *a2, unsigned int a3)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  *(v5 + 16) = *(v5 + 80);
  *(v5 + 32) = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(v5, &v8, a3, &v10);
  v6 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t MetricFileMetadataHelper::getSubfield(MetricFileMetadataHelper *a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(a1, &v4, a3, v6);
  return v7;
}

BOOL MetricFileMetadataHelper::isTopLevelField(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v6 = *a2;
    v7 = a2[2];
    MetadataHelper::descendIntoMessage(a1, &v6, &v8);
    *a2 = v8;
    a2[2] = v9;
    v3 = *a2;
  }

  return v3 == *(a1 + 80);
}

void MetricFileMetadataHelper::getMetricsInComponent(MetricFileMetadataHelper *this@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  MetadataForComponent = MetricFileMetadataHelper::getMetadataForComponent(this, a2);
  if (MetadataForComponent)
  {
    v5 = *(MetadataForComponent + 32);
    if (v5 != *(MetadataForComponent + 40))
    {
      v6 = *v5;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      if (v7 != v8)
      {
        v9 = 0;
        do
        {
          if ((*(*v7 + 52) & 0x40) != 0)
          {
            v10 = *(*v7 + 40);
            v11 = a3[2];
            if (v9 >= v11)
            {
              v12 = *a3;
              v13 = v9 - *a3;
              v14 = v13 >> 2;
              v15 = (v13 >> 2) + 1;
              if (v15 >> 62)
              {
                sub_2982DE7D0();
              }

              v16 = v11 - v12;
              if (v16 >> 1 > v15)
              {
                v15 = v16 >> 1;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v17 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              if (v17)
              {
                sub_2982E6554(a3, v17);
              }

              *(4 * v14) = v10;
              v9 = (4 * v14 + 4);
              memcpy(0, v12, v13);
              v18 = *a3;
              *a3 = 0;
              a3[1] = v9;
              a3[2] = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v9 = v10;
              v9 += 4;
            }

            a3[1] = v9;
          }

          v7 += 8;
        }

        while (v7 != v8);
      }
    }
  }
}

void sub_2982FA420(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DeviceConfigMetadataHelper::DeviceConfigMetadataHelper(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFFFFFFFLL;
  WISMetadataLoader::loadDeviceConfigMetadata(*a2, (a1 + 40));
  *(a1 + 16) = *(a1 + 40);
  return a1;
}

void sub_2982FA4A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2982D89F4(v3);
  }

  _Unwind_Resume(exception_object);
}

double DeviceConfigMetadataHelper::getSubfieldType@<D0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  MetadataHelper::resolveSubfieldInHandle(a1, &v6, a3, &v8);
  result = v8.n128_f64[0];
  *a4 = v8;
  a4[1].n128_u64[0] = v9;
  return result;
}

void sub_2982FA530(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB67B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982FA584(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_2982D89F4(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2982FA5E4(unsigned __int8 **a1, char *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = sub_2982FA72C(*a1, a2);
    if (!*v5)
    {
      sub_2982E7E5C(v14, 0, 0, 0, 2);
    }

    if (*a3 == 2)
    {
      v6 = *(a3 + 8);
      v8 = *v6;
      v7 = v6[1];
      v16[2] = v8;
      v16[3] = 0;
      v16[4] = 0x8000000000000000;
      v15[2] = v7;
      v15[3] = 0;
      v15[4] = 0x8000000000000000;
      v16[0] = a3;
      v16[1] = 0;
      v15[0] = a3;
      v15[1] = 0;
      sub_2982FAB48(v16, v15, v5, v17);
    }

    else
    {
      sub_2982FA8F4(v5, a3);
    }
  }

  else
  {
    v9 = *a3;
    v13 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = sub_2982FA72C(*a1, a2);
    v11 = *v10;
    *v10 = v9;
    v12 = *(v10 + 1);
    *(v10 + 1) = v13;
    v13 = v12;
    sub_2982E1E24(&v13, v11);
  }
}

uint64_t sub_2982FA72C(unsigned __int8 *a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2982E8258(a1);
    sub_2982E1488(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(305, __p, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 1);
  sub_2982E1488(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = sub_2982FAA98(v3, __p, &unk_2983052A4, &v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_2982FA87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982FA8F4(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_2982E8258(a1);
    sub_2982E1488(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use emplace_back() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(311, &v12, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v5 = sub_2982E24E8(v3, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = v4 + 16;
  }

  *(v3 + 8) = v5;
  return v5 - 16;
}

void sub_2982FAA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2982FAA98(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *sub_2982E8808(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

__n128 sub_2982FAB48@<Q0>(uint64_t a1@<X1>, unsigned __int8 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  while (!sub_2982FAC44(a1, a2))
  {
    v8 = sub_2982FAF4C(a1);
    sub_2982FB098(a3, v8);
    sub_2982FABD4(a1);
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = a3;
  return result;
}

unsigned __int8 **sub_2982FABD4(unsigned __int8 **result)
{
  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

BOOL sub_2982FAC44(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2982E1488(v7, "cannot compare iterators of different containers");
    sub_2982FAD4C(212, v7, exception);
    __cxa_throw(exception, &unk_2A1EB67F8, sub_2982FAE90);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[4];
    v4 = a2[4];
  }

  return v3 == v4;
}

void sub_2982FAD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_2982FAD4C(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2982E1488(&__p, "invalid_iterator");
  sub_2982E1304(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_2982E1540(a3, a1, v11);
  *a3 = &unk_2A1EB6820;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2982FAE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FAE90(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);

  std::exception::~exception(a1);
}

void sub_2982FAEE4(std::exception *a1)
{
  a1->__vftable = &unk_2A1EB56D8;
  MEMORY[0x29C2879F0](&a1[2]);
  std::exception::~exception(a1);

  JUMPOUT(0x29C287C70);
}

_BYTE *sub_2982FAF4C(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2982E1488(v6, "cannot get value");
    sub_2982FAD4C(214, v6, exception);
    __cxa_throw(exception, &unk_2A1EB67F8, sub_2982FAE90);
  }

  if (*(a1 + 32))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_2982E1488(v6, "cannot get value");
    sub_2982FAD4C(214, v6, v4);
    __cxa_throw(v4, &unk_2A1EB67F8, sub_2982FAE90);
  }

  return result;
}

void sub_2982FB060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

void ****sub_2982FB098(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_2982E8258(a1);
    sub_2982E1488(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use push_back() with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_2982E116C(308, &v10, exception);
    __cxa_throw(exception, &unk_2A1EB5688, sub_2982E12B0);
  }

  v3 = *(a1 + 8);

  return sub_2982E2228(v3, a2);
}

void sub_2982FB1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2982FB20C(uint64_t *a1)
{
  *a1 = &unk_2A1EB6848;
  sub_2982F2F80(a1 + 1, 0);

  WISMetadataLoaderDelegate::~WISMetadataLoaderDelegate(a1);
}

void sub_2982FB264(uint64_t *a1)
{
  *a1 = &unk_2A1EB6848;
  sub_2982F2F80(a1 + 1, 0);

  WISMetadataLoaderDelegate::~WISMetadataLoaderDelegate(a1);
}

void sub_2982FB2BC(uint64_t *a1)
{
  *a1 = &unk_2A1EB6848;
  sub_2982F2F80(a1 + 1, 0);
  WISMetadataLoaderDelegate::~WISMetadataLoaderDelegate(a1);

  JUMPOUT(0x29C287C70);
}

void sub_2982FB328(uint64_t a1@<X0>, void *a2@<X8>, int a3@<W1>, int a4@<W2>)
{
  v7 = (*(*a1 + 80))(a1);
  v9 = sub_2982FB39C(v7, v8, a3, a4);

  sub_2982DA9A0(v9, v10, a2);
}

char *sub_2982FB39C(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v4 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v6 = (a1 + a2);
    v7 = (a1 + 1);
    while (1)
    {
      v8 = v7[1];
      v9 = v7 + 2;
      v10 = *v7 | (v8 << 32);
      if (&v7[2 * v8 + 2] > v6)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      if (a3)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 2;
      }

      v12 = !v11;
      if ((v10 & 0xFFFE) == 2 && (v12 & 1) == 0)
      {
        v13 = a3 != 1 || v10 == 3;
        v14 = !v13;
        if (HIDWORD(v10) >= 3 && !v14)
        {
          v15 = *(v7 + 3);
          v4 = a1 + *(v7 + 2);
          if (&v4[v15] <= v6 && *v9 == a4)
          {
            return v4;
          }
        }
      }

      v7 = (v9 + (v10 >> 30));
      if (v7 >= v6)
      {
        return 0;
      }
    }

    return 0;
  }

  return v4;
}

void sub_2982FB480(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = (*(*a1 + 80))(a1);
  v7 = sub_2982FB39C(v5, v6, a2, 0);

  sub_2982DA9A0(v7, v8, a3);
}

void sub_2982FB4E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 80))(a1);
  v5 = sub_2982FB544(v3, v4);

  sub_2982DA9A0(v5, v6, a2);
}

char *sub_2982FB544(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v2 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v4 = (a1 + a2);
    v5 = (a1 + 1);
    while (1)
    {
      v6 = v5[1];
      v7 = v5 + 2;
      v8 = *v5 | (v6 << 32);
      if (&v5[2 * v6 + 2] > v4)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      if (v8 >> 33)
      {
        v9 = v8 == 5;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = *(v5 + 2);
        v2 = a1 + *(v5 + 1);
        if (&v2[v10] <= v4)
        {
          return v2;
        }
      }

      v5 = (v7 + (v8 >> 30));
      if (v5 >= v4)
      {
        return 0;
      }
    }

    return 0;
  }

  return v2;
}

void sub_2982FB5F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 80))(a1);
  v5 = sub_2982FB724(v3, v4);

  sub_2982FB64C(v5, v6, a2);
}

void sub_2982FB64C(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2)
  {
    PB::Reader::Reader(&v3, a1);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

char *sub_2982FB724(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v2 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v4 = (a1 + a2);
    v5 = (a1 + 1);
    while (1)
    {
      v6 = v5[1];
      v7 = v5 + 2;
      v8 = *v5 | (v6 << 32);
      if (&v5[2 * v6 + 2] > v4)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      if (v8 >> 33)
      {
        v9 = v8 == 6;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = *(v5 + 2);
        v2 = a1 + *(v5 + 1);
        if (&v2[v10] <= v4)
        {
          return v2;
        }
      }

      v5 = (v7 + (v8 >> 30));
      if (v5 >= v4)
      {
        return 0;
      }
    }

    return 0;
  }

  return v2;
}

void sub_2982FB7D0(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = (*(*a1 + 80))(a1);
  v7 = v5;
  if (v5)
  {
    v8 = v6 < 4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v6 != 4 && *v5 == 1296324417)
  {
    v10 = 0;
    v11 = v5 + v6;
    v12 = (v5 + 1);
    do
    {
      v13 = v12[1];
      v14 = (v12 + 2);
      if (&v12[2 * v13 + 2] <= v11)
      {
        v15 = *v12 | (v13 << 32);
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        break;
      }

      if (a2)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == 2;
      }

      v17 = !v16;
      if ((v15 & 0xFFFE) == 2 && (v17 & 1) == 0)
      {
        v18 = a2 != 1 || v15 == 3;
        v19 = !v18;
        if (HIDWORD(v15) >= 3 && !v19)
        {
          if (v7 + *(v12 + 2) + *(v12 + 3) <= v11)
          {
            v20 = *v14;
          }

          else
          {
            v20 = 0;
          }

          v21 = a3[2];
          if (v10 >= v21)
          {
            v22 = *a3;
            v23 = v10 - *a3;
            v24 = v23 >> 2;
            v25 = (v23 >> 2) + 1;
            if (v25 >> 62)
            {
              sub_2982DE7D0();
            }

            v26 = v21 - v22;
            if (v26 >> 1 > v25)
            {
              v25 = v26 >> 1;
            }

            v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
            v28 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v27)
            {
              v28 = v25;
            }

            if (v28)
            {
              sub_2982E6554(a3, v28);
            }

            *(4 * v24) = v20;
            v10 = (4 * v24 + 4);
            memcpy(0, v22, v23);
            v29 = *a3;
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v10 = v20;
            v10 += 4;
          }

          a3[1] = v10;
        }
      }

      v12 = (v14 + (v15 >> 30));
    }

    while (v12 < v11);
  }
}

void sub_2982FB9C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2982FB9E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  if (!*v1)
  {
    return 0;
  }

  result = v1[1];
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2982FBA8C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1065353216;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  if (result)
  {
    if (a2 >= 4)
    {
      v5 = result;
      if (a2 != 4 && *result == 1296324417)
      {
        v6 = result + a2;
        v7 = result + 2;
        do
        {
          v8 = v7[1];
          v9 = (v7 + 2);
          v10 = &v7[2 * v8 + 2] <= v6 ? *v7 | (v8 << 32) : 0;
          if (!v10)
          {
            break;
          }

          if (v10 - 2 < 2)
          {
            if (HIDWORD(v10) >= 3)
            {
              v12 = *(v7 + 3);
              v13 = v5 + *(v7 + 2);
              if (&v13[v12] <= v6)
              {
                v14 = *v9;
                v19 = v13;
                v20 = v12;
                v18 = v14;
                v21 = &v18;
                if (v10 == 2)
                {
                  result = sub_2982FBD98(v4, &v18, &unk_2983052A4, &v21);
                }

                else
                {
                  result = sub_2982FBD98((a3 + 48), &v18, &unk_2983052A4, &v21);
                }

                result[3] = v13;
                result[4] = v12;
              }
            }
          }

          else if (v10 == 6)
          {
            if (v10 >> 33)
            {
              v16 = *(v7 + 1);
              v15 = *(v7 + 2);
              v17 = v5 + v16;
              if (&v17[v15] <= v6)
              {
                *(a3 + 88) = v17;
                *(a3 + 96) = v15;
                return result;
              }
            }
          }

          else if (v10 == 1 && HIDWORD(v10) != 0)
          {
            *a3 = *v9;
          }

          v7 = (v9 + (v10 >> 30));
        }

        while (v7 < v6);
      }
    }
  }

  return result;
}

void sub_2982FBC50(_Unwind_Exception *a1)
{
  sub_2982F2E68(v2);
  sub_2982F2E68(v1);
  _Unwind_Resume(a1);
}

FILE **sub_2982FBC6C(FILE **a1, char *__filename)
{
  *a1 = 0;
  a1[1] = -1;
  a1[2] = 0;
  v3 = fopen(__filename, "rb");
  *a1 = v3;
  if (v3)
  {
    v4 = fileno(v3);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      if (!fstat(v4, &v8))
      {
        st_size = v8.st_size;
        a1[2] = v8.st_size;
        a1[1] = mmap(0, st_size, 1, 1025, v5, 0);
      }
    }
  }

  return a1;
}

void sub_2982FBD1C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1EB68C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t *sub_2982FBD98(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

const char *wis::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return (&off_29EE906B0)[a1];
  }
}

const char *wis::asString(wis *this)
{
  v1 = "???";
  if (this == 1)
  {
    v1 = "24h";
  }

  if (this == 2)
  {
    return "1h";
  }

  else
  {
    return v1;
  }
}

void *wis::tagSerializedProtobuf(int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3 - v4;
  v6 = (8 * a1) | 2;
  if ((8 * a1) < 0x80)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      __src[v7++] = v6 | 0x80;
      v8 = v6 >> 14;
      v6 >>= 7;
    }

    while (v8);
  }

  v9 = (v7 + 1);
  __src[v7] = v6;
  if (v5 < 0x80)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v15[v10++] = v5 | 0x80;
      v11 = v5 >> 14;
      v5 >>= 7;
    }

    while (v11);
  }

  v12 = (v10 + 1);
  v15[v10] = v5;
  v14 = 0;
  result = sub_2982FC1A4(a2, v4, (v12 + v9), &v14);
  if (v9)
  {
    result = memcpy(*a2, __src, v9);
  }

  if (v12)
  {
    return memcpy((*a2 + v9), v15, v12);
  }

  return result;
}

char *sub_2982FC1A4(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8 - v9 >= a3)
    {
      v15 = v9 - a2;
      if (a3 <= v9 - a2)
      {
        v16 = *(a1 + 8);
        v17 = a3;
      }

      else
      {
        memset(*(a1 + 8), *a4, a3 - (v9 - a2));
        v16 = &v4[a3];
        *(a1 + 8) = &v4[a3];
        if (!v15)
        {
          return v4;
        }

        v17 = v9 - v4;
      }

      v18 = &v4[a3];
      v19 = v16;
      if (&v16[-a3] < v9)
      {
        if (a3 <= v15)
        {
          v20 = v9 - v4;
        }

        else
        {
          v20 = a3;
        }

        v21 = &v4[-a3];
        v22 = v4;
        do
        {
          v22[v20] = v21[v20];
          ++v21;
          ++v22;
        }

        while (&v21[v20] != v9);
        if (a3 <= v15)
        {
          v23 = v9 - v4;
        }

        else
        {
          v23 = a3;
        }

        v19 = &v22[v23];
      }

      *(a1 + 8) = v19;
      if (v16 != v18)
      {
        memmove(&v4[a3], v4, v16 - v18);
      }

      if (v4 <= v5)
      {
        if (*(a1 + 8) <= v5)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        v5 += v24;
      }

      memset(v4, *v5, v17);
    }

    else
    {
      v10 = *a1;
      v11 = &v9[a3 - *a1];
      if (v11 < 0)
      {
        sub_2982DE7D0();
      }

      v12 = (a2 - v10);
      v13 = v8 - v10;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        operator new();
      }

      v25 = (a2 - v10);
      memset(v12, *a4, a3);
      v26 = &v12[a3];
      v27 = v9 - v4;
      memcpy(v26, v4, v9 - v4);
      *(a1 + 8) = v4;
      v28 = &v12[v10 - v4];
      memcpy(v28, v10, v25);
      *a1 = v28;
      *(a1 + 8) = &v26[v27];
      *(a1 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return v12;
    }
  }

  return v4;
}

uint64_t wis::serializeMetric@<X0>(wis *this@<X0>, const wireless_diagnostics::google::protobuf::MessageLite *a2@<X1>, char **a3@<X8>)
{
  v6 = (*(*this + 72))(this);
  wis::createTagForProtobuf(a2, v6, a3);
  v7 = *a3;
  v8 = a3[1] - *a3;
  v9 = v8 + v6;
  if (v8 >= v9)
  {
    if (v8 > v9)
    {
      a3[1] = &v7[v9];
    }
  }

  else
  {
    sub_2982FC99C(a3, v6);
    v7 = *a3;
  }

  return MEMORY[0x29C287960](this, &v7[v8], v6);
}

void sub_2982FC45C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void wis::serializeMetric(wis *this@<X0>, const PB::Base *a2@<X1>, uint64_t a3@<X8>)
{
  PB::Writer::Writer(&v6);
  (*(*this + 24))(this, &v6);
  wis::createTagForProtobuf(a2, v6 - v7, a3);
  sub_2982FCAD4(a3, *(a3 + 8), v7, v6, v6 - v7);
  PB::Writer::~Writer(&v6);
}

void sub_2982FC514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t wis::getCoreAnalyticsEventName(wis *this)
{
  sub_2982FC704(&v3);
  v1 = sub_2982FCEC0(&v3, "com.apple.wis.0x", 16);
  *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29C287B00]();
  std::stringbuf::str();
  v3 = *MEMORY[0x29EDC9538];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x29C287BB0](&v7);
}

void sub_2982FC6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2982FC880(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C287BB0](v3 + 112);
  _Unwind_Resume(a1);
}

uint64_t *sub_2982FC704(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_2982FCCFC((a1 + 1), 16);
  return a1;
}

void sub_2982FC848(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C287BB0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2982FC880(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_2982FC99C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2982DE7D0();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

char *sub_2982FCAD4(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v16 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = (&a4[__dst] - __src);
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = &v18[-a5];
      v34 = v18;
      if (&v18[-a5] < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    sub_2982DE7D0();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_2982FCCFC(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C287B60](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2982FCDB8(a1);
  return a1;
}

void sub_2982FCD90(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2982FCDB8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_2982FCEC0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C287AD0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_2982FD068(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C287AE0](v13);
  return a1;
}

void sub_2982FD000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C287AE0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2982FCFE0);
}

uint64_t sub_2982FD068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2982DE6F4();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2982FD234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *createDescriptionForMetriclogFile(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
    memset(&v10, 0, sizeof(v10));
    std::string::resize(&v10, MaximumSizeForEncoding + 1, 0);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v10;
    }

    else
    {
      v4 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    if (CFStringGetCString(v1, v4, size, 0x8000100u))
    {
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v10;
      }

      else
      {
        v6 = v10.__r_.__value_.__r.__words[0];
      }

      sub_2982FBC6C(v11, v6);
      if (v11[0] && v11[1] != -1)
      {
        sCreateBestChoiceMetadataLoaderDelegate();
      }

      v9 = 0;
      LOBYTE(__p) = 0;
      sub_2982F2FCC(v11);
      v1 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], &__p, 0x600u);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v1 = 0;
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v1;
}

void sub_2982FD3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a19)
  {
    sub_2982D89F4(a19);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2982FD388);
  }

  sub_2982F2FCC(&a20);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2982FD498(uint64_t result)
{
  *result = &unk_2A1EB6918;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_2982FD4BC(PB::Base *this)
{
  *this = &unk_2A1EB6918;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2982DDCE8(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2982FD520(PB::Base *a1)
{
  sub_2982FD4BC(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t sub_2982FD558(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  v3 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  LODWORD(v3) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2982FD58C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1EB6918;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_2982DDCE8(v4, v6);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_2982FD604(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2982FD58C(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sub_2982FD4BC(v6);
  }

  return a1;
}

uint64_t sub_2982FD668(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "metric_id");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2982FD6E0(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v33 = v22 - v23;
          if (!v17)
          {
            v33 = 0;
          }

          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v36 = *v34;
            *(this + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_2982FD9B0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 20))
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_2982FDA1C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "enum_type_index");
    v5 = *(a1 + 52);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 52) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "has_loc");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "has_pii");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "is_repeated");
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "message_type_index");
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "metric_query_type");
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  PB::TextFormatter::format(this, "metric_range_to");
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "metric_type");
  }

LABEL_10:
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 52);
  if ((v6 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "number_pretty_format");
    v6 = *(a1 + 52);
    if ((v6 & 0x40) == 0)
    {
LABEL_14:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  PB::TextFormatter::format(this, "tag");
  if ((*(a1 + 52) & 0x80) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "type");
  }

LABEL_16:

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2982FDBD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 52) & 0x400) != 0)
  {
LABEL_4:
    result = PB::Writer::write(this);
  }

LABEL_5:
  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 52);
  if ((v5 & 0x200) != 0)
  {
    result = PB::Writer::write(this);
    v5 = *(v3 + 52);
    if ((v5 & 0x100) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v3 + 52) & 0x100) == 0)
  {
    goto LABEL_9;
  }

  result = PB::Writer::write(this);
  v5 = *(v3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 4) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  result = PB::Writer::writeVarInt(this);
  v5 = *(v3 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_26:

  return PB::Writer::writeVarInt(this);
}

void sub_2982FDD58(void **a1)
{
  sub_2982DDD98(a1);

  JUMPOUT(0x29C287C70);
}

uint64_t sub_2982FDD90(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "enums");
  }

  v8 = a1[4];
  v9 = a1[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, this, "messages");
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2982FDE7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(result + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  return result;
}

void BestChoiceMetadataLoaderDelegate::BestChoiceMetadataLoaderDelegate(BestChoiceMetadataLoaderDelegate *this)
{
  *this = &unk_2A1EB6A08;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 30) = 0;
}

{
  *this = &unk_2A1EB6A08;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 30) = 0;
}

void BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(BestChoiceMetadataLoaderDelegate *this)
{
  *this = &unk_2A1EB6A08;
  v2 = (this + 16);
  sub_2982F2E68(this + 80);
  sub_2982F2E68(this + 40);
  v3 = v2;
  sub_2982FE80C(&v3);
  sub_2982FB20C(this);
}

{
  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(this);

  JUMPOUT(0x29C287C70);
}

uint64_t BestChoiceMetadataLoaderDelegate::loadBaseMetadata(BestChoiceMetadataLoaderDelegate *this)
{
  v2 = (*(*this + 80))(this);
  sub_2982FBA8C(v2, v3, &v6);
  sub_2982FE890(this + 40, v7);
  sub_2982FE890(this + 80, v8);
  v4 = v6;
  *(this + 30) = v6;
  sub_2982F2E68(v8);
  sub_2982F2E68(v7);
  return v4;
}

void BestChoiceMetadataLoaderDelegate::loadOverrideMetadata(BestChoiceMetadataLoaderDelegate *this, uint64_t a2)
{
  v9.__imp_.__ptr_ = 0;
  v9.__imp_.__cntrl_ = 0;
  sub_2982FE9A0(&__p.__pn_, &off_29EE906C8);
  MEMORY[0x29C287B40](&v8, &__p, 0, 0);
  v4 = v8;
  v8 = 0;
  v9 = v4;
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  while (v9.__imp_.__ptr_)
  {
    v5 = std::__fs::filesystem::directory_iterator::__dereference(&v9);
    std::__fs::filesystem::__status(&v5->__p_, 0);
    if (__p.__pn_.__r_.__value_.__s.__data_[0] == 1)
    {
      v6 = std::__fs::filesystem::directory_iterator::__dereference(&v9);
      if (SHIBYTE(v6->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_2982DE100(&__p, v6->__p_.__pn_.__r_.__value_.__l.__data_, v6->__p_.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p.__pn_ = v6->__p_;
      }

      (*(*this + 112))(this, a2, &__p);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    std::__fs::filesystem::directory_iterator::__increment(&v9, 0);
  }

  if (v9.__imp_.__cntrl_)
  {
    sub_2982D89F4(v9.__imp_.__cntrl_);
  }
}

void sub_2982FE288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 24);
  if (v16)
  {
    sub_2982D89F4(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t BestChoiceMetadataLoaderDelegate::readOverrideFile(unint64_t *a1, uint64_t a2, char *a3)
{
  if (a3[23] >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  sub_2982FBC6C(&v14, v5);
  if (v14)
  {
    v6 = *(&v14 + 1) == -1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_2982FBA8C(*(&v14 + 1), v15, &v11);
    if (v11 <= a2)
    {
      v9 = (*a1 + 128);
    }

    else
    {
      v7 = a1[3];
      if (v7 >= a1[4])
      {
        v8 = sub_2982FEC28(a1 + 2, &v14);
      }

      else
      {
        *v7 = v14;
        *(v7 + 16) = v15;
        *&v14 = 0;
        *(&v14 + 1) = -1;
        v15 = 0;
        v8 = v7 + 24;
      }

      a1[3] = v8;
      v9 = (*a1 + 120);
    }

    (*v9)(a1, a2, &v11);
    sub_2982F2E68(&v13);
    sub_2982F2E68(&v12);
  }

  return sub_2982F2FCC(&v14);
}

uint64_t *BestChoiceMetadataLoaderDelegate::markOverrideFileUsed(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  for (i = *(a3 + 24); i; i = *i)
  {
    result = sub_2982FEE88(v4 + 5, i + 4, (i + 4));
    if ((v6 & 1) == 0)
    {
      v7 = *(i + 4);
      result[3] = *(i + 3);
      result[4] = v7;
    }
  }

  for (j = *(a3 + 64); j; j = *j)
  {
    result = sub_2982FEE88(v4 + 10, j + 4, (j + 4));
    if ((v9 & 1) == 0)
    {
      v10 = *(j + 4);
      result[3] = *(j + 3);
      result[4] = v10;
    }
  }

  return result;
}

uint64_t BestChoiceMetadataLoaderDelegate::pickMap(uint64_t a1, int a2)
{
  (*(*a1 + 88))(a1);
  v4 = a1 + 80;
  if (a2 != 1)
  {
    v4 = a1 + 40;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return a1 + 40;
  }
}

void BestChoiceMetadataLoaderDelegate::getComponentsAvailable(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  (*(*a1 + 88))(a1);
  v6 = 40;
  if (a2 == 1)
  {
    v6 = 80;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *(a1 + v6 + 16);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = a3[2];
      if (v8 >= v9)
      {
        v10 = *a3;
        v11 = v8 - *a3;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_2982DE7D0();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_2982E6554(a3, v15);
        }

        *(4 * v12) = *(v7 + 4);
        v8 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v8;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = *(v7 + 4);
        v8 += 4;
      }

      a3[1] = v8;
      v7 = *v7;
    }

    while (v7);
  }
}

void sub_2982FE694(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void BestChoiceMetadataLoaderDelegate::getMetricIndex(BestChoiceMetadataLoaderDelegate *this@<X0>, void *a2@<X8>)
{
  sub_2982FB5F0(this, &v14);
  if (!v14)
  {
    operator new();
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  while (v4 != v5)
  {
    v6 = sub_2982FB724(*(v4 + 8), *(v4 + 16));
    sub_2982FB64C(v6, v7, &v12);
    if (v12)
    {
      sub_2982F3160(v14, v12);
    }

    if (v13)
    {
      sub_2982D89F4(v13);
    }

    v4 += 24;
  }

  sub_2982F3330(v14);
  v8 = (*(*this + 80))(this);
  v10 = sub_2982FB724(v8, v9);
  sub_2982FB64C(v10, v11, a2);
  if (v15)
  {
    sub_2982D89F4(v15);
  }
}

void sub_2982FE7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2982D89F4(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FE80C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2982F2FCC(v4 - 24);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2982FE890(uint64_t a1, uint64_t *a2)
{
  sub_2982FE934(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_2982FE934(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

std::string *sub_2982FE9A0(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  sub_2982FEA00(this, v3, v4);
  return this;
}

void sub_2982FE9E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2982FEA00(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_2982FEB78(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_2982FEB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2982FEB78(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2982DE6F4();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t sub_2982FEC28(unint64_t *a1, uint64_t a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2982DE7D0();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v18 = a1;
  if (v3)
  {
    sub_2982FED6C(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v15 = 0;
  v16 = v9;
  *(&v17 + 1) = 0;
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = -1;
  *(a2 + 16) = 0;
  *&v17 = v9 + 24;
  v10 = v9 - v6;
  sub_2982FEDC4(a1, v4, v5, v9 - v6);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_2982FEE38(&v15);
  return v14;
}

void sub_2982FED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2982FEE38(va);
  _Unwind_Resume(a1);
}

void sub_2982FED6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2982DE79C();
}

void sub_2982FEDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = -1;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_2982F2FCC(v5) + 24;
    }
  }
}

uint64_t sub_2982FEE38(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_2982F2FCC(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_2982FEE88(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_2982FF0C4(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "fields");
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2982FF17C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  return result;
}

void sub_2982FF1DC(unint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = a1;
  do
  {
    std::string::push_back(v2, a0123456789abcd_0[v3 & 0xF]);
    v4 = v3 >= 0x10;
    v3 >>= 4;
  }

  while (v4);
  size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v2->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_14:
      std::string::push_back(v2, 48);
      return;
    }

    v2 = v2->__r_.__value_.__r.__words[0];
  }

  else if (!*(&v2->__r_.__value_.__s + 23))
  {
    goto LABEL_14;
  }

  v6 = (v2 + size - 1);
  if (v6 > v2)
  {
    v7 = &v2->__r_.__value_.__s.__data_[1];
    do
    {
      v8 = *(v7 - 1);
      *(v7 - 1) = v6->__r_.__value_.__s.__data_[0];
      v6->__r_.__value_.__s.__data_[0] = v8;
      v6 = (v6 - 1);
      v4 = v7++ >= v6;
    }

    while (!v4);
  }
}

void sub_2982FF29C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FF2BC(unint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, a2, 0);
  v5 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = (a3 + v5);
  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v7 = (a3->__r_.__value_.__r.__words[0] + a3->__r_.__value_.__l.__size_);
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  for (; v7 != v8; a1 >>= 4)
  {
    *(&v7[-1].__r_.__value_.__s + 23) = a0123456789abcd_0[a1 & 0xF];
    v7 = (v7 - 1);
  }
}

void sub_2982FF33C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FF358(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = a1 / 0x3E8;
  v6 = a1 / 0x3E8;
  v5 = localtime(&v6);
  if (!strftime(v7, 0x50uLL, "%a %F %T", v5))
  {
    v7[0] = 0;
  }

  sub_2982FF424("%llu (%s.%03d)", a2, a1, v7, a1 - 1000 * v4);
}

void sub_2982FF424(const char *a1@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::resize(a2, 0x17uLL, 0);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = vsnprintf(v5, v6, a1, va);
  v8 = v7;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  if (v9 <= v7)
  {
    std::string::resize(a2, v7 + 1, 0);
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 23);
    }

    else
    {
      v12 = *(a2 + 8);
    }

    v8 = vsnprintf(v11, v12, a1, va);
  }

  std::string::resize(a2, v8, 0);
}

void sub_2982FF4F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FF518(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = a1 + 978307200;
  v4 = localtime(&v5);
  if (!strftime(v6, 0x50uLL, "%a %F %T", v4))
  {
    v6[0] = 0;
  }

  sub_2982FF424("%llu (%s)", a2, a1, v6);
}

void sub_2982FF5C8(time_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = a1;
  v4 = localtime(&v5);
  if (!strftime(v6, 0x50uLL, "%a %F %T", v4))
  {
    v6[0] = 0;
  }

  sub_2982FF424("%llu (%s)", a2, a1, v6);
}

void sub_2982FF66C(uint64_t a1@<X1>, uint64_t a2@<X8>, MetricFileMetadataHelper *a3@<X0>)
{
  v5 = sub_2982FF6C0(a3, a1);
  v6 = "unknown";
  if (v5)
  {
    v6 = v5;
  }

  sub_2982FF424("0x%x (%s)", a2, a1, v6);
}

uint64_t sub_2982FF6C0(MetricFileMetadataHelper *a1, unsigned int a2)
{
  MetricFileMetadataHelper::getHandleForMetric(a1, a2, v3);
  if (v4 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  result = MetadataHandle::getField(v3);
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      if (*(result + 23) < 0)
      {
        return *result;
      }
    }
  }

  return result;
}

void sub_2982FF71C(MetricFileMetadataHelper *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2982FF6C0(a1, a2);
  if (v5)
  {
    sub_2982FF424("0x%x (%s metric)", a3, a2, v5);
  }

  else
  {
    if ((a2 - 520195) >= 0xD)
    {
      if ((a2 & 0xFFFF0000) == 0x7F0000)
      {
        v6 = "unknown timer";
      }

      else
      {
        v6 = "unknown";
      }
    }

    else
    {
      v6 = (&off_29EE906D0)[(a2 - 520195)];
    }

    sub_2982FF424("0x%x (%s)", a3, a2, v6);
  }
}

void sub_2982FF7B0(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1000)
  {
    sub_2982FF424("%lldns", a2, a1);
  }

  else
  {
    sub_2982FF8D0(__p, ((a1 / 0x3B9ACA00) - 60 * (a1 / 0xDF8475800)) | ((a1 % 0x3B9ACA00) << 32), (a1 / 0x34630B8A000) | ((a1 / 0xDF8475800 - 60 * (a1 / 0x34630B8A000)) << 32));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    sub_2982FF424("%lldns (%s)", a2, a1, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2982FF8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FF8D0(uint64_t *__return_ptr a1@<X8>, unint64_t __val@<X1>, unint64_t a3@<X0>)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = HIDWORD(a3);
  v6 = HIDWORD(__val);
  if (HIDWORD(a3))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3 == 0;
  }

  v8 = !v7;
  if (v7 && !__val)
  {
    v9 = v6 - 1000000 * (HIDWORD(__val) / 0xF4240);
    v10 = v9 / 1000;
    v11 = v9 % 1000;
    v12 = v9 + 999;
    if (__val >= 0xF424000000000)
    {
      if (v12 <= 0x7CE && v11 == 0)
      {
        sub_2982FF424("%lldms", a1, HIDWORD(__val) / 0xF4240uLL);
      }

      else
      {
        sub_2982FF424("%lld.%03lldms", a1, HIDWORD(__val) / 0xF4240uLL, v10);
      }
    }

    else if (v12 >= 0x7CF)
    {
      if (v11)
      {
        sub_2982FF424("%lld.%03lldus", a1, v10, v11);
      }

      else
      {
        sub_2982FF424("%lldus", a1, v10);
      }
    }

    else
    {
      sub_2982FF424("%lldns", a1, v11);
    }

    return;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!a3)
  {
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  std::to_string(&v27, a3);
  v13 = std::string::append(&v27, "h");
  v14 = v13->__r_.__value_.__r.__words[0];
  v28.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
  *(v28.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v16 = v28.__r_.__value_.__r.__words[0];
  *a1 = v14;
  a1[1] = v16;
  *(a1 + 15) = *(v28.__r_.__value_.__r.__words + 7);
  *(a1 + 23) = v15;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v5 || v6 || __val)
  {
LABEL_28:
    std::to_string(&v28, v5);
    v18 = std::string::append(&v28, "m");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v27;
    }

    else
    {
      v20 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v20, size);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if (__val)
      {
LABEL_38:
        if (!v6)
        {
          std::to_string(&v27, __val);
          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v27;
          }

          else
          {
            v22 = v27.__r_.__value_.__r.__words[0];
          }

          if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v27.__r_.__value_.__l.__size_;
          }

          std::string::append(a1, v22, v23);
          if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v27.__r_.__value_.__l.__data_);
          }

          std::string::append(a1, "s");
          return;
        }

LABEL_56:
        sub_2982FF424("%u.%01us", &v27, __val, v6 / 0x5F5E100uLL);
        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v27;
        }

        else
        {
          v25 = v27.__r_.__value_.__r.__words[0];
        }

        if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = v27.__r_.__value_.__l.__size_;
        }

        std::string::append(a1, v25, v26);
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_52:
      if (v6)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) == 0)
      {
        return;
      }

      goto LABEL_56;
    }

LABEL_37:
    if (__val)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }
}

void sub_2982FFBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FFC5C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1000)
  {
    sub_2982FF424("%lldus", a2, a1);
  }

  else
  {
    sub_2982FF8D0(__p, ((a1 / 0xF4240) - 60 * (a1 / 0x3938700)) | (0x3E800000000 * (a1 % 0xF4240)), (((a1 / 0x3938700) - 60 * (a1 / 0xD693A400)) << 32) | (a1 / 0xD693A400));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    sub_2982FF424("%lldus (%s)", a2, a1, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2982FFD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FFD84(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 1000)
  {
    sub_2982FF424("%lldms", a2, a1);
  }

  else
  {
    sub_2982FF8D0(__p, ((a1 / 0x3E8) - 60 * (a1 / 0xEA60)) | (0xF424000000000 * (a1 % 0x3E8)), (a1 / 0x36EE80) | (((a1 / 0xEA60) - 60 * (a1 / 0x36EE80)) << 32));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    sub_2982FF424("%lldms (%s)", a2, a1, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2982FFE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FFEAC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 60)
  {
    sub_2982FF424("%llds", a2, a1);
  }

  else
  {
    sub_2982FF8D0(__p, a1 % 0x3C, (a1 / 0xE10) | (((a1 / 0x3C) - 60 * (a1 / 0xE10)) << 32));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    sub_2982FF424("%llds (%s)", a2, a1, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2982FFF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2982FFF98(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 60)
  {
    sub_2982FF424("%ldm", a2, a1);
  }

  else
  {
    sub_2982FF8D0(__p, 0, (a1 / 0x3C) | ((a1 % 0x3C) << 32));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    sub_2982FF424("%ldm (%s)", a2, a1, v4);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29830004C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sGetMetricName(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(v10, a1);
  v8[0] = 0;
  v8[1] = 0;
  v8[2] = 0xFFFFFFFFLL;
  MetricFileMetadataHelper::getSubfieldType(v10, v8, a2, v9);
  Field = MetadataHandle::getField(v9);
  if (Field && (v6 = *(Field + 8)) != 0)
  {
    if (*(v6 + 23) < 0)
    {
      sub_2982DE100(a3, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      *(a3 + 16) = *(v6 + 2);
      *a3 = v7;
    }
  }

  else
  {
    *(a3 + 23) = 7;
    strcpy(a3, "unknown");
  }

  sub_2982DDC40(&v12);
  if (v11)
  {
    sub_2982D89F4(v11);
  }
}

void sub_298300168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_2982FA164(va);
  _Unwind_Resume(a1);
}

void sMetricNamesResolver(WISMetadataLoader **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 24))
  {
    WISMetadataLoader::getMetricIndex(&v35, *a1);
    if (v35)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = *(v35 + 8);
        v6 = *(v35 + 16);
        v32 = v6 - v5;
        do
        {
          if (v6 != v5)
          {
            v7 = *(v4 + 39);
            if (v7 >= 0)
            {
              v8 = *(v4 + 39);
            }

            else
            {
              v8 = v4[3];
            }

            __str = (v4 + 2);
            if (v7 >= 0)
            {
              v9 = v4 + 2;
            }

            else
            {
              v9 = v4[2];
            }

            v10 = v5;
            v11 = v5;
            v12 = v32;
            do
            {
              v13 = v12 >> 1;
              v14 = &v11[v12 >> 1];
              v15 = *(*v14 + 8);
              if (v15)
              {
                v16 = *(v15 + 23);
                if (v16 >= 0)
                {
                  v17 = *(v15 + 23);
                }

                else
                {
                  v17 = *(v15 + 8);
                }

                if (v16 >= 0)
                {
                  v18 = *(*v14 + 8);
                }

                else
                {
                  v18 = *v15;
                }

                if (v8 >= v17)
                {
                  v19 = v17;
                }

                else
                {
                  v19 = v8;
                }

                v20 = memcmp(v18, v9, v19);
                v21 = v17 < v8;
                if (v20)
                {
                  v21 = v20 < 0;
                }

                if (v21)
                {
                  v11 = v14 + 1;
                  v13 = v12 + ~v13;
                }
              }

              v12 = v13;
            }

            while (v13);
            v5 = v10;
            if (v11 != v6)
            {
              v22 = *v11;
              v23 = *(*v11 + 8);
              v24 = *(v23 + 23);
              if (v24 >= 0)
              {
                v25 = *(v23 + 23);
              }

              else
              {
                v25 = *(v23 + 8);
              }

              v26 = *(v4 + 39);
              v27 = v26;
              if ((v26 & 0x80u) != 0)
              {
                v26 = v4[3];
              }

              if (v25 == v26)
              {
                if (v24 >= 0)
                {
                  v28 = *(*v11 + 8);
                }

                else
                {
                  v28 = *v23;
                }

                if (v27 >= 0)
                {
                  v29 = v4 + 2;
                }

                else
                {
                  v29 = __str->__r_.__value_.__r.__words[0];
                }

                if (!memcmp(v28, v29, v25))
                {
                  v34 = *(v22 + 16);
                  v37 = &v34;
                  v30 = sub_298300414(a3, &v34, &unk_2983052A4, &v37);
                  std::string::operator=(v30 + 1, __str);
                }
              }
            }
          }

          v4 = *v4;
        }

        while (v4);
      }
    }

    if (v36)
    {
      sub_2982D89F4(v36);
    }
  }
}

void **sub_29830038C(void **a1)
{
  sub_2983003C8(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_2983003C8(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_298300414(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_29830066C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2A1C68DB8](this, a2);
}

{
  return MEMORY[0x2A1C68DC0](this, a2);
}

{
  return MEMORY[0x2A1C68DC8](this, a2);
}

{
  return MEMORY[0x2A1C68DD0](this, a2);
}

{
  return MEMORY[0x2A1C68DD8](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2A1C68E30](this);
}

{
  return MEMORY[0x2A1C68E38](this);
}

{
  return MEMORY[0x2A1C68E48](this);
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2A1C70290](retstr, __val);
}

{
  return MEMORY[0x2A1C702A0](retstr, __val);
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

void operator new()
{
    ;
  }
}