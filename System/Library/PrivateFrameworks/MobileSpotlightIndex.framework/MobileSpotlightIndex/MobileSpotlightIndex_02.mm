unint64_t pushSkipCrashState()
{
  v0 = __THREAD_SLOT_KEY[0];
  if (!__THREAD_SLOT_KEY[0])
  {
    makeThreadId();
    v0 = __THREAD_SLOT_KEY[0];
  }

  result = pthread_getspecific(v0);
  if (result && result < 0x801 || (makeThreadId(), (result = pthread_getspecific(__THREAD_SLOT_KEY[0])) != 0))
  {
    if (result <= 0x800)
    {
      ++LODWORD(threadData[9 * result - 6]);
    }
  }

  return result;
}

unsigned int *SIQueryCreateWithParameters(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (query_zone_init_onceToken == -1)
  {
    if (!a1)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&query_zone_init_onceToken, &__block_literal_global_5335);
    if (!a1)
    {
      return 0;
    }
  }

  if (*a1 == 1)
  {
    v2 = malloc_type_calloc(1uLL, 0x300uLL, 0x10F00400B877FCEuLL);
    v3 = v2;
    if (v2)
    {
      if (initQuery(v2, a1))
      {
        atomic_store(1u, (v3 + 584));
        return v3;
      }

      si_query_free(v3);
      return 0;
    }
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(1);
    v6 = dword_1EBF46AD0 < 3;
    if (os_log_type_enabled(v5, (dword_1EBF46AD0 < 3)))
    {
      v7 = *a1;
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&dword_1C278D000, v5, v6, "*warn* Invalid query parameter version %d", v9, 8u);
    }

    v3 = 0;
    *__error() = v4;
  }

  return v3;
}

uint64_t isEntitledForAttribute(int a1, void *key)
{
  v12 = *MEMORY[0x1E69E9840];
  if (isEntitledForAttribute_onceToken != -1)
  {
    dispatch_once(&isEntitledForAttribute_onceToken, &__block_literal_global_646);
  }

  Value = CFDictionaryGetValue(isEntitledForAttribute_attributeEntitlementMapping, key);
  v5 = (Value & a1) != 0 || Value == 0;
  v6 = v5;
  if (!v5 && ++isEntitledForAttribute__COUNT_ == 997)
  {
    isEntitledForAttribute__COUNT_ = 0;
    v7 = *__error();
    v8 = _SILogForLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = key;
      _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "##### entitlements failure request for %s", &v10, 0xCu);
    }

    *__error() = v7;
  }

  return v6;
}

void queryFromCFString(__n128 a1)
{
  v6 = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0;
  if (v1)
  {
    v7 = v5;
    v8 = v4;
    v9 = v6;
    v10 = v3;
    v11 = v2;
    v12 = v1;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v12))
    {
      bzero(v33, 0x1000uLL);
      v14 = fasterUTF8String(v12, &v30, v33, 4096, &v29);
      if (v14)
      {
        v15 = v14;
        v16 = *v14;
        if ((v16 - 35) > 0x1D || ((1 << (v16 - 35)) & 0x20000003) == 0)
        {
          *v10 = 0;
        }

        else
        {
          *v10 = v16;
          ++v14;
        }

        query_node_with_ann = db_make_query_node_with_ann(v14, v11);
        if (query_node_with_ann && v7)
        {
          tree = db_sanitize_query_tree(&query_node_with_ann, 1, v8, v9);
          v19 = tree;
          if (tree && dword_1EBF46AD0 >= 4)
          {
            cStr = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
            _db_render_query_tree(v20);
            if (v21)
            {
              v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
              if (v22)
              {
                v23 = v22;
                v24 = *__error();
                v25 = _SILogForLogForCategory(1);
                v26 = 2 * (dword_1EBF46AD0 < 4);
                if (os_log_type_enabled(v25, v26))
                {
                  buf = 138412290;
                  v35 = v23;
                  _os_log_impl(&dword_1C278D000, v25, v26, "Sanitized to %@", &buf, 0xCu);
                }

                *__error() = v24;
                CFRelease(v23);
              }
            }

            free(cStr);
          }

          if (!v19)
          {
            db_free_query_node(query_node_with_ann);
            query_node_with_ann = 0;
          }
        }

        if (v29 == 1)
        {
          free(v15);
        }
      }

      else if (dword_1EBF46AD0 >= 5)
      {
        v27 = *__error();
        v28 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "Couldn't make query string", &buf, 2u);
        }

        *__error() = v27;
      }
    }
  }
}

void *db_make_query_node_with_ann(char *a1, const __CFDictionary *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    return 0;
  }

  v38 = 0;
  v39 = 0;
  v4 = strlen(a1);
  v5 = check_and_decompose_string(a1, v4 + 1, &v39, &v38);
  if (!v5)
  {
    v12 = v39;
    v36 = 3;
    valuePtr = 3;
    v35 = 0;
    if (a2 && CFDictionaryContainsKey(a2, @"vectors"))
    {
      Value = CFDictionaryGetValue(a2, @"vectors");
      v14 = CFDictionaryGetValue(a2, @"vec_data_format");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      }

      v15 = CFDictionaryGetValue(a2, @"vec_dimensions");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberIntType, &v36);
      }

      v16 = CFDictionaryGetValue(a2, @"vec_version");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberSInt32Type, &v35);
        v17 = v35;
        goto LABEL_17;
      }
    }

    else
    {
      Value = 0;
    }

    v17 = 0;
LABEL_17:
    v34 = 0;
    v33 = v12;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __db_make_query_node_with_ann_block_invoke;
    v29[3] = &__block_descriptor_tmp_63_15547;
    v30 = valuePtr;
    v31 = v36;
    v32 = v17;
    v18 = v38;
    v29[4] = Value;
    v29[5] = v38;
    result = or_expr(&v33, 1, &v34, v29, v6);
    if (result)
    {
      v19 = (v33 - v12);
      if (v33 - v12 != v18 - 1)
      {
        v20 = result;
        v21 = *__error();
        v22 = _SILogForLogForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = "db_make_query_node_with_ann";
          *&buf[12] = 1024;
          *&buf[14] = 6238;
          *&buf[18] = 2048;
          *&buf[20] = v19;
          *&buf[28] = 2048;
          *&buf[30] = v18;
          *&buf[38] = 2080;
          v46 = v12;
          _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: query used %ld of %ld - %s", buf, 0x30u);
        }

        *__error() = v21;
        result = v20;
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2000000000;
      v44 = 0;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = __db_count_query_tree_block_invoke;
      v40[3] = &unk_1E8199040;
      v40[4] = &v41;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = v40;
      v23 = result;
      db_query_tree_apply_block_with_meta(result, buf, 0);
      v24 = v42[3];
      _Block_object_dispose(&v41, 8);
      if (v24 < 0x801)
      {
        result = v23;
        if (v12 == a1)
        {
          return result;
        }

LABEL_27:
        v27 = result;
        free(v12);
        return v27;
      }

      v25 = *__error();
      v26 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        tree = db_count_query_tree(v23);
        *buf = 136316162;
        *&buf[4] = "db_make_query_node_with_ann";
        *&buf[12] = 1024;
        *&buf[14] = 6249;
        *&buf[18] = 1024;
        *&buf[20] = tree;
        *&buf[24] = 1024;
        *&buf[26] = 2048;
        *&buf[30] = 2080;
        *&buf[32] = a1;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: query node count %d exceeded %d - %s", buf, 0x28u);
      }

      *__error() = v25;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&buf[24] = &unk_1E8198ED0;
      *&buf[32] = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v23, buf, 0);
      result = 0;
    }

    if (v12 == a1)
    {
      return result;
    }

    goto LABEL_27;
  }

  v7 = v5;
  v8 = *__error();
  v9 = _SILogForLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "db_make_query_node_with_ann";
    *&buf[12] = 1024;
    *&buf[14] = 6128;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = a1;
    _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: invalid query (%d) - %s", buf, 0x22u);
  }

  v10 = __error();
  result = 0;
  *v10 = v8;
  return result;
}

void *or_expr(unsigned __int8 **a1, uint64_t a2, _DWORD *a3, uint64_t a4, __n128 a5)
{
  v7 = a2;
  v9 = *a1;
  if (*a1)
  {
    while (1)
    {
      v10 = *v9;
      v11 = v10 > 0x20;
      v12 = (1 << v10) & 0x100001600;
      if (v11 || v12 == 0)
      {
        break;
      }

      ++v9;
    }
  }

  *a1 = v9;
  result = and_expr(a1, a2, a3, a4, a5);
  if (result)
  {
    v16 = result;
    for (i = *a1; ; ++i)
    {
      v18 = *i;
      v11 = v18 > 0x20;
      v19 = (1 << v18) & 0x100001600;
      if (v11 || v19 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 124)
    {
      v38 = 0;
      v21 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 124)
        {
          if (v38)
          {
            *buf = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __db_query_tree_apply_block_block_invoke;
            v42 = &unk_1E8198ED0;
            v43 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v38, buf, 0);
          }

          if (v16)
          {
            *buf = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __db_query_tree_apply_block_block_invoke;
            v42 = &unk_1E8198ED0;
            v43 = &__block_literal_global_174;
            goto LABEL_53;
          }

          return 0;
        }

        for (j = i + 2; ; ++j)
        {
          v23 = *j;
          v11 = v23 > 0x20;
          v24 = (1 << v23) & 0x100001600;
          if (v11 || v24 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v26 = and_expr(a1, v7, a3, a4, v15);
        v27 = v26;
        v28 = *a1;
        if (*a1)
        {
          while (1)
          {
            v29 = *v28;
            v11 = v29 > 0x20;
            v30 = (1 << v29) & 0x100001600;
            if (v11 || v30 == 0)
            {
              break;
            }

            ++v28;
          }
        }

        *a1 = v28;
        if (!v26)
        {
          break;
        }

        v32 = (*a3)++;
        if (v32 >= 2049)
        {
          if (v38)
          {
            *buf = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __db_query_tree_apply_block_block_invoke;
            v42 = &unk_1E8198ED0;
            v43 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v38, buf, 0);
          }

LABEL_61:
          if (!v16)
          {
LABEL_64:
            *buf = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __db_query_tree_apply_block_block_invoke;
            v42 = &unk_1E8198ED0;
            v43 = &__block_literal_global_174;
            v36 = v27;
            goto LABEL_65;
          }

LABEL_62:
          *buf = MEMORY[0x1E69E9820];
          v40 = 0x40000000;
          v41 = __db_query_tree_apply_block_block_invoke;
          v42 = &unk_1E8198ED0;
          v43 = &__block_literal_global_174;
          v37 = v16;
LABEL_63:
          db_query_tree_apply_block_with_meta(v37, buf, 0);
          goto LABEL_64;
        }

        if (v21)
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v33 = v21[1];
          v34 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v34)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v21[1] = 0;
            v37 = v38;
            if (!v38)
            {
              goto LABEL_64;
            }

            *buf = MEMORY[0x1E69E9820];
            v40 = 0x40000000;
            v41 = __db_query_tree_apply_block_block_invoke;
            v42 = &unk_1E8198ED0;
            v43 = &__block_literal_global_174;
            goto LABEL_63;
          }

          v21[1] = v34;
          *v34 = v33;
          v21 = v34;
        }

        else
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v35 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v35)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              goto LABEL_61;
            }

            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            if (!v16)
            {
              goto LABEL_64;
            }

            goto LABEL_62;
          }

          v21 = v35;
          *v35 = v16;
          v38 = v35;
          v16 = 0;
        }

        *(v21 + 24) = 1;
        v21[1] = v27;
        i = *a1;
        if (**a1 != 124)
        {
          goto LABEL_42;
        }
      }

      if (v38)
      {
        *buf = MEMORY[0x1E69E9820];
        v40 = 0x40000000;
        v41 = __db_query_tree_apply_block_block_invoke;
        v42 = &unk_1E8198ED0;
        v43 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v38, buf, 0);
      }

      if (v16)
      {
        *buf = MEMORY[0x1E69E9820];
        v40 = 0x40000000;
        v41 = __db_query_tree_apply_block_block_invoke;
        v42 = &unk_1E8198ED0;
        v43 = &__block_literal_global_174;
LABEL_53:
        v36 = v16;
LABEL_65:
        db_query_tree_apply_block_with_meta(v36, buf, 0);
      }

      return 0;
    }

    else
    {
      v38 = 0;
LABEL_42:
      if (v38)
      {
        return v38;
      }

      else
      {
        return v16;
      }
    }
  }

  return result;
}

uint64_t factor(unsigned __int8 **a1, int a2, _DWORD *a3, uint64_t a4, __n128 a5)
{
  v6 = *a1;
  v7 = *v6;
  if (v7 == 33)
  {
    ++v6;
    while (1)
    {
      v8 = *v6;
      v9 = v8 > 0x20;
      v10 = (1 << v8) & 0x100001600;
      if (v9 || v10 == 0)
      {
        break;
      }

      ++v6;
    }

    *a1 = v6;
    if (*v6 == 40)
    {
LABEL_18:
      for (i = v6 + 1; ; ++i)
      {
        v20 = *i;
        v9 = v20 > 0x20;
        v21 = (1 << v20) & 0x100001600;
        if (v9 || v21 == 0)
        {
          break;
        }
      }

      *a1 = i;
      if (a2 > 99)
      {
        return 0;
      }

      result = or_expr(a1, (a2 + 1), a3, a4);
      if (result)
      {
        if (v7 == 33)
        {
          v32 = MEMORY[0x1E69E9820];
          v33 = 0x40000000;
          v34 = __db_query_tree_apply_block_block_invoke;
          v35 = &unk_1E8198ED0;
          v36 = &__block_literal_global_15374;
          v23 = result;
          db_query_tree_apply_block_with_meta(result, &v32, 0);
          result = v23;
        }

        if (**a1 == 41)
        {
          ++*a1;
        }

        else
        {
          v32 = MEMORY[0x1E69E9820];
          v33 = 0x40000000;
          v34 = __db_query_tree_apply_block_block_invoke;
          v35 = &unk_1E8198ED0;
          v36 = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(result, &v32, 0);
          return 0;
        }
      }

      return result;
    }
  }

  else if (v7 == 40)
  {
    goto LABEL_18;
  }

  result = get_query_piece(a5);
  if (!result)
  {
    return result;
  }

  v14 = *a1;
  if (*a1)
  {
    v15 = a3;
    while (1)
    {
      v16 = *v14;
      v9 = v16 > 0x20;
      v17 = (1 << v16) & 0x100001600;
      if (v9 || v17 == 0)
      {
        break;
      }

      ++v14;
    }
  }

  else
  {
    v15 = a3;
  }

  *a1 = v14;
  v24 = (*v15)++;
  if (v24 >= 2049)
  {
LABEL_43:
    free_qp(result);
    return 0;
  }

  v25 = result;
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_15332;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      LOWORD(v32) = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", &v32, 2u);
    }

    result = v25;
    goto LABEL_43;
  }

  v26 = *(v25 + 24);
  if (v26 == 9)
  {
    v27 = result;
    free_qp(v25);
    result = v27;
    v28 = v7 == 33;
    v29 = 16;
    v30 = 32;
    goto LABEL_45;
  }

  if (v26 == 10)
  {
    v27 = result;
    free_qp(v25);
    result = v27;
    v28 = v7 == 33;
    v29 = 32;
    v30 = 16;
LABEL_45:
    if (v28)
    {
      v29 = v30;
    }

    *(v27 + 48) = v29;
    return result;
  }

  *(result + 48) = 4;
  *(result + 16) = v25;
  if (v7 == 33)
  {
    if ((v26 - 16) >= 0xFFFFFFF1)
    {
      v31 = dword_1C2C005C0[v26];
    }

    else
    {
      v31 = 0;
    }

    *(v25 + 24) = v31;
  }

  return result;
}

