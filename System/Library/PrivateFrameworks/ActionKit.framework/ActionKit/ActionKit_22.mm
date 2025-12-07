uint64_t x509_constraints_valid_host(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = 0;
  v2 = CBS_peek_u8(a1, &v4);
  result = 0;
  if (v2 && v4 != 46)
  {
    v5 = 0;
    if (CBS_len(a1) <= 0x2E)
    {
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      v8[0] = 0;
      v8[1] = 0;
      if (CBS_strdup(a1, &v5))
      {
        if (inet_pton(2, v5, v8) == 1 || inet_pton(30, v5, v6) == 1)
        {
          free(v5);
          return 0;
        }

        free(v5);
      }
    }

    return x509_constraints_valid_domain_internal(a1, 0);
  }

  return result;
}

uint64_t x509_constraints_valid_domain_internal(void *a1, int a2)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  CBS_dup(a1, v13);
  v4 = CBS_len(a1);
  if (v4 > 0xFF)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1 - v4;
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    result = CBS_get_u8(v13, &v14);
    if (!result)
    {
      break;
    }

    if (v14 < 1)
    {
      return 0;
    }

    if ((*(v10 + 4 * v14 + 60) & 0x500) == 0 && (v14 - 42 > 0x35 || ((1 << (v14 - 42)) & 0x20000000000019) == 0))
    {
      return 0;
    }

    if (!a2 && v14 == 42)
    {
      return 0;
    }

    if (v14 == 46)
    {
      result = 0;
      if (v6)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12 || !v9 || v7 == 45)
      {
        return result;
      }
    }

    else
    {
      if (v14 == 45)
      {
        result = 0;
        if (!v8 || !v9)
        {
          return result;
        }
      }

      result = 0;
      if (v7 == 42 || v8 > 62)
      {
        return result;
      }

      LODWORD(result) = v8 + 1;
    }

    ++v9;
    --v6;
    v7 = v14;
    v8 = result;
    if (v9 == 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t x509_constraints_valid_sandns(void *a1)
{
  v4 = 0;
  v2 = CBS_peek_u8(a1, &v4);
  result = 0;
  if (v2 && v4 != 46)
  {
    if (CBS_len(a1) <= 3 && v4 == 42)
    {
      return 0;
    }

    else
    {
      return x509_constraints_valid_domain_internal(a1, 1);
    }
  }

  return result;
}

uint64_t x509_constraints_parse_mailbox(uint64_t result, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__s1 = 0u;
  if (!result)
  {
    return result;
  }

  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  CBS_dup(result, v18);
  v3 = CBS_len(v18);
  if ((v3 - 321) < 0xFFFFFFFFFFFFFEC0)
  {
    return 0;
  }

  v4 = v3;
  v15 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v17 = 0;
    if (!CBS_get_u8(v18, &v17) || v17 < 0)
    {
      goto LABEL_55;
    }

    v11 = v17;
    if (v17 <= 0xD && ((1 << v17) & 0x2401) != 0)
    {
      goto LABEL_55;
    }

    if (!v5)
    {
      if (v17 == 34)
      {
        v6 = 1;
      }

      if (v17 == 46)
      {
        goto LABEL_55;
      }
    }

    if (v7)
    {
      if (v8 > 0xFE)
      {
        goto LABEL_55;
      }

LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }

    if (v10)
    {
      if (v8 > 0xFE)
      {
        goto LABEL_55;
      }

      v13 = v8 + 1;
      __s1[v8] = v17;
      if (v4 == 1)
      {
        if (v9)
        {
          goto LABEL_55;
        }

        v9 = strdup(__s1);
        if (!v9)
        {
          goto LABEL_55;
        }
      }

      v7 = 0;
    }

    else
    {
      if (v8 >= 0x40)
      {
        goto LABEL_54;
      }

      if (v6)
      {
        if (v17 != 92)
        {
          v6 = 1;
          if (v5 && v17 == 34)
          {
            v16 = 0;
            if (!CBS_peek_u8(v18, &v16) || v16 != 64)
            {
              goto LABEL_54;
            }

            v6 = 0;
            v11 = v17;
          }

          if (v11 == 9)
          {
            goto LABEL_54;
          }

          v10 = 0;
          goto LABEL_17;
        }

        v10 = 0;
        v7 = 1;
        v13 = v8;
        v6 = 1;
      }

      else
      {
        if (v17 == 92)
        {
          v16 = 0;
          if (!CBS_peek_u8(v18, &v16) || !local_part_ok(v16))
          {
LABEL_54:
            v10 = 0;
LABEL_55:
            free(v10);
            free(v9);
            return 0;
          }

          v7 = 1;
          v11 = v17;
LABEL_47:
          if (!local_part_ok(v11))
          {
            goto LABEL_54;
          }

          v10 = 0;
          v6 = 0;
LABEL_18:
          v13 = v8 + 1;
          __s1[v8] = v11;
          goto LABEL_25;
        }

        if (v17 != 64)
        {
          v7 = 0;
          goto LABEL_47;
        }

        if (!v8)
        {
          goto LABEL_54;
        }

        v10 = strdup(__s1);
        if (!v10)
        {
          goto LABEL_55;
        }

        v13 = 0;
        v7 = 0;
        v6 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        *__s1 = 0u;
      }
    }

LABEL_25:
    --v5;
    v8 = v13;
    --v4;
  }

  while (v4);
  if (!v10)
  {
    goto LABEL_55;
  }

  if (!v9)
  {
    goto LABEL_55;
  }

  v14 = strlen(v9);
  CBS_init(v19, v9, v14);
  if (!x509_constraints_valid_host(v19))
  {
    goto LABEL_55;
  }

  if (v15)
  {
    *(v15 + 8) = v9;
    *(v15 + 16) = v10;
    result = 1;
    *v15 = 1;
  }

  else
  {
    free(v10);
    free(v9);
    return 1;
  }

  return result;
}

BOOL local_part_ok(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1 - 48;
  v3 = (a1 & 0xDF) - 65;
  result = 1;
  v5 = v2 >= 0xA && v3 >= 0x1A;
  if (v5 && ((v1 - 33) > 0x3F || ((1 << (v1 - 33)) & 0xE00000005000567DLL) == 0))
  {
    v6 = v1 - 123;
    v7 = v1 == 46;
    return v6 < 4 || v7;
  }

  return result;
}

uint64_t x509_constraints_valid_domain_constraint(void *a1)
{
  if (!CBS_len(a1))
  {
    return 1;
  }

  v4 = 0;
  if (CBS_len(a1) > 2)
  {
    return x509_constraints_valid_domain_internal(a1, 0);
  }

  v2 = CBS_peek_u8(a1, &v4);
  result = 0;
  if (v2)
  {
    if (v4 != 46)
    {
      return x509_constraints_valid_domain_internal(a1, 0);
    }
  }

  return result;
}

uint64_t x509_constraints_uri_host(uint64_t a1, unint64_t a2, char **a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v17[5] = v3;
  v17[6] = v4;
  v7 = 0;
  do
  {
    v8 = *(a1 + v7);
    if (v8 < 0)
    {
      return 0;
    }

    if (v8 == 47)
    {
      v9 = a1 + v7;
      if (*(a1 + v7 + 1) == 47)
      {
        if (v7 + 2 >= a2)
        {
          return 0;
        }

        v10 = 0;
        v11 = 0;
        v12 = v9 + 2;
        v13 = v9 + 3;
        v14 = a2 - v7 - 2;
        while (1)
        {
          if (*(v13 - 1) < 0)
          {
            return 0;
          }

          v15 = *(v13 - 1) - 35;
          if (v15 <= 0x1D)
          {
            if (*(v13 - 1) == 64)
            {
              if (v10)
              {
                return 0;
              }

              v11 = 0;
              v10 = v13;
              goto LABEL_20;
            }

            if (((1 << v15) & 0x10801001) != 0)
            {
              goto LABEL_21;
            }
          }

          ++v11;
LABEL_20:
          ++v13;
          if (!--v14)
          {
LABEL_21:
            if (!v11)
            {
              return 0;
            }

            memset(v17, 0, 24);
            if (v10)
            {
              v16 = v10;
            }

            else
            {
              v16 = v12;
            }

            CBS_init(v17, v16, v11);
            result = x509_constraints_valid_host(v17);
            if (result)
            {
              if (!a3)
              {
                return 1;
              }

              result = CBS_strdup(v17, a3);
              if (result)
              {
                return 1;
              }
            }

            return result;
          }
        }
      }
    }

    ++v7;
  }

  while (a2 - 1 != v7);
  if (a3)
  {
    *a3 = strdup("");
  }

  return 1;
}

BOOL x509_constraints_sandns(uint64_t a1, unint64_t a2, char *a3, size_t a4)
{
  if (!a4)
  {
    return 1;
  }

  if (a2 >= a4)
  {
    return strncasecmp((a1 + a2 - a4), a3, a4) == 0;
  }

  return 0;
}

uint64_t x509_constraints_domain(char *a1, size_t a2, char *a3, size_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v5 = a1;
  if (*a3 == 46)
  {
    v6 = a2 >= a4;
    v7 = a2 - a4;
    if (!v6)
    {
      return 0;
    }

    a1 += v7;
    goto LABEL_11;
  }

  if (*a1 == 46)
  {
    if (a4 >= a2)
    {
      a1 = &a3[a4 - a2];
      v9 = a2;
      return strncasecmp(a1, v5, v9) == 0;
    }
  }

  else if (a2 == a4)
  {
LABEL_11:
    v5 = a3;
    v9 = a4;
    return strncasecmp(a1, v5, v9) == 0;
  }

  return 0;
}

uint64_t x509_constraints_uri(uint64_t a1, unint64_t a2, char *a3, size_t a4, int *a5)
{
  __s = 0;
  memset(v14, 0, sizeof(v14));
  CBS_init(v14, a3, a4);
  if (!x509_constraints_uri_host(a1, a2, &__s))
  {
    v11 = 0;
    v12 = 53;
LABEL_8:
    *a5 = v12;
    goto LABEL_9;
  }

  if (!__s)
  {
    v11 = 0;
    v12 = 17;
    goto LABEL_8;
  }

  if (!x509_constraints_valid_domain_constraint(v14))
  {
    v11 = 0;
    v12 = 52;
    goto LABEL_8;
  }

  v10 = strlen(__s);
  v11 = x509_constraints_domain(__s, v10, a3, a4);
LABEL_9:
  free(__s);
  return v11;
}

uint64_t x509_constraints_ipaddr(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 == 2 * a2)
  {
    if (!a2)
    {
      return 1;
    }

    v4 = a2;
    while (1)
    {
      v5 = *a1++;
      if (((*a3 ^ v5) & a3[a2]) != 0)
      {
        break;
      }

      ++a3;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t x509_constraints_general_to_bytes(unsigned int *a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  result = *a1;
  if (result <= 3)
  {
    if (result != 1 && result != 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = *(a1 + 1);
    *a2 = *(v7 + 1);
    goto LABEL_15;
  }

  if (result == 4)
  {
    v8 = *(a1 + 1);
    if (*(v8 + 8))
    {
      v9 = i2d_X509_NAME(*(a1 + 1), 0);
      result = *a1;
      if (v9 < 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = 4;
    }

    *a2 = *(v8 + 24);
    v7 = (v8 + 32);
    goto LABEL_15;
  }

  if (result == 6)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (result != 7)
  {
    return 0;
  }

  *a2 = *(*(a1 + 1) + 8);
  v7 = *(a1 + 1);
LABEL_15:
  *a3 = *v7;
  return result;
}

uint64_t x509_constraints_extract_names(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v7 = sk_value(*(a2 + 112), 0);
  if (v7)
  {
    v8 = v7;
    v9 = 1;
    v10 = a3;
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
      if (!v11)
      {
        goto LABEL_64;
      }

      v12 = x509_constraints_general_to_bytes(v8, &v35, &v34);
      v13 = v34;
      v14 = v35;
      CBS_init(&v31, v35, v34);
      if (v12 <= 3)
      {
        if (v12 == 1)
        {
          if (!x509_constraints_parse_mailbox(&v31, v11))
          {
            goto LABEL_34;
          }

          v10 = 0;
          goto LABEL_29;
        }

        if (v12 == 2)
        {
          if (!x509_constraints_valid_sandns(&v31))
          {
            goto LABEL_34;
          }

          if (!CBS_strdup(&v31, v11 + 1))
          {
            goto LABEL_64;
          }

          a3 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        switch(v12)
        {
          case 4:
            if (!v13)
            {
              goto LABEL_34;
            }

            if (!v14)
            {
              goto LABEL_64;
            }

            v16 = malloc_type_malloc(v13, 0x8E93192CuLL);
            v11[3] = v16;
            if (!v16)
            {
              goto LABEL_64;
            }

            memcpy(v16, v14, v13);
            v11[4] = v13;
            goto LABEL_29;
          case 6:
            if (!x509_constraints_uri_host(v14, v13, v11 + 1))
            {
              goto LABEL_34;
            }

            if (!v11[1])
            {
              goto LABEL_64;
            }

            goto LABEL_29;
          case 7:
            if (v13 == 4)
            {
              v15 = 2;
LABEL_27:
              *(v11 + 10) = v15;
            }

            else
            {
              if (v13 == 16)
              {
                v15 = 30;
                goto LABEL_27;
              }

              v18 = *(v11 + 10);
              if (v18 != 2 && v18 != 30)
              {
LABEL_34:
                v19 = 53;
                goto LABEL_65;
              }
            }

            __memcpy_chk();
LABEL_29:
            *v11 = v12;
            if (!x509_constraints_names_add(a1, v11))
            {
              goto LABEL_64;
            }

            goto LABEL_30;
        }
      }

      x509_constraints_name_clear(v11);
      free(v11);
LABEL_30:
      v17 = v9 + 1;
      v8 = sk_value(*(a2 + 112), v9++);
      if (!v8)
      {
        goto LABEL_36;
      }
    }
  }

  v17 = 1;
  v10 = a3;
LABEL_36:
  subject_name = X509_get_subject_name(a2);
  if (X509_NAME_entry_count(subject_name) < 1)
  {
    return 1;
  }

  if (subject_name->modified && i2d_X509_NAME(subject_name, 0) < 0)
  {
LABEL_63:
    v11 = 0;
LABEL_64:
    v19 = 17;
LABEL_65:
    *a4 = v19;
    if (!v11)
    {
      return 0;
    }

    goto LABEL_66;
  }

  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
  if (!v11)
  {
    goto LABEL_64;
  }

  v21 = malloc_type_malloc(SLODWORD(subject_name[1].entries), 0x40D1052DuLL);
  v11[3] = v21;
  if (!v21)
  {
    goto LABEL_64;
  }

  memcpy(v21, subject_name->hash, SLODWORD(subject_name[1].entries));
  v11[4] = SLODWORD(subject_name[1].entries);
  *v11 = 4;
  if (x509_constraints_names_add(a1, v11))
  {
    if (v10)
    {
      for (i = X509_NAME_get_index_by_NID(subject_name, 48, v17); (i & 0x80000000) == 0; i = X509_NAME_get_index_by_NID(subject_name, 48, i))
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        entry = X509_NAME_get_entry(subject_name, i);
        if (!entry)
        {
          goto LABEL_63;
        }

        data = X509_NAME_ENTRY_get_data(entry);
        if (!data)
        {
          goto LABEL_63;
        }

        CBS_init(&v31, data->data, data->length);
        v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
        if (!v11)
        {
          goto LABEL_64;
        }

        if (!x509_constraints_parse_mailbox(&v31, v11))
        {
          goto LABEL_34;
        }

        *v11 = 1;
        if (!x509_constraints_names_add(a1, v11))
        {
          goto LABEL_64;
        }
      }

      v17 = i;
    }

    if (a3)
    {
      index_by_NID = X509_NAME_get_index_by_NID(subject_name, 13, v17);
      if ((index_by_NID & 0x80000000) == 0)
      {
        v26 = index_by_NID;
        while (1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v27 = X509_NAME_get_entry(subject_name, v26);
          if (!v27)
          {
            goto LABEL_63;
          }

          v28 = X509_NAME_ENTRY_get_data(v27);
          if (!v28)
          {
            goto LABEL_63;
          }

          CBS_init(&v31, v28->data, v28->length);
          if (x509_constraints_valid_host(&v31))
          {
            v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
            if (!v11)
            {
              goto LABEL_64;
            }

            if (!CBS_strdup(&v31, v11 + 1))
            {
              goto LABEL_64;
            }

            *v11 = 2;
            if (!x509_constraints_names_add(a1, v11))
            {
              goto LABEL_64;
            }
          }

          v26 = X509_NAME_get_index_by_NID(subject_name, 13, v26);
          result = 1;
          if (v26 < 0)
          {
            return result;
          }
        }
      }
    }

    return 1;
  }

  *a4 = 17;
LABEL_66:
  x509_constraints_name_clear(v11);
  free(v11);
  return 0;
}

uint64_t x509_constraints_validate(unsigned int *a1, void ***a2, int *a3)
{
  v17 = 0;
  v18 = 0;
  if (!a2 || *a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
  if (!v7)
  {
    v13 = 17;
    if (a3)
    {
LABEL_38:
      result = 0;
      *a3 = v13;
      return result;
    }

    return 0;
  }

  v8 = v7;
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  v9 = x509_constraints_general_to_bytes(a1, &v18, &v17);
  v10 = v17;
  v11 = v18;
  CBS_init(v16, v18, v17);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      if (v10 && memchr((v11 + 1), 64, v10 - 1))
      {
        if (!x509_constraints_parse_mailbox(v16, v8))
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      if (CBS_len(v16) && (!CBS_peek_u8(v16, &v19) || v19 == 64 && !CBS_skip(v16, 1uLL)) || !x509_constraints_valid_domain_constraint(v16))
      {
        goto LABEL_36;
      }

      if (CBS_strdup(v16, v8 + 1))
      {
        goto LABEL_41;
      }

LABEL_21:
      v13 = 17;
      goto LABEL_37;
    }

    if (v9 != 2)
    {
      goto LABEL_42;
    }

LABEL_19:
    if (!x509_constraints_valid_domain_constraint(v16))
    {
      goto LABEL_36;
    }

    v14 = strndup(v11, v10);
    v8[1] = v14;
    if (v14)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  switch(v9)
  {
    case 7:
      if (v10 == 8)
      {
        v15 = 2;
      }

      else
      {
        if (v10 != 32)
        {
          goto LABEL_36;
        }

        v15 = 30;
      }

      *(v8 + 10) = v15;
      __memcpy_chk();
      goto LABEL_41;
    case 6:
      goto LABEL_19;
    case 4:
      if (v10)
      {
        if (v11)
        {
          v12 = malloc_type_malloc(v10, 0x54E20C12uLL);
          v8[3] = v12;
          if (v12)
          {
            memcpy(v12, v11, v10);
            v8[4] = v10;
LABEL_41:
            *v8 = v9;
            break;
          }
        }

        goto LABEL_21;
      }

LABEL_36:
      v13 = 52;
LABEL_37:
      x509_constraints_name_clear(v8);
      free(v8);
      if (a3)
      {
        goto LABEL_38;
      }

      return 0;
  }

LABEL_42:
  *a2 = v8;
  return 1;
}

uint64_t x509_constraints_extract_constraints(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v17 = 0;
  v4 = *(a1 + 120);
  if (!v4)
  {
    return 1;
  }

  if (sk_num(*v4) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sk_value(*v4, v8);
      if (*(v9 + 1) || *(v9 + 2))
      {
        goto LABEL_23;
      }

      result = x509_constraints_validate(*v9, &v17, a4);
      if (!result)
      {
        return result;
      }

      v11 = v17;
      if (*v17)
      {
        if (!x509_constraints_names_add(a2, v17))
        {
          v16 = v17;
          if (v17)
          {
            x509_constraints_name_clear(v17);
            free(v16);
          }

LABEL_26:
          v15 = 17;
          goto LABEL_27;
        }
      }

      else
      {
        x509_constraints_name_clear(v17);
        free(v11);
      }

      v17 = 0;
    }

    while (++v8 < sk_num(*v4));
  }

  if (sk_num(v4[1]) < 1)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v13 = sk_value(v4[1], v12);
    if (*(v13 + 1) || *(v13 + 2))
    {
      break;
    }

    result = x509_constraints_validate(*v13, &v17, a4);
    if (!result)
    {
      return result;
    }

    v14 = v17;
    if (*v17)
    {
      if (!x509_constraints_names_add(a3, v17))
      {
        x509_constraints_name_free(v17);
        goto LABEL_26;
      }
    }

    else
    {
      x509_constraints_name_clear(v17);
      free(v14);
    }

    v17 = 0;
    if (++v12 >= sk_num(v4[1]))
    {
      return 1;
    }
  }

LABEL_23:
  v15 = 49;
LABEL_27:
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t x509_constraints_match(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (v2 <= 3)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return result;
      }

      v14 = *(a1 + 8);
      v15 = strlen(v14);
      v16 = *(a2 + 8);
      v17 = strlen(v16);
      if (!v17)
      {
        return 1;
      }

      if (v15 < v17)
      {
        return 0;
      }

      v18 = strncasecmp(&v14[v15 - v17], v16, v17);
      return v18 == 0;
    }

    v20 = *(a2 + 16);
    if (!v20)
    {
      goto LABEL_31;
    }

    if (!strcmp(*(a1 + 16), v20))
    {
      v18 = strcmp(*(a1 + 8), *(a2 + 8));
      return v18 == 0;
    }

    return 0;
  }

  if (v2 == 4)
  {
    v19 = *(a2 + 32);
    if (v19 <= *(a1 + 32))
    {
      v18 = memcmp(*(a2 + 24), *(a1 + 24), v19);
      return v18 == 0;
    }

    return 0;
  }

  if (v2 != 6)
  {
    if (v2 != 7)
    {
      return result;
    }

    v6 = *(a1 + 40);
    v7 = 16;
    if (v6 == 2)
    {
      v7 = 4;
    }

    v8 = 32;
    if (v6 == 2)
    {
      v8 = 8;
    }

    if (v6 == 30 || v6 == 2)
    {
      v9 = *(a2 + 40);
      if ((v9 == 30 || v9 == 2) && v6 == v9 && v8 == 2 * v7)
      {
        v10 = (a1 + 44);
        v11 = (a2 + 44);
        v12 = v7;
        result = 1;
        while (1)
        {
          v13 = *v10++;
          if (((*v11 ^ v13) & v11[v7]) != 0)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

LABEL_31:
  v21 = *(a1 + 8);
  v22 = strlen(v21);
  v23 = *(a2 + 8);
  v24 = strlen(v23);

  return x509_constraints_domain(v21, v22, v23, v24);
}

uint64_t x509_constraints_check(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = a1[1];
  if (!v4)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(a3 + 8);
  while (!v8)
  {
LABEL_7:
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *a2;
      v15 = *(*a1 + 8 * v7);
      while (1)
      {
        v16 = *v14;
        if (x509_constraints_match(v15, *v14))
        {
          break;
        }

        if (*v16 == *v15)
        {
          ++v13;
        }

        ++v14;
        if (!--v12)
        {
          if (!v13)
          {
            break;
          }

          v18 = 47;
          goto LABEL_17;
        }
      }
    }

    if (++v7 == v4)
    {
      return 1;
    }
  }

  v9 = *(*a1 + 8 * v7);
  v10 = *a3;
  v11 = v8;
  while (!x509_constraints_match(v9, *v10))
  {
    ++v10;
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  v18 = 48;
LABEL_17:
  result = 0;
  *a4 = v18;
  return result;
}

uint64_t x509_constraints_chain(const STACK *a1, int *a2, int *a3)
{
  v22 = 1;
  if (!a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_21;
  }

  v6 = sk_num(a1);
  v7 = v6;
  if (!v6)
  {
LABEL_21:
    v9 = 0;
LABEL_22:
    *a2 = v22;
    *a3 = v7;
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    return v7;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
  v9 = v8;
  if (!v8)
  {
    LODWORD(v7) = 0;
    v22 = 17;
    goto LABEL_22;
  }

  v8[3] = 512;
  v10 = sk_value(a1, 0);
  if (!v10 || !x509_constraints_extract_names(v9, v10, 1, &v22))
  {
    LODWORD(v7) = 0;
    goto LABEL_22;
  }

  if (v7 < 2)
  {
    v18 = 1;
    goto LABEL_24;
  }

  v21 = 0;
  v11 = 1;
  while (1)
  {
    v12 = sk_value(a1, v11);
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12;
    if (!*(v12 + 15))
    {
      goto LABEL_17;
    }

    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
    if (!v14)
    {
      v22 = 17;
LABEL_31:
      LODWORD(v7) = v11;
      goto LABEL_22;
    }

    v15 = v14;
    v14[3] = 512;
    v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
    if (!v16)
    {
      v22 = 17;
      *a2 = 17;
      *a3 = v11;
      goto LABEL_35;
    }

    v17 = v16;
    v16[3] = 512;
    if (!x509_constraints_extract_constraints(v13, v15, v16, &v22))
    {
      goto LABEL_29;
    }

    if ((v15[1] + v21 + v17[1]) >= 0x201)
    {
      break;
    }

    v21 += v15[1] + v17[1];
    if (!x509_constraints_check(v9, v15, v17, &v22))
    {
LABEL_29:
      v20 = v22;
      goto LABEL_34;
    }

    x509_constraints_names_clear(v17);
    free(v17);
    x509_constraints_names_clear(v15);
    free(v15);
LABEL_17:
    if (!x509_constraints_extract_names(v9, v13, 0, &v22))
    {
      goto LABEL_31;
    }

    ++v11;
    v18 = 1;
    if (v7 == v11)
    {
      goto LABEL_24;
    }
  }

  v20 = 17;
  v22 = 17;
LABEL_34:
  *a2 = v20;
  *a3 = v11;
  x509_constraints_names_clear(v17);
  free(v17);
LABEL_35:
  x509_constraints_names_clear(v15);
  free(v15);
LABEL_23:
  v18 = 0;
  v7 = 0;
  if (v9)
  {
LABEL_24:
    x509_constraints_names_clear(v9);
    free(v9);
    return v18;
  }

  return v7;
}

uint64_t sk_X509_POLICY_NODE_delete_if (STACK *a1, unsigned int (*a2)(char *, uint64_t), uint64_t a3)
{
  result = sk_num(a1);
  if (result < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = sk_value(a1, v7);
      if (!a2(v9, a3))
      {
        a1->data[v8++] = v9;
      }

      ++v7;
      result = sk_num(a1);
    }

    while (v7 < result);
  }

  a1->num = v8;
  return result;
}

int X509_policy_check(X509_POLICY_TREE **ptree, int *pexplicit_policy, STACK *certs, STACK *policy_oids, unsigned int flags)
{
  v5 = policy_oids;
  v6 = certs;
  v8 = ptree;
  *&policy_oids->num = 0;
  v9 = sk_num(ptree);
  v10 = v9 - 2;
  if (v9 < 2)
  {
    return 0;
  }

  v12 = (v9 + 1);
  if ((v6 & 0x100) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v9 + 1);
  }

  if ((v6 & 0x200) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v9 + 1);
  }

  v82 = v14;
  v83 = v13;
  if ((v6 & 0x400) != 0)
  {
    v12 = 0;
  }

  v81 = v12;
  v15 = sk_new_null();
  if (!v15)
  {
LABEL_147:
    v16 = 0;
LABEL_148:
    v47 = 0;
    goto LABEL_149;
  }

  v75 = pexplicit_policy;
  v16 = 0;
  v17 = v10;
  do
  {
    v18 = sk_value(v8, v17);
    if (!x509v3_cache_extensions(v18))
    {
      goto LABEL_148;
    }

    ex_pathlen = v18->ex_pathlen;
    if (!v16)
    {
      if (v17 != v10)
      {
        goto LABEL_147;
      }

      v20 = x509_policy_level_new();
      v16 = v20;
      if (!v20)
      {
        goto LABEL_148;
      }

      *(v20 + 2) = 1;
    }

    v78 = ex_pathlen;
    v80 = v17;
    v21 = v17 != 0;
    v22 = v17 - 1;
    v23 = v21;
    if (v82)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23 & ((ex_pathlen & 0x20) != 0);
    }

    crit = 0;
    ext_d2i = X509_get_ext_d2i(v18, 89, &crit, 0);
    v79 = v22;
    if (!ext_d2i)
    {
      if (crit == -1)
      {
        *(v16 + 2) = 0;
        if (sk_num(*v16) >= 1)
        {
          v40 = 0;
          do
          {
            v41 = sk_value(*v16, v40);
            x509_policy_node_free(v41);
            ++v40;
          }

          while (v40 < sk_num(*v16));
        }

        sk_zero(*v16);
        goto LABEL_59;
      }

      goto LABEL_152;
    }

    v26 = ext_d2i;
    if (!sk_num(ext_d2i))
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 377);
LABEL_158:
      v36 = 0;
      goto LABEL_151;
    }

    sk_set_cmp_func(v26, policyinfo_cmp);
    sk_sort(v26);
    if (sk_num(v26) < 1)
    {
      v34 = *(v16 + 2);
LABEL_55:
      if (sk_is_sorted(v26))
      {
        sk_X509_POLICY_NODE_delete_if (*v16, delete_if_not_in_policies, v26);
        *(v16 + 2) = 0;
        if (!v34)
        {
          goto LABEL_57;
        }

LABEL_38:
        v36 = sk_new_null();
        if (v36)
        {
          if (sk_num(v26) < 1)
          {
LABEL_47:
            if (x509_policy_level_add_nodes(v16, v36))
            {
              goto LABEL_58;
            }
          }

          else
          {
            v37 = 0;
            while (1)
            {
              v38 = sk_value(v26, v37);
              if (OBJ_obj2nid(*v38) != 746)
              {
                if (!sk_is_sorted(*v16))
                {
                  goto LABEL_151;
                }

                if (!x509_policy_level_find(v16, *v38))
                {
                  v39 = x509_policy_node_new(*v38);
                  if (!v39 || !sk_push(v36, v39))
                  {
                    break;
                  }
                }
              }

              if (++v37 >= sk_num(v26))
              {
                goto LABEL_47;
              }
            }

            x509_policy_node_free(v39);
          }
        }

        goto LABEL_151;
      }

      goto LABEL_158;
    }

    v76 = v10;
    v27 = v8;
    v28 = v5;
    v29 = v15;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = sk_value(v26, v30);
      if (OBJ_obj2nid(*v32) == 746)
      {
        v31 = 1;
      }

      if (v30)
      {
        v33 = sk_value(v26, v30 - 1);
        if (!OBJ_cmp(*v33, *v32))
        {
          ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 395);
          v36 = 0;
          v15 = v29;
          v5 = v28;
LABEL_151:
          sk_pop_free(v36, x509_policy_node_free);
          CERTIFICATEPOLICIES_free(v26);
LABEL_152:
          v47 = 0;
LABEL_153:
          *&v5->num = v18;
          v11 = 42;
          goto LABEL_154;
        }
      }

      ++v30;
    }

    while (v30 < sk_num(v26));
    v34 = *(v16 + 2);
    if (v31)
    {
      v35 = v24;
    }

    else
    {
      v35 = 0;
    }

    v15 = v29;
    v5 = v28;
    v8 = v27;
    v10 = v76;
    if ((v35 & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v34)
    {
      goto LABEL_38;
    }

LABEL_57:
    v36 = 0;
LABEL_58:
    sk_pop_free(v36, x509_policy_node_free);
    CERTIFICATEPOLICIES_free(v26);
LABEL_59:
    v42 = v80;
    if (!v83 && !*(v16 + 2) && !sk_num(*v16))
    {
      v47 = 0;
LABEL_171:
      v11 = 43;
      goto LABEL_154;
    }

    if (!sk_push(v15, v16))
    {
      goto LABEL_148;
    }

    if (!v80)
    {
      v47 = 0;
      goto LABEL_97;
    }

    v77 = v15;
    v43 = v81;
    crit = 0;
    v44 = X509_get_ext_d2i(v18, 747, &crit, 0);
    v45 = v44;
    if (!v44 && crit != -1)
    {
      v46 = 0;
      v45 = 0;
LABEL_93:
      v47 = 0;
      goto LABEL_94;
    }

    if (!v44)
    {
      goto LABEL_118;
    }

    if (!sk_num(v44))
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 532);
LABEL_92:
      v46 = 0;
      goto LABEL_93;
    }

    if (sk_num(v45) >= 1)
    {
      v48 = 0;
      do
      {
        v49 = sk_value(v45, v48);
        if (OBJ_obj2nid(*v49) == 746 || OBJ_obj2nid(v49[1]) == 746)
        {
          goto LABEL_92;
        }
      }

      while (++v48 < sk_num(v45));
    }

    sk_set_cmp_func(v45, compare_issuer_policy);
    sk_sort(v45);
    if (!v43)
    {
      if (!sk_is_sorted(v45))
      {
        goto LABEL_92;
      }

      sk_X509_POLICY_NODE_delete_if (*v16, delete_if_mapped, v45);
      sk_pop_free(v45, POLICY_MAPPING_free);
LABEL_118:
      v56 = sk_new_null();
      v46 = 0;
      v45 = 0;
      v47 = 0;
      if (!v56)
      {
        goto LABEL_94;
      }

      goto LABEL_119;
    }

    v50 = sk_new_null();
    if (!v50)
    {
      goto LABEL_92;
    }

    st = v50;
    if (sk_num(v45) >= 1)
    {
      v51 = 0;
      v52 = 0;
      while (2)
      {
        v53 = sk_value(v45, v51);
        v54 = v53;
        if (v52 && !OBJ_cmp(*v53, v52))
        {
          goto LABEL_88;
        }

        v52 = *v54;
        if (!sk_is_sorted(*v16))
        {
          v47 = 0;
          goto LABEL_144;
        }

        v55 = x509_policy_level_find(v16, *v54);
        if (v55)
        {
LABEL_86:
          *(v55 + 4) = 1;
        }

        else if (*(v16 + 2))
        {
          v55 = x509_policy_node_new(*v54);
          v46 = st;
          if (!v55 || !sk_push(st, v55))
          {
            x509_policy_node_free(v55);
            v47 = 0;
            v42 = v80;
            goto LABEL_94;
          }

          goto LABEL_86;
        }

        v42 = v80;
LABEL_88:
        if (++v51 >= sk_num(v45))
        {
          break;
        }

        continue;
      }
    }

    v46 = st;
    if (!x509_policy_level_add_nodes(v16, st))
    {
      goto LABEL_93;
    }

    v56 = v45;
