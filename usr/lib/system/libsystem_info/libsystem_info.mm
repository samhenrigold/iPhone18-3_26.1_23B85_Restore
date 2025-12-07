int getpwnam_r(const char *a1, passwd *a2, char *a3, size_t a4, passwd **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_user_byname(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_user_r(v7 + 32, a2, a3, v9);
            si_item_release(v11, v13);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

uint64_t si_user_byname(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 16)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t search_item_byname(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = 0;
  if (a1 && a4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = a3;
      v15 = 0;
      while (1)
      {
        module = search_get_module(v6, v7, &v15);
        if (!module)
        {
          break;
        }

        v10 = module;
        v11 = a4(module, a2);
        if (v11)
        {
          v4 = v11;
          if (*(v6 + 24 * v7 + 16))
          {
            v12 = v7;
          }

          else
          {
            v12 = 0;
          }

          if (*(v6 + 24 * v12 + 20))
          {
            v13 = *(v6 + 432);
          }

          else
          {
            v13 = 0;
          }

          si_cache_add_item(v13, v10, v4);
          return v4;
        }
      }
    }

    return 0;
  }

  return v4;
}

uint64_t search_get_module(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = (*a3)++;
  v4 = a1 + 24 * a2;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v3 >= v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v3 < *(a1 + 16))
    {
      v7 = 8 * v3;
      v8 = (*(a1 + 8) + 4 * v3);
      while (1)
      {
        v9 = *v8;
        v8 += 4;
        if ((v9 & 1) == 0)
        {
          break;
        }

        *a3 = v3 + 2;
        v7 += 8;
        if (*(a1 + 16) <= ++v3)
        {
          return 0;
        }
      }

      v11 = *a1 + v7;
      return *v11;
    }

    return 0;
  }

  v11 = *v4 + 8 * v3;
  return *v11;
}