unsigned __int8 *parse_string_piece(unsigned __int8 *__src, _BYTE *a2, int a3, _DWORD *a4)
{
  v5 = a2;
  v7 = &a2[a3 - 1];
  while (1)
  {
    v8 = *__src;
    if (v8 > 0x27)
    {
      goto LABEL_53;
    }

    if (((1 << v8) & 0x100000600) == 0)
    {
      break;
    }

    ++__src;
  }

  if (((1 << v8) & 0x8400000000) != 0)
  {
    v9 = __src[1];
    v10 = __src + 1;
    if (__src[1])
    {
      v11 = a2;
      while (1)
      {
        if (v9 == v8)
        {
          ++v10;
          goto LABEL_77;
        }

        if (v9 == 92)
        {
          v12 = v10 + 1;
          v9 = v10[1];
          if (v9 != 34 && v9 != 39)
          {
            if (v9 == 92)
            {
              if (v11 < v7)
              {
                *v11++ = 92;
              }

              v13 = 5;
              ++v10;
            }

            else
            {
              v13 = 5u;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v12 = v10;
        }

        v13 = v9 >> 4;
        if ((v13 & 0xC) != 8)
        {
          v10 = v12;
LABEL_22:
          v14 = utf8_byte_length(unsigned char)::utf8_len_table[v13];
          v15 = &v11[v14];
          if (&v11[v14] >= v7)
          {
            v7 = v11;
          }

          else
          {
            memcpy(v11, v10, utf8_byte_length(unsigned char)::utf8_len_table[v13]);
            v11 = v15;
          }

          v10 += v14;
          goto LABEL_9;
        }

        v10 = v12 + 1;
LABEL_9:
        v9 = *v10;
        if (!*v10)
        {
          goto LABEL_77;
        }
      }
    }

    LODWORD(v11) = a2;
    *a2 = 0;
    if (!a4)
    {
      return v10;
    }

LABEL_78:
    *a4 = v11 - v5;
    return v10;
  }

  if (v8 != 36)
  {
LABEL_53:
    if (*__src)
    {
      v11 = a2;
      do
      {
        v10 = __src++;
        if (v8 == 92)
        {
          LODWORD(v8) = *__src;
          if (v8 == 39 || v8 == 34)
          {
            __src = v10 + 2;
          }

          else
          {
            v23 = v10[2];
            v22 = v10 + 2;
            if (v23 == 92)
            {
              if (v11 < v7)
              {
                *v11++ = 92;
                LODWORD(v8) = *__src;
              }

              __src = v22;
            }

            else
            {
              LODWORD(v8) = 92;
            }
          }
        }

        else if (v8 <= 0x3E && ((1 << v8) & 0x7000134300000600) != 0 || v8 == 124)
        {
          break;
        }

        if (v8 && v11 < v7)
        {
          *v11++ = v8;
        }

        LODWORD(v8) = *__src;
        v10 = __src;
      }

      while (*__src);
LABEL_77:
      *v11 = 0;
      if (!a4)
      {
        return v10;
      }
    }

    else
    {
      LODWORD(v11) = a2;
      v10 = __src;
      *a2 = 0;
      if (!a4)
      {
        return v10;
      }
    }

    goto LABEL_78;
  }

  v17 = __src[1];
  v16 = v17;
  v10 = __src + 1;
  *a2 = 36;
  v11 = a2 + 1;
  if (!v17)
  {
    goto LABEL_77;
  }

  v18 = 0;
  v19 = 1;
  while (1)
  {
    v20 = v10 + 1;
    if (v16 <= 0x3E)
    {
      if (((1 << v16) & 0x7000104300000600) != 0)
      {
        goto LABEL_32;
      }

      if (v16 == 40)
      {
        ++v18;
        v16 = 40;
        goto LABEL_33;
      }

      if (v16 == 41)
      {
        break;
      }
    }

    if (v16 != 92)
    {
      if (v16 == 124)
      {
LABEL_32:
        if (!v18)
        {
          goto LABEL_83;
        }
      }

LABEL_33:
      v10 = v20;
      goto LABEL_34;
    }

    v16 = *v20;
    if (v16 != 39 && v16 != 34)
    {
      v21 = v10[2];
      v10 += 2;
      if (v21 == 92)
      {
        if (v11 < v7)
        {
          *v11++ = 92;
          v16 = *v20;
        }

        goto LABEL_34;
      }

      v16 = 92;
      goto LABEL_33;
    }

    v10 += 2;
LABEL_34:
    if (v16 && v11 < v7)
    {
      *v11++ = v16;
    }

    v16 = *v10;
    if (!*v10)
    {
      goto LABEL_77;
    }
  }

  if (!v18)
  {
    goto LABEL_83;
  }

  if (--v18)
  {
    v16 = 41;
    goto LABEL_33;
  }

  if (v11 < v7)
  {
    *v11++ = 41;
  }

  v19 = 2;
LABEL_83:
  v10 = &v10[v19 - 1];
  *v11 = 0;
  if (a4)
  {
    goto LABEL_78;
  }

  return v10;
}

float *get_query_piece(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v143 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal_15332;
  }

  v7 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }

  v8 = v7;
  v9 = *v6;
  if (*v6)
  {
    v10 = MEMORY[0x1E69E9830];
    do
    {
      if (v9 < 0)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v10 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      v11 = *++v6;
      v9 = v11;
    }

    while (v11);
  }

  v130 = 0;
  bzero(__src, 0x420uLL);
  __str = v6;
  if (!*v6)
  {
    goto LABEL_278;
  }

  __str = parse_string_piece(v6, __src, 1056, &v130);
  v12 = process_qp_field_name(v8, __src, v130);
  if (!v12)
  {
    goto LABEL_278;
  }

  v13 = v12;
  *v8 = v12;
  v14 = *__str;
  if (*__str)
  {
    v15 = __str + 1;
    v16 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v14 < 0)
      {
        if (!__maskrune(v14, 0x4000uLL))
        {
          goto LABEL_18;
        }
      }

      else if ((*(v16 + 4 * v14 + 60) & 0x4000) == 0)
      {
LABEL_18:
        v13 = *v8;
        break;
      }

      __str = v15;
      v17 = *v15++;
      v14 = v17;
      if (!v17)
      {
        goto LABEL_18;
      }
    }
  }

  if (!strcasecmp(v13, "true"))
  {
    *(v8 + 24) = 10;
    if (!v13)
    {
LABEL_39:
      *v8 = 0;
      *v4 = __str;
      return v8;
    }

LABEL_38:
    free(v13);
    goto LABEL_39;
  }

  if (!strcasecmp(v13, "false"))
  {
    *(v8 + 24) = 9;
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v18 = __str;
  v19 = *__str;
  if (v19 != 40)
  {
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl() && !strcmp("aNN.data", *v8))
  {
    *(v8 + 24) = 15;
    v27 = __str + 1;
    v28 = MEMORY[0x1E69E9830];
    while (1)
    {
      __str = v27;
      v30 = *v27++;
      v29 = v30;
      if (!v30)
      {
        break;
      }

      if ((v29 & 0x80000000) != 0)
      {
        if (!__maskrune(v29, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v28 + 4 * v29 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    free(*v8);
    __str = parse_string_piece(__str, __src, 1056, &v130);
    *v8 = process_qp_field_name(v8, __src, v130);
    if (!parse_comma(__str, &__str))
    {
      goto LABEL_278;
    }

    *buf = 0;
    v31 = strtol(__str, buf, 0);
    v32 = *buf;
    if (!*buf)
    {
      goto LABEL_278;
    }

    if (*buf == __str)
    {
      goto LABEL_278;
    }

    __str = *buf;
    *buf = 0;
    if (!parse_comma(v32, &__str))
    {
      goto LABEL_278;
    }

    v33 = strtol(__str, buf, 0);
    v34 = *buf;
    if (!*buf || *buf == __str)
    {
      goto LABEL_278;
    }

    v35 = *(v8 + 60);
    v36 = v35 & 0xFF00000F | (16 * v33);
    v37 = v35 | 0xFFFFF0;
    v38 = v33 >> 20 ? v37 : v36;
    *(v8 + 60) = v38;
    __str = v34;
    ++*(v8 + 40);
    *buf = 0;
    if (!parse_comma(v34, &__str))
    {
      goto LABEL_278;
    }

    v39 = strtof(__str, buf);
    v40 = *buf;
    if (!*buf)
    {
      goto LABEL_278;
    }

    if (*buf == __str)
    {
      goto LABEL_278;
    }

    *(v8 + 64) = v39;
    ++*(v8 + 40);
    __str = v40;
    if (!parse_comma(v40, &__str))
    {
      goto LABEL_278;
    }

    *(v8 + 160) |= 0x10000u;
    if (((*(v2 + 16))(v2, v8, v31) & 1) == 0)
    {
      *(v8 + 60) &= 0xFF00000F;
    }

    *(v8 + 40) += 3;
    v41 = __str;
    v42 = *__str;
    if (v42 == 49)
    {
      v124 = __str + 1;
      goto LABEL_275;
    }

    if (v42 == 48)
    {
      v124 = __str + 1;
LABEL_273:
      __str = v124;
      v125 = *(v8 + 60) & 0xFEFFFFFF;
      goto LABEL_276;
    }

    if (v42 != 41)
    {
      goto LABEL_278;
    }

LABEL_76:
    *(v8 + 60) &= ~0x1000000u;
LABEL_277:
    v52 = v41 + 1;
    goto LABEL_135;
  }

  v20 = _os_feature_enabled_impl();
  v21 = *v8;
  if (v20 && !strcmp("aNN", *v8))
  {
    *(v8 + 24) = 15;
    v67 = __str + 1;
    v68 = MEMORY[0x1E69E9830];
    while (1)
    {
      __str = v67;
      v70 = *v67++;
      v69 = v70;
      if (!v70)
      {
        break;
      }

      if ((v69 & 0x80000000) != 0)
      {
        if (!__maskrune(v69, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v68 + 4 * v69 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    free(*v8);
    __str = parse_string_piece(__str, __src, 1056, &v130);
    *v8 = process_qp_field_name(v8, __src, v130);
    if (parse_comma(__str, &__str))
    {
      v71 = __str;
      v72 = *__str;
      if (v72 == 52)
      {
        v73 = 0;
        v71 = ++__str;
        *(v8 + 60) &= 0xFFFFFFF3;
        v74 = 1;
        v75 = 4;
      }

      else if (v72 == 50)
      {
        v74 = 0;
        v71 = ++__str;
        *(v8 + 60) = *(v8 + 60) & 0xFFFFFFF3 | 4;
        v73 = 1;
        v75 = 2;
      }

      else
      {
        v73 = 0;
        v74 = 0;
        if (v72 == 49)
        {
          v71 = ++__str;
          *(v8 + 60) = *(v8 + 60) & 0xFFFFFFF3 | 8;
          v75 = 1;
        }

        else
        {
          v75 = 0;
        }
      }

      ++*(v8 + 40);
      if (parse_comma(v71, &__str))
      {
        *buf = 0;
        v100 = strtol(__str, buf, 0);
        v101 = *buf;
        if (*buf)
        {
          if (*buf != __str)
          {
            switch(v100)
            {
              case 0x100u:
                v102 = *(v8 + 60) & 0xFFFFFFFC;
                break;
              case 0x200u:
                v102 = *(v8 + 60) & 0xFFFFFFFC | 1;
                break;
              case 0x300u:
                v102 = *(v8 + 60) & 0xFFFFFFFC | 2;
                break;
              default:
                goto LABEL_278;
            }

            *(v8 + 60) = v102;
            ++*(v8 + 40);
            __str = v101;
            if (parse_comma(v101, &__str))
            {
              v103 = __str;
              if (*__str == 118)
              {
                *(v8 + 60) = *(v8 + 60) & 0x1FFFFFF | (strtoul(++__str, buf, 0) << 25);
                __str = *buf;
                if (!parse_comma(*buf, &__str))
                {
                  goto LABEL_278;
                }

                v103 = __str;
              }

              else
              {
                *(v8 + 60) &= 0x1FFFFFFu;
              }

              if (*v103 == 105)
              {
                __str = v103 + 1;
                if (v103[1] == 120)
                {
                  v104 = v103 + 2;
                  v105 = -1;
                }

                else
                {
                  v106 = strtol(v103 + 1, buf, 0);
                  if (v106 > 2)
                  {
                    v105 = -1;
                  }

                  else
                  {
                    v105 = v106;
                  }

                  v104 = *buf;
                }

                *(v8 + 80) = v105;
                __str = v104;
                if ((parse_comma(v104, &__str) & 1) == 0)
                {
                  goto LABEL_278;
                }
              }

              else
              {
                *(v8 + 80) = 0;
              }

              v107 = malloc_type_malloc(v100 * v75, 0xC33CA856uLL);
              v108 = 0;
              *(v8 + 296) = v107;
              *(v8 + 160) |= 0x10000u;
              v109 = __str;
              do
              {
                *buf = 0;
                _S0 = strtof(v109, buf);
                if (v73)
                {
                  __asm { FCVT            H0, S0 }

                  *(*(v8 + 296) + 2 * v108) = _H0;
                }

                else
                {
                  if (!v74)
                  {
                    goto LABEL_278;
                  }

                  *(*(v8 + 296) + 4 * v108) = _S0;
                }

                if (!*buf)
                {
                  goto LABEL_278;
                }

                __str = *buf;
                v109 = parse_whitespace(*buf);
                __str = v109;
                ++v108;
              }

              while (v100 != v108);
              ++*(v8 + 40);
              if (!parse_comma(v109, &__str))
              {
                goto LABEL_278;
              }

              *buf = 0;
              v115 = strtol(__str, buf, 0);
              v116 = *buf;
              if (!*buf || *buf == __str)
              {
                goto LABEL_278;
              }

              v117 = *(v8 + 60);
              v118 = v117 & 0xFF00000F | (16 * v115);
              v119 = v117 | 0xFFFFF0;
              v120 = v115 >> 20 ? v119 : v118;
              *(v8 + 60) = v120;
              __str = v116;
              ++*(v8 + 40);
              if (!parse_comma(v116, &__str))
              {
                goto LABEL_278;
              }

              v121 = strtof(__str, buf);
              v122 = *buf;
              if (!*buf || *buf == __str)
              {
                goto LABEL_278;
              }

              *(v8 + 64) = v121;
              ++*(v8 + 40);
              __str = v122;
              v41 = parse_whitespace(v122);
              __str = v41;
              if (*v41 != 41)
              {
                if (!parse_comma(v41, &__str))
                {
                  goto LABEL_278;
                }

                v123 = *__str;
                if (v123 != 49)
                {
                  if (v123 != 48)
                  {
                    goto LABEL_278;
                  }

                  v124 = __str + 1;
                  goto LABEL_273;
                }

                v124 = __str + 1;
LABEL_275:
                __str = v124;
                v125 = *(v8 + 60) | 0x1000000;
LABEL_276:
                *(v8 + 60) = v125;
                v41 = parse_whitespace(v124);
                __str = v41;
                if (*v41 != 41)
                {
                  goto LABEL_278;
                }

                goto LABEL_277;
              }

              goto LABEL_76;
            }
          }
        }
      }
    }

LABEL_278:
    if (*v8)
    {
      free(*v8);
      *v8 = 0;
    }

    v126 = *(v8 + 72);
    if (v126)
    {
      free(v126);
    }

    free(v8);
    return 0;
  }

  if (!strcmp("InRange", v21))
  {
    v26 = 11;
  }

  else
  {
    if (strcmp("FieldMatch", v21))
    {
      v18 = __str;
      if (!*(v8 + 24))
      {
        v19 = *__str;
LABEL_30:
        if (v19 > 60)
        {
          if (v19 == 62)
          {
            v22 = (v18 + 1);
            __str = v18 + 1;
            if (v18[1] == 61)
            {
              v23 = 4;
              goto LABEL_52;
            }

            v25 = 8;
          }

          else
          {
            if (v19 != 61)
            {
              goto LABEL_278;
            }

            *(v8 + 24) = 1;
            v22 = (v18 + 1);
            __str = v18 + 1;
            v24 = v18[1];
            if (v24 != 61)
            {
              goto LABEL_150;
            }

            v22 = (v18 + 2);
            __str = v18 + 2;
            v24 = v18[2];
            if (v24 != 61)
            {
              goto LABEL_150;
            }

            v22 = (v18 + 3);
            __str = v18 + 3;
            v25 = 2;
          }
        }

        else
        {
          if (v19 == 33)
          {
            if (v18[1] != 61)
            {
              goto LABEL_278;
            }

            v23 = 5;
            goto LABEL_52;
          }

          if (v19 != 60)
          {
            goto LABEL_278;
          }

          v22 = (v18 + 1);
          __str = v18 + 1;
          if (v18[1] == 61)
          {
            v23 = 3;
LABEL_52:
            *(v8 + 24) = v23;
            v22 = (v18 + 2);
            __str = v18 + 2;
LABEL_149:
            v24 = *v22;
LABEL_150:
            if (!v24)
            {
              goto LABEL_278;
            }

            v76 = (v22 + 1);
            v77 = MEMORY[0x1E69E9830];
            while (1)
            {
              if ((v24 & 0x80) != 0)
              {
                if (!__maskrune(v24, 0x4000uLL))
                {
                  goto LABEL_156;
                }
              }

              else if ((*(v77 + 4 * v24 + 60) & 0x4000) == 0)
              {
LABEL_156:
                if (*__str)
                {
                  __str = parse_string_piece(__str, __src, 1056, &v130);
                  v79 = strlen(__src);
                  v80 = malloc_type_zone_malloc(queryZone, v79 + 1, 0xA4971684uLL);
                  if (!v80)
                  {
                    _log_fault_for_malloc_failure();
                  }

                  memcpy(v80, __src, v79);
                  *(v80 + v79) = 0;
                  *(v8 + 72) = v80;
                  while (1)
                  {
                    v52 = __str;
                    switch(*__str)
                    {
                      case 'L':
                        v82 = ++__str;
                        if (v52[1] != 40)
                        {
                          continue;
                        }

                        *__s = 0;
                        v134 = __s;
                        v135 = 0x2000000000;
                        v136 = 0;
                        *buf = MEMORY[0x1E69E9820];
                        v138 = 0x40000000;
                        v139 = __get_wildcard_limit_block_invoke;
                        v140 = &unk_1E8199318;
                        v141 = __s;
                        v142 = v8;
                        __str = _process_proximities(v82, buf);
                        goto LABEL_217;
                      case 'W':
                        v87 = ++__str;
                        if (v52[1] != 40)
                        {
                          continue;
                        }

                        *__s = 0;
                        v134 = __s;
                        v135 = 0x2000000000;
                        v136 = 0;
                        *buf = MEMORY[0x1E69E9820];
                        v138 = 0x40000000;
                        v139 = __get_weights_block_invoke;
                        v140 = &unk_1E81992F0;
                        v141 = __s;
                        v142 = v8;
                        if (*v87 != 40)
                        {
                          goto LABEL_216;
                        }

                        v88 = v52 + 2;
                        break;
                      case 'a':
                        v83 = *(v8 + 32) | 0x6000000000;
                        goto LABEL_211;
                      case 'b':
                        v81 = *(v8 + 32) | 0x20000000;
                        goto LABEL_161;
                      case 'c':
                        v81 = *(v8 + 32) | 0x10;
                        goto LABEL_161;
                      case 'd':
                        v81 = *(v8 + 32) | 0x20;
                        goto LABEL_161;
                      case 'f':
                        *(v8 + 32) |= 0x800000uLL;
                        __str = v52 + 2;
                        v84 = 100 * __maskrune(v52[1], 0xFuLL);
                        v85 = __str++;
                        LOBYTE(v84) = v84 + 10 * __maskrune(*v85, 0xFuLL);
                        v86 = __str++;
                        *(v8 + 28) = (v84 + __maskrune(*v86, 0xFuLL)) & 0x7F;
                        continue;
                      case 'i':
                        v81 = *(v8 + 32) | 0x200000000;
                        goto LABEL_161;
                      case 'j':
                        v81 = *(v8 + 32) | 8;
                        goto LABEL_161;
                      case 'n':
                        v83 = *(v8 + 32) | 0x2000000000;
                        goto LABEL_211;
                      case 'o':
                        v83 = *(v8 + 32) | 0x4000000000;
LABEL_211:
                        *(v8 + 32) = v83;
                        __str = v52 + 1;
                        if (v52[1] == 40)
                        {
                          get_proximities(v8, v52 + 1, &__str);
                        }

                        continue;
                      case 'p':
                        v81 = *(v8 + 32) | 0x40000000;
                        goto LABEL_161;
                      case 'r':
                        v81 = *(v8 + 32) | 2;
                        goto LABEL_161;
                      case 's':
                        v81 = *(v8 + 32) | 0x1000000;
                        goto LABEL_161;
                      case 't':
                        v81 = *(v8 + 32) | 4;
                        goto LABEL_161;
                      case 'w':
                        v81 = *(v8 + 32) | 0x40;
                        goto LABEL_161;
                      case 'x':
                        v81 = *(v8 + 32) | 0x100000000;
                        goto LABEL_161;
                      case 'z':
                        v81 = *(v8 + 32) | 0x80000000;
LABEL_161:
                        *(v8 + 32) = v81;
                        __str = v52 + 1;
                        continue;
                      default:
                        goto LABEL_135;
                    }

                    do
                    {
                      while (1)
                      {
                        v87 = v88;
                        v90 = *v88;
                        if (!*v88)
                        {
                          goto LABEL_180;
                        }

                        if ((v90 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v89 = __maskrune(v90, 0x4000uLL);
                        v88 = v87 + 1;
                        if (!v89)
                        {
                          goto LABEL_180;
                        }
                      }

                      ++v88;
                    }

                    while ((*(v77 + 4 * v90 + 60) & 0x4000) != 0);
LABEL_180:
                    *v131 = v87;
LABEL_181:
                    v91 = *v87;
                    if (!*v87)
                    {
                      goto LABEL_216;
                    }

                    if (v91 != 41)
                    {
                      break;
                    }

                    ++v87;
LABEL_216:
                    __str = v87;
LABEL_217:
                    _Block_object_dispose(__s, 8);
                  }

                  v92 = (v87 + 1);
                  do
                  {
                    if ((v91 & 0x80) != 0)
                    {
                      if (!__maskrune(v91, 0x4000uLL))
                      {
                        goto LABEL_188;
                      }
                    }

                    else if ((*(v77 + 4 * v91 + 60) & 0x4000) == 0)
                    {
LABEL_188:
                      v87 = *v131;
                      LOBYTE(v91) = **v131;
                      goto LABEL_190;
                    }

                    *v131 = v92;
                    v93 = *v92++;
                    LOBYTE(v91) = v93;
                  }

                  while (v93);
                  v87 = (v92 - 1);
LABEL_190:
                  if ((v91 - 45) < 2u || (v91 - 48) <= 9)
                  {
                    v95 = strtof(v87, v131);
                    v139(buf, v95);
                    v87 = *v131;
                    LOBYTE(v91) = **v131;
                  }

                  if (!v91)
                  {
LABEL_179:
                    ++v87;
                    goto LABEL_180;
                  }

                  v96 = v87 + 1;
                  while (1)
                  {
                    if ((v91 & 0x80) != 0)
                    {
                      if (!__maskrune(v91, 0x4000uLL))
                      {
                        goto LABEL_201;
                      }
                    }

                    else if ((*(v77 + 4 * v91 + 60) & 0x4000) == 0)
                    {
LABEL_201:
                      v87 = *v131;
                      if (**v131 != 41)
                      {
                        goto LABEL_179;
                      }

                      goto LABEL_181;
                    }

                    *v131 = v96;
                    v97 = *v96++;
                    LOBYTE(v91) = v97;
                    if (!v97)
                    {
                      v87 = v96;
                      goto LABEL_180;
                    }
                  }
                }

                goto LABEL_278;
              }

              __str = v76;
              v78 = *v76++;
              LOBYTE(v24) = v78;
              if (!v78)
              {
                goto LABEL_278;
              }
            }
          }

          v25 = 7;
        }

        *(v8 + 24) = v25;
        goto LABEL_149;
      }

      goto LABEL_79;
    }

    v26 = 13;
  }

  *(v8 + 24) = v26;
  v18 = __str;
LABEL_79:
  v43 = v18 + 1;
  v44 = MEMORY[0x1E69E9830];
  while (1)
  {
    __str = v43;
    v46 = *v43++;
    v45 = v46;
    if (!v46)
    {
      break;
    }

    if ((v45 & 0x80000000) != 0)
    {
      if (!__maskrune(v45, 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v44 + 4 * v45 + 60) & 0x4000) == 0)
    {
      break;
    }
  }

  free(*v8);
  __str = parse_string_piece(__str, __src, 1056, &v130);
  *v8 = process_qp_field_name(v8, __src, v130);
  v47 = *__str;
  if (!*__str)
  {
    goto LABEL_97;
  }

  v48 = __str + 1;
  while (v47 < 0)
  {
    if (!__maskrune(v47, 0x4000uLL))
    {
      goto LABEL_90;
    }

LABEL_87:
    v49 = *v48++;
    v47 = v49;
    if (!v49)
    {
      goto LABEL_97;
    }
  }

  if ((*(v44 + 4 * v47 + 60) & 0x4000) != 0)
  {
    goto LABEL_87;
  }

LABEL_90:
  if (*(v48 - 1) == 44)
  {
    while (1)
    {
      v50 = v48;
      v51 = *v48;
      if (!*v48)
      {
        break;
      }

      if ((v51 & 0x80000000) != 0)
      {
        ++v48;
        if (!__maskrune(v51, 0x4000uLL))
        {
          break;
        }
      }

      else
      {
        ++v48;
        if ((*(v44 + 4 * v51 + 60) & 0x4000) == 0)
        {
          break;
        }
      }
    }

    __str = v50;
  }

LABEL_97:
  v52 = __str;
  v53 = strlen(__str);
  v54 = *__str;
  if (!*__str)
  {
LABEL_129:
    *(v8 + 40) = 0;
    goto LABEL_130;
  }

  v128 = &__str[v53];
  while (2)
  {
    if (v54 < 0)
    {
      if (!__maskrune(v54, 0x4000uLL))
      {
        goto LABEL_103;
      }

LABEL_100:
      v55 = *++v52;
      v54 = v55;
      if (!v55)
      {
        goto LABEL_129;
      }

      continue;
    }

    break;
  }

  if ((*(v44 + 4 * v54 + 60) & 0x4000) != 0)
  {
    goto LABEL_100;
  }

LABEL_103:
  v56 = *v52;
  if (!*v52)
  {
    goto LABEL_129;
  }

  bzero(buf, 0x2000uLL);
  v57 = 0;
  v58 = 0;
  while (v56 != 41)
  {
    bzero(__s, 0x400uLL);
    v52 = parse_string_piece(v52, __s, 1024, 0);
    v59 = strlen(__s);
    v60 = malloc_type_zone_malloc(queryZone, v59 + 1, 0xA4971684uLL);
    if (!v60 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v131 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v131, 2u);
    }

    memcpy(v60, __s, v59);
    *(v60 + v59) = 0;
    *&buf[8 * v57] = v60;
    v61 = *v52;
    if (!*v52)
    {
      goto LABEL_125;
    }

    v62 = v52 + 1;
    while (v61 < 0)
    {
      if (!__maskrune(v61, 0x4000uLL))
      {
        goto LABEL_115;
      }

LABEL_112:
      v63 = *++v52;
      v61 = v63;
      ++v62;
      if (!v63)
      {
        goto LABEL_125;
      }
    }

    if ((*(v44 + 4 * v61 + 60) & 0x4000) != 0)
    {
      goto LABEL_112;
    }

LABEL_115:
    _CF = *v52 != 44 || v52 >= v128;
    if (!_CF)
    {
      while (1)
      {
        v52 = v62;
        v65 = *v62;
        if (!*v62)
        {
          break;
        }

        if ((v65 & 0x80000000) != 0)
        {
          ++v62;
          if (!__maskrune(v65, 0x4000uLL))
          {
            break;
          }
        }

        else
        {
          ++v62;
          if ((*(v44 + 4 * v65 + 60) & 0x4000) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_125:
    ++v57;
    v56 = *v52;
    if (*v52)
    {
      _CF = v58++ >= 0x3FF;
      if (!_CF)
      {
        continue;
      }
    }

    *(v8 + 40) = v57;
    goto LABEL_221;
  }

  ++v52;
  *(v8 + 40) = v57;
  if (!v57)
  {
    goto LABEL_130;
  }

LABEL_221:
  v98 = malloc_type_zone_malloc(queryZone, 8 * v57, 0xA4971684uLL);
  if (!v98)
  {
    v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    v98 = 0;
    if (v99)
    {
      *__s = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", __s, 2u);
      v98 = 0;
    }
  }

  *(v8 + 168) = v98;
  memcpy(v98, buf, 8 * v57);
LABEL_130:
  __str = v52;
  v66 = *(v8 + 24);
  if (v66 == 13)
  {
    if (*(v8 + 40) < 1)
    {
      goto LABEL_278;
    }
  }

  else if (v66 == 11 && *(v8 + 40) != 2)
  {
    goto LABEL_278;
  }

LABEL_135:
  *v4 = v52;
  return v8;
}

char *process_qp_field_name(uint64_t a1, char *__s1, unsigned int a3)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    goto LABEL_35;
  }

  v5 = &__s1[a3];
  if (*(v5 - 1) != 93)
  {
    goto LABEL_35;
  }

  if (a3 <= 3)
  {
    *(a1 + 32) |= 0x2000000uLL;
    *(a1 + 44) = 0;
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0;
  v9 = v5 - 2;
  v10 = MEMORY[0x1E69E9830];
  while (1)
  {
    v12 = &__s1[v4];
    v13 = *v12;
    if (v13 == 36)
    {
      v11 = v8 ^ 1;
      v8 = 1;
      if (v4 < 3)
      {
        goto LABEL_29;
      }

      goto LABEL_6;
    }

    if (v13 == 91)
    {
      break;
    }

    v14 = v13;
    if (v13 < 0)
    {
      if (!__maskrune(v13, 0x400uLL))
      {
        v16 = __maskrune(v14, 0x4000uLL);
LABEL_25:
        v11 = v16 != 0;
        if (v4 < 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v15 = *(v10 + 4 * v13 + 60);
      if ((v15 & 0x400) == 0)
      {
        v16 = v15 & 0x4000;
        goto LABEL_25;
      }
    }

    if (v8)
    {
      *(a1 + 32) |= 0x2000000uLL;
      *(a1 + 44) = 0;
      if (v7)
      {
        v23 = atoi(v7);
        v7 = 0;
        *(a1 + 44) = v23;
      }

      return v7;
    }

    v8 = 0;
    if (v7)
    {
      v17 = v7 == v12 + 1;
    }

    else
    {
      v17 = 1;
    }

    v11 = v17;
    if (v17)
    {
      v7 = v9;
    }

    if (v4 < 3)
    {
      goto LABEL_29;
    }

LABEL_6:
    --v4;
    if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  *v12 = 0;
  v11 = 1;
LABEL_29:
  v18 = *(a1 + 32);
  if ((v8 & 1) == 0 && v7)
  {
    *(a1 + 32) = v18 | 0x4000000;
    *(a1 + 44) = 0;
    goto LABEL_33;
  }

  *(a1 + 32) = v18 | 0x2000000;
  *(a1 + 44) = 0;
  if (v7)
  {
LABEL_33:
    *(a1 + 44) = atoi(v7);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v19 = *__s1;
  if (v19 <= 0x6C)
  {
    if (!*__s1)
    {
      return 0;
    }

    if (v19 == 99)
    {
      if (strncmp(__s1, "created.", 8uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 9, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1DuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserCreatedUserHandle");
        return v7;
      }

      if (strcmp(__s1 + 9, "user"))
      {
        goto LABEL_74;
      }

      v20 = "kMDItemUserCreatedDate";
    }

    else
    {
      if (v19 != 100 || strncmp(__s1, "downloaded.", 0xBuLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 12, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x20uLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserDownloadedUserHandle");
        return v7;
      }

      if (strcmp(__s1 + 12, "user"))
      {
        goto LABEL_74;
      }

      v20 = "kMDItemUserDownloadedDate";
    }

    goto LABEL_110;
  }

  if (*__s1 > 0x71u)
  {
    if (v19 == 114)
    {
      if (strncmp(__s1, "received.", 9uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 10, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1EuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserSharedReceivedDate");
        return v7;
      }

      if (!strcmp(__s1 + 10, "sender"))
      {
        v20 = "kMDItemUserSharedReceivedSender";
      }

      else if (!strcmp(__s1 + 10, "receivers"))
      {
        v20 = "kMDItemUserSharedReceivedRecipient";
      }

      else if (!strcmp(__s1 + 10, "transport"))
      {
        v20 = "kMDItemUserSharedReceivedTransport";
      }

      else if (!strcmp(__s1 + 10, "senderHandle"))
      {
        v20 = "kMDItemUserSharedReceivedSenderHandle";
      }

      else
      {
        if (strcmp(__s1 + 10, "receiverHandles"))
        {
          goto LABEL_74;
        }

        v20 = "kMDItemUserSharedReceivedRecipientHandle";
      }
    }

    else
    {
      if (v19 != 115 || strncmp(__s1, "sent.", 5uLL))
      {
        goto LABEL_74;
      }

      if (!strcmp(__s1 + 6, "date"))
      {
        v7 = malloc_type_zone_malloc(queryZone, 0x1AuLL, 0xA4971684uLL);
        if (!v7)
        {
          _log_fault_for_malloc_failure();
        }

        strcpy(v7, "kMDItemUserSharedSentDate");
        return v7;
      }

      if (!strcmp(__s1 + 6, "sender"))
      {
        v20 = "kMDItemUserSharedSentSender";
      }

      else if (!strcmp(__s1 + 6, "recipients"))
      {
        v20 = "kMDItemUserSharedSentRecipient";
      }

      else if (!strcmp(__s1 + 6, "transport"))
      {
        v20 = "kMDItemUserSharedSentTransport";
      }

      else if (!strcmp(__s1 + 6, "senderHandle"))
      {
        v20 = "kMDItemUserSharedSentSenderHandle";
      }

      else
      {
        if (strcmp(__s1 + 6, "recipientHandles"))
        {
          goto LABEL_74;
        }

        v20 = "kMDItemUserSharedSentRecipientHandle";
      }
    }

    goto LABEL_110;
  }

  if (v19 == 109)
  {
    if (strncmp(__s1, "modified.", 9uLL))
    {
      goto LABEL_74;
    }

    if (!strcmp(__s1 + 10, "date"))
    {
      v7 = malloc_type_zone_malloc(queryZone, 0x18uLL, 0xA4971684uLL);
      if (!v7)
      {
        _log_fault_for_malloc_failure();
      }

      strcpy(v7, "kMDItemUserModifiedDate");
      return v7;
    }

    if (strcmp(__s1 + 10, "user"))
    {
      goto LABEL_74;
    }

    v20 = "kMDItemUserModifiedUserHandle";
LABEL_110:

    return query_strdup(v20);
  }

  if (v19 != 112 || strncmp(__s1, "printed.", 8uLL))
  {
    goto LABEL_74;
  }

  if (!strcmp(__s1 + 9, "date"))
  {
    v7 = malloc_type_zone_malloc(queryZone, 0x17uLL, 0xA4971684uLL);
    if (!v7)
    {
      _log_fault_for_malloc_failure();
    }

    strcpy(v7, "kMDItemUserPrintedDate");
  }

  else
  {
    if (!strcmp(__s1 + 9, "user"))
    {
      v20 = "kMDItemUserPrintedUserHandle";
      goto LABEL_110;
    }

LABEL_74:
    v21 = strlen(__s1);
    v7 = malloc_type_zone_malloc(queryZone, v21 + 1, 0xA4971684uLL);
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v24, 2u);
    }

    memcpy(v7, __s1, v21);
    v7[v21] = 0;
  }

  return v7;
}

double __SIUserCtxInit(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t SIUserCtxCreateWithLanguages(uint64_t a1, const void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!__kSIUserCtxTypeID)
  {
    __kSIUserCtxTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 164) = 0;
  *(Instance + 160) = 0;
  *(Instance + 56) = 0;
  *(Instance + 136) = 0;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  if (!a2)
  {
    v10 = 0;
    v11 = 112;
LABEL_15:
    *(Instance + v11) = v10;
    return Instance;
  }

  CFRetain(a2);
  *(Instance + 112) = a2;
  TypeID = CFArrayGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v14 = __si_assert_copy_extra_332();
    v22 = v14;
    v23 = "";
    if (v14)
    {
      v23 = v14;
    }

    __message_assert_336(v14, v15, v16, v17, v18, v19, v20, v21, "SIUserCtx.c", 158, "CFArrayGetTypeID()==CFGetTypeID(languages)", v23);
    free(v22);
    if (__valid_fs(-1))
    {
      v24 = 2989;
    }

    else
    {
      v24 = 3072;
    }

    *v24 = -559038737;
    abort();
  }

  Count = CFArrayGetCount(a2);
  v6 = malloc_type_calloc(Count + 1, 8uLL, 0x10040436913F5uLL);
  if (Count < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
      bzero(buffer, 0x400uLL);
      if (CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
      {
        v6[v8++] = strdup(buffer);
      }

      ++v7;
    }

    while (Count != v7);
  }

  v6[v8] = 0;
  *(Instance + 120) = v6;
  if (CFArrayGetCount(a2))
  {
    v12 = CFArrayGetValueAtIndex(a2, 0);
    v10 = CFRetain(v12);
    v11 = 144;
    goto LABEL_15;
  }

  return Instance;
}

void *and_expr(unsigned __int8 **a1, int a2, _DWORD *a3, uint64_t a4, __n128 a5)
{
  result = factor(a1, a2, a3, a4, a5);
  if (result)
  {
    v11 = result;
    for (i = *a1; ; ++i)
    {
      v13 = *i;
      v14 = v13 > 0x20;
      v15 = (1 << v13) & 0x100001600;
      if (v14 || v15 == 0)
      {
        break;
      }
    }

    *a1 = i;
    if (*i == 38)
    {
      v34 = 0;
      v17 = 0;
      while (1)
      {
        *a1 = i + 1;
        if (i[1] != 38)
        {
          if (v34)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v34, buf, 0);
          }

          if (v11)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            goto LABEL_47;
          }

          return 0;
        }

        for (j = i + 2; ; ++j)
        {
          v19 = *j;
          v14 = v19 > 0x20;
          v20 = (1 << v19) & 0x100001600;
          if (v14 || v20 == 0)
          {
            break;
          }
        }

        *a1 = j;
        v22 = factor(a1, a2, a3, a4, v10);
        v23 = v22;
        v24 = *a1;
        if (*a1)
        {
          while (1)
          {
            v25 = *v24;
            v14 = v25 > 0x20;
            v26 = (1 << v25) & 0x100001600;
            if (v14 || v26 == 0)
            {
              break;
            }

            ++v24;
          }
        }

        *a1 = v24;
        if (!v22)
        {
          break;
        }

        v28 = (*a3)++;
        if (v28 >= 2049)
        {
          if (v34)
          {
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(v34, buf, 0);
          }

LABEL_55:
          if (!v11)
          {
LABEL_58:
            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            v32 = v23;
            goto LABEL_59;
          }

LABEL_56:
          *buf = MEMORY[0x1E69E9820];
          v36 = 0x40000000;
          v37 = __db_query_tree_apply_block_block_invoke;
          v38 = &unk_1E8198ED0;
          v39 = &__block_literal_global_174;
          v33 = v11;
LABEL_57:
          db_query_tree_apply_block_with_meta(v33, buf, 0);
          goto LABEL_58;
        }

        if (v17)
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v29 = v17[1];
          v30 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v30)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            v17[1] = 0;
            v33 = v34;
            if (!v34)
            {
              goto LABEL_58;
            }

            *buf = MEMORY[0x1E69E9820];
            v36 = 0x40000000;
            v37 = __db_query_tree_apply_block_block_invoke;
            v38 = &unk_1E8198ED0;
            v39 = &__block_literal_global_174;
            goto LABEL_57;
          }

          v17[1] = v30;
          *v30 = v29;
          v17 = v30;
        }

        else
        {
          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v31 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v31)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              goto LABEL_55;
            }

            *buf = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            if (!v11)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v17 = v31;
          *v31 = v11;
          v34 = v31;
          v11 = 0;
        }

        *(v17 + 24) = 2;
        v17[1] = v23;
        i = *a1;
        if (**a1 != 38)
        {
          goto LABEL_36;
        }
      }

      if (v34)
      {
        *buf = MEMORY[0x1E69E9820];
        v36 = 0x40000000;
        v37 = __db_query_tree_apply_block_block_invoke;
        v38 = &unk_1E8198ED0;
        v39 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v34, buf, 0);
      }

      if (v11)
      {
        *buf = MEMORY[0x1E69E9820];
        v36 = 0x40000000;
        v37 = __db_query_tree_apply_block_block_invoke;
        v38 = &unk_1E8198ED0;
        v39 = &__block_literal_global_174;
LABEL_47:
        v32 = v11;
LABEL_59:
        db_query_tree_apply_block_with_meta(v32, buf, 0);
      }

      return 0;
    }

    else
    {
      v34 = 0;
LABEL_36:
      if (v34)
      {
        return v34;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

BOOL SIResultQueueSetWakeupTrigger(uint64_t *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  pthread_mutex_lock((*a1 + 8));
  v6 = a1[6];
  if (v6)
  {
    v7 = *a1;
  }

  else
  {
    v8 = *(a1 + 12);
    v7 = *a1;
    if (v8)
    {
      goto LABEL_5;
    }

    v10 = *(v7 + 120);
    if ((-v10 & *(v7 + 128)) != 0)
    {
      v13 = __si_assert_copy_extra_332();
      v14 = v13;
      v15 = "";
      if (v13)
      {
        v15 = v13;
      }

      __message_assert(v13, "SISimpleQueue.c", 99, "queue->end == (queue->end&(queue->size-1))", v15);
      free(v14);
      if (__valid_fs(-1))
      {
        v16 = 2989;
      }

      else
      {
        v16 = 3072;
      }

      *v16 = -559038737;
      abort();
    }

    v11 = v10 - 1;
    v12 = *(v7 + 124);
    if ((v12 & ~v11) != 0)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert(v17, "SISimpleQueue.c", 100, "queue->start == (queue->start&(queue->size-1))", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        v20 = 2989;
      }

      else
      {
        v20 = 3072;
      }

      *v20 = -559038737;
      abort();
    }

    if (*(*(v7 + 136) + 8 * v12) && !*(a1 + 21))
    {
LABEL_5:
      pthread_mutex_unlock((v7 + 8));
      a2(a3, v8);
      return v6 == 0;
    }

    a1[6] = a2;
    a1[7] = a3;
  }

  pthread_mutex_unlock((v7 + 8));
  return v6 == 0;
}

void *si_calendar_retain()
{
  v0 = OSAtomicDequeue(&s_si_calendar_head, 0);
  if (!v0)
  {
    v0 = malloc_type_malloc(0x28uLL, 0xE00401D00DCF7uLL);
    if (si_calendar_retain_once != -1)
    {
      dispatch_once(&si_calendar_retain_once, &__block_literal_global_5379);
    }

    v2 = *MEMORY[0x1E695E4A8];
    v3 = *MEMORY[0x1E695E678];
    v4 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
    v0[1] = v4;
    CFCalendarSetTimeZone(v4, si_calendar_retain_s_local_tz);
    v0[3] = si_calendar_retain_s_local_tz;
    v5 = CFCalendarCreateWithIdentifier(v2, v3);
    v0[2] = v5;
    CFCalendarSetTimeZone(v5, si_calendar_retain_s_gmt_tz);
    v0[4] = si_calendar_retain_s_gmt_tz;
  }

  return v0;
}

void *__db_clone_query_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal_15332;
  }

  result = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (result)
  {
    if (*result)
    {
      *result = -1;
    }

    if (result[1])
    {
      result[1] = -1;
    }

    if (!*(a2 + 16) || (v4 = result, piece = clone_query_piece(*(a2 + 16)), result = v4, (v4[2] = piece) != 0))
    {
      *(result + 24) = *(a2 + 48);
      *(result + 13) = *(a2 + 52);
      v6 = result[7] & 0xFE00 | *(a2 + 56);
      *(result + 28) = v6;
      *(result + 28) = v6 & 0xF9FF | *(a2 + 56) & 0x200;
      result[8] = 0;
      *(result + 18) = *(a2 + 72);
      return result;
    }

    free(v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v7, 2u);
  }

  return 0;
}

uint64_t query_priority(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1[25] & 0xFLL;
  if (v1 >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = a1[25] & 0xFLL;
  }

  if (v1 >= 3)
  {
    v3 = a1[20];
    if (v3 && v3 < 401 || (v4 = a1[1]) == 0)
    {
      v2 = 3;
    }

    else if (CFEqual(v4, @"_kMDItemBundleID=com.apple.searchd"))
    {
      v2 = v2;
    }

    else
    {
      v2 = 2;
    }
  }

  if (dword_1EBF46B00 >= 5)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      v12 = v2;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "Running query at priority %d", &v11, 8u);
    }

    *__error() = v6;
    if (dword_1EBF46B00 >= 5)
    {
      v8 = *__error();
      v9 = _SILogForLogForCategory(13);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = qos_class_self();
        v11 = 67109120;
        v12 = v10;
        _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_DEFAULT, "Current QOS %d", &v11, 8u);
      }

      *__error() = v8;
    }
  }

  return v2;
}

void db_query_tree_apply_block_with_meta(void *result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    return;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v86 = a2;
  ptr = 0;
  v13 = 0;
  v91 = 0;
  while (1)
  {
    v92 = v6;
    v15 = *v5;
    v16 = v5[1];
    v17 = (*(v86 + 16))();
    if (a3)
    {
      v88 = v9;
      v18 = v7;
      if (v11 >= v8)
      {
        v19 = v17;
        v20 = 2 * v8;
        if (!v8)
        {
          v20 = 4;
        }

        v8 = v20;
        v21 = 8 * v20;
        v22 = (v13 ? malloc_type_zone_realloc(queryZone, v13, v21, 0xA1A7ADA0uLL) : malloc_type_zone_malloc(queryZone, v21, 0x566E289CuLL));
        v13 = v22;
        v17 = v19;
        if (!v13)
        {
LABEL_78:
          _log_fault_for_malloc_failure();
          __break(1u);
          return;
        }
      }

      *&v13[8 * v11] = v17;
      if (!v16)
      {
        ++v11;
        v7 = v18;
        v9 = v88;
LABEL_20:
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_36;
      }

      if (v10 >= v18)
      {
        v25 = 2 * v18;
        if (!v18)
        {
          v25 = 4;
        }

        v18 = v25;
        v26 = 8 * v25;
        if (ptr)
        {
          v27 = malloc_type_zone_realloc(queryZone, ptr, v26, 0xA1A7ADA0uLL);
        }

        else
        {
          v27 = malloc_type_zone_malloc(queryZone, v26, 0x566E289CuLL);
        }

        v24 = v27;
        if (!v27)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v24 = ptr;
      }

      ptr = v24;
      *(v24 + v10++) = v12;
      ++v11;
      v7 = v18;
      v9 = v88;
      if (v12 >= v88)
      {
LABEL_29:
        v89 = v13;
        v28 = v8;
        v29 = 2 * v9;
        if (!v9)
        {
          v29 = 4;
        }

        v30 = v29;
        v31 = 16 * v29;
        if (v91)
        {
          v32 = malloc_type_zone_realloc(queryZone, v91, v31, 0xA1A7ADA0uLL);
        }

        else
        {
          v32 = malloc_type_zone_malloc(queryZone, v31, 0x566E289CuLL);
        }

        v23 = v32;
        v9 = v30;
        v8 = v28;
        v13 = v89;
        if (!v32)
        {
          goto LABEL_78;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_20;
      }

      if (v12 >= v9)
      {
        goto LABEL_29;
      }
    }

    v23 = v91;
LABEL_35:
    v91 = v23;
    v33 = &v23[16 * v12];
    v34 = v92;
    ++v12;
    *v33 = v16;
    *(v33 + 1) = v34;
    if (v15)
    {
LABEL_3:
      v14 = &v92;
      goto LABEL_4;
    }

LABEL_36:
    v90 = v9;
    v84 = v8;
    v85 = v7;
    if (!v10)
    {
      v35 = v91;
      v36 = v13;
      v39 = 0;
      if (v12)
      {
        goto LABEL_47;
      }

      goto LABEL_49;
    }

    v35 = v91;
    if (*(ptr + v10 - 1) != v12)
    {
      break;
    }

    v36 = v13;
    v37 = &v13[8 * v11 - 24];
    v38 = v11;
    while (1)
    {
      v11 = v38 - 2;
      if (v38 <= 2)
      {
        v46 = __si_assert_copy_extra_332();
        v54 = v46;
        v55 = "";
        if (v46)
        {
          v55 = v46;
        }

        __message_assert_336(v46, v47, v48, v49, v50, v51, v52, v53, "core-query.c", 2111, "up_count>2", v55);
        goto LABEL_68;
      }

      *v37 = (*(a3 + 16))(a3, *v37, *(v37 + 1), *(v37 + 2));
      v39 = v10 - 1;
      if (v10 == 1)
      {
        break;
      }

      v40 = *(ptr + v10 - 2);
      v37 -= 16;
      --v10;
      v38 -= 2;
      if (v40 != v12)
      {
        goto LABEL_46;
      }
    }

    v11 = v38 - 3;
    if (!v12)
    {
      goto LABEL_49;
    }

LABEL_47:
    --v12;
    v91 = v35;
    v41 = &v35[16 * v12];
    v42 = *v41;
    v14 = (v41 + 8);
    v15 = v42;
    v10 = v39;
    v13 = v36;
    v8 = v84;
    v7 = v85;
    v9 = v90;
LABEL_4:
    v6 = *v14;
    v5 = v15;
    if (!v15)
    {
      v43 = v12 == 0;
      v39 = v10;
      v35 = v91;
      if (!v10)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }
  }

  v36 = v13;
  v39 = v10;
LABEL_46:
  if (v12)
  {
    goto LABEL_47;
  }

LABEL_49:
  v43 = 1;
  v13 = v36;
  if (v39)
  {
LABEL_52:
    v44 = &v13[8 * v11 - 24];
    while (1)
    {
      v45 = v11 > 2;
      v11 -= 2;
      if (!v45)
      {
        break;
      }

      --v39;
      *v44 = (*(a3 + 16))(a3, *v44, *(v44 + 1), *(v44 + 2));
      v44 -= 16;
      if (!v39)
      {
        --v11;
        goto LABEL_57;
      }
    }

    v56 = __si_assert_copy_extra_332();
    v54 = v56;
    v64 = "";
    if (v56)
    {
      v64 = v56;
    }

    __message_assert_336(v56, v57, v58, v59, v60, v61, v62, v63, "core-query.c", 2125, "up_count>2", v64);
LABEL_68:
    free(v54);
    if (__valid_fs(-1))
    {
      v65 = 2989;
    }

    else
    {
      v65 = 3072;
    }

    *v65 = -559038737;
    abort();
  }

LABEL_57:
  if (ptr)
  {
    if (v11)
    {
      v66 = __si_assert_copy_extra_332();
      v54 = v66;
      v74 = "";
      if (v66)
      {
        v74 = v66;
      }

      __message_assert_336(v66, v67, v68, v69, v70, v71, v72, v73, "core-query.c", 2135, "up_count==0", v74);
      goto LABEL_68;
    }

    if (!v43)
    {
      v75 = __si_assert_copy_extra_332();
      v54 = v75;
      v83 = "";
      if (v75)
      {
        v83 = v75;
      }

      __message_assert_336(v75, v76, v77, v78, v79, v80, v81, v82, "core-query.c", 2136, "count==0", v83);
      goto LABEL_68;
    }
  }

  free(v35);
  free(v13);
  free(ptr);
}

void *__db_sanitize_query_tree_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  return result;
}

char *clone_query_piece(uint64_t a1)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal_15332;
  }

  v2 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = *(a1 + 40);
  *(v2 + 10) = v4;
  *(v2 + 1) = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v2 + 6) = v5;
  v2[28] = *(a1 + 28);
  *(v2 + 4) = *(a1 + 32);
  *(v2 + 44) = *(a1 + 44);
  *(v2 + 52) = *(a1 + 52);
  v6 = *(a1 + 60);
  *(v2 + 15) = v6;
  *(v2 + 40) = *(a1 + 160);
  v7 = (v2 + 168);
  v8 = (a1 + 168);
  v9 = *(a1 + 232);
  v10 = *(a1 + 248);
  v11 = *(a1 + 280);
  *(v2 + 264) = *(a1 + 264);
  v12 = *(a1 + 168);
  v13 = *(a1 + 184);
  v14 = *(a1 + 200);
  *(v2 + 216) = *(a1 + 216);
  *(v2 + 200) = v14;
  *(v2 + 184) = v13;
  *(v2 + 168) = v12;
  *(v2 + 248) = v10;
  *(v2 + 232) = v9;
  *(v2 + 34) = 0;
  *(v2 + 35) = v11;
  *(v2 + 36) = 0;
  *(v2 + 37) = 0;
  *(v2 + 16) = *(a1 + 64);
  if (v5 == 15)
  {
    v15 = v6 & 3;
    v16 = -1;
    if (v15 != 3)
    {
      v17 = (v6 >> 2) & 3;
      if (v17 != 3)
      {
        v16 = (vector_dimension_vec_sizes_15424[v15] * vector_size_elem_sizes_15423[v17]);
      }
    }

    v18 = malloc_type_malloc(v16, 0x5498730EuLL);
    *(v3 + 296) = v18;
    v19 = *(a1 + 296);
    if (!v19)
    {
      goto LABEL_73;
    }

    memcpy(v18, v19, v16);
    *(v3 + 80) = *(a1 + 80);
  }

  v20 = *(a1 + 96);
  if (v20 && *(a1 + 88))
  {
    v21 = malloc_type_zone_malloc(queryZone, 4 * v20, 0xA4971684uLL);
    if (!v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v3 + 88) = 0;
      goto LABEL_73;
    }

    *(v3 + 88) = v21;
    memcpy(v21, *(a1 + 88), 4 * v20);
    *(v3 + 96) = v20;
  }

  v22 = *(a1 + 32);
  if ((v22 & 0xC0000) != 0 && (v22 & 0x200) == 0 && v4)
  {
    v23 = malloc_type_zone_malloc(queryZone, 8 * v4, 0xA4971684uLL);
    if (v23)
    {
      *(v3 + 288) = v23;
      v24 = *(a1 + 288);
      if (v24)
      {
        memcpy(v23, v24, 8 * v4);
        goto LABEL_20;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(v3 + 288) = 0;
    }

    v44 = *__error();
    v45 = _SILogForLogForCategory(1);
    v46 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v45, v46))
    {
      *buf = 0;
      _os_log_impl(&dword_1C278D000, v45, v46, "clone_query_piece: ann data missing", buf, 2u);
    }

    *__error() = v44;
    goto LABEL_73;
  }