LABEL_119:
    st = v46;
    if (sk_num(*v16) >= 1)
    {
      v64 = 0;
      do
      {
        v65 = sk_value(*v16, v64);
        if (!*(v65 + 4))
        {
          v66 = v65;
          v47 = POLICY_MAPPING_new();
          if (!v47)
          {
            goto LABEL_143;
          }

          v47->issuerDomainPolicy = OBJ_dup(*v66);
          v67 = OBJ_dup(*v66);
          v47->subjectDomainPolicy = v67;
          if (!v47->issuerDomainPolicy || !v67 || !sk_push(v56, v47))
          {
            POLICY_MAPPING_free(v47);
            v47 = 0;
            goto LABEL_143;
          }
        }

        ++v64;
      }

      while (v64 < sk_num(*v16));
    }

    sk_set_cmp_func(v56, compare_subject_policy);
    sk_sort(v56);
    v68 = x509_policy_level_new();
    v47 = v68;
    if (!v68)
    {
      goto LABEL_143;
    }

    *(v68 + 2) = *(v16 + 2);
    if (sk_num(v56) < 1)
    {
LABEL_140:
      sk_sort(v47->issuerDomainPolicy);
      v42 = v80;
      v46 = st;
      goto LABEL_95;
    }

    v69 = 0;
    v70 = 0;
    while (2)
    {
      v71 = sk_value(v56, v70);
      if (!*(v16 + 2))
      {
        if (!sk_is_sorted(*v16))
        {
          goto LABEL_143;
        }

        if (!x509_policy_level_find(v16, *v71))
        {
LABEL_139:
          if (++v70 >= sk_num(v56))
          {
            goto LABEL_140;
          }

          continue;
        }
      }

      break;
    }

    if (v69 && !OBJ_cmp(*v69, *(v71 + 1)) || (v69 = x509_policy_node_new(*(v71 + 1))) != 0 && sk_push(v47->issuerDomainPolicy, v69))
    {
      if (!sk_push(*(v69 + 1), *v71))
      {
        goto LABEL_143;
      }

      *v71 = 0;
      goto LABEL_139;
    }

    x509_policy_node_free(v69);
LABEL_143:
    v45 = v56;
    v42 = v80;
LABEL_144:
    v46 = st;
LABEL_94:
    x509_policy_level_free(v47);
    v47 = 0;
    v56 = v45;
LABEL_95:
    sk_pop_free(v56, POLICY_MAPPING_free);
    sk_pop_free(v46, x509_policy_node_free);
    v15 = v77;
    if (!v47)
    {
      v16 = 0;
      goto LABEL_153;
    }

    v16 = v47;
    if ((v78 & 0x20) == 0)
    {
LABEL_97:
      if (v83)
      {
        --v83;
      }

      if (v81)
      {
        --v81;
      }

      if (v82)
      {
        --v82;
      }

      v16 = v47;
    }

    crit = 0;
    v57 = X509_get_ext_d2i(v18, 401, &crit, 0);
    v58 = v57;
    if (!v57 && crit != -1)
    {
      goto LABEL_152;
    }

    if (!v57)
    {
      goto LABEL_111;
    }

    v59 = *v57;
    if (!*v58 && !v58[1])
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 741);
LABEL_166:
      POLICY_CONSTRAINTS_free(v58);
      goto LABEL_152;
    }

    if (!apply_skip_certs(v59, &v83))
    {
      goto LABEL_166;
    }

    v60 = apply_skip_certs(v58[1], &v81);
    POLICY_CONSTRAINTS_free(v58);
    if (!v60)
    {
      goto LABEL_152;
    }

LABEL_111:
    v61 = X509_get_ext_d2i(v18, 748, &crit, 0);
    v62 = v61;
    if (!v61 && crit != -1)
    {
      goto LABEL_152;
    }

    v63 = apply_skip_certs(v61, &v82);
    ASN1_INTEGER_free(v62);
    if (!v63)
    {
      goto LABEL_152;
    }

    v17 = v79;
  }

  while (v42 >= 1);
  if (v83)
  {
    v47 = 0;
    goto LABEL_170;
  }

  if (!v75)
  {
    v47 = 0;
LABEL_169:
    if (has_explicit_policy(v15, v47))
    {
LABEL_170:
      v11 = 0;
      goto LABEL_154;
    }

    goto LABEL_171;
  }

  v73 = sk_dup(v75);
  v47 = v73;
  if (v73)
  {
    sk_set_cmp_func(v73, asn1_object_cmp);
    sk_sort(v47);
    goto LABEL_169;
  }

LABEL_149:
  v11 = 17;
LABEL_154:
  x509_policy_level_free(v16);
  sk_free(v47);
  sk_pop_free(v15, x509_policy_level_free);
  return v11;
}

STACK **x509_policy_level_new()
{
  v0 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
  if (!v0 || (v1 = sk_new(x509_policy_node_cmp), (*v0 = v1) == 0))
  {
    x509_policy_level_free(v0);
    return 0;
  }

  return v0;
}

uint64_t has_explicit_policy(const STACK *a1, STACK *st)
{
  result = sk_is_sorted(st);
  if (!result)
  {
    return result;
  }

  v5 = sk_num(a1);
  v6 = v5 - 1;
  v7 = sk_value(a1, v5 - 1);
  v8 = v7;
  if (!*(v7 + 2))
  {
    result = sk_num(*v7);
    if (!result)
    {
      return result;
    }
  }

  v9 = sk_num(st);
  if (sk_num(st) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sk_value(st, v10);
      if (OBJ_obj2nid(v11) == 746)
      {
        return 1;
      }
    }

    while (++v10 < sk_num(st));
  }

  if (v9 < 1 || *(v8 + 2))
  {
    return 1;
  }

  if (sk_num(*v8) >= 1)
  {
    v12 = 0;
    do
    {
      *(sk_value(*v8, v12++) + 5) = 1;
    }

    while (v12 < sk_num(*v8));
  }

  if (v5 < 1)
  {
    return 0;
  }

  do
  {
    v13 = sk_value(a1, v6);
    if (sk_num(*v13) > 0)
    {
      v14 = 0;
      while (1)
      {
        v15 = sk_value(*v13, v14);
        if (*(v15 + 5))
        {
          v16 = v15;
          if (sk_num(*(v15 + 1)))
          {
            if (v6)
            {
              v17 = sk_num(*(v16 + 1));
              v18 = sk_value(a1, v6 - 1);
              if (v17 >= 1)
              {
                v19 = v18;
                v20 = 0;
                do
                {
                  result = sk_is_sorted(*v19);
                  if (!result)
                  {
                    return result;
                  }

                  v21 = sk_value(*(v16 + 1), v20);
                  v22 = x509_policy_level_find(v19, v21);
                  if (v22)
                  {
                    *(v22 + 5) = 1;
                  }
                }

                while (v17 != ++v20);
              }
            }
          }

          else if ((sk_find(st, *v16) & 0x80000000) == 0)
          {
            return 1;
          }
        }

        if (++v14 >= sk_num(*v13))
        {
          v23 = v6 - 1;
          goto LABEL_32;
        }
      }
    }

    v23 = v6 - 1;
LABEL_32:
    result = 0;
    v24 = v6 <= 0;
    v6 = v23;
  }

  while (!v24);
  return result;
}

void x509_policy_level_free(STACK **a1)
{
  if (a1)
  {
    sk_pop_free(*a1, x509_policy_node_free);

    free(a1);
  }
}

uint64_t delete_if_not_in_policies(void *a1, STACK *st)
{
  v4[0] = *a1;
  v4[1] = 0;
  if ((sk_find(st, v4) & 0x80000000) == 0)
  {
    return 0;
  }

  x509_policy_node_free(a1);
  return 1;
}

char *x509_policy_level_find(STACK **a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  *data = a2;
  v3 = sk_find(*a1, data);
  if (v3 < 0)
  {
    return 0;
  }

  else
  {
    return sk_value(*a1, v3);
  }
}

void *x509_policy_node_new(const ASN1_OBJECT *a1)
{
  if (OBJ_obj2nid(a1) == 746)
  {
    v2 = 0;
LABEL_6:
    x509_policy_node_free(v2);
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = OBJ_dup(a1);
  *v2 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sk_new_null();
  v2[1] = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  return v2;
}

void x509_policy_node_free(uint64_t a1)
{
  if (a1)
  {
    ASN1_OBJECT_free(*a1);
    sk_pop_free(*(a1 + 8), ASN1_OBJECT_free);

    free(a1);
  }
}

uint64_t x509_policy_level_add_nodes(STACK **a1, STACK *a2)
{
  if (sk_num(a2) < 1)
  {
LABEL_5:
    sk_sort(*a1);
    return 1;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      v5 = sk_value(a2, v4);
      result = sk_push(*a1, v5);
      if (!result)
      {
        break;
      }

      sk_set(a2, v4++, 0);
      if (v4 >= sk_num(a2))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t delete_if_mapped(void *a1, STACK *st)
{
  v4[0] = *a1;
  v4[1] = 0;
  if (sk_find(st, v4) < 0)
  {
    return 0;
  }

  x509_policy_node_free(a1);
  return 1;
}

uint64_t apply_skip_certs(uint64_t a1, unint64_t *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 5))
  {
    ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 702);
    return 0;
  }

  else
  {
    v4 = 0;
    if (ASN1_INTEGER_get_uint64(&v4, a1))
    {
      if (v4 < *a2)
      {
        *a2 = v4;
      }
    }

    ERR_clear_error();
    return 1;
  }
}

BIO *cms_EncryptedContent_init_bio(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = BIO_f_cipher();
  v5 = BIO_new(v4);
  v6 = v5;
  if (!v5)
  {
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_enc.c", 89);
    return v6;
  }

  ctx = 0;
  BIO_ctrl(v5, 129, 0, &ctx);
  if (!v3)
  {
    v13 = OBJ_obj2nid(*v2);
    v14 = OBJ_nid2sn(v13);
    cipherbyname = EVP_get_cipherbyname(v14);
    if (!cipherbyname)
    {
      v17 = 148;
      v18 = 106;
      goto LABEL_41;
    }

    if (EVP_CipherInit_ex(ctx, cipherbyname, 0, 0, 0, 0) > 0)
    {
      if (EVP_CIPHER_asn1_to_param(ctx, *(v2 + 8)) > 0)
      {
        v12 = 0;
        v16 = EVP_CIPHER_CTX_key_length(ctx);
        goto LABEL_29;
      }

      v17 = 102;
      v18 = 126;
LABEL_41:
      ERR_put_error(46, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_enc.c", v18);
      v16 = 0;
      v19 = 0;
      goto LABEL_45;
    }

LABEL_13:
    v17 = 101;
    v18 = 112;
    goto LABEL_41;
  }

  v7 = (a1 + 32);
  v8 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a1 + 24) = 0;
  }

  if (EVP_CipherInit_ex(ctx, v8, 0, 0, 0, v3 != 0) < 1)
  {
    goto LABEL_13;
  }

  v9 = EVP_CIPHER_CTX_cipher(ctx);
  v10 = EVP_CIPHER_type(v9);
  *v2 = OBJ_nid2obj(v10);
  v11 = EVP_CIPHER_CTX_iv_length(ctx);
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = __buf;
    arc4random_buf(__buf, v11);
  }

  v16 = EVP_CIPHER_CTX_key_length(ctx);
  if (*v7)
  {
    goto LABEL_16;
  }