atomic_uint *cache_fetch_item(uint64_t a1, int a2, char *a3, int a4, int a5)
{
  v5 = 0;
  if (a1 && gL1CacheEnabled)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v11 = (v6 + 240 * a2);
      pthread_mutex_lock(v11);
      for (i = 72; i != 232; i += 8)
      {
        v5 = *(&v11->__sig + i);
        if (v5)
        {
          if (si_item_is_valid(*(&v11->__sig + i)))
          {
            v15 = si_item_retain(v5, v14);
            v5 = v15;
            if (v15 && si_item_match(v15, a2, a3, a4, a5))
            {
              goto LABEL_13;
            }
          }

          else
          {
            si_item_release(v5, v14);
            v5 = 0;
            *(&v11->__sig + i) = 0;
          }
        }

        si_item_release(v5, v12);
      }

      v5 = 0;
LABEL_13:
      pthread_mutex_unlock(v11);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t copy_user_r(uint64_t a1, void *a2, char *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  if (v8)
  {
    v9 = strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v9 += strlen(v11) + 1;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v9 += strlen(v12) + 1;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v9 += strlen(v13) + 1;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v9 += strlen(v14) + 1;
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v9 += strlen(v15) + 1;
  }

  if (v9 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (*a1)
  {
    *a2 = a3;
    v16 = strlen(*a1) + 1;
    memmove(a3, *a1, v16);
    a3 += v16;
  }

  a2[1] = 0;
  if (*(a1 + 8))
  {
    a2[1] = a3;
    v17 = strlen(*(a1 + 8)) + 1;
    memmove(a3, *(a1 + 8), v17);
    a3 += v17;
  }

  a2[2] = *(a1 + 16);
  a2[4] = 0;
  v18 = *(a1 + 32);
  a2[3] = *(a1 + 24);
  if (v18)
  {
    a2[4] = a3;
    v19 = strlen(*(a1 + 32)) + 1;
    memmove(a3, *(a1 + 32), v19);
    a3 += v19;
  }

  a2[5] = 0;
  if (*(a1 + 40))
  {
    a2[5] = a3;
    v20 = strlen(*(a1 + 40)) + 1;
    memmove(a3, *(a1 + 40), v20);
    a3 += v20;
  }

  a2[6] = 0;
  if (*(a1 + 48))
  {
    a2[6] = a3;
    v21 = strlen(*(a1 + 48)) + 1;
    memmove(a3, *(a1 + 48), v21);
    a3 += v21;
  }

  a2[7] = 0;
  if (*(a1 + 56))
  {
    a2[7] = a3;
    v22 = strlen(*(a1 + 56));
    memmove(a3, *(a1 + 56), v22 + 1);
  }

  result = 0;
  a2[8] = *(a1 + 64);
  return result;
}

void si_item_release(atomic_uint *a1, uint64_t a2)
{
  if (a1)
  {
    add = atomic_fetch_add(a1 + 3, 0xFFFFFFFF);
    if (add <= 0)
    {
      si_item_release_cold_1();
    }

    if (add == 1)
    {

      free(a1);
    }
  }
}

uint64_t si_item_is_valid(uint64_t *a1)
{
  if (a1 && (v1 = *a1) != 0 && (v2 = *(*(v1 + 40) + 8)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

const char *file_is_valid(const char **a1, const char ***a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = *a1;
      if (*a1)
      {
        v4 = *a2;
        if (*a2 && *v4)
        {
          return (strcmp(result, *v4) == 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getgrouplist_internal(uint64_t a1, int a2, int *a3, int *a4)
{
  result = 0;
  if (a1 && a3 && a4)
  {
    v8 = *a4;
    *a4 = 0;
    if (v8 >= 1)
    {
      *a3 = a2;
      *a4 = 1;
      v9 = si_search_search;
      if (!si_search_search)
      {
        v9 = si_module_with_name("search");
        si_search_search = v9;
      }

      v10 = si_grouplist(v9);
      LI_set_thread_item(3, v10);
      if (v10)
      {
        v11 = *(v10 + 40);
        if (v11 >= 1)
        {
          v12 = 0;
          v13 = *(v10 + 48);
          v14 = 1;
          do
          {
            v15 = *(v13 + 4 * v12);
            if (v14 < 1)
            {
LABEL_14:
              if (v14 >= v8)
              {
                return 0xFFFFFFFFLL;
              }

              a3[v14++] = v15;
              *a4 = v14;
              v11 = *(v10 + 40);
            }

            else
            {
              v16 = v14;
              v17 = a3;
              while (1)
              {
                v18 = *v17++;
                if (v18 == v15)
                {
                  break;
                }

                if (!--v16)
                {
                  goto LABEL_14;
                }
              }
            }

            ++v12;
          }

          while (v12 < v11);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t si_item_match(uint64_t result, int a2, char *__s1, int a4, int a5)
{
  if (result)
  {
    if (!a5)
    {
      return 1;
    }

    v7 = result;
    if (!__s1 && a5 == 1)
    {
      return 0;
    }

    result = 0;
    if (a2 <= 7)
    {
      if (a2 <= 4)
      {
        if (a2 != 1 && a2 != 2)
        {
          if (a2 != 3)
          {
            return result;
          }

LABEL_45:
          if (a5 != 1)
          {
            return 0;
          }

          goto LABEL_46;
        }

        if (a5 != 1)
        {
          goto LABEL_65;
        }

LABEL_46:
        v16 = *(v7 + 32);
        return !strcmp(__s1, v16);
      }

      if ((a2 - 6) >= 2)
      {
        if (a2 != 5)
        {
          return result;
        }

        goto LABEL_45;
      }

      if (*(v7 + 48) != a4)
      {
        return 0;
      }

      if (a5 != 1)
      {
        return a5 == 2 && !memcmp(__s1, **(v7 + 56), *(v7 + 52));
      }

      if (strcmp(__s1, *(v7 + 32)))
      {
        v12 = *(v7 + 40);
        if (v12)
        {
          v13 = *v12;
          if (*v12)
          {
            v14 = v12 + 1;
            while (strcmp(__s1, v13))
            {
              v15 = *v14++;
              v13 = v15;
              if (!v15)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        return 0;
      }

      return 1;
    }

    if (a2 <= 10)
    {
      if (a2 == 8)
      {
        if (a5 != 1)
        {
          if (a5 != 2)
          {
            return 0;
          }

          v25 = *(v7 + 52);
          return v25 == a4;
        }

        if (strcmp(__s1, *(v7 + 32)))
        {
          v17 = *(v7 + 40);
          if (v17)
          {
            v18 = *v17;
            if (*v17)
            {
              v19 = v17 + 1;
              while (strcmp(__s1, v18))
              {
                v20 = *v19++;
                v18 = v20;
                if (!v20)
                {
                  return 0;
                }
              }

              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      if (a2 != 9)
      {
        if (a5 == 1)
        {
          if (strcmp(__s1, *(v7 + 32)))
          {
            v8 = *(v7 + 40);
            if (v8)
            {
              v9 = *v8;
              if (*v8)
              {
                v10 = v8 + 1;
                while (strcmp(__s1, v9))
                {
                  v11 = *v10++;
                  v9 = v11;
                  if (!v11)
                  {
                    return 0;
                  }
                }

                return 1;
              }
            }

            return 0;
          }

          return 1;
        }

LABEL_65:
        if (a5 != 2)
        {
          return 0;
        }

        goto LABEL_66;
      }

      if (a5 != 1)
      {
        if (a5 != 2 || __s1 && strcmp(__s1, *(v7 + 56)))
        {
          return 0;
        }

LABEL_66:
        v25 = *(v7 + 48);
        return v25 == a4;
      }

      if (a4 == 2)
      {
        v26 = *(v7 + 56);
        v27 = "tcp";
      }

      else
      {
        if (a4 != 1)
        {
          goto LABEL_84;
        }

        v26 = *(v7 + 56);
        v27 = "udp";
      }

      if (strcmp(v27, v26))
      {
        return 0;
      }

LABEL_84:
      if (strcmp(__s1, *(v7 + 32)))
      {
        v28 = *(v7 + 40);
        if (v28)
        {
          v29 = *v28;
          if (*v28)
          {
            v30 = v28 + 1;
            while (strcmp(__s1, v29))
            {
              v31 = *v30++;
              v29 = v31;
              if (!v31)
              {
                return 0;
              }
            }

            return 1;
          }
        }

        return 0;
      }

      return 1;
    }

    if (a2 == 11)
    {
      if (a5 == 1)
      {
        if (strcmp(__s1, *(v7 + 32)))
        {
          v21 = *(v7 + 40);
          if (v21)
          {
            v22 = *v21;
            if (*v21)
            {
              v23 = v21 + 1;
              while (strcmp(__s1, v22))
              {
                v24 = *v23++;
                v22 = v24;
                if (!v24)
                {
                  return 0;
                }
              }

              return 1;
            }
          }

          return 0;
        }

        return 1;
      }

      goto LABEL_65;
    }

    if (a2 == 12 || a2 == 13)
    {
      if (a5 != 1)
      {
        if (a5 != 2)
        {
          return 0;
        }

        v16 = *(v7 + 40);
        return !strcmp(__s1, v16);
      }

      goto LABEL_46;
    }
  }

  return result;
}

uint64_t si_item_retain(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((atomic_fetch_add((result + 12), 1u) & 0x80000000) != 0)
    {
      si_list_add_cold_1();
    }
  }

  return result;
}

const char *si_cache_add_item(const char *result, const char **a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result;
    if (result)
    {
      if (a2)
      {
        if (a3)
        {
          result = *a2;
          if (*a2)
          {
            result = strcmp(result, *v3);
            if (result)
            {
              result = si_module_allows_caching(a2);
              if (result)
              {
                v6 = *(a3 + 8);
                if (v6 <= 0x11)
                {
                  v7 = *(v3 + 4);
                  if (v7)
                  {
                    v8 = (v7 + 240 * v6);
                    pthread_mutex_lock(v8);
                    v9 = v7 + 240 * *(a3 + 8);
                    v10 = *(v9 + 64);
                    si_item_release(*(v9 + 8 * v10 + 72), v11);
                    v13 = si_item_retain(a3, v12);
                    v14 = v7 + 240 * *(a3 + 8);
                    *(v14 + 8 * v10 + 72) = v13;
                    if (v10 <= 18)
                    {
                      v15 = v10 + 1;
                    }

                    else
                    {
                      v15 = 0;
                    }

                    *(v14 + 64) = v15;

                    return pthread_mutex_unlock(v8);
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

int getpwuid_r(uid_t a1, passwd *a2, char *a3, size_t a4, passwd **a5)
{
  if (!a5)
  {
    LODWORD(v8) = 34;
    return v8;
  }

  *a5 = 0;
  LODWORD(v8) = 34;
  if (a2)
  {
    if (a3)
    {
      v10 = a4;
      if (a4)
      {
        v11 = _os_feature_enabled_simple_impl();
        if (a1 <= 0x1F3 && (v11 & 1) == 0)
        {
          v12 = si_search_cache_file_search;
          if (!si_search_cache_file_search)
          {
            v12 = si_module_with_name("cache_file");
            si_search_cache_file_search = v12;
          }

          v8 = si_user_byuid(v12);
          if (v8)
          {
            goto LABEL_22;
          }

          v13 = si_search_file_search;
          if (!si_search_file_search)
          {
            v13 = si_module_with_name("file");
            si_search_file_search = v13;
          }

          v14 = si_user_byuid(v13);
          if (v14)
          {
            v15 = v14;
            v16 = si_search_cache_file_search;
            if (!si_search_cache_file_search)
            {
              v16 = si_module_with_name("cache_file");
              si_search_cache_file_search = v16;
            }

            v17 = si_search_file_search;
            if (!si_search_file_search)
            {
              v17 = si_module_with_name("file");
              si_search_file_search = v17;
            }

            si_cache_add_item(v16, v17, v15);
            goto LABEL_23;
          }
        }

        v18 = si_search_search;
        if (!si_search_search)
        {
          v18 = si_module_with_name("search");
          si_search_search = v18;
        }

        v8 = si_user_byuid(v18);
        if (v8)
        {
LABEL_22:
          v15 = v8;
LABEL_23:
          v19 = copy_user_r((v15 + 8), a2, a3, v10);
          si_item_release(v15, v20);
          if (v19)
          {
            LODWORD(v8) = 34;
          }

          else
          {
            LODWORD(v8) = 0;
            *a5 = a2;
          }
        }
      }
    }
  }

  return v8;
}

uint64_t si_user_byuid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 24)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

void *_fsi_get_line(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = *MEMORY[0x1E69E9840];
  __s[0] = 0;
  v9 = 0;
  if (fgets(__s, 4096, v8) && __s[0])
  {
    if (__s[0] != 35)
    {
      __s[strlen(__s) - 1] = 0;
    }

    v10 = (strlen(__s) + 1);
    v11 = malloc_type_malloc(v10, 0x851F2927uLL);
    v9 = v11;
    if (v11)
    {
      memmove(v11, __s, v10);
    }
  }

  return v9;
}

_BYTE *file_grouplist(uint64_t a1, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    si_item_release(v4, v5);
  }

  v6 = fopen("/etc/group", "r");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  _fsi_get_validation(a1, 2u, "/etc/group", v6, &v48, &v47);
  line = _fsi_get_line(v7, v8, v9, v10, v11, v12, v13, v14);
  if (!line)
  {
    fclose(v7);
    v17 = 0;
    goto LABEL_30;
  }

  v16 = line;
  v17 = 0;
  v18 = 0;
  do
  {
    if (*v16 == 35)
    {
      v19 = v16;
LABEL_10:
      free(v19);
      goto LABEL_11;
    }

    v49 = 0;
    v19 = _fsi_tokenize(v16, ":", 1, &v49);
    v20 = v19;
    if (v49 != 4)
    {
      goto LABEL_10;
    }

    v49 = 0;
    v28 = _fsi_tokenize(v19[3], ",", 1, &v49);
    v29 = v49;
    v46 = v28;
    if (v49 < 1)
    {
      v33 = 0;
      v45 = -2;
    }

    else
    {
      v30 = v28;
      if (!strcmp(a2, *v28))
      {
        v33 = 1;
LABEL_21:
        v45 = atoi(v20[2]);
      }

      else
      {
        v44 = v18;
        v31 = 0;
        while (v29 - 1 != v31)
        {
          if (!strcmp(a2, v30[++v31]))
          {
            v33 = v31 < v29;
            v18 = v44;
            goto LABEL_21;
          }
        }

        v33 = 0;
        v45 = -2;
        v18 = v44;
      }
    }

    free(v20);
    free(v46);
    free(v16);
    if (v33)
    {
      v34 = reallocf(v17, 4 * (v18 + 1));
      v17 = v34;
      if (!v34)
      {
        fclose(v7);
        goto LABEL_30;
      }

      *(v34 + v18) = v45;
      v18 = (v18 + 1);
    }

LABEL_11:
    v16 = _fsi_get_line(v7, v21, v22, v23, v24, v25, v26, v27);
  }

  while (v16);
  fclose(v7);
  if (v18)
  {
    v35 = LI_ils_create("L4488s4@", v36, v37, v38, v39, v40, v41, v42, a1);
    goto LABEL_31;
  }

LABEL_30:
  v35 = 0;
LABEL_31:
  free(v17);
  return v35;
}

uint64_t search_groupist(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 32);
    if (v4)
    {
      v8 = 0;
      while (1)
      {
        result = search_get_module(v4, 3u, &v8);
        if (!result)
        {
          break;
        }

        if (result != *(v4 + 432))
        {
          v7 = *(*(result + 40) + 80);
          if (v7)
          {
            result = v7(v3, a2, a3);
            if (result)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t si_grouplist(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 80)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

BOOL _muser_available()
{
  v0 = _muser_xpc_pipe(0);
  if (v0)
  {
    xpc_release(v0);
  }

  return _si_muser_disabled == 0;
}

_BYTE *muser_grouplist(uint64_t a1, const char *a2)
{
  if (*a2 == 95)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "grouplist");
  xpc_dictionary_set_string(v5, "query", a2);
  v6 = _muser_call("getgrouplist", v5);
  if (v6)
  {
    v7 = v6;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    value = xpc_dictionary_get_value(v6, "grouplist");
    if (value)
    {
      v16 = value;
      if (MEMORY[0x19A8FCCB0]() == MEMORY[0x1E69E9E50])
      {
        count = xpc_array_get_count(v16);
        v20 = malloc_type_calloc(count + 1, 4uLL, 0x100004052888210uLL);
        v24[3] = v20;
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = ___muser_extract_grouplist_block_invoke;
        applier[3] = &unk_1E75063C0;
        applier[4] = &v23;
        xpc_array_apply(v16, applier);
      }
    }

    if (v24[3])
    {
      v17 = LI_ils_create("L4488s4@", v9, v10, v11, v12, v13, v14, v15, a1);
      v21 = v24[3];
    }

    else
    {
      v21 = 0;
      v17 = 0;
    }

    free(v21);
    _Block_object_dispose(&v23, 8);
    xpc_release(v7);
  }

  else
  {
    v17 = 0;
  }

  xpc_release(v5);
  return v17;
}

xpc_object_t _muser_xpc_pipe(int a1)
{
  if (_muser_xpc_pipe_once != -1)
  {
    _muser_xpc_pipe_cold_1();
  }

  if (_si_muser_disabled != 1)
  {
    pthread_mutex_lock(&mutex);
    v2 = __muser_pipe;
    if (a1)
    {
      xpc_release(__muser_pipe);
      __muser_pipe = 0;
    }

    else if (__muser_pipe)
    {
LABEL_18:
      v2 = xpc_retain(v2);
LABEL_19:
      pthread_mutex_unlock(&mutex);
      return v2;
    }

    if (xpc_user_sessions_enabled())
    {
      xpc_user_sessions_get_foreground_uid();
      v3 = xpc_pipe_create_with_user_session_uid();
    }

    else
    {
      v3 = xpc_pipe_create();
    }

    v2 = v3;
    __muser_pipe = v3;
    if (!_si_muser_disabled)
    {
      if (v3 && (v4 = xpc_dictionary_create(0, 0, 0), xpc_dictionary_set_string(v4, "reqtype", "available"), xpc_dictionary_set_int64(v4, "version", 1), v5 = xpc_pipe_routine(), xpc_release(v4), !v5))
      {
        v6 = xpc_dictionary_get_BOOL(0, "available");
        xpc_release(0);
      }

      else
      {
        v6 = xpc_user_sessions_enabled();
      }

      _si_muser_disabled = v6 ^ 1;
      v2 = __muser_pipe;
    }

    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return 0;
}

void _fsi_get_validation(uint64_t a1, unsigned int a2, const char *a3, FILE *a4, __darwin_time_t *a5, uint64_t *a6)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a1)
  {
    if (a3)
    {
      if (gL1CacheEnabled)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          if ((*v9 >> a2))
          {
            v10 = &v9[a2];
            v12 = v10[1];
            v11 = v10 + 1;
            if (v12 < 0)
            {
              *&v16.st_dev = 0;
              asprintf(&v16, "com.apple.system.info:%s", a3);
              if (!*&v16.st_dev)
              {
                return;
              }

              notify_register_check(*&v16.st_dev, v11);
              free(*&v16.st_dev);
              if (!a5)
              {
                goto LABEL_20;
              }
            }

            else if (!a5)
            {
LABEL_20:
              if (!a6)
              {
                return;
              }

              tv_nsec = a2;
              goto LABEL_30;
            }

            if (!notify_peek())
            {
              *a5 = bswap32(0);
            }

            goto LABEL_20;
          }

          memset(&v16, 0, sizeof(v16));
          if (a4)
          {
            v13 = fileno(a4);
            if (fstat(v13, &v16))
            {
              return;
            }
          }

          else
          {
            if (a2 > 0xA)
            {
              v15 = "/etc/ethers";
            }

            else
            {
              v15 = off_1E7505EA0[a2];
            }

            if (stat(v15, &v16))
            {
              return;
            }
          }

          if (a5)
          {
            *a5 = v16.st_mtimespec.tv_sec;
          }

          if (a6)
          {
            tv_nsec = v16.st_mtimespec.tv_nsec;
LABEL_30:
            *a6 = tv_nsec;
          }
        }
      }
    }
  }
}

void *_fsi_tokenize(_BYTE *a1, char *__s, int a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!__s)
  {
    v26 = reallocf(0, 0x10uLL);
    appended = v26;
    if (v26)
    {
      *v26 = a1;
      v26[1] = 0;
    }

    goto LABEL_38;
  }

  if (!*a1)
  {
    return 0;
  }

  v8 = strlen(__s);
  v9 = 0;
  appended = 0;
  v11 = v8 & 0x7FFFFFFF;
  while (1)
  {
    v12 = v9 << 32;
    for (i = &a1[v9]; ; ++i)
    {
      v14 = *i;
      if ((v14 - 9) >= 2 && v14 != 32)
      {
        break;
      }

      LODWORD(v9) = v9 + 1;
      v12 += 0x100000000;
    }

    if (!*i)
    {
      break;
    }

    v15 = &a1[v12 >> 32];
    v16 = *v15;
    v17 = *v15 != 0;
    v28 = v8;
    if (*v15)
    {
      LODWORD(v18) = v9;
      v19 = v9;
      while (1)
      {
        v20 = v11;
        v21 = __s;
        if (v8 >= 1)
        {
          break;
        }

LABEL_17:
        if (v16 > 0x20 || ((1 << v16) & 0x100000600) == 0)
        {
          v19 = v18;
        }

        v18 = v18 + 1;
        v15 = &a1[v18];
        v16 = a1[v18];
        v17 = a1[v18] != 0;
        if (!a1[v18])
        {
          v23 = 0;
          goto LABEL_24;
        }
      }

      while (1)
      {
        v22 = *v21++;
        if (v16 == v22)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_17;
        }
      }

      v23 = *v15 != 0;
    }

    else
    {
      v23 = 0;
      v19 = v9;
      LODWORD(v18) = v9;
    }

LABEL_24:
    v24 = &a1[v19 + 1];
    if (v18 == v9)
    {
      v25 = v15;
    }

    else
    {
      v25 = v24;
    }

    *v25 = 0;
    appended = _fsi_append_string(i, appended);
    if (a4)
    {
      ++*a4;
    }

    v9 = (v18 + v23);
    v8 = v28;
    if (!a1[v9])
    {
      goto LABEL_33;
    }
  }

  v17 = 1;
LABEL_33:
  if (a3 && v17)
  {
    appended = _fsi_append_string(&a1[v9], appended);
LABEL_38:
    if (a4)
    {
      ++*a4;
    }
  }

  return appended;
}

void *_fsi_append_string(uint64_t a1, void *__ptr)
{
  v2 = __ptr;
  if (a1)
  {
    if (__ptr)
    {
      v4 = -1;
      v5 = __ptr;
      do
      {
        v6 = *v5++;
        ++v4;
      }

      while (v6);
    }

    else
    {
      v4 = 0;
    }

    v7 = reallocf(__ptr, 8 * (v4 + 2));
    v2 = v7;
    if (v7)
    {
      v8 = &v7[8 * v4];
      *v8 = a1;
      *(v8 + 1) = 0;
    }
  }

  return v2;
}

_BYTE *LI_ils_create(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (!a1)
  {
    return v9;
  }

  v128 = &a9;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = a1;
    v14 = 8;
    while (1)
    {
      if (v10 <= 75)
      {
        if (v10 <= 51)
        {
          if (v10 == 42)
          {
            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v35 = v128++;
            v36 = *v35;
            v22 = 8;
            if (*v35)
            {
              v37 = *v36;
              if (*v36)
              {
                v38 = 0;
                v39 = 1;
                do
                {
                  v38 += strlen(v37) + 9;
                  v37 = v36[v39++];
                }

                while (v37);
                v22 = v38 + 8;
              }

              else
              {
                v22 = 8;
              }
            }

            v21 = HIDWORD(v22);
            v19 = v22;
            goto LABEL_104;
          }

          if (v10 == 49)
          {
            v21 = 0;
            LODWORD(v22) = 0;
            v19 = 0;
            if (v12 <= 1)
            {
              v12 = 1;
            }

            ++v128;
            v15 = 1;
            goto LABEL_104;
          }

          if (v10 != 50)
          {
            return 0;
          }

          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          if (v12 <= 2)
          {
            v12 = 2;
          }

          v15 = v11 & 1 | 2;
          goto LABEL_70;
        }

        if (v10 != 52)
        {
          if (v10 != 56)
          {
            if (v10 != 64)
            {
              return 0;
            }

            v21 = 0;
            if ((v11 & 3) != 0)
            {
              v27 = 8 - (v11 & 3);
            }

            else
            {
              v27 = 4;
            }

            v28 = (v27 + v11) & 7;
            v124 = v28 == 0;
            v19 = *v128;
            v128 += 2;
            v29 = 16 - v28;
            if (v124)
            {
              v29 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v15 = v29 + v27;
            goto LABEL_101;
          }

LABEL_65:
          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          if ((v11 & 7) != 0)
          {
            v15 = 16 - (v11 & 7);
          }

          else
          {
            v15 = 8;
          }

          if (v12 <= 8)
          {
            v12 = 8;
          }

          goto LABEL_70;
        }
      }

      else
      {
        if (v10 <= 97)
        {
          if (v10 != 76)
          {
            if (v10 == 83)
            {
              v21 = 0;
              LODWORD(v22) = 0;
              v19 = 0;
              ++v128;
              if ((v11 & 3) != 0)
              {
                v15 = 132 - (v11 & 3);
              }

              else
              {
                v15 = 128;
              }

              v12 = 128;
              goto LABEL_104;
            }

            if (v10 != 97)
            {
              return 0;
            }

            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v23 = v128++;
            v24 = *v23;
            if (*v23)
            {
              if (*v24)
              {
                v25 = 1;
                v19 = 8;
                do
                {
                  v26 = v24[v25++];
                  v19 += 12;
                }

                while (v26);
LABEL_100:
                v21 = HIDWORD(v19);
LABEL_101:
                LODWORD(v22) = v19;
                goto LABEL_104;
              }

LABEL_99:
              v19 = 8;
              goto LABEL_100;
            }

            goto LABEL_81;
          }

          goto LABEL_65;
        }

        if (v10 <= 108)
        {
          if (v10 == 98)
          {
            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v31 = v128++;
            v32 = *v31;
            if (*v31)
            {
              if (*v32)
              {
                v33 = 1;
                v19 = 8;
                do
                {
                  v34 = v32[v33++];
                  v19 += 16;
                }

                while (v34);
                goto LABEL_100;
              }

              goto LABEL_99;
            }
          }

          else
          {
            if (v10 != 99)
            {
              return 0;
            }

            if ((v11 & 7) != 0)
            {
              v15 = 16 - (v11 & 7);
            }

            else
            {
              v15 = 8;
            }

            if (v12 <= 8)
            {
              v12 = 8;
            }

            v16 = v128++;
            v17 = *v16;
            if (*v16)
            {
              if (*v17)
              {
                v18 = 1;
                v19 = 8;
                do
                {
                  v20 = v17[v18++];
                  v19 += 24;
                }

                while (v20);
                goto LABEL_100;
              }

              goto LABEL_99;
            }
          }

          goto LABEL_81;
        }

        if (v10 != 109)
        {
          if (v10 != 115)
          {
            return 0;
          }

          if ((v11 & 7) != 0)
          {
            v15 = 16 - (v11 & 7);
          }

          else
          {
            v15 = 8;
          }

          if (v12 <= 8)
          {
            v12 = 8;
          }

          v30 = v128++;
          if (*v30)
          {
            v19 = strlen(*v30) + 1;
            goto LABEL_100;
          }

LABEL_81:
          v21 = 0;
          LODWORD(v22) = 0;
          v19 = 0;
          goto LABEL_104;
        }
      }

      v21 = 0;
      LODWORD(v22) = 0;
      v19 = 0;
      if ((v11 & 3) != 0)
      {
        v15 = 8 - (v11 & 3);
      }

      else
      {
        v15 = 4;
      }

      if (v12 <= 4)
      {
        v12 = 4;
      }

LABEL_70:
      ++v128;
LABEL_104:
      v14 += v15 + v19;
      v11 += v15;
      v40 = *++v13;
      v10 = v40;
      if (!v40)
      {
        goto LABEL_107;
      }
    }
  }

  v21 = 0;
  LODWORD(v22) = 0;
  v12 = 0;
  v11 = 0;
  v14 = 8;
LABEL_107:
  v41 = 8;
  if (v12 < 8)
  {
    v41 = v12;
  }

  v42 = *(align_64 + v41);
  if (v42 && v11 % v42)
  {
    v43 = v42 - (v11 % v42);
  }

  else
  {
    v43 = 0;
  }

  v44 = malloc_type_malloc(v43 + v14, 0x9E614304uLL);
  if (!v44)
  {
    v9 = 0;
    *__error() = 12;
    return v9;
  }

  v45 = 0;
  v46 = (v44 + v11 + v43);
  *v46 = 0x434947414D534C49;
  v47 = (v46 + 1);
  v127 = v42;
  v129 = &a9;
  v48 = v44;
  v126 = v44;
  while (1)
  {
    v49 = *v9;
    if (v49 <= 0x4B)
    {
      break;
    }

    if (*v9 > 0x61u)
    {
      if (*v9 <= 0x6Cu)
      {
        if (v49 == 98)
        {
          v104 = v45 & 7;
          if ((v45 & 7) != 0)
          {
            v105 = 8 - v104;
            bzero(v48, 8 - v104);
            v48 = (v48 + v105);
            v45 += v105;
          }

          v106 = v129++;
          v107 = *v106;
          if (v107)
          {
            v108 = 0;
            *v48 = v47;
            v109 = 1;
            do
            {
              v110 = v109;
              v111 = v107[v108++];
              ++v109;
            }

            while (v111);
            v58 = &v47[8 * v108];
            if (*v107)
            {
              v112 = &v47[8 * v110];
              v113 = 1;
              v114 = v107;
              do
              {
                *v47 = v112;
                v47 += 8;
                *v58 = **v114;
                v58 += 8;
                v114 = &v107[v113];
                v112 += 8;
                ++v113;
              }

              while (*v114);
              v22 = 8;
              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        else
        {
          if (v49 != 99)
          {
            goto LABEL_198;
          }

          v50 = v45 & 7;
          if ((v45 & 7) != 0)
          {
            v51 = 8 - v50;
            bzero(v48, 8 - v50);
            v48 = (v48 + v51);
            v45 += v51;
          }

          v52 = v129++;
          v53 = *v52;
          if (v53)
          {
            v54 = 0;
            *v48 = v47;
            v55 = 1;
            do
            {
              v56 = v55;
              v57 = v53[v54++];
              ++v55;
            }

            while (v57);
            v58 = &v47[8 * v54];
            if (*v53)
            {
              v59 = &v47[8 * v56];
              v60 = 1;
              v61 = v53;
              do
              {
                *v47 = v59;
                v47 += 8;
                *v58 = **v61;
                v58 += 16;
                v61 = &v53[v60];
                v59 += 16;
                ++v60;
              }

              while (*v61);
              v22 = 16;
              goto LABEL_194;
            }

            goto LABEL_193;
          }
        }

        goto LABEL_189;
      }

      if (v49 != 109)
      {
        if (v49 != 115)
        {
          goto LABEL_198;
        }

        v83 = v45 & 7;
        if ((v45 & 7) != 0)
        {
          v84 = 8 - v83;
          bzero(v48, 8 - v83);
          v48 = (v48 + v84);
          v45 += v84;
        }

        v85 = v129++;
        v86 = *v85;
        if (*v85)
        {
          *v48 = v47;
          v22 = strlen(v86) + 1;
          v21 = HIDWORD(v22);
          memcpy(v47, v86, v22);
          v47 += v22;
        }

        else
        {
          *v48 = 0;
        }

        goto LABEL_196;
      }

LABEL_163:
      v87 = v45 & 3;
      if ((v45 & 3) != 0)
      {
        v88 = 4 - v87;
        bzero(v48, 4 - v87);
        v48 = (v48 + v88);
        v45 += v88;
      }

      v89 = v129++;
      *v48 = *v89;
      v48 = (v48 + 4);
      v45 += 4;
      goto LABEL_198;
    }

    if (v49 == 76)
    {
LABEL_166:
      v90 = v45 & 7;
      if ((v45 & 7) != 0)
      {
        v91 = 8 - v90;
        bzero(v48, 8 - v90);
        v48 = (v48 + v91);
        v45 += v91;
      }

      v92 = v129++;
      *v48 = *v92;
      v48 = (v48 + 8);
      goto LABEL_197;
    }

    if (v49 != 83)
    {
      if (v49 != 97)
      {
        goto LABEL_198;
      }

      v72 = v45 & 7;
      if ((v45 & 7) != 0)
      {
        v73 = 8 - v72;
        bzero(v48, 8 - v72);
        v48 = (v48 + v73);
        v45 += v73;
      }

      v74 = v129++;
      v75 = *v74;
      if (v75)
      {
        v76 = 0;
        *v48 = v47;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = v75[v76++];
          ++v77;
        }

        while (v79);
        v58 = &v47[8 * v76];
        if (*v75)
        {
          v80 = &v47[8 * v78];
          v81 = 1;
          v82 = v75;
          do
          {
            *v47 = v80;
            v47 += 8;
            *v58 = **v82;
            v58 += 4;
            v82 = &v75[v81];
            v80 += 4;
            ++v81;
          }

          while (*v82);
          v22 = 4;
LABEL_194:
          v115 = v47;
          v21 = HIDWORD(v22);
          v47 = v58;
LABEL_195:
          *v115 = 0;
LABEL_196:
          v48 = (v48 + 8);
LABEL_197:
          v45 += 8;
          goto LABEL_198;
        }

LABEL_193:
        v22 = v22 | (v21 << 32);
        goto LABEL_194;
      }

LABEL_189:
      v115 = v48;
      goto LABEL_195;
    }

    v116 = v45 & 3;
    if ((v45 & 3) != 0)
    {
      v117 = 4 - v116;
      bzero(v48, 4 - v116);
      v48 = (v48 + v117);
      v45 += v117;
    }

    v118 = v129++;
    v119 = *v118;
    v120 = v119[4];
    v132 = v119[5];
    v133 = v119[6];
    v134 = v119[7];
    v121 = *v119;
    v131 = v119[1];
    v122 = v119[3];
    v48[2] = v119[2];
    v48[3] = v122;
    *v48 = v121;
    v48[1] = v131;
    v48[6] = v133;
    v48[7] = v134;
    v48[4] = v120;
    v48[5] = v132;
    v48 += 8;
    v45 += 128;
LABEL_198:
    ++v9;
  }

  if (*v9 > 0x33u)
  {
    switch(v49)
    {
      case '4':
        goto LABEL_163;
      case '8':
        goto LABEL_166;
      case '@':
        v63 = v45 & 3;
        if ((v45 & 3) != 0)
        {
          v64 = 4 - v63;
          bzero(v48, 4 - v63);
          v48 = (v48 + v64);
          v45 += v64;
        }

        v65 = v129;
        v130 = v129 + 1;
        v22 = *v65;
        *v48 = v22;
        v66 = (v48 + 4);
        v67 = v45 + 4;
        v68 = (v45 + 4) & 7;
        if (v68)
        {
          v69 = 8 - v68;
          bzero(v66, 8 - v68);
          v66 = (v66 + v69);
          v67 += v69;
        }

        v70 = v130;
        v129 = v130 + 1;
        v71 = *v70;
        if (*v70)
        {
          *v66 = v47;
          memcpy(v47, v71, v22);
          v47 += v22;
        }

        else
        {
          *v66 = 0;
        }

        v21 = 0;
        v48 = v66 + 1;
        v45 = v67 + 8;
        break;
    }

    goto LABEL_198;
  }

  if (*v9 > 0x30u)
  {
    if (v49 == 49)
    {
      v103 = v129++;
      *v48 = *v103;
      v48 = (v48 + 1);
    }

    else if (v49 == 50)
    {
      if (v45)
      {
        *v48 = 0;
        v48 = (v48 + 1);
        ++v45;
      }

      v62 = v129++;
      *v48 = *v62;
      v48 = (v48 + 2);
      v45 += 2;
    }

    goto LABEL_198;
  }

  if (v49 == 42)
  {
    v93 = v45 & 7;
    if ((v45 & 7) != 0)
    {
      v94 = 8 - v93;
      bzero(v48, 8 - v93);
      v48 = (v48 + v94);
      v45 += v94;
    }

    v95 = v129++;
    v96 = *v95;
    *v48 = v47;
    if (v96)
    {
      v97 = 0;
        ;
      }

      v99 = &v47[8 * v97];
      if (*v96)
      {
        v100 = 1;
        v101 = v96;
        do
        {
          *v47 = v99;
          v47 += 8;
          v102 = *v101;
          v22 = strlen(*v101) + 1;
          memcpy(v99, v102, v22);
          v99 += v22;
          v101 = &v96[v100++];
        }

        while (*v101);
      }

      else
      {
        v22 = v22 | (v21 << 32);
      }
    }

    else
    {
      v99 = v47 + 8;
      v22 = v22 | (v21 << 32);
    }

    v21 = HIDWORD(v22);
    *v47 = 0;
    v48 = (v48 + 8);
    v45 += 8;
    v47 = v99;
    goto LABEL_198;
  }

  if (*v9)
  {
    goto LABEL_198;
  }

  if (!v127)
  {
    return v126;
  }

  v123 = v45 % v127;
  if (v45 % v127)
  {
    v124 = v127 == v123;
  }

  else
  {
    v124 = 1;
  }

  v9 = v126;
  if (!v124)
  {
    bzero(v48, (v127 - v123));
  }

  return v9;
}

void LI_set_thread_item(uint64_t a1, atomic_uint *a2)
{
  thread_info = LI_get_thread_info(a1);
  if (thread_info)
  {
    v5 = thread_info;
    si_item_release(*thread_info, v4);
    *v5 = a2;
  }
}

unsigned int *LI_get_thread_info(int a1)
{
  pthread_once(&_info_key_initialized, _LI_data_init);
  if (_info_key_ok != 1)
  {
    return 0;
  }

  v2 = pthread_getspecific(_info_key);
  if (!v2)
  {
    result = malloc_type_calloc(1uLL, 0x18uLL, 0x1090040D449AA06uLL);
    if (!result)
    {
      return result;
    }

    v2 = result;
    pthread_setspecific(_info_key, result);
  }

  v4 = *v2;
  if (v4)
  {
    v5 = 0;
    while (*(*(v2 + 1) + 4 * v5) != a1)
    {
      if (v4 == ++v5)
      {
        *(v2 + 1) = reallocf(*(v2 + 1), 4 * (v4 + 1));
        v6 = reallocf(*(v2 + 2), 8 * (v4 + 1));
        goto LABEL_12;
      }
    }

    return *(*(v2 + 2) + 8 * v5);
  }

  else
  {
    *(v2 + 1) = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
LABEL_12:
    *(v2 + 2) = v6;
    if (*(v2 + 1))
    {
      if (v6)
      {
        result = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
        if (result)
        {
          v7 = *(v2 + 2);
          *(*(v2 + 1) + 4 * v4) = a1;
          *(v7 + 8 * v4) = result;
          ++*v2;
        }

        return result;
      }

      free(*(v2 + 1));
      v6 = *(v2 + 2);
    }

    *(v2 + 1) = 0;
    if (v6)
    {
      free(v6);
    }

    result = 0;
    *(v2 + 2) = 0;
  }

  return result;
}

char *__cdecl ether_ntoa(const ether_addr *a1)
{
  result = ether_ntoa_s;
  if (ether_ntoa_s || (result = malloc_type_malloc(0x12uLL, 0x100004077774924uLL), (ether_ntoa_s = result) != 0))
  {
    *result = 0;
    snprintf(result, 0x12uLL, "%x:%x:%x:%x:%x:%x", a1->octet[0], a1->octet[1], a1->octet[2], a1->octet[3], a1->octet[4], a1->octet[5]);
    return ether_ntoa_s;
  }

  return result;
}

passwd *__cdecl getpwuid(uid_t a1)
{
  v2 = _os_feature_enabled_simple_impl();
  if (a1 > 0x1F3 || !v2)
  {
LABEL_14:
    v9 = si_search_search;
    if (!si_search_search)
    {
      v9 = si_module_with_name("search");
      si_search_search = v9;
    }

    v4 = si_user_byuid(v9);
    goto LABEL_17;
  }

  v3 = si_search_cache_file_search;
  if (!si_search_cache_file_search)
  {
    v3 = si_module_with_name("cache_file");
    si_search_cache_file_search = v3;
  }

  v4 = si_user_byuid(v3);
  if (!v4)
  {
    v5 = si_search_file_search;
    if (!si_search_file_search)
    {
      v5 = si_module_with_name("file");
      si_search_file_search = v5;
    }

    v6 = si_user_byuid(v5);
    if (v6)
    {
      v4 = v6;
      v7 = si_search_cache_file_search;
      if (!si_search_cache_file_search)
      {
        v7 = si_module_with_name("cache_file");
        si_search_cache_file_search = v7;
      }

      v8 = si_search_file_search;
      if (!si_search_file_search)
      {
        v8 = si_module_with_name("file");
        si_search_file_search = v8;
      }

      si_cache_add_item(v7, v8, v4);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  LI_set_thread_item(201, v4);
  if (v4)
  {
    return (v4 + 32);
  }

  else
  {
    return 0;
  }
}

int getgrgid_r(gid_t a1, group *a2, char *a3, size_t a4, group **a5)
{
  if (a5)
  {
    *a5 = 0;
    LODWORD(v7) = 34;
    if (a2)
    {
      if (a3)
      {
        v9 = a4;
        if (a4)
        {
          v10 = si_search_search;
          if (!si_search_search)
          {
            v10 = si_module_with_name("search");
            si_search_search = v10;
          }

          v7 = si_group_bygid(v10);
          if (v7)
          {
            v11 = v7;
            v12 = copy_group_r(v7 + 32, a2, a3, v9);
            si_item_release(v11, v13);
            if (v12)
            {
              LODWORD(v7) = 34;
            }

            else
            {
              LODWORD(v7) = 0;
              *a5 = a2;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 34;
  }

  return v7;
}

uint64_t si_group_bygid(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 56)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t copy_group_r(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a1;
  if (v8)
  {
    v9 = strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    v9 += strlen(v11) + 1;
  }

  v12 = v9 + 8;
  v13 = *(a1 + 24);
  if (v13 && (v14 = *v13) != 0)
  {
    v15 = 0;
    v16 = v13 + 1;
    do
    {
      v17 = v15;
      v12 += strlen(v14) + 9;
      ++v15;
      v14 = v16[v17];
    }

    while (v14);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v12 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  if (*a1)
  {
    *a2 = a3;
    v18 = strlen(*a1) + 1;
    memmove(a3, *a1, v18);
    a3 = (a3 + v18);
  }

  *(a2 + 8) = 0;
  if (*(a1 + 8))
  {
    *(a2 + 8) = a3;
    v19 = strlen(*(a1 + 8)) + 1;
    memmove(a3, *(a1 + 8), v19);
    a3 = (a3 + v19);
  }

  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  if (*(a1 + 24))
  {
    *(a2 + 24) = a3;
    if (v15)
    {
      v20 = 0;
      v21 = &a3[(v15 + 1)];
      v22 = 8 * v15;
      do
      {
        a3[v20 / 8] = v21;
        v23 = strlen(*(*(a1 + 24) + v20)) + 1;
        memmove(v21, *(*(a1 + 24) + v20), v23);
        v21 = (v21 + v23);
        v20 += 8;
      }

      while (v22 != v20);
      a3 = (a3 + v20);
    }
  }

  result = 0;
  *a3 = 0;
  return result;
}

passwd *__cdecl getpwnam(const char *a1)
{
  v1 = si_search_search;
  if (!si_search_search)
  {
    v1 = si_module_with_name("search");
    si_search_search = v1;
  }

  v2 = si_user_byname(v1);
  LI_set_thread_item(101, v2);
  if (v2)
  {
    return (v2 + 32);
  }

  else
  {
    return 0;
  }
}

void *si_module_with_name(char *__s1)
{
  if (si_module_with_name_modules)
  {
    v2 = &si_module_with_name_modules;
    if (!strcmp(__s1, si_module_with_name_modules))
    {
LABEL_5:
      v4 = v2[2];
      if (v4)
      {
        return v4;
      }

      v4 = (v2[1])();
      v2[2] = v4;
      if (v4)
      {
        return v4;
      }
    }

    else
    {
      while (1)
      {
        v3 = v2[3];
        if (!v3)
        {
          break;
        }

        v2 += 3;
        if (!strcmp(__s1, v3))
        {
          goto LABEL_5;
        }
      }
    }
  }

  pthread_mutex_lock(&module_mutex);
  v9 = 0;
  asprintf(&v9, "%s/%s.%s", "/usr/lib/info", __s1, "so");
  if (v9)
  {
    v4 = si_module_with_path(v9, __s1);
    free(v9);
    if (v4)
    {
      v5 = module_count;
      v6 = module_count + 1;
      v7 = reallocf(module_list, 8 * (module_count + 1));
      module_list = v7;
      if (v7)
      {
        v7[v5] = v4;
        module_count = v6;
      }
    }
  }

  else
  {
    v4 = 0;
    *__error() = 12;
  }

  pthread_mutex_unlock(&module_mutex);
  return v4;
}

uint64_t *si_module_static_search()
{
  if (si_module_static_search_once != -1)
  {
    si_module_static_search_cold_1();
  }

  if (si_module_static_search_result)
  {
    return 0;
  }

  else
  {
    return &si_module_static_search_si;
  }
}

void __si_module_static_search_block_invoke()
{
  si_module_static_search_si = strdup("search");
  v0 = malloc_type_calloc(1uLL, 0x1B8uLL, 0x10B00409E57A33FuLL);
  qword_1ED407660 = v0;
  if (si_module_config_modules_for_category(v0, 0, 6u, off_1E7505F38))
  {
    free(si_module_static_search_si);
    si_module_static_search_si = 0;
    free(v0);
    qword_1ED407660 = 0;
    si_module_static_search_result = 1;
    return;
  }

  v0[54] = **v0;
  v1 = getenv("SYSINFO_CONF_ENABLE");
  if (v1)
  {
    if (*v1 == 49 && !v1[1])
    {
      v2 = fopen("/etc/sysinfo.conf", "r");
      *__error() = 0;
      if (v2)
      {
        line = _fsi_get_line(v2, v3, v4, v5, v6, v7, v8, v9);
        if (!line)
        {
LABEL_46:
          fclose(v2);
          return;
        }

        v11 = line;
        while (*v11 == 35)
        {
LABEL_45:
          free(v11);
          v11 = _fsi_get_line(v2, v15, v16, v17, v18, v19, v20, v21);
          if (!v11)
          {
            goto LABEL_46;
          }
        }

        v22 = 0;
        v12 = _fsi_tokenize(v11, "\t: ", 0, &v22);
        v13 = *v12;
        if (!strcmp(*v12, "default"))
        {
          v14 = 0;
        }

        else if (!strcmp(v13, "user"))
        {
          v14 = 1;
        }

        else if (!strcmp(v13, "group"))
        {
          v14 = 2;
        }

        else if (!strcmp(v13, "grouplist"))
        {
          v14 = 3;
        }

        else if (!strcmp(v13, "netgroup"))
        {
          v14 = 4;
        }

        else if (!strcmp(v13, "alias"))
        {
          v14 = 5;
        }

        else if (!strcmp(v13, "host"))
        {
          v14 = 6;
        }

        else if (!strcmp(v13, "network"))
        {
          v14 = 8;
        }

        else if (!strcmp(v13, "service"))
        {
          v14 = 9;
        }

        else if (!strcmp(v13, "protocol"))
        {
          v14 = 10;
        }

        else if (!strcmp(v13, "rpc"))
        {
          v14 = 11;
        }

        else if (*v13 == 102 && v13[1] == 115 && !v13[2])
        {
          v14 = 12;
        }

        else if (!strcmp(v13, "mac"))
        {
          v14 = 13;
        }

        else if (!strcmp(v13, "addrinfo"))
        {
          v14 = 15;
        }

        else
        {
          if (strcmp(v13, "nameinfo"))
          {
LABEL_44:
            free(v12);
            goto LABEL_45;
          }

          v14 = 14;
        }

        si_module_config_modules_for_category(v0, v14, v22, v12);
        goto LABEL_44;
      }
    }
  }
}

uint64_t si_module_config_modules_for_category(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a1 + 24 * a2;
  v5 = a3 - 1;
  *(v4 + 16) = v5;
  if (a3 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  *v4 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
  v8 = malloc_type_calloc(*(v4 + 16), 4uLL, 0x100004052888210uLL);
  *(v4 + 8) = v8;
  if (*v4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    free(*v4);
    free(*(v4 + 8));
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 2)
  {
    v11 = 0;
    v12 = a3;
    v13 = (a4 + 8);
    v14 = v12 - 1;
    do
    {
      v15 = si_module_with_name(*v13);
      if (v15)
      {
        *(*v4 + 8 * v11++) = v15;
        if (!strcmp(*v13, "cache"))
        {
          *(v4 + 20) |= 1u;
        }
      }

      ++v13;
      --v14;
    }

    while (v14);
  }

  return 0;
}

uint64_t si_module_cache_byname(uint64_t a1, dispatch_once_t *predicate, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __si_module_cache_byname_block_invoke;
  v5[3] = &__block_descriptor_tmp;
  v5[4] = a1;
  v5[5] = a3;
  if (*predicate != -1)
  {
    dispatch_once(predicate, v5);
  }

  return a1;
}

uint64_t __si_module_cache_byname_block_invoke(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10E0uLL, 0x1020040EDEB21B6uLL);
  v3 = 0;
  **(a1 + 32) = strdup(*(a1 + 40));
  v4 = *(a1 + 32);
  *(v4 + 8) = 0x100000001;
  *(v4 + 16) = 1;
  *(v4 + 32) = v2;
  *(*(a1 + 32) + 40) = &si_module_cache_byname_cache_vtable;
  do
  {
    v5 = 20;
    do
    {
      result = pthread_mutex_init(&v2[240 * v3], 0);
      --v5;
    }

    while (v5);
    ++v3;
  }

  while (v3 != 18);
  return result;
}

uint64_t *si_module_static_darwin_directory()
{
  if ((_os_feature_enabled_simple_impl() & 1) == 0)
  {
    qword_1ED407470 = 0;
    xmmword_1ED407450 = 0u;
    unk_1ED407460 = 0u;
    xmmword_1ED407430 = 0u;
    unk_1ED407440 = 0u;
    xmmword_1ED407410 = 0u;
    unk_1ED407420 = 0u;
    xmmword_1ED4073F0 = 0u;
    unk_1ED407400 = 0u;
    xmmword_1ED4073D0 = 0u;
    unk_1ED4073E0 = 0u;
    xmmword_1ED4073B0 = 0u;
    unk_1ED4073C0 = 0u;
    xmmword_1ED407390 = 0u;
    unk_1ED4073A0 = 0u;
    xmmword_1ED407370 = 0u;
    unk_1ED407380 = 0u;
    xmmword_1ED407350 = 0u;
    *&off_1ED407360 = 0u;
    xmmword_1ED407330 = 0u;
    *&off_1ED407340 = 0u;
    si_module_static_darwin_directory_darwin_directory_vtable = 0u;
    *&off_1ED407320 = 0u;
  }

  if (si_module_static_darwin_directory_once != -1)
  {
    si_module_static_darwin_directory_cold_1();
  }

  return &si_module_static_darwin_directory_si;
}

char *__si_module_static_darwin_directory_block_invoke()
{
  result = strdup("darwin_directory");
  si_module_static_darwin_directory_si = result;
  return result;
}

uint64_t *si_module_static_muser(uint64_t a1, uint64_t a2)
{
  if (si_module_static_muser_once != -1)
  {
    si_module_static_muser_cold_1();
  }

  return &si_module_static_muser_si;
}

unsigned int if_nametoindex(const char *a1)
{
  v7 = 0;
  if (getifaddrs(&v7) < 0)
  {
    return 0;
  }

  v2 = v7;
  if (!v7)
  {
LABEL_8:
    freeifaddrs(v2);
LABEL_9:
    v5 = 0;
    *__error() = 6;
    return v5;
  }

  v3 = v7;
  while (1)
  {
    ifa_addr = v3->ifa_addr;
    if (ifa_addr)
    {
      if (ifa_addr->sa_family == 18 && !strcmp(v3->ifa_name, a1))
      {
        break;
      }
    }

    v3 = v3->ifa_next;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v5 = *ifa_addr->sa_data;
  freeifaddrs(v2);
  if (!v5)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t __si_module_static_muser_block_invoke()
{
  si_module_static_muser_si = strdup("muser");
  result = xpc_user_sessions_enabled();
  if (!result || (result = xpc_user_sessions_get_session_uid(), result))
  {
    qword_1ED407480 = muser_is_valid;
  }

  return result;
}

int getifaddrs(ifaddrs **a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  *v62 = xmmword_19A0D6A80;
  v63 = 3;
  if ((sysctl(v62, 6u, 0, &v61, 0, 0) & 0x80000000) == 0)
  {
    v2 = v61;
    if (v61 <= 0x800)
    {
      v2 = 2048;
    }

    v3 = 2 * v2;
    if (v3 >= 0x1000000)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = v3;
    }

    v61 = v4;
    while (1)
    {
      v5 = malloc_type_malloc(v4, 0xE368AB60uLL);
      if (!v5)
      {
        return -1;
      }

      v6 = v5;
      if ((sysctl(v62, 6u, v5, &v61, 0, 0) & 0x80000000) == 0)
      {
        break;
      }

      free(v6);
      v4 = 2 * v61;
      v61 = v4;
      if (v4 >= 0x1000001)
      {
        *__error() = 55;
        return -1;
      }
    }

    if (v61 < 1)
    {
      v10 = 0;
      v9 = 0;
      v11 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 1;
      v12 = v6;
      do
      {
        if (BYTE2(v12->ifa_next) == 5)
        {
          v13 = BYTE3(v12->ifa_next);
          if (v13 == 12)
          {
            if (v8)
            {
              if (WORD2(v12->ifa_name) != v8)
              {
LABEL_112:
                abort();
              }

              v14 = HIDWORD(v12->ifa_next) & 0xA4;
              if (v14)
              {
                v15 = 0;
                v16 = &v12->ifa_flags + 1;
                ++v11;
                v17 = &v12->ifa_flags + 1;
                do
                {
                  if ((v14 >> v15))
                  {
                    if (*v17)
                    {
                      v18 = (*v17 + 3) & 0x1FC;
                    }

                    else
                    {
                      v18 = 4;
                    }

                    if (v15 == 5)
                    {
                      goto LABEL_32;
                    }

                    v17 += v18;
                  }

                  ++v15;
                }

                while (v15 != 8);
                LODWORD(v18) = 0;
LABEL_32:
                for (i = 0; i != 8; ++i)
                {
                  if ((v14 >> i))
                  {
                    v20 = *v16;
                    v21 = v20 == 0;
                    if (*v16)
                    {
                      v22 = (v20 + 3) & 0x1FC;
                    }

                    else
                    {
                      v22 = 4;
                    }

                    if (!v21 || i != 2)
                    {
                      v24 = v22;
                    }

                    else
                    {
                      v24 = v18;
                    }

                    v10 += v24;
                    v16 += v22;
                  }
                }
              }
            }
          }

          else if (v13 == 14)
          {
            if ((BYTE4(v12->ifa_next) & 0x10) != 0)
            {
              v8 = WORD2(v12->ifa_name);
              ++v11;
              if (LOBYTE(v12[2].ifa_next))
              {
                v25 = ((LOBYTE(v12[2].ifa_next) + 3) & 0x1FC) + 7;
              }

              else
              {
                v25 = 11;
              }

              v10 += v25 + 96;
              v9 += BYTE5(v12[2].ifa_next) + 1;
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v12 = (v12 + LOWORD(v12->ifa_next));
      }

      while (v12 < (v6 + v61));
    }

    if (v10 + v11 + v9 == 1)
    {
      *a1 = 0;
      v26 = v6;
      goto LABEL_100;
    }

    v27 = v10;
    v28 = malloc_type_malloc(v10 + 56 * v11 + v9, 0x10B0040815C8216uLL);
    if (v28)
    {
      v29 = v28;
      v57 = a1;
      v30 = v11;
      bzero(v28, v30 * 56);
      v31 = v29;
      if (v61 >= 1)
      {
        v32 = 0;
        v33 = 0;
        v34 = &v29[v30];
        v35 = &v29[v30] + v27;
        v36 = v6;
        v31 = v29;
        do
        {
          if (BYTE2(v36->ifa_next) == 5)
          {
            v37 = BYTE3(v36->ifa_next);
            if (v37 == 12)
            {
              if (v32)
              {
                if (WORD2(v36->ifa_name) != v32)
                {
                  goto LABEL_112;
                }

                v38 = HIDWORD(v36->ifa_next) & 0xA4;
                if (v38)
                {
                  v60 = v32;
                  v39 = 0;
                  v31->ifa_name = v33->ifa_name;
                  v58 = v33;
                  v59 = v35;
                  v31->ifa_flags = v33->ifa_flags;
                  v31->ifa_data = 0;
                  v40 = &v36->ifa_flags + 1;
                  v41 = &v36->ifa_flags + 1;
                  do
                  {
                    if ((v38 >> v39))
                    {
                      if (*v41)
                      {
                        v42 = (*v41 + 3) & 0x1FC;
                      }

                      else
                      {
                        v42 = 4;
                      }

                      if (v39 == 5)
                      {
                        goto LABEL_75;
                      }

                      v41 += v42;
                    }

                    ++v39;
                  }

                  while (v39 != 8);
                  v42 = 0;
LABEL_75:
                  v43 = 0;
                  while (2)
                  {
                    if (((1 << v43) & 0xA4 & HIDWORD(v36->ifa_next)) != 0)
                    {
                      v44 = *v40;
                      v45 = v44 + 3;
                      v46 = (v44 + 3) & 0x1FC;
                      if (*v40)
                      {
                        v47 = v45 & 0x1FC;
                      }

                      else
                      {
                        v47 = 4;
                      }

                      switch(v43)
                      {
                        case 2:
                          v31->ifa_netmask = v34;
                          if (v44)
                          {
                            memcpy(v34, v40, v45 & 0x1FC);
                            v34 = (v34 + v46);
                          }

                          else
                          {
                            bzero(v34, v42);
                            v34 = (v34 + v42);
                          }

                          break;
                        case 7:
                          v31->ifa_dstaddr = v34;
LABEL_85:
                          memcpy(v34, v40, v47);
                          v34 = (v34 + v47);
                          break;
                        case 5:
                          v31->ifa_addr = v34;
                          goto LABEL_85;
                      }

                      v40 += v47;
                    }

                    if (++v43 == 8)
                    {
                      v33 = v58;
                      v35 = v59;
                      goto LABEL_96;
                    }

                    continue;
                  }
                }
              }
            }

            else if (v37 == 14)
            {
              if ((BYTE4(v36->ifa_next) & 0x10) != 0)
              {
                v60 = WORD2(v36->ifa_name);
                v31->ifa_name = v35;
                v31->ifa_flags = v36->ifa_name;
                memcpy(v35, &v36[2].ifa_name, BYTE5(v36[2].ifa_next));
                v35[BYTE5(v36[2].ifa_next)] = 0;
                v35 += BYTE5(v36[2].ifa_next) + 1;
                v31->ifa_addr = v34;
                memcpy(v34, &v36[2], LOBYTE(v36[2].ifa_next));
                if (LOBYTE(v36[2].ifa_next))
                {
                  v48 = (LOBYTE(v36[2].ifa_next) + 3) & 0x1FC;
                }

                else
                {
                  v48 = 4;
                }

                v49 = (&v34->sa_data[v48 + 5] & 0xFFFFFFFFFFFFFFF8);
                v31->ifa_data = v49;
                v50 = *&v36->ifa_data;
                v51 = *&v36[1].ifa_name;
                v52 = *&v36[1].ifa_dstaddr;
                *(v49 + 4) = *&v36[1].ifa_addr;
                *(v49 + 5) = v52;
                *(v49 + 2) = v50;
                *(v49 + 3) = v51;
                v53 = *&v36->ifa_netmask;
                *v49 = *&v36->ifa_flags;
                *(v49 + 1) = v53;
                v34 = (v49 + 96);
                v33 = v31;
LABEL_96:
                v31->ifa_next = v31 + 1;
                ++v31;
                v32 = v60;
              }

              else
              {
                v32 = 0;
              }
            }
          }

          v36 = (v36 + LOWORD(v36->ifa_next));
        }

        while (v36 < (v6 + v61));
      }

      free(v6);
      if (&v31[-1] >= v29)
      {
        v31[-1].ifa_next = 0;
        *v57 = v29;
        do
        {
          ifa_addr = v29->ifa_addr;
          if (ifa_addr->sa_family == 30 && ifa_addr->sa_data[6] == 254)
          {
            v55 = ifa_addr->sa_data[7];
            if ((v55 & 0xC0) == 0x80 || v55 >= 0xC0)
            {
              v56 = *&ifa_addr->sa_data[8];
              *&ifa_addr->sa_data[8] = 0;
              if (!*&ifa_addr[1].sa_data[6])
              {
                *&ifa_addr[1].sa_data[6] = __rev16(v56);
              }
            }
          }

          v29 = v29->ifa_next;
        }

        while (v29);
        return 0;
      }

      *v57 = 0;
      v26 = v29;
LABEL_100:
      free(v26);
      return 0;
    }

    free(v6);
  }

  return -1;
}

uint64_t si_search_module_set_flags(char *__s1, int a2)
{
  v4 = si_search_search;
  if (!si_search_search)
  {
    v4 = si_module_with_name("search");
    si_search_search = v4;
  }

  return search_set_flags(v4, __s1, a2);
}

uint64_t *si_module_static_mdns()
{
  if (si_module_static_mdns_once != -1)
  {
    si_module_static_mdns_cold_1();
  }

  return &si_module_static_mdns_si;
}

char *__si_module_static_mdns_block_invoke()
{
  si_module_static_mdns_si = strdup("mdns");
  pthread_atfork(_mdns_atfork_prepare, _mdns_atfork_parent, _mdns_atfork_child);
  result = issetugid();
  if (!result)
  {
    result = getenv("RES_DEBUG");
    if (result)
    {
      _mdns_debug = 1;
    }
  }

  return result;
}

uint64_t *si_module_static_file(uint64_t a1, uint64_t a2)
{
  if (si_module_static_file_once != -1)
  {
    si_module_static_file_cold_1();
  }

  return &si_module_static_file_si;
}

char *__si_module_static_file_block_invoke()
{
  si_module_static_file_si = strdup("file");
  result = malloc_type_calloc(1uLL, 0x50uLL, 0x1020040207AA8A1uLL);
  if (result)
  {
    *&v1 = -1;
    *(&v1 + 1) = -1;
    *(result + 36) = v1;
    *(result + 20) = v1;
    *(result + 4) = v1;
    *result = 416;
  }

  qword_1ED4076A0 = result;
  return result;
}

_BYTE *muser_user_byuid(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x1F5)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "uid");
  xpc_dictionary_set_int64(v5, "query", a2);
  v6 = _muser_call("getpwuid", v5);
  if (v6)
  {
    v7 = v6;
    user = _muser_extract_user(a1, v6);
    xpc_release(v7);
  }

  else
  {
    user = 0;
  }

  xpc_release(v5);
  return user;
}

uint64_t ___muser_xpc_pipe_block_invoke()
{
  multiuser_flags = 0;
  v0 = getenv("XBS_DISABLE_LIBINFO");
  result = issetugid();
  if (v0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2 || (result = strcmp(v0, "YES"), result))
  {
    v3 = MEMORY[0x19A8FC650](result);
    result = host_get_multiuser_config_flags(v3, &multiuser_flags);
    if (result || multiuser_flags >> 30)
    {
      return pthread_atfork(_muser_fork_prepare, _muser_fork_parent, _muser_fork_child);
    }
  }

  _si_muser_disabled = 1;
  return result;
}

void **_fsi_get_user(uint64_t a1, const char *a2, int a3, int a4)
{
  if (!a2 && a4 == 1)
  {
    return 0;
  }

  v45 = 0;
  v46 = 0;
  v44 = geteuid();
  if (v44)
  {
    v8 = "/etc/passwd";
    v9 = fopen("/etc/passwd", "r");
    v10 = a1;
    v11 = 0;
  }

  else
  {
    v8 = "/etc/master.passwd";
    v9 = fopen("/etc/master.passwd", "r");
    v10 = a1;
    v11 = 1;
  }

  _fsi_get_validation(v10, v11, v8, v9, &v46, &v45);
  if (!v9)
  {
    return 0;
  }

  line = _fsi_get_line(v9, v12, v13, v14, v15, v16, v17, v18);
  if (!line)
  {
    v42 = 0;
    goto LABEL_30;
  }

  v20 = line;
  v42 = 0;
  if (v44)
  {
    v21 = 7;
  }

  else
  {
    v21 = 10;
  }

  v43 = v21;
  while (*v20 == 35)
  {
LABEL_19:
    free(v20);
LABEL_20:
    v20 = _fsi_get_line(v9, v25, v26, v27, v28, v29, v30, v31);
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  v47[0] = 0;
  v22 = _fsi_tokenize(v20, ":", 1, v47);
  v23 = v22;
  if (v47[0] != v21)
  {
    goto LABEL_18;
  }

  v24 = atoi(v22[2]);
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 2)
  {
    if (v24 == a3)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (a4 != 1 || strcmp(a2, *v23))
  {
LABEL_18:
    free(v23);
    goto LABEL_19;
  }

LABEL_23:
  if (!v44)
  {
    atoi(v23[5]);
    atoi(v23[6]);
  }

  atoi(v23[3]);
  v39 = LI_ils_create("L4488ss44LssssL", v32, v33, v34, v35, v36, v37, v38, a1);
  free(v23);
  free(v20);
  v21 = v43;
  if (!v39)
  {
    goto LABEL_20;
  }

  if (!a4)
  {
    v42 = si_list_add(v42, v39);
    si_item_release(v39, v40);
    goto LABEL_20;
  }

  v42 = v39;
LABEL_30:
  fclose(v9);
  return v42;
}

BOOL si_module_allows_caching(_BOOL8 result)
{
  if (result)
  {
    return *(*(result + 40) + 8) != 0;
  }

  return result;
}

uint64_t _LI_data_init()
{
  result = pthread_key_create(&_info_key, _LI_data_free);
  if (!result)
  {
    _info_key_ok = 1;
  }

  return result;
}

uint64_t search_set_flags(uint64_t result, char *__s1, int a3)
{
  if (result)
  {
    v3 = *(result + 32);
    if (v3)
    {
      v4 = *(v3 + 4);
      if (v4)
      {
        v7 = 0;
        v8 = *v3;
        while (1)
        {
          v9 = *(v8 + 8 * v7);
          if (v9)
          {
            if (*v9)
            {
              result = strcmp(__s1, *v9);
              if (!result)
              {
                break;
              }
            }
          }

          if (v4 == ++v7)
          {
            return result;
          }
        }

        *(v3[1] + 4 * v7) = a3;
      }
    }
  }

  return result;
}

_BYTE *muser_user_byname(uint64_t a1, const char *a2)
{
  if (*a2 == 95)
  {
    return 0;
  }

  if (!_muser_available())
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  xpc_dictionary_set_string(v4, "reqtype", "username");
  xpc_dictionary_set_string(v5, "query", a2);
  v6 = _muser_call("getpwnam", v5);
  if (v6)
  {
    v7 = v6;
    user = _muser_extract_user(a1, v6);
    xpc_release(v7);
  }

  else
  {
    user = 0;
  }

  xpc_release(v5);
  return user;
}

void _LI_data_free(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = a1[2];
        v6 = *(v5 + 8 * i);
        if (v6)
        {
          si_item_release(*v6, a2);
          si_list_release(*(v6 + 8), v7);
          free(v6);
          v5 = a1[2];
          v3 = *a1;
        }

        *(v5 + 8 * i) = 0;
      }
    }

    v8 = a1[1];
    if (v8)
    {
      free(v8);
    }

    a1[1] = 0;
    v9 = a1[2];
    if (v9)
    {
      free(v9);
    }

    free(a1);
  }
}

_BYTE *muser_group_bygid(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x1F4 || (group = 0, a2 - 250 <= 0x31) && ((1 << (a2 + 6)) & 0x2001000000001) != 0)
  {
    if (_muser_available() && (v5 = xpc_dictionary_create(0, 0, 0)) != 0)
    {
      v6 = v5;
      xpc_dictionary_set_string(v5, "reqtype", "gid");
      xpc_dictionary_set_int64(v6, "query", a2);
      v7 = _muser_call("getgrgid", v6);
      if (v7)
      {
        v8 = v7;
        group = _muser_extract_group(a1, v7);
        xpc_release(v8);
      }

      else
      {
        group = 0;
      }

      xpc_release(v6);
    }

    else
    {
      return 0;
    }
  }

  return group;
}

void si_list_release(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    add = atomic_fetch_add(a1, 0xFFFFFFFF);
    if (add <= 0)
    {
      si_list_release_cold_1();
    }

    if (add == 1)
    {
      if (*(a1 + 4))
      {
        v4 = 0;
        do
        {
          si_item_release(*(*(a1 + 16) + 8 * v4++), a2);
        }

        while (v4 < *(a1 + 4));
      }

      free(*(a1 + 16));

      free(a1);
    }
  }
}

int getaddrinfo(const char *a1, const char *a2, const addrinfo *a3, addrinfo **a4)
{
  v19 = 0;
  if (!a4)
  {
    return 0;
  }

  *a4 = 0;
  if (!a3)
  {
    ai_protocol = 0;
    ai_socktype = 0;
    ai_family = 0;
LABEL_7:
    ai_flags = 1536;
    goto LABEL_8;
  }

  ai_socktype = a3->ai_socktype;
  ai_protocol = a3->ai_protocol;
  ai_flags = a3->ai_flags;
  ai_family = a3->ai_family;
  if (!ai_flags)
  {
    goto LABEL_7;
  }

LABEL_8:
  v12 = si_search_search;
  if (!si_search_search)
  {
    v12 = si_module_with_name("search");
    si_search_search = v12;
  }

  v13 = si_addrinfo(v12, a1, a2, ai_family, ai_socktype, ai_protocol, ai_flags, 0, &v19);
  v15 = v13;
  if (!v19 && v13 && v13[1])
  {
    *a4 = si_list_to_addrinfo(v13);
    si_list_release(v15, v16);
    v17 = *a4;
    if (!v17)
    {
      return 6;
    }

    if ((ai_flags & 2) == 0)
    {
      do
      {
        free(v17->ai_canonname);
        v17->ai_canonname = 0;
        v17 = v17->ai_next;
      }

      while (v17);
    }

    return v19;
  }

  else
  {
    si_list_release(v13, v14);
    if ((v19 - 200) >= 0xFFFFFF9D)
    {
      v18 = v19 - 100;
    }

    else
    {
      v18 = 4;
    }

    if (v19)
    {
      return v18;
    }

    else
    {
      return 8;
    }
  }
}

int mbr_identifier_to_uuid(int id_type, const void *identifier, size_t identifier_size, uuid_t uu)
{
  src = 0;
  result = mbr_identifier_translate(id_type, identifier, identifier_size, 6u, &src, 0);
  if (!result)
  {
LABEL_10:
    uuid_copy(uu, src);
    free(src);
    return 0;
  }

  if (result != 5)
  {
    return result;
  }

  if (id_type == 5)
  {
    v11 = getgrnam(identifier);
    if (v11)
    {
      p_gr_gid = &v11->gr_gid;
      v10 = 1;
LABEL_9:
      result = mbr_identifier_translate(v10, p_gr_gid, 4, 6u, &src, 0);
      if (result)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if (id_type == 4)
  {
    v8 = getpwnam(identifier);
    if (v8)
    {
      p_gr_gid = &v8->pw_uid;
      v10 = 0;
      goto LABEL_9;
    }
  }

  return 5;
}

int initgroups(const char *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 16;
  getgrouplist_internal(a1, a2, v4, &v3);
  return __initgroups() >> 31;
}

int getnameinfo(const sockaddr *a1, socklen_t a2, char *a3, socklen_t a4, char *a5, socklen_t a6, int a7)
{
  if (!a1)
  {
    return 4;
  }

  if (a1->sa_family != 18)
  {
    v34 = 0;
    if (a3)
    {
      v15 = a4 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (a5)
    {
      v17 = a6 == 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = !v17;
    if ((v16 & 1) == 0)
    {
      v14 = 0;
      if (!v18)
      {
        return v14;
      }
    }

    v19 = a7 | 2;
    if (v16)
    {
      v19 = a7;
    }

    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 | 8;
    }

    v21 = si_search_search;
    if (!si_search_search)
    {
      v21 = si_module_with_name("search");
      si_search_search = v21;
    }

    v22 = si_nameinfo(v21, a1, v20, 0, &v34, *&a6, *&a7, v7);
    v24 = v22;
    if (v34 || !v22)
    {
      si_item_release(v22, v23);
      if ((v34 - 200) >= 0xFFFFFF9D)
      {
        v33 = v34 - 100;
      }

      else
      {
        v33 = 4;
      }

      if (v34)
      {
        return v33;
      }

      else
      {
        return 8;
      }
    }

    v25 = *(v22 + 4);
    if (v25)
    {
      v26 = strlen(v25);
      v27 = (v26 + 1);
      v28 = v26 == -1 ? 0 : v16;
      if (v28 == 1)
      {
        if (v27 > a4)
        {
LABEL_43:
          v14 = 14;
LABEL_52:
          si_item_release(v24, v23);
          return v14;
        }

        bzero(a3, a4);
        memcpy(a3, *(v24 + 4), v27);
      }
    }

    v29 = *(v24 + 5);
    if (v29)
    {
      v30 = strlen(v29);
      v31 = (v30 + 1);
      v32 = v30 == -1 ? 0 : v18;
      if (v32 == 1)
      {
        if (v31 > a6)
        {
          goto LABEL_43;
        }

        bzero(a5, a6);
        memcpy(a5, *(v24 + 5), v31);
      }
    }

    v14 = 0;
    goto LABEL_52;
  }

  return getnameinfo_link(a1, a2, a3, a4, a5, a6);
}

unsigned int *si_addrinfo(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, char *a8, int *a9)
{
  v10 = a7;
  v13 = a4;
  v72 = 0;
  v73 = a4;
  if (a9)
  {
    *a9 = 0;
    if (!a1)
    {
      result = 0;
      v16 = 104;
LABEL_34:
      *a9 = v16;
      return result;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    if (*a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0;
    }

    if (a3)
    {
      goto LABEL_10;
    }

LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*a3)
  {
    v18 = a3;
  }

  else
  {
    v18 = 0;
  }

LABEL_15:
  if (!(v17 | v18))
  {
    goto LABEL_16;
  }

  if (a4 > 0x1E || ((1 << a4) & 0x40000005) == 0)
  {
    if (a9)
    {
      result = 0;
      v16 = 105;
      goto LABEL_34;
    }

    return 0;
  }

  if (a5 >= 4 || a6 > 0x3A || ((1 << a6) & 0x400000000020043) == 0)
  {
    goto LABEL_32;
  }

  if (a5 == 2)
  {
    v19 = 0;
    if (a6 && a6 != 17)
    {
      goto LABEL_32;
    }
  }

  else if (a5 == 1)
  {
    v19 = 1;
    if (a6 && a6 != 6)
    {
LABEL_32:
      if (a9)
      {
        result = 0;
        v16 = 112;
        goto LABEL_34;
      }

      return 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ((a7 & 5) == 0 && v17 && strcmp(v17, "localhost") && strcmp(v17, "0.0.0.0") && strcmp(v17, "127.0.0.1") && (*v17 != 58 || *(v17 + 1) != 58 || *(v17 + 2)))
  {
    if (strcmp(v17, "::1"))
    {
      pthread_once(&_gai_load_libnetwork_load_once, _gai_load_libnetwork_once);
      if (path_check)
      {
        path_check(v17, v18);
      }
    }
  }

  v20 = v10 & 0xFFFFF5FF | 0x800;
  if ((v10 & 0x200) == 0)
  {
    v20 = v10;
  }

  if (v13 == 30)
  {
    if ((v20 & 0x800) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFF4FF;
    }
  }

  else
  {
    v21 = v20 & 0xFFFFF4FF;
  }

  if (a6)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5 == 2;
  }

  v70 = 0;
  v69[0] = 0;
  v69[1] = 0;
  if (v22)
  {
    v23 = 17;
  }

  else
  {
    v23 = a6;
  }

  if (((v23 == 0) & v19) != 0)
  {
    v24 = 6;
  }

  else
  {
    v24 = v23;
  }

  v71 = 0;
  v25 = v21;
  if ((v21 & 0x1000000) != 0)
  {
    v28 = 0;
    if (v17 && v18)
    {
      v74 = 0;
      asprintf(&v74, "%s.%s", v18, v17);
      v29 = *(*(a1 + 40) + 312);
      if (v29)
      {
        v30 = v29(a1, v74, a8, a9);
        free(v74);
        if (v30)
        {
          v33 = *(v30 + 4);
          if (v33)
          {
            v34 = -1;
            v66 = v25;
            LODWORD(v35) = v25;
            while (2)
            {
              v36 = *(v30 + 16);
              v37 = 0x7FFFFFFF;
              v38 = v33;
              do
              {
                v39 = *v36++;
                v40 = *(v39 + 32);
                if (v37 >= v40)
                {
                  v41 = v40;
                }

                else
                {
                  v41 = v37;
                }

                if (v34 < v40)
                {
                  v37 = v41;
                }

                --v38;
              }

              while (v38);
              if (v37 != 0x7FFFFFFF)
              {
                for (i = 0; i < v33; ++i)
                {
                  v43 = *(*(v30 + 16) + 8 * i);
                  v45 = *(v43 + 32);
                  v44 = v43 + 32;
                  if (v37 == v45)
                  {
                    v35 = v35 | 0x1000;
                    v46 = _gai_simple(a1, *(v44 + 8), (v44 + 4), v13, v32, v24, v35, a8, a9);
                    if (v46)
                    {
                      v28 = v46;
                      goto LABEL_121;
                    }

                    v33 = *(v30 + 4);
                  }
                }

                v34 = v37;
                if (v33)
                {
                  continue;
                }
              }

              break;
            }

            v28 = 0;
LABEL_121:
            LOWORD(v25) = v66;
          }

          else
          {
            v28 = 0;
          }

          si_list_release(v30, v31);
          goto LABEL_124;
        }
      }

      else
      {
        free(v74);
      }

      v28 = 0;
    }

LABEL_124:
    v58 = v28;
    v59 = v25;
    return _gai_sort_list(v58, v59);
  }

  v68 = v24;
  v26 = _gai_numericserv(v18, &v71);
  if ((v25 & 0x1000) != 0 && !v26)
  {
    goto LABEL_16;
  }

  if (v18 && (*v18 != 48 || v18[1]))
  {
    if (v26)
    {
      v25 = v25 | 0x1000;
    }

    else
    {
      v25 = v25;
    }

    if (v26)
    {
      v27 = &v71;
    }

    else
    {
      v27 = v18;
    }
  }

  else
  {
    v27 = 0;
  }

  v47 = v25;
  v48 = v26;
  v67 = v47;
  result = _gai_nat64_synthesis(a1, v17, v27, v26, v13, a5, v68, v47, a8);
  if (!result)
  {
    v49 = _gai_numerichost(v17, &v73, v67, &v70, v69, &v72);
    if (v49 != -1 && ((v67 & 4) == 0 || v49))
    {
      if (v49 != 1)
      {
        v60 = *(a1 + 40);
        if (*(v60 + 288) && (v61 = *(v60 + 296)) != 0 && v61(a1))
        {
          v62 = (*(*(a1 + 40) + 288))(a1, v17, v27, v73, a5, v68, v67, a8, a9);
          v63 = _gai_nat64_second_pass(v62, a1, v18, v13, a5, v68, v10, a8);
          if (v63)
          {
            v64 = v63;
            v62 = si_list_concat(v62, v63);
            si_list_release(v64, v65);
          }

          v58 = v62;
        }

        else
        {
          v58 = _gai_simple(a1, v17, v27, v73, v51, v68, v67, a8, a9);
        }

        v59 = v67;
        return _gai_sort_list(v58, v59);
      }

      if (v48)
      {
        v52 = v67 | 4;
        v53 = v68;
LABEL_106:
        if (v73 == 30)
        {
          v54 = 0;
        }

        else
        {
          v54 = &v70;
        }

        v55 = "localhost";
        if (v17)
        {
          v55 = 0;
        }

        if (v73 == 2)
        {
          v56 = 0;
        }

        else
        {
          v56 = v69;
        }

        if (v73 == 2)
        {
          v57 = v52;
        }

        else
        {
          v57 = v52 | 0x800;
        }

        v58 = si_addrinfo_list(a1, v57, v50, v53, v54, v56, v71, v72, v55, v55);
        v59 = v57;
        return _gai_sort_list(v58, v59);
      }

      v53 = v68;
      if (!_gai_serv_to_port(v18, v68, &v71))
      {
        v52 = v67 | 0x1004;
        goto LABEL_106;
      }
    }

LABEL_16:
    if (a9)
    {
      result = 0;
      v16 = 108;
      goto LABEL_34;
    }

    return 0;
  }

  return result;
}

_BYTE *si_nameinfo(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_47;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v43 = 0;
  v42 = 0uLL;
  v12 = *(a2 + 1);
  if (v12 != 30)
  {
    if (v12 != 2)
    {
      if (a5)
      {
        v17 = 0;
        v18 = 105;
LABEL_49:
        *a5 = v18;
        return v17;
      }

      return 0;
    }

    v13 = 0;
    v43 = *(a2 + 4);
    v14 = *(a2 + 2);
LABEL_8:
    v15 = &v43;
    v16 = 2;
    if ((a3 & 2) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v42 = *(a2 + 8);
  v14 = *(a2 + 2);
  if (v42 == 255)
  {
    v19 = *(a2 + 9);
    if ((v19 & 0xF) != 1)
    {
      v13 = 0;
      if ((v19 & 0xF0) == 0x30 || (v19 & 0xF) != 2)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v42 != 254 || (*(a2 + 9) & 0xC0) != 0x80)
  {
    v13 = 0;
    goto LABEL_24;
  }

  if (!WORD1(v42))
  {
    v13 = *(a2 + 24);
    WORD1(v42) = bswap32(v13) >> 16;
    goto LABEL_24;
  }

  v13 = __rev16(WORD1(v42));
  v20 = *(a2 + 24);
  if (v20 != bswap32(WORD1(v42)) >> 16)
  {
    if (v20)
    {
LABEL_47:
      if (!a5)
      {
        return 0;
      }

LABEL_48:
      v17 = 0;
      v18 = 104;
      goto LABEL_49;
    }
  }

LABEL_24:
  if (!*(a2 + 8) && !*(a2 + 12))
  {
    v35 = *(a2 + 16);
    if (v35)
    {
      if (v35 != -65536)
      {
        goto LABEL_26;
      }

      v36 = *(a2 + 20);
    }

    else
    {
      v36 = *(a2 + 20);
      if ((v36 | 0x1000000) == 0x1000000)
      {
        goto LABEL_26;
      }
    }

    v43 = v36;
    goto LABEL_8;
  }

LABEL_26:
  v15 = &v42;
  v16 = 30;
  if ((a3 & 2) != 0)
  {
LABEL_31:
    v24 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v21 = si_host_byaddr(a1);
  if (!v21)
  {
    goto LABEL_31;
  }

  v22 = v21;
  v23 = *(v21 + 32);
  if (!v23)
  {
    si_item_release(v22, v15);
    goto LABEL_47;
  }

  v24 = strdup(v23);
  v41 = v24;
  si_item_release(v22, v25);
  if (!v24)
  {
LABEL_38:
    if (a5)
    {
      v17 = 0;
      v18 = 106;
      goto LABEL_49;
    }

    return 0;
  }

LABEL_32:
  v26 = 0;
  if ((a3 & 8) != 0 || !v14)
  {
    goto LABEL_41;
  }

  v27 = si_service_byport(a1);
  if (!v27)
  {
    v26 = 0;
    goto LABEL_41;
  }

  v28 = v27;
  v29 = *(v27 + 32);
  if (!v29)
  {
    si_item_release(v28, v15);
    free(v24);
    if (!a5)
    {
      return 0;
    }

    goto LABEL_48;
  }

  v26 = strdup(v29);
  v40 = v26;
  si_item_release(v28, v30);
  if (!v26)
  {
    free(v24);
    goto LABEL_38;
  }

LABEL_41:
  if ((a3 & 4) == 0 && !v24)
  {
    v31 = *(a2 + 1);
    if (v31 == 30)
    {
      if (!v13)
      {
        v32 = &v42;
        v33 = 30;
        v34 = 46;
LABEL_60:
        if (inet_ntop(v33, v32, __s1, v34))
        {
          v41 = strdup(__s1);
        }

        goto LABEL_62;
      }

      WORD1(v42) = 0;
      if (inet_ntop(30, &v42, __s1, 0x2Eu))
      {
        if (!if_indextoname(v13, v44))
        {
          if (a5)
          {
            *a5 = 104;
          }

          free(v26);
          return 0;
        }

        asprintf(&v41, "%s%%%s", __s1, v44);
      }
    }

    else if (v31 == 2)
    {
      v32 = &v43;
      v33 = 2;
      v34 = 16;
      goto LABEL_60;
    }
  }

LABEL_62:
  if (!v26)
  {
    asprintf(&v40, "%hu", __rev16(v14));
    v26 = v40;
  }

  v37 = v41;
  if (v41 && v26)
  {
    v17 = LI_ils_create("L4488ss", v15, v16, a4, a5, a6, a7, a8, a1);
    v37 = v41;
  }

  else
  {
    v17 = 0;
    if (a5)
    {
      if ((a3 & 4) != 0)
      {
        v38 = 108;
      }

      else
      {
        v38 = 106;
      }

      *a5 = v38;
    }
  }

  free(v37);
  free(v40);
  return v17;
}

uint64_t mbr_identifier_translate(unsigned int a1, const char *a2, uint64_t a3, unsigned int a4, char **a5, int *a6)
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = 5;
  if (!a3 || !a2 || !a5)
  {
    return v6;
  }

  if (a3 != -1)
  {
    if (a1 >= 2)
    {
      if (a1 == 6 && a3 != 16)
      {
        return 22;
      }
    }

    else if (a3 != 4)
    {
      return 22;
    }
  }

  if (!_os_feature_enabled_simple_impl())
  {
LABEL_84:
    if (a4 > 0x1F)
    {
      return v6;
    }

    if (((1 << a4) & 0x40000003) != 0)
    {
      if (a1 != 6)
      {
        return v6;
      }

      v55 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      if (v55)
      {
        v56 = v55;
        if (parse_compatibility_uuid(a2, v55, a6))
        {
          v6 = 0;
          *a5 = v56;
        }

        else
        {
          free(v56);
        }

        return v6;
      }
    }

    else
    {
      if (((1 << a4) & 0x80000030) != 0)
      {
        if (a1)
        {
          if (a1 != 1)
          {
            if (a1 != 6)
            {
              return v6;
            }

            LODWORD(v86) = 0;
            LODWORD(v78) = 0;
            if (!parse_compatibility_uuid(a2, &v78, &v86) || !compatibility_name_for_id(v78, v86, a5))
            {
              return v6;
            }

            if (a6)
            {
              *a6 = v86;
            }

            return 0;
          }

          if (!compatibility_name_for_id(*a2, 2, a5))
          {
            return v6;
          }

LABEL_112:
          if (a6)
          {
            v6 = 0;
            v60 = 2;
            goto LABEL_114;
          }

          return 0;
        }

        if (!compatibility_name_for_id(*a2, 1, a5))
        {
          return v6;
        }

        if (!a6)
        {
          return 0;
        }

LABEL_108:
        v6 = 0;
        v60 = 1;
LABEL_114:
        *a6 = v60;
        return v6;
      }

      if (a4 != 6)
      {
        return v6;
      }

      if (a1 == 1)
      {
        v61 = *a2;
        v62 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v62)
        {
          v63 = v62;
          uuid_copy(v62, _group_compat_prefix);
          *(v63 + 3) = bswap32(v61);
          *a5 = v63;
          goto LABEL_112;
        }
      }

      else
      {
        if (a1)
        {
          return v6;
        }

        v57 = *a2;
        v58 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (v58)
        {
          v59 = v58;
          uuid_copy(v58, _user_compat_prefix);
          *(v59 + 3) = bswap32(v57);
          *a5 = v59;
          if (!a6)
          {
            return 0;
          }

          goto LABEL_108;
        }
      }
    }

    return 12;
  }

  v98 = 0;
  v99 = &v98;
  v100 = 0x2000000000;
  v101 = -1;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2000000000;
  v97 = 2;
  v6 = 22;
  if (a4 <= 4)
  {
    if (!a4)
    {
      if ((a1 & 0xFFFFFFFD) == 4)
      {
        goto LABEL_34;
      }

LABEL_83:
      _Block_object_dispose(&v94, 8);
      _Block_object_dispose(&v98, 8);
      if (v6 != 2)
      {
        return v6;
      }

      goto LABEL_84;
    }

    if (a4 == 1)
    {
      if (a1 - 5 >= 2)
      {
        goto LABEL_83;
      }

      goto LABEL_34;
    }

    if (a4 != 4)
    {
      goto LABEL_83;
    }

    if (!a1)
    {
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  if (a4 > 29)
  {
    if (a4 != 30)
    {
      if (a4 != 31)
      {
        goto LABEL_83;
      }

      if (!a1)
      {
        goto LABEL_55;
      }

      goto LABEL_25;
    }

    if (a1 == 4)
    {
      goto LABEL_72;
    }

    if (a1 == 5)
    {
LABEL_66:
      v86 = MEMORY[0x1E69E9820];
      v87 = 0x40000000;
      v88 = ___dd_mbr_identifier_translate_block_invoke_4;
      v89 = &unk_1E7506078;
      v93 = a4;
      v90 = &v98;
      v91 = &v94;
      v92 = a5;
      v107 = a2;
      v108 = 0;
      v106 = 1;
      v102 = 0;
      v103 = &v102;
      v104 = 0x2000000000;
      v105 = 0;
      v78 = MEMORY[0x1E69E9820];
      v79 = 0x40000000;
      v80 = ___dd_foreach_record_with_name_block_invoke;
      v81 = &unk_1E7506140;
      v82 = &v86;
      v83 = &v102;
      v37 = DarwinDirectoryRecordStoreApplyWithFilter();
      if (v103[3])
      {
        goto LABEL_76;
      }

      multiuser_flags[0] = 0;
      v38 = MEMORY[0x19A8FC650](v37);
      multiuser_config_flags = host_get_multiuser_config_flags(v38, multiuser_flags);
      if (!multiuser_config_flags)
      {
        if ((multiuser_flags[0] & 0x80000000) != 0)
        {
          v41 = strcmp(a2, "mobile");
          if (!v41)
          {
            LODWORD(v106) = 0;
            multiuser_flags[0] = 0;
            v47 = MEMORY[0x19A8FC650](v41, v42, v43, v44, v45, v46);
            v48 = host_get_multiuser_config_flags(v47, multiuser_flags);
            if (v48)
            {
LABEL_135:
              v72 = mbr_identifier_translate_cold_2(v48, v49);
              goto LABEL_136;
            }

            goto LABEL_129;
          }
        }

LABEL_76:
        _Block_object_dispose(&v102, 8);
        if (!a6)
        {
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      v52 = mbr_identifier_translate_cold_2(multiuser_config_flags, v40);
      goto LABEL_127;
    }

LABEL_31:
    if (a1 == 6)
    {
LABEL_38:
      v86 = MEMORY[0x1E69E9820];
      v87 = 0x40000000;
      v88 = ___dd_mbr_identifier_translate_block_invoke_5;
      v89 = &unk_1E75060A0;
      v93 = a4;
      v90 = &v98;
      v91 = &v94;
      v92 = a5;
      *multiuser_flags = 2;
      v110 = 0;
      v111 = 0;
      uuid_copy(&v110, a2);
      v78 = MEMORY[0x1E69E9820];
      v79 = 0x40000000;
      v80 = ___dd_foreach_record_with_uuid_block_invoke;
      v81 = &unk_1E7506190;
      v82 = &v86;
      DarwinDirectoryRecordStoreApplyWithFilter();
      if (!*a5)
      {
        v78 = MEMORY[0x1E69E9820];
        v79 = 0x40000000;
        v80 = ___dd_mbr_identifier_translate_block_invoke_6;
        v81 = &unk_1E75060C8;
        v85 = a4;
        v82 = &v98;
        v83 = &v94;
        v84 = a5;
        v103 = 0;
        v104 = 0;
        v102 = 2;
        uuid_copy(&v103, a2);
        *multiuser_flags = MEMORY[0x1E69E9820];
        v110 = 0x40000000;
        v111 = ___dd_foreach_record_with_uuid_block_invoke;
        v112 = &unk_1E7506190;
        v113 = &v78;
        DarwinDirectoryRecordStoreApplyWithFilter();
        if (!*a5 && a4 <= 0x1E && ((1 << a4) & 0x40000003) != 0)
        {
          v12 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
          if (v12)
          {
            v14 = v12;
            if (!parse_compatibility_uuid(a2, v12, a6))
            {
              free(v14);
              if (!a6)
              {
                goto LABEL_82;
              }

              goto LABEL_80;
            }

            *a5 = v14;
            goto LABEL_64;
          }

          v20 = mbr_identifier_translate_cold_1(0, v13);
          goto LABEL_131;
        }
      }

LABEL_79:
      if (!a6)
      {
LABEL_82:
        v6 = *(v95 + 6);
        goto LABEL_83;
      }

LABEL_80:
      if (*a5)
      {
        *a6 = *(v99 + 6);
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  if (a4 == 5)
  {
LABEL_25:
    if (a1 == 1)
    {
LABEL_47:
      v15 = *a2;
      v86 = MEMORY[0x1E69E9820];
      v87 = 0x40000000;
      v88 = ___dd_mbr_identifier_translate_block_invoke_2;
      v89 = &unk_1E7506028;
      v93 = a4;
      v90 = &v98;
      v91 = &v94;
      v92 = a5;
      v106 = 0;
      v108 = 0;
      v107 = v15;
      v102 = 0;
      v103 = &v102;
      v104 = 0x2000000000;
      v105 = 0;
      v78 = MEMORY[0x1E69E9820];
      v79 = 0x40000000;
      v80 = ___dd_foreach_record_with_id_block_invoke;
      v81 = &unk_1E75060F0;
      v82 = &v86;
      v83 = &v102;
      v16 = DarwinDirectoryRecordStoreApplyWithFilter();
      if (v103[3])
      {
LABEL_51:
        _Block_object_dispose(&v102, 8);
        if (*a5 || a4 != 6)
        {
          goto LABEL_79;
        }

        v20 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        if (!v20)
        {
LABEL_131:
          v34 = mbr_identifier_translate_cold_8(v20, v21);
          goto LABEL_132;
        }

        v22 = v20;
        uuid_copy(v20, _group_compat_prefix);
        *(v22 + 3) = bswap32(*a2);
        *a5 = v22;
        v23 = v99;
        v24 = 2;
        goto LABEL_63;
      }

      multiuser_flags[0] = 0;
      v17 = MEMORY[0x19A8FC650](v16);
      v18 = host_get_multiuser_config_flags(v17, multiuser_flags);
      if (!v18)
      {
        if ((multiuser_flags[0] & 0x80000000) == 0 || v15 != 501)
        {
          goto LABEL_51;
        }

LABEL_122:
        multiuser_flags[0] = 0;
        v65 = MEMORY[0x19A8FC650](v18);
        v66 = host_get_multiuser_config_flags(v65, multiuser_flags);
        if (v66)
        {
LABEL_133:
          v69 = mbr_identifier_translate_cold_2(v66, v67);
          goto LABEL_134;
        }

        LODWORD(v107) = multiuser_flags[0] & 0x3FFFFFFF;
        *multiuser_flags = MEMORY[0x1E69E9820];
        v110 = 0x40000000;
        v111 = ___dd_foreach_record_with_id_block_invoke_2;
        v112 = &unk_1E7506118;
        v113 = &v86;
        DarwinDirectoryRecordStoreApplyWithFilter();
        goto LABEL_51;
      }

      v28 = mbr_identifier_translate_cold_2(v18, v19);
LABEL_121:
      v18 = mbr_identifier_translate_cold_2(v28, v29);
      goto LABEL_122;
    }

    goto LABEL_31;
  }

  if (a4 != 6)
  {
    goto LABEL_83;
  }

LABEL_34:
  if (a1 <= 3)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_78;
      }

      goto LABEL_47;
    }

LABEL_55:
    v25 = *a2;
    v86 = MEMORY[0x1E69E9820];
    v87 = 0x40000000;
    v88 = ___dd_mbr_identifier_translate_block_invoke;
    v89 = &unk_1E7506000;
    v93 = a4;
    v90 = &v98;
    v91 = &v94;
    v92 = a5;
    v106 = 0;
    v108 = 0;
    v107 = v25;
    v102 = 0;
    v103 = &v102;
    v104 = 0x2000000000;
    v105 = 0;
    v78 = MEMORY[0x1E69E9820];
    v79 = 0x40000000;
    v80 = ___dd_foreach_record_with_id_block_invoke;
    v81 = &unk_1E75060F0;
    v82 = &v86;
    v83 = &v102;
    v26 = DarwinDirectoryRecordStoreApplyWithFilter();
    if ((v103[3] & 1) == 0)
    {
      multiuser_flags[0] = 0;
      v27 = MEMORY[0x19A8FC650](v26);
      v28 = host_get_multiuser_config_flags(v27, multiuser_flags);
      if (v28)
      {
        goto LABEL_121;
      }

      if ((multiuser_flags[0] & 0x80000000) != 0 && v25 == 501)
      {
        multiuser_flags[0] = 0;
        v68 = MEMORY[0x19A8FC650](v28, v29, v30, v31, v32, v33);
        v69 = host_get_multiuser_config_flags(v68, multiuser_flags);
        if (v69)
        {
LABEL_134:
          v48 = mbr_identifier_translate_cold_2(v69, v70);
          goto LABEL_135;
        }

        LODWORD(v107) = multiuser_flags[0] & 0x3FFFFFFF;
        *multiuser_flags = MEMORY[0x1E69E9820];
        v110 = 0x40000000;
        v111 = ___dd_foreach_record_with_id_block_invoke_2;
        v112 = &unk_1E7506118;
        v113 = &v86;
        DarwinDirectoryRecordStoreApplyWithFilter();
      }
    }

    _Block_object_dispose(&v102, 8);
    if (*a5 || a4 != 6)
    {
      goto LABEL_79;
    }

    v34 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    if (!v34)
    {
LABEL_132:
      v66 = mbr_identifier_translate_cold_11(v34, v35);
      goto LABEL_133;
    }

    v36 = v34;
    uuid_copy(v34, _user_compat_prefix);
    *(v36 + 3) = bswap32(*a2);
    *a5 = v36;
    v23 = v99;
    v24 = 1;
LABEL_63:
    *(v23 + 6) = v24;
LABEL_64:
    *(v95 + 6) = 0;
    if (!a6)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
      if (a1 == 6)
      {
        goto LABEL_38;
      }

LABEL_78:
      v97 = 22;
      goto LABEL_79;
    }

    goto LABEL_66;
  }

LABEL_72:
  v86 = MEMORY[0x1E69E9820];
  v87 = 0x40000000;
  v88 = ___dd_mbr_identifier_translate_block_invoke_3;
  v89 = &unk_1E7506050;
  v93 = a4;
  v90 = &v98;
  v91 = &v94;
  v92 = a5;
  v107 = a2;
  v108 = 0;
  v106 = 1;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2000000000;
  v105 = 0;
  v78 = MEMORY[0x1E69E9820];
  v79 = 0x40000000;
  v80 = ___dd_foreach_record_with_name_block_invoke;
  v81 = &unk_1E7506140;
  v82 = &v86;
  v83 = &v102;
  v50 = DarwinDirectoryRecordStoreApplyWithFilter();
  if (v103[3])
  {
    goto LABEL_76;
  }

  multiuser_flags[0] = 0;
  v51 = MEMORY[0x19A8FC650](v50);
  v52 = host_get_multiuser_config_flags(v51, multiuser_flags);
  if (v52)
  {
LABEL_127:
    v54 = mbr_identifier_translate_cold_2(v52, v53);
    goto LABEL_128;
  }

  if ((multiuser_flags[0] & 0x80000000) == 0)
  {
    goto LABEL_76;
  }

  v54 = strcmp(a2, "mobile");
  if (v54)
  {
    goto LABEL_76;
  }

LABEL_128:
  LODWORD(v106) = 0;
  multiuser_flags[0] = 0;
  v71 = MEMORY[0x19A8FC650](v54);
  v72 = host_get_multiuser_config_flags(v71, multiuser_flags);
  if (!v72)
  {
LABEL_129:
    LODWORD(v107) = multiuser_flags[0] & 0x3FFFFFFF;
    *multiuser_flags = MEMORY[0x1E69E9820];
    v110 = 0x40000000;
    v111 = ___dd_foreach_record_with_name_block_invoke_2;
    v112 = &unk_1E7506168;
    v113 = &v86;
    DarwinDirectoryRecordStoreApplyWithFilter();
    goto LABEL_76;
  }

LABEL_136:
  v74 = mbr_identifier_translate_cold_2(v72, v73);
  return _fsi_get_group(v74, v75, v76, v77);
}

FILE *_fsi_get_group(uint64_t a1, const char *a2, int a3, int a4)
{
  if (!a2 && a4 == 1)
  {
    return 0;
  }

  result = fopen("/etc/group", "r");
  if (result)
  {
    v9 = result;
    v41 = 0;
    v40 = 0;
    _fsi_get_validation(a1, 2u, "/etc/group", result, &v41, &v40);
    line = _fsi_get_line(v9, v10, v11, v12, v13, v14, v15, v16);
    if (!line)
    {
      v39 = 0;
      goto LABEL_22;
    }

    v18 = line;
    v39 = 0;
    while (1)
    {
      if (*v18 == 35)
      {
        goto LABEL_14;
      }

      v42 = 0;
      v19 = _fsi_tokenize(v18, ":", 1, &v42);
      v20 = v19;
      if (v42 != 4)
      {
        goto LABEL_13;
      }

      v21 = atoi(v19[2]);
      if (a4)
      {
        if (a4 == 2)
        {
          if (v21 != a3)
          {
            goto LABEL_13;
          }
        }

        else if (a4 != 1 || strcmp(a2, *v20))
        {
LABEL_13:
          free(v20);
LABEL_14:
          free(v18);
          goto LABEL_15;
        }
      }

      v42 = 0;
      v38 = _fsi_tokenize(v20[3], ",", 1, &v42);
      v36 = LI_ils_create("L4488ss4*", v29, v30, v31, v32, v33, v34, v35, a1);
      free(v20);
      free(v38);
      free(v18);
      if (v36)
      {
        if (a4)
        {
          v39 = v36;
LABEL_22:
          fclose(v9);
          return v39;
        }

        v39 = si_list_add(v39, v36);
        si_item_release(v36, v37);
      }

LABEL_15:
      v18 = _fsi_get_line(v9, v22, v23, v24, v25, v26, v27, v28);
      if (!v18)
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t _gai_numericserv(const char *a1, _WORD *a2)
{
  if (a1)
  {
    __endptr = 0;
    v4 = strtol(a1, &__endptr, 10);
    if (!*a1)
    {
      return 0;
    }

    if (*__endptr || v4 >> 16 != 0)
    {
      return 0;
    }

    if (a2)
    {
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    LOWORD(v4) = 0;
LABEL_11:
    *a2 = v4;
  }

  return 1;
}

unsigned int *_gai_nat64_synthesis(uint64_t a1, const char *a2, const char *a3, int a4, unsigned int a5, int a6, uint64_t a7, uint64_t a8, char *a9)
{
  result = 0;
  v41 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v11 = a8;
  if ((a8 & 4) != 0)
  {
    return result;
  }

  if (a5 != 30 && a5)
  {
    return 0;
  }

  v34 = 0;
  if (inet_pton(2, a2, &v34) != 1 || !_gai_nat64_can_v4_address_be_synthesized(&v34))
  {
    return 0;
  }

  v33 = 0;
  v16 = si_inet_config(0, &v33);
  result = 0;
  if (v16 < 0 || !v33)
  {
    return result;
  }

  v32 = 0;
  if (a9)
  {
    v32 = if_nametoindex(a9);
    if (!v32)
    {
      return 0;
    }
  }

  v31 = 0;
  if (a4)
  {
    if (a3)
    {
      v31 = *a3;
    }
  }

  else
  {
    if (_gai_serv_to_port(a3, a7, &v31))
    {
      return 0;
    }

    v11 = v11 | 0x1000;
  }

  v30 = 0;
  pthread_once(&_gai_load_libnetwork_load_once, _gai_load_libnetwork_once);
  if (!nat64_v4_synthesize)
  {
    return 0;
  }

  v17 = nat64_v4_synthesize(&v32, &v34, &v30);
  pthread_once(&gai_log_once, gai_log_init);
  v18 = _gai_log;
  if (os_log_type_enabled(_gai_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v36 = v32;
    v37 = 1024;
    v38 = v34;
    v39 = 1024;
    v40 = v17;
    _os_log_debug_impl(&dword_19A0B0000, v18, OS_LOG_TYPE_DEBUG, "nat64_v4_synthesize(%d, %{network:in_addr}d, ...) returned %d", buf, 0x14u);
  }

  result = 0;
  if (v17 && v30)
  {
    v20 = 0;
    v21 = 0;
    v22 = v17;
    do
    {
      v23 = si_addrinfo_list(a1, v11, v19, a7, 0, v30 + v20, v31, 0, 0, 0);
      if (v23)
      {
        v24 = v23;
        if (v21)
        {
          v21 = si_list_concat(v21, v23);
          si_list_release(v24, v25);
        }

        else
        {
          v21 = v23;
        }
      }

      v20 += 16;
      --v22;
    }

    while (v22);
    free(v30);
    if (v21)
    {
      if (!(v11 & 0x400 | a5) || a5 == 30 && (v11 & 0x900) == 0x900)
      {
        v27 = si_addrinfo_list(a1, v11, v26, a7, &v34, 0, v31, 0, 0, 0);
        if (v27)
        {
          v28 = v27;
          v21 = si_list_concat(v21, v27);
          si_list_release(v28, v29);
        }
      }

      return _gai_sort_list(v21, v11);
    }

    return 0;
  }

  return result;
}

uint64_t _gai_numerichost(char *a1, int *a2, int a3, int *a4, void *a5, unsigned int *a6)
{
  v8 = a3;
  if (!a1)
  {
    v14 = *a2;
    if (*a2)
    {
      v15 = v14 == 2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_13;
    }

    if (v14 != 30)
    {
      goto LABEL_32;
    }

    if ((~a3 & 0x900) == 0)
    {
LABEL_13:
      if (a3)
      {
        v16 = 0;
      }

      else
      {
        v16 = 16777343;
      }

      *a4 = v16;
    }

    v14 = *a2;
LABEL_32:
    if (v14 != 30 && v14 != 0)
    {
      return 1;
    }

    *a5 = 0;
    a5[1] = 0;
    if (a3)
    {
      return 1;
    }

    v29 = 0x1000000;
    goto LABEL_41;
  }

  v12 = inet_pton(2, a1, a4);
  if (!v12)
  {
    v12 = _inet_aton_check();
  }

  if (v12 == 1)
  {
    if (*a2 != 30)
    {
      if (!*a2)
      {
        v13 = 2;
LABEL_47:
        *a2 = v13;
        return 1;
      }

      return 1;
    }

    if ((v8 & 0x800) != 0)
    {
      *a5 = 0;
      a5[1] = 0;
      *(a5 + 5) = -1;
      v29 = *a4;
LABEL_41:
      *(a5 + 3) = v29;
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  result = inet_pton(30, a1, a5);
  if (result != 1)
  {
    return result;
  }

  v18 = strrchr(a1, 37);
  if (v18)
  {
    v19 = v18;
    v22 = v18[1];
    v20 = v18 + 1;
    v21 = v22;
    if (!v22)
    {
      goto LABEL_28;
    }

    v23 = (v19 + 2);
    do
    {
      v24 = v21 - 48;
      v25 = *v23++;
      v21 = v25;
      if (v25)
      {
        v26 = v24 >= 0xA;
      }

      else
      {
        v26 = 1;
      }
    }

    while (!v26);
    if (v24 > 9)
    {
      v27 = if_nametoindex(v20);
    }

    else
    {
LABEL_28:
      v27 = atoi(v20);
    }

    *a6 = v27;
  }

  if (*a2 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*a2)
  {
    v13 = 30;
    goto LABEL_47;
  }

  return 1;
}

_BYTE *si_addrinfo_v6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8)
{
  if (*a6 == 254 && (a6[1] & 0xC0) == 0x80 && *(a6 + 1))
  {
    v8 = __rev16(*(a6 + 1));
    if (a7)
    {
      a7 = a7;
    }

    else
    {
      a7 = v8;
    }
  }

  return LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
}

void **si_addrinfo_list(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a7;
  v12 = a4;
  v15 = (a2 & 0x100) == 0 && a6 != 0;
  v16 = (a2 & 0x800) == 0 || v15;
  if (!a6)
  {
    v20 = 0;
    goto LABEL_22;
  }

  v17 = a8;
  if (a4 != 17 && a4)
  {
    v20 = 0;
  }

  else
  {
    v19 = si_addrinfo_v6(a1, 0, 2, 17, a7, a6, a8, a10);
    v20 = si_list_add(0, v19);
    si_item_release(v19, v21);
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (v12 == 58)
  {
    v22 = v10;
    v23 = v17;
    v24 = a1;
    v25 = 3;
    v26 = 58;
    goto LABEL_21;
  }

  if (v12 != 6)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = v10;
  v23 = v17;
  v24 = a1;
  v25 = 1;
  v26 = 6;
LABEL_21:
  v27 = si_addrinfo_v6(v24, 0, v25, v26, v22, a6, v23, a10);
  v20 = si_list_add(v20, v27);
  si_item_release(v27, v28);
LABEL_22:
  if (a5)
  {
    if (v12 != 17 && v12)
    {
      v31 = 0;
    }

    else
    {
      if (v16)
      {
        v29 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v31 = si_list_add(0, v29);
      }

      else
      {
        v29 = si_addrinfo_v4_mapped(a1, 0, 2, 17, v10, a5, 0, a9);
        v20 = si_list_add(v20, v29);
        v31 = 0;
      }

      si_item_release(v29, v30);
    }

    if (v12 == 6 || !v12)
    {
      if (v16)
      {
        v32 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v31 = si_list_add(v31, v32);
      }

      else
      {
        v32 = si_addrinfo_v4_mapped(a1, 0, 1, 6, v10, a5, 0, a9);
        v20 = si_list_add(v20, v32);
      }

      si_item_release(v32, v33);
    }

    if (v12 == 1)
    {
      if (v16)
      {
        v34 = LI_ils_create("L448844444Ss", a2, a3, a4, a5, a6, a7, a8, a1);
        v31 = si_list_add(v31, v34);
      }

      else
      {
        v34 = si_addrinfo_v4_mapped(a1, 0, 3, 1, v10, a5, 0, a9);
        v20 = si_list_add(v20, v34);
      }

      si_item_release(v34, v35);
    }
  }

  else
  {
    v31 = 0;
  }

  v36 = si_list_concat(v20, v31);
  si_list_release(v31, v37);
  return v36;
}

void **si_list_add(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    if (!a1)
    {
      v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      v2 = v4;
      if (!v4)
      {
LABEL_8:
        free(v2);
        v2 = 0;
        *__error() = 12;
        return v2;
      }

      *v4 = 1;
    }

    v5 = reallocf(v2[2], 8 * (*(v2 + 1) + 1));
    v2[2] = v5;
    if (!v5)
    {
      goto LABEL_8;
    }

    if ((atomic_fetch_add((a2 + 12), 1u) & 0x80000000) != 0)
    {
      si_list_add_cold_1();
    }

    v6 = v2[2];
    v7 = *(v2 + 1);
    *(v2 + 1) = v7 + 1;
    v6[v7] = a2;
    if (!v2[2])
    {
      goto LABEL_8;
    }
  }

  return v2;
}

void **si_list_concat(void **a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v4 = *(a2 + 4);
    if (v4)
    {
      if (!a1)
      {
        v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
        *v2 = 1;
        v4 = *(a2 + 4);
      }

      v5 = reallocf(v2[2], 8 * (*(v2 + 1) + v4));
      v2[2] = v5;
      if (v5)
      {
        v6 = *(a2 + 4);
        if (v6)
        {
          for (i = 0; i < v6; *(v2[2] + (i++ + v9)) = v8)
          {
            v8 = *(*(a2 + 16) + 8 * i);
            if (v8)
            {
              if ((atomic_fetch_add((v8 + 12), 1u) & 0x80000000) != 0)
              {
                si_list_add_cold_1();
              }

              v6 = *(a2 + 4);
            }

            v9 = *(v2 + 1);
          }
        }

        else
        {
          v9 = *(v2 + 1);
        }

        *(v2 + 1) = v9 + v6;
      }

      else
      {
        free(v2);
        v2 = 0;
        *__error() = 12;
      }
    }
  }

  return v2;
}

unsigned int *_gai_sort_list(unsigned int *a1, __int16 a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 2);
      v7 = a1[1];
      do
      {
        v8 = *v6;
        if (*(*v6 + 36) == 30)
        {
          if (v8[15] || v8[16] || v8[17] != -65536)
          {
            ++v4;
          }

          else
          {
            ++v5;
          }
        }

        v6 += 8;
        --v7;
      }

      while (v7);
      v9 = v4 != 0;
    }

    else
    {
      v5 = 0;
      v9 = 0;
    }

    if ((a2 & 0x100) != 0)
    {
      v9 = 0;
    }

    if ((a2 & 0x800) == 0)
    {
      v9 = 1;
    }

    if (v9 && v5)
    {
      v10 = v3 - v5;
      if (v3 == v5)
      {
        return 0;
      }

      v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      if (!v13)
      {
        return v2;
      }

      v11 = v13;
      *v13 = *v2;
      v13[1] = v10;
      v14 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
      *(v11 + 2) = v14;
      if (!v14)
      {
        free(v11);
        return v2;
      }

      v11[2] = 0;
      v16 = v2[1];
      if (v16)
      {
        for (i = 0; i < v16; ++i)
        {
          v18 = *(*(v2 + 2) + 8 * i);
          if (v18[9] != 30 || v18[15] || v18[16] || v18[17] != -65536)
          {
            v19 = *(v11 + 2);
            v20 = v11[2];
            v11[2] = v20 + 1;
            *(v19 + 8 * v20) = v18;
          }

          else
          {
            si_item_release(v18, v15);
            v16 = v2[1];
          }
        }
      }

      v11[2] = 0;
      free(*(v2 + 2));
      free(v2);
      v3 = v11[1];
    }

    else
    {
      v11 = a1;
    }

    qsort(*(v11 + 2), v3, 8uLL, _gai_addr_sort);
    return v11;
  }

  return v2;
}

void *si_list_to_addrinfo(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1);
    if (!v2)
    {
      return 0;
    }

    result = si_item_to_addrinfo(*(result[2] + 8 * (v2 - 1)));
    v3 = result;
    v4 = (v2 - 2);
    if (v4 >= 0)
    {
      while (1)
      {
        result = si_item_to_addrinfo(*(v1[2] + 8 * v4));
        if (!result)
        {
          break;
        }

        result[5] = v3;
        v3 = result;
        if (v4-- <= 0)
        {
          return result;
        }
      }

      freeaddrinfo(v3);
      return 0;
    }
  }

  return result;
}

void *si_item_to_addrinfo(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040D19128EAuLL);
  v3 = v2;
  if (v2)
  {
    v5 = *(a1 + 32);
    v4 = a1 + 32;
    *v2 = v5;
    v6 = *(v4 + 16);
    v2[4] = v6;
    v7 = malloc_type_calloc(1uLL, v6, 0x1000040451B5BE8uLL);
    v3[4] = v7;
    if (!v7 || (memcpy(v7, (v4 + 20), *(v3 + 4)), (v8 = *(v4 + 152)) != 0) && (v9 = strdup(v8), (v3[3] = v9) == 0))
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

void freeaddrinfo(addrinfo *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      ai_addr = v1->ai_addr;
      ai_next = v1->ai_next;
      if (ai_addr)
      {
        free(ai_addr);
      }

      ai_canonname = v1->ai_canonname;
      if (ai_canonname)
      {
        free(ai_canonname);
      }

      free(v1);
      v1 = ai_next;
    }

    while (ai_next);
  }
}

char *__cdecl if_indextoname(unsigned int a1, char *a2)
{
  v9 = 0;
  if (getifaddrs(&v9) < 0)
  {
    return 0;
  }

  v4 = v9;
  if (v9)
  {
    v5 = v9;
    while (1)
    {
      ifa_addr = v5->ifa_addr;
      if (ifa_addr)
      {
        if (ifa_addr->sa_family == 18 && *ifa_addr->sa_data == a1)
        {
          break;
        }
      }

      v5 = v5->ifa_next;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    strncpy(a2, v5->ifa_name, 0x10uLL);
    v7 = 0;
    v4 = v9;
  }

  else
  {
LABEL_8:
    a2 = 0;
    v7 = 6;
  }

  freeifaddrs(v4);
  *__error() = v7;
  return a2;
}

if_nameindex *if_nameindex(void)
{
  v15 = 0;
  if ((getifaddrs(&v15) & 0x80000000) == 0)
  {
    v0 = v15;
    if (v15)
    {
      v1 = 0;
      LODWORD(v2) = 0;
      while (1)
      {
        ifa_addr = v0->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            v4 = strlen(v0->ifa_name);
            v5 = __CFADD__(v1, v4 + 1);
            v1 += v4 + 1;
            if (v5)
            {
              break;
            }

            v2 = v2 + 1;
            if (v2 != v2 << 31 >> 31)
            {
              break;
            }
          }
        }

        v0 = v0->ifa_next;
        if (!v0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      LODWORD(v2) = 0;
      v1 = 0;
LABEL_12:
      v7 = 16 * v2 + 16;
      if (!__CFADD__(v7, v1))
      {
        v8 = malloc_type_malloc(v7 + v1, 0xB66398CAuLL);
        v6 = v8;
        if (v8)
        {
          v9 = v15;
          v10 = v8;
          if (v15)
          {
            v11 = &v8[(v2 + 1)];
            v10 = v8;
            do
            {
              v12 = v9->ifa_addr;
              if (v12 && v12->sa_family == 18)
              {
                v10->if_index = *v12->sa_data;
                v10->if_name = v11;
                v13 = strcpy(v11, v9->ifa_name);
                ++v10;
                v11 += strlen(v13) + 1;
              }

              v9 = v9->ifa_next;
            }

            while (v9);
          }

          v10->if_index = 0;
          v10->if_name = 0;
        }

        goto LABEL_23;
      }
    }

    v6 = 0;
    *__error() = 84;
LABEL_23:
    freeifaddrs(v15);
    return v6;
  }

  return 0;
}

ether_addr *__cdecl ether_aton(const char *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (ether_aton_ep || (result = malloc_type_calloc(1uLL, 6uLL, 0x1000040274DC3F3uLL), (ether_aton_ep = result) != 0))
  {
    if (sscanf(a1, " %x:%x:%x:%x:%x:%x", v4, &v4[1], &v4[2], &v4[3], &v4[4], &v4[5]) == 6)
    {
      v3 = 0;
      result = ether_aton_ep;
      do
      {
        result->octet[v3] = v4[v3];
        ++v3;
      }

      while (v3 != 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

servent *__cdecl getservbyport(int a1, const char *a2)
{
  v2 = si_search_search;
  if (!si_search_search)
  {
    v2 = si_module_with_name("search");
    si_search_search = v2;
  }

  v3 = si_service_byport(v2);
  LI_set_thread_item(209, v3);
  if (v3)
  {
    return (v3 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t si_service_byport(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 176)) != 0)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t search_service_byport(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      v9 = 0;
      while (1)
      {
        module = search_get_module(v1, 9u, &v9);
        if (!module)
        {
          break;
        }

        v3 = module;
        v4 = si_service_byport(module);
        if (v4)
        {
          v5 = v4;
          v6 = 0;
          v7 = 216;
          if (!*(v1 + 232))
          {
            v7 = 0;
          }

          if (*(v1 + v7 + 20))
          {
            v6 = *(v1 + 432);
          }

          si_cache_add_item(v6, v3, v5);
          return v5;
        }
      }
    }
  }

  return 0;
}

FILE *_fsi_get_service(uint64_t a1, const char *a2, char *a3, unsigned int a4, int a5)
{
  if (!a2 && a5 == 1 || !a4 && a5 == 2)
  {
    return 0;
  }

  result = fopen("/etc/services", "r");
  if (result)
  {
    v10 = result;
    __s1 = a3;
    v52 = 0;
    v53 = 0;
    _fsi_get_validation(a1, 7u, "/etc/services", result, &v53, &v52);
    line = _fsi_get_line(v10, v11, v12, v13, v14, v15, v16, v17);
    if (!line)
    {
      *&v48[4] = 0;
      goto LABEL_38;
    }

    v19 = line;
    *&v48[8] = 0;
    *v48 = bswap32(a4) >> 16;
    while (1)
    {
      if (*v19 == 35)
      {
        goto LABEL_30;
      }

      v20 = strchr(v19, 35);
      if (v20)
      {
        *v20 = 0;
      }

      v54[0] = 0;
      v21 = _fsi_tokenize(v19, " \t", 0, v54);
      v22 = v21;
      v23 = v54[0];
      if (v54[0] <= 1)
      {
        break;
      }

      v24 = (v21 + 16);
      v25 = v54[0] == 2 ? 0 : (v21 + 16);
      v51 = v25;
      v26 = *(v21 + 1);
      v27 = atoi(v26);
      v28 = strchr(v26, 47);
      if (!v28)
      {
        break;
      }

      *v28 = 0;
      if (__s1)
      {
        if (strcmp(__s1, v28 + 1))
        {
          break;
        }
      }

      if (a5)
      {
        if (a5 == 1)
        {
          if (strcmp(a2, *v22))
          {
            if (v23 == 2)
            {
              break;
            }

            v29 = *v24;
            if (!*v24)
            {
              break;
            }

            v36 = (v51 + 8);
            do
            {
              v37 = strcmp(a2, v29);
              if (!v37)
              {
                break;
              }

              v38 = *v36++;
              v29 = v38;
            }

            while (v38);
            if (v37)
            {
              break;
            }
          }
        }

        else if (v27 != *v48)
        {
          break;
        }
      }

      v46 = LI_ils_create("L4488s*4s", v29, v30, v31, v32, v33, v34, v35, a1);
      free(v22);
      free(v19);
      if (v46)
      {
        if (a5)
        {
          *&v48[4] = v46;
LABEL_38:
          fclose(v10);
          return *&v48[4];
        }

        *&v48[4] = si_list_add(*&v48[4], v46);
        si_item_release(v46, v47);
      }

LABEL_31:
      v19 = _fsi_get_line(v10, v39, v40, v41, v42, v43, v44, v45);
      if (!v19)
      {
        goto LABEL_38;
      }
    }

    free(v22);
LABEL_30:
    free(v19);
    goto LABEL_31;
  }

  return result;
}

void herror(const char *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = v5;
    if (*a1)
    {
      v5[0] = a1;
      v5[1] = strlen(a1);
      v5[2] = ": ";
      v5[3] = 2;
      v1 = v6;
    }
  }

  else
  {
    v1 = v5;
  }

  if (h_errno < 0)
  {
    v2 = "Resolver internal error";
  }

  else if (h_errno > 4)
  {
    v2 = "Unknown resolver error";
  }

  else
  {
    v2 = h_errlist[h_errno];
  }

  *v1 = v2;
  v3 = strlen(v2);
  v1[2] = "\n";
  v4 = v1 + 2;
  *(v4 - 1) = v3;
  v4[1] = 1;
  writev_NOCANCEL();
}

const char *__cdecl hstrerror(int a1)
{
  if (a1 < 0)
  {
    return "Resolver internal error";
  }

  if (a1 > 4)
  {
    return "Unknown resolver error";
  }

  return h_errlist[a1];
}

uint64_t dn_expand(uint64_t a1, unint64_t a2, _BYTE *a3, _BYTE *a4, int a5)
{
  v5 = a3 + 1;
  v6 = *a3;
  if (*a3)
  {
    v7 = 0;
    v8 = -1;
    v9 = a4;
    v10 = &a4[a5];
    while (1)
    {
      if ((v6 & 0xC0) == 0xC0)
      {
        v15 = a1 + (*v5 | ((v6 & 0x3F) << 8));
        if (v15 >= a2)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v5 - a3;
        if (v8 < 0)
        {
          v8 = v16 + 1;
        }

        v7 += 2;
        if ((a2 - a1) <= v7)
        {
          return 0xFFFFFFFFLL;
        }

        v5 = v15;
      }

      else
      {
        if ((v6 & 0xC0) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        v11 = a4;
        if (v9 != a4)
        {
          if (v9 >= v10)
          {
            return 0xFFFFFFFFLL;
          }

          *v9 = 46;
          v11 = v9 + 1;
        }

        if (&v11[v6] >= v10)
        {
          return 0xFFFFFFFFLL;
        }

        v12 = v6;
        v7 += v6 + 1;
        while (v12 >= 1)
        {
          v14 = *v5++;
          v13 = v14;
          if (v14 == 46)
          {
            if (&v11[v12 + 1] >= v10)
            {
              return 0xFFFFFFFFLL;
            }

            *v11++ = 92;
          }

          *v11++ = v13;
          --v12;
          if (v5 >= a2)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v9 = v11;
      }

      v17 = *v5++;
      v6 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = -1;
  v9 = a4;
LABEL_25:
  *v9 = 0;
  v18 = *a4;
  if (*a4)
  {
    v19 = a4 + 1;
    while ((v18 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x4000) == 0)
    {
      v20 = *v19++;
      v18 = v20;
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
LABEL_30:
    v21 = v5 - a3;
    if (v8 >= 0)
    {
      return v8;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t __dn_skipname(_BYTE *a1, unint64_t a2)
{
  v2 = a1;
  if (a1 >= a2)
  {
LABEL_10:
    if (v2 <= a2)
    {
      return (v2 - a1);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2 = a1;
    while (1)
    {
      v3 = v2 + 1;
      v4 = *v2;
      if (!*v2)
      {
        ++v2;
        goto LABEL_10;
      }

      if ((v4 & 0xC0) != 0)
      {
        break;
      }

      v2 = &v3[v4];
      if (&v3[v4] >= a2)
      {
        goto LABEL_10;
      }
    }

    if ((v4 & 0xC0) == 0xC0)
    {
      v2 += 2;
      goto LABEL_10;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t _mdns_query(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  LODWORD(v6) = a6;
  v8 = si_module_with_name("mdns");
  if (v8)
  {
    v9 = v8;
    v10 = (*(v8[5] + 320))();
    if (v10)
    {
      v12 = v10;
      v13 = *(v10 + 32);
      if (((v13 | v6) & 0x80000000) != 0)
      {
        h_errno = 3;
        si_item_release(v10, v11);
        goto LABEL_15;
      }

      if (v13 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v13;
      }

      memcpy(a5, *(v10 + 40), v6);
      si_item_release(v12, v14);
      if (v6 < 0xC)
      {
        goto LABEL_16;
      }

      v15 = BYTE3(*a5) & 0xF;
      if (!v15)
      {
        if (HIWORD(*a5))
        {
          goto LABEL_16;
        }

        v16 = 4;
        goto LABEL_12;
      }

      if (v15 == 2)
      {
        v16 = 2;
        goto LABEL_12;
      }

      if (v15 != 3)
      {
        v16 = 3;
        goto LABEL_12;
      }
    }

    v16 = 1;
LABEL_12:
    h_errno = v16;
LABEL_15:
    v13 = 0xFFFFFFFFLL;
LABEL_16:
    si_module_release(v9);
    return v13;
  }

  h_errno = 3;
  return 0xFFFFFFFFLL;
}

int inet6_option_init(void *a1, cmsghdr **a2, int a3)
{
  if ((a3 - 51) < 0xFFFFFFFE)
  {
    return -1;
  }

  result = 0;
  *(a1 + 2) = a3;
  *a1 = 0x290000000CLL;
  *a2 = a1;
  return result;
}

int inet6_option_append(cmsghdr *a1, const __uint8_t *a2, int a3, int a4)
{
  result = -1;
  if (a3 <= 8 && ((1 << a3) & 0x116) != 0 && a4 <= 7)
  {
    v8 = a1 + 12;
    cmsg_len = a1->cmsg_len;
    v9 = a1 + cmsg_len;
    if (cmsg_len == 12)
    {
      v9 += 2;
      a1->cmsg_len = 14;
    }

    v10 = (a4 - (v9 - v8) % a3 + ((a3 + (v9 - v8) % a3 - 1) & -a3)) % a3;
    inet6_insert_padopt(v9, v10);
    a1->cmsg_len += v10;
    v11 = &v9[v10];
    if (*a2)
    {
      v12 = a2[1] + 2;
    }

    else
    {
      v12 = 1;
    }

    memcpy(v11, a2, v12);
    v13 = &v11[v12];
    a1->cmsg_len += v12;
    v14 = ((v13 - v8 + 7) & 0xFFFFFFF8) - (v13 - v8);
    inet6_insert_padopt(v13, v14);
    result = 0;
    a1->cmsg_len += v14;
    BYTE1(a1[1].cmsg_len) = ((v13 + v14 - v8) >> 3) - 1;
  }

  return result;
}

void inet6_insert_padopt(_BYTE *a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      *a1 = 0;
    }

    else
    {
      *a1 = 1;
      a1[1] = a2 - 2;
      bzero(a1 + 2, a2 - 2);
    }
  }
}

__uint8_t *__cdecl inet6_option_alloc(cmsghdr *a1, int a2, int a3, int a4)
{
  v4 = 0;
  if (a3 <= 8 && ((1 << a3) & 0x116) != 0)
  {
    if (a4 <= 7)
    {
      v8 = a1 + 12;
      cmsg_len = a1->cmsg_len;
      v9 = a1 + cmsg_len;
      if (cmsg_len == 12)
      {
        v9 += 2;
        a1->cmsg_len = 14;
      }

      v10 = (a4 - (v9 - v8) % a3 + ((a3 + (v9 - v8) % a3 - 1) & -a3)) % a3;
      inet6_insert_padopt(v9, v10);
      v4 = &v9[v10];
      v11 = &v4[a2];
      a1->cmsg_len += v10 + a2;
      v12 = ((v11 - v8 + 7) & 0xFFFFFFF8) - (v11 - v8);
      inet6_insert_padopt(v11, v12);
      a1->cmsg_len += v12;
      BYTE1(a1[1].cmsg_len) = ((v11 + v12 - v8) >> 3) - 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

int inet6_option_next(const cmsghdr *a1, __uint8_t **a2)
{
  if (a1->cmsg_level != 41)
  {
    return -1;
  }

  if ((a1->cmsg_type - 49) > 1)
  {
    return -1;
  }

  cmsg_len = a1->cmsg_len;
  if (cmsg_len < 0x10)
  {
    return -1;
  }

  v3 = 8 * BYTE1(a1[1].cmsg_len);
  if (((v3 + 11) & 0xFF8) + 12 > cmsg_len)
  {
    return -1;
  }

  v4 = &a1[1].cmsg_type + v3;
  v5 = *a2;
  if (*a2)
  {
    if (*v5)
    {
      if (v5 + 2 > v4)
      {
        return -1;
      }

      v6 = v5[1] + 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = &v5[v6];
    if (v7 > v4)
    {
      return -1;
    }
  }

  else
  {
    v7 = &a1[1].cmsg_len + 2;
  }

  *a2 = v7;
  if (v7 >= v4)
  {
    *a2 = 0;
    return -1;
  }

  if (*v7)
  {
    if (v7 + 2 <= v4)
    {
      v8 = v7[1] + 2;
      goto LABEL_19;
    }

    return -1;
  }

  v8 = 1;
LABEL_19:
  if (&v7[v8] <= v4)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int inet6_option_find(const cmsghdr *a1, __uint8_t **a2, int a3)
{
  if (a1->cmsg_level != 41)
  {
    return -1;
  }

  if ((a1->cmsg_type - 49) > 1)
  {
    return -1;
  }

  cmsg_len = a1->cmsg_len;
  if (cmsg_len < 0x10)
  {
    return -1;
  }

  v4 = 8 * BYTE1(a1[1].cmsg_len);
  if (((v4 + 11) & 0xFF8) + 12 > cmsg_len)
  {
    return -1;
  }

  v6 = &a1[1].cmsg_type + v4;
  v7 = *a2;
  if (!*a2)
  {
    v9 = &a1[1].cmsg_len + 2;
    goto LABEL_13;
  }

  if (*v7)
  {
    if (v7 + 2 > v6)
    {
      return -1;
    }

    v8 = v7[1] + 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = &v7[v8];
  if (v9 > v6)
  {
    return -1;
  }

LABEL_13:
  *a2 = v9;
  while (1)
  {
    if (v9 >= v6)
    {
      v9 = 0;
      result = -1;
      goto LABEL_23;
    }

    if (*v9 == a3)
    {
      break;
    }

    if (*v9)
    {
      if (v9 + 2 > v6)
      {
        return -1;
      }

      v10 = v9[1] + 2;
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
    if (v9 > v6)
    {
      return -1;
    }
  }

  result = 0;
LABEL_23:
  *a2 = v9;
  return result;
}

int inet6_opt_init(void *a1, socklen_t a2)
{
  result = -1;
  if (a2 && (a2 & 7) == 0)
  {
    if (a1)
    {
      *(a1 + 1) = (a2 >> 3) - 1;
    }

    return 2;
  }

  return result;
}

int inet6_opt_append(void *a1, socklen_t a2, int a3, __uint8_t a4, socklen_t a5, __uint8_t a6, void **a7)
{
  v7 = -1;
  if (a4 >= 2u)
  {
    v8 = a5;
    if (a5 <= 0xFF && a6 <= 8u && ((1 << a6) & 0x116) != 0 && a6 <= a5)
    {
      v11 = a3 + a5 + 2;
      if (v11 % a6)
      {
        v12 = a6 - v11 % a6;
      }

      else
      {
        v12 = 0;
      }

      v7 = v12 + v11;
      if (a2 && v7 > a2)
      {
        return -1;
      }

      else if (a1)
      {
        v13 = a1 + a3;
        if (v12 == 1)
        {
          *v13++ = 0;
        }

        else if (v12 >= 1)
        {
          *v13 = 1;
          v14 = v12 - 2;
          v15 = (v13 + 2);
          v13[1] = v12 - 2;
          bzero(v13 + 2, v12 - 2);
          v13 = &v15[v14];
        }

        *v13 = a4;
        v13[1] = v8;
        *a7 = v13 + 2;
      }
    }
  }

  return v7;
}

int inet6_opt_finish(void *a1, socklen_t a2, int a3)
{
  if (a3 > 0)
  {
    v3 = ((a3 - 1) | 7) + 1;
  }

  else
  {
    v3 = 0;
  }

  if (a1)
  {
    if (v3 <= a2)
    {
      v4 = v3 - a3;
      v5 = a1 + a3;
      if (v3 - a3 == 1)
      {
        *v5 = 0;
      }

      else if (v4 >= 1)
      {
        *v5 = 1;
        v5[1] = v4 - 2;
        bzero(v5 + 2, (v4 - 2));
      }
    }

    else
    {
      return -1;
    }
  }

  return v3;
}

int inet6_opt_next(void *a1, socklen_t a2, int a3, __uint8_t *a4, socklen_t *a5, void **a6)
{
  v6 = -1;
  if (!a2 || (a2 & 7) != 0)
  {
    return v6;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 2;
  }

  v8 = v7;
  if (v7 >= a2)
  {
LABEL_17:
    *a6 = 0;
    return -1;
  }

  v9 = a1 + a2;
  v10 = a1 + v8;
  while (1)
  {
    v11 = *v10;
    if (v11 != 1)
    {
      break;
    }

    if (v10 + 2 > v9)
    {
      goto LABEL_17;
    }

    v10 += v10[1] + 2;
    if (v10 > v9)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (v10 >= v9)
    {
      goto LABEL_17;
    }
  }

  if (!*v10)
  {
    ++v10;
    goto LABEL_13;
  }

  v12 = v10 + 2;
  if (v10 + 2 > v9)
  {
    goto LABEL_17;
  }

  v13 = v10[1];
  v14 = &v10[v13 + 2];
  if (v14 > v9)
  {
    goto LABEL_17;
  }

  *a4 = v11;
  *a5 = v13;
  v6 = v14 - a1;
  *a6 = v12;
  return v6;
}

int inet6_opt_find(void *a1, socklen_t a2, int a3, __uint8_t a4, socklen_t *a5, void **a6)
{
  v6 = -1;
  if (a2 && (a2 & 7) == 0)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 2;
    }

    v8 = v7;
    if (v7 < a2)
    {
      v9 = a1 + a2;
      v10 = a1 + v8;
      do
      {
        if (*v10)
        {
          if (v10 + 2 > v9)
          {
            break;
          }

          v11 = v10[1] + 2;
        }

        else
        {
          v11 = 1;
        }

        v12 = &v10[v11];
        if (v12 > v9)
        {
          break;
        }

        if (*v10 == a4)
        {
          *a5 = v11 - 2;
          *a6 = v10 + 2;
          return v12 - a1;
        }

        v10 += v11;
      }

      while (v12 < v9);
    }

    *a6 = 0;
    return -1;
  }

  return v6;
}

size_t inet6_rthdr_space(int a1, int a2)
{
  if ((a2 - 24) >= 0xFFFFFFE9 && a1 == 0)
  {
    return (16 * a2 + 20);
  }

  else
  {
    return 0;
  }
}

cmsghdr *__cdecl inet6_rthdr_init(cmsghdr *result, int a2)
{
  *&result->cmsg_level = 0x1800000029;
  if (a2)
  {
    return 0;
  }

  result->cmsg_len = 20;
  *&result[1].cmsg_len = 0;
  BYTE2(result[1].cmsg_len) = 0;
  return result;
}

int inet6_rthdr_add(cmsghdr *a1, const in6_addr *a2, unsigned int a3)
{
  result = -1;
  if (a3 <= 1 && !BYTE2(a1[1].cmsg_len) && !a3)
  {
    cmsg_len_high = HIBYTE(a1[1].cmsg_len);
    if (cmsg_len_high != 23)
    {
      result = 0;
      HIBYTE(a1[1].cmsg_len) = cmsg_len_high + 1;
      v6 = BYTE1(a1[1].cmsg_len);
      *(&a1[1].cmsg_type + 2 * v6) = *a2;
      LOBYTE(v6) = v6 + 2;
      BYTE1(a1[1].cmsg_len) = v6;
      a1->cmsg_len = 8 * v6 + 20;
    }
  }

  return result;
}

int inet6_rthdr_lasthop(cmsghdr *a1, unsigned int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = HIBYTE(a1[1].cmsg_len) > 0x17u;
  }

  v4 = v3;
  return v4 << 31 >> 31;
}

int inet6_rthdr_segments(const cmsghdr *a1)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  v2 = BYTE1(a1[1].cmsg_len);
  v3 = (v2 > 0x2E) | v2;
  v4 = v2 >> 1;
  if (v3)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

in6_addr *__cdecl inet6_rthdr_getaddr(cmsghdr *a1, int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return 0;
  }

  v2 = BYTE1(a1[1].cmsg_len);
  if (v2 > 0x2E || (v2 & 1) != 0)
  {
    return 0;
  }

  v5 = v2 >> 1 >= a2;
  v6 = (&a1[1].cmsg_type + 4 * a2);
  if (!v5)
  {
    v6 = 0;
  }

  if (a2 >= 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

int inet6_rthdr_getflags(const cmsghdr *a1, int a2)
{
  if (BYTE2(a1[1].cmsg_len))
  {
    return -1;
  }

  v3 = BYTE1(a1[1].cmsg_len);
  v5 = a2 < 0 || v3 >> 1 < a2;
  v6 = v5 << 31 >> 31;
  if (v3 <= 0x2E && (v3 & 1) == 0)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

socklen_t inet6_rth_space(int a1, int a2)
{
  if (a2 < 0x80 && a1 == 0)
  {
    return (16 * a2) | 8;
  }

  else
  {
    return 0;
  }
}

void *__cdecl inet6_rth_init(void *a1, socklen_t a2, int a3, int a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = a4;
  result = 0;
  if (a4 <= 0x7F && ((16 * a4) | 8u) <= a2)
  {
    bzero(a1, a2);
    *(a1 + 1) = 2 * v5;
    *(a1 + 1) = 0;
    *(a1 + 1) = 0;
    return a1;
  }

  return result;
}

int inet6_rth_add(void *a1, const in6_addr *a2)
{
  if (*(a1 + 2))
  {
    return -1;
  }

  v3 = *(a1 + 3);
  if (v3 == *(a1 + 1) >> 1)
  {
    return -1;
  }

  result = 0;
  *(a1 + 16 * v3 + 8) = *a2;
  *(a1 + 3) = v3 + 1;
  return result;
}

int inet6_rth_reverse(const void *a1, void *a2)
{
  if (*(a1 + 2))
  {
    return -1;
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    return -1;
  }

  memmove(a2, a1, (8 * v3) | 8);
  *(a2 + 3) = v3 >> 1;
  if (v3 >= 4)
  {
    v4 = v3 >> 2;
    v5 = (a2 + 8);
    v6 = (a2 + 16 * (v3 >> 1) - 8);
    do
    {
      v7 = *v5;
      *v5++ = *v6;
      *v6-- = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

int inet6_rth_segments(const void *a1)
{
  if (*(a1 + 2))
  {
    return -1;
  }

  v1 = *(a1 + 1);
  if (v1)
  {
    return -1;
  }

  v2 = v1 >> 1;
  if (v2 < *(a1 + 3))
  {
    return -1;
  }

  else
  {
    return v2;
  }
}

in6_addr *__cdecl inet6_rth_getaddr(const void *a1, int a2)
{
  if (*(a1 + 2))
  {
    return 0;
  }

  v2 = *(a1 + 1);
  if (v2)
  {
    return 0;
  }

  v3 = v2 >> 1;
  if (v3 > a2 && v3 >= *(a1 + 3))
  {
    return (a1 + 16 * a2 + 8);
  }

  else
  {
    return 0;
  }
}

const char *si_cache_add_list(const char *result, const char **a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        if (result != a2)
        {
          if (*(a3 + 4))
          {
            result = *a2;
            if (*a2)
            {
              result = strcmp(result, *v5);
              if (result)
              {
                result = si_module_allows_caching(a2);
                if (result)
                {
                  v6 = **(a3 + 16);
                  if (v6)
                  {
                    v7 = *(v6 + 8);
                    if (v7 <= 0x11)
                    {
                      v8 = *(v5 + 4);
                      if (v8)
                      {
                        v9 = (v8 + 240 * v7);
                        pthread_mutex_lock(v9);
                        si_list_release(*(v8 + 240 * *(v6 + 8) + 232), v10);
                        *(v8 + 240 * *(v6 + 8) + 232) = si_list_retain(a3, v11);

                        return pthread_mutex_unlock(v9);
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

  return result;
}

void cache_close(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      v4 = v2 + 72;
      do
      {
        si_list_release(*&v2[240 * v3 + 232], a2);
        for (i = 0; i != 160; i += 8)
        {
          si_item_release(*&v4[i], v5);
          *&v4[i] = 0;
        }

        pthread_mutex_destroy(&v2[240 * v3++]);
        v4 += 240;
      }

      while (v3 != 18);

      free(v2);
    }
  }
}

atomic_uint *cache_host_byname(uint64_t a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  result = cache_fetch_item(a1, v8, a2, a3, 1);
  if (a5 && !result && !*a5)
  {
    *a5 = 1;
  }

  return result;
}

atomic_uint *cache_host_byaddr(uint64_t a1, char *a2, int a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 == 2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  result = cache_fetch_item(a1, v8, a2, a3, 2);
  if (a5 && !result && !*a5)
  {
    *a5 = 1;
  }

  return result;
}

atomic_uint *cache_service_byname(uint64_t a1, char *a2, char *__s1)
{
  if (!a2)
  {
    return 0;
  }

  if (__s1)
  {
    if (!strcmp(__s1, "tcp"))
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return cache_fetch_item(a1, 9, a2, v5, 1);
}

uint64_t cache_nameinfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 1;
  }

  return 0;
}

atomic_uint *cache_fetch_list(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1 && gL1CacheEnabled)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3 + 240 * a2;
      pthread_mutex_lock(v4);
      v2 = *(v4 + 232);
      if (v2)
      {
        if (v2[1])
        {
          v5 = **(v2 + 2);
          is_valid = si_item_is_valid(v5);
          v8 = v2[1];
          if (v8 >= 2 && is_valid == 1)
          {
            v10 = 1;
            do
            {
              v11 = *(*(v2 + 2) + 8 * v10);
              if (*v11 == *v5 && *(v11 + 8) == *(v5 + 8) && *(v11 + 16) == *(v5 + 16) && *(v11 + 24) == *(v5 + 24))
              {
                is_valid = 1;
              }

              else
              {
                is_valid = si_item_is_valid(*(*(v2 + 2) + 8 * v10));
                v8 = v2[1];
                v5 = v11;
              }
            }

            while (++v10 < v8 && is_valid == 1);
          }

          if (is_valid)
          {
            v2 = si_list_retain(v2, v7);
          }

          else
          {
            si_list_release(v2, v7);
            v2 = 0;
            *(v4 + 232) = 0;
          }
        }

        else
        {
          v2 = 0;
        }
      }

      pthread_mutex_unlock(v4);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void **file_netgroup_byname(uint64_t a1, void **a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      _fsi_check_netgroup_cache(a1);
      pthread_mutex_lock(&file_mutex);
      v5 = *(v4 + 56);
      if (!v5)
      {
        goto LABEL_12;
      }

      while (strcmp(v2, *v5))
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      v13 = *(v5 + 16);
      if (v13)
      {
        v2 = 0;
        do
        {
          v14 = LI_ils_create("L4488sss", v6, v7, v8, v9, v10, v11, v12, a1);
          v2 = si_list_add(v2, v14);
          v13 = *(v13 + 32);
        }

        while (v13);
      }

      else
      {
LABEL_12:
        v2 = 0;
      }

      pthread_mutex_unlock(&file_mutex);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t file_in_netgroup(uint64_t a1, const char *a2, const char *a3, const char *a4, const char *a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    return 0;
  }

  _fsi_check_netgroup_cache(a1);
  pthread_mutex_lock(&file_mutex);
  v10 = *(v5 + 56);
  if (!v10)
  {
    goto LABEL_19;
  }

  while (strcmp(a2, *v10))
  {
    v10 = *(v10 + 24);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v12 = *(v10 + 16);
  if (v12)
  {
    while (1)
    {
      v13 = v12;
      v12 = v12[4];
      if ((!a3 || (v14 = v13[1]) != 0 && !strcmp(a3, v14)) && (!a4 || (v15 = v13[2]) != 0 && !strcmp(a4, v15)))
      {
        if (!a5)
        {
          break;
        }

        v16 = v13[3];
        if (v16)
        {
          if (!strcmp(a5, v16))
          {
            break;
          }
        }
      }

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v11 = 1;
  }

  else
  {
LABEL_19:
    v11 = 0;
  }

  pthread_mutex_unlock(&file_mutex);
  return v11;
}

atomic_uint *file_host_byname(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
    result = _fsi_get_host(a1, a2, 0, a3, 1, a5);
    if (!result)
    {
      result = 0;
      if (!*a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {

    return _fsi_get_host(a1, a2, 0, a3, 1, 0);
  }

  return result;
}

atomic_uint *file_host_byaddr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (a5)
  {
    *a5 = 0;
    result = _fsi_get_host(a1, 0, a2, a3, 2, a5);
    if (!result)
    {
      result = 0;
      if (!*a5)
      {
        *a5 = 1;
      }
    }
  }

  else
  {

    return _fsi_get_host(a1, 0, a2, a3, 2, 0);
  }

  return result;
}

FILE *file_network_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 8);
  }

  else
  {
    return 0;
  }
}

FILE *file_protocol_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 10);
  }

  else
  {
    return 0;
  }
}

FILE *file_rpc_byname(uint64_t a1, const char *a2)
{
  if (a2)
  {
    return _fsi_get_name_number_aliases(a1, a2, 0, 1, 11);
  }

  else
  {
    return 0;
  }
}

unsigned int *file_addrinfo(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9)
{
  if (a9)
  {
    *a9 = 0;
  }

  return _gai_simple(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _fsi_check_netgroup_cache(uint64_t result)
{
  if (result && *(result + 32))
  {
    pthread_mutex_lock(&file_mutex);

    return pthread_mutex_unlock(&file_mutex);
  }

  return result;
}

void **_fsi_get_alias(uint64_t a1, const char *a2, int a3)
{
  if (!a2 && a3 == 1)
  {
    return 0;
  }

  v6 = fopen("/etc/aliases", "r");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v38 = 0;
  v39 = 0;
  _fsi_get_validation(a1, 4u, "/etc/aliases", v6, &v39, &v38);
  line = _fsi_get_line(v7, v8, v9, v10, v11, v12, v13, v14);
  if (!line)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v16 = line;
  v17 = 0;
  while (*v16 == 35)
  {
LABEL_11:
    free(v16);
LABEL_12:
    v16 = _fsi_get_line(v7, v20, v21, v22, v23, v24, v25, v26);
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  v40 = 0;
  v18 = _fsi_tokenize(v16, ":", 1, &v40);
  v19 = v18;
  if (v40 <= 1 || a3 && strcmp(a2, *v18))
  {
    free(v19);
    goto LABEL_11;
  }

  v40 = 0;
  v37 = _fsi_tokenize(v19[1], ",", 1, &v40);
  v34 = LI_ils_create("L4488s4*4", v27, v28, v29, v30, v31, v32, v33, a1);
  free(v19);
  free(v37);
  free(v16);
  if (!v34)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    v17 = si_list_add(v17, v34);
    si_item_release(v34, v35);
    goto LABEL_12;
  }

  v17 = v34;
LABEL_19:
  fclose(v7);
  return v17;
}

atomic_uint *_fsi_get_host(uint64_t a1, char *a2, void *a3, int a4, int a5, _DWORD *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  if ((a2 || a5 != 1) && (a3 || a5 != 2) && (v12 = fopen("/etc/hosts", "r")) != 0)
  {
    v13 = v12;
    __s1 = a2;
    v52 = a3;
    v56 = a5;
    v57 = 0;
    v58 = 0;
    v54 = a1;
    _fsi_get_validation(a1, 5u, "/etc/hosts", v12, &v58, &v57);
    line = _fsi_get_line(v13, v14, v15, v16, v17, v18, v19, v20);
    if (line)
    {
      v22 = line;
      v53 = 0;
      while (1)
      {
        if (*v22 == 35)
        {
          goto LABEL_36;
        }

        v61[0] = 0;
        v61[1] = 0;
        v60 = 0uLL;
        v23 = _fsi_tokenize(v22, " \t", 0, v61 + 1);
        v24 = v23;
        if (SHIDWORD(v61[0]) <= 1)
        {
          goto LABEL_35;
        }

        v64 = 0;
        v31 = inet_pton(2, *v23, v61);
        if (v31 == 1)
        {
          v59 = v61[0];
          v32 = 4;
          v33 = 2;
          p_s2 = &v59;
        }

        else
        {
          if (inet_pton(30, *v24, &v60) != 1)
          {
            goto LABEL_35;
          }

          __s2 = v60;
          v32 = 16;
          v33 = 30;
          p_s2 = &__s2;
        }

        v63 = p_s2;
        v35 = HIDWORD(v61[0]);
        v36 = v24 + 2;
        if (SHIDWORD(v61[0]) >= 3)
        {
          v37 = v24 + 2;
        }

        else
        {
          v37 = 0;
        }

        if (v56)
        {
          if (v33 != a4)
          {
            goto LABEL_35;
          }

          if (v56 == 1)
          {
            if (strcmp(__s1, v24[1]))
            {
              if (v35 < 3)
              {
                goto LABEL_35;
              }

              p_s2 = *v36;
              if (!*v36)
              {
                goto LABEL_35;
              }

              v38 = v37 + 1;
              do
              {
                v39 = strcmp(__s1, p_s2);
                if (!v39)
                {
                  break;
                }

                v40 = *v38++;
                p_s2 = v40;
              }

              while (v40);
              if (v39)
              {
LABEL_35:
                free(v24);
LABEL_36:
                free(v22);
                goto LABEL_37;
              }
            }
          }

          else if (memcmp(v52, p_s2, v32))
          {
            goto LABEL_35;
          }
        }

        if (v31 == 1)
        {
          v41 = LI_ils_create("L4488s*44a", p_s2, v25, v26, v27, v28, v29, v30, v54);
        }

        else
        {
          v41 = LI_ils_create("L4488s*44c", p_s2, v25, v26, v27, v28, v29, v30, v54);
        }

        v42 = v41;
        free(v24);
        free(v22);
        if (v42)
        {
          if (v56)
          {
            fclose(v13);
            return v42;
          }

          v53 = si_list_add(v53, v42);
          si_item_release(v42, v50);
        }

LABEL_37:
        v22 = _fsi_get_line(v13, v43, v44, v45, v46, v47, v48, v49);
        if (!v22)
        {
          goto LABEL_42;
        }
      }
    }

    v53 = 0;
LABEL_42:
    fclose(v13);
    return v53;
  }

  else
  {
    v42 = 0;
    if (a6)
    {
      *a6 = 3;
    }
  }

  return v42;
}

FILE *_fsi_get_name_number_aliases(uint64_t a1, const char *a2, int a3, int a4, int a5)
{
  switch(a5)
  {
    case 8:
      v7 = 6;
      v8 = "/etc/networks";
      break;
    case 11:
      v7 = 9;
      v8 = "/etc/rpc";
      break;
    case 10:
      v7 = 8;
      v8 = "/etc/protocols";
      break;
    default:
LABEL_43:
      abort();
  }

  result = fopen(v8, "r");
  if (!result)
  {
    return result;
  }

  v10 = result;
  v50 = a5;
  v53 = 0;
  v54 = 0;
  _fsi_get_validation(a1, v7, v8, result, &v54, &v53);
  line = _fsi_get_line(v10, v11, v12, v13, v14, v15, v16, v17);
  if (!line)
  {
    v47 = 0;
    goto LABEL_40;
  }

  v19 = line;
  v47 = 0;
  v49 = a5 - 10;
  while (1)
  {
    if (*v19 == 35)
    {
      goto LABEL_15;
    }

    v20 = strchr(v19, 35);
    if (v20)
    {
      *v20 = 0;
    }

    v55 = 0;
    v21 = _fsi_tokenize(v19, " \t", 0, &v55);
    v22 = v21;
    v23 = v55;
    if (v55 < 2)
    {
LABEL_14:
      free(v22);
LABEL_15:
      free(v19);
      goto LABEL_16;
    }

    v31 = atoi(v21[1]);
    v39 = v22 + 2;
    if (v23 == 2)
    {
      v40 = 0;
    }

    else
    {
      v40 = v22 + 2;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        if (strcmp(a2, *v22))
        {
          if (v23 == 2)
          {
            goto LABEL_14;
          }

          v32 = *v39;
          if (!*v39)
          {
            goto LABEL_14;
          }

          v41 = v40 + 1;
          do
          {
            v42 = strcmp(a2, v32);
            if (!v42)
            {
              break;
            }

            v43 = *v41++;
            v32 = v43;
          }

          while (v43);
          if (v42)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v31 != a3)
      {
        goto LABEL_14;
      }
    }

    if (v49 >= 2)
    {
      if (v50 != 8)
      {
        goto LABEL_43;
      }

      v44 = LI_ils_create("L4488s*44", v32, v33, v34, v35, v36, v37, v38, a1);
    }

    else
    {
      v44 = LI_ils_create("L4488s*4", v32, v33, v34, v35, v36, v37, v38, a1);
    }

    v45 = v44;
    free(v22);
    free(v19);
    if (v45)
    {
      break;
    }

LABEL_16:
    v19 = _fsi_get_line(v10, v24, v25, v26, v27, v28, v29, v30);
    if (!v19)
    {
      goto LABEL_40;
    }
  }

  if (!a4)
  {
    v47 = si_list_add(v47, v45);
    si_item_release(v45, v46);
    goto LABEL_16;
  }

  v47 = v45;
LABEL_40:
  fclose(v10);
  return v47;
}

void **_fsi_get_fs(size_t a1, const char *a2, int a3)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a2 && a3)
  {
    return 0;
  }

  v75 = 0;
  v76 = 0;
  memset(&v80, 0, 512);
  v6 = 0;
  if (statfs("/", &v80))
  {
    return v6;
  }

  v77 = 0;
  v78 = 0;
  size[0] = 0;
  v8 = 0;
  if (sysctlbyname("vfs.generic.apfs.edt_fstab", 0, size, 0, 0) || !size[0])
  {
LABEL_12:
    v11 = a3 == 0;
    v6 = v8;
    goto LABEL_13;
  }

  v9 = malloc_type_malloc(size[0], 0xE34219A7uLL);
  if (!v9)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  if (sysctlbyname("vfs.generic.apfs.edt_fstab", v9, size, 0, 0))
  {
    free(v10);
    goto LABEL_11;
  }

  size[0] /= 0xECuLL;
  v57 = a1;
  _fsi_get_validation(a1, 0xAu, "/etc/fstab", 0, &v78, &v77);
  v65 = 0;
  v6 = 0;
LABEL_62:
  v66 = 236 * v65;
  while (v65 < size[0])
  {
    switch(a3)
    {
      case 0:
        goto LABEL_71;
      case 2:
        v68 = &v10[v66 + 32];
        v67 = a2;
        break;
      case 1:
        v67 = a2;
        v68 = &v10[v66];
        break;
      default:
        goto LABEL_70;
    }

    if (!strcmp(v67, v68))
    {
LABEL_71:
      v8 = LI_ils_create("L4488sssss44", v58, v59, v60, v61, v62, v63, v64, v57);
      goto LABEL_72;
    }

LABEL_70:
    v8 = 0;
LABEL_72:
    v66 += 236;
    ++v65;
    if (v8)
    {
      if (a3)
      {
        a1 = v57;
        goto LABEL_12;
      }

      v6 = si_list_add(v6, v8);
      si_item_release(v8, v69);
      goto LABEL_62;
    }
  }

  free(v10);
  a1 = v57;
  if (a3)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
  if (!v6)
  {
LABEL_13:
    if (!(*v80.f_fstypename ^ 0x73667061 | v80.f_fstypename[4]))
    {
      return v6;
    }

    v12 = fopen("/etc/fstab", "r");
    if (v12)
    {
      v14 = v12;
      _fsi_get_validation(a1, 0xAu, "/etc/fstab", v12, &v76, &v75);
      line = _fsi_get_line(v14, v15, v16, v17, v18, v19, v20, v21);
      if (!line)
      {
LABEL_52:
        fclose(v14);
        return v6;
      }

      v23 = line;
      v73 = v11;
      v74 = a1;
      while (1)
      {
        if (*v23 != 35)
        {
          LODWORD(size[0]) = 0;
          v24 = _fsi_tokenize(v23, " \t", 0, size);
          v25 = v24;
          v26 = size[0];
          if ((LODWORD(size[0]) - 7) > 0xFFFFFFFC)
          {
            if (LODWORD(size[0]) >= 5)
            {
              atoi(*(v24 + 4));
              if (v26 == 6)
              {
                atoi(v25[5]);
              }
            }

            v27 = strdup(v25[3]);
            if (v27)
            {
              v28 = v27;
              LODWORD(size[0]) = 0;
              v29 = _fsi_tokenize(v27, ",", 0, size);
              if (v29)
              {
                v37 = v29;
                v38 = LODWORD(size[0]);
                v39 = v29;
                if (SLODWORD(size[0]) >= 1)
                {
                  do
                  {
                    v40 = *v39;
                    v41 = **v39;
                    if (v41 == 120)
                    {
                      if (*(v40 + 1) == 120)
                      {
LABEL_34:
                        if (!*(v40 + 2))
                        {
                          break;
                        }
                      }
                    }

                    else
                    {
                      if (v41 == 115)
                      {
                        v42 = *(v40 + 1);
                      }

                      else
                      {
                        if (v41 != 114)
                        {
                          goto LABEL_35;
                        }

                        v42 = *(v40 + 1);
                        if (v42 == 111)
                        {
                          goto LABEL_34;
                        }
                      }

                      if (v42 == 119)
                      {
                        goto LABEL_34;
                      }
                    }

LABEL_35:
                    ++v39;
                    --v38;
                  }

                  while (v38);
                }

                switch(a3)
                {
                  case 0:
LABEL_49:
                    v52 = LI_ils_create("L4488sssss44", v30, v31, v32, v33, v34, v35, v36, v74);
                    free(v25);
                    free(v37);
                    free(v28);
                    free(v23);
                    if (v52)
                    {
                      if (!v73)
                      {
                        fclose(v14);
                        return v52;
                      }

                      v6 = si_list_add(v6, v52);
                      si_item_release(v52, v53);
                    }

                    goto LABEL_47;
                  case 2:
                    v43 = v25[1];
                    goto LABEL_43;
                  case 1:
                    v43 = *v25;
LABEL_43:
                    if (!strcmp(a2, v43))
                    {
                      goto LABEL_49;
                    }

                    break;
                }

                v44 = v25;
              }

              else
              {
                free(v25);
                v44 = v28;
              }

              free(v44);
              goto LABEL_46;
            }
          }

          free(v25);
        }

LABEL_46:
        free(v23);
LABEL_47:
        v23 = _fsi_get_line(v14, v45, v46, v47, v48, v49, v50, v51);
        if (!v23)
        {
          goto LABEL_52;
        }
      }
    }

    size[0] = MEMORY[0x1E69E9820];
    size[1] = 0x40000000;
    size[2] = ___fsi_fs_root_block_invoke;
    size[3] = &__block_descriptor_tmp_40;
    size[4] = a1;
    if (rootfs_once != -1)
    {
      dispatch_once(&rootfs_once, size);
    }

    v54 = si_item_retain(rootfs, v13);
    v55 = (v54 + 8);
    if (!v54)
    {
      v55 = 0;
    }

    if (a3)
    {
      if (a3 == 2)
      {
        if (v55)
        {
          v56 = v55[1];
          goto LABEL_81;
        }
      }

      else if (v55)
      {
        v56 = *v55;
LABEL_81:
        v72 = strcmp(a2, v56);
        v70 = v6;
        v6 = v54;
        if (!v72)
        {
          return v6;
        }

        return v70;
      }

      return v6;
    }

    else
    {
      v70 = si_list_add(v6, v54);
      si_item_release(v54, v71);
    }

    return v70;
  }

  return v6;
}

void ___fsi_fs_root_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v31 = *MEMORY[0x1E69E9840];
  memset(&v24, 0, sizeof(v24));
  memset(&v27, 0, 512);
  if ((stat("/", &v24) & 0x80000000) == 0 && (statfs("/", &v27) & 0x80000000) == 0 && (*v27.f_fstypename != 0x736668746E7973 || (stat("/root", &v24) & 0x80000000) == 0 && (statfs("/root", &v27) & 0x80000000) == 0))
  {
    st_dev = v24.st_dev;
    __strlcpy_chk();
    if (devname_r(st_dev, 0x6000u, buf, 1024))
    {
      __strlcat_chk();
      v17 = strdup(v30);
      if (v17)
      {
LABEL_25:
        rootfs = LI_ils_create("L4488sssss44", v10, v11, v12, v13, v14, v15, v16, *(v8 + 32));
        free(v17);
        return;
      }
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      v25 = 0;
      memset(&v28, 0, 512);
      v18 = opendir("/dev/");
      if (v18)
      {
        v19 = v18;
        while (1)
        {
          v17 = 0;
          if (readdir_r(v19, &v28, &v25) || !v25)
          {
            break;
          }

          if (v25->d_type == 6)
          {
            __strlcat_chk();
            if (!stat(v30, &v26) && v26.st_rdev == st_dev)
            {
              v17 = strdup(v30);
              break;
            }
          }

          v30[5] = 0;
        }

        closedir(v19);
        if (v17)
        {
          goto LABEL_25;
        }
      }
    }

    f_mntfromname = v27.f_mntfromname;
    v21 = 1024;
    v22 = strnstr(v27.f_mntfromname, "@", 0x400uLL);
    if (v22)
    {
      v21 = 1024;
      do
      {
        v23 = v22 + 1;
        v21 = &f_mntfromname[v21] - (v22 + 1);
        v22 = strnstr(v22 + 1, "@", v21);
        f_mntfromname = v23;
      }

      while (v22);
    }

    else
    {
      v23 = v27.f_mntfromname;
    }

    v17 = strndup(v23, v21);
    goto LABEL_25;
  }
}

void **_fsi_get_ether(uint64_t a1, char *a2, int a3)
{
  if (!a2 && a3)
  {
    return 0;
  }

  if (a3 == 2)
  {
    v6 = si_standardize_mac_address(a2);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = fopen("/etc/ethers", "r");
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v29 = 0;
  v30 = 0;
  _fsi_get_validation(a1, 0xBu, "/etc/ethers", v7, &v30, &v29);
  line = _fsi_get_line(v8, v9, v10, v11, v12, v13, v14, v15);
  if (!line)
  {
    v18 = 0;
    goto LABEL_23;
  }

  v17 = line;
  v18 = 0;
  while (1)
  {
    if (*v17 == 35)
    {
      free(v17);
      goto LABEL_16;
    }

    if (a3 != 2)
    {
      break;
    }

    v26 = _fsi_parse_ether(a1, v6, 2, v17);
    free(v17);
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_16:
    v17 = _fsi_get_line(v8, v19, v20, v21, v22, v23, v24, v25);
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  v26 = _fsi_parse_ether(a1, a2, a3, v17);
  free(v17);
  if (!v26)
  {
    goto LABEL_16;
  }

  if (!a3)
  {
    v18 = si_list_add(v18, v26);
    si_item_release(v26, v27);
    goto LABEL_16;
  }

LABEL_22:
  v18 = v26;
LABEL_23:
  fclose(v8);
  return v18;
}