LABEL_20:
  size = v4;
  if (!*v8)
  {
    goto LABEL_30;
  }

  v25 = 8 * v4;
  v26 = malloc_type_zone_malloc(queryZone, 8 * v4, 0xA4971684uLL);
  if (!v26)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *v7 = 0;
LABEL_73:
    free_qp(v3);
    return 0;
  }

  v27 = v26;
  *v7 = v26;
  if (v4 >= 1)
  {
    v28 = 0;
    v29 = MEMORY[0x1E69E9C10];
    do
    {
      v30 = *(*v8 + v28);
      v31 = strlen(v30);
      v32 = malloc_type_zone_malloc(queryZone, v31 + 1, 0xA4971684uLL);
      if (!v32 && os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, v29, OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      memcpy(v32, v30, v31);
      *(v32 + v31) = 0;
      *&v27[v28] = v32;
      v28 += 8;
    }

    while (v25 != v28);
  }

LABEL_30:
  v33 = *a1;
  if (*a1)
  {
    v34 = strlen(*a1);
    v35 = malloc_type_zone_malloc(queryZone, v34 + 1, 0xA4971684uLL);
    if (!v35 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    memcpy(v35, v33, v34);
    *(v35 + v34) = 0;
    *v3 = v35;
  }

  v36 = *(a1 + 72);
  if (v36)
  {
    v37 = strlen(*(a1 + 72));
    v38 = malloc_type_zone_malloc(queryZone, v37 + 1, 0xA4971684uLL);
    if (!v38 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    memcpy(v38, v36, v37);
    *(v38 + v37) = 0;
    *(v3 + 72) = v38;
  }

  if (*(a1 + 104))
  {
    if ((*(a1 + 24) - 13) > 1)
    {
      if ((*(a1 + 32) & 2) != 0)
      {
        v43 = icu_regex_copy();
      }

      else
      {
        v43 = icu_ctx_retain();
      }

      *(v3 + 104) = v43;
      return v3;
    }

    v39 = 8 * size;
    if (((size >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v39 > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal_15332;
    }

    v40 = malloc_type_zone_calloc(queryZone, 8uLL, size, 0x5BAF1CEAuLL);
    if (v40)
    {
      *(v3 + 104) = v40;
      if (size >= 1)
      {
        v41 = 0;
        do
        {
          if (*(*(a1 + 104) + v41))
          {
            if ((*(a1 + 32) & 2) != 0)
            {
              v42 = icu_regex_copy();
            }

            else
            {
              v42 = icu_ctx_retain();
            }

            *(*(v3 + 104) + v41) = v42;
          }

          v41 += 8;
        }

        while (v39 != v41);
      }

      return v3;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
    }

    *(v3 + 104) = 0;
    goto LABEL_73;
  }

  return v3;
}

void db_optimize_query_tree(uint64_t *a1)
{
  v2 = *a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 0x40000000;
  v11 = __db_query_tree_apply_block_block_invoke;
  v12 = &unk_1E8198ED0;
  v13 = &__block_literal_global_39_15504;
  db_query_tree_apply_block_with_meta(v2, &v9, &__block_literal_global_42_15505);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5 == 32 || v5 == 16)
    {
      v7 = *v3;
      if (*v4)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 0x40000000;
        v11 = __db_query_tree_apply_block_block_invoke;
        v12 = &unk_1E8198ED0;
        v13 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v7, &v9, 0);
        *v4 = 0;
      }

      v8 = v4[1];
      if (v8)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 0x40000000;
        v11 = __db_query_tree_apply_block_block_invoke;
        v12 = &unk_1E8198ED0;
        v13 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(v8, &v9, 0);
        v4[1] = 0;
      }
    }
  }

  *a1 = v4;
}