LABEL_29:
  v19 = malloc_type_malloc(v16, 0xF4259A85uLL);
  if (!v19)
  {
    v24 = 65;
    v25 = 134;
    goto LABEL_44;
  }

  if (EVP_CIPHER_CTX_rand_key(ctx, v19) < 1)
  {
LABEL_45:
    freezero(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = 0;
    freezero(v19, v16);
    BIO_free(v6);
    return 0;
  }

  v7 = (a1 + 32);
  if (*(a1 + 32))
  {
    goto LABEL_17;
  }

  *(a1 + 32) = v19;
  *(a1 + 40) = v16;
  if (v3)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  ERR_clear_error();
LABEL_16:
  v19 = 0;
LABEL_17:
  v20 = 1;
LABEL_18:
  v21 = *(a1 + 40);
  if (v21 != v16 && !EVP_CIPHER_CTX_set_key_length(ctx, v21))
  {
    if (v3 || *(a1 + 48))
    {
      v24 = 118;
      v25 = 160;
      goto LABEL_44;
    }

    freezero(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = v19;
    *(a1 + 40) = v16;
    ERR_clear_error();
    v19 = 0;
  }

  if (EVP_CipherInit_ex(ctx, 0, 0, *v7, v12, v3 != 0) <= 0)
  {
    v24 = 101;
    v25 = 174;
LABEL_44:
    ERR_put_error(46, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_enc.c", v25);
    goto LABEL_45;
  }

  if (v3)
  {
    v22 = ASN1_TYPE_new();
    *(v2 + 8) = v22;
    if (v22)
    {
      if (EVP_CIPHER_param_to_asn1(ctx, v22) > 0)
      {
        v23 = *(v2 + 8);
        if (v23->type == -1)
        {
          ASN1_TYPE_free(v23);
          *(v2 + 8) = 0;
        }

        goto LABEL_26;
      }

      v24 = 102;
      v25 = 184;
    }

    else
    {
      v24 = 65;
      v25 = 180;
    }

    goto LABEL_44;
  }

LABEL_26:
  if (v20)
  {
    freezero(*(a1 + 32), *(a1 + 40));
    *(a1 + 32) = 0;
  }

  freezero(v19, v16);
  return v6;
}

uint64_t cms_EncryptedContent_init(ASN1_OBJECT **a1, ASN1_OBJECT *a2, const void *a3, ASN1_OBJECT *size)
{
  a1[3] = a2;
  if (a3)
  {
    v8 = malloc_type_malloc(size, 0xB1DB5F91uLL);
    a1[4] = v8;
    if (!v8)
    {
      ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_enc.c", 214);
      return 0;
    }

    memcpy(v8, a3, size);
  }

  a1[5] = size;
  if (a2)
  {
    *a1 = OBJ_nid2obj(21);
  }

  return 1;
}

uint64_t CMS_EncryptedData_set1_key(uint64_t a1, ASN1_OBJECT *a2, const void *a3, ASN1_OBJECT *a4)
{
  if (!a3 || !a4)
  {
    v9 = 130;
    v10 = 233;
    goto LABEL_7;
  }

  if (!a2)
  {
    if (OBJ_obj2nid(*a1) == 26)
    {
      goto LABEL_9;
    }

    v9 = 122;
    v10 = 245;
LABEL_7:
    ERR_put_error(46, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_enc.c", v10);
    return 0;
  }

  v8 = ASN1_item_new(&CMS_EncryptedData_it);
  *(a1 + 8) = v8;
  if (!v8)
  {
    v9 = 65;
    v10 = 239;
    goto LABEL_7;
  }

  *a1 = OBJ_nid2obj(26);
  **(a1 + 8) = 0;
LABEL_9:
  v12 = *(*(a1 + 8) + 8);

  return cms_EncryptedContent_init(v12, a2, a3, a4);
}

BIO *cms_EncryptedData_init_bio(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[1];
  if (*(v2 + 24) && v1[2])
  {
    *v1 = 2;
  }

  return cms_EncryptedContent_init_bio(v2);
}

uint64_t i2r_ocsp_crlid(int a1, ASN1_STRING **a2, BIO *bio, int a4)
{
  if (*a2 && (BIO_printf(bio, "%*scrlUrl: ", a4, "") < 1 || !ASN1_STRING_print(bio, *a2) || BIO_write(bio, "\n", 1) < 1) || a2[1] && (BIO_printf(bio, "%*scrlNum: ", a4, "") < 1 || i2a_ASN1_INTEGER(bio, a2[1]) < 1 || BIO_write(bio, "\n", 1) < 1))
  {
    return 0;
  }

  if (!a2[2])
  {
    return 1;
  }

  if (BIO_printf(bio, "%*scrlTime: ", a4, "") < 1)
  {
    return 0;
  }

  if (!ASN1_GENERALIZEDTIME_print(bio, a2[2]))
  {
    return 0;
  }

  v7 = 1;
  if (BIO_write(bio, "\n", 1) <= 0)
  {
    return 0;
  }

  return v7;
}

ASN1_OCTET_STRING *d2i_ocsp_nonce(ASN1_OCTET_STRING **a1, const unsigned __int8 **a2, uint64_t len)
{
  if ((a1 && (v6 = *a1) != 0 || (v6 = ASN1_OCTET_STRING_new()) != 0) && ASN1_OCTET_STRING_set(v6, *a2, len))
  {
    *a2 += len;
    if (a1)
    {
      *a1 = v6;
    }
  }

  else
  {
    if (!a1 || *a1 != v6)
    {
      ASN1_OCTET_STRING_free(v6);
    }

    ERR_put_error(39, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_ocsp.c", 318);
    return 0;
  }

  return v6;
}

uint64_t i2d_ocsp_nonce(const void **a1, void **a2)
{
  result = *a1;
  if (a2)
  {
    memcpy(*a2, a1[1], result);
    result = *a1;
    *a2 = *a2 + result;
  }

  return result;
}

uint64_t i2r_ocsp_serviceloc(int a1, uint64_t a2, BIO *bio, int a4)
{
  if (BIO_printf(bio, "%*sIssuer: ", a4, "") >= 1 && X509_NAME_print_ex(bio, *a2, 0, 0x82031FuLL) >= 1)
  {
    if (sk_num(*(a2 + 8)) < 1)
    {
      return 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = sk_value(*(a2 + 8), v7);
      if (BIO_printf(bio, "\n%*s", 2 * a4, "") < 1 || i2a_ASN1_OBJECT(bio, *v8) < 1 || BIO_puts(bio, " - ") < 1 || GENERAL_NAME_print(bio, *(v8 + 1)) <= 0)
      {
        break;
      }

      if (++v7 >= sk_num(*(a2 + 8)))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t *idea_ofb64_encrypt(unint64_t *result, _BYTE *a2, uint64_t a3, unsigned int *a4, unsigned __int8 *a5, int *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *a6;
  v8 = *a5;
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  v12 = (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
  v13 = a5[4];
  v14 = a5[5];
  v15 = a5[6];
  v16 = a5[7];
  v17 = (v13 << 24) | (v14 << 16) | (v15 << 8) | v16;
  v25 = (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
  v26 = (v13 << 24) | (v14 << 16) | (v15 << 8) | v16;
  LOBYTE(v27) = v8;
  BYTE1(v27) = v9;
  BYTE2(v27) = v10;
  HIBYTE(v27) = v11;
  LOBYTE(v28) = v13;
  BYTE1(v28) = v14;
  BYTE2(v28) = v15;
  HIBYTE(v28) = v16;
  if (a3)
  {
    v20 = a3;
    v22 = result;
    v23 = 0;
    do
    {
      if (!v7)
      {
        result = idea_encrypt(&v25, a4);
        v12 = v25;
        v17 = v26;
        v27 = bswap32(v25);
        v28 = bswap32(v26);
        ++v23;
      }

      v24 = *v22;
      v22 = (v22 + 1);
      *a2++ = *(&v27 + v7) ^ v24;
      v7 = (v7 + 1) & 7;
      --v20;
    }

    while (v20);
    if (v23)
    {
      *a5 = HIBYTE(v12);
      a5[1] = BYTE2(v12);
      a5[2] = BYTE1(v12);
      a5[3] = v12;
      a5[4] = HIBYTE(v17);
      a5[5] = BYTE2(v17);
      a5[6] = BYTE1(v17);
      a5[7] = v17;
    }
  }

  *a6 = v7;
  return result;
}

int ASN1_STRING_set_default_mask_asc(const char *p)
{
  if (!strncmp(p, "MASK:", 5uLL))
  {
    v4 = *(p + 5);
    v3 = p + 5;
    if (v4)
    {
      __endptr = 0;
      v5 = *__error();
      *__error() = 0;
      v2 = strtoul(v3, &__endptr, 0);
      if (*__error() != 34 || v2 != -1)
      {
        *__error() = v5;
        if (!*__endptr)
        {
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  if (!strcmp(p, "nombstr"))
  {
    v2 = -10241;
    goto LABEL_15;
  }

  if (!strcmp(p, "pkix"))
  {
    v2 = -5;
    goto LABEL_15;
  }

  if (!strcmp(p, "utf8only"))
  {
    v2 = 0x2000;
    goto LABEL_15;
  }

  if (strcmp(p, "default"))
  {
    return 0;
  }

  v2 = 0xFFFFFFFFLL;
LABEL_15:
  global_mask = v2;
  return 1;
}

ASN1_STRING *__cdecl ASN1_STRING_set_by_NID(ASN1_STRING **out, const unsigned __int8 *in, int inlen, int inform, int nid)
{
  v13 = 0;
  if (out)
  {
    v8 = out;
  }

  else
  {
    v8 = &v13;
  }

  v9 = ASN1_STRING_TABLE_get(nid);
  if (v9)
  {
    if ((v9->flags & 2) != 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = global_mask;
    }

    v11 = ASN1_mbstring_ncopy(v8, in, inlen, inform, v10 & v9->mask, v9->minsize, v9->maxsize);
  }

  else
  {
    v11 = ASN1_mbstring_copy(v8, in, inlen, inform, global_mask & 0x2806);
  }

  if (v11 < 1)
  {
    return 0;
  }

  else
  {
    return *v8;
  }
}

ASN1_STRING_TABLE *__cdecl ASN1_STRING_TABLE_get(int nid)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = nid;
  if (!stable)
  {
    return OBJ_bsearch_(v3, "\r", 19, 40, table_cmp_BSEARCH_CMP_FN);
  }

  v1 = sk_find(stable, v3);
  if (v1 < 0)
  {
    return OBJ_bsearch_(v3, "\r", 19, 40, table_cmp_BSEARCH_CMP_FN);
  }

  else
  {
    return sk_value(stable, v1);
  }
}

int ASN1_STRING_TABLE_add(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!stable)
  {
    stable = sk_new(sk_table_cmp);
    if (!stable)
    {
      goto LABEL_21;
    }
  }

  v10 = ASN1_STRING_TABLE_get(a1);
  v11 = v10;
  if (!v10 || (v10->flags & 1) == 0)
  {
    v12 = malloc_type_calloc(1uLL, 0x28uLL, 0x1000040B4E0BC51uLL);
    if (v12)
    {
      p_nid = v12;
      if (sk_push(stable, v12))
      {
        if (v11)
        {
          *p_nid = v11->nid;
          *(p_nid + 1) = *&v11->minsize;
          v14 = v11->flags | 1;
          p_nid[3] = v11->mask;
          p_nid[4] = v14;
          if (a2 < 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          *p_nid = a1;
          p_nid[1] = -1;
          p_nid[2] = -1;
          p_nid[4] = 1;
          if (a2 < 0)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_11;
      }

      free(p_nid);
    }

    else
    {
      ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_strnid.c", 281);
    }

LABEL_21:
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_strnid.c", 310);
    return 0;
  }

  p_nid = &v10->nid;
  if ((a2 & 0x8000000000000000) == 0)
  {
LABEL_11:
    p_nid[1] = a2;
  }

LABEL_12:
  if ((a3 & 0x8000000000000000) == 0)
  {
    p_nid[2] = a3;
  }

  if (a4)
  {
    p_nid[3] = a4;
  }

  if (a5)
  {
    p_nid[4] = a5 | 1;
  }

  return 1;
}

void ASN1_STRING_TABLE_cleanup(void)
{
  v0 = stable;
  if (stable)
  {
    stable = 0;
    sk_pop_free(v0, st_free);
  }
}

void st_free(void *a1)
{
  if (*(a1 + 32))
  {
    free(a1);
  }
}

uint64_t ASN1_time_tm_cmp(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = a2[4];
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v8)
  {
    return 1;
  }

  v9 = a1[2];
  v10 = a2[2];
  if (v9 < v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v11 = a1[1];
  v12 = a2[1];
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  if (*a1 >= *a2)
  {
    return *a1 > *a2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

ASN1_TIME *tm_to_gentime(_DWORD *a1, ASN1_TIME *a2)
{
  v7 = 0;
  v2 = a1[5];
  if ((v2 - 8100) <= 0xFFFFD8EF)
  {
    v3 = 184;
    v4 = 89;
LABEL_8:
    ERR_put_error(13, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_time_tm.c", v4);
    free(v7);
    return 0;
  }

  if (asprintf(&v7, "%04u%02u%02u%02u%02u%02uZ", v2 + 1900, a1[4] + 1, a1[3], a1[2], a1[1], *a1) == -1)
  {
    v7 = 0;
    v3 = 65;
    v4 = 97;
    goto LABEL_8;
  }

  if (!a2)
  {
    a2 = ASN1_TIME_new();
    if (!a2)
    {
      v3 = 65;
      v4 = 104;
      goto LABEL_8;
    }
  }

  free(a2->data);
  a2->data = v7;
  *&a2->length = 0x180000000FLL;
  return a2;
}

ASN1_TIME *tm_to_utctime(_DWORD *a1, ASN1_TIME *a2)
{
  v7 = 0;
  v2 = a1[5];
  if (v2 - 150 <= 0xFFFFFF9B)
  {
    v3 = 184;
    v4 = 128;
LABEL_10:
    ERR_put_error(13, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_time_tm.c", v4);
    free(v7);
    return 0;
  }

  if (v2 >= 0x64)
  {
    v2 -= 100;
  }

  if (asprintf(&v7, "%02u%02u%02u%02u%02u%02uZ", v2, a1[4] + 1, a1[3], a1[2], a1[1], *a1) == -1)
  {
    v7 = 0;
    v3 = 65;
    v4 = 136;
    goto LABEL_10;
  }

  if (!a2)
  {
    a2 = ASN1_TIME_new();
    if (!a2)
    {
      v3 = 65;
      v4 = 143;
      goto LABEL_10;
    }
  }

  free(a2->data);
  a2->data = v7;
  *&a2->length = 0x170000000DLL;
  return a2;
}

ASN1_TIME *tm_to_rfc5280_time(_DWORD *a1, ASN1_TIME *a2)
{
  v3 = a1[5];
  if (v3 - 8100 > 0xFFFFE08D)
  {
    if (v3 > 0x95)
    {

      return tm_to_gentime(a1, a2);
    }

    else
    {

      return tm_to_utctime(a1, a2);
    }
  }

  else
  {
    ERR_put_error(13, 4095, 184, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_time_tm.c", 167);
    return 0;
  }
}

uint64_t asn1_time_parse_cbs(void *a1, int a2, uint64_t a3)
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  CBS_dup(a1, v24);
  result = cbs_get_two_digit_value(v24, &v25);
  if (a2)
  {
    if (!result)
    {
      return result;
    }

    v6 = v25;
    result = cbs_get_two_digit_value(v24, &v25);
    if (!result)
    {
      return result;
    }

    v7 = v25 + 100 * v6;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (v25 >= 50)
    {
      v8 = 1900;
    }

    else
    {
      v8 = 2000;
    }

    v7 = v8 + v25;
    if (v8 + v25 > 2049)
    {
      return 0;
    }
  }

  v30 = 0;
  result = cbs_get_two_digit_value(v24, &v30);
  if (!result)
  {
    return result;
  }

  v9 = v30;
  if ((v30 - 13) < 0xFFFFFFF4)
  {
    return 0;
  }

  v29 = 0;
  result = cbs_get_two_digit_value(v24, &v29);
  if (result)
  {
    v10 = v29;
    if (v29 < 1)
    {
      return 0;
    }

    if (((1 << v9) & 0x15AA) != 0)
    {
      if (v29 > 0x1F)
      {
        return 0;
      }
    }

    else if (((1 << v9) & 0xA50) != 0)
    {
      if (v29 >= 0x1F)
      {
        return 0;
      }
    }

    else
    {
      HIDWORD(v19) = -1030792151 * v7 + 85899344;
      LODWORD(v19) = HIDWORD(v19);
      v18 = v19 >> 2;
      v21 = (v7 & 3) == 0 && v18 > 0x28F5C28;
      HIDWORD(v22) = -1030792151 * v7 + 85899344;
      LODWORD(v22) = HIDWORD(v22);
      if ((v22 >> 4) < 0xA3D70B || v21)
      {
        if (v29 >= 0x1E)
        {
          return 0;
        }
      }

      else if (v29 >= 0x1D)
      {
        return 0;
      }
    }

    v28 = 0;
    two_digit_value = cbs_get_two_digit_value(v24, &v28);
    result = 0;
    if (two_digit_value)
    {
      v12 = v28;
      if (v28 <= 23)
      {
        v27 = 0;
        v13 = cbs_get_two_digit_value(v24, &v27);
        result = 0;
        if (v13)
        {
          v14 = v27;
          if (v27 <= 59)
          {
            v26 = 0;
            v15 = cbs_get_two_digit_value(v24, &v26);
            result = 0;
            if (v15)
            {
              v16 = v26;
              if (v26 <= 59)
              {
                u8 = CBS_get_u8(v24, &v23);
                result = 0;
                if (u8)
                {
                  if (v23 == 90)
                  {
                    if (!CBS_len(v24))
                    {
                      if (!a3)
                      {
                        return 1;
                      }

                      *a3 = 0u;
                      *(a3 + 16) = 0u;
                      *(a3 + 48) = 0;
                      *(a3 + 32) = 0u;
                      *(a3 + 16) = v9 - 1;
                      *(a3 + 20) = v7 - 1900;
                      *(a3 + 8) = v12;
                      *(a3 + 12) = v10;
                      result = 1;
                      *a3 = v16;
                      *(a3 + 4) = v14;
                      return result;
                    }

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

  return result;
}

uint64_t cbs_get_two_digit_value(void *a1, _DWORD *a2)
{
  v5 = 0;
  result = CBS_get_u8(a1, &v5 + 1);
  if (result)
  {
    if (HIBYTE(v5) - 48 > 9)
    {
      return 0;
    }

    result = CBS_get_u8(a1, &v5);
    if (!result)
    {
      return result;
    }

    if (v5 - 48 > 9)
    {
      return 0;
    }

    else
    {
      *a2 = v5 + 10 * HIBYTE(v5) - 528;
      return 1;
    }
  }

  return result;
}

uint64_t ASN1_time_parse(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12[1] = 0;
  v12[2] = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v13;
  }

  v12[0] = 0;
  CBS_init(v12, a1, a2);
  v6 = CBS_len(v12);
  v7 = CBS_len(v12);
  v8 = asn1_time_parse_cbs(v12, v7 == 15, v5);
  if (v6 == 13)
  {
    v9 = 23;
  }

  else
  {
    v9 = 0;
  }

  if (v7 == 15)
  {
    v9 = 24;
  }

  if (v9 != a4 && a4 != 0)
  {
    v9 = -1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

ASN1_TIME *ASN1_TIME_set_tm(ASN1_TIME *a1, unsigned int *a2)
{
  v4 = 0;
  if (asn1_time_tm_to_time_t(a2, &v4))
  {
    return ASN1_TIME_adj_internal(a1, v4, 0, 0, 0);
  }

  else
  {
    return 0;
  }
}

ASN1_TIME *ASN1_TIME_adj_internal(ASN1_TIME *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v12 = a2;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (asn1_time_time_t_to_tm(&v12, v10) && (!a3 && !a4 || OPENSSL_gmtime_adj(v10, a3, a4)))
  {
    switch(a5)
    {
      case 0:
        return tm_to_rfc5280_time(v10, a1);
      case 24:
        return tm_to_gentime(v10, a1);
      case 23:
        return tm_to_utctime(v10, a1);
    }
  }

  return 0;
}

ASN1_GENERALIZEDTIME *__cdecl ASN1_TIME_to_generalizedtime(ASN1_TIME *t, ASN1_GENERALIZEDTIME **out)
{
  type = t->type;
  if ((type - 23) > 1)
  {
    return 0;
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (type != ASN1_time_parse(t->data, t->length, v5, type))
  {
    return 0;
  }

  if (!out)
  {
    return tm_to_gentime(v5, 0);
  }

  result = tm_to_gentime(v5, *out);
  if (result)
  {
    *out = result;
  }

  return result;
}

char *ASN1_TIME_set_string_internal(uint64_t a1, char *__s, int a3)
{
  v6 = strlen(__s);
  v7 = ASN1_time_parse(__s, v6, 0, a3);
  if (v7 == -1)
  {
    return 0;
  }

  v8 = v7;
  if (a3)
  {
    if (v7 != a3)
    {
      return 0;
    }
  }

  if (a1)
  {
    result = strdup(__s);
    if (!result)
    {
      return result;
    }

    v10 = result;
    free(*(a1 + 8));
    *(a1 + 8) = v10;
    *a1 = strlen(v10);
    *(a1 + 4) = v8;
  }

  return 1;
}

uint64_t ASN1_TIME_compare(int *a1, int *a2)
{
  v4 = a1[1];
  if ((v4 - 23) > 1)
  {
    return 4294967294;
  }

  v12 = v2;
  v13 = v3;
  if ((a2[1] - 23) > 1)
  {
    return 4294967294;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  if (ASN1_time_parse(*(a1 + 1), *a1, v10, v4) == -1 || ASN1_time_parse(*(a1 + 1), *a2, v8, a2[1]) == -1)
  {
    return 4294967294;
  }

  else
  {
    return ASN1_time_tm_cmp(v10, v8);
  }
}

uint64_t ASN1_TIME_cmp_time_t(int *a1, uint64_t a2)
{
  v2 = a1[1];
  if ((v2 - 23) > 1)
  {
    return 4294967294;
  }

  else
  {
    return ASN1_TIME_cmp_time_t_internal(a1, a2, v2);
  }
}

uint64_t ASN1_TIME_cmp_time_t_internal(int *a1, uint64_t a2, int a3)
{
  v8 = a2;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (ASN1_time_parse(*(a1 + 1), *a1, v6, a3) == -1 || !asn1_time_time_t_to_tm(&v8, v4))
  {
    return 4294967294;
  }

  else
  {
    return ASN1_time_tm_cmp(v6, v4);
  }
}

int ASN1_UTCTIME_set_string(ASN1_UTCTIME *s, const char *str)
{
  if (s && s->type != 23)
  {
    return 0;
  }

  else
  {
    return ASN1_TIME_set_string_internal(s, str, 23);
  }
}

int ASN1_UTCTIME_cmp_time_t(const ASN1_UTCTIME *s, time_t t)
{
  if (s->type == 23)
  {
    return ASN1_TIME_cmp_time_t_internal(&s->length, t, 23);
  }

  else
  {
    return -2;
  }
}

int ASN1_GENERALIZEDTIME_set_string(ASN1_GENERALIZEDTIME *s, const char *str)
{
  if (s && s->type != 24)
  {
    return 0;
  }

  else
  {
    return ASN1_TIME_set_string_internal(s, str, 24);
  }
}

uint64_t ASN1_TIME_normalize(ASN1_TIME *a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  result = ASN1_TIME_to_tm(&a1->length, v3);
  if (result)
  {
    return tm_to_rfc5280_time(v3, a1) != 0;
  }

  return result;
}

void ERR_load_TS_strings()
{
  if (!ERR_func_error_string(TS_str_functs))
  {
    ERR_load_strings(0, &TS_str_functs);

    ERR_load_strings(0, &TS_str_reasons);
  }
}

BOOL asn1_must_be_constructed(unsigned int a1)
{
  if ((a1 & 0xFFFFFFF7) == 0x102)
  {
    v1 = a1 & 0xA;
  }

  else
  {
    v1 = a1;
  }

  v2 = v1 >= 0x1F;
  v3 = v1 & 0x1E;
  return !v2 && v3 == 16;
}

unint64_t asn1_must_be_primitive(unsigned int a1)
{
  if ((a1 & 0xFFFFFFF7) == 0x102)
  {
    v1 = a1 & 0xA;
  }

  else
  {
    v1 = a1;
  }

  if (v1 <= 0x1E)
  {
    return (0x6666uLL >> v1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t asn1_tag2charwidth(unsigned int a1)
{
  if (a1 <= 0x1E)
  {
    return *(&asn1_types + 6 * a1 + 3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t ASN1_tag2bit(int tag)
{
  if (tag <= 0x1E)
  {
    return LODWORD((&asn1_types)[3 * tag + 1]);
  }

  else
  {
    return 0;
  }
}

const char *__cdecl ASN1_tag2str(int tag)
{
  if ((tag & 0xFFFFFFF7) == 0x102)
  {
    v1 = tag & 0xA;
  }

  else
  {
    v1 = tag;
  }

  if (v1 <= 0x1E)
  {
    return (&asn1_types)[3 * v1];
  }

  else
  {
    return "(unknown)";
  }
}

int X509_set_version(X509 *x, uint64_t version)
{
  if (!x)
  {
    return 0;
  }

  cert_info = x->cert_info;
  v5 = x->cert_info->version;
  if (!v5)
  {
    v5 = ASN1_INTEGER_new();
    cert_info = x->cert_info;
    x->cert_info->version = v5;
    if (!v5)
    {
      return 0;
    }
  }

  cert_info->enc.modified = 1;

  return ASN1_INTEGER_set(v5, version);
}

int X509_set_serialNumber(X509 *x, ASN1_INTEGER *serial)
{
  if (x)
  {
    v2 = serial;
    v3 = x;
    if (x->cert_info->serialNumber != serial)
    {
      v2 = ASN1_INTEGER_dup(serial);
      if (v2)
      {
        cert_info = v3->cert_info;
        cert_info->enc.modified = 1;
        ASN1_INTEGER_free(cert_info->serialNumber);
        v3->cert_info->serialNumber = v2;
      }
    }

    LODWORD(x) = v2 != 0;
  }

  return x;
}

int X509_set_issuer_name(X509 *x, X509_NAME *name)
{
  if (!x)
  {
    return 0;
  }

  cert_info = x->cert_info;
  if (!x->cert_info)
  {
    return 0;
  }

  cert_info->enc.modified = 1;
  return X509_NAME_set(&cert_info->issuer, name);
}

int X509_set_subject_name(X509 *x, X509_NAME *name)
{
  if (!x)
  {
    return 0;
  }

  cert_info = x->cert_info;
  if (!x->cert_info)
  {
    return 0;
  }

  cert_info->enc.modified = 1;
  return X509_NAME_set(&cert_info->subject, name);
}

uint64_t X509_get0_notBefore(uint64_t result)
{
  if (result)
  {
    if (*result && (v1 = *(*result + 32)) != 0)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t X509_getm_notBefore(uint64_t result)
{
  if (result)
  {
    if (*result && (v1 = *(*result + 32)) != 0)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int X509_set_notBefore(X509 *x, ASN1_TIME *tm)
{
  if (x)
  {
    v2 = x;
    validity = x->cert_info->validity;
    if (validity)
    {
      v4 = tm;
      if (validity->notBefore != tm)
      {
        v4 = ASN1_STRING_dup(tm);
        if (v4)
        {
          cert_info = v2->cert_info;
          cert_info->enc.modified = 1;
          ASN1_TIME_free(cert_info->validity->notBefore);
          v2->cert_info->validity->notBefore = v4;
        }
      }

      LODWORD(x) = v4 != 0;
    }

    else
    {
      LODWORD(x) = 0;
    }
  }

  return x;
}

uint64_t X509_get0_notAfter(uint64_t result)
{
  if (result)
  {
    if (*result && (v1 = *(*result + 32)) != 0)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t X509_getm_notAfter(uint64_t result)
{
  if (result)
  {
    if (*result && (v1 = *(*result + 32)) != 0)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int X509_set_notAfter(X509 *x, ASN1_TIME *tm)
{
  if (x)
  {
    v2 = x;
    validity = x->cert_info->validity;
    if (validity)
    {
      v4 = tm;
      if (validity->notAfter != tm)
      {
        v4 = ASN1_STRING_dup(tm);
        if (v4)
        {
          cert_info = v2->cert_info;
          cert_info->enc.modified = 1;
          ASN1_TIME_free(cert_info->validity->notAfter);
          v2->cert_info->validity->notAfter = v4;
        }
      }

      LODWORD(x) = v4 != 0;
    }

    else
    {
      LODWORD(x) = 0;
    }
  }

  return x;
}

int X509_set_pubkey(X509 *x, EVP_PKEY *pkey)
{
  if (!x)
  {
    return 0;
  }

  cert_info = x->cert_info;
  if (!x->cert_info)
  {
    return 0;
  }

  cert_info->enc.modified = 1;
  return X509_PUBKEY_set(&cert_info->key, pkey);
}

uint64_t X509_get_signature_type(uint64_t a1)
{
  v1 = OBJ_obj2nid(**(a1 + 8));

  return EVP_PKEY_type(v1);
}

uint64_t X509_get0_uids(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(*result + 56);
  }

  if (a3)
  {
    *a3 = *(*result + 64);
  }

  return result;
}

ENGINE *ENGINE_new(void)
{
  if (!OPENSSL_init_crypto(0))
  {
    return 0;
  }

  v0 = malloc_type_malloc(0xD8uLL, 0x10F0040B12B0AC7uLL);
  v1 = v0;
  if (v0)
  {
    v0[13].sk = 0;
    v0[10] = 0u;
    v0[11] = 0u;
    v0[8] = 0u;
    v0[9] = 0u;
    v0[6] = 0u;
    v0[7] = 0u;
    v0[4] = 0u;
    v0[5] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
    v0[12] = 0u;
    HIDWORD(v0[11].sk) = 1;
    CRYPTO_new_ex_data(9, v0, v0 + 12);
  }

  else
  {
    ERR_put_error(38, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_lib.c", 78);
  }

  return v1;
}

double engine_set_all_null(uint64_t a1)
{
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

uint64_t engine_free_util(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = CRYPTO_add_lock((a1 + 180), -1, 30, 0, 0);
    }

    else
    {
      v3 = *(a1 + 180) - 1;
      *(a1 + 180) = v3;
    }

    if (v3 <= 0)
    {
      engine_pkey_meths_free(a1);
      engine_pkey_asn1_meths_free(a1);
      v4 = *(a1 + 112);
      if (v4)
      {
        v4(a1);
      }

      CRYPTO_free_ex_data(9, a1, (a1 + 192));
      free(a1);
    }
  }

  return 1;
}

char *engine_cleanup_add_first(uint64_t a1)
{
  if (cleanup_stack || (result = sk_new_null(), (cleanup_stack = result) != 0))
  {
    result = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (result)
    {
      v3 = result;
      *result = a1;
      v4 = cleanup_stack;

      return sk_insert(v4, v3, 0);
    }
  }

  return result;
}

char *engine_cleanup_add_last(uint64_t a1)
{
  if (cleanup_stack || (result = sk_new_null(), (cleanup_stack = result) != 0))
  {
    result = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (result)
    {
      v3 = result;
      *result = a1;
      v4 = cleanup_stack;

      return sk_push(v4, v3);
    }
  }

  return result;
}

void ENGINE_cleanup(void)
{
  if (cleanup_stack)
  {
    sk_pop_free(cleanup_stack, engine_cleanup_cb_free);
    cleanup_stack = 0;
  }

  RAND_set_rand_method(0);
}

void engine_cleanup_cb_free(void (**a1)(void))
{
  (*a1)();

  free(a1);
}

int ENGINE_set_id(ENGINE *e, const char *id)
{
  if (id)
  {
    *e = id;
    return 1;
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_lib.c", 248);
    return 0;
  }
}

int ENGINE_set_name(ENGINE *e, const char *name)
{
  if (name)
  {
    *(e + 1) = name;
    return 1;
  }

  else
  {
    ERR_put_error(38, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_lib.c", 259);
    return 0;
  }
}

void ERR_load_BUF_strings(void)
{
  if (!ERR_func_error_string(BUF_str_functs))
  {
    ERR_load_strings(0, &BUF_str_functs);

    ERR_load_strings(0, &BUF_str_reasons);
  }
}

unsigned __int8 *__cdecl PKCS12_pbe_crypt(X509_ALGOR *algor, const char *pass, int passlen, unsigned __int8 *in, int inlen, unsigned __int8 **data, int *datalen, int en_de)
{
  v24 = *MEMORY[0x277D85DE8];
  outl = 0;
  memset(&a, 0, sizeof(a));
  EVP_CIPHER_CTX_init(&a);
  if (!EVP_PBE_CipherInit(algor->algorithm, pass, passlen, algor->parameter, &a, en_de))
  {
    v19 = 115;
    v20 = 85;
LABEL_13:
    ERR_put_error(35, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", v20);
    v17 = 0;
    goto LABEL_14;
  }

  v16 = EVP_CIPHER_CTX_block_size(&a);
  v17 = malloc_type_malloc(v16 + inlen, 0x14088F41uLL);
  if (!v17)
  {
    ERR_put_error(35, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", 90);
    goto LABEL_14;
  }

  if (!EVP_CipherUpdate(&a, v17, &outl, in, inlen))
  {
    free(v17);
    v19 = 6;
    v20 = 97;
    goto LABEL_13;
  }

  v18 = outl;
  if (!EVP_CipherFinal_ex(&a, v17 + outl, &outl))
  {
    free(v17);
    v19 = 116;
    v20 = 105;
    goto LABEL_13;
  }

  if (datalen)
  {
    *datalen = outl + v18;
  }

  if (data)
  {
    *data = v17;
  }

LABEL_14:
  EVP_CIPHER_CTX_cleanup(&a);
  return v17;
}

void *__cdecl PKCS12_item_decrypt_d2i(X509_ALGOR *algor, const ASN1_ITEM *it, const char *pass, int passlen, ASN1_OCTET_STRING *oct, int zbuf)
{
  data = 0;
  datalen = 0;
  if (PKCS12_pbe_crypt(algor, pass, passlen, oct->data, oct->length, &data, &datalen, 0))
  {
    in = data;
    v8 = ASN1_item_d2i(0, &in, datalen, it);
    if (zbuf)
    {
      explicit_bzero(data, datalen);
    }

    if (!v8)
    {
      ERR_put_error(35, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", 144);
    }

    free(data);
  }

  else
  {
    ERR_put_error(35, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", 136);
    return 0;
  }

  return v8;
}

ASN1_OCTET_STRING *__cdecl PKCS12_item_i2d_encrypt(X509_ALGOR *algor, const ASN1_ITEM *it, const char *pass, int passlen, void *obj, int zbuf)
{
  out = 0;
  v12 = ASN1_OCTET_STRING_new();
  if (!v12)
  {
    ERR_put_error(35, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", 164);
    return v12;
  }

  v13 = ASN1_item_i2d(obj, &out, it);
  if (!out)
  {
    v15 = 102;
    v16 = 169;
LABEL_10:
    ERR_put_error(35, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs12/p12_decr.c", v16);
    free(out);
    ASN1_OCTET_STRING_free(v12);
    return 0;
  }

  v14 = v13;
  if (!PKCS12_pbe_crypt(algor, pass, passlen, out, v13, &v12->data, &v12->length, 1))
  {
    v15 = 103;
    v16 = 174;
    goto LABEL_10;
  }

  if (zbuf)
  {
    explicit_bzero(out, v14);
  }

  free(out);
  return v12;
}

int ENGINE_register_DSA(ENGINE *e)
{
  if (*(e + 3))
  {
    return engine_table_register(&dsa_table, engine_unregister_all_DSA, e, dummy_nid_3, 1, 0);
  }

  else
  {
    return 1;
  }
}

void ENGINE_register_all_DSA(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if (*(next + 3))
      {
        engine_table_register(&dsa_table, engine_unregister_all_DSA, next, dummy_nid_3, 1, 0);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }
}

int ENGINE_set_default_DSA(ENGINE *e)
{
  if (*(e + 3))
  {
    return engine_table_register(&dsa_table, engine_unregister_all_DSA, e, dummy_nid_3, 1, 1);
  }

  else
  {
    return 1;
  }
}

EVP_PKEY *__cdecl d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned __int8 **pp, uint64_t length)
{
  v7 = *&type;
  v8 = *pp;
  if (a && (v9 = *a) != 0)
  {
    ENGINE_finish(*&v9->save_parameters);
    *&v9->save_parameters = 0;
  }

  else
  {
    v9 = EVP_PKEY_new();
    if (!v9)
    {
      ERR_put_error(13, 4095, 6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_pkey.c", 85);
      return v9;
    }
  }

  if (!EVP_PKEY_set_type(v9, v7))
  {
    v14 = 163;
    v15 = 97;
LABEL_17:
    ERR_put_error(13, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_pkey.c", v15);
    goto LABEL_18;
  }

  ptr = v9->pkey.ptr;
  v11 = *(ptr + 23);
  if (v11)
  {
    if (v11(v9, pp, length))
    {
      goto LABEL_12;
    }

    ptr = v9->pkey.ptr;
  }

  if (!*(ptr + 8))
  {
    v14 = 13;
    v15 = 113;
    goto LABEL_17;
  }

  *pp = v8;
  v12 = d2i_PKCS8_PRIV_KEY_INFO(0, pp, length);
  if (v12)
  {
    v13 = v12;
    EVP_PKEY_free(v9);
    v9 = EVP_PKCS82PKEY(v13);
    PKCS8_PRIV_KEY_INFO_free(v13);
LABEL_12:
    if (a)
    {
      *a = v9;
    }

    return v9;
  }

LABEL_18:
  if (!a || *a != v9)
  {
    EVP_PKEY_free(v9);
  }

  return 0;
}

int i2d_PrivateKey(EVP_PKEY *a, unsigned __int8 **pp)
{
  ptr = a->pkey.ptr;
  if (!ptr)
  {
LABEL_8:
    ERR_put_error(13, 4095, 167, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_pkey.c", 139);
    return -1;
  }

  v4 = *(ptr + 24);
  if (!v4)
  {
    if (*(ptr + 9))
    {
      v6 = EVP_PKEY2PKCS8(a);
      v7 = i2d_PKCS8_PRIV_KEY_INFO(v6, pp);
      PKCS8_PRIV_KEY_INFO_free(v6);
      return v7;
    }

    goto LABEL_8;
  }

  return v4();
}

EVP_PKEY *__cdecl d2i_AutoPrivateKey(EVP_PKEY **a, const unsigned __int8 **pp, uint64_t length)
{
  v11 = *pp;
  v6 = d2i_ASN1_SEQUENCE_ANY(0, &v11, length);
  if (sk_num(v6) == 6)
  {
    v7 = 116;
LABEL_10:
    sk_pop_free(v6, ASN1_TYPE_free);
    return d2i_PrivateKey(v7, a, pp, length);
  }

  if (sk_num(v6) == 4)
  {
    v7 = 408;
    goto LABEL_10;
  }

  if (sk_num(v6) != 3)
  {
    v7 = 6;
    goto LABEL_10;
  }

  v8 = d2i_PKCS8_PRIV_KEY_INFO(0, pp, length);
  sk_pop_free(v6, ASN1_TYPE_free);
  if (v8)
  {
    v9 = EVP_PKCS82PKEY(v8);
    PKCS8_PRIV_KEY_INFO_free(v8);
    if (a)
    {
      *a = v9;
    }
  }

  else
  {
    ERR_put_error(13, 4095, 167, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_pkey.c", 173);
    return 0;
  }

  return v9;
}

pthread_t CRYPTO_THREADID_current(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  result = pthread_self();
  a1[1] = result;
  return result;
}

uint64_t CRYPTO_THREADID_cmp(unint64_t *a1, unint64_t *a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(a1[1]);
    v3 = bswap64(a2[1]);
    if (v2 == v3)
    {
      return 0;
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

__n128 CRYPTO_THREADID_cpy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void OpenSSLDie(const char *file, int line, const char *assertion)
{
  v4 = *&line;
  v6 = getuid();
  v7 = getprogname();
  OPENSSL_showfatal(v7, v8, v9, v10, v11, v12, v13, v14, v6, v7, file, v4, assertion);
  _exit(1);
}

void OPENSSL_showfatal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = xmmword_23E240D48;
  v9 = 0xFF00000008;
  vsyslog_r(150, &v8, "uid %u cmd %s %s(%d): OpenSSL internal error, assertion failed: %s\n", va);
}

uint64_t CRYPTO_memcmp(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3;
}

int AES_set_encrypt_key(const unsigned __int8 *userKey, const int bits, AES_KEY *key)
{
  v3 = -1;
  if (userKey && key)
  {
    if (bits == 128 || bits == 256 || bits == 192)
    {
      if (bits == 128)
      {
        v4 = 10;
      }

      else if (bits == 192)
      {
        v4 = 12;
      }

      else
      {
        v4 = 14;
      }

      key->rounds = v4;
      v5 = bswap32(*userKey);
      key->rd_key[0] = v5;
      v6 = bswap32(*(userKey + 1));
      key->rd_key[1] = v6;
      v7 = bswap32(*(userKey + 2));
      key->rd_key[2] = v7;
      v8 = bswap32(*(userKey + 3));
      key->rd_key[3] = v8;
      if (bits == 128)
      {
        v9 = 0;
        v10 = &key->rd_key[4];
        do
        {
          v11 = *(v10 - 1);
          v5 ^= (Te2[4 * BYTE2(v11) + 3] << 24) ^ (Te3[4 * BYTE1(v11) + 2] << 16) ^ (Te0[4 * v11 + 1] << 8) ^ Te1[(v11 >> 22) & 0x3FC] ^ rcon[v9];
          v12 = *(v10 - 2);
          v13 = *(v10 - 3) ^ v5;
          *v10 = v5;
          v10[1] = v13;
          v14 = v12 ^ v13;
          v10[2] = v14;
          v10[3] = v14 ^ v11;
          ++v9;
          v10 += 4;
        }

        while (v9 != 10);
      }

      else
      {
        key->rd_key[4] = bswap32(*(userKey + 4));
        v16 = bswap32(*(userKey + 5));
        key->rd_key[5] = v16;
        if (bits == 192)
        {
          v17 = 0;
          for (i = &key->rd_key[11]; ; i += 6)
          {
            v5 ^= (Te2[4 * BYTE2(v16) + 3] << 24) ^ (Te3[4 * BYTE1(v16) + 2] << 16) ^ (Te0[4 * v16 + 1] << 8) ^ Te1[4 * HIBYTE(v16)] ^ rcon[v17];
            v6 ^= v5;
            *(i - 5) = v5;
            *(i - 4) = v6;
            v7 ^= v6;
            v8 ^= v7;
            *(i - 3) = v7;
            *(i - 2) = v8;
            if (v17 == 7)
            {
              break;
            }

            v19 = *(i - 7) ^ v8;
            v16 ^= v19;
            *(i - 1) = v19;
            *i = v16;
            ++v17;
          }
        }

        else
        {
          key->rd_key[6] = bswap32(*(userKey + 6));
          v20 = bswap32(*(userKey + 7));
          key->rd_key[7] = v20;
          v21 = 0;
          for (j = &key->rd_key[8]; ; j += 8)
          {
            v5 ^= (Te2[4 * BYTE2(v20) + 3] << 24) ^ (Te3[4 * BYTE1(v20) + 2] << 16) ^ (Te0[4 * v20 + 1] << 8) ^ Te1[4 * HIBYTE(v20)] ^ rcon[v21];
            v6 ^= v5;
            *j = v5;
            j[1] = v6;
            v7 ^= v6;
            v8 ^= v7;
            j[2] = v7;
            j[3] = v8;
            if (v21 == 6)
            {
              break;
            }

            v23 = *(j - 4) ^ (Te2[4 * HIBYTE(v8) + 3] << 24) ^ (Te3[4 * BYTE2(v8) + 2] << 16) ^ (Te0[4 * BYTE1(v8) + 1] << 8) ^ Te1[4 * v8];
            v24 = *(j - 3) ^ v23;
            j[4] = v23;
            j[5] = v24;
            v25 = *(j - 2) ^ v24;
            v20 ^= v25;
            j[6] = v25;
            j[7] = v20;
            ++v21;
          }
        }
      }

      return 0;
    }

    else
    {
      return -2;
    }
  }

  return v3;
}

int AES_set_decrypt_key(const unsigned __int8 *userKey, const int bits, AES_KEY *key)
{
  result = AES_set_encrypt_key(userKey, bits, key);
  if ((result & 0x80000000) == 0)
  {
    rounds = key->rounds;
    if (rounds >= 1)
    {
      v6 = 0;
      v7 = 4 * rounds;
      v8 = 4 * rounds - 4;
      v9 = &key->rd_key[2];
      v10 = &key->rd_key[v7 + 2];
      do
      {
        v11 = *(v9 - 2);
        *(v9 - 2) = *(v10 - 2);
        *(v10 - 2) = v11;
        v12 = *(v9 - 1);
        *(v9 - 1) = *(v10 - 1);
        *(v10 - 1) = v12;
        v13 = *v9;
        *v9 = *v10;
        *v10 = v13;
        v14 = v9[1];
        v9[1] = v10[1];
        v10[1] = v14;
        v6 += 4;
        v10 -= 4;
        v9 += 4;
        v15 = v6 < v8;
        v8 -= 4;
      }

      while (v15);
      if (key->rounds >= 2)
      {
        v16 = &key->rd_key[7];
        v17 = 1;
        do
        {
          v18 = *(v16 - 3);
          v19 = *(v16 - 2);
          *(v16 - 3) = Td1[Te1[4 * BYTE2(v18)]] ^ Td0[Te1[(v18 >> 22) & 0x3FC]] ^ Td2[Te1[4 * BYTE1(v18)]] ^ Td3[Te1[4 * *(v16 - 3)]];
          *(v16 - 2) = Td1[Te1[4 * BYTE2(v19)]] ^ Td0[Te1[(v19 >> 22) & 0x3FC]] ^ Td2[Te1[4 * BYTE1(v19)]] ^ Td3[Te1[4 * v19]];
          v20 = *(v16 - 1);
          *(v16 - 1) = Td1[Te1[4 * BYTE2(v20)]] ^ Td0[Te1[(v20 >> 22) & 0x3FC]] ^ Td2[Te1[4 * BYTE1(v20)]] ^ Td3[Te1[4 * *(v16 - 1)]];
          v21 = *v16;
          *v16 = Td1[Te1[4 * BYTE2(v21)]] ^ Td0[Te1[(v21 >> 22) & 0x3FC]] ^ Td2[Te1[4 * BYTE1(v21)]] ^ Td3[Te1[4 * *v16]];
          v16 += 4;
          ++v17;
        }

        while (v17 < key->rounds);
      }
    }

    return 0;
  }

  return result;
}

void AES_encrypt(const unsigned __int8 *in, unsigned __int8 *out, const AES_KEY *key)
{
  v3 = bswap32(*in) ^ key->rd_key[0];
  v4 = bswap32(*(in + 1)) ^ key->rd_key[1];
  v5 = bswap32(*(in + 2)) ^ key->rd_key[2];
  v6 = bswap32(*(in + 3)) ^ key->rd_key[3];
  v7 = &key->rd_key[6];
  for (i = (key->rounds >> 1) - 1; ; --i)
  {
    v9 = *&Te1[4 * BYTE2(v4)] ^ *&Te0[4 * HIBYTE(v3)] ^ *&Te2[4 * BYTE1(v5)] ^ *&Te3[4 * v6] ^ *(v7 - 2);
    v10 = *&Te1[4 * BYTE2(v5)] ^ *&Te0[4 * HIBYTE(v4)] ^ *&Te2[4 * BYTE1(v6)] ^ *&Te3[4 * v3] ^ *(v7 - 1);
    v11 = *&Te1[4 * BYTE2(v6)] ^ *&Te0[4 * HIBYTE(v5)] ^ *&Te2[4 * BYTE1(v3)] ^ *&Te3[4 * v4] ^ *v7;
    v12 = *&Te1[4 * BYTE2(v3)] ^ *&Te0[4 * HIBYTE(v6)] ^ *&Te2[4 * BYTE1(v4)] ^ *&Te3[4 * v5] ^ v7[1];
    v13 = HIBYTE(v9);
    v14 = HIBYTE(v10);
    v15 = BYTE1(v12);
    v16 = HIBYTE(v11);
    v17 = BYTE2(v12);
    v18 = BYTE1(v9);
    v19 = HIBYTE(v12);
    v20 = BYTE2(v9);
    if (!i)
    {
      break;
    }

    v21 = *&Te1[4 * BYTE2(v10)] ^ *&Te0[4 * v13] ^ *&Te2[4 * BYTE1(v11)] ^ *&Te3[4 * v12];
    v22 = v7[2];
    v23 = v7[3];
    v24 = v7[4];
    v25 = v7[5];
    v7 += 8;
    v3 = v21 ^ v22;
    v4 = *&Te1[4 * BYTE2(v11)] ^ *&Te0[4 * v14] ^ *&Te2[4 * v15] ^ *&Te3[4 * v9] ^ v23;
    v26 = *&Te0[4 * v19];
    v27 = *&Te1[4 * v20];
    v5 = *&Te1[4 * v17] ^ *&Te0[4 * v16] ^ *&Te2[4 * v18] ^ *&Te3[4 * v10] ^ v24;
    v6 = v27 ^ v26 ^ *&Te2[4 * BYTE1(v10)] ^ *&Te3[4 * v11] ^ v25;
  }

  v28 = &key->rd_key[8 * ((key->rounds >> 1) - 1)];
  *out = bswap32(((Te2[4 * v13 + 3] << 24) | (Te3[4 * BYTE2(v10) + 2] << 16) | (Te0[4 * BYTE1(v11) + 1] << 8) | Te1[4 * v12]) ^ v28[8]);
  *(out + 1) = bswap32(((Te2[4 * v14 + 3] << 24) | (Te3[4 * BYTE2(v11) + 2] << 16) | (Te0[4 * BYTE1(v12) + 1] << 8) | Te1[4 * v9]) ^ v28[9]);
  *(out + 2) = bswap32(((Te2[4 * v16 + 3] << 24) | (Te3[4 * BYTE2(v12) + 2] << 16) | (Te0[4 * BYTE1(v9) + 1] << 8) | Te1[4 * v10]) ^ v28[10]);
  *(out + 3) = bswap32(((Te2[4 * v19 + 3] << 24) | (Te3[4 * BYTE2(v9) + 2] << 16) | (Te0[4 * BYTE1(v10) + 1] << 8) | Te1[4 * v11]) ^ v28[11]);
}

void AES_decrypt(const unsigned __int8 *in, unsigned __int8 *out, const AES_KEY *key)
{
  v3 = bswap32(*in) ^ key->rd_key[0];
  v4 = bswap32(*(in + 1)) ^ key->rd_key[1];
  v5 = bswap32(*(in + 2)) ^ key->rd_key[2];
  v6 = bswap32(*(in + 3)) ^ key->rd_key[3];
  v7 = &key->rd_key[6];
  for (i = (key->rounds >> 1) - 1; ; --i)
  {
    v9 = Td1[BYTE2(v6)] ^ Td0[HIBYTE(v3)] ^ Td2[BYTE1(v5)] ^ Td3[v4] ^ *(v7 - 2);
    v10 = Td1[BYTE2(v3)] ^ Td0[HIBYTE(v4)] ^ Td2[BYTE1(v6)] ^ Td3[v5] ^ *(v7 - 1);
    v11 = Td1[BYTE2(v4)] ^ Td0[HIBYTE(v5)] ^ Td2[BYTE1(v3)] ^ Td3[v6] ^ *v7;
    v12 = Td1[BYTE2(v5)] ^ Td0[HIBYTE(v6)] ^ Td2[BYTE1(v4)] ^ Td3[v3] ^ v7[1];
    if (!i)
    {
      break;
    }

    v3 = Td1[BYTE2(v12)] ^ Td0[BYTE3(v9)] ^ Td2[BYTE1(v11)] ^ Td3[v10] ^ v7[2];
    v4 = Td1[BYTE2(v9)] ^ Td0[BYTE3(v10)] ^ Td2[BYTE1(v12)] ^ Td3[v11] ^ v7[3];
    v13 = v7[4];
    v14 = v7[5];
    v7 += 8;
    v5 = Td1[BYTE2(v10)] ^ Td0[BYTE3(v11)] ^ Td2[BYTE1(v9)] ^ Td3[v12] ^ v13;
    v6 = Td1[BYTE2(v11)] ^ Td0[BYTE3(v12)] ^ Td2[BYTE1(v10)] ^ Td3[v9] ^ v14;
  }

  v15 = &key->rd_key[8 * ((key->rounds >> 1) - 1)];
  *out = bswap32(((Td4[v9 >> 24] << 24) | (Td4[BYTE2(v12)] << 16) | (Td4[BYTE1(v11)] << 8) | Td4[v10]) ^ v15[8]);
  *(out + 1) = bswap32(((Td4[v10 >> 24] << 24) | (Td4[BYTE2(v9)] << 16) | (Td4[BYTE1(v12)] << 8) | Td4[v11]) ^ v15[9]);
  *(out + 2) = bswap32(((Td4[v11 >> 24] << 24) | (Td4[BYTE2(v10)] << 16) | (Td4[BYTE1(v9)] << 8) | Td4[v12]) ^ v15[10]);
  *(out + 3) = bswap32(((Td4[v12 >> 24] << 24) | (Td4[BYTE2(v11)] << 16) | (Td4[BYTE1(v10)] << 8) | Td4[v9]) ^ v15[11]);
}

uint64_t RSA_eay_public_encrypt(int a1, const unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  if (BN_num_bits(*(a4 + 32)) <= 0x4000)
  {
    if (BN_ucmp(*(a4 + 32), *(a4 + 40)) <= 0)
    {
      v10 = 101;
      v11 = 175;
      goto LABEL_19;
    }

    if (BN_num_bits(*(a4 + 32)) >= 3073 && BN_num_bits(*(a4 + 40)) >= 65)
    {
      v10 = 101;
      v11 = 182;
      goto LABEL_19;
    }

    v12 = BN_CTX_new();
    if (!v12)
    {
      v19 = 0;
      v23 = 0;
      v20 = 0xFFFFFFFFLL;
LABEL_25:
      freezero(v19, v23);
      return v20;
    }

    v13 = v12;
    BN_CTX_start(v12);
    v14 = BN_CTX_get(v13);
    v15 = BN_CTX_get(v13);
    v16 = BN_num_bits(*(a4 + 32));
    if (v16 >= -7)
    {
      v17 = v16 + 7;
    }

    else
    {
      v17 = v16 + 14;
    }

    v30 = v17 >> 3;
    v18 = malloc_type_malloc(v30, 0xECCE169uLL);
    v19 = v18;
    if (v14 && v15 && v18)
    {
      v20 = (v17 >> 3);
      switch(a5)
      {
        case 4:
          v21 = v15;
          v22 = RSA_padding_add_PKCS1_OAEP(v18, v20, a2, a1, 0, 0);
          break;
        case 3:
          v21 = v15;
          v22 = RSA_padding_add_none(v18, v20, a2, a1);
          break;
        case 1:
          v21 = v15;
          v22 = RSA_padding_add_PKCS1_type_2(v18, v20, a2, a1);
          break;
        default:
          v24 = 118;
          v25 = 214;
          goto LABEL_22;
      }

      if (v22 < 1 || !BN_bin2bn(v19, v20, v14))
      {
        goto LABEL_23;
      }

      if (BN_ucmp(v14, *(a4 + 32)) < 0)
      {
        if (((*(a4 + 116) & 2) == 0 || BN_MONT_CTX_set_locked((a4 + 120), 9, *(a4 + 32), v13)) && (*(*(a4 + 16) + 48))(v21, v14, *(a4 + 40), *(a4 + 32), v13, *(a4 + 120)))
        {
          v27 = BN_num_bits(v21);
          v28 = v27 + 7;
          if (v27 < -7)
          {
            v28 = v27 + 14;
          }

          v29 = BN_bn2bin(v21, &a3[v20 - (v28 >> 3)]);
          if (v20 > v29)
          {
            bzero(a3, (v20 + ~v29) + 1);
          }

          goto LABEL_24;
        }

LABEL_23:
        v20 = 0xFFFFFFFFLL;
LABEL_24:
        BN_CTX_end(v13);
        BN_CTX_free(v13);
        v23 = v30;
        goto LABEL_25;
      }

      v24 = 132;
      v25 = 225;
    }

    else
    {
      v24 = 65;
      v25 = 197;
    }

LABEL_22:
    ERR_put_error(4, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v25);
    goto LABEL_23;
  }

  v10 = 105;
  v11 = 170;
LABEL_19:
  ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v11);
  return 0xFFFFFFFFLL;
}

uint64_t RSA_eay_public_decrypt(int a1, const unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  if (BN_num_bits(*(a4 + 32)) <= 0x4000)
  {
    if (BN_ucmp(*(a4 + 32), *(a4 + 40)) <= 0)
    {
      v10 = 101;
      v11 = 619;
      goto LABEL_16;
    }

    if (BN_num_bits(*(a4 + 32)) >= 3073 && BN_num_bits(*(a4 + 40)) >= 65)
    {
      v10 = 101;
      v11 = 626;
      goto LABEL_16;
    }

    v12 = BN_CTX_new();
    if (!v12)
    {
      v20 = 0;
      v18 = 0;
      v23 = 0xFFFFFFFFLL;
LABEL_22:
      freezero(v20, v18);
      return v23;
    }

    v13 = v12;
    BN_CTX_start(v12);
    v14 = BN_CTX_get(v13);
    v15 = BN_CTX_get(v13);
    v16 = BN_num_bits(*(a4 + 32));
    v17 = v16 + 7;
    if (v16 < -7)
    {
      v17 = v16 + 14;
    }

    v18 = v17 >> 3;
    v19 = malloc_type_malloc(v18, 0x4ADB26FCuLL);
    v20 = v19;
    if (v14 && v15 && v19)
    {
      if (v18 >= a1)
      {
        if (!BN_bin2bn(a2, a1, v14))
        {
          goto LABEL_20;
        }

        if (BN_ucmp(v14, *(a4 + 32)) < 0)
        {
          if ((*(a4 + 116) & 2) != 0 && !BN_MONT_CTX_set_locked((a4 + 120), 9, *(a4 + 32), v13) || !(*(*(a4 + 16) + 48))(v15, v14, *(a4 + 40), *(a4 + 32), v13, *(a4 + 120)))
          {
            goto LABEL_20;
          }

          if (a5 == 5)
          {
            if ((*v15->d & 0xF) != 0xC && !BN_sub(v15, *(a4 + 32), v15))
            {
              goto LABEL_20;
            }

            v25 = BN_bn2bin(v15, v20);
            v26 = RSA_padding_check_X931(a3, v18, v20, v25, v18);
          }

          else
          {
            v27 = BN_bn2bin(v15, v20);
            if (a5 == 3)
            {
              v26 = RSA_padding_check_none(a3, v18, v20, v27, v18);
            }

            else
            {
              if (a5 != 1)
              {
                v21 = 118;
                v22 = 688;
                goto LABEL_19;
              }

              v26 = RSA_padding_check_PKCS1_type_1(a3, v18, v20, v27, v18);
            }
          }

          v23 = v26;
          if ((v26 & 0x80000000) != 0)
          {
            ERR_put_error(4, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", 692);
          }

          goto LABEL_21;
        }

        v21 = 132;
        v22 = 656;
      }

      else
      {
        v21 = 108;
        v22 = 648;
      }
    }

    else
    {
      v21 = 65;
      v22 = 641;
    }

LABEL_19:
    ERR_put_error(4, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v22);
LABEL_20:
    v23 = 0xFFFFFFFFLL;
LABEL_21:
    BN_CTX_end(v13);
    BN_CTX_free(v13);
    goto LABEL_22;
  }

  v10 = 105;
  v11 = 614;
LABEL_16:
  ERR_put_error(4, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v11);
  return 0xFFFFFFFFLL;
}

uint64_t RSA_eay_private_encrypt(int a1, const unsigned __int8 *a2, unsigned __int8 *a3, RSA *a4, int a5)
{
  v36 = 0;
  v10 = BN_CTX_new();
  if (v10)
  {
    v11 = v10;
    v34 = a3;
    BN_CTX_start(v10);
    v12 = BN_CTX_get(v11);
    v13 = BN_CTX_get(v11);
    v14 = BN_num_bits(a4->n);
    if (v14 >= -7)
    {
      v15 = v14 + 7;
    }

    else
    {
      v15 = v14 + 14;
    }

    v16 = v15 >> 3;
    v17 = malloc_type_malloc(v16, 0x9BFB5824uLL);
    v18 = v17;
    if (v12 && v13 && v17)
    {
      v19 = (v15 >> 3);
      switch(a5)
      {
        case 5:
          v20 = RSA_padding_add_X931(v17, v19, a2, a1);
          break;
        case 3:
          v20 = RSA_padding_add_none(v17, v19, a2, a1);
          break;
        case 1:
          v20 = RSA_padding_add_PKCS1_type_1(v17, v19, a2, a1);
          break;
        default:
          v21 = 118;
          v22 = 392;
          goto LABEL_14;
      }

      if (v20 < 1 || !BN_bin2bn(v18, v19, v12))
      {
        goto LABEL_15;
      }

      if (BN_ucmp(v12, a4->n) < 0)
      {
        flags = a4->flags;
        if ((flags & 2) != 0)
        {
          if (!BN_MONT_CTX_set_locked(&a4->_method_mod_n, 9, a4->n, v11))
          {
            goto LABEL_15;
          }

          flags = a4->flags;
        }

        if ((flags & 0x80) != 0)
        {
          v26 = 0;
          r = 0;
          LOBYTE(v28) = flags;
        }

        else
        {
          blinding = rsa_get_blinding(a4, &v36, v11);
          if (!blinding)
          {
            v21 = 68;
            v22 = 416;
            goto LABEL_14;
          }

          v26 = blinding;
          if (v36)
          {
            v27 = 0;
          }

          else
          {
            v27 = BN_CTX_get(v11);
            if (!v27)
            {
              v21 = 65;
              v22 = 423;
              goto LABEL_14;
            }
          }

          r = v27;
          if (!rsa_blinding_convert(v26, v12, v27, v11))
          {
            goto LABEL_15;
          }

          v28 = a4->flags;
        }

        if ((v28 & 0x20) != 0 || a4->p && a4->q && a4->dmp1 && a4->dmq1 && a4->iqmp)
        {
          if (!(a4->meth->rsa_mod_exp)(v13, v12, a4, v11))
          {
            goto LABEL_15;
          }
        }

        else
        {
          memset(&v35, 0, sizeof(v35));
          BN_init(&v35);
          v29 = BN_with_flags(&v35, a4->d, 4);
          if (!(a4->meth->bn_mod_exp)(v13, v12, &v35, a4->n, v11, a4->_method_mod_n, v29))
          {
            goto LABEL_15;
          }
        }

        if ((flags & 0x80) == 0 && !BN_BLINDING_invert_ex(v13, r, v26, v11))
        {
          goto LABEL_15;
        }

        if (a5 == 5)
        {
          if (!BN_sub(v12, a4->n, v13))
          {
            goto LABEL_15;
          }

          if (BN_cmp(v13, v12) > 0)
          {
            v13 = v12;
          }
        }

        v30 = BN_num_bits(v13);
        v31 = v30 + 7;
        if (v30 < -7)
        {
          v31 = v30 + 14;
        }

        v32 = BN_bn2bin(v13, &v34[v19 - (v31 >> 3)]);
        if (v19 > v32)
        {
          bzero(v34, (v19 + ~v32) + 1);
        }

        goto LABEL_16;
      }

      v21 = 132;
      v22 = 403;
    }

    else
    {
      v21 = 65;
      v22 = 377;
    }

LABEL_14:
    ERR_put_error(4, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v22);
LABEL_15:
    v19 = 0xFFFFFFFFLL;
LABEL_16:
    BN_CTX_end(v11);
    BN_CTX_free(v11);
    goto LABEL_17;
  }

  v18 = 0;
  v16 = 0;
  v19 = 0xFFFFFFFFLL;
LABEL_17:
  freezero(v18, v16);
  return v19;
}

uint64_t RSA_eay_private_decrypt(int a1, const unsigned __int8 *a2, unsigned __int8 *a3, RSA *a4, int a5)
{
  v33 = 0;
  v10 = BN_CTX_new();
  if (v10)
  {
    v11 = v10;
    BN_CTX_start(v10);
    v12 = BN_CTX_get(v11);
    v13 = BN_CTX_get(v11);
    v14 = BN_num_bits(a4->n);
    v15 = v14 + 7;
    if (v14 < -7)
    {
      v15 = v14 + 14;
    }

    v16 = v15 >> 3;
    v17 = malloc_type_malloc(v16, 0x9847AB2AuLL);
    v18 = v17;
    if (v12 && v13 && v17)
    {
      if (v16 >= a1)
      {
        if (!BN_bin2bn(a2, a1, v12))
        {
          goto LABEL_12;
        }

        if (BN_ucmp(v12, a4->n) < 0)
        {
          flags = a4->flags;
          if ((flags & 2) != 0)
          {
            if (!BN_MONT_CTX_set_locked(&a4->_method_mod_n, 9, a4->n, v11))
            {
              goto LABEL_12;
            }

            flags = a4->flags;
          }

          if ((flags & 0x80) != 0)
          {
            v25 = 0;
            r = 0;
            LOBYTE(v27) = flags;
          }

          else
          {
            blinding = rsa_get_blinding(a4, &v33, v11);
            if (!blinding)
            {
              v19 = 68;
              v20 = 535;
              goto LABEL_11;
            }

            v25 = blinding;
            if (v33)
            {
              v26 = 0;
            }

            else
            {
              v26 = BN_CTX_get(v11);
              if (!v26)
              {
                v19 = 65;
                v20 = 542;
                goto LABEL_11;
              }
            }

            r = v26;
            if (!rsa_blinding_convert(v25, v12, v26, v11))
            {
              goto LABEL_12;
            }

            v27 = a4->flags;
          }

          if ((v27 & 0x20) != 0 || a4->p && a4->q && a4->dmp1 && a4->dmq1 && a4->iqmp)
          {
            if (!(a4->meth->rsa_mod_exp)(v13, v12, a4, v11))
            {
              goto LABEL_12;
            }
          }

          else
          {
            memset(&v32, 0, sizeof(v32));
            BN_init(&v32);
            v28 = BN_with_flags(&v32, a4->d, 4);
            if (!(a4->meth->bn_mod_exp)(v13, v12, &v32, a4->n, v11, a4->_method_mod_n, v28))
            {
              goto LABEL_12;
            }
          }

          if ((flags & 0x80) == 0 && !BN_BLINDING_invert_ex(v13, r, v25, v11))
          {
            goto LABEL_12;
          }

          v29 = BN_bn2bin(v13, v18);
          switch(a5)
          {
            case 4:
              v30 = RSA_padding_check_PKCS1_OAEP(a3, v16, v18, v29, v16, 0, 0);
              break;
            case 3:
              v30 = RSA_padding_check_none(a3, v16, v18, v29, v16);
              break;
            case 1:
              v30 = RSA_padding_check_PKCS1_type_2(a3, v16, v18, v29, v16);
              break;
            default:
              v19 = 118;
              v20 = 587;
              goto LABEL_11;
          }

          v21 = v30;
          if ((v30 & 0x80000000) != 0)
          {
            ERR_put_error(4, 4095, 114, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", 591);
          }

          goto LABEL_13;
        }

        v19 = 132;
        v20 = 522;
      }

      else
      {
        v19 = 108;
        v20 = 513;
      }
    }

    else
    {
      v19 = 65;
      v20 = 506;
    }

LABEL_11:
    ERR_put_error(4, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", v20);
LABEL_12:
    v21 = 0xFFFFFFFFLL;
LABEL_13:
    BN_CTX_end(v11);
    BN_CTX_free(v11);
    goto LABEL_14;
  }

  v18 = 0;
  v16 = 0;
  v21 = 0xFFFFFFFFLL;
LABEL_14:
  freezero(v18, v16);
  return v21;
}

uint64_t RSA_eay_mod_exp(BIGNUM *a1, __n128 *a2, uint64_t a3, BN_CTX *ctx)
{
  memset(&v23, 0, sizeof(v23));
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  memset(&v20, 0, sizeof(v20));
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  v9 = BN_CTX_get(ctx);
  v10 = BN_CTX_get(ctx);
  if (!v8 || !v9 || (v11 = v10) == 0)
  {
    ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_eay.c", 715);
    goto LABEL_34;
  }

  memset(&mod, 0, sizeof(mod));
  memset(&v18, 0, sizeof(v18));
  BN_init(&mod);
  BN_init(&v18);
  BN_with_flags(&mod, *(a3 + 56), 4);
  BN_with_flags(&v18, *(a3 + 64), 4);
  v12 = *(a3 + 116);
  if ((v12 & 4) == 0)
  {
    goto LABEL_8;
  }

  if (!BN_MONT_CTX_set_locked((a3 + 128), 9, &mod, ctx) || !BN_MONT_CTX_set_locked((a3 + 136), 9, &v18, ctx))
  {
LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  v12 = *(a3 + 116);
LABEL_8:
  if ((v12 & 2) != 0 && !BN_MONT_CTX_set_locked((a3 + 120), 9, *(a3 + 32), ctx))
  {
    goto LABEL_34;
  }

  BN_init(&v21);
  BN_with_flags(&v21, a2, 4);
  if (!BN_mod_ct(v8, &v21, *(a3 + 64), ctx))
  {
    goto LABEL_34;
  }

  BN_init(&v22);
  v13 = BN_with_flags(&v22, *(a3 + 80), 4);
  if (!(*(*(a3 + 16) + 48))(v9, v8, &v22, *(a3 + 64), ctx, *(a3 + 136), v13))
  {
    goto LABEL_34;
  }

  BN_init(&v21);
  BN_with_flags(&v21, a2, 4);
  if (!BN_mod_ct(v8, &v21, *(a3 + 56), ctx))
  {
    goto LABEL_34;
  }

  BN_init(&v23);
  v14 = BN_with_flags(&v23, *(a3 + 72), 4);
  if (!(*(*(a3 + 16) + 48))(a1, v8, &v23, *(a3 + 56), ctx, *(a3 + 128), v14) || !BN_sub(a1, a1, v9) || BN_is_negative(a1) && !BN_add(a1, a1, *(a3 + 56)))
  {
    goto LABEL_34;
  }

  if (!BN_mul(v8, a1, *(a3 + 88), ctx))
  {
    goto LABEL_34;
  }

  BN_init(&v20);
  BN_with_flags(&v20, v8, 4);
  if (!BN_mod_ct(a1, &v20, *(a3 + 56), ctx) || BN_is_negative(a1) && !BN_add(a1, a1, *(a3 + 56)))
  {
    goto LABEL_34;
  }

  if (!BN_mul(v8, a1, *(a3 + 64), ctx) || !BN_add(a1, v8, v9))
  {
    goto LABEL_34;
  }

  if (*(a3 + 40) && *(a3 + 32))
  {
    if (!(*(*(a3 + 16) + 48))(v11, a1) || !BN_sub(v11, v11, a2) || !BN_mod_ct(v11, v11, *(a3 + 32), ctx) || BN_is_negative(v11) && !BN_add(v11, v11, *(a3 + 32)))
    {
      goto LABEL_34;
    }

    if (!BN_is_zero(v11))
    {
      memset(&mod, 0, sizeof(mod));
      BN_init(&mod);
      v15 = BN_with_flags(&mod, *(a3 + 48), 4);
      if (!(*(*(a3 + 16) + 48))(a1, a2, &mod, *(a3 + 32), ctx, *(a3 + 120), v15))
      {
        goto LABEL_34;
      }
    }
  }

  v16 = 1;
LABEL_35:
  BN_CTX_end(ctx);
  return v16;
}

uint64_t RSA_eay_finish(BN_MONT_CTX **a1)
{
  BN_MONT_CTX_free(a1[15]);
  BN_MONT_CTX_free(a1[16]);
  BN_MONT_CTX_free(a1[17]);
  return 1;
}

BN_BLINDING *rsa_get_blinding(RSA *a1, _DWORD *a2, BN_CTX *a3)
{
  v11[0] = 0;
  v11[1] = 0;
  CRYPTO_lock(5, 9, 0, 0);
  bignum_data = a1->bignum_data;
  blinding = bignum_data;
  if (!bignum_data)
  {
    CRYPTO_lock(6, 9, 0, 0);
    CRYPTO_lock(9, 9, 0, 0);
    blinding = a1->bignum_data;
    if (!blinding)
    {
      blinding = RSA_setup_blinding(a1, a3);
      a1->bignum_data = blinding;
      if (!blinding)
      {
LABEL_9:
        v9 = 10;
        goto LABEL_14;
      }
    }
  }

  CRYPTO_THREADID_current(v11);
  v8 = BN_BLINDING_thread_id(blinding);
  if (CRYPTO_THREADID_cmp(v11, v8))
  {
    *a2 = 0;
    blinding = a1->blinding;
    if (!blinding)
    {
      if (!bignum_data || (CRYPTO_lock(6, 9, 0, 0), CRYPTO_lock(9, 9, 0, 0), (blinding = a1->blinding) == 0))
      {
        blinding = RSA_setup_blinding(a1, a3);
        a1->blinding = blinding;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *a2 = 1;
  }

  if (bignum_data)
  {
    v9 = 6;
  }

  else
  {
    v9 = 10;
  }

LABEL_14:
  CRYPTO_lock(v9, 9, 0, 0);
  return blinding;
}

uint64_t rsa_blinding_convert(BN_BLINDING *b, BIGNUM *n, BIGNUM *a3, BN_CTX *a4)
{
  if (a3)
  {
    CRYPTO_lock(9, 25, 0, 0);
    v8 = BN_BLINDING_convert_ex(n, a3, b, a4);
    CRYPTO_lock(10, 25, 0, 0);
    return v8;
  }

  else
  {

    return BN_BLINDING_convert_ex(n, 0, b, a4);
  }
}

const EVP_MD *do_sigver_init(EVP_MD_CTX *a1, const EVP_MD **a2, const EVP_MD *digestbyname, ENGINE *a4, uint64_t a5, int a6)
{
  result = a1[1].digest;
  if (!result)
  {
    result = EVP_PKEY_CTX_new(a5, a4);
    a1[1].digest = result;
    if (!result)
    {
      return result;
    }
  }

  if (!digestbyname && (*(*&result->type + 4) & 4) == 0)
  {
    if (EVP_PKEY_get_default_digest_nid(a5) <= 0 || (v13 = OBJ_nid2sn(0), (digestbyname = EVP_get_digestbyname(v13)) == 0))
    {
      ERR_put_error(6, 4095, 158, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/m_sigver.c", 92);
      return 0;
    }
  }

  digest = a1[1].digest;
  v15 = *&digest->type;
  if (a6)
  {
    v16 = v15[16];
    if (v16)
    {
      if (v16() >= 1)
      {
        v17 = a1[1].digest;
        v18 = 128;
LABEL_15:
        LODWORD(v17->update) = v18;
        goto LABEL_24;
      }

      return 0;
    }

    if (v15[27])
    {
      v20 = 16;
LABEL_20:
      LODWORD(digest->update) = v20;
      a1[1].engine = update_oneshot_only;
      goto LABEL_24;
    }

    v21 = EVP_PKEY_verify_init(&digest->type);
  }

  else
  {
    v19 = v15[14];
    if (v19)
    {
      if (v19() >= 1)
      {
        v17 = a1[1].digest;
        v18 = 64;
        goto LABEL_15;
      }

      return 0;
    }

    if (v15[26])
    {
      v20 = 8;
      goto LABEL_20;
    }

    v21 = EVP_PKEY_sign_init(&digest->type);
  }

  if (v21 < 1)
  {
    return 0;
  }

LABEL_24:
  if (EVP_PKEY_CTX_ctrl(&a1[1].digest->type, -1, 248) < 1)
  {
    return 0;
  }

  v22 = a1[1].digest;
  if (a2)
  {
    *a2 = v22;
  }

  if ((*(*&v22->type + 4) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return (EVP_DigestInit_ex(a1, digestbyname, a4) != 0);
  }
}

uint64_t EVP_DigestSignFinal(const EVP_MD_CTX *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  digest = a1[1].digest;
  v7 = *&digest->type;
  if ((*(*&digest->type + 4) & 4) == 0)
  {
    v8 = *(v7 + 120);
    if (a2)
    {
      v19 = 0u;
      memset(&ctx, 0, sizeof(ctx));
      s = 0;
      EVP_MD_CTX_init(&ctx);
      if (!EVP_MD_CTX_copy_ex(&ctx, a1))
      {
        return 0;
      }

      if (v8)
      {
        v9 = (*(*v19 + 120))(v19, a2, a3, &ctx);
        EVP_MD_CTX_cleanup(&ctx);
        return v9;
      }

      v15 = EVP_DigestFinal_ex(&ctx, md, &s);
      EVP_MD_CTX_cleanup(&ctx);
      if (!v15 || EVP_PKEY_sign(&a1[1].digest->type, a2, a3, md, s) <= 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        v12 = v8();
      }

      else
      {
        v16 = EVP_MD_size(a1->digest);
        if ((v16 & 0x80000000) != 0)
        {
          return 0;
        }

        v12 = EVP_PKEY_sign(&a1[1].digest->type, 0, a3, 0, v16);
      }

      if (v12 < 1)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2)
  {
    v10 = EVP_PKEY_CTX_dup(digest);
    if (v10)
    {
      v11 = v10;
      v9 = (*&(*v10)[3].type)(v10, a2, a3, a1);
      EVP_PKEY_CTX_free(v11);
      return v9;
    }

    return 0;
  }

  v13 = *(v7 + 120);

  return v13();
}

uint64_t EVP_DigestSign(EVP_MD_CTX *ctx, uint64_t a2, void *a3, void *d, size_t cnt)
{
  v8 = *(*ctx[1].digest + 208);
  if (v8)
  {

    return v8();
  }

  else if (a2 && EVP_DigestUpdate(ctx, d, cnt) < 1)
  {
    return 0;
  }

  else
  {

    return EVP_DigestSignFinal(ctx, a2, a3);
  }
}

uint64_t EVP_DigestVerifyFinal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  memset(&ctx, 0, sizeof(ctx));
  s = 0;
  v6 = *(**(a1 + 32) + 136);
  EVP_MD_CTX_init(&ctx);
  if (!EVP_MD_CTX_copy_ex(&ctx, a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = (*(*v12 + 136))(v12, a2, a3, &ctx);
    EVP_MD_CTX_cleanup(&ctx);
  }

  else
  {
    v8 = EVP_DigestFinal_ex(&ctx, md, &s);
    EVP_MD_CTX_cleanup(&ctx);
    if (v8)
    {
      return EVP_PKEY_verify(*(a1 + 32));
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t EVP_DigestVerify(EVP_MD_CTX *ctx, uint64_t a2, uint64_t a3, void *d, size_t cnt)
{
  v8 = *(*ctx[1].digest + 216);
  if (v8)
  {

    return v8();
  }

  else if (EVP_DigestUpdate(ctx, d, cnt) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {

    return EVP_DigestVerifyFinal(ctx, a2, a3);
  }
}

__n128 CRYPTO_cbc128_encrypt(void *a1, void *a2, unint64_t a3, uint64_t a4, _OWORD *a5, void (*a6)(void *, void *, uint64_t))
{
  v9 = a3;
  v12 = a5;
  if (a3 >= 0x10)
  {
    do
    {
      v13 = a2;
      *a2 = *v12 ^ *a1;
      a2[1] = v12[1] ^ a1[1];
      a6(a2, a2, a4);
      v9 -= 16;
      a1 += 2;
      a2 += 2;
      v12 = v13;
    }

    while (v9 > 0xF);
    v12 = a2 - 2;
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      *(a2 + i) = *(v12 + i) ^ *(a1 + i);
    }

    if ((i - 1) <= 0xE)
    {
      do
      {
        *(a2 + v9) = *(v12 + v9);
        ++v9;
      }

      while (v9 != 16);
    }

    a6(a2, a2, a4);
  }

  else
  {
    a2 = v12;
  }

  result = *a2;
  *a5 = *a2;
  return result;
}

uint64_t *CRYPTO_cbc128_decrypt(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t *, uint64_t *, uint64_t))
{
  v9 = a3;
  v10 = a2;
  v11 = result;
  v25 = 0;
  v26 = 0;
  if (result == a2)
  {
    if (a3 >= 0x10)
    {
      do
      {
        result = a6(v11, &v25, a4);
        v16 = v26;
        v17 = *v11;
        *v10 = *a5 ^ v25;
        *a5 = v17;
        v18 = v11[1];
        v10[1] = a5[1] ^ v16;
        a5[1] = v18;
        v9 -= 16;
        v11 += 2;
        v10 += 2;
      }

      while (v9 > 0xF);
    }
  }

  else
  {
    if (a3 < 0x10)
    {
      v15 = a5;
    }

    else
    {
      v12 = a5;
      do
      {
        v13 = v11;
        result = a6(v11, v10, a4);
        v14 = v10[1];
        *v10 ^= *v12;
        v9 -= 16;
        v10[1] = v14 ^ v12[1];
        v11 += 2;
        v10 += 2;
        v12 = v13;
      }

      while (v9 > 0xF);
      v15 = v11 - 2;
    }

    *a5 = *v15;
  }

  if (v9)
  {
    result = a6(v11, &v25, a4);
    v19 = 0;
    v20 = 16 - 2 * v9;
    do
    {
      v21 = *(v11 + v19);
      *(v10 + v19) = *(a5 + v19) ^ *(&v25 + v19);
      *(a5 + v19++) = v21;
      ++v20;
    }

    while (v9 != v19);
    if ((v19 - 1) <= 0xE)
    {
      v22 = a5 + v9;
      v23 = v11 + v9;
      do
      {
        v24 = *v23++;
        *v22++ = v24;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

const ECDH_METHOD *ECDH_get_default_method(void)
{
  result = default_ECDH_method;
  if (!default_ECDH_method)
  {
    result = ECDH_OpenSSL();
    default_ECDH_method = result;
  }

  return result;
}

int ECDH_set_method(EC_KEY *a1, const ECDH_METHOD *a2)
{
  v3 = ecdh_check(a1);
  if (v3)
  {
    v4 = v3;
    ENGINE_finish(v3[1]);
    v4[1] = 0;
    v4[3] = a2;
    LODWORD(v3) = 1;
  }

  return v3;
}

void *ecdh_check(EC_KEY *a1)
{
  key_method_data = EC_KEY_get_key_method_data(a1, ecdh_data_dup, ecdh_data_free, ecdh_data_free);
  if (!key_method_data)
  {
    key_method_data = ecdh_data_new();
    if (key_method_data)
    {
      EC_KEY_insert_key_method_data(a1, key_method_data, ecdh_data_dup, ecdh_data_free, ecdh_data_free);
      if (v4)
      {
        v5 = v4;
        ecdh_data_free(key_method_data);
        return v5;
      }
    }
  }

  return key_method_data;
}

CRYPTO_EX_DATA *ecdh_data_dup(CRYPTO_EX_DATA *result)
{
  if (result)
  {
    return ecdh_data_new();
  }

  return result;
}

void ecdh_data_free(uint64_t a1)
{
  ENGINE_finish(*(a1 + 8));
  CRYPTO_free_ex_data(13, a1, (a1 + 32));

  freezero(a1, 0x28uLL);
}

CRYPTO_EX_DATA *ecdh_data_new()
{
  v0 = malloc_type_malloc(0x28uLL, 0x10E00407A09E776uLL);
  v1 = v0;
  if (!v0)
  {
    ERR_put_error(43, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_lib.c", 128);
    return v1;
  }

  v0->sk = 0;
  v2 = default_ECDH_method;
  if (!default_ECDH_method)
  {
    v2 = ECDH_OpenSSL();
    default_ECDH_method = v2;
  }

  *&v1[1].dummy = v2;
  *&v1->dummy = 0;
  default_ECDH = ENGINE_get_default_ECDH();
  *&v1->dummy = default_ECDH;
  if (!default_ECDH)
  {
    ECDH = *&v1[1].dummy;
    goto LABEL_9;
  }

  ECDH = ENGINE_get_ECDH(default_ECDH);
  *&v1[1].dummy = ECDH;
  if (ECDH)
  {
LABEL_9:
    LODWORD(v1[1].sk) = *(ECDH + 4);
    CRYPTO_new_ex_data(13, v1, v1 + 2);
    return v1;
  }

  ERR_put_error(43, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ecdh/ech_lib.c", 142);
  ENGINE_finish(*&v1->dummy);
  free(v1);
  return 0;
}

int ECDH_set_ex_data(EC_KEY *d, int idx, void *arg)
{
  v5 = ecdh_check(d);
  if (v5)
  {
    v6 = v5 + 2;

    LODWORD(v5) = CRYPTO_set_ex_data(v6, idx, arg);
  }

  return v5;
}

void *__cdecl ECDH_get_ex_data(EC_KEY *d, int idx)
{
  result = ecdh_check(d);
  if (result)
  {
    v4 = (result + 32);

    return CRYPTO_get_ex_data(v4, idx);
  }

  return result;
}

uint64_t ECDH_size(const EC_KEY *a1)
{
  v1 = EC_KEY_get0_group(a1);
  degree = EC_GROUP_get_degree(v1);
  v3 = degree + 7;
  if (degree < -7)
  {
    v3 = degree + 14;
  }

  return (v3 >> 3);
}

void RC2_ofb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, RC2_KEY *schedule, unsigned __int8 *ivec, int *num)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *num;
  v8 = *ivec;
  v9 = ivec[1];
  v10 = ivec[2];
  v11 = ivec[3];
  v12 = v8 | (v9 << 8) | (v10 << 16) | (v11 << 24);
  v13 = ivec[4];
  v14 = ivec[5];
  v15 = ivec[6];
  v16 = ivec[7];
  v17 = v13 | (v14 << 8) | (v15 << 16) | (v16 << 24);
  v25 = v8 | (v9 << 8) | (v10 << 16) | (v11 << 24);
  v26 = v13 | (v14 << 8) | (v15 << 16) | (v16 << 24);
  LOBYTE(v27) = v8;
  BYTE1(v27) = v9;
  BYTE2(v27) = v10;
  HIBYTE(v27) = v11;
  LOBYTE(v28) = v13;
  BYTE1(v28) = v14;
  BYTE2(v28) = v15;
  HIBYTE(v28) = v16;
  if (length)
  {
    v20 = length;
    v23 = 0;
    do
    {
      if (!v7)
      {
        RC2_encrypt(&v25, schedule);
        v12 = v25;
        v17 = v26;
        v27 = v25;
        v28 = v26;
        ++v23;
      }

      v24 = *in++;
      *out++ = *(&v27 + v7) ^ v24;
      v7 = (v7 + 1) & 7;
      --v20;
    }

    while (v20);
    if (v23)
    {
      *ivec = v12;
      *(ivec + 1) = v17;
    }
  }

  *num = v7;
}

BOOL bnrand(int a1, uint64_t a2, int a3, int a4, int a5)
{
  v5 = a2;
  if (a2)
  {
    if (a3 < 0 || a3 == 1 && a4 >= 1)
    {
      ERR_put_error(3, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_rand.c", 133);
      return 0;
    }

    else if (a3)
    {
      v9 = a3 + 7;
      v10 = (a3 + 7) >> 3;
      v11 = malloc_type_malloc(v10, 0x197D4DC2uLL);
      v12 = v11;
      if (v11)
      {
        v13 = v9 & 7;
        arc4random_buf(v11, v10);
        if (a1 == 2)
        {
          v14 = 0;
          __buf = 0;
          v15 = v12;
          do
          {
            arc4random_buf(&__buf, 1uLL);
            if (v14 && __buf < 0)
            {
              *v15 = *(v15 - 1);
            }

            else if (__buf > 0x29u)
            {
              if (__buf <= 0x53u)
              {
                *v15 = -1;
              }
            }

            else
            {
              *v15 = 0;
            }

            --v14;
            ++v15;
          }

          while (-v10 != v14);
        }

        if (a4 < 1)
        {
          LOBYTE(v16) = *v12;
          if (!a4)
          {
            LOBYTE(v16) = v16 | (1 << v13);
          }
        }

        else if (v13)
        {
          v16 = *v12 | (3 << (v13 - 1));
        }

        else
        {
          v12[1] |= 0x80u;
          LOBYTE(v16) = 1;
        }

        *v12 = v16 & ~(510 << v13);
        if (a5)
        {
          v12[v10 - 1] |= 1u;
        }

        v5 = BN_bin2bn(v12, v10, v5) != 0;
      }

      else
      {
        ERR_put_error(3, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_rand.c", 148);
        v5 = 0;
      }

      freezero(v12, v10);
    }

    else
    {
      BN_zero(a2);
      return 1;
    }
  }

  else
  {
    ERR_put_error(3, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_rand.c", 128);
  }

  return v5;
}

uint64_t bn_rand_range(int a1, BIGNUM *a2, const BIGNUM *a3)
{
  if (a1)
  {
    v3 = BN_pseudo_rand;
  }

  else
  {
    v3 = BN_rand;
  }

  if (a3->neg || BN_is_zero(a3))
  {
    v6 = 115;
    v7 = 226;
LABEL_7:
    ERR_put_error(3, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_rand.c", v7);
    return 0;
  }

  else
  {
    v9 = BN_num_bits(a3);
    if (v9 == 1)
    {
      BN_zero(a2);
      return 1;
    }

    else
    {
      v10 = v9;
      if (BN_is_bit_set(a3, v9 - 2) || BN_is_bit_set(a3, v10 - 3))
      {
        v11 = -100;
        do
        {
          result = (v3)(a2, v10, 0xFFFFFFFFLL, 0);
          if (!result)
          {
            break;
          }

          v12 = __CFADD__(v11++, 1);
          if (v12)
          {
            v6 = 113;
            v7 = 268;
            goto LABEL_7;
          }

          v13 = BN_cmp(a2, a3);
          result = 1;
        }

        while ((v13 & 0x80000000) == 0);
      }

      else
      {
        v14 = -100;
        do
        {
          result = (v3)(a2, (v10 + 1), 0xFFFFFFFFLL, 0);
          if (!result)
          {
            break;
          }

          if ((BN_cmp(a2, a3) & 0x80000000) == 0)
          {
            result = BN_sub(a2, a2, a3);
            if (!result)
            {
              break;
            }

            if ((BN_cmp(a2, a3) & 0x80000000) == 0)
            {
              result = BN_sub(a2, a2, a3);
              if (!result)
              {
                break;
              }
            }
          }

          v12 = __CFADD__(v14++, 1);
          if (v12)
          {
            v6 = 113;
            v7 = 256;
            goto LABEL_7;
          }

          v15 = BN_cmp(a2, a3);
          result = 1;
        }

        while ((v15 & 0x80000000) == 0);
      }
    }
  }

  return result;
}

BOOL bn_rand_interval(BIGNUM *a1, BIGNUM *a, BIGNUM *b)
{
  if (BN_cmp(a, b) < 0)
  {
    v9 = BN_new();
    v6 = v9;
    if (v9 && BN_sub(v9, b, a) && bn_rand_range(0, a1, v6))
    {
      v7 = BN_add(a1, a1, a) != 0;
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  BN_free(v6);
  return v7;
}

int BN_gcd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  v8 = BN_CTX_get(ctx);
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = BN_CTX_get(ctx);
  if (!v9 || (v10 = v9, !bn_copy(v8, a)) || !bn_copy(v10, b))
  {
LABEL_39:
    LODWORD(v8) = 0;
    goto LABEL_40;
  }

  v8->neg = 0;
  v10->neg = 0;
  v11 = BN_cmp(v8, v10);
  if (v11 >= 0)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v11 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (BN_is_zero(v13))
  {
    v14 = v12;
LABEL_13:
    LODWORD(v8) = bn_copy(r, v14);
    goto LABEL_40;
  }

  v15 = 0;
  do
  {
    while (1)
    {
      if (BN_is_odd(v12) && BN_is_odd(v13))
      {
        if (!BN_sub(v12, v12, v13))
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (BN_is_odd(v12) && !BN_is_odd(v13))
      {
        v16 = v13;
        v17 = v13;
        goto LABEL_28;
      }

      if (BN_is_odd(v12) || !BN_is_odd(v13))
      {
        break;
      }

LABEL_26:
      v16 = v12;
      v17 = v12;
LABEL_28:
      if (!BN_rshift1(v16, v17))
      {
        goto LABEL_39;
      }

      v18 = BN_cmp(v12, v13);
      if (v18 >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      if (v18 < 0)
      {
        v13 = v12;
      }

      v12 = v14;
      if (BN_is_zero(v13))
      {
        goto LABEL_35;
      }
    }

    if (!BN_rshift1(v12, v12) || !BN_rshift1(v13, v13))
    {
      goto LABEL_39;
    }

    ++v15;
  }

  while (!BN_is_zero(v13));
  v14 = v12;
LABEL_35:
  if (!v15)
  {
    goto LABEL_13;
  }

  v19 = BN_lshift(v14, v14, v15);
  LODWORD(v8) = 0;
  if (v19)
  {
    goto LABEL_13;
  }

LABEL_40:
  BN_CTX_end(ctx);
  return v8;
}

BOOL BN_gcd_ct(unint64_t a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *a4)
{
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  if (a1)
  {
    BN_init(&v25);
    BN_init(&v24);
    BN_CTX_start(a4);
    v8 = BN_CTX_get(a4);
    if (!v8)
    {
      goto LABEL_23;
    }

    v9 = v8;
    v10 = BN_CTX_get(a4);
    if (!v10)
    {
      goto LABEL_23;
    }

    v11 = v10;
    v12 = BN_CTX_get(a4);
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v12;
    v14 = BN_CTX_get(a4);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    v16 = BN_CTX_get(a4);
    if (!v16)
    {
      goto LABEL_23;
    }

    v17 = v16;
    v18 = BN_CTX_get(a4);
    if (!v18)
    {
      goto LABEL_23;
    }

    v19 = v18;
    if (!BN_CTX_get(a4))
    {
      goto LABEL_23;
    }

    if (!BN_one(v13))
    {
      goto LABEL_23;
    }

    BN_zero(v19);
    if (!bn_copy(v11, a2) || !bn_copy(v9, a3))
    {
      goto LABEL_23;
    }

    v9->neg = 0;
    if (v11->neg || (BN_ucmp(v11, v9) & 0x80000000) == 0)
    {
      BN_with_flags(&v24, v11, 4);
      if (!BN_nnmod(v11, &v24, v9, a4))
      {
        goto LABEL_23;
      }
    }

    while (1)
    {
      v20 = v19;
      v19 = v13;
      v13 = v9;
      if (BN_is_zero(v11))
      {
        break;
      }

      BN_with_flags(&v25, v9, 4);
      if (!BN_div_ct(v15, v17, &v25, v11, a4) || !BN_mul(v9, v15, v19, a4))
      {
        goto LABEL_20;
      }

      v21 = BN_add(v9, v9, v20);
      v22 = 0;
      v9 = v11;
      v11 = v17;
      v17 = v20;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (bn_copy(a1, v9))
    {
      v22 = a1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
LABEL_20:
    v22 = 0;
  }

LABEL_21:
  if (!(a1 | v22))
  {
    BN_free(0);
LABEL_23:
    v22 = 0;
  }

  BN_CTX_end(a4);
  return v22 != 0;
}

BIGNUM *__cdecl BN_mod_inverse(BIGNUM *ret, const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
{
  if (BN_get_flags(a, 4u))
  {
    v8 = 1;
  }

  else
  {
    v8 = BN_get_flags(n, 4u) != 0;
  }

  return BN_mod_inverse_internal(ret, a, n, ctx, v8);
}

BIGNUM *BN_mod_inverse_internal(BIGNUM *a1, const BIGNUM *a2, const BIGNUM *a3, BN_CTX *ctx, int a5)
{
  if (a5)
  {
    memset(&v63, 0, sizeof(v63));
    memset(&m, 0, sizeof(m));
    BN_init(&v63);
    BN_init(&m);
    BN_CTX_start(ctx);
    v9 = BN_CTX_get(ctx);
    if (v9)
    {
      v10 = v9;
      v11 = BN_CTX_get(ctx);
      if (v11)
      {
        v12 = v11;
        v13 = BN_CTX_get(ctx);
        if (v13)
        {
          v14 = v13;
          v15 = BN_CTX_get(ctx);
          if (v15)
          {
            v16 = v15;
            v17 = BN_CTX_get(ctx);
            if (v17)
            {
              v18 = v17;
              v19 = BN_CTX_get(ctx);
              if (!v19)
              {
                goto LABEL_65;
              }

              if (BN_CTX_get(ctx))
              {
                b = v19;
                v19 = a1;
                if (!a1)
                {
                  v19 = BN_new();
                  if (!v19)
                  {
                    goto LABEL_66;
                  }
                }

                if (!BN_one(v14))
                {
                  goto LABEL_65;
                }

                BN_zero(b);
                if (!bn_copy(v12, a2) || !bn_copy(v10, a3))
                {
                  goto LABEL_65;
                }

                v10->neg = 0;
                if (v12->neg || (BN_ucmp(v12, v10) & 0x80000000) == 0)
                {
                  BN_with_flags(&m, v12, 4);
                  if (!BN_nnmod(v12, &m, v10, ctx))
                  {
                    goto LABEL_65;
                  }
                }

                if (!BN_is_zero(v12))
                {
                  v39 = -1;
                  v40 = 1;
                  while (1)
                  {
                    v55 = v40;
                    v57 = v39;
                    v41 = v12;
                    v12 = v18;
                    BN_with_flags(&v63, v10, 4);
                    r = v41;
                    if (!BN_div_ct(v16, v18, &v63, v41, ctx))
                    {
                      goto LABEL_65;
                    }

                    if (!BN_mul(v10, v16, v14, ctx))
                    {
                      goto LABEL_65;
                    }

                    v18 = b;
                    if (!BN_add(v10, v10, b))
                    {
                      goto LABEL_65;
                    }

                    is_zero = BN_is_zero(v12);
                    v40 = v57;
                    v39 = v55;
                    b = v14;
                    v43 = v14;
                    v14 = v10;
                    v10 = v41;
                    if (is_zero)
                    {
                      v20 = v43;
                      if ((v55 & 0x80000000) == 0)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }
                  }
                }

                v20 = b;
                r = v10;
LABEL_19:
                if (!BN_sub(v20, a3, v20))
                {
                  goto LABEL_65;
                }

LABEL_20:
                if (!BN_is_one(r))
                {
                  v21 = 510;
LABEL_120:
                  ERR_put_error(3, 4095, 108, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_gcd.c", v21);
                  goto LABEL_65;
                }

                goto LABEL_73;
              }
            }
          }
        }
      }
    }

LABEL_64:
    v19 = 0;
    goto LABEL_65;
  }

  BN_CTX_start(ctx);
  v22 = BN_CTX_get(ctx);
  if (!v22)
  {
    goto LABEL_64;
  }

  v23 = v22;
  v24 = BN_CTX_get(ctx);
  if (!v24)
  {
    goto LABEL_64;
  }

  v25 = v24;
  v26 = BN_CTX_get(ctx);
  if (!v26)
  {
    goto LABEL_64;
  }

  v27 = v26;
  v28 = BN_CTX_get(ctx);
  if (!v28)
  {
    goto LABEL_64;
  }

  v29 = v28;
  v30 = BN_CTX_get(ctx);
  if (!v30)
  {
    goto LABEL_64;
  }

  v31 = v30;
  v19 = BN_CTX_get(ctx);
  if (!v19)
  {
    goto LABEL_65;
  }

  v32 = BN_CTX_get(ctx);
  if (!v32)
  {
    goto LABEL_64;
  }

  ra = v32;
  ba = v19;
  v19 = a1;
  if (!a1)
  {
    v19 = BN_new();
    if (!v19)
    {
      goto LABEL_66;
    }
  }

  if (!BN_one(v27))
  {
    goto LABEL_65;
  }

  BN_zero(ba);
  if (!bn_copy(v25, a2) || !bn_copy(v23, a3))
  {
    goto LABEL_65;
  }

  v23->neg = 0;
  if ((v25->neg || (BN_ucmp(v25, v23) & 0x80000000) == 0) && !BN_nnmod(v25, v25, v23, ctx))
  {
    goto LABEL_65;
  }

  if (BN_is_odd(a3) && BN_num_bits(a3) <= 2048)
  {
    if (!BN_is_zero(v25))
    {
      v33 = 0;
      while (1)
      {
        while (!BN_is_bit_set(v25, v33))
        {
          if (!BN_is_odd(v27) || BN_uadd(v27, v27, a3))
          {
            ++v33;
            if (BN_rshift1(v27, v27))
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        if (v33 && !BN_rshift(v25, v25, v33))
        {
          goto LABEL_65;
        }

        v34 = 0;
        while (!BN_is_bit_set(v23, v34))
        {
          if (!BN_is_odd(ba) || BN_uadd(ba, ba, a3))
          {
            ++v34;
            if (BN_rshift1(ba, ba))
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        if (v34 && !BN_rshift(v23, v23, v34))
        {
          goto LABEL_65;
        }

        if (BN_ucmp(v25, v23) < 0)
        {
          if (!BN_uadd(ba, ba, v27))
          {
            goto LABEL_65;
          }

          v35 = v23;
          v36 = v23;
          v37 = v25;
        }

        else
        {
          if (!BN_uadd(v27, v27, ba))
          {
            goto LABEL_65;
          }

          v35 = v25;
          v36 = v25;
          v37 = v23;
        }

        if (!BN_usub(v35, v36, v37))
        {
          goto LABEL_65;
        }

        v33 = 0;
        if (BN_is_zero(v25))
        {
          break;
        }
      }
    }

LABEL_70:
    v20 = ba;
    goto LABEL_71;
  }

  if (BN_is_zero(v25))
  {
    goto LABEL_70;
  }

  v56 = -1;
  v44 = 1;
  do
  {
    v45 = v25;
    v25 = v31;
    v54 = v44;
    v46 = BN_num_bits(v23);
    if (v46 == BN_num_bits(v45))
    {
LABEL_86:
      if (!BN_one(v29))
      {
        goto LABEL_65;
      }

      v47 = v25;
      v48 = v23;
LABEL_88:
      if (!BN_sub(v47, v48, v45))
      {
        goto LABEL_65;
      }

      goto LABEL_99;
    }

    v49 = BN_num_bits(v23);
    if (v49 == BN_num_bits(v45) + 1)
    {
      if (!BN_lshift1(ra, v45))
      {
        goto LABEL_65;
      }

      if (BN_ucmp(v23, ra) < 0)
      {
        goto LABEL_86;
      }

      if (!BN_sub(v25, v23, ra) || !BN_add(v29, ra, v45))
      {
        goto LABEL_65;
      }

      if ((BN_ucmp(v23, v29) & 0x80000000) == 0)
      {
        if (!BN_set_word(v29, 3uLL))
        {
          goto LABEL_65;
        }

        v47 = v25;
        v48 = v25;
        goto LABEL_88;
      }

      if (!BN_set_word(v29, 2uLL))
      {
        goto LABEL_65;
      }
    }

    else if (!BN_div_nonct(v29, v25, v23, v45, ctx))
    {
      goto LABEL_65;
    }

LABEL_99:
    if (BN_is_one(v29))
    {
      v50 = v23;
      v51 = v27;
    }

    else
    {
      if (BN_is_word(v29, 2))
      {
        if (!BN_lshift1(v23, v27))
        {
          goto LABEL_65;
        }
      }

      else if (BN_is_word(v29, 4))
      {
        if (!BN_lshift(v23, v27, 2))
        {
          goto LABEL_65;
        }
      }

      else if (v29->top == 1)
      {
        if (!bn_copy(v23, v27) || !BN_mul_word(v23, *v29->d))
        {
          goto LABEL_65;
        }
      }

      else if (!BN_mul(v23, v29, v27, ctx))
      {
        goto LABEL_65;
      }

      v50 = v23;
      v51 = v23;
    }

    v31 = ba;
    if (!BN_add(v50, v51, ba))
    {
      goto LABEL_65;
    }

    v52 = BN_is_zero(v25);
    v44 = v56;
    v56 = v54;
    ba = v27;
    v53 = v27;
    v27 = v23;
    v23 = v45;
  }

  while (!v52);
  v23 = v45;
  v20 = v53;
  if ((v54 & 0x80000000) == 0)
  {
LABEL_72:
    if (!BN_is_one(v23))
    {
      v21 = 798;
      goto LABEL_120;
    }

LABEL_73:
    if (!v20->neg && BN_ucmp(v20, a3) < 0)
    {
      if (!bn_copy(v19, v20))
      {
        goto LABEL_65;
      }
    }

    else if (!BN_nnmod(v19, v20, a3, ctx))
    {
      goto LABEL_65;
    }

    goto LABEL_68;
  }

LABEL_71:
  if (BN_sub(v20, a3, v20))
  {
    goto LABEL_72;
  }

LABEL_65:
  if (!a1)
  {
LABEL_66:
    BN_free(v19);
  }

  v19 = 0;
LABEL_68:
  BN_CTX_end(ctx);
  return v19;
}

unint64_t bn_add_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (num < 0)
  {
    bn_add_words_cold_1();
  }

  if (!num)
  {
    return 0;
  }

  if (num < 4)
  {
    v4 = 0;
    do
    {
LABEL_9:
      v34 = *ap++;
      v33 = v34;
      v35 = *bp++;
      v36 = v35 | v33;
      v37 = v35 & v33;
      v38 = v35 + v33;
      v39 = v36 & ~v38 | v37;
      v40 = v38 | v4;
      v41 = v38 & v4;
      v42 = v38 + v4;
      v4 = ((v40 & ~v42 | v41) >> 63) + (v39 >> 63);
      *rp++ = v42;
      --num;
    }

    while (num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *bp + *ap;
    v6 = (*bp | *ap) & ~v5 | *bp & *ap;
    v7 = v5 | v4;
    v8 = v5 & v4;
    v9 = v5 + v4;
    v10 = v7 & ~v9 | v8;
    *rp = v9;
    v11 = ap[1];
    v12 = bp[1];
    v13 = v12 | v11;
    v14 = v12 & v11;
    v15 = v12 + v11;
    v16 = v13 & ~v15 | v14;
    v17 = v15 + (v6 >> 63) + (v10 >> 63);
    v18 = v15 & ~v17;
    rp[1] = v17;
    v19 = ap[2];
    v20 = bp[2];
    v21 = v20 | v19;
    v22 = v20 & v19;
    v23 = v20 + v19;
    v24 = v21 & ~v23 | v22;
    v25 = v23 + (v16 >> 63) + (v18 >> 63);
    v26 = v23 & ~v25;
    rp[2] = v25;
    v27 = ap[3];
    v28 = bp[3];
    v29 = v28 | v27;
    v30 = v28 & v27;
    v31 = v28 + v27;
    v32 = v31 + (v24 >> 63) + (v26 >> 63);
    v4 = ((v31 & ~v32) >> 63) + ((v29 & ~v31 | v30) >> 63);
    rp[3] = v32;
    ap += 4;
    bp += 4;
    rp += 4;
    num -= 4;
  }

  while (num >= 4);
  if (num)
  {
    goto LABEL_9;
  }

  return v4;
}

unint64_t bn_add(unint64_t *a1, int a2, unint64_t *ap, int a4, unint64_t *bp, int a6)
{
  v11 = a4 - a6;
  if (a4 >= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a4;
  }

  result = bn_add_words(a1, ap, bp, v12);
  v14 = &a1[v12];
  if (v11 < 0)
  {
    v19 = &bp[v12];
    v20 = a6 - a4;
    do
    {
      v21 = *v19++;
      v22 = v21 + result;
      result = ((v21 | result) & ~(v21 + result) | v21 & result) >> 63;
      *v14++ = v22;
      --v20;
    }

    while (v20);
  }

  else if (v11)
  {
    v15 = &ap[v12];
    v16 = v11 + 1;
    do
    {
      v17 = *v15++;
      v18 = v17 + result;
      result = ((v17 | result) & ~(v17 + result) | v17 & result) >> 63;
      *v14++ = v18;
      --v16;
    }

    while (v16 > 1);
  }

  return result;
}

unint64_t bn_sub_words(unint64_t *rp, const unint64_t *ap, const unint64_t *bp, int num)
{
  if (num < 0)
  {
    bn_sub_words_cold_1();
  }

  if (!num)
  {
    return 0;
  }

  if (num < 4)
  {
    v4 = 0;
    do
    {
LABEL_9:
      v25 = *ap++;
      v24 = v25;
      v26 = *bp++;
      v27 = v24 - v26 - v4;
      v4 = (((v27 | v4 & ~(v24 - v26)) & (v4 | ~(v24 - v26))) >> 63) + ((((v24 - v26) | v26 & ~v24) & (v26 | ~v24)) >> 63);
      *rp++ = v27;
      --num;
    }

    while (num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = *ap - *bp;
    v6 = (v5 | *bp & ~*ap) & (*bp | ~*ap);
    v7 = v5 - v4;
    v8 = ((v5 - v4) | v4 & ~v5) & (v4 | ~v5);
    *rp = v7;
    v9 = ap[1];
    v10 = bp[1];
    v11 = v9 - v10;
    v12 = ((v9 - v10) | v10 & ~v9) & (v10 | ~v9);
    v13 = v11 + (v6 >> 63) + (v8 >> 63);
    v14 = v13 & ~v11;
    rp[1] = v13;
    v15 = ap[2];
    v16 = bp[2];
    v17 = v15 - v16;
    v18 = ((v15 - v16) | v16 & ~v15) & (v16 | ~v15);
    v19 = v17 + (v12 >> 63) + (v14 >> 63);
    v20 = v19 & ~v17;
    rp[2] = v19;
    v21 = ap[3];
    v22 = bp[3];
    v23 = v21 - v22 + (v18 >> 63) + (v20 >> 63);
    v4 = ((v23 & ~(v21 - v22)) >> 63) + ((((v21 - v22) | v22 & ~v21) & (v22 | ~v21)) >> 63);
    rp[3] = v23;
    ap += 4;
    bp += 4;
    rp += 4;
    num -= 4;
  }

  while (num >= 4);
  if (num)
  {
    goto LABEL_9;
  }

  return v4;
}

int64_t bn_sub(unint64_t *a1, int a2, unint64_t *ap, int a4, unint64_t *bp, int a6)
{
  v11 = a4 - a6;
  if (a4 >= a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = a4;
  }

  result = bn_sub_words(a1, ap, bp, v12);
  v14 = &a1[v12];
  if (v11 < 0)
  {
    v19 = &bp[v12];
    v20 = a6 - a4;
    do
    {
      v21 = *v19++;
      v22 = -result - v21;
      result = (((v21 - 1) & result | v22) & ((v21 - 1) | result)) >> 63;
      *v14++ = v22;
      --v20;
    }

    while (v20);
  }

  else if (v11)
  {
    v15 = &ap[v12];
    v16 = v11 + 1;
    do
    {
      v17 = *v15++;
      v18 = v17 - result;
      result = (((v17 - result) | result & ~v17) & (result | ~v17)) >> 63;
      *v14++ = v18;
      --v16;
    }

    while (v16 > 1);
  }

  return result;
}

int BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  if (a->top <= b->top)
  {
    top = b->top;
  }

  else
  {
    top = a->top;
  }

  if (top == 0x7FFFFFFF)
  {
    return 0;
  }

  result = bn_wexpand(r, (top + 1));
  if (result)
  {
    v9 = bn_add(r->d, v8, a->d, a->top, b->d, b->top);
    r->d[top] = v9;
    r->top = (v9 & 1) + top;
    r->neg = 0;
    return 1;
  }

  return result;
}

int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  top = a->top;
  if (top >= b->top)
  {
    result = bn_wexpand(r, a->top);
    if (!result)
    {
      return result;
    }

    if (!bn_sub(r->d, v9, a->d, a->top, b->d, b->top))
    {
      r->top = top;
      r->neg = 0;
      bn_correct_top(r);
      return 1;
    }

    v4 = 277;
  }

  else
  {
    v4 = 267;
  }

  ERR_put_error(3, 4095, 100, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_add.c", v4);
  return 0;
}

int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  neg = a->neg;
  if (neg == b->neg)
  {
    v7 = BN_uadd(r, a, b);
  }

  else
  {
    v8 = BN_ucmp(a, b);
    if (v8 < 1)
    {
      if ((v8 & 0x80000000) == 0)
      {
        BN_zero(r);
        neg = 0;
        v12 = 1;
        goto LABEL_7;
      }

      neg = b->neg;
      v9 = r;
      v10 = b;
      v11 = a;
    }

    else
    {
      neg = a->neg;
      v9 = r;
      v10 = a;
      v11 = b;
    }

    v7 = BN_usub(v9, v10, v11);
  }

  v12 = v7;
LABEL_7:
  BN_set_negative(r, neg);
  return v12;
}

int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
  neg = a->neg;
  if (neg == b->neg)
  {
    v7 = BN_ucmp(a, b);
    if (v7 < 1)
    {
      if ((v7 & 0x80000000) == 0)
      {
        BN_zero(r);
        neg = 0;
        v12 = 1;
        goto LABEL_7;
      }

      neg = b->neg == 0;
      v8 = r;
      v9 = b;
      v10 = a;
    }

    else
    {
      neg = a->neg;
      v8 = r;
      v9 = a;
      v10 = b;
    }

    v11 = BN_usub(v8, v9, v10);
  }

  else
  {
    v11 = BN_uadd(r, a, b);
  }

  v12 = v11;
LABEL_7:
  BN_set_negative(r, neg);
  return v12;
}

uint64_t GENERAL_NAME_cmp(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v4 = *a1;
  if (*a1 != *a2)
  {
    return result;
  }

  if (v4 <= 4)
  {
    if (v4 <= 2)
    {
      if ((v4 - 1) >= 2)
      {
        if (!v4)
        {
          v5 = *(a1 + 8);
          v6 = *(a2 + 8);

          return OTHERNAME_cmp(v5, v6);
        }

        return result;
      }

      goto LABEL_23;
    }

    if (v4 != 3)
    {
      v9 = *(a1 + 8);
      v10 = *(a2 + 8);

      return X509_NAME_cmp(v9, v10);
    }

LABEL_23:
    v11 = *(a1 + 8);
    v12 = *(a2 + 8);
LABEL_24:

    return ASN1_STRING_cmp(v11, v12);
  }

  if (v4 <= 6)
  {
    if (v4 != 5)
    {
      goto LABEL_23;
    }

    v13 = *(a1 + 8);
    if (!v13)
    {
      return result;
    }

    v14 = *(a2 + 8);
    if (!v14)
    {
      return result;
    }

    v15 = *v14;
    if (*v13)
    {
      if (!v15)
      {
        return 1;
      }

      result = ASN1_STRING_cmp(*v13, v15);
      if (result)
      {
        return result;
      }
    }

    else if (v15)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v13[1];
    if (v11)
    {
      v12 = v14[1];
      if (v12)
      {
        goto LABEL_24;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v4 == 7)
  {
    v16 = *(a1 + 8);
    v17 = *(a2 + 8);

    return ASN1_OCTET_STRING_cmp(v16, v17);
  }

  else if (v4 == 8)
  {
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);

    return OBJ_cmp(v7, v8);
  }

  return result;
}

uint64_t OTHERNAME_cmp(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      result = OBJ_cmp(*a1, *a2);
      if (!result)
      {
        v5 = *(a1 + 8);
        v6 = *(a2 + 8);

        return ASN1_TYPE_cmp(v5, v6);
      }
    }
  }

  return result;
}

uint64_t GENERAL_NAME_set0_value(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a2 <= 8)
  {
    *(result + 8) = a3;
  }

  *result = a2;
  return result;
}

uint64_t GENERAL_NAME_get0_value(uint64_t a1, unsigned int *a2)
{
  v2 = *a1;
  if (a2)
  {
    *a2 = v2;
  }

  if (v2 > 8)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

uint64_t GENERAL_NAME_set0_othername(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = ASN1_item_new(&OTHERNAME_it);
  if (result)
  {
    *result = a2;
    *(result + 8) = a3;
    *(a1 + 8) = result;
    result = 1;
    *a1 = 0;
  }

  return result;
}

uint64_t GENERAL_NAME_get0_otherName(uint64_t a1, void *a2, void *a3)
{
  if (*a1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = **(a1 + 8);
  }

  if (a3)
  {
    *a3 = *(*(a1 + 8) + 8);
  }

  return 1;
}

int X509_check_purpose(X509 *x, int id, int ca)
{
  if (!x509v3_cache_extensions(x))
  {
    return -1;
  }

  if (id == -1)
  {
    return 1;
  }

  result = X509_PURPOSE_get_by_id(id);
  if (result != -1)
  {
    if (result < 0)
    {
      v5 = 0;
    }

    else if (result > 8)
    {
      v5 = sk_value(xptable, result - 9);
    }

    else
    {
      v5 = &xstandard + 48 * result;
    }

    v6 = *(v5 + 2);

    return v6();
  }

  return result;
}

BOOL x509v3_cache_extensions(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 0x100) == 0)
  {
    CRYPTO_lock(9, 3, 0, 0);
    if (*(a1 + 57))
    {
LABEL_121:
      CRYPTO_lock(10, 3, 0, 0);
      v1 = *(a1 + 56);
      return (v1 & 0x80) == 0;
    }

    v3 = EVP_sha512();
    X509_digest(a1, v3, (a1 + 144), 0);
    if (!X509_get_version(a1))
    {
      *(a1 + 56) |= 0x40uLL;
      if (X509_get_ext_count(a1))
      {
        *(a1 + 56) |= 0x80uLL;
      }
    }

    crit = 0;
    ext_d2i = X509_get_ext_d2i(a1, 87, &crit, 0);
    if (ext_d2i)
    {
      v5 = ext_d2i;
      ca = ext_d2i->ca;
      if (ext_d2i->ca)
      {
        *(a1 + 56) |= 0x10uLL;
      }

      pathlen = ext_d2i->pathlen;
      if (pathlen)
      {
        if (!ca || pathlen->type == 258)
        {
          v8 = 0;
          *(a1 + 56) |= 0x80uLL;
        }

        else
        {
          v8 = ASN1_INTEGER_get(pathlen);
        }
      }

      else
      {
        v8 = -1;
      }

      *(a1 + 48) = v8;
      BASIC_CONSTRAINTS_free(v5);
      v9 = 1;
    }

    else
    {
      if (crit == -1)
      {
LABEL_19:
        v10 = X509_get_ext_d2i(a1, 83, &crit, 0);
        if (v10)
        {
          length = v10->length;
          if (v10->length < 1)
          {
            *(a1 + 64) = 0;
          }

          else
          {
            data = v10->data;
            v13 = *data;
            *(a1 + 64) = v13;
            if (length != 1)
            {
              *(a1 + 64) = v13 | (data[1] << 8);
            }
          }

          *(a1 + 56) |= 2uLL;
          ASN1_BIT_STRING_free(v10);
        }

        else if (crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        *(a1 + 72) = 0;
        v14 = X509_get_ext_d2i(a1, 126, &crit, 0);
        if (v14)
        {
          v15 = v14;
          *(a1 + 56) |= 4uLL;
          crit = 0;
          if (sk_num(v14) >= 1)
          {
            do
            {
              v16 = sk_value(v15, crit);
              v17 = OBJ_obj2nid(v16);
              if (v17 > 136)
              {
                if (v17 <= 179)
                {
                  if (v17 != 137 && v17 != 139)
                  {
                    goto LABEL_52;
                  }

                  v18 = 16;
                  goto LABEL_51;
                }

                switch(v17)
                {
                  case 180:
                    v18 = 32;
                    goto LABEL_51;
                  case 297:
                    v18 = 128;
                    goto LABEL_51;
                  case 910:
                    v18 = 256;
                    goto LABEL_51;
                }
              }

              else if (v17 <= 130)
              {
                if (v17 == 129)
                {
                  v18 = 1;
                  goto LABEL_51;
                }

                if (v17 == 130)
                {
                  v18 = 2;
                  goto LABEL_51;
                }
              }

              else
              {
                switch(v17)
                {
                  case 131:
                    v18 = 8;
                    goto LABEL_51;
                  case 132:
                    v18 = 4;
                    goto LABEL_51;
                  case 133:
                    v18 = 64;
LABEL_51:
                    *(a1 + 72) |= v18;
                    break;
                }
              }

LABEL_52:
              v19 = ++crit;
            }

            while (v19 < sk_num(v15));
          }

          sk_pop_free(v15, ASN1_OBJECT_free);
        }

        else if (crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v20 = X509_get_ext_d2i(a1, 71, &crit, 0);
        if (v20)
        {
          if (v20->length < 1)
          {
            v21 = 0;
          }

          else
          {
            v21 = *v20->data;
          }

          *(a1 + 80) = v21;
          *(a1 + 56) |= 8uLL;
          ASN1_BIT_STRING_free(v20);
        }

        else if (crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v22 = X509_get_ext_d2i(a1, 82, &crit, 0);
        *(a1 + 88) = v22;
        if (!v22 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v23 = X509_get_ext_d2i(a1, 90, &crit, 0);
        *(a1 + 96) = v23;
        if (!v23 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        subject_name = X509_get_subject_name(a1);
        issuer_name = X509_get_issuer_name(a1);
        if (!X509_NAME_cmp(subject_name, issuer_name))
        {
          *(a1 + 56) |= 0x20uLL;
          if (!X509_check_akid(a1, *(a1 + 96)))
          {
            v26 = *(a1 + 56);
            if ((v26 & 2) == 0 || (*(a1 + 64) & 4) != 0)
            {
              *(a1 + 56) = v26 | 0x2000;
            }
          }
        }

        v27 = X509_get_ext_d2i(a1, 85, &crit, 0);
        *(a1 + 112) = v27;
        if (!v27 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v28 = X509_get_ext_d2i(a1, 666, &crit, 0);
        *(a1 + 120) = v28;
        if (!v28 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v47 = 0;
        v29 = X509_get_ext_d2i(a1, 103, &v47, 0);
        *(a1 + 104) = v29;
        if (v29 || v47 == -1)
        {
          v47 = 0;
          if (sk_num(v29) >= 1)
          {
            do
            {
              v30 = sk_value(*(a1 + 104), v47);
              v31 = v30;
              v32 = *(v30 + 1);
              if (v32)
              {
                v33 = *v32;
                if (*v32 <= 0)
                {
                  v35 = *(v30 + 6);
                }

                else
                {
                  v34 = *(v32 + 8);
                  v35 = *v34;
                  *(v30 + 6) = v35;
                  if (v33 != 1)
                  {
                    LOWORD(v35) = v35 | (v34[1] << 8);
                  }
                }

                *(v30 + 6) = v35 & 0x807F;
              }

              else
              {
                *(v30 + 6) = 32895;
              }

              if (*v30 && **v30 == 1)
              {
                if (sk_num(*(v30 + 2)) < 1)
                {
                  goto LABEL_99;
                }

                v36 = 0;
                while (1)
                {
                  v37 = sk_value(*(v31 + 2), v36);
                  if (*v37 == 4)
                  {
                    break;
                  }

                  if (++v36 >= sk_num(*(v31 + 2)))
                  {
                    goto LABEL_99;
                  }
                }

                v38 = *(v37 + 1);
                if (!v38)
                {
LABEL_99:
                  v38 = X509_get_issuer_name(a1);
                }

                DIST_POINT_set_dpname(*v31, v38);
              }

              v39 = ++v47;
            }

            while (v39 < sk_num(*(a1 + 104)));
          }
        }

        else
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v40 = X509_get_ext_d2i(a1, 290, &crit, 0);
        *(a1 + 128) = v40;
        if (!v40 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        if (!X509v3_addr_is_canonical(v40))
        {
          *(a1 + 56) |= 0x80uLL;
        }

        v41 = X509_get_ext_d2i(a1, 291, &crit, 0);
        *(a1 + 136) = v41;
        if (!v41 && crit != -1)
        {
          *(a1 + 56) |= 0x80uLL;
        }

        if (!X509v3_asid_is_canonical(v41))
        {
          *(a1 + 56) |= 0x80uLL;
        }

        crit = 0;
        if (X509_get_ext_count(a1) >= 1)
        {
          while (1)
          {
            ext = X509_get_ext(a1, crit);
            object = X509_EXTENSION_get_object(ext);
            if (OBJ_obj2nid(object) == 857)
            {
              *(a1 + 56) |= 0x1000uLL;
            }

            if (X509_EXTENSION_get_critical(ext) && !X509_supported_extension(ext))
            {
              break;
            }

            v44 = ++crit;
            if (v44 >= X509_get_ext_count(a1))
            {
              goto LABEL_120;
            }
          }

          *(a1 + 56) |= 0x200uLL;
        }

LABEL_120:
        x509_verify_cert_info_populate(a1);
        *(a1 + 56) |= 0x100uLL;
        goto LABEL_121;
      }

      v9 = 128;
    }

    *(a1 + 56) |= v9;
    goto LABEL_19;
  }

  return (v1 & 0x80) == 0;
}

int X509_PURPOSE_get_by_id(int id)
{
  result = id - 1;
  if (result >= 9)
  {
    v7 = v1;
    v8 = v2;
    memset(v6, 0, sizeof(v6));
    LODWORD(v6[0]) = id;
    if (xptable)
    {
      v5 = sk_find(xptable, v6);
      if (v5 == -1)
      {
        return -1;
      }

      else
      {
        return v5 + 9;
      }
    }

    else
    {
      return -1;
    }
  }

  return result;
}

X509_PURPOSE *__cdecl X509_PURPOSE_get0(int idx)
{
  if (idx < 0)
  {
    return 0;
  }

  if (idx > 8)
  {
    return sk_value(xptable, idx - 9);
  }

  return (&xstandard + 48 * idx);
}

int X509_PURPOSE_set(int *p, int purpose)
{
  if (X509_PURPOSE_get_by_id(purpose) == -1)
  {
    ERR_put_error(34, 4095, 146, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_purp.c", 149);
    return 0;
  }

  else
  {
    *p = purpose;
    return 1;
  }
}

int X509_PURPOSE_get_count(void)
{
  if (xptable)
  {
    return sk_num(xptable) + 9;
  }

  else
  {
    return 9;
  }
}

int X509_PURPOSE_get_by_sname(char *sname)
{
  v2 = 0;
  for (i = &xstandard; ; i += 48)
  {
    v4 = xptable ? sk_num(xptable) + 9 : 9;
    if (v2 >= v4)
    {
      break;
    }

    v5 = i;
    if (v2 >= 9)
    {
      v5 = sk_value(xptable, v2 - 9);
    }

    if (!strcmp(*(v5 + 4), sname))
    {
      return v2;
    }

    ++v2;
  }

  LODWORD(v2) = -1;
  return v2;
}

int X509_PURPOSE_add(int id, int trust, int flags, int (__cdecl *ck)(const X509_PURPOSE *, const X509 *, int), char *name, char *sname, void *arg)
{
  if (name && sname)
  {
    v14 = X509_PURPOSE_get_by_id(id);
    v15 = v14;
    if (v14 == -1)
    {
      v19 = malloc_type_malloc(0x30uLL, 0x109004064E8B8A4uLL);
      if (!v19)
      {
        v17 = 65;
        v18 = 235;
        goto LABEL_25;
      }

      v16 = v19;
      *(v19 + 2) = 1;
    }

    else if ((v14 & 0x80000000) != 0)
    {
      v16 = 0;
    }

    else if (v14 > 8)
    {
      v16 = sk_value(xptable, v14 - 9);
    }

    else
    {
      v16 = &xstandard + 48 * v14;
    }

    v20 = strdup(name);
    if (v20)
    {
      v21 = strdup(sname);
      if (v21)
      {
        v22 = flags & 0xFFFFFFFC;
        v23 = *(v16 + 2);
        if ((v23 & 2) != 0)
        {
          free(*(v16 + 3));
          free(*(v16 + 4));
          v23 = *(v16 + 2);
        }

        *(v16 + 1) = trust;
        *(v16 + 2) = v22 | v23 & 1 | 2;
        *v16 = id;
        *(v16 + 2) = ck;
        *(v16 + 3) = v20;
        *(v16 + 4) = v21;
        *(v16 + 5) = arg;
        if (v15 != -1)
        {
          return 1;
        }

        v24 = xptable;
        if (xptable || (v24 = sk_new(xp_cmp), (xptable = v24) != 0))
        {
          if (sk_push(v24, v16))
          {
            return 1;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    free(v20);
    free(v21);
    if (v15 == -1)
    {
      free(v16);
    }

    v17 = 65;
    v18 = 280;
  }

  else
  {
    v17 = 107;
    v18 = 222;
  }

LABEL_25:
  ERR_put_error(34, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_purp.c", v18);
  return 0;
}

void xptable_free(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      if ((v2 & 2) != 0)
      {
        free(*(a1 + 3));
        free(*(a1 + 4));
      }

      free(a1);
    }
  }
}

int X509_supported_extension(X509_EXTENSION *ex)
{
  object = X509_EXTENSION_get_object(ex);
  result = OBJ_obj2nid(object);
  *key = result;
  if (result)
  {
    return OBJ_bsearch_(key, "G", 12, 4, nid_cmp_BSEARCH_CMP_FN) != 0;
  }

  return result;
}

int X509_check_ca(X509 *x)
{
  x509v3_cache_extensions(x);

  return check_ca(x);
}

uint64_t check_ca(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 2) != 0 && (*(a1 + 64) & 4) == 0)
  {
    return 0;
  }

  if (v1)
  {
    return (v1 >> 4) & 1;
  }

  if ((*(a1 + 56) & 0x2040) == 0x2040)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  if ((*(a1 + 56) & 0x2040) != 0x2040 && (*(a1 + 56) & 2) == 0)
  {
    if ((v1 & 8) != 0 && (*(a1 + 80) & 7) != 0)
    {
      return 5;
    }

    return 0;
  }

  return v2;
}

int X509_check_issued(X509 *issuer, X509 *subject)
{
  subject_name = X509_get_subject_name(issuer);
  issuer_name = X509_get_issuer_name(subject);
  if (X509_NAME_cmp(subject_name, issuer_name))
  {
    return 29;
  }

  if (!x509v3_cache_extensions(issuer) || !x509v3_cache_extensions(subject))
  {
    return 1;
  }

  ex_nscert = subject->ex_nscert;
  if (!ex_nscert || (result = X509_check_akid(issuer, ex_nscert)) == 0)
  {
    if ((issuer->ex_pathlen & 2) == 0 || (issuer->ex_pcpathlen & 4) != 0)
    {
      return 0;
    }

    else
    {
      return 32;
    }
  }

  return result;
}

uint64_t X509_check_akid(X509 *x, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    ex_xkusage = x->ex_xkusage;
    if (ex_xkusage)
    {
      if (ASN1_OCTET_STRING_cmp(v4, ex_xkusage))
      {
        return 30;
      }
    }
  }

  if (*(a2 + 16))
  {
    serialNumber = X509_get_serialNumber(x);
    if (ASN1_INTEGER_cmp(serialNumber, *(a2 + 16)))
    {
      return 31;
    }
  }

  v8 = *(a2 + 8);
  if (v8 && sk_num(v8) >= 1)
  {
    v9 = 0;
    while (1)
    {
      v10 = sk_value(v8, v9);
      if (*v10 == 4)
      {
        break;
      }

      if (++v9 >= sk_num(v8))
      {
        return 0;
      }
    }

    v11 = *(v10 + 1);
    if (v11)
    {
      issuer_name = X509_get_issuer_name(x);
      if (X509_NAME_cmp(v11, issuer_name))
      {
        return 31;
      }
    }
  }

  return 0;
}

uint64_t X509_get_extension_flags(uint64_t a1)
{
  if (x509v3_cache_extensions(a1))
  {
    return *(a1 + 56);
  }

  else
  {
    return 128;
  }
}

uint64_t X509_get_key_usage(uint64_t a1)
{
  result = x509v3_cache_extensions(a1);
  if (result)
  {
    if ((*(a1 + 56) & 2) != 0)
    {
      return *(a1 + 64);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t X509_get_extended_key_usage(uint64_t a1)
{
  result = x509v3_cache_extensions(a1);
  if (result)
  {
    if ((*(a1 + 56) & 4) != 0)
    {
      return *(a1 + 72);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t check_purpose_ssl_client(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 56);
  if ((v4 & 4) != 0 && (*(a2 + 72) & 2) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    return ((v4 & 2) == 0 || (*(a2 + 64) & 0x80) != 0) && ((v4 & 8) == 0 || (*(a2 + 80) & 0x80) != 0);
  }

  result = check_ca(a2);
  if (result == 5)
  {
    if ((*(a2 + 80) & 4) != 0)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t check_purpose_ssl_server(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 56);
  if ((v4 & 4) != 0 && (*(a2 + 72) & 0x11) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    return ((v4 & 8) == 0 || (*(a2 + 80) & 0x40) != 0) && ((v4 & 2) == 0 || (*(a2 + 64) & 0xA0) != 0);
  }

  result = check_ca(a2);
  if (result == 5)
  {
    if ((*(a2 + 80) & 4) != 0)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t check_purpose_ns_ssl_server(uint64_t a1, uint64_t a2, int a3)
{
  result = check_purpose_ssl_server(a1, a2, a3);
  if (!a3 && result && (*(a2 + 56) & 2) != 0 && (*(a2 + 64) & 0x20) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t check_purpose_smime_sign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = purpose_smime(a2, a3);
  if (!v3 && result && (*(a2 + 56) & 2) != 0 && (*(a2 + 64) & 0xC0) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t check_purpose_smime_encrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = purpose_smime(a2, a3);
  if (!v3 && result && (*(a2 + 56) & 2) != 0 && (*(a2 + 64) & 0x20) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t check_purpose_crl_sign(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return (*(a2 + 56) & 2) == 0 || (*(a2 + 64) & 2) != 0;
  }

  LODWORD(result) = check_ca(a2);
  if (result == 2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t ocsp_helper(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return check_ca(a2);
  }

  else
  {
    return 1;
  }
}

uint64_t check_purpose_timestamp_sign(int a1, X509 *x, int a3)
{
  if (a3)
  {

    return check_ca(x);
  }

  ex_pathlen = x->ex_pathlen;
  if ((ex_pathlen & 2) != 0)
  {
    result = 0;
    if ((ex_pathlen & 4) == 0)
    {
      return result;
    }

    ex_pcpathlen = x->ex_pcpathlen;
    if (!ex_pcpathlen || (ex_pcpathlen & 0xFFFFFFFFFFFFFF3FLL) != 0)
    {
      return result;
    }
  }

  else if ((ex_pathlen & 4) == 0)
  {
    return 0;
  }

  if (x->ex_flags != 64)
  {
    return 0;
  }

  ext_by_NID = X509_get_ext_by_NID(x, 126, -1);
  if (ext_by_NID < 0)
  {
    return 1;
  }

  ext = X509_get_ext(x, ext_by_NID);
  result = X509_EXTENSION_get_critical(ext);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t purpose_smime(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  if ((v3 & 4) != 0 && (*(a1 + 72) & 4) == 0)
  {
    return 0;
  }

  if (a2)
  {
    result = check_ca(a1);
    if (result == 5)
    {
      if ((*(a1 + 80) & 2) != 0)
      {
        return 5;
      }

      else
      {
        return 0;
      }
    }
  }

  else if ((v3 & 8) != 0)
  {
    v5 = *(a1 + 80);
    if ((v5 & 0x20) != 0)
    {
      return 1;
    }

    else
    {
      return (v5 >> 6) & 2;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

char **EC_KEY_set_default_method(char **result)
{
  v1 = &openssl_ec_key_method;
  if (result)
  {
    v1 = result;
  }

  default_ec_key_meth = v1;
  return result;
}

uint64_t EC_KEY_set_method(ENGINE **a1, uint64_t a2)
{
  v4 = *(*a1 + 3);
  if (v4)
  {
    v4(a1);
  }

  ENGINE_finish(a1[1]);
  *a1 = a2;
  a1[1] = 0;
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 1;
  }

  return v5(a1);
}

uint64_t *EC_KEY_new_method(ENGINE *default_EC)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1060040AF32F034uLL);
  v3 = v2;
  if (!v2)
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_kmeth.c", 142);
    return v3;
  }

  *v2 = default_ec_key_meth;
  if (default_EC)
  {
    if (!ENGINE_init(default_EC))
    {
      v6 = 149;
      goto LABEL_14;
    }

    v3[1] = default_EC;
LABEL_7:
    EC = ENGINE_get_EC(default_EC);
    *v3 = EC;
    if (EC)
    {
      goto LABEL_8;
    }

    v6 = 158;
LABEL_14:
    ERR_put_error(16, 4095, 38, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_kmeth.c", v6);
LABEL_15:
    EC_KEY_free(v3);
    return 0;
  }

  default_EC = ENGINE_get_default_EC();
  v3[1] = default_EC;
  if (default_EC)
  {
    goto LABEL_7;
  }

LABEL_8:
  *(v3 + 4) = 1;
  *(v3 + 15) = 0;
  v3[3] = 0;
  *(v3 + 12) = 0;
  *(v3 + 2) = 0u;
  *(v3 + 52) = 0x100000004;
  v3[8] = 0;
  if (!CRYPTO_new_ex_data(6, v3, (v3 + 9)))
  {
    goto LABEL_15;
  }

  v5 = *(*v3 + 16);
  if (v5)
  {
    if (!v5(v3))
    {
      goto LABEL_15;
    }
  }

  return v3;
}

_OWORD *EC_KEY_METHOD_new(__int128 *a1)
{
  result = malloc_type_calloc(1uLL, 0x78uLL, 0x10D0040F56C2D54uLL);
  if (result)
  {
    if (a1)
    {
      v3 = *a1;
      v4 = a1[1];
      v5 = a1[3];
      result[2] = a1[2];
      result[3] = v5;
      *result = v3;
      result[1] = v4;
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      *(result + 14) = *(a1 + 14);
      result[5] = v7;
      result[6] = v8;
      result[4] = v6;
    }

    *(result + 2) |= 1u;
  }

  return result;
}

void EC_KEY_METHOD_free(void *a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      free(a1);
    }
  }
}

void *EC_KEY_METHOD_set_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  result[6] = a6;
  result[7] = a7;
  return result;
}

void *EC_KEY_METHOD_set_sign(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[10] = a2;
  result[11] = a3;
  result[12] = a4;
  return result;
}

uint64_t EC_KEY_METHOD_set_verify(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 104) = a2;
  *(result + 112) = a3;
  return result;
}

void *EC_KEY_METHOD_get_init(void *result, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
    *a2 = result[2];
  }

  if (a3)
  {
    *a3 = result[3];
  }

  if (a4)
  {
    *a4 = result[4];
  }

  if (a5)
  {
    *a5 = result[5];
  }

  if (a6)
  {
    *a6 = result[6];
  }

  if (a7)
  {
    *a7 = result[7];
  }

  return result;
}

uint64_t EC_KEY_METHOD_get_keygen(uint64_t result, void *a2)
{
  if (a2)
  {
    *a2 = *(result + 64);
  }

  return result;
}

uint64_t EC_KEY_METHOD_get_compute_key(uint64_t result, void *a2)
{
  if (a2)
  {
    *a2 = *(result + 72);
  }

  return result;
}

void *EC_KEY_METHOD_get_sign(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[10];
  }

  if (a3)
  {
    *a3 = result[11];
  }

  if (a4)
  {
    *a4 = result[12];
  }

  return result;
}

uint64_t EC_KEY_METHOD_get_verify(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 104);
  }

  if (a3)
  {
    *a3 = *(result + 112);
  }

  return result;
}

void BF_ofb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, const BF_KEY *schedule, unsigned __int8 *ivec, int *num)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = *num;
  v8 = *ivec;
  v9 = ivec[1];
  v10 = ivec[2];
  v11 = ivec[3];
  v12 = (v8 << 24) | (v9 << 16) | (v10 << 8) | v11;
  v13 = ivec[4];
  v14 = ivec[5];
  v15 = ivec[6];
  v16 = ivec[7];
  v17 = (v13 << 24) | (v14 << 16) | (v15 << 8) | v16;
  data = v12;
  v26 = v17;
  LOBYTE(v27) = v8;
  BYTE1(v27) = v9;
  BYTE2(v27) = v10;
  HIBYTE(v27) = v11;
  LOBYTE(v28) = v13;
  BYTE1(v28) = v14;
  BYTE2(v28) = v15;
  HIBYTE(v28) = v16;
  if (length)
  {
    v20 = length;
    v23 = 0;
    do
    {
      if (!v7)
      {
        BF_encrypt(&data, schedule);
        v12 = data;
        v17 = v26;
        v27 = bswap32(data);
        v28 = bswap32(v26);
        ++v23;
      }

      v24 = *in++;
      *out++ = *(&v27 + v7) ^ v24;
      v7 = (v7 + 1) & 7;
      --v20;
    }

    while (v20);
    if (v23)
    {
      *ivec = HIBYTE(v12);
      ivec[1] = BYTE2(v12);
      ivec[2] = BYTE1(v12);
      ivec[3] = v12;
      ivec[4] = HIBYTE(v17);
      ivec[5] = BYTE2(v17);
      ivec[6] = BYTE1(v17);
      ivec[7] = v17;
    }
  }

  *num = v7;
}

uint64_t bf_init_key(const EVP_CIPHER_CTX *a1, const unsigned __int8 *a2)
{
  cipher_data = a1->cipher_data;
  v4 = EVP_CIPHER_CTX_key_length(a1);
  BF_set_key(cipher_data, v4, a2);
  return 1;
}

uint64_t bf_cbc_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    BF_cbc_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), *(a1 + 16));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    BF_cbc_encrypt(in, out, i, *(a1 + 120), (a1 + 40), *(a1 + 16));
  }

  return 1;
}

uint64_t bf_cfb64_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    if (a4 >= 0x7FFFFFFFFFFFFF00)
    {
      v8 = 0x7FFFFFFFFFFFFF00;
    }

    else
    {
      v8 = a4;
    }

    do
    {
      BF_cfb64_encrypt(in, out, v8, *(a1 + 120), (a1 + 40), (a1 + 88), *(a1 + 16));
      in += v8;
      out += v8;
      v4 -= v8;
      if (v4 < v8)
      {
        v8 = v4;
      }
    }

    while (v4);
  }

  return 1;
}

uint64_t bf_ofb_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t length)
{
  for (i = length; i > 0x7FFFFFFFFFFFFEFFLL; out += 0x7FFFFFFFFFFFFF00)
  {
    BF_ofb64_encrypt(in, out, 0x7FFFFFFFFFFFFF00, *(a1 + 120), (a1 + 40), (a1 + 88));
    i -= 0x7FFFFFFFFFFFFF00;
    in += 0x7FFFFFFFFFFFFF00;
  }

  if (i)
  {
    BF_ofb64_encrypt(in, out, i, *(a1 + 120), (a1 + 40), (a1 + 88));
  }

  return 1;
}

uint64_t bf_ecb_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v9 = 0;
    do
    {
      BF_ecb_encrypt((a3 + v9), (a2 + v9), *(a1 + 120), *(a1 + 16));
      v9 += v4;
    }

    while (v9 <= v5);
  }

  return 1;
}

void ERR_load_DH_strings(void)
{
  if (!ERR_func_error_string(DH_str_functs))
  {
    ERR_load_strings(0, &DH_str_functs);

    ERR_load_strings(0, &DH_str_reasons);
  }
}

int DH_generate_parameters_ex(DH *dh, int prime_len, int generator, BN_GENCB *cb)
{
  LODWORD(v5) = generator;
  v8 = *(*&dh->ex_data.dummy + 64);
  if (!v8)
  {
    v10 = BN_CTX_new();
    if (!v10)
    {
      ERR_put_error(5, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_gen.c", 168);
      return 0;
    }

    v11 = v10;
    BN_CTX_start(v10);
    v12 = BN_CTX_get(v11);
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v12;
    v14 = BN_CTX_get(v11);
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14;
    if (!dh->p)
    {
      v16 = BN_new();
      dh->p = v16;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    if (!dh->g)
    {
      v17 = BN_new();
      dh->g = v17;
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    if (v5 > 1)
    {
      if (v5 == 5)
      {
        if (!BN_set_word(v13, 0xAuLL) || !BN_set_word(v15, 3uLL))
        {
          goto LABEL_14;
        }

        v5 = 5;
      }

      else if (v5 == 2)
      {
        if (!BN_set_word(v13, 0x18uLL) || !BN_set_word(v15, 0xBuLL))
        {
          goto LABEL_14;
        }

        v5 = 2;
      }

      else
      {
        if (!BN_set_word(v13, 2uLL) || !BN_set_word(v15, 1uLL))
        {
          goto LABEL_14;
        }

        v5 = v5;
      }

      if (BN_generate_prime_ex(dh->p, prime_len, 1, v13, v15, cb) && BN_GENCB_call(cb, 3, 0) && BN_set_word(dh->g, v5))
      {
        v18 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      ERR_put_error(5, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_gen.c", 128);
    }

LABEL_14:
    ERR_put_error(5, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/dh/dh_gen.c", 168);
    v18 = 0;
LABEL_15:
    BN_CTX_end(v11);
    BN_CTX_free(v11);
    return v18;
  }

  return v8();
}