uint64_t __decorateExpandingFunctions_block_invoke(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(v4 + 176);
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 48) != 4)
  {
    goto LABEL_65;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v6 + 72);
  if (v9)
  {
    v10 = *v6;
    if (!strcmp(*v6, "kMDItemFSName") && *v9 == 42 && !v9[1])
    {
      free(v10);
      v11 = strdup("kMDItemFSFileId");
      v6 = *(a2 + 16);
      *v6 = v11;
    }
  }

  v12 = *(v6 + 32);
  if ((v12 & 0x400) != 0 || (v13 = *v6) != 0 && (!strcmp(*v6, "kMDItemTextContent") || !strncmp(v13, "_kMDItemOCRContent", 0x12uLL)))
  {
    *(v6 + 32) = v12 | 0x480;
    *(v6 + 8) = _qpContentIndexMatch;
    v16 = *(v6 + 72);
    if (!v16)
    {
      v20 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v14 = *(v6 + 24);
    if (v14 > 6 || ((1 << v14) & 0x66) == 0)
    {
      v20 = 100;
      goto LABEL_34;
    }

    v16 = *(v6 + 72);
    if (!v16)
    {
      *(v6 + 48) = 100;
      goto LABEL_43;
    }
  }

  v17 = strlen(v16);
  v18 = *v16;
  if (v17 < 1)
  {
    if (v18 == 42)
    {
      goto LABEL_28;
    }

LABEL_32:
    v20 = -v17;
    goto LABEL_33;
  }

  v19 = v16[(v17 & 0x7FFFFFFF) - 1];
  if (v18 != 42)
  {
    if (v19 == 42)
    {
      v21 = 50;
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  if (v19 != 42)
  {
LABEL_28:
    v21 = 99;
LABEL_31:
    v20 = v21 - v17;
    goto LABEL_33;
  }

  v20 = 99;
LABEL_33:
  v14 = *(v6 + 24);
LABEL_34:
  *(v6 + 48) = v20;
  if (v14 == 11 && *(v6 + 168))
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    if (*(v6 + 40) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = *(*(v6 + 168) + 8 * v22);
        if (v23 && *v23 == 36)
        {
          v24 = _expandFunctions((v23 + 1), &v43, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
          v25 = *(a2 + 16);
          *(v25 + 32) |= v24;
          free(*(*(v25 + 168) + 8 * v22));
          *(*(*(a2 + 16) + 168) + 8 * v22) = strdup(&v43);
          v6 = *(a2 + 16);
        }

        ++v22;
      }

      while (v22 < *(v6 + 40));
    }

LABEL_57:
    if ((*(v6 + 32) & 0x80) != 0)
    {
      if (*(v6 + 168))
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        if (*(v6 + 40) >= 1)
        {
          v36 = 0;
          do
          {
            v37 = *(*(v6 + 168) + 8 * v36);
            if (v37 && *v37 == 36)
            {
              v38 = _expandFunctions((v37 + 1), &v43, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
              v39 = *(a2 + 16);
              *(v39 + 32) |= v38;
              free(*(*(v39 + 168) + 8 * v36));
              *(*(*(a2 + 16) + 168) + 8 * v36) = strdup(&v43);
              v6 = *(a2 + 16);
            }

            ++v36;
          }

          while (v36 < *(v6 + 40));
        }
      }
    }

    goto LABEL_65;
  }

LABEL_43:
  v26 = *(v6 + 72);
  if (v26 && *v26 == 36)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = _expandFunctions((v26 + 1), &v43, 0x200uLL, v7, &__block_literal_global_4_5387, v8);
    v28 = *(a2 + 16);
    *(v28 + 32) |= v27;
    v29 = strlen(&v43);
    v30 = *(v28 + 72);
    if (v29 <= strlen(v30))
    {
      memcpy(v30, &v43, v29 + 1);
      v6 = *(a2 + 16);
    }

    else
    {
      free(v30);
      v31 = strdup(&v43);
      v6 = *(a2 + 16);
      *(v6 + 72) = v31;
    }

LABEL_56:
    if (!v6)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

  v32 = isEntitledForAttribute(v5, *v6);
  v6 = *(a2 + 16);
  if (v32)
  {
    goto LABEL_56;
  }

  v33 = 0;
  v34 = *(a2 + 48);
  if (v34 == 4 && v6)
  {
    v33 = (*(v6 + 24) < 0xFu) & (0x5060u >> *(v6 + 24));
  }

  if (v33 == ((v34 >> 3) & 1))
  {
    v35 = 16;
  }

  else
  {
    v35 = 32;
  }

  *(a2 + 48) = v35;
  free_qp(v6);
  *(a2 + 16) = 0;
LABEL_65:
  if (*(a1 + 56) == 1)
  {
    v40 = *(a2 + 16);
    if (v40)
    {
      v41 = *v40;
      if (*v40)
      {
        if (!strcmp(*v40, "_kMDItemFileName"))
        {
          strcpy(v41, "kMDItemFilename");
        }
      }
    }
  }

  return a2;
}

uint64_t __db_sanitize_query_tree_block_invoke_2(__n128 a1)
{
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v4 = v2;
  v238 = *MEMORY[0x1E69E9840];
  ++*(*(*(v1 + 40) + 8) + 24);
  if (*(v2 + 48) != 4)
  {
    return v4;
  }

  v5 = *(v2 + 16);
  if (!v5)
  {
    return v4;
  }

  v6 = v1;
  v7 = *(v5 + 24);
  if ((v7 - 11) >= 2)
  {
    if (v7 == 15)
    {
      goto LABEL_23;
    }
  }

  else if (*(v5 + 168))
  {
    if (*(v5 + 40) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 168) + 8 * v8);
        if (v9 && *v9 == 36)
        {
          v10 = v9 + 1;
          v11 = (*(*(v6 + 32) + 16))(v3);
          v5 = *(v4 + 16);
          v12 = !v11 || v11 == v10;
          if (!v12)
          {
            v13 = v11;
            free(*(*(v5 + 168) + 8 * v8));
            v5 = *(v4 + 16);
            *(*(v5 + 168) + 8 * v8) = v13;
          }
        }

        ++v8;
      }

      while (v8 < *(v5 + 40));
    }

    goto LABEL_23;
  }

  v14 = *(v5 + 72);
  if (v14)
  {
    if (*v14 != 36)
    {
      v162 = *(v5 + 32);
      if ((v162 & 0x40) != 0)
      {
        v163 = *(v5 + 72);
        while (1)
        {
          v163 = strstr(v163, "**");
          if (!v163)
          {
            break;
          }

          if (v163 == v14)
          {
            goto LABEL_389;
          }

          v164 = 0;
          v165 = v163;
          while (1)
          {
            v166 = *--v165;
            if (v166 != 92)
            {
              break;
            }

            v164 ^= 1u;
            if (v165 == v14)
            {
              v164 = v14 - v163;
              break;
            }
          }

          if (v164)
          {
            ++v163;
          }

          else
          {
LABEL_389:
            v167 = (v163 + 1);
            do
            {
              v168 = *v167;
              *(v167++ - 1) = v168;
            }

            while (v168);
          }
        }

        v5 = *(v4 + 16);
        v162 = *(v5 + 32);
      }

      v174 = (v162 >> 3) & 1;
      v175 = (v162 & 0x1000004) != 0;
      goto LABEL_24;
    }

    v15 = v14 + 1;
    v16 = (*(*(v1 + 32) + 16))(v3);
    v5 = *(v4 + 16);
    if (v16 && v16 != v15)
    {
      v173 = v16;
      free(*(v5 + 72));
      LODWORD(v174) = 0;
      v175 = 0;
      v5 = *(v4 + 16);
      *(v5 + 72) = v173;
      goto LABEL_24;
    }
  }

LABEL_23:
  LODWORD(v174) = 0;
  v175 = 0;
LABEL_24:
  if ((*(v5 + 32) & 0x80) != 0 && *(v5 + 168) && *(v5 + 40) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(*(v5 + 168) + 8 * v18);
      if (v19 && *v19 == 36)
      {
        v20 = v19 + 1;
        v21 = (*(*(v6 + 32) + 16))(v3);
        v5 = *(v4 + 16);
        if (v21 && v21 != v20)
        {
          v23 = v21;
          free(*(*(v5 + 168) + 8 * v18));
          v5 = *(v4 + 16);
          *(*(v5 + 168) + 8 * v18) = v23;
        }
      }

      ++v18;
    }

    while (v18 < *(v5 + 40));
  }

  if (!v175)
  {
    if (*(v4 + 48) == 4 && (v27 = *v5) != 0 && *v27 == 42 && v27[1] == 42 && !v27[2])
    {
      *(*(*(v6 + 40) + 8) + 24) += 2;
      if ((*(v5 + 24) - 5) >= 2)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      query_node_expand_double_star_in_place(v4, v28);
      if (!v174)
      {
        return v4;
      }
    }

    else
    {
LABEL_398:
      if (!v174)
      {
        return v4;
      }
    }

LABEL_399:
    v233 = MEMORY[0x1E69E9820];
    v234 = 0x40000000;
    v235 = __db_query_tree_apply_block_block_invoke;
    v236 = &unk_1E8198ED0;
    v237 = &__block_literal_global_114;
    db_query_tree_apply_block_with_meta(v4, &v233, &__block_literal_global_123);
    return v171;
  }

  if (*(v4 + 48) != 4 || (v24 = *(v5 + 72)) == 0)
  {
    v176 = __si_assert_copy_extra_332();
    v184 = v176;
    v185 = "";
    if (v176)
    {
      v185 = v176;
    }

    __message_assert_336(v176, v177, v178, v179, v180, v181, v182, v183, "core-query.c", 5688, "q && q->type == 0x04 && q->qp && q->qp->string_buffer", v185);
    free(v184);
    if (__valid_fs(-1))
    {
      v186 = 2989;
    }

    else
    {
      v186 = 3072;
    }

    *v186 = -559038737;
    abort();
  }

  if ((*(v5 + 24) - 5) < 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v192 = v25;
  v26 = *v5;
  v210 = *v5 && *v26 == 42 && v26[1] == 42 && v26[2] == 0;
  v200 = *v24 == 42 && *(v24 + 1) != 0;
  v196 = *(v6 + 48);
  v212 = *(*(v6 + 40) + 8);
  v29 = strlen(v24);
  v30 = v29 >= 2 && *(v24 + v29 - 1) == 42 && *(v24 + v29 - 2) != 92;
  v189 = v174;
  *(v5 + 72) = 0;
  v199 = *(v5 + 32);
  *(v5 + 32) = v199 & 0xFFFFFFFFFEFFFFFBLL;
  bzero(&v233, 0x2000uLL);
  bzero(v232, 0x2000uLL);
  bzero(v231, 0x2000uLL);
  bzero(v230, 0x800uLL);
  v188 = v24;
  v31 = (v24 + v200);
  v32 = &v31[strlen(v31) - v30];
  if (v31 >= v32)
  {
    node_copy_factor_node_expanding_queryTerm = 0;
    goto LABEL_393;
  }

  v198 = v30;
  v191 = v4;
  v33 = 0;
  v34 = 0;
  LODWORD(v35) = -1;
  v203 = v31;
  do
  {
    v37 = *v31;
    if ((v37 & 0x80000000) != 0)
    {
      v38 = v37 >> 4;
      v39 = utf8_byte_length(unsigned char)::utf8_len_table[v38];
      v40 = ~v38;
      v41 = utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v39] & v37;
      if ((v40 & 0xC) != 0)
      {
        v37 &= utf8_to_code_point(unsigned char const*)::utf8_first_char_mask[v39];
      }

      else
      {
        if (v39 <= 2)
        {
          v39 = 2;
        }

        else
        {
          v39 = v39;
        }

        v42 = v39 - 1;
        v43 = (v31 + 1);
        do
        {
          v44 = *v43++;
          v37 = v44 & 0x3F | (v41 << 6);
          v41 = v37;
          --v42;
        }

        while (v42);
      }
    }

    if (!u_isUWhiteSpace(v37))
    {
      v45 = v31 - v203;
      v46 = v37 >> 8;
      v49 = v37 - 64000 < 0xFFFF3480 && v37 - 65456 < 0xFFFFFFB0 && v46 != 17;
      if (v33 & 1 | (v37 - 123 < 0xFFFFFFE6))
      {
        if (v46 < 0x11 || v49)
        {
          if ((v34 & 1) == 0)
          {
            v35 = v35 + 1;
            *(&v233 + v35) = v45;
            v232[v35] = 0;
            v231[v35] = 0;
            v230[v35] = 0;
            v34 = 1;
          }

          v50 = v230[v35];
          v230[v35] = v50 & 0xFC | 1;
          if ((v37 & 0xFFFFFF80) == 0xE00 && (v50 & 0x40) == 0)
          {
            v230[v35] = v50 & 0xBC | 0x41;
          }

          goto LABEL_107;
        }

        if ((v34 & 1) == 0 || (v55 = v35, v56 = v230[v35], (v56 & 3) != 0))
        {
          v56 = 0;
          v55 = v35 + 1;
          *(&v233 + v55) = v45;
          v232[v55] = 0;
          v231[v55] = 0;
          v230[v55] = 0;
          v34 = 1;
          LODWORD(v35) = v35 + 1;
        }

        if (v37 - 12352 > 0x5F)
        {
          if (v37 - 12448 > 0x5F)
          {
            if ((v37 & 0xFF00) != 0x1100)
            {
              if ((v56 & 0x10) == 0)
              {
                v230[v55] = v56 | 0x10;
              }

              goto LABEL_107;
            }

            if ((v56 & 0x20) == 0)
            {
              v57 = v56 | 0x20;
              goto LABEL_120;
            }
          }

          else if ((v56 & 8) == 0)
          {
            v57 = v56 | 8;
            goto LABEL_120;
          }
        }

        else if ((v56 & 4) == 0)
        {
          v57 = v56 | 4;
LABEL_120:
          v230[v55] = v57;
          v33 = 1;
          goto LABEL_107;
        }

        v33 = 1;
        goto LABEL_107;
      }

      if (v34)
      {
        v51 = v35;
        v52 = v230[v35];
        if (v52)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v52 = 0;
        v51 = v35 + 1;
        *(&v233 + v51) = v45;
        v232[v51] = 0;
        v231[v51] = 0;
        v230[v51] = 0;
        v34 = 1;
        LODWORD(v35) = v35 + 1;
      }

      if ((v52 & 0x3C) != 0)
      {
        v35 = v35 + 1;
        *(&v233 + v35) = v45;
        v232[v35] = 0;
        v231[v35] = 0;
        v53 = &v230[v35];
        v230[v35] = 0;
        v34 = 1;
        goto LABEL_105;
      }

LABEL_103:
      v53 = &v230[v51];
      if ((v52 & 0xFFFFFFFD) != 0)
      {
        v33 = 0;
        v54 = v52 | 1;
LABEL_106:
        *v53 = v54;
LABEL_107:
        v36 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v31 >> 4];
        v232[v35] += v36;
        ++v231[v35];
        goto LABEL_69;
      }

LABEL_105:
      v33 = 0;
      v54 = 2;
      goto LABEL_106;
    }

    if (v34)
    {
      v34 = 0;
    }

    v36 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v31 >> 4];
LABEL_69:
    v31 += v36;
  }

  while (v31 < v32);
  if ((v35 & 0x80000000) == 0)
  {
    v59 = 0;
    v190 = v33 ^ 1;
    v195 = *MEMORY[0x1E695E480];
    v193 = v35;
    v194 = *MEMORY[0x1E695E498];
    v197 = (v35 + 1);
    v60 = 0;
    v4 = v191;
    v61 = v198;
    v62 = v203;
    while (1)
    {
      v64 = v59 == 0;
      if (v61)
      {
        v65 = v59 == v193 || (v230[v59] & 0x3C) == 0;
      }

      else
      {
        v65 = 0;
      }

      v66 = v64 && v200;
      v67 = &v62[*(&v233 + v59)];
      __src = v67;
      v68 = v232[v59];
      v214 = v65;
      v213 = v64 && v200;
      if ((v199 >> 24) & 1 | v196 && (v230[v59] & 0x10) == 0)
      {
        node_copy_factor_node_expanding_queryTerm = 0;
        if ((v199 & 0x1000000) == 0)
        {
          goto LABEL_348;
        }

        goto LABEL_306;
      }

      v69 = CFStringCreateWithBytesNoCopy(v195, v67, v68, 0x8000100u, 0, v194);
      v70 = v69;
      v204 = v68;
      if (v196)
      {
        v207 = 0;
        v71 = 0;
        theArray = 0;
        v201 = 1;
      }

      else
      {
        CFStringGetLength(v69);
        v72 = _NLStringTokenizerCopyPossibleStringLanguages();
        if (v72)
        {
          theArray = v72;
          Count = CFArrayGetCount(v72);
          if (Count)
          {
            v71 = Count;
            v201 = 0;
            v207 = 1;
          }

          else
          {
            if ((v230[v59] & 0x40) == 0)
            {
              node_copy_factor_node_expanding_queryTerm = 0;
LABEL_304:
              CFRelease(theArray);
              goto LABEL_305;
            }

            v207 = 0;
            v71 = 0;
            v201 = 0;
          }
        }

        else
        {
          if ((v230[v59] & 0x40) == 0)
          {
            node_copy_factor_node_expanding_queryTerm = 0;
            goto LABEL_305;
          }

          v207 = 0;
          v71 = 0;
          theArray = 0;
          v201 = 1;
        }
      }

      *buf = 0;
      v225 = 0;
      v74 = OSAtomicDequeue(&stru_1EDD81160, 0);
      v202 = v60;
      if (v74)
      {
        v75 = v74[1];
        v74[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v74, 0);
      }

      else
      {
        v75 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v76);
      CIReleaseIndexingTokenizer(v75);
      v77 = HIDWORD(v225);
      icu_locale_release();
      v78 = *buf;
      v221 = *buf;
      v222 = v77;
      v219 = 0;
      v220 = 0;
      v217 = 0;
      v218 = 0;
      v215 = 0;
      v216 = 0;
      v206 = v70;
      v209 = *buf;
      if (!v71)
      {
        v205 = 0;
        v208 = 0;
        v87 = 0;
        v89 = 0;
        goto LABEL_226;
      }

      v79 = theArray;
      if (v71 == 1)
      {
        v205 = 0;
        v71 = 0;
        v87 = 0;
        v80 = 0;
        v88 = 0;
        goto LABEL_194;
      }

      v205 = 0;
      v80 = 0;
      v12 = v71 == 2;
      v71 = 0;
      if (!v12)
      {
        CFArrayGetValueAtIndex(theArray, 2);
        *buf = 0;
        v225 = 0;
        v81 = OSAtomicDequeue(&stru_1EDD81160, 0);
        if (v81)
        {
          v82 = v81[1];
          v81[1] = 0;
          OSAtomicEnqueue(&gIndexingTokenizerHeap, v81, 0);
        }

        else
        {
          v82 = CITokenizerCreate(3);
        }

        CITokenizerGetQueryTokensWithOptions(v83);
        CIReleaseIndexingTokenizer(v82);
        v71 = HIDWORD(v225);
        icu_locale_release();
        v80 = *buf;
        v205 = *buf;
        v215 = *buf;
        v216 = v71;
        if (v71 && v71 == v77)
        {
          v80 = *buf;
          if (v77 >= 1)
          {
            for (i = 0; i != v71; ++i)
            {
              if (strcmp(v205[i], v78[i]))
              {
                v71 = v77;
                goto LABEL_171;
              }
            }

            v85 = v205;
            do
            {
              v86 = *v85++;
              free(v86);
              --v71;
            }

            while (v71);
          }

          free(v205);
          v205 = 0;
          v71 = 0;
          v80 = 0;
          v215 = 0;
          LODWORD(v216) = 0;
        }

LABEL_171:
        v79 = theArray;
      }

      CFArrayGetValueAtIndex(v79, 1);
      *buf = 0;
      v225 = 0;
      v90 = OSAtomicDequeue(&stru_1EDD81160, 0);
      if (v90)
      {
        v91 = v90[1];
        v90[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v90, 0);
      }

      else
      {
        v91 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v92);
      CIReleaseIndexingTokenizer(v91);
      v87 = HIDWORD(v225);
      icu_locale_release();
      v88 = *buf;
      v217 = *buf;
      v218 = v87;
      if (v87)
      {
        if (v87 == v77)
        {
          v93 = v87;
          v94 = *buf;
          v95 = v209;
          if (v77 < 1)
          {
            goto LABEL_192;
          }

          while (!strcmp(*v94, *v95))
          {
            ++v95;
            ++v94;
            if (!--v93)
            {
              if (v87 >= 1)
              {
LABEL_187:
                v97 = v88;
                do
                {
                  v98 = *v97++;
                  free(v98);
                  --v87;
                }

                while (v87);
              }

              goto LABEL_192;
            }
          }
        }

        v71 = v216;
        if (v87 == v216)
        {
          if (v87 >= 1)
          {
            v96 = 0;
            while (!strcmp(v88[v96], v80[v96]))
            {
              if (v87 == ++v96)
              {
                v71 = v87;
                goto LABEL_187;
              }
            }

            v71 = v87;
            goto LABEL_193;
          }

          v71 = v87;
LABEL_192:
          free(v88);
          v87 = 0;
          v88 = 0;
          v217 = 0;
          LODWORD(v218) = 0;
        }
      }

      else
      {
        v87 = 0;
      }

LABEL_193:
      v79 = theArray;
LABEL_194:
      CFArrayGetValueAtIndex(v79, 0);
      *buf = 0;
      v225 = 0;
      v99 = OSAtomicDequeue(&stru_1EDD81160, 0);
      if (v99)
      {
        v100 = v99[1];
        v99[1] = 0;
        OSAtomicEnqueue(&gIndexingTokenizerHeap, v99, 0);
      }

      else
      {
        v100 = CITokenizerCreate(3);
      }

      CITokenizerGetQueryTokensWithOptions(v101);
      CIReleaseIndexingTokenizer(v100);
      v89 = HIDWORD(v225);
      icu_locale_release();
      v208 = *buf;
      v219 = *buf;
      v220 = v89;
      if (!v89)
      {
        v89 = 0;
LABEL_225:
        v65 = v214;
        v66 = v213;
        v78 = v209;
        goto LABEL_226;
      }

      if (v89 == v77)
      {
        v102 = v89;
        v103 = *buf;
        v104 = v209;
        if (v77 < 1)
        {
          v4 = v191;
          goto LABEL_221;
        }

        while (!strcmp(*v103, *v104))
        {
          ++v104;
          ++v103;
          if (!--v102)
          {
            v4 = v191;
LABEL_214:
            v66 = v213;
            v78 = v209;
            if (v89 >= 1)
            {
              v108 = v208;
              do
              {
                v109 = *v108++;
                free(v109);
                --v89;
              }

              while (v89);
            }

            goto LABEL_222;
          }
        }
      }

      v87 = v218;
      v4 = v191;
      if (v89 == v218)
      {
        v105 = v89;
        v106 = v208;
        if (v89 < 1)
        {
          v87 = v89;
          goto LABEL_221;
        }

        while (!strcmp(*v106, *v88))
        {
          ++v88;
          ++v106;
          if (!--v105)
          {
            v87 = v89;
            goto LABEL_214;
          }
        }
      }

      v71 = v216;
      if (v89 != v216)
      {
        goto LABEL_225;
      }

      if (v89 >= 1)
      {
        v107 = 0;
        while (!strcmp(v208[v107], v80[v107]))
        {
          if (v89 == ++v107)
          {
            v71 = v89;
            goto LABEL_214;
          }
        }

        v71 = v89;
        goto LABEL_225;
      }

      v71 = v89;
LABEL_221:
      v66 = v213;
      v78 = v209;
LABEL_222:
      free(v208);
      v208 = 0;
      v89 = 0;
      v219 = 0;
      LODWORD(v220) = 0;
      v65 = v214;
LABEL_226:
      node_copy_factor_node_expanding_queryTerm = _query_node_copy_factor_node_expanding_queryTerm(v4, &v221, v210, v66, v65, (v212 + 24));
      if (node_copy_factor_node_expanding_queryTerm)
      {
        if (v207)
        {
          if (v89)
          {
            v110 = _query_node_copy_factor_node_expanding_queryTerm(v4, &v219, v210, v213, v65, (v212 + 24));
            v111 = (*(v4 + 48) & 8) != 0 ? -1 : -5;
            v112 = (v111 + *(*(v4 + 16) + 24)) >= 2 ? 1 : 2;
            if (v110)
            {
              v113 = v110;
              v187 = v112;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v114 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v114 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v114[24] = v187;
              *v114 = node_copy_factor_node_expanding_queryTerm;
              *(v114 + 1) = v113;
              node_copy_factor_node_expanding_queryTerm = v114;
              v78 = v209;
            }
          }

          if (v87)
          {
            v115 = _query_node_copy_factor_node_expanding_queryTerm(v4, &v217, v210, v213, v65, (v212 + 24));
            v116 = (*(v4 + 48) & 8) != 0 ? -1 : -5;
            v117 = (v116 + *(*(v4 + 16) + 24)) >= 2 ? 1 : 2;
            if (v115)
            {
              v118 = v115;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v119 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v119 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v119[24] = v117;
              *v119 = node_copy_factor_node_expanding_queryTerm;
              *(v119 + 1) = v118;
              node_copy_factor_node_expanding_queryTerm = v119;
              v78 = v209;
            }
          }

          if (v71)
          {
            v120 = _query_node_copy_factor_node_expanding_queryTerm(v4, &v215, v210, v213, v65, (v212 + 24));
            v121 = (*(v4 + 48) & 8) != 0 ? -1 : -5;
            v122 = (v121 + *(*(v4 + 16) + 24)) >= 2 ? 1 : 2;
            if (v120)
            {
              v123 = v120;
              if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
              {
                ++sTotal_15332;
              }

              v124 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
              if (!v124 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
              }

              v124[24] = v122;
              *v124 = node_copy_factor_node_expanding_queryTerm;
              *(v124 + 1) = v123;
              node_copy_factor_node_expanding_queryTerm = v124;
              v78 = v209;
            }
          }
        }

        if ((v198 & (v65 ^ 1)) == 1 && (v199 & 0x800040) == 0x40)
        {
          v225 = 1;
          *buf = &__src;
          v125 = _query_node_copy_factor_node_expanding_queryTerm(v4, buf, 0, 0, 0, (v212 + 24));
          v126 = *(v125 + 2);
          if (v210)
          {
            free(*v126);
            v127 = malloc_type_zone_malloc(queryZone, 2uLL, 0xA4971684uLL);
            if (!v127 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *v229 = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v229, 2u);
            }

            *v127 = 42;
            v126 = *(v125 + 2);
            *v126 = v127;
          }

          *(v126 + 32) |= 0x4000uLL;
          if ((*(v4 + 48) & 8) != 0)
          {
            v128 = -1;
          }

          else
          {
            v128 = -5;
          }

          if ((v128 + *(*(v4 + 16) + 24)) >= 2)
          {
            v129 = 1;
          }

          else
          {
            v129 = 2;
          }

          if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
          {
            ++sTotal_15332;
          }

          v130 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
          if (!v130 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *v229 = 0;
            _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v229, 2u);
          }

          v130[24] = v129;
          *v130 = node_copy_factor_node_expanding_queryTerm;
          *(v130 + 1) = v125;
          node_copy_factor_node_expanding_queryTerm = v130;
          v78 = v209;
        }
      }

      if (v207)
      {
        if (v71 >= 1)
        {
          v131 = v205;
          do
          {
            v132 = *v131++;
            free(v132);
            --v71;
          }

          while (v71);
        }

        free(v205);
        v215 = 0;
        LODWORD(v216) = 0;
        v133 = v218;
        v134 = v217;
        if (v218 >= 1)
        {
          v135 = v217;
          do
          {
            v136 = *v135++;
            free(v136);
            --v133;
          }

          while (v133);
        }

        free(v134);
        if (v89 >= 1)
        {
          v137 = v208;
          do
          {
            v138 = *v137++;
            free(v138);
            --v89;
          }

          while (v89);
        }

        free(v208);
        v77 = v222;
        v78 = v221;
        v65 = v214;
      }

      if (v77 >= 1)
      {
        v139 = v78;
        do
        {
          v140 = *v139++;
          free(v140);
          --v77;
        }

        while (v77);
      }

      free(v78);
      v61 = v198;
      v60 = v202;
      v62 = v203;
      v68 = v204;
      v70 = v206;
      if ((v201 & 1) == 0)
      {
        goto LABEL_304;
      }

LABEL_305:
      CFRelease(v70);
      if ((v199 & 0x1000000) == 0)
      {
        goto LABEL_348;
      }

LABEL_306:
      if (v231[v59] < 2)
      {
        goto LABEL_348;
      }

      v141 = v230[v59];
      if (v59 == v193 && (v190 & (v141 == 2)) != 0)
      {
        v142 = 150994944;
      }

      else
      {
        if ((v141 & 0x3C) == 0 || (v141 & 8) != 0)
        {
LABEL_348:
          if (!node_copy_factor_node_expanding_queryTerm)
          {
            *buf = MEMORY[0x1E69E9820];
            v225 = 0x40000000;
            v226 = __db_query_tree_apply_block_block_invoke;
            v227 = &unk_1E8198ED0;
            v228 = &__block_literal_global_21_15415;
            db_query_tree_apply_block_with_meta(v4, buf, &__block_literal_global_25_15416);
            node_copy_factor_node_expanding_queryTerm = v155;
            if (v213)
            {
              v156 = 2;
            }

            else
            {
              v156 = 1;
            }

            v157 = malloc_type_zone_malloc(queryZone, v156 + v65 + v68, 0xA4971684uLL);
            if (!v157 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
            }

            *(*(node_copy_factor_node_expanding_queryTerm + 2) + 72) = v157;
            v158 = __src;
            if (v213 && *__src != 42)
            {
              *v157++ = 42;
              v158 = __src;
            }

            memcpy(v157, v158, v68);
            v159 = &v157[v68];
            if (v214 && *v159 != 42)
            {
              *v159++ = 42;
            }

            *v159 = 0;
            if (v210)
            {
              if ((*(v4 + 48) & 8) != 0)
              {
                v160 = -1;
              }

              else
              {
                v160 = -5;
              }

              if ((v160 + *(*(v4 + 16) + 24)) >= 2)
              {
                v161 = 1;
              }

              else
              {
                v161 = 2;
              }

              query_node_expand_double_star_in_place(node_copy_factor_node_expanding_queryTerm, v161);
              v154 = 2;
              goto LABEL_369;
            }
          }

LABEL_370:
          if (v60)
          {
            goto LABEL_371;
          }

          goto LABEL_129;
        }

        if ((v141 & 4) != 0)
        {
          v142 = 150994944;
        }

        else
        {
          v142 = 0x1000000;
        }
      }

      *buf = MEMORY[0x1E69E9820];
      v225 = 0x40000000;
      v226 = __db_query_tree_apply_block_block_invoke;
      v227 = &unk_1E8198ED0;
      v228 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(v4, buf, &__block_literal_global_25_15416);
      v144 = v143;
      *(*(v143 + 16) + 32) |= v142;
      if (v213)
      {
        v145 = 2;
      }

      else
      {
        v145 = 1;
      }

      v146 = malloc_type_zone_malloc(queryZone, v145 + v214 + v68, 0xA4971684uLL);
      if (!v146 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
      }

      *(*(v144 + 16) + 72) = v146;
      v147 = __src;
      if (v213 && *__src != 42)
      {
        *v146++ = 42;
        v147 = __src;
      }

      memcpy(v146, v147, v68);
      v148 = &v146[v68];
      if (v214 && *v148 != 42)
      {
        *v148++ = 42;
      }

      *v148 = 0;
      if (v210)
      {
        if ((*(v4 + 48) & 8) != 0)
        {
          v149 = -1;
        }

        else
        {
          v149 = -5;
        }

        if ((v149 + *(*(v4 + 16) + 24)) >= 2)
        {
          v150 = 1;
        }

        else
        {
          v150 = 2;
        }

        query_node_expand_double_star_in_place(v144, v150);
        *(v212 + 24) += 2;
      }

      if (node_copy_factor_node_expanding_queryTerm)
      {
        if ((*(v4 + 48) & 8) != 0)
        {
          v151 = -1;
        }

        else
        {
          v151 = -5;
        }

        if ((v151 + *(*(v4 + 16) + 24)) >= 2)
        {
          v152 = 1;
        }

        else
        {
          v152 = 2;
        }

        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal_15332;
        }

        v153 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v153 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v153[24] = v152;
        v154 = 1;
        *v153 = node_copy_factor_node_expanding_queryTerm;
        *(v153 + 1) = v144;
        node_copy_factor_node_expanding_queryTerm = v153;
LABEL_369:
        *(v212 + 24) += v154;
        goto LABEL_370;
      }

      node_copy_factor_node_expanding_queryTerm = v144;
      if (v60)
      {
LABEL_371:
        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal_15332;
        }

        v63 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        if (!v63 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
        }

        v63[24] = v192;
        *v63 = v60;
        *(v63 + 1) = node_copy_factor_node_expanding_queryTerm;
        ++*(v212 + 24);
        node_copy_factor_node_expanding_queryTerm = v63;
      }

LABEL_129:
      ++v59;
      v60 = node_copy_factor_node_expanding_queryTerm;
      if (v59 == v197)
      {
        goto LABEL_393;
      }
    }
  }

  node_copy_factor_node_expanding_queryTerm = 0;
  v4 = v191;
LABEL_393:
  v169 = *(v4 + 16);
  *(v169 + 72) = v188;
  *(v169 + 32) = v199 & 0xFFFFFFFFFEFFFFFBLL;
  if (node_copy_factor_node_expanding_queryTerm)
  {
    v170 = node_copy_factor_node_expanding_queryTerm;
  }

  else
  {
    v170 = v4;
  }

  if (v170 != v4)
  {
    v233 = MEMORY[0x1E69E9820];
    v234 = 0x40000000;
    v235 = __db_query_tree_apply_block_block_invoke;
    v236 = &unk_1E8198ED0;
    v237 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(v4, &v233, 0);
    v4 = v170;
    LODWORD(v174) = v189;
    goto LABEL_398;
  }

  if (v189)
  {
    goto LABEL_399;
  }

  return v4;
}

__CFString *shortened_client_key(__CFString *a1)
{
  if (!a1)
  {
    v1 = @"<null>";
    goto LABEL_7;
  }

  v1 = a1;
  if (!CFStringHasPrefix(a1, @"com.apple."))
  {
LABEL_7:
    CFRetain(v1);
    return v1;
  }

  v3.length = CFStringGetLength(v1) - 10;
  v2 = *MEMORY[0x1E695E480];
  v3.location = 10;

  return CFStringCreateWithSubstring(v2, v1, v3);
}

void decorateExpandingFunctions(void *a1, uint64_t a2, const void *a3, double a4)
{
  v8 = si_calendar_retain();
  if (a3)
  {
    v9 = CFEqual(a3, @"com.apple.finder") != 0;
  }

  else
  {
    v9 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __decorateExpandingFunctions_block_invoke;
  v10[3] = &__block_descriptor_tmp_117_9701;
  v10[4] = v8;
  *&v10[5] = a4;
  v10[6] = a2;
  v11 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __db_query_tree_apply_block_block_invoke;
  v12[3] = &unk_1E8198ED0;
  v12[4] = v10;
  db_query_tree_apply_block_with_meta(a1, v12, 0);
  if (v8)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v8, 0);
  }
}

BOOL db_sanitize_query_tree(uint64_t *a1, char a2, char a3, double a4)
{
  v5 = *a1;
  v18 = 0;
  v19 = &v18;
  v21 = 0;
  v20 = 0x2000000000;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __db_sanitize_query_tree_block_invoke;
  v12[3] = &unk_1E81990A8;
  v12[4] = &v14;
  v13 = a2;
  *&v12[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __db_sanitize_query_tree_block_invoke_2;
  v10[3] = &unk_1E81990D0;
  v10[4] = v12;
  v10[5] = &v18;
  v11 = a3;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __db_query_tree_apply_block_block_invoke;
  v22[3] = &unk_1E8198ED0;
  v22[4] = v10;
  db_query_tree_apply_block_with_meta(v5, v22, &__block_literal_global_51_15523);
  *a1 = v6;
  v7 = v15[3];
  if (v7)
  {
    OSAtomicEnqueue(&s_si_calendar_head, v7, 0);
  }

  v8 = *(v19 + 6) < 2049;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v8;
}

uint64_t _expandFunctions(uint64_t a1, char *a2, size_t a3, uint64_t a4, uint64_t a5, CFAbsoluteTime a6)
{
  v129 = *MEMORY[0x1E69E9840];
  v123 = 0.0;
  *a2 = 0;
  if (strncmp(a1, "time.", 5uLL))
  {
LABEL_2:
    *a2 = 36;
    strlcat(a2, a1, a3);
    return 0;
  }

  if (!strncmp((a1 + 5), "absolute(", 9uLL))
  {
    *at = a1 + 14;
    v123 = strtod((a1 + 14), at);
    if (*at == a1 + 14)
    {
      goto LABEL_76;
    }

    goto LABEL_204;
  }

  if (!strncmp((a1 + 5), "iso(", 4uLL))
  {
    v15 = 0;
    v16 = (a1 + 9);
    v17 = a1 + 8;
    while (v16[v15] && v16[v15] != 41)
    {
      ++v15;
    }

    v18 = v15 + 9;
    if ((v15 + 9) >= 0xA)
    {
      v19 = v15;
      while (1)
      {
        v20 = *v16;
        v21 = v20 > 0x20;
        v22 = (1 << v20) & 0x100000600;
        if (v21 || v22 == 0)
        {
          break;
        }

        ++v16;
        if (!--v19)
        {
          goto LABEL_76;
        }
      }
    }

    v28 = a1 + v18;
    if (v16 == (a1 + v18))
    {
      goto LABEL_76;
    }

    v29 = *v16;
    if (v29 == 39)
    {
      v30 = v16 + 1;
      v31 = v16 + 1;
      if ((v16 + 1) < v28)
      {
        v33 = v17 - v16 + v15;
        v31 = v30;
        while (*v31 != 39)
        {
          ++v31;
          if (!--v33)
          {
LABEL_50:
            v31 = v28;
            break;
          }
        }
      }
    }

    else
    {
      if (v29 != 34)
      {
        v34 = v28 - v16;
        v30 = v16;
        goto LABEL_54;
      }

      v30 = v16 + 1;
      v31 = v16 + 1;
      if ((v16 + 1) < v28)
      {
        v32 = v17 - v16 + v15;
        v31 = v30;
        while (*v31 != 34)
        {
          ++v31;
          if (!--v32)
          {
            goto LABEL_50;
          }
        }
      }
    }

    if (v31 == v28)
    {
      goto LABEL_76;
    }

    v34 = v31 - v30;
LABEL_54:
    if (!v34)
    {
      goto LABEL_76;
    }

    v35 = &v30[v34];
    if (v34 < 1)
    {
      v45 = 0;
      v43 = v30;
    }

    else
    {
      v36 = *v30;
      v37 = v36 - 48;
      v38 = 10 * v36 - 480;
      if (v37 >= 0xA)
      {
        v38 = 0;
      }

      v39 = v30[1] - 48;
      if (v39 >= 0xA)
      {
        v39 = 0;
      }

      v40 = v38 + v39;
      v41 = v30[2] - 48;
      if (v41 >= 0xA)
      {
        v41 = 0;
      }

      v42 = v41 + 10 * v40;
      v43 = v30 + 4;
      v44 = v30[3] - 48;
      if (v44 >= 0xA)
      {
        v44 = 0;
      }

      v45 = v44 + 10 * v42;
    }

    if (v43 < v35 && *v43 == 45)
    {
      ++v43;
    }

    if (v43 >= v35)
    {
      v62 = 0;
    }

    else
    {
      v57 = *v43;
      v58 = v57 - 48;
      v59 = 10 * v57 + 32;
      if (v58 >= 0xA)
      {
        v59 = 0;
      }

      v60 = v43[1];
      v43 += 2;
      v61 = v60 - 48;
      if (v61 >= 0xA)
      {
        LOBYTE(v61) = 0;
      }

      v62 = (v61 + v59);
    }

    if (v43 < v35 && *v43 == 45)
    {
      ++v43;
    }

    if (v43 >= v35)
    {
      v68 = 0;
    }

    else
    {
      v63 = *v43;
      v64 = v63 - 48;
      v65 = 10 * v63 + 32;
      if (v64 >= 0xA)
      {
        v65 = 0;
      }

      v66 = v43[1];
      v43 += 2;
      v67 = v66 - 48;
      if (v67 >= 0xA)
      {
        LOBYTE(v67) = 0;
      }

      v68 = (v67 + v65);
    }

    v69 = 0.0;
    if (v43 >= v35)
    {
      v70 = 0;
      v78 = 0;
      v79 = 0;
      v73 = 0;
      goto LABEL_199;
    }

    v70 = 0;
    v72 = (v43 + 1);
    v71 = *v43;
    v73 = v71 == 90;
    if ((v71 - 32) > 0x3A || ((1 << (v71 - 32)) & 0x410000000000001) == 0)
    {
      v78 = 0;
      v79 = 0;
      v73 = 0;
      goto LABEL_199;
    }

    if (v72 >= v35)
    {
      v70 = 0;
    }

    else
    {
      v74 = v43[1];
      v75 = v74 - 48;
      v76 = 10 * v74 + 32;
      if (v75 >= 0xA)
      {
        v76 = 0;
      }

      v72 = (v43 + 3);
      v77 = v43[2] - 48;
      if (v77 >= 0xA)
      {
        LOBYTE(v77) = 0;
      }

      v70 = v77 + v76;
    }

    if (v72 < v35)
    {
      v82 = (v72 + 1);
      if (*v72 == 58)
      {
        if (v82 >= v35)
        {
          v78 = 0;
        }

        else
        {
          v83 = *(v72 + 1);
          v84 = v83 - 48;
          v85 = 10 * v83 + 32;
          if (v84 >= 0xA)
          {
            v85 = 0;
          }

          v82 = (v72 + 3);
          v86 = *(v72 + 2) - 48;
          if (v86 >= 0xA)
          {
            LOBYTE(v86) = 0;
          }

          v78 = v86 + v85;
        }

        if (v82 < v35)
        {
          v72 = (v82 + 1);
          if (*v82 == 58)
          {
            v88 = v82[1];
            v89 = v88 - 48;
            v90 = 10 * v88 + 32;
            if (v89 >= 0xA)
            {
              v90 = 0;
            }

            v72 = (v82 + 3);
            v91 = v82[2] - 48;
            if (v91 >= 0xA)
            {
              LOBYTE(v91) = 0;
            }

            v79 = v91 + v90;
            goto LABEL_154;
          }

          goto LABEL_130;
        }
      }

      else
      {
        v78 = 0;
      }

      v79 = 0;
      v72 = v82;
      goto LABEL_154;
    }

    v78 = 0;
LABEL_130:
    v79 = 0;
LABEL_154:
    if (v72 >= v35)
    {
      v95 = 0;
    }

    else if (*v72 == 32)
    {
      v92 = &v30[v34];
      v93 = &v92[~v72];
      while (v93)
      {
        v94 = *++v72;
        --v93;
        if (v94 != 32)
        {
          goto LABEL_163;
        }
      }

      v72 = v92;
LABEL_163:
      v95 = v72 < v35;
    }

    else
    {
      v95 = 1;
    }

    if (v71 != 84)
    {
      v95 = 0;
    }

    if (v71 == 32 || v95)
    {
      v96 = (v72 + 1);
      v97 = *v72;
      v73 = v97 == 90;
      if (v97 != 90)
      {
        v96 = v72;
      }

      v98 = *v96;
      if (v98 == 45)
      {
        v99 = v96 + 1;
      }

      else
      {
        v99 = v96;
      }

      if (v98 == 43)
      {
        v100 = v96 + 1;
      }

      else
      {
        v100 = v99;
      }

      v101 = v98 != 43 && v98 == 45;
      if (v100 < v35)
      {
        v102 = *v100;
        v103 = v102 - 48;
        v104 = 10 * v102 + 32;
        if (v103 >= 0xA)
        {
          v104 = 0;
        }

        v105 = v100 + 2;
        v106 = v100[1] - 48;
        if (v106 >= 0xA)
        {
          LOBYTE(v106) = 0;
        }

        v107 = v106 + v104;
        if (v105 < v35 && *v105 == 58)
        {
          v108 = v100[3];
          v109 = v108 - 48;
          v110 = 10 * v108 + 32;
          if (v109 >= 0xA)
          {
            v110 = 0;
          }

          v111 = v100[4] - 48;
          if (v111 >= 0xA)
          {
            LOBYTE(v111) = 0;
          }

          v112 = (v111 + v110);
        }

        else
        {
          v112 = 0;
        }

        v113 = !v101;
        if (v101)
        {
          v114 = 3600;
        }

        else
        {
          v114 = -3600;
        }

        if (v113)
        {
          v115 = -60;
        }

        else
        {
          v115 = 60;
        }

        v69 = (v114 * v107 + v112 * v115);
        v73 = 1;
      }
    }

LABEL_199:
    *at = 0;
    if (a4)
    {
      v116 = *(a4 + 8 * v73 + 8);
    }

    else
    {
      v116 = 0;
    }

    if (CFCalendarComposeAbsoluteTime(v116, at, "yMdHms", v45, v62, v68, v70, v78, v79))
    {
      v123 = v69 + *at;
      goto LABEL_204;
    }

LABEL_76:
    if (*a2)
    {
      return 0;
    }

    goto LABEL_2;
  }

  v121 = 0;
  v122 = 0;
  v120 = 0;
  *at = a6;
  pthread_mutex_lock(&_expandFunctions_expand_mutex);
  if (_expandFunctions_once != -1)
  {
    dispatch_once(&_expandFunctions_once, &__block_literal_global_15_5392);
  }

  if (!CFCalendarDecomposeAbsoluteTime(_expandFunctions_calendar, a6, "yMdHms", &v121, &v120 + 4, &v120, &v122 + 4, &v122, &v121 + 4))
  {
    goto LABEL_72;
  }

  if (*(a1 + 5) != 110 || *(a1 + 6) != 111 || *(a1 + 7) != 119)
  {
    if (!strncmp((a1 + 5), "today", 5uLL))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v13 = (a1 + 10);
      v122 = 0;
      HIDWORD(v121) = 0;
      v14 = 100;
      v27 = v120;
      goto LABEL_67;
    }

    if (!strncmp((a1 + 5), "yesterday", 9uLL))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v13 = (a1 + 14);
      v122 = 0;
      HIDWORD(v121) = 0;
      v27 = (v120 - 1);
    }

    else if (!strncmp((a1 + 5), "two_days_ago", 0xCuLL))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v13 = (a1 + 17);
      v122 = 0;
      HIDWORD(v121) = 0;
      v27 = (v120 - 2);
    }

    else
    {
      if (strncmp((a1 + 5), "three_days_ago", 0xEuLL))
      {
        if (!strncmp((a1 + 5), "this_week", 9uLL))
        {
          v13 = (a1 + 14);
          v122 = 0;
          HIDWORD(v121) = 0;
          OrdinalityOfUnit = CFCalendarGetOrdinalityOfUnit(_expandFunctions_calendar, 0x10uLL, 0x1000uLL, a6);
          v27 = (v120 - OrdinalityOfUnit + 1);
          LODWORD(v120) = v120 - OrdinalityOfUnit + 1;
          v25 = v122;
          v26 = HIDWORD(v122);
          v14 = 119;
          v24 = HIDWORD(v121);
        }

        else if (!strncmp((a1 + 5), "this_month", 0xAuLL))
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v13 = (a1 + 15);
          v122 = 0;
          HIDWORD(v121) = 0;
          v27 = 1;
          LODWORD(v120) = 1;
          v14 = 77;
        }

        else
        {
          if (strncmp((a1 + 5), "this_year", 9uLL))
          {
            goto LABEL_72;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v122 = 0;
          v13 = (a1 + 14);
          HIDWORD(v121) = 0;
          v27 = 1;
          v120 = 0x100000001;
          v14 = 89;
        }

LABEL_67:
        if (CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, at, "yMdHms", v121, HIDWORD(v120), v27, v26, v25, v24))
        {
          goto LABEL_68;
        }

LABEL_72:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
LABEL_73:
        v49 = *__error();
        v50 = _SILogForLogForCategory(1);
        v51 = dword_1EBF46AD0 < 3;
        if (os_log_type_enabled(v50, (dword_1EBF46AD0 < 3)))
        {
          *at = 136315138;
          *&at[4] = a1;
          _os_log_impl(&dword_1C278D000, v50, v51, "*warn* failed to parse %s", at, 0xCu);
        }

        *__error() = v49;
        goto LABEL_76;
      }

      v24 = 0;
      v25 = 0;
      v26 = 0;
      v13 = (a1 + 19);
      v122 = 0;
      HIDWORD(v121) = 0;
      v27 = (v120 - 3);
    }

    LODWORD(v120) = v27;
    v14 = 100;
    goto LABEL_67;
  }

  v13 = (a1 + 8);
  v14 = 115;
LABEL_68:
  if (*v13 == 40)
  {
    v47 = v13[1];
    v46 = v13 + 1;
    if (v47 != 41)
    {
      v119 = v46;
      v52 = strtod(v46, &v119);
      if (v119 == v46)
      {
LABEL_143:
        pthread_mutex_unlock(&_expandFunctions_expand_mutex);
        goto LABEL_204;
      }

      v53 = v52;
      v54 = parseTimeUnit(&v119, v14);
      if (v54 <= 103)
      {
        if (v54 == 77)
        {
          HIDWORD(v120) += v53;
          goto LABEL_70;
        }

        if (v54 == 89)
        {
          LODWORD(v121) = v121 + v53;
          goto LABEL_70;
        }

        if (v54 != 100)
        {
          goto LABEL_70;
        }

        v55 = *at;
        v81 = 86400;
      }

      else if (v54 > 114)
      {
        if (v54 != 119)
        {
          if (v54 != 115)
          {
            goto LABEL_70;
          }

          v55 = *at;
          v87 = v53;
          goto LABEL_142;
        }

        v55 = *at;
        v81 = 604800;
      }

      else
      {
        if (v54 != 104)
        {
          if (v54 != 109)
          {
            goto LABEL_70;
          }

          v55 = *at;
          v56 = 60 * v53;
          goto LABEL_141;
        }

        v55 = *at;
        v81 = 3600;
      }

      v56 = v53 * v81;
LABEL_141:
      v87 = v56;
LABEL_142:
      v123 = v55 + v87;
      goto LABEL_143;
    }
  }

LABEL_70:
  v48 = CFCalendarComposeAbsoluteTime(_expandFunctions_calendar, &v123, "yMdHms", v121, HIDWORD(v120), v120, HIDWORD(v122), v122, HIDWORD(v121));
  pthread_mutex_unlock(&_expandFunctions_expand_mutex);
  if (!v48)
  {
    goto LABEL_73;
  }

LABEL_204:
  (*(a5 + 16))(a5, a2, a3, v123);
  if (dword_1EBF46AD0 >= 5)
  {
    v117 = *__error();
    v118 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      *at = 134218498;
      *&at[4] = v123;
      v125 = 2080;
      v126 = a2;
      v127 = 2080;
      v128 = a1;
      _os_log_impl(&dword_1C278D000, v118, OS_LOG_TYPE_DEFAULT, "Computed time (%lld) %s from %s", at, 0x20u);
    }

    *__error() = v117;
  }

  return 0x10000;
}

unint64_t popSkipCrashState()
{
  result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
  if (result && result <= 0x800)
  {
    v1 = &threadData[9 * result];
    v2 = *(v1 - 12);
    if (v2)
    {
      *(v1 - 12) = v2 - 1;
    }
  }

  return result;
}

void si_enqueue_work_with_qos(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v6 = 0;
      if (a2)
      {
LABEL_5:
        v7 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[5] = a1;
        block[6] = a3;
        block[2] = __si_enqueue_work_with_qos_block_invoke;
        block[3] = &__block_descriptor_tmp_1;
        block[4] = v6;
        v9 = a2;
        block[7] = a4;
        dispatch_sync(v7, block);
        return;
      }
    }

    a2 = *(a1 + 24);
    goto LABEL_5;
  }

  a3(a4, 1);
}

void si_enqueue_work_inner_with_qos(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (!a2)
  {
    v17 = __si_assert_copy_extra_661(-1);
    v18 = v17;
    v19 = "";
    if (v17)
    {
      v19 = v17;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIScheduler.c", 707, "queue", v19);
    free(v18);
    if (__valid_fs(-1))
    {
      v20 = 2989;
    }

    else
    {
      v20 = 3072;
    }

    *v20 = -559038737;
    abort();
  }

  if (!a1 || (v7 = a3, (v9 = *a2) != 0) && (*(v9 + 104) || *(v9 + 64) == 1))
  {

    a4(a5, 1, a3);
  }

  else
  {
    atomic_fetch_add_explicit((a1 + 132), 1u, memory_order_relaxed);
    v10 = a2[2];
    *(a2 + 7) = vaddq_s64(*(a2 + 7), vdupq_n_s64(1uLL));
    v11 = malloc_type_malloc(0x48uLL, 0x10A0040047F2C8DuLL);
    v11[4] = a5;
    v11[5] = 0;
    v11[6] = 0;
    v11[7] = a5 ^ a4;
    *v11 = a1;
    v11[1] = v9;
    v11[2] = a2;
    v11[3] = a4;
    v12 = *(a1 + 136) == 1 && (a2[7] & 0xF) == 0;
    *(v11 + 64) = v12;
    if (v7 <= QOS_CLASS_USER_INITIATED)
    {
      v13 = 25;
    }

    else
    {
      v13 = v7;
    }

    if (gTurboMode == 1)
    {
      v7 = v13;
    }

    if (*(v9 + 192) && *(v9 + 216) < v7)
    {
      pthread_mutex_lock(*(v9 + 8));
      v14 = *(v9 + 192);
      if (v14)
      {
        if (*(v9 + 216) < v7)
        {
          v15 = *(v9 + 208);
          *(v9 + 208) = pthread_override_qos_class_start_np(v14, v7, 0);
          *(v9 + 216) = v7;
          if (v15)
          {
            pthread_override_qos_class_end_np(v15);
          }
        }
      }

      pthread_mutex_unlock(*(v9 + 8));
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __enqueue_work_with_qos_block_invoke;
    block[3] = &__block_descriptor_tmp_58;
    block[4] = v11;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
    dispatch_async(v10, v16);
    _Block_release(v16);
  }
}

uint64_t __db_optimize_query_tree_block_invoke_2(int32x2_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  v6 = *(a3 + 48);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (a4 && (v7 = *(a4 + 48), v7 != 16))
      {
        if (!a5 || (v8 = *(a5 + 48), v8 == 16))
        {
          *a3 = 0;
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          v12 = a4;
          db_query_tree_apply_block_with_meta(a3, &v38, 0);
          return v12;
        }
      }

      else
      {
        if (!a5 || (v8 = *(a5 + 48), v8 == 16))
        {
          *(a3 + 48) = 16;
          if (a4)
          {
            v38 = MEMORY[0x1E69E9820];
            v39 = 0x40000000;
            v40 = __db_query_tree_apply_block_block_invoke;
            v41 = &unk_1E8198ED0;
            v42 = &__block_literal_global_174;
            db_query_tree_apply_block_with_meta(a4, &v38, 0);
            *a3 = 0;
            a5 = *(a3 + 8);
          }

          if (!a5)
          {
            return a3;
          }

LABEL_19:
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          db_query_tree_apply_block_with_meta(a5, &v38, 0);
          *(a3 + 8) = 0;
          return a3;
        }

        if (!a4 || (v7 = *(a4 + 48), v7 == 16))
        {
          *(a3 + 8) = 0;
          v38 = MEMORY[0x1E69E9820];
          v39 = 0x40000000;
          v40 = __db_query_tree_apply_block_block_invoke;
          v41 = &unk_1E8198ED0;
          v42 = &__block_literal_global_174;
          v13 = a5;
          db_query_tree_apply_block_with_meta(a3, &v38, 0);
          return v13;
        }
      }

      if (v7 == 32 && ((v14 = *(a4 + 16)) != 0 ? (v15 = (v14 + 52)) : (v15 = (a4 + 72)), v16 = *v15, v17 = a5, v18 = a4, node_max_bias(a5), a4 = v18, a5 = v17, v16 >= v19) || v8 == 32 && ((v20 = *(a5 + 16)) != 0 ? (v21 = (v20 + 52)) : (v21 = (a5 + 72)), v16 = *v21, node_max_bias(a4), v16 >= v22))
      {
        *(a3 + 48) = 32;
        *(a3 + 72) = v16;
        cleanup_children(a3);
        return a3;
      }
    }

    return a3;
  }

  if (!a4 || !a5)
  {
    *(a3 + 48) = 16;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v9 = *(a4 + 48);
  if (v9 == 16 || (v10 = *(a5 + 48), v10 == 16))
  {
    *(a3 + 48) = 16;
LABEL_17:
    v38 = MEMORY[0x1E69E9820];
    v39 = 0x40000000;
    v40 = __db_query_tree_apply_block_block_invoke;
    v41 = &unk_1E8198ED0;
    v42 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a4, &v38, 0);
    *a3 = 0;
    a5 = *(a3 + 8);
LABEL_18:
    if (a5)
    {
      goto LABEL_19;
    }

    return a3;
  }

  if (v9 == 32 && v10 == 32)
  {
    v23 = *(a4 + 16);
    if (v23)
    {
      v24 = (v23 + 52);
    }

    else
    {
      v24 = (a4 + 72);
    }

    v25 = *v24 + *(a3 + 72);
    v26 = *(a5 + 16);
    if (v26)
    {
      v27 = (v26 + 52);
    }

    else
    {
      v27 = (a5 + 72);
    }

    v28 = v25 + *v27;
    *(a3 + 48) = 32;
    v38 = MEMORY[0x1E69E9820];
    v39 = 0x40000000;
    v40 = __db_query_tree_apply_block_block_invoke;
    v41 = &unk_1E8198ED0;
    v42 = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a4, &v38, 0);
    *a3 = 0;
    v29 = *(a3 + 8);
    if (v29)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = __db_query_tree_apply_block_block_invoke;
      v41 = &unk_1E8198ED0;
      v42 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v29, &v38, 0);
      *(a3 + 8) = 0;
    }

    *(a3 + 72) = v28;
    return a3;
  }

  else
  {
    if (v9 == 32)
    {
      v30 = a5;
      v31 = *(a4 + 16);
      if (v31)
      {
        v32 = (v31 + 52);
      }

      else
      {
        v32 = (a4 + 72);
      }

      *a1.i32 = *v32 + *(a3 + 72);
      v37 = a1;
      *(a3 + 8) = 0;
    }

    else
    {
      if (v10 != 32)
      {
        return a3;
      }

      v30 = a4;
      v33 = *(a5 + 16);
      if (v33)
      {
        v34 = (v33 + 52);
      }

      else
      {
        v34 = (a5 + 72);
      }

      *a1.i32 = *v34 + *(a3 + 72);
      v37 = a1;
      *a3 = 0;
    }

    db_free_query_node(a3);
    if (*v37.i32 == 0.0)
    {
      return v30;
    }

    else
    {
      result = v30;
      v35 = *(v30 + 16);
      if (v35)
      {
        *(v35 + 52) = vadd_f32(*(v35 + 52), vdup_lane_s32(v37, 0));
      }

      else
      {
        v36 = *(v30 + 72);
        if (v36 == 0.0)
        {
          *(v30 + 72) = v37.i32[0];
        }

        else
        {
          *(v30 + 72) = v36 + *v37.i32;
        }
      }
    }
  }

  return result;
}

void finishRegisterQuery(uint64_t **a1, int a2)
{
  v2 = a1;
  v326 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  v9 = v7;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = Current - *(v5 + 3);
  v12 = 0x1EBF46000uLL;
  if (dword_1EBF46AD0 >= 5)
  {
    v267 = v4;
    v210 = *__error();
    v211 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *&buf[14] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v211, OS_LOG_TYPE_DEFAULT, "Search waited %f seconds on the scheduler at qos 0x%x", buf, 0x12u);
    }

    *__error() = v210;
    v4 = v267;
  }

  v13 = v5;
  v14 = v6;
  v15 = v4;
  *(v7 + 448) = *(v7 + 448) + v11;
  if (a2 || *(v4 + 9))
  {
    v16 = v13[4];
    if (v16)
    {
      v17 = v13;
      CFRelease(v16);
      v13 = v17;
    }

    free(v13);
    goto LABEL_7;
  }

  v266 = v4;
  if (isAppleInternalInstall_onceToken != -1)
  {
    v246 = v13;
    dispatch_once(&isAppleInternalInstall_onceToken, &__block_literal_global_2134);
    v13 = v246;
  }

  v265 = v8;
  if (isAppleInternalInstall_isInternalInstall == 1)
  {
    v19 = v13;
    v20 = fopen("/private/var/mobile/spotlightPrioritySleepEnabled", "r");
    if (v20)
    {
      v21 = v14;
      v22 = v20;
      *&v314 = 0;
      v23 = fscanf(v20, "%lf", &v314);
      fclose(v22);
      bzero(buf, 0x400uLL);
      fcntl(*(v265 + 32), 50, buf);
      v24 = strstr(buf, "Priority");
      if (v23 == 1 && !v24)
      {
        v25 = *(v7 + 656);
        if (!v25 || CFStringCompare(@"com.apple.spotlight", v25, 1uLL) == kCFCompareEqualTo)
        {
          v26 = *__error();
          v27 = _SILogForLogForCategory(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *v321 = 136315906;
            *&v321[4] = "sleepForPriorityIndex";
            *&v321[12] = 1024;
            *&v321[14] = 21576;
            *&v321[18] = 2048;
            *&v321[20] = v314;
            *&v321[28] = 2080;
            *&v321[30] = buf;
            _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: Sleeping %lf seconds for non-priority dataclass %s", v321, 0x26u);
          }

          for (*__error() = v26; *&v314 > 0.0; *&v314 = *&v314 + -0.100000001)
          {
            if (*(v15 + 36))
            {
              break;
            }

            usleep(0x186A0u);
          }
        }
      }

      v14 = v21;
    }

    v13 = v19;
  }

  v280 = 0;
  v279 = 0;
  v278 = 0;
  v262 = v13;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v28 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*v13 + 1192), 0x40000000, add_explicit + 1);
  v280 = v28;
  v279 = __PAIR64__(HIDWORD(v28), v29);
  v278 = v30;
  v31 = threadData[9 * v28 + 1] + 320 * HIDWORD(v28);
  *(v31 + 216) = 0;
  v32 = *(v31 + 312);
  v33 = *(v31 + 224);
  if (v33)
  {
    v33(*(v31 + 288));
  }

  v277 = v280;
  v276 = HIDWORD(v279);
  v275 = __PAIR64__(v279, v278);
  if (_setjmp(v31))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v31 + 312) = v32;
    CIOnThreadCleanUpReset(v275);
    dropThreadId(v277, 1, add_explicit + 1);
    CICleanUpReset(v277, HIDWORD(v275));
    goto LABEL_7;
  }

  v271 = v7;
  v272 = v2;
  v270 = v7;
  v263 = v32;
  if (dword_1EBF46AD0 >= 5)
  {
    v247 = *__error();
    v248 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
    {
      v249 = *(v7 + 8);
      *buf = 138412290;
      *&buf[4] = v249;
      _os_log_impl(&dword_1C278D000, v248, OS_LOG_TYPE_DEFAULT, "finishRegisterQuery %@", buf, 0xCu);
    }

    *__error() = v247;
    v12 = 0x1EBF46000;
  }

  v34 = *(v7 + 80);
  v35 = v262;
  if ((*(v7 + 201) & 4) != 0)
  {
    if (v34)
    {
      v37 = *(v7 + 72);
      if (v37)
      {
        v38 = makeAndNode(v34, v37, 0, 1);
      }

      else
      {
        db_clone_query_node(v34);
      }

      *(v7 + 72) = v38;
      v35 = v262;
    }
  }

  else if (v34)
  {
    v36 = *(v7 + 72);
    if (v36)
    {
      v34 = makeAndNode(v34, v36, 1, 1);
      v35 = v262;
    }

    *(v7 + 72) = v34;
    *(v7 + 80) = 0;
  }

  v40 = *v35;
  v39 = v35[1];
  if (*(*v35 + 2072) == 1)
  {
    decorateExpandingFunctions(*(v39 + 72), *v39, *(v39 + 656), *(v39 + 360));
  }

  bzero(buf, 0x400uLL);
  v41 = *(v40 + 1416);
  if (v41 && !*(v41 + 240))
  {
    v42 = (*(v41 + 40))(v41, 2, buf, 0, 0, 0, 0, -1);
  }

  else
  {
    v42 = 0;
  }

  processScopeTerms(v40, v42, *(v40 + 1992), *(v39 + 72), "_kMDQueryScope");
  pushSkipCrashState();
  v274 = 0;
  memset(v273, 0, sizeof(v273));
  si_opt_cache_init(v273, *(v14 + 88));
  if (*(v7 + 696))
  {
    clear_lifting_rules(v7);
  }

  else
  {
    si_query_prepare_lifting(v265, v7, v273);
  }

  v268 = v14;
  v269 = v15;
  if (*(v7 + 672) == 1)
  {
    v43 = *(v265 + 60);
    if (v43 == 1)
    {
      v44 = "cs_priority";
    }

    else if (v43 == 3)
    {
      v44 = "cs_mail";
    }

    else
    {
      if (v43)
      {
        v45 = 2;
      }

      else
      {
        v45 = (v43 >> 1) - 1;
      }

      if (v45 >= 7)
      {
        v44 = "cs_default";
      }

      else
      {
        v44 = off_1E8196C28[v45];
      }
    }

    v46 = *(v265 + 2072);
    v257 = *(v9 + 608);
    v47 = *(v9 + 96);
    v48 = *(v9 + 32);
    v49 = *(v9 + 744);
    v50 = *(v9 + 704);
    v51 = *(v9 + 736);
    Count = *(v9 + 728);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    v256 = Count;
    v53 = *(v9 + 152) == 0;
    v258 = *(v9 + 656);
    theArray = *(v9 + 680);
    v55 = *(v9 + 712);
    v56 = *(v9 + 720);
    memset(&v281, 0, sizeof(v281));
    configureContext(&v281, v257, v46, v53, v44, v50, v56, v258, theArray);
    v253 = v44;
    if (!v281.var3)
    {
      v69 = *__error();
      v70 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v257;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_ERROR, "[qid=%lld][%s][POMMES][Generic] Failed to generate a POMMES query tree due to none bundleIDType", buf, 0x16u);
      }

      v71 = 0;
      v72 = 0;
      *__error() = v69;
      v73 = 0;
      v64 = v258;
      goto LABEL_91;
    }

    v254 = v48;
    v255 = v47;
    processContext(v55, &v281);
    v252 = *(&v281 + 7);
    v325 = 0;
    v323 = 0u;
    v324 = 0u;
    v322 = 0u;
    memset(v321, 0, sizeof(v321));
    stringForPRBundleIDType(v281.var3, v321);
    v320 = 0;
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v315 = 0u;
    v314 = 0u;
    stringForPRBundleIDType(v281.var4, &v314);
    v57 = *__error();
    v58 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134223106;
      *&buf[4] = v281.var0;
      *&buf[12] = 2080;
      *&buf[14] = v281.var1;
      *&buf[22] = 2080;
      v283 = v321;
      *v284 = 2080;
      *&v284[2] = &v314;
      *&v284[10] = 1024;
      *&v284[12] = *(&v281 + 28) & 1;
      *&v284[16] = 1024;
      *&v284[18] = (*(&v281 + 7) >> 2) & 1;
      *&v284[22] = 1024;
      v285 = (*(&v281 + 7) >> 3) & 1;
      v286 = 1024;
      v287 = (*(&v281 + 7) >> 4) & 1;
      v288 = 1024;
      v289 = (*(&v281 + 7) >> 6) & 1;
      v290 = 1024;
      v291 = (*(&v281 + 7) >> 7) & 1;
      v292 = 1024;
      v293 = (*(&v281 + 7) >> 9) & 1;
      v294 = 1024;
      v295 = (*(&v281 + 7) >> 10) & 1;
      v296 = 1024;
      v297 = (*(&v281 + 7) >> 11) & 1;
      v298 = 1024;
      v299 = (*(&v281 + 7) >> 12) & 1;
      v300 = 1024;
      v301 = (*(&v281 + 7) >> 13) & 1;
      v302 = 1024;
      v303 = (*(&v281 + 7) >> 14) & 1;
      v304 = 1024;
      v305 = (*(&v281 + 7) >> 15) & 1;
      v306 = 1024;
      v307 = HIWORD(*(&v281 + 7)) & 1;
      v308 = 1024;
      v309 = (*(&v281 + 7) >> 17) & 1;
      v310 = 1024;
      v311 = v281.var23 != 0;
      v312 = 1024;
      v313 = v281.var24 != 0;
      _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Context: {\n\tBundleIDs=%s,\n\tNonPhotosBundleIDs=%s,\n\tCoreSpotlight=%d,\n\tCommitted=%d,\n\tCtlCli=%d,\n\tMailCli=%d,\n\tPhotosCli=%d,\n\tSettingsCli=%d,\n\tSearchToolCli=%d,\n\tSpotlightUICli=%d,\n\tRewrite=%d,\n\tHasMail=%d,\n\tHasPhotos=%d,\n\tHasSafari=%d,\n\tHasNonPhotos=%d,\n\tUseQU=%d,\n\tUseLLM=%d,\n\taNNSearchParams=%d,\n\ttokenRewrites=%d,\n}", buf, 0x90u);
    }

    *__error() = v57;
    *(&v281 + 7) &= ~2u;
    v59 = v49;
    v60 = v49;
    v61 = v55;
    v62 = v51;
    v63 = pommesQueryTree(v47, v254, v60, v55, v256, v51, &v281);
    *v321 = v63;
    v64 = v258;
    if (v63)
    {
      v65 = v271;
      decorateExpandingFunctions(v63, *v271, v258, *(v271 + 360));
      db_optimize_query_tree(v321);
      v66 = *v321;
      v12 = 0x1EBF46000;
      if (*v321)
      {
        goto LABEL_79;
      }

      v67 = *__error();
      v68 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v257;
        *&buf[12] = 2080;
        *&buf[14] = v44;
      }
    }

    else
    {
      v67 = *__error();
      v74 = _SILogForLogForCategory(17);
      v65 = v271;
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v257;
        *&buf[12] = 2080;
        *&buf[14] = v44;
      }

      v12 = 0x1EBF46000;
    }

    *__error() = v67;
    v66 = 0;
LABEL_79:
    *(&v281 + 7) |= 2u;
    v75 = pommesQueryTree(v255, v254, v59, v61, v256, v62, &v281);
    *v321 = v75;
    if (v75)
    {
      decorateExpandingFunctions(v75, *v65, v258, *(v65 + 360));
      db_optimize_query_tree(v321);
      v76 = *v321;
      if (*v321)
      {
        if ((~*(&v281 + 7) & 0x20200) == 0 || (*(&v281 + 28) & 0x40) != 0)
        {
          *(v262[1] + 697) = 1;
        }

        goto LABEL_90;
      }

      v77 = *__error();
      v78 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v257;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        goto LABEL_88;
      }
    }

    else
    {
      v77 = *__error();
      v78 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = v257;
        *&buf[12] = 2080;
        *&buf[14] = v44;
LABEL_88:
        _os_log_impl(&dword_1C278D000, v78, OS_LOG_TYPE_ERROR, v79, buf, 0x16u);
      }
    }

    *__error() = v77;
    v76 = 0;
LABEL_90:
    v72 = v66;
    v73 = v76;
    v71 = (v252 >> 9) & 1;
LABEL_91:
    if (v281.var24)
    {
      CFRelease(v281.var24);
      v281.var24 = 0;
    }

    var2 = v281.var2;
    if (v281.var2)
    {
      if ((*(&v281 + 30) & 2) != 0)
      {
        if (*(v281.var2 + 6))
        {
          v81 = *(v281.var2 + 6);
          do
          {
            v82 = *v81;
            operator delete(v81);
            v81 = v82;
          }

          while (v82);
        }

        v83 = *(var2 + 4);
        *(var2 + 4) = 0;
        if (v83)
        {
          operator delete(v83);
        }

        if (var2[31] < 0)
        {
          operator delete(*(var2 + 1));
        }

        MEMORY[0x1C691FEF0](var2, 0x10B2C40BBB3F037);
      }

      v281.var2 = 0;
    }

    ClientInfo = getClientInfo(v64, &v281, 1);
    if (v72)
    {
      v85 = v253;
      db_dump_pommes_query_node_with_prefix(*(v271 + 608), v271, v253, "[retrieval]", v72, v71);
      db_free_query_node(*(v271 + 72));
      *(v271 + 72) = v72;
      v9 = v271;
      if (v73)
      {
        v86 = optimizeLiftingQuery(v265, v73, v273);
        db_dump_pommes_query_node_with_prefix(*(v271 + 608), v271, v253, "[ranking]", v86, v71);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v283 = &unk_1E8198ED0;
        *v284 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v86, buf, &__block_literal_global_25_15416);
        *(v271 + 272) = v87;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v283 = &unk_1E8198ED0;
        *v284 = &__block_literal_global_9564;
        db_query_tree_apply_block_with_meta(v87, buf, 0);
        db_free_query_node(v86);
        v88 = 1;
        v89 = 1;
      }

      else
      {
        v88 = 1;
        v89 = 0;
      }

      v2 = v272;
    }

    else
    {
      v88 = 0;
      v89 = 0;
      v9 = v271;
      v2 = v272;
      v85 = v253;
    }

    v90 = *__error();
    v91 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = *(v9 + 608);
      *buf = 134219266;
      *&buf[4] = v92;
      *&buf[12] = 2080;
      *&buf[14] = v85;
      *&buf[22] = 2080;
      v283 = ClientInfo;
      *v284 = 1024;
      *&v284[2] = v88;
      *&v284[6] = 1024;
      *&v284[8] = v89;
      *&v284[12] = 2048;
      *&v284[14] = 0;
      _os_log_impl(&dword_1C278D000, v91, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] pQfPR: %s, retrieval: %d, ranking: %d, groups#: %ld", buf, 0x36u);
    }

    *__error() = v90;
    v14 = v268;
    v15 = v269;
  }

  *(v9 + 673) = 0;
  si_opt_cache_destroy(v273);
  v93 = *(v9 + 72);
  v94 = (v9 + 72);
  if (v93)
  {
    v95 = *(v9 + 88);
    if (v95)
    {
      *v94 = makeORNode(v95, v93, 0);
    }
  }

  if (SIIsAppleInternal_onceToken != -1)
  {
    dispatch_once(&SIIsAppleInternal_onceToken, &__block_literal_global_6502);
  }

  if (SIIsAppleInternal_internal)
  {
    v96 = db_count_query_tree(*v94) + 1;
    if (v96 >= 0x1F6)
    {
      *v321 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
      _db_render_query_tree(v97);
      if (v98)
      {
        v99 = *__error();
        v100 = _SILogForLogForCategory(1);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
        {
          v101 = *(v9 + 32);
          *buf = 138412802;
          *&buf[4] = v101;
          *&buf[12] = 2048;
          *&buf[14] = v96 >> 1;
          *&buf[22] = 2080;
          v283 = *v321;
          _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "Large query (%@) with %zu nodes has query nodes: %s", buf, 0x20u);
        }

        *__error() = v99;
      }

      free(*v321);
    }
  }

  popSkipCrashState();
  v102 = v262;
  v103 = *v262;
  if ((*(*v262 + 2072) & 1) != 0 || !*(v103 + 56))
  {
    v104 = *(v103 + 1192);
    if (v104)
    {
      v105 = 2;
      goto LABEL_131;
    }

LABEL_132:
    v106 = 0;
    goto LABEL_133;
  }

  v104 = *(v103 + 1192);
  if (!v104)
  {
    goto LABEL_132;
  }

  v105 = 3;
LABEL_131:
  v106 = db_get_object_count(v104) < v105;
  v102 = v262;
  v103 = *v262;
LABEL_133:
  v107 = v102[1];
  if ((*(v107 + 356) & 1) == 0 && *(v103 + 2072) == 1)
  {
    v108 = *(v107 + 656);
    if (v108)
    {
      HasPrefix = CFStringHasPrefix(v108, @"com.apple.omniSearch.");
      v110 = (v107 + 300);
      if (HasPrefix)
      {
        *v110 = 0x100040000000;
        v111 = 4096;
      }

      else
      {
        *v110 = 0x2003E4CCCCDLL;
        v111 = 2048;
      }

      v102 = v262;
    }

    else
    {
      *(v107 + 300) = 0x2003E4CCCCDLL;
      v111 = 2048;
    }

    *(v107 + 316) = 1101004800;
    *(v107 + 320) = v111;
    *(v107 + 308) = 0x80041A00000;
    v103 = *v102;
  }

  if (!*(v103 + 1192) || (v112 = v102[1], (*(v112 + 201) & 4) != 0))
  {
    v115 = 0;
  }

  else
  {
    v113 = *(v112 + 72);
    *&v314 = MEMORY[0x1E69E9820];
    *(&v314 + 1) = 0x40000000;
    *&v315 = __si_setup_run_stubquery_block_invoke;
    *(&v315 + 1) = &__block_descriptor_tmp_131_9877;
    *&v316 = v102;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v283 = &unk_1E8198ED0;
    *v284 = &v314;
    db_query_tree_apply_block_with_meta(v113, buf, &__block_literal_global_135);
    v102 = v262;
    v115 = v114 == 0;
  }

  atomic_fetch_add_explicit((v102[2] + 64), 1u, memory_order_relaxed);
  priority = query_priority(v102[1]);
  if (priority <= 1)
  {
    if (priority)
    {
      v117 = 17;
      v118 = 15;
    }

    else
    {
      v117 = 9;
      v118 = 14;
    }

    goto LABEL_152;
  }

  if (priority == 2)
  {
    v117 = 25;
    v118 = 16;
LABEL_152:
    v119 = 0;
    v120 = v117;
    goto LABEL_154;
  }

  v120 = 33;
  v119 = 1;
  v118 = 17;
LABEL_154:
  v121 = v120;
  v259 = v119;
  v122 = v118;
  v123 = CFAbsoluteTimeGetCurrent();
  v124 = v262;
  *(v262 + 3) = v123;
  v125 = *(*v262 + 8 * v122 + 1008);
  if (!v125)
  {
    v131 = *(v262[1] + 200);
    v132 = v262[1];
    v126 = v263;
LABEL_208:
    if ((v131 & 0x40000) == 0)
    {
      si_querypipe_remove_process(v262[2], v132, 0, 1);
      v124 = v262;
    }

    v200 = v124[4];
    if (v200)
    {
      CFRelease(v200);
      v124 = v262;
    }

    free(v124);
    goto LABEL_213;
  }

  v126 = v263;
  if (v106 || v115)
  {
    v127 = v262[1];
    if ((*(v127 + 200) & 0x3044000) == 0)
    {
      v131 = *(v127 + 200);
      v132 = v262[1];
      goto LABEL_208;
    }
  }

  v128 = v262[4];
  if (v128)
  {
    v129 = CFRetain(v128);
    v124 = v262;
    v130 = v129;
  }

  else
  {
    v130 = 0;
  }

  v133 = v124[1];
  *(v133 + 664) = v130;
  if (*(v133 + 152) >= 5u)
  {
    *(v124[2] + 98) = 1;
    v133 = v124[1];
    if (!*(v133 + 160))
    {
      *(v124[2] + 99) = 0;
      v133 = v124[1];
    }
  }

  v134 = *v124;
  v261 = v121;
  v260 = v125;
  if (*(*v124 + 2072) == 1)
  {
    v251 = *v124;
    v135 = *(v133 + 72);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v283 = &unk_1E8198ED0;
    *v284 = &__block_literal_global_403;
    db_query_tree_apply_block_with_meta(v135, buf, &__block_literal_global_406);
    *(v133 + 72) = v136;
    v137 = *(v133 + 256);
    if (v137 >= 1)
    {
      v138 = MEMORY[0x1E69E9820];
      v139 = 0;
      do
      {
        v140 = v139;
        v141 = *(*(v133 + 248) + 8 * v139);
        *buf = v138;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v283 = &unk_1E8198ED0;
        *v284 = &__block_literal_global_403;
        db_query_tree_apply_block_with_meta(v141, buf, &__block_literal_global_406);
        *(*(v133 + 248) + 8 * v140) = v142;
        v139 = v140 + 1;
      }

      while (v137 != v140 + 1);
    }

    v250 = *(v133 + 288);
    if (v250 >= 1)
    {
      v143 = 0;
      v144 = *(v133 + 264);
      do
      {
        v145 = v144;
        v146 = (v144 + 24 * v143);
        if (v146[1] >= 1)
        {
          v147 = 0;
          v148 = MEMORY[0x1E69E9820];
          v149 = v146;
          do
          {
            v150 = *(*v149 + 8 * v147);
            *buf = v148;
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v283 = &unk_1E8198ED0;
            *v284 = &__block_literal_global_403;
            db_query_tree_apply_block_with_meta(v150, buf, &__block_literal_global_406);
            *(*(*(v133 + 264) + 24 * v143) + 8 * v147++) = v151;
            v149 = (*(v133 + 264) + 24 * v143);
          }

          while (v147 < v149[1]);
          v145 = *(v133 + 264);
        }

        v144 = v145;
        ++v143;
      }

      while (v143 != v250);
    }

    *v321 = MEMORY[0x1E69E9820];
    *&v321[8] = 0x40000000;
    *&v321[16] = __queryRemapFieldsForStore_block_invoke_3;
    *&v321[24] = &__block_descriptor_tmp_411_9878;
    *&v321[32] = v251;
    v152 = *(v133 + 72);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v283 = &unk_1E8198ED0;
    *v284 = v321;
    db_query_tree_apply_block_with_meta(v152, buf, &__block_literal_global_414);
    *(v133 + 72) = v153;
    if (*(v133 + 256) >= 1)
    {
      v154 = MEMORY[0x1E69E9820];
      v155 = 0;
      do
      {
        v156 = v155;
        v157 = *(*(v133 + 248) + 8 * v155);
        *buf = v154;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v283 = &unk_1E8198ED0;
        *v284 = v321;
        db_query_tree_apply_block_with_meta(v157, buf, &__block_literal_global_414);
        *(*(v133 + 248) + 8 * v156) = v158;
        v155 = v156 + 1;
      }

      while (v156 + 1 < *(v133 + 256));
    }

    v12 = 0x1EBF46000;
    if (*(v133 + 288) >= 1)
    {
      v159 = 0;
      v160 = *(v133 + 288);
      v161 = *(v133 + 264);
      do
      {
        v162 = v161;
        v163 = (v161 + 24 * v159);
        v164 = v160;
        v165 = v162;
        if (v163[1] >= 1)
        {
          v166 = 0;
          v167 = MEMORY[0x1E69E9820];
          v168 = v163;
          do
          {
            v169 = *(*v168 + 8 * v166);
            *buf = v167;
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            v283 = &unk_1E8198ED0;
            *v284 = v321;
            db_query_tree_apply_block_with_meta(v169, buf, &__block_literal_global_414);
            *(*(*(v133 + 264) + 24 * v159) + 8 * v166++) = v170;
            v168 = (*(v133 + 264) + 24 * v159);
          }

          while (v166 < v168[1]);
          v164 = *(v133 + 288);
          v165 = *(v133 + 264);
          v12 = 0x1EBF46000;
        }

        v161 = v165;
        ++v159;
        v160 = v164;
      }

      while (v159 < v164);
    }
  }

  else
  {
    v171 = si_attrs_remapping_copy(*(v133 + 16), (*(v134 + 6584) >> 6) & 1);
    if (v171)
    {
      v172 = v171;
      CFRelease(*(v133 + 16));
      *(v133 + 16) = v172;
    }

    v173 = si_attrs_remapping_copy(*(v133 + 40), (*(v134 + 6584) >> 6) & 1);
    if (v173)
    {
      v174 = v173;
      CFRelease(*(v133 + 40));
      *(v133 + 40) = v174;
    }

    if ((*(v134 + 6584) & 0x40) != 0)
    {
      v175 = si_cab_attr_rewriteDict();
    }

    else
    {
      v175 = si_attr_rewriteDict();
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __queryRemapFieldsForStore_block_invoke_5;
    v283 = &__block_descriptor_tmp_431;
    *v284 = v133;
    *&v284[8] = v134;
    *&v284[16] = v175;
    v176 = *(v133 + 72);
    *v321 = MEMORY[0x1E69E9820];
    *&v321[8] = 0x40000000;
    *&v321[16] = __db_query_tree_apply_block_block_invoke;
    *&v321[24] = &unk_1E8198ED0;
    *&v321[32] = buf;
    db_query_tree_apply_block_with_meta(v176, v321, &__block_literal_global_434);
    *(v133 + 72) = v177;
    if (*(v133 + 256) >= 1)
    {
      v178 = MEMORY[0x1E69E9820];
      v179 = 0;
      do
      {
        v180 = v179;
        v181 = *(*(v133 + 248) + 8 * v179);
        *v321 = v178;
        *&v321[8] = 0x40000000;
        *&v321[16] = __db_query_tree_apply_block_block_invoke;
        *&v321[24] = &unk_1E8198ED0;
        *&v321[32] = buf;
        db_query_tree_apply_block_with_meta(v181, v321, &__block_literal_global_434);
        *(*(v133 + 248) + 8 * v180) = v182;
        v179 = v180 + 1;
      }

      while (v180 + 1 < *(v133 + 256));
    }

    if (*(v133 + 288) >= 1)
    {
      v183 = 0;
      v184 = *(v133 + 288);
      v185 = *(v133 + 264);
      do
      {
        v186 = v185;
        v187 = (v185 + 24 * v183);
        v188 = v184;
        v189 = v186;
        if (v187[1] >= 1)
        {
          v190 = 0;
          v191 = MEMORY[0x1E69E9820];
          v192 = v187;
          do
          {
            v193 = *(*v192 + 8 * v190);
            *v321 = v191;
            *&v321[8] = 0x40000000;
            *&v321[16] = __db_query_tree_apply_block_block_invoke;
            *&v321[24] = &unk_1E8198ED0;
            *&v321[32] = buf;
            db_query_tree_apply_block_with_meta(v193, v321, &__block_literal_global_434);
            *(*(*(v133 + 264) + 24 * v183) + 8 * v190++) = v194;
            v192 = (*(v133 + 264) + 24 * v183);
          }

          while (v190 < v192[1]);
          v188 = *(v133 + 288);
          v189 = *(v133 + 264);
          v12 = 0x1EBF46000uLL;
        }

        v185 = v189;
        ++v183;
        v184 = v188;
      }

      while (v183 < v188);
    }
  }

  atomic_fetch_add((v262[1] + 584), 1u);
  atomic_fetch_add(v262[2], 1u);
  atomic_fetch_add_explicit((v262[2] + 64), 1u, memory_order_relaxed);
  v195 = si_querypipe_copy_jobid(v262[2]);
  v196 = v262;
  v197 = v195;
  v198 = v262[1];
  v9 = v271;
  v2 = v272;
  v126 = v263;
  if ((*(v198 + 152) - 1) >= 2 && (*(v198 + 200) & 0x10000400) == 0)
  {
    v204 = *v262;
    if ((v259 & *(*v262 + 2072)) != 1)
    {
      if (!v195)
      {
        goto LABEL_205;
      }

      goto LABEL_248;
    }

    v205 = *(v198 + 664);
    if (!v205)
    {
      v208 = 0;
      goto LABEL_245;
    }

    if (CFArrayGetCount(*(v198 + 664)) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v205, 0);
      v207 = CFGetTypeID(ValueAtIndex);
      if (v207 != CFStringGetTypeID())
      {
        v208 = 0;
        v9 = v271;
        v2 = v272;
        goto LABEL_244;
      }

      v9 = v271;
      v2 = v272;
      if (CFStringHasPrefix(ValueAtIndex, @"com.apple"))
      {
        if (tag_is_excepted_once != -1)
        {
          dispatch_once(&tag_is_excepted_once, &__block_literal_global_391);
        }

        v208 = CFSetContainsValue(tag_is_excepted_exceptedIds, ValueAtIndex) != 0;
        goto LABEL_244;
      }
    }

    v208 = 0;
LABEL_244:
    v196 = v262;
LABEL_245:
    if (v208 || !v197)
    {
      goto LABEL_205;
    }

    v204 = *v196;
LABEL_248:
    v216 = *(v198 + 664);
    if (v216)
    {
      if (*(v204 + 2072) == 1 && CFArrayGetCount(*(v198 + 664)) == 1)
      {
        v217 = CFArrayGetValueAtIndex(v216, 0);
        v196 = v262;
        if (v217 == 1)
        {
          goto LABEL_205;
        }

        v218 = CFEqual(v217, @"com.apple.searchd");
        v196 = v262;
        if (v218)
        {
          goto LABEL_205;
        }
      }

      pthread_mutex_lock((v204 + 1320));
      v219 = *(v204 + 1152);
      if (v219 && si_peek_queue_for_tags(v219, v216))
      {
        if (*(v204 + 2072) == 1)
        {
          v220 = *__error();
          v221 = _SILogForLogForCategory(1);
          v222 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v221, v222))
          {
            *buf = 138412290;
            *&buf[4] = v216;
            _os_log_impl(&dword_1C278D000, v221, v222, "long defer query for %@", buf, 0xCu);
          }

          *__error() = v220;
          v9 = v271;
          v2 = v272;
          v12 = 0x1EBF46000uLL;
        }

        si_enqueue_barrier_routine(v204, v197, enqueueQuery, v262, 0x12u);
        pthread_mutex_unlock((v204 + 1320));
        if (*(v204 + 2072) == 1)
        {
          v223 = *__error();
          v224 = _SILogForLogForCategory(1);
          v225 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v224, v225))
          {
            *buf = 138412290;
            *&buf[4] = v216;
            _os_log_impl(&dword_1C278D000, v224, v225, "long defer query for %@", buf, 0xCu);
          }

          *__error() = v223;
          v9 = v271;
          v2 = v272;
        }

LABEL_272:
        if (*(v204 + 2072) == 1)
        {
          v237 = *__error();
          v238 = _SILogForLogForCategory(1);
          v239 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v238, v239))
          {
            *buf = 138412290;
            *&buf[4] = v216;
            _os_log_impl(&dword_1C278D000, v238, v239, "do defer query for %@", buf, 0xCu);
          }

          *__error() = v237;
        }

        v240 = *__error();
        v241 = _SILogForLogForCategory(3);
        if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
        {
          v242 = *(v198 + 608);
          v243 = *(v198 + 616);
          *buf = 134218240;
          *&buf[4] = v242;
          *&buf[12] = 2048;
          *&buf[14] = v243;
          _os_log_impl(&dword_1C278D000, v241, OS_LOG_TYPE_DEFAULT, "Stalling qid=(%lld,%lld) because the task has data in the set queue", buf, 0x16u);
        }

        *__error() = v240;
        v14 = v268;
        v15 = v269;
        v126 = v263;
        goto LABEL_206;
      }

      pthread_mutex_unlock((v204 + 1320));
      v233 = *(v204 + 1048);
      if (v233 && si_peek_queue_for_tags(v233, v216))
      {
        if (*(v204 + 2072) == 1)
        {
          v234 = *__error();
          v235 = _SILogForLogForCategory(1);
          v236 = 2 * (*(v12 + 2768) < 4);
          if (os_log_type_enabled(v235, v236))
          {
            *buf = 138412290;
            *&buf[4] = v216;
            _os_log_impl(&dword_1C278D000, v235, v236, "defer query for %@", buf, 0xCu);
          }

          *__error() = v234;
          v9 = v271;
          v2 = v272;
          v12 = 0x1EBF46000uLL;
        }

        si_enqueue_barrier_routine(v204, v197, enqueueQuery, v262, 5u);
        goto LABEL_272;
      }

      v196 = v262;
      if (*(v204 + 2072) != 1)
      {
        goto LABEL_205;
      }

      v226 = *__error();
      v244 = _SILogForLogForCategory(1);
      v245 = 2 * (*(v12 + 2768) < 4);
      if (os_log_type_enabled(v244, v245))
      {
        *buf = 138412290;
        *&buf[4] = v216;
        v229 = "don't defer query for %@";
        v230 = v244;
        v231 = v245;
        v232 = 12;
        goto LABEL_282;
      }
    }

    else
    {
      v226 = *__error();
      v227 = _SILogForLogForCategory(1);
      v228 = 2 * (*(v12 + 2768) < 4);
      if (os_log_type_enabled(v227, v228))
      {
        *buf = 0;
        v229 = "no tags";
        v230 = v227;
        v231 = v228;
        v232 = 2;
LABEL_282:
        _os_log_impl(&dword_1C278D000, v230, v231, v229, buf, v232);
      }
    }

    *__error() = v226;
    v9 = v271;
    v2 = v272;
    v126 = v263;
    v196 = v262;
  }

LABEL_205:
  *buf = 0;
  v199 = si_backtrace_routine_resolve(*v196, *(v196[1] + 656), queryGo, v196, buf);
  si_enqueue_work_with_qos(v260, v261, v199, *buf);
  v14 = v268;
  v15 = v269;
  if (v197)
  {
LABEL_206:
    si_release_qid(v197);
  }

LABEL_213:
  v7 = v270;
  if (!*(v15 + 36) && (*(v9 + 201) & 4) != 0)
  {
    v201 = *(v9 + 176);
    if ((!v201 || CFArrayGetCount(v201)) && (*(v265 + 828) & 0xC) == 0)
    {
      v209 = si_add_livequery(v265, v9, v14);
      pthread_mutex_lock((v266 + 6));
      if (*(v15 + 36))
      {
        pthread_mutex_unlock((v266 + 6));
        v126 = v263;
        if (v209)
        {
          si_remove_livequery(v265, v209);
          si_livequery_release(v209);
        }
      }

      else
      {
        *(v15 + 16) = v209;
        pthread_mutex_unlock((v266 + 6));
        v126 = v263;
      }
    }
  }

  v202 = threadData[9 * v277 + 1] + 320 * v276;
  *(v202 + 312) = v126;
  v203 = *(v202 + 232);
  if (v203)
  {
    v203(*(v202 + 288));
  }

  dropThreadId(v277, 0, add_explicit + 1);
LABEL_7:
  v18 = CFAbsoluteTimeGetCurrent() - Current;
  *(v9 + 392) = *(v9 + 392) + v18;
  siquery_addactivetime(v9, v18);
  if (*(v12 + 2768) >= 5)
  {
    v212 = *__error();
    v213 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
    {
      v214 = CFAbsoluteTimeGetCurrent() - Current;
      v215 = qos_class_self();
      *buf = 134218240;
      *&buf[4] = v214;
      *&buf[12] = 1024;
      *&buf[14] = v215;
      _os_log_impl(&dword_1C278D000, v213, OS_LOG_TYPE_DEFAULT, "Search was active (setup) for %f seconds on the scheduler at qos 0x%x", buf, 0x12u);
    }

    *__error() = v212;
  }

  si_querypipe_remove_process(v14, v9, 0, 0);
  si_querypipe_release(v14);
  if (atomic_fetch_add((v7 + 584), 0xFFFFFFFF) == 1)
  {
    si_query_free(v9);
  }

  si_release_qid(v15);
  free(v2);
}

uint64_t *__db_clone_query_node_block_invoke_2(int a1, uint64_t *a2, void *a3, void *a4)
{
  v4 = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else
  {
    if (a3)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      v5 = a4;
      db_query_tree_apply_block_with_meta(a3, &v7, 0);
      a4 = v5;
    }

    if (a4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 0x40000000;
      v9 = __db_query_tree_apply_block_block_invoke;
      v10 = &unk_1E8198ED0;
      v11 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(a4, &v7, 0);
    }

    free(v4);
    return 0;
  }

  return v4;
}

uint64_t __db_optimize_query_tree_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 == 32)
  {
    v10 = *(a2 + 16);
    v11 = (v10 + 52);
    if (!v10)
    {
      v11 = (a2 + 72);
    }

    *(a2 + 72) = *v11;
    if (v10)
    {
      free_qp(v10);
      *(a2 + 16) = 0;
    }

    v12 = *a2;
    if (*a2)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v12, &v15, 0);
      *a2 = 0;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v13, &v15, 0);
      *(a2 + 8) = 0;
    }
  }

  else if (v3 == 16)
  {
    v4 = *(a2 + 16);
    v5 = (a2 + 72);
    if (v4)
    {
      v6 = (v4 + 56);
    }

    else
    {
      v6 = (a2 + 72);
    }

    *(a2 + 72) = *v6;
    v7 = *a2;
    if (*a2)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v7, &v15, 0);
      *a2 = 0;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      v15 = MEMORY[0x1E69E9820];
      v16 = 0x40000000;
      v17 = __db_query_tree_apply_block_block_invoke;
      v18 = &unk_1E8198ED0;
      v19 = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v8, &v15, 0);
      *(a2 + 8) = 0;
    }

    v9 = *(a2 + 16);
    if (v9)
    {
      free_qp(v9);
      *(a2 + 16) = 0;
    }

    if (*v5 != 0.0)
    {
      *(a2 + 48) = 32;
    }
  }

  return a2;
}

os_signpost_id_t SIExecuteQueryWithResultsCallbackForTags(void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5)
{
  v125 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0x70uLL, 0x10200408DCF1539uLL);
  atomic_store(2u, v8);
  pthread_mutex_init((v8 + 48), 0);
  *(v8 + 8) = 4;
  if (dword_1EBF46AD0 >= 5)
  {
    v96 = *__error();
    v97 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = *(a2 + 8);
      *buf = 138412290;
      *&buf[4] = v98;
      _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "Execute query %@", buf, 0xCu);
    }

    *__error() = v96;
  }

  v117 = a2;
  *(v8 + 1) = a1;
  v116 = malloc_type_calloc(1uLL, 0x28uLL, 0x10600400421BFCDuLL);
  if (!a1[180])
  {
    si_storecookieRef(a1);
  }

  v9 = a1[178];
  v10 = a1[179];
  v11 = *a2;
  v12 = *(a2 + 200);
  v13 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A004060519A17uLL);
  atomic_store(1u, v13);
  *(v13 + 6) = v9;
  *(v13 + 7) = v10;
  v14 = v13;
  atomic_fetch_add((a3 + 8), 1u);
  *(v13 + 1) = a3;
  v15 = *MEMORY[0x1E695E480];
  *(v13 + 5) = RLEOIDArrayCreateMutable(*MEMORY[0x1E695E480]);
  atomic_fetch_add(v8, 1u);
  *(v14 + 4) = v8;
  if (v11)
  {
    CFRetain(v11);
  }

  *(v14 + 11) = v11;
  *(v14 + 99) = 1;
  *(v14 + 100) = (v12 & 0x40000) != 0;
  v113 = v14;
  *(v14 + 96) = 0;
  v16 = *__error();
  v17 = _SILogForLogForCategory(1);
  v18 = 2 * (dword_1EBF46AD0 < 4);
  v19 = v117;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v117 + 8);
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_1C278D000, v17, v18, "Starting query %@", buf, 0xCu);
  }

  *__error() = v16;
  *v116 = a1;
  v21 = malloc_type_malloc(0x300uLL, 0x10F00400B877FCEuLL);
  memcpy(v21, v117, 0x300uLL);
  atomic_store(1u, v21 + 146);
  if (dword_1EBF46AD0 >= 5)
  {
    v99 = *__error();
    v100 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v117;
      _os_log_impl(&dword_1C278D000, v100, OS_LOG_TYPE_DEFAULT, "%p: Query completely done", buf, 0xCu);
    }

    *__error() = v99;
  }

  v23 = *(v117 + 8);
  if (v23)
  {
    CFRetain(*(v117 + 8));
  }

  *(v21 + 1) = v23;
  v24 = *(v117 + 16);
  if (v24)
  {
    CFRetain(*(v117 + 16));
  }

  *(v21 + 2) = v24;
  v25 = *(v117 + 40);
  if (v25)
  {
    CFRetain(*(v117 + 40));
  }

  *(v21 + 5) = v25;
  v26 = *(v117 + 48);
  if (v26)
  {
    CFRetain(*(v117 + 48));
  }

  *(v21 + 6) = v26;
  v21[14] = *(v117 + 56);
  v27 = *(v117 + 656);
  if (v27)
  {
    CFRetain(*(v117 + 656));
  }

  *(v21 + 82) = v27;
  v28 = *(v117 + 192);
  if (v28)
  {
    CFRetain(*(v117 + 192));
  }

  *(v21 + 24) = v28;
  v29 = *(v117 + 176);
  if (v29)
  {
    CFRetain(*(v117 + 176));
  }

  *(v21 + 22) = v29;
  v30 = *(v117 + 184);
  if (v30)
  {
    CFRetain(*(v117 + 184));
  }

  *(v21 + 23) = v30;
  v31 = *(v117 + 240);
  if (v31)
  {
    CFRetain(*(v117 + 240));
  }

  *(v21 + 30) = v31;
  v32 = *(v117 + 576);
  if (v32)
  {
    MutableCopy = RLEOIDArrayCreateMutableCopy(v15, v22, v32);
  }

  else
  {
    MutableCopy = 0;
  }

  *(v21 + 72) = MutableCopy;
  v34 = *(v117 + 72);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v123 = &unk_1E8198ED0;
  v124 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v34, buf, &__block_literal_global_25_15416);
  *(v21 + 9) = v35;
  v36 = *(v117 + 64);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v123 = &unk_1E8198ED0;
  v124 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v36, buf, &__block_literal_global_25_15416);
  *(v21 + 8) = v37;
  v38 = *(v117 + 80);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v123 = &unk_1E8198ED0;
  v124 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v38, buf, &__block_literal_global_25_15416);
  *(v21 + 10) = v39;
  v40 = *(v117 + 88);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __db_query_tree_apply_block_block_invoke;
  v123 = &unk_1E8198ED0;
  v124 = &__block_literal_global_21_15415;
  db_query_tree_apply_block_with_meta(v40, buf, &__block_literal_global_25_15416);
  *(v21 + 11) = v41;
  v42 = *(v117 + 96);
  if (v42)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v123 = &unk_1E8198ED0;
    v124 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v42, buf, &__block_literal_global_25_15416);
  }

  *(v21 + 12) = v42;
  *(v21 + 672) = *(v117 + 672);
  v43 = *(v117 + 680);
  if (v43)
  {
    CFRetain(*(v117 + 680));
  }

  *(v21 + 85) = v43;
  v44 = *(v117 + 688);
  if (v44)
  {
    CFRetain(*(v117 + 688));
  }

  *(v21 + 86) = v44;
  *(v21 + 696) = *(v117 + 696);
  v45 = *(v117 + 704);
  if (v45)
  {
    CFRetain(*(v117 + 704));
  }

  *(v21 + 88) = v45;
  v46 = *(v117 + 712);
  if (v46)
  {
    CFRetain(*(v117 + 712));
  }

  *(v21 + 89) = v46;
  v47 = *(v117 + 720);
  if (v47)
  {
    CFRetain(*(v117 + 720));
  }

  *(v21 + 90) = v47;
  *(v21 + 27) = *(v117 + 216);
  v48 = *(v117 + 24);
  if (v48)
  {
    CFRetain(*(v117 + 24));
  }

  *(v21 + 3) = v48;
  if (*(v117 + 120))
  {
    v101 = __si_assert_copy_extra_661(-1);
    v102 = v101;
    v103 = "";
    if (v101)
    {
      v103 = v101;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1139, "query->_liveUniquedSet==0", v103);
LABEL_116:
    free(v102);
    if (__valid_fs(-1))
    {
      v110 = 2989;
    }

    else
    {
      v110 = 3072;
    }

    *v110 = -559038737;
    abort();
  }

  if (*(v117 + 104))
  {
    v104 = __si_assert_copy_extra_661(-1);
    v102 = v104;
    v105 = "";
    if (v104)
    {
      v105 = v104;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1140, "query->_liveUniquedQuery==0", v105);
    goto LABEL_116;
  }

  if (*(v117 + 112))
  {
    v106 = __si_assert_copy_extra_661(-1);
    v102 = v106;
    v107 = "";
    if (v106)
    {
      v107 = v106;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1141, "query->_liveUniquedFilterQuery==0", v107);
    goto LABEL_116;
  }

  if (*(v117 + 128))
  {
    v108 = __si_assert_copy_extra_661(-1);
    v102 = v108;
    v109 = "";
    if (v108)
    {
      v109 = v108;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SIQueryC.c", 1142, "query->queryNodes==0", v109);
    goto LABEL_116;
  }

  v111 = a1;
  v112 = v8;
  if (*(v117 + 248))
  {
    v49 = *(v117 + 256);
    *(v21 + 32) = v49;
    *(v21 + 31) = malloc_type_malloc(8 * v49, 0x2004093837F09uLL);
    if (*(v117 + 256) >= 1)
    {
      v50 = 0;
      v51 = MEMORY[0x1E69E9820];
      do
      {
        v52 = *(*(v117 + 248) + 8 * v50);
        *buf = v51;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v123 = &unk_1E8198ED0;
        v124 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v52, buf, &__block_literal_global_25_15416);
        *(*(v21 + 31) + 8 * v50++) = v53;
      }

      while (v50 < *(v117 + 256));
    }
  }

  v118 = v21;
  if (*(v117 + 264))
  {
    v54 = *(v117 + 288);
    *(v21 + 36) = v54;
    *(v21 + 33) = malloc_type_malloc(24 * v54, 0x1080040468F112EuLL);
    if (*(v117 + 288) >= 1)
    {
      v55 = 0;
      do
      {
        v56 = *(v21 + 33);
        v57 = *(v19 + 264) + 24 * v55;
        v58 = *v57;
        v59 = *(v57 + 8);
        v119 = *(v57 + 16);
        v120 = v56;
        v121 = malloc_type_malloc(8 * v59, 0x2004093837F09uLL);
        if (v59 >= 1)
        {
          v60 = v121;
          v61 = v59;
          do
          {
            v62 = *v58;
            if (*v58)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __db_query_tree_apply_block_block_invoke;
              v123 = &unk_1E8198ED0;
              v124 = &__block_literal_global_21_15415;
              db_query_tree_apply_block_with_meta(v62, buf, &__block_literal_global_25_15416);
            }

            *v60++ = v62;
            ++v58;
            --v61;
          }

          while (v61);
        }

        v63 = (v120 + 24 * v55);
        *v63 = v121;
        v63[1] = v59;
        v21 = v118;
        v63[2] = v119;
        ++v55;
        v19 = v117;
      }

      while (v55 < *(v117 + 288));
    }
  }

  v64 = *(v19 + 280);
  if (v64)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v123 = &unk_1E8198ED0;
    v124 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v64, buf, &__block_literal_global_25_15416);
    *(v21 + 35) = v65;
  }

  v66 = *(v19 + 224);
  if (v66)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v123 = &unk_1E8198ED0;
    v124 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v66, buf, &__block_literal_global_25_15416);
    *(v118 + 28) = v67;
  }

  v68 = *v19;
  if (*v19)
  {
    CFRetain(*v19);
  }

  *v118 = v68;
  v69 = *(v19 + 32);
  if (v69)
  {
    CFRetain(*(v19 + 32));
  }

  *(v118 + 4) = v69;
  v70 = *(v19 + 272);
  if (v70)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __db_query_tree_apply_block_block_invoke;
    v123 = &unk_1E8198ED0;
    v124 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(v70, buf, &__block_literal_global_25_15416);
    *(v118 + 34) = v71;
  }

  if (*(v19 + 672) == 1 && (v72 = *(v19 + 728)) != 0 && (Count = CFArrayGetCount(v72)) != 0)
  {
    v74 = Count;
    v75 = *(v19 + 728);
    *(v118 + 91) = v75;
    if (v75)
    {
      CFRetain(v75);
    }

    v76 = v118;
    *(v118 + 92) = malloc_type_malloc(8 * v74, 0x2004093837F09uLL);
    if (v74 >= 1)
    {
      v77 = 0;
      v78 = MEMORY[0x1E69E9820];
      do
      {
        v79 = *(*(v19 + 736) + 8 * v77);
        *buf = v78;
        *&buf[8] = 0x40000000;
        *&buf[16] = __db_query_tree_apply_block_block_invoke;
        v123 = &unk_1E8198ED0;
        v124 = &__block_literal_global_21_15415;
        db_query_tree_apply_block_with_meta(v79, buf, &__block_literal_global_25_15416);
        *(*(v118 + 92) + 8 * v77++) = v80;
      }

      while (v74 != v77);
    }
  }

  else
  {
    v76 = v118;
    *(v118 + 182) = 0u;
  }

  v81 = *(v19 + 744);
  if (v81)
  {
    CFRetain(*(v19 + 744));
    *(v76 + 93) = v81;
  }

  *(v76 + 761) = *(v19 + 761);
  v82 = *(v19 + 752);
  if (v82)
  {
    CFRetain(*(v19 + 752));
  }

  *(v118 + 94) = v82;
  v83 = malloc_type_malloc(8 * *(v19 + 592), 0x100004000313F17uLL);
  *(v118 + 75) = v83;
  memcpy(v83, *(v19 + 600), 8 * *(v19 + 592));
  v116[1] = v118;
  v118[39] = (*(v111 + 15) == 1) | (2 * (*(v111 + 15) == 3));
  *(v112 + 24) = v113;
  atomic_fetch_add(v113, 1u);
  v116[2] = v113;
  if (a4)
  {
    v84 = *(v113 + 3);
    if (v84)
    {
      _Block_release(v84);
    }

    *(v113 + 3) = _Block_copy(a4);
  }

  atomic_fetch_add_explicit(v113 + 16, 1u, memory_order_relaxed);
  v85 = a5;
  if (a5)
  {
    v85 = CFRetain(a5);
  }

  v116[4] = v85;
  v86 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  *v86 = v116;
  v86[1] = v112;
  priority = query_priority(v116[1]);
  v88 = qword_1C2BFB1D0[priority];
  *(v112 + 32) = 4;
  kdebug_trace();
  Log = _MDPerf_QueryLog();
  if (v112 + 1 >= 2)
  {
    v92 = Log;
    if (os_signpost_enabled(Log))
    {
      v93 = *(v116[1] + 608);
      v94 = qos_class_self();
      v95 = *(v112 + 32);
      *buf = 134218496;
      *&buf[4] = v93;
      *&buf[12] = 1024;
      *&buf[14] = v94;
      *&buf[18] = 1024;
      *&buf[20] = v95;
      _os_signpost_emit_with_name_impl(&dword_1C278D000, v92, OS_SIGNPOST_INTERVAL_BEGIN, v112, "Job", "QueryId=%{signpost.description:attribute}lld CurrentQoS=%{signpost.description:attribute}x JobType=%{signpost.description:attribute}d", buf, 0x18u);
    }
  }

  *(*v86 + 3) = CFAbsoluteTimeGetCurrent();
  v90 = v111[v88 + 126];
  if (v90)
  {
    si_enqueue_work_with_qos(v90, 8 * priority + 9, finishRegisterQuery, v86);
  }

  else
  {
    finishRegisterQuery(v86, 1);
  }

  return v112;
}

char *__db_sanitize_query_tree_block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = si_calendar_retain();
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v9 = 0;
  __s = 0;
  v5 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    *buf = MEMORY[0x1E69E9820];
    v11 = 0x40000000;
    v12 = __expandFunctionsISO8601_block_invoke;
    v13 = &__block_descriptor_tmp_9_5409;
    v14 = v4;
    if (_expandFunctions(a2, &__s, 0x200uLL, v4, buf, v5) == 0x10000)
    {
      asprintf(&v9, "$time.iso(%s)", &__s);
      return v9;
    }
  }

  else
  {
    _expandFunctions(a2, &__s, 0x200uLL, v4, &__block_literal_global_4_5387, v5);
  }

  v7 = strlen(&__s);
  v6 = malloc_type_zone_malloc(queryZone, v7 + 1, 0xA4971684uLL);
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
  }

  memcpy(v6, &__s, v7);
  *(v6 + v7) = 0;
  return v6;
}

uint64_t parseTimeUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *a1 + 1;
  result = **a1;
  *a1 = v5;
  if (result <= 103)
  {
    if (result != 77 && result != 89 && result != 100)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (result <= 114)
    {
      if (result == 104 || result == 109)
      {
        return result;
      }

LABEL_12:
      *a1 = v3;
      return a2;
    }

    if (result != 115 && result != 119)
    {
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t __expandFunctionsISO8601_block_invoke(uint64_t a1, char *a2, size_t a3, CFAbsoluteTime a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  CFCalendarDecomposeAbsoluteTime(v7, a4, "yMdHms", &v10, &v9 + 4, &v9, &v11 + 4, &v11, &v10 + 4);
  return snprintf(a2, a3, "%04i-%02i-%02iT%02i:%02i:%02iZ", v10, HIDWORD(v9), v9, HIDWORD(v11), v11, HIDWORD(v10));
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  v27 = 0;
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v28 = 0;
  v9 = a1;
  do
  {
    if ((*v9 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    v26 = 0;
    v10 = utf8_byte_length_noerror(unsigned char)::utf8_len_table[*v9 >> 4];
    if (utf8_decodestr(v9, v10, &v26, &v27, 4, &v28, 0))
    {
      return 22;
    }

    if (v26 >= 0xC0u)
    {
      v11 = __CFUniCharDecomposableBitmap[v26 >> 8];
      if (__CFUniCharDecomposableBitmap[v26 >> 8])
      {
        if (v11 == 255 || ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v26 >> 3)] >> (v26 & 7)) & 1) != 0)
        {
          break;
        }
      }
    }

    v8 += v10 - 1;
    v9 += v10 - 1;
LABEL_4:
    ++v8;
    ++v9;
  }

  while (v8 < a2);
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      return 0;
    }

    return 22;
  }

  for (i = 2 * a2 + 2 * (a2 >> 2) + 2; ; i += 64)
  {
    v13 = malloc_type_malloc(i, 0x1000040BDFB0063uLL);
    if (!v13)
    {
      break;
    }

    v14 = utf8_decodestr(a1, a2, v13, &v27, i, &v28, 4);
    if (!v14)
    {
      break;
    }

    if (v14 == 22)
    {
      free(v13);
      return 22;
    }

    free(v13);
  }

  v16 = v27;
  if (v27 >= 2)
  {
    v17 = 0;
    v21 = v27 >> 1;
    v22 = v13;
    do
    {
      v25 = *v22++;
      v24 = v25;
      if (!v25)
      {
        v24 = 9216;
      }

      if (v24 < 0x80)
      {
        v23 = 1;
      }

      else if (v24 >= 0x800)
      {
        if ((v24 & 0xF800) == 0xD800)
        {
          v23 = 2;
        }

        else
        {
          v23 = 3;
        }
      }

      else
      {
        v23 = 2;
      }

      v17 += v23;
      --v21;
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = malloc_type_malloc(v17 + 1, 0xE5333DECuLL);
  v19 = utf8_encodestr(v13, v16, v18, &v27, v17 + 1);
  if (v19)
  {
    v20 = v19;
    free(v13);
    free(v18);
    return v20;
  }

  v18[v17] = 0;
  *a3 = v18;
  *a4 = v17 + 1;
  free(v13);
  return 0;
}

void *db_copy_field_ids_with_buffer(int *a1, char *a2, void *a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      *buf = 136315650;
      v13 = "db_copy_field_ids_with_buffer";
      v14 = 1024;
      v15 = 285;
      v16 = 1024;
      v17 = v8;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v6;
    v9 = __si_assert_copy_extra_332();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 285, v11);
    free(v10);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  return internal_copy_field_ids(a1, a2, a3, a4, 0);
}

uint64_t set_offset_hint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a3 + 4);
    if (*(a3 + 4) < 0)
    {
      v11 = *(a3 + 4);
      if (v11 > 0xBF)
      {
        if (v11 > 0xDF)
        {
          if (v11 > 0xEF)
          {
            if (v11 > 0xF7)
            {
              if (v11 > 0xFB)
              {
                if (v11 > 0xFD)
                {
                  if (v11 == 255)
                  {
                    v5 = *(a3 + 5);
                    v6 = 9;
                  }

                  else
                  {
                    v5 = (*(a3 + 5) << 48) | (*(a3 + 6) << 40) | (*(a3 + 7) << 32) | (*(a3 + 8) << 24) | (*(a3 + 9) << 16) | (*(a3 + 10) << 8) | *(a3 + 11);
                    v6 = 8;
                  }
                }

                else
                {
                  v5 = ((v5 & 1) << 48) | (*(a3 + 5) << 40) | (*(a3 + 6) << 32) | (*(a3 + 7) << 24) | (*(a3 + 8) << 16) | (*(a3 + 9) << 8) | *(a3 + 10);
                  v6 = 7;
                }
              }

              else
              {
                v5 = ((v5 & 3) << 40) | (*(a3 + 5) << 32) | (*(a3 + 6) << 24) | (*(a3 + 7) << 16) | (*(a3 + 8) << 8) | *(a3 + 9);
                v6 = 6;
              }
            }

            else
            {
              v5 = ((v5 & 7) << 32) | (*(a3 + 5) << 24) | (*(a3 + 6) << 16) | (*(a3 + 7) << 8) | *(a3 + 8);
              v6 = 5;
            }
          }

          else
          {
            v5 = ((v5 & 0xF) << 24) | (*(a3 + 5) << 16) | (*(a3 + 6) << 8) | *(a3 + 7);
            v6 = 4;
          }
        }

        else
        {
          v5 = ((v5 & 0x1F) << 16) | (*(a3 + 5) << 8) | *(a3 + 6);
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
        v5 = *(a3 + 5) | ((v5 & 0x3F) << 8);
      }
    }

    else
    {
      v6 = 1;
    }

    v12 = (a3 + 4 + v6);
    v13 = *v12;
    if (*v12 < 0)
    {
      if (v13 >= 0xC0)
      {
        if (v13 >= 0xE0)
        {
          v23 = __si_assert_copy_extra_3233(0, -1);
          v24 = v23;
          v25 = "";
          if (v23)
          {
            v25 = v23;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "ldb.h", 133, "b0 < 0xE0", v25);
          free(v24);
          if (__valid_fs(-1))
          {
            MEMORY[0xBAD] = -559038737;
            abort();
          }

          MEMORY[0xC00] = -559038737;
          abort();
        }

        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      v13 = v12[v14];
    }

    v15 = *(a1 + 928);
    v16 = *(a1 + 804);
    v8 = (v15 + 8);
    pthread_rwlock_wrlock((v15 + 8));
    v17 = *(v15 + 220);
    if (v17 >= 1)
    {
      v18 = v16 & (v13 >> 5) & 1;
      v19 = a3 - a2 - 20;
      v20 = v15 + 272;
      while (*v20 != a2)
      {
        v20 += 48;
        if (!--v17)
        {
          goto LABEL_42;
        }
      }

      if (v19 <= 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v5;
      }

      if (v19 <= 0)
      {
        v18 = 0;
      }

      *(v20 + 24) = v21;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19 & ~(v19 >> 63);
    }
  }

  else
  {
    v7 = *(a1 + 928);
    v8 = (v7 + 8);
    pthread_rwlock_wrlock((v7 + 8));
    v9 = *(v7 + 220);
    if (v9 >= 1)
    {
      v10 = v7 + 272;
      while (*v10 != a2)
      {
        v10 += 48;
        if (!--v9)
        {
          goto LABEL_42;
        }
      }

      *(v10 + 24) = 0;
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
    }
  }

LABEL_42:

  return pthread_rwlock_unlock(v8);
}

void SISynchedOpPropagatingPriority(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a1 && *(a1 + 1048))
  {
    v7 = malloc_type_malloc(0x20uLL, 0x10A0040D5506429uLL);
    v7[1] = a1;
    v7[2] = a3;
    *v7 = a4;
    *(v7 + 6) = a2;
    if (a2 == 1)
    {
      v8 = delayed_op_final;
    }

    else
    {
      v8 = delayed_op_prop0;
    }

    v9 = *(a1 + 1104);

    si_enqueue_work_for_job(v9, v8, v7, 0);
  }

  else
  {

    a3(a4, 1);
  }
}

uint64_t SIFetchCSClientState(uint64_t a1, void *a2, const void *a3, int a4, void (**a5)(void, void, void))
{
  v31 = *MEMORY[0x1E69E9840];
  values = a2;
  pthread_rwlock_rdlock((a1 + 80));
  Value = CFDictionaryGetValue(*(a1 + 72), @"clientStates");
  if (Value)
  {
    v11 = CFDictionaryGetValue(Value, a2);
    if (v11)
    {
      v12 = CFDictionaryGetValue(v11, a3);
      if (v12)
      {
        v13 = v12;
        CFRetain(v12);
        pthread_rwlock_unlock((a1 + 80));
        v14 = *__error();
        v15 = _SILogForLogForCategory(10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v26 = a2;
          v27 = 2112;
          v28 = a3;
          v29 = 2112;
          v30 = v13;
          _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "Found cached client state %@ %@ %@", buf, 0x20u);
        }

        *__error() = v14;
        (a5)[2](a5, v13, 0);
        v16 = v13;
LABEL_18:
        CFRelease(v16);
        return 0;
      }
    }
  }

  pthread_rwlock_unlock((a1 + 80));
  if (!a4)
  {
    v17 = malloc_type_calloc(1uLL, 0x20uLL, 0xE0040B6E8BBF2uLL);
    v17[2] = CFRetain(a2);
    v17[3] = CFRetain(a3);
    v18 = _Block_copy(a5);
    *v17 = a1;
    v17[1] = v18;
    v19 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    pthread_mutex_lock((a1 + 1320));
    v20 = *(a1 + 1152);
    if (v20 && si_peek_queue_for_tags(v20, v19))
    {
      si_enqueue_work(*(a1 + 1152), si_fetchClientState, v17);
      pthread_mutex_unlock((a1 + 1320));
    }

    else
    {
      pthread_mutex_unlock((a1 + 1320));
      v21 = *(a1 + 1048);
      if (v21 && si_peek_queue_for_tags(v21, v19))
      {
        v22 = *(a1 + 1048);
      }

      else
      {
        v22 = *(a1 + 1088);
      }

      si_enqueue_work(v22, si_fetchClientState, v17);
    }

    v16 = v19;
    goto LABEL_18;
  }

  a5[2](a5, 0, 4);
  return 0;
}