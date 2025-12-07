void sub_1C295F650(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(a1);
}

uint64_t SIResultQueueGetEnqueuedSize(void *a1)
{
  pthread_mutex_lock((*a1 + 8));
  v2 = a1[9];
  pthread_mutex_unlock((*a1 + 8));
  return v2;
}

void *SIResultQueueCreate(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A00408576B1E0uLL);
  *(v2 + 12) = 0;
  atomic_store(1u, v2 + 2);
  v3 = malloc_type_calloc(1uLL, 0x90uLL, 0x1090040E44D38CFuLL);
  *v3 = "simple queue";
  pthread_mutex_init((v3 + 8), 0);
  pthread_cond_init((v3 + 72), 0);
  *(v3 + 31) = 0;
  *(v3 + 32) = 0;
  *(v3 + 30) = 4;
  *(v3 + 17) = malloc_type_calloc(4uLL, 8uLL, 0x80040B8603338uLL);
  *v2 = v3;
  *(v2 + 6) = 0;
  *(v2 + 20) = a1;
  return v2;
}

uint64_t SIWaitResults(uint64_t *a1, float a2)
{
  v3 = *a1;
  pthread_mutex_lock((*a1 + 8));
  si_dequeue_wait_locked(v3, a2);

  return pthread_mutex_unlock((v3 + 8));
}

uint64_t LogASTIfDebuggingEnabled(uint64_t result, const __CFString *a2, PRContext *a3)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  v5 = result;
  result = userDefaultExtendedDebuggingEnabled();
  if (!result)
  {
    return result;
  }

  v6 = *(a3 + 7);
  var1 = a3->var1;
  v8 = "ranking";
  v106 = 0u;
  v107 = 0u;
  if ((v6 & 2) == 0)
  {
    v8 = "retrieval";
  }

  v9 = "committed";
  v104 = 0uLL;
  v105 = 0uLL;
  if ((v6 & 4) == 0)
  {
    v9 = "asyoutype";
  }

  v102 = 0uLL;
  v103 = 0uLL;
  v10 = (v6 & 0x800) == 0;
  v100 = 0uLL;
  v101 = 0uLL;
  v11 = "original";
  if (!v10)
  {
    v11 = "rewrite";
  }

  v98 = 0uLL;
  v99 = 0uLL;
  v96 = 0uLL;
  v97 = 0uLL;
  v94 = 0uLL;
  v95 = 0uLL;
  *__str = 0uLL;
  v93 = 0uLL;
  v12 = @"en";
  if (snprintf(__str, 0x100uLL, "%s/ast-%s-%s-%s-%s.json", "/tmp/debug_trees", v8, v9, v11, var1) >= 0x100)
  {
    v13 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"en";
    }

    v15 = logHeader(a3, &v14->isa);
    v16 = *__error();
    v17 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    *&buf[4] = v15;
    v18 = "%@ Error: Failed to construct file path for AST log (snprintf error or truncation).";
    v19 = buf;
    v20 = v17;
    v21 = 12;
    goto LABEL_15;
  }

  v22 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
  if (v22)
  {
    v12 = v22;
  }

  v23 = logHeader(a3, &v12->isa);
  if (!a2)
  {
    v63 = *__error();
    v64 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    *buf = 138412290;
    *&buf[4] = v23;
    v65 = "%@ Error: Invalid arguments provided to log_ast_to_file.";
LABEL_88:
    v67 = buf;
    v68 = v64;
    v69 = 12;
LABEL_99:
    _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, v65, v67, v69);
    goto LABEL_100;
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
  if (!v24)
  {
    v63 = *__error();
    v66 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    *buf = 138412546;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = __str;
    v65 = "%@ Error: Could not convert filename '%s' to NSString.";
    v67 = buf;
LABEL_98:
    v68 = v66;
    v69 = 22;
    goto LABEL_99;
  }

  v80 = v12;
  v81 = a2;
  v82 = a3;
  v83 = v24;
  v84 = v23;
  v25 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v26 = [MEMORY[0x1E695DF70] array];
  v85 = v5;
  [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", v5, 0)}];
  if ([v26 count])
  {
    while (1)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [v26 lastObject];
      v29 = [v28 node];
      v30 = [v28 visited];
      if (v29)
      {
        break;
      }

      [v26 removeLastObject];
LABEL_78:
      objc_autoreleasePoolPop(v27);
      if (![v26 count])
      {
        goto LABEL_79;
      }
    }

    if (!v30)
    {
      [v28 setVisited:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v29 children])
        {
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v41 = [objc_msgSend(v29 "children")];
          v42 = [v41 countByEnumeratingWithState:&v88 objects:v108 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v89;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v89 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v88 + 1) + 8 * i);
                if (v46)
                {
                  [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", v46, 0)}];
                }
              }

              v43 = [v41 countByEnumeratingWithState:&v88 objects:v108 count:16];
            }

            while (v43);
          }
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v29 expression])
        {
          [v26 addObject:{+[PRASTStackItem itemWithNode:visited:](PRASTStackItem, "itemWithNode:visited:", objc_msgSend(v29, "expression"), 0)}];
        }
      }

      goto LABEL_78;
    }

    v86 = v27;
    [v26 removeLastObject];
    v31 = [MEMORY[0x1E695DF90] dictionary];
    [v31 setObject:&unk_1F428F458 forKeyedSubscript:@"cost"];
    [v31 setObject:&unk_1F428F3F8 forKeyedSubscript:@"flags"];
    [v31 setObject:&unk_1F428F458 forKeyedSubscript:@"bias"];
    v32 = [MEMORY[0x1E695DF70] array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [objc_msgSend(v29 "nodeType")];
      v34 = @"AST_AND";
      if ((v33 & 1) == 0)
      {
        if ([objc_msgSend(v29 nodeType])
        {
          v34 = @"AST_OR";
        }

        else
        {
          v34 = @"AST_COMPOSITE";
        }
      }

      [v31 setObject:v34 forKeyedSubscript:@"type"];
      if ([v29 children])
      {
        v116 = 0u;
        v117 = 0u;
        memset(v115, 0, sizeof(v115));
        v35 = [v29 children];
        v36 = [v35 countByEnumeratingWithState:v115 objects:buf count:16];
        if (v36)
        {
          v37 = v36;
          v38 = **&v115[16];
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (**&v115[16] != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = [v25 objectForKey:*(*&v115[8] + 8 * j)];
              if (v40)
              {
                [v32 addObject:v40];
              }
            }

            v37 = [v35 countByEnumeratingWithState:v115 objects:buf count:16];
          }

          while (v37);
        }
      }

      goto LABEL_75;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v31 setObject:@"AST_FIELD" forKeyedSubscript:@"type"];
      v47 = [v29 fieldTypeString];
      if (!v47)
      {
        v47 = [MEMORY[0x1E695DFB0] null];
      }

      [v31 setObject:v47 forKeyedSubscript:@"fieldType"];
      v48 = [v29 originalKeyword];
      if (!v48)
      {
        v48 = [MEMORY[0x1E695DFB0] null];
      }

      [v31 setObject:v48 forKeyedSubscript:@"originalFieldKeyword"];
      if ([v29 expression])
      {
        v49 = [v25 objectForKey:{objc_msgSend(v29, "expression")}];
        if (v49)
        {
          [v32 addObject:v49];
        }
      }

      goto LABEL_75;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v31 setObject:@"TERM" forKeyedSubscript:@"type"];
      DummyQPDict = createDummyQPDict();
      [DummyQPDict setObject:@"Term" forKeyedSubscript:@"field"];
      v51 = [v29 value];
      if (!v51)
      {
        v51 = [MEMORY[0x1E695DFB0] null];
      }

      [DummyQPDict setObject:v51 forKeyedSubscript:@"value"];
      [DummyQPDict setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v29, "isNegated")), @"isNegated"}];
      [DummyQPDict setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(v29, "isIgnored")), @"isIgnored"}];
      v52 = DummyQPDict;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v56 = v31;
        v55 = @"AST_UNKNOWN";
        v57 = @"type";
        goto LABEL_74;
      }

      [v31 setObject:@"QPFilter" forKeyedSubscript:@"type"];
      v53 = createDummyQPDict();
      [v53 setObject:@"QPFilter" forKeyedSubscript:@"field"];
      v54 = [v29 filterString];
      if (!v54)
      {
        v54 = [MEMORY[0x1E695DFB0] null];
      }

      [v53 setObject:v54 forKeyedSubscript:@"value"];
      v52 = v53;
    }

    v55 = [v52 copy];
    v56 = v31;
    v57 = @"qp";
LABEL_74:
    [v56 setObject:v55 forKeyedSubscript:v57];
LABEL_75:
    if ([v32 count])
    {
      [v31 setObject:objc_msgSend(v32 forKeyedSubscript:{"copy"), @"children"}];
    }

    [v25 setObject:objc_msgSend(v31 forKey:{"copy"), v29}];
    v27 = v86;
    goto LABEL_78;
  }

LABEL_79:
  v58 = [v25 objectForKey:v85];
  if (!v58)
  {
    v63 = *__error();
    v64 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    *buf = 138412290;
    *&buf[4] = v84;
    v65 = "%@ Error: Failed to build JSON representation for the AST tree.";
    goto LABEL_88;
  }

  v59 = v58;
  ClientInfo = getClientInfo(0, v82, 0);
  v61 = v82->var1;
  v108[0] = @"user_query";
  v108[1] = @"ast_tree";
  *buf = v81;
  *&buf[8] = v59;
  v108[2] = @"is_ranking";
  *&buf[16] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v82 + 7) >> 1) & 1];
  v108[3] = @"is_committed";
  v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v82 + 7) >> 2) & 1];
  v108[4] = @"is_rewrite";
  v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*(v82 + 7) >> 11) & 1];
  v108[5] = @"protection_class";
  if (v61)
  {
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v61];
  }

  else
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v62;
  v113 = v80;
  v108[6] = @"language";
  v108[7] = @"client";
  v114 = [MEMORY[0x1E696AEC0] stringWithUTF8String:ClientInfo];
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v108 count:8];
  *&v88 = 0;
  v71 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v70 options:1 error:&v88];
  if (!v71)
  {
    v63 = *__error();
    v66 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_100;
    }

    v77 = [v88 localizedDescription];
    *v115 = 138412546;
    *&v115[4] = v84;
    *&v115[12] = 2112;
    *&v115[14] = v77;
    v65 = "%@ Error: Error serializing AST to JSON: %@";
    v67 = v115;
    goto LABEL_98;
  }

  v72 = v71;
  v73 = [v83 stringByDeletingLastPathComponent];
  v74 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v74 fileExistsAtPath:v73] & 1) == 0)
  {
    v87 = 0;
    if (([v74 createDirectoryAtPath:v73 withIntermediateDirectories:1 attributes:0 error:&v87] & 1) == 0)
    {
      v16 = *__error();
      v78 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v79 = [v87 localizedDescription];
      *v115 = 138412802;
      *&v115[4] = v84;
      *&v115[12] = 2112;
      *&v115[14] = v73;
      *&v115[22] = 2112;
      *&v115[24] = v79;
      v18 = "%@ Error: Error creating directory %@ for AST log: %@";
      v19 = v115;
      v20 = v78;
      v21 = 32;
LABEL_15:
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, v18, v19, v21);
LABEL_16:
      result = __error();
      *result = v16;
      return result;
    }
  }

  result = [v72 writeToFile:v83 options:1 error:&v88];
  if ((result & 1) == 0)
  {
    v63 = *__error();
    v75 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [v88 localizedDescription];
      *v115 = 138412802;
      *&v115[4] = v84;
      *&v115[12] = 2112;
      *&v115[14] = v83;
      *&v115[22] = 2112;
      *&v115[24] = v76;
      v65 = "%@ Error: Error writing JSON AST to file %@: %@";
      v67 = v115;
      v68 = v75;
      v69 = 32;
      goto LABEL_99;
    }

LABEL_100:
    result = __error();
    *result = v63;
  }

  return result;
}

uint64_t createDummyQPDict(void)
{
  v0 = MEMORY[0x1E695DF90];
  v1 = [MEMORY[0x1E695DFB0] null];
  return [v0 dictionaryWithObjectsAndKeys:{&unk_1F428F410, @"op", &unk_1F428F458, @"weight", &unk_1F428F458, @"cost", v1, @"field", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"value", @"0x0", @"flags", 0}];
}

query_node *pommesDefaultTree(query_node *a1, PRContext *a2, int a3)
{
  if ((*(a2 + 28) & 2) != 0)
  {
    if (a1 && db_count_query_tree(a1))
    {
      __p = MEMORY[0x1E69E9820];
      v33 = 0x40000000;
      v34 = __db_query_tree_apply_block_block_invoke;
      v35 = &unk_1E8198ED0;
      v36 = &__block_literal_global_21_15415;
      db_query_tree_apply_block_with_meta(a1, &__p, &__block_literal_global_25_15416);
      v14 = v13;
      var4 = a2->var4;
      if (!getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4])
      {
        std::mutex::lock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
        if (!getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4])
        {
          operator new();
        }

        std::mutex::unlock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
      }

      v16 = getStemmingRankingAttributeScores(PRBundleIDType)::ans[var4];
      RankingAttributeScores = getRankingAttributeScores(a2);
      {
        MailRankingNameAttributeScores(void)::_mailAttributeScores = 0u;
        unk_1EDD78918 = 0u;
        dword_1EDD78928 = 1065353216;
      }

      if (MailRankingNameAttributeScores(void)::onceToken[0] != -1)
      {
        dispatch_once(MailRankingNameAttributeScores(void)::onceToken, &__block_literal_global_231);
      }

      WildCardAllowedFields = getWildCardAllowedFields(a2->var4);
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = ___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke;
      v26 = &__block_descriptor_72_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
      v27 = a2;
      v28 = RankingAttributeScores;
      v29 = WildCardAllowedFields;
      v30 = &MailRankingNameAttributeScores(void)::_mailAttributeScores;
      v31 = v16;
      __p = MEMORY[0x1E69E9820];
      v33 = 0x40000000;
      v34 = __db_query_tree_apply_block_block_invoke;
      v35 = &unk_1E8198ED0;
      v36 = &v23;
      db_query_tree_apply_block_with_meta(v14, &__p, &__block_literal_global_1860);
      v23 = v19;
      if (v19 && a2->var3 == 1)
      {
        v20 = v19;
        QueryNode = createQueryNode("_kMDItemHasEmailContentURL", "1", 0, 1, 0, 0.8, 1.0);
        v23 = makeAndNode(v20, QueryNode);
      }
    }

    else
    {
      v23 = 0;
    }

    db_optimize_query_tree(&v23);
    v11 = v23;
    if (a3)
    {
      normalizeQueryNode(v23, 1.0);
    }
  }

  else if (a1 && db_count_query_tree(a1))
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 0x40000000;
    v25 = __db_query_tree_apply_block_block_invoke;
    v26 = &unk_1E8198ED0;
    v27 = &__block_literal_global_21_15415;
    db_query_tree_apply_block_with_meta(a1, &v23, &__block_literal_global_25_15416);
    v6 = v5;
    IndexAttributeScores = getIndexAttributeScores(a2->var4);
    v8 = getIndexAttributeScores(a2->var4);
    v9 = getWildCardAllowedFields(a2->var4);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = ___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke;
    v26 = &__block_descriptor_64_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
    v27 = v9;
    v28 = a2;
    v29 = v8;
    v30 = IndexAttributeScores;
    __p = MEMORY[0x1E69E9820];
    v33 = 0x40000000;
    v34 = __db_query_tree_apply_block_block_invoke;
    v35 = &unk_1E8198ED0;
    v36 = &v23;
    db_query_tree_apply_block_with_meta(v6, &__p, &__block_literal_global_11_1864);
    return v10;
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_1C2960B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::mutex::unlock(&getStemmingRankingAttributeScores(PRBundleIDType)::mu);
  _Unwind_Resume(a1);
}

uint64_t ___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v190 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return v2;
  }

  v3 = *(a2 + 16);
  if (*(a2 + 48) != 4)
  {
    if (!v3)
    {
      return v2;
    }

    v4 = *(v3 + 24);
LABEL_17:
    if (v4 != 15)
    {
      return v2;
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    return v2;
  }

  v4 = *(v3 + 24);
  HIDWORD(v6) = v4 - 1;
  LODWORD(v6) = v4 - 1;
  v5 = v6 >> 1;
  v132 = v5 > 6;
  v7 = (1 << v5) & 0x65;
  if (v132 || v7 == 0)
  {
    goto LABEL_17;
  }

  if (v4 == 15)
  {
LABEL_18:
    v12 = 16;
LABEL_19:
    *(a2 + 48) = v12;
    return v2;
  }

  if ((*(v3 + 36) & 2) != 0)
  {
    *(v3 + 52) = 0;
    v12 = 32;
    goto LABEL_19;
  }

  v180 = 0uLL;
  v181 = 0;
  v10 = *v3;
  if (*v3 && *v10 == 42 && !v10[1] || query_node_is_double_star(a2))
  {
    v11 = 1;
  }

  else if (*v3)
  {
    std::string::basic_string[abi:nn200100]<0>(&v174, *v3);
    if (SHIBYTE(v181) < 0)
    {
      operator delete(v180);
    }

    v11 = 0;
    v180 = v174;
    v181 = v175;
  }

  else
  {
    v11 = 0;
  }

  if (isPhotosAttribute(&v180))
  {
    *(v2 + 48) = 16;
    goto LABEL_52;
  }

  v14 = *(v2 + 16);
  v15 = *(v14 + 72);
  if (v15)
  {
    v16 = strlen(*(v14 + 72));
  }

  else
  {
    v16 = 0;
  }

  v17 = HIBYTE(v181);
  if (SHIBYTE(v181) < 0)
  {
    v17 = *(&v180 + 1);
  }

  v18 = 1.0;
  if (v17)
  {
    v19 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(*(a1 + 40), &v180);
    if (v19)
    {
      v18 = v19[10];
    }
  }

  *(v14 + 52) = v18;
  *(v14 + 56) = 0;
  if (((v11 & 1) != 0 || !*v14 || is_tokenizable_searchable_string_field(*v14)) && v16 && (v16 != 1 || *v15 != 42))
  {
    v166 = *(*(v2 + 16) + 32);
    v20 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v16);
    CFStringAppendCString(Mutable, *(*(v2 + 16) + 72), 0x8000100u);
    if (Mutable)
    {
      v22 = CFLocaleCopyCurrent();
      CFStringLowercase(Mutable, v22);
      if (v22)
      {
        CFRelease(v22);
      }

      QueryTokens = CreateQueryTokens(Mutable, (v166 >> 2) & 1);
      v168 = *QueryTokens;
      if (!v168 || (Count = CFArrayGetCount(v168)) == 0)
      {
        CFRelease(Mutable);
        goto LABEL_51;
      }

      v25 = *(v2 + 16);
      v161 = *(v25 + 24);
      if (v161 == 5)
      {
        *(v25 + 52) = 0;
        *(v2 + 48) = 32;
        CFRelease(Mutable);
LABEL_51:
        freeQueryTokensContext(QueryTokens);
        goto LABEL_52;
      }

      v162 = v166 & 0xFFFFFFFEFFFFFFFBLL;
      v26 = v166 & 0xFFFFFFFEFFFFFFBBLL;
      v154 = Mutable;
      v158 = v20;
      v153 = QueryTokens;
      if (Count <= 2)
      {
        v35 = 0;
        goto LABEL_93;
      }

      v27 = *(*(a1 + 32) + 28);
      if ((v27 & 0x400) != 0)
      {
        v35 = 0;
LABEL_95:
        v155 = v35;
        if ((v27 & 0x400) != 0)
        {
          v81 = 0;
          goto LABEL_151;
        }

        v54 = 0;
        v55 = 0;
        v160 = (v166 & 0x40) >> 6;
        v56 = (v166 & 0x100000000) == 0;
        v57 = Count == 2;
        NodeForToken = (v162 | (v57 << 30) | 0x20000000);
        if (Count != 2)
        {
          v56 = 0;
        }

        LODWORD(v164) = v56;
        v159 = v26;
        v58 = flt_1C2BF9BC8[(v166 & 0x40) == 0];
        v163 = (v26 | (v57 << 30) | 0x20000000);
        v59 = Count - 1;
        while (1)
        {
          values[0] = 0;
          values[1] = 0;
          v192.location = v55;
          v192.length = 2;
          CFArrayGetValues(v168, v192, values);
          v60 = hasTrailingAsterisk(values[1]);
          Length = CFStringGetLength(values[0]);
          v62 = hasTrailingAsterisk(values[0]) ? 3 : 2;
          if (Length >= v62)
          {
            v63 = CFStringGetLength(values[1]);
            v64 = v60 ? 3 : 2;
            if (v63 >= v64)
            {
              break;
            }
          }

LABEL_146:
          if (v59 == ++v55)
          {
            v35 = makeAndNode(v155, v54);
            Mutable = v154;
            QueryTokens = v153;
            v26 = v159;
LABEL_148:
            v81 = Count == 1;
            if (Count >= 1)
            {
              v155 = v35;
LABEL_151:
              v82 = 1;
              v83 = Count;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v168, v82 - 1);
                v85 = hasOnlyOptionalSpecialChar(ValueAtIndex);
                if (!v85)
                {
                  break;
                }

                v132 = v82++ < v83;
              }

              while (v132);
              v163 = 0;
              v87 = 0;
              v156 = (v166 & 0x40) >> 6;
              LODWORD(v160) = v85 | BYTE4(v166) & 1;
              v88 = flt_1C2BF9BD0[(v166 & 0x40) == 0];
              v89 = 0x40000000;
              if (!v81)
              {
                v89 = 0;
              }

              v159 = v89 | v162;
              v157 = v89 | v26;
              v152 = v162 | 0x80000000;
              *&v86 = 134219010;
              v151 = v86;
              while (2)
              {
                v173 = 1065353216;
                v172 = 0u;
                v171 = 0u;
                v90 = CFArrayGetValueAtIndex(v168, v87);
                v170 = v90;
                v91 = CFStringGetLength(v90);
                if (!v91 || hasOnlyOptionalSpecialChar(v90))
                {
                  goto LABEL_254;
                }

                v92 = hasTrailingAsterisk(v90);
                values[0] = 0;
                values[1] = 0;
                v189 = 0;
                utf8QueryString(values, &v170, 1, 0);
                v164 = 0;
                if (v92)
                {
                  if (--v91)
                  {
                    v193.location = 0;
                    v193.length = v91;
                    v90 = CFStringCreateWithSubstring(v158, v90, v193);
                    v170 = v90;
                    v164 = v90;
                    break;
                  }

LABEL_252:
                  if (SHIBYTE(v189) < 0)
                  {
                    operator delete(values[0]);
                  }

LABEL_254:
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v172);
                  v145 = v171;
                  *&v171 = 0;
                  if (v145)
                  {
                    operator delete(v145);
                  }

                  if (++v87 == Count)
                  {
                    Mutable = v154;
                    QueryTokens = v153;
                    v35 = v155;
                    v149 = v163;
                    goto LABEL_268;
                  }

                  continue;
                }

                break;
              }

              v93 = 0.0;
              if ((v160 & 1) == 0)
              {
                v94 = hasOnlyOptionalSpecialChar(v90);
                v93 = 1.1755e-38;
                if (!v94)
                {
                  v93 = 0.0;
                }
              }

              if (v92)
              {
                v95 = 1.0;
              }

              else
              {
                v95 = v88;
              }

              v177 = 0;
              v178 = 0;
              v179 = 0;
              *&v174 = v159;
              *(&v174 + 1) = __PAIR64__(LODWORD(v93), LODWORD(v95));
              v175 = &v180;
              v176 = v161;
              v96 = *(a1 + 40);
              v178 = *(a1 + 48);
              BYTE5(v179) = v92;
              if (v189 >= 0)
              {
                v97 = values;
              }

              else
              {
                v97 = values[0];
              }

              NodeForToken = queryNodeForToken(v97, v96, &v174, *(a1 + 32));
              if (NodeForToken)
              {
                std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v171, values, values);
              }

              if (v92)
              {
                if ((SHIBYTE(v189) & 0x8000000000000000) != 0)
                {
                  v99 = values[0];
                  v98 = --values[1];
                }

                else
                {
                  v98 = SHIBYTE(v189) - 1;
                  HIBYTE(v189) = v98 & 0x7F;
                  v99 = values;
                }

                *(v99 + v98) = 0;
              }

              v100 = HIBYTE(v189);
              v101 = HIBYTE(v189);
              if (v189 < 0)
              {
                v100 = values[1];
              }

              if (!v100)
              {
                goto LABEL_194;
              }

              if (v92 && (v166 & 0x40) != 0)
              {
                DWORD2(v174) = 1067534254;
                if (v189 >= 0)
                {
                  v102 = values;
                }

                else
                {
                  v102 = values[0];
                }

                v103 = queryNodeForToken(v102, *(a1 + 40), &v174, *(a1 + 32));
                v101 = HIBYTE(v189);
                goto LABEL_189;
              }

              if ((v156 | v92))
              {
                v103 = 0;
LABEL_189:
                *&v174 = v157;
                DWORD2(v174) = 1068792545;
                BYTE6(v179) = 1;
                if (v101 >= 0)
                {
                  v104 = values;
                }

                else
                {
                  v104 = values[0];
                }

                v105 = queryNodeForToken(v104, *(a1 + 40), &v174, *(a1 + 32));
                v106 = makeOrNode(v103, v105);
                BYTE6(v179) = 0;
                if (v106)
                {
                  v107 = v106;
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v171, values, values);
                  NodeForToken = makeOrNode(NodeForToken, v107);
                }
              }

              else
              {
LABEL_194:
                BYTE6(v179) = 0;
              }

              if ((v166 & 0x100000000) == 0)
              {
                if (hasTrailingOptionalSpecialChar(v90))
                {
                  v108 = v91;
                  while (1)
                  {
                    v132 = v108-- < 1;
                    if (v132)
                    {
                      break;
                    }

                    CharacterAtIndex = CFStringGetCharacterAtIndex(v90, v108);
                    if (!isOptionalSpecialChar(CharacterAtIndex))
                    {
                      v194.length = v108 + 1;
                      v194.location = 0;
                      v110 = CFStringCreateWithSubstring(v158, v90, v194);
                      v169 = v110;
                      memset(buf, 0, sizeof(buf));
                      utf8QueryString(buf, &v169, 1, 0);
                      CFRelease(v110);
                      if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v171, *(&v171 + 1), buf))
                      {
                        *&v174 = v152;
                        DWORD2(v174) = 1061997773;
                        v111 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                        v112 = queryNodeForToken(v111, *(a1 + 40), &v174, *(a1 + 32));
                        if (v112)
                        {
                          v113 = v112;
                          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v171, buf, buf);
                          NodeForToken = makeOrNode(NodeForToken, v113);
                        }
                      }

                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }

                      break;
                    }
                  }
                }

                if ((*(*(a1 + 32) + 29) & 0x10) != 0 && CFStringGetLength(v90) >= 2)
                {
                  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
                  v195.length = CFStringGetLength(v90) - v92;
                  v195.location = 0;
                  if (!CFStringFindCharacterFromSet(v90, Predefined, v195, 0, 0))
                  {
                    v169 = convertCommaSeparatedNumberTokenWithNumberFormatter(v90);
                    if (CFStringGetLength(v169) >= 1)
                    {
                      memset(buf, 0, sizeof(buf));
                      utf8QueryString(buf, &v169, 1, 0);
                      if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v171, *(&v171 + 1), buf))
                      {
                        *&v174 = v152;
                        DWORD2(v174) = 1065353216;
                        v146 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                        v147 = queryNodeForToken(v146, *(a1 + 40), &v174, *(a1 + 32));
                        if (v147)
                        {
                          v148 = v147;
                          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v171, buf, buf);
                          NodeForToken = makeOrNode(NodeForToken, v148);
                        }
                      }

                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }
                  }
                }

                v115 = *(*(a1 + 32) + 40);
                if (v115)
                {
                  Value = CFDictionaryGetValue(v115, v170);
                  v117 = Value;
                  if (Value)
                  {
                    v118 = CFArrayGetCount(Value);
                    if (v118 >= 1)
                    {
                      for (i = 0; i != v118; ++i)
                      {
                        v120 = CFArrayGetValueAtIndex(v117, i);
                        v121 = [v120 variation];
                        v169 = v121;
                        if (CFStringGetLength(v121))
                        {
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v169, 1, 0);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v171, *(&v171 + 1), buf) || [v120 type] == 1)
                          {
                            v122 = [v120 type];
                            [v120 confidence];
                            v124 = v123;
                            v125 = (v166 & 0x40) == 0;
                            if (v122 == 1)
                            {
                              v126 = 2155872256;
                            }

                            else
                            {
                              v126 = 0x80000000;
                            }

                            v127 = hasTrailingAsterisk(v121);
                            v128 = v88 * v124;
                            if (v127)
                            {
                              v128 = v124;
                            }

                            *&v174 = v126 | v162;
                            *(&v174 + 2) = v128;
                            BYTE6(v179) = v125 & ~v127;
                            if ((buf[23] & 0x80u) == 0)
                            {
                              v129 = buf;
                            }

                            else
                            {
                              v129 = *buf;
                            }

                            v130 = queryNodeForToken(v129, *(a1 + 40), &v174, *(a1 + 32));
                            if (v130)
                            {
                              v131 = v130;
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(&v171, buf, buf);
                              NodeForToken = makeOrNode(NodeForToken, v131);
                            }
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }
                        }
                      }
                    }
                  }
                }

                v132 = (*(*(a1 + 32) + 28) & 0x8804) != 0x8000 || v91 < 7;
                if (!v132)
                {
                  v133 = v189 >= 0 ? values : values[0];
                  v134 = PRPommesStemWordWithCString(v133, 100, 0);
                  if (v134)
                  {
                    v135 = v134;
                    if (v189 >= 0)
                    {
                      v136 = HIBYTE(v189);
                    }

                    else
                    {
                      v136 = values[1];
                    }

                    if (&v136[-strlen(v134)] == 1)
                    {
                      v137 = *__error();
                      v138 = _SILogForLogForCategory(18);
                      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                      {
                        v139 = *(a1 + 32);
                        v141 = *v139;
                        v140 = v139[1];
                        v142 = values;
                        if (v189 < 0)
                        {
                          v142 = values[0];
                        }

                        *buf = v151;
                        *&buf[4] = v141;
                        *&buf[12] = 2080;
                        *&buf[14] = v140;
                        *&buf[22] = 2080;
                        v183 = v135;
                        v184 = 2080;
                        v185 = v142;
                        v186 = 1024;
                        v187 = 0;
                        _os_log_impl(&dword_1C278D000, v138, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Top Hits) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                      }

                      *__error() = v137;
                      *&v174 = v152;
                      v143 = *(a1 + 32);
                      DWORD2(v174) = 1065353216;
                      LODWORD(v179) = 0;
                      v144 = queryNodeForToken(v135, *(a1 + 64), &v174, v143);
                      NodeForToken = makeOrNode(NodeForToken, v144);
                    }

                    free(v135);
                  }
                }
              }

              if (v164)
              {
                CFRelease(v164);
              }

              v163 = makeAndNode(v163, NodeForToken);
              goto LABEL_252;
            }

            v149 = 0;
LABEL_268:
            calloc = makeAndNode(v35, v149);
            CFRelease(Mutable);
            freeQueryTokensContext(QueryTokens);
            if (!calloc)
            {
              calloc = query_calloc();
              calloc[24] = 32;
            }

            if (calloc != v2)
            {
              db_free_query_node(v2);
              v2 = calloc;
            }

            goto LABEL_52;
          }
        }

        if (v60)
        {
          v65 = 3.3;
        }

        else
        {
          v65 = v58;
        }

        v177 = 0;
        v178 = 0;
        v179 = 0;
        *&v174 = NodeForToken;
        *(&v174 + 1) = LODWORD(v65) | 0x80000000000000;
        v175 = &v180;
        v176 = v161;
        v178 = *(a1 + 48);
        BYTE5(v179) = v60;
        memset(buf, 0, sizeof(buf));
        utf8QueryString(buf, values, 2, 0);
        if ((buf[23] & 0x80u) == 0)
        {
          v66 = buf;
        }

        else
        {
          v66 = *buf;
        }

        v67 = queryNodeForToken(v66, *(a1 + 40), &v174, *(a1 + 32));
        if (v164 && *(*(a1 + 32) + 24) == 1)
        {
          v68 = HIBYTE(v181);
          if (SHIBYTE(v181) < 0)
          {
            v68 = *(&v180 + 1);
          }

          if (!v68 || std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(*(a1 + 56), &v180))
          {
            *values = vextq_s8(*values, *values, 8uLL);
            v171 = 0uLL;
            *&v172 = 0;
            utf8QueryString(&v171, values, 2, 1);
            v69 = (SBYTE7(v172) & 0x80u) == 0 ? &v171 : v171;
            v70 = queryNodeForToken(v69, *(a1 + 56), &v174, *(a1 + 32));
            v67 = makeOrNode(v67, v70);
            if (SBYTE7(v172) < 0)
            {
              operator delete(v171);
            }
          }
        }

        if (v60)
        {
          if ((buf[23] & 0x8000000000000000) != 0)
          {
            v72 = *buf;
            v71 = --*&buf[8];
          }

          else
          {
            v71 = buf[23] - 1;
            buf[23] = v71 & 0x7F;
            v72 = buf;
          }

          v72[v71] = 0;
        }

        v73 = buf[23];
        v74 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v73 = *&buf[8];
        }

        if (!v73)
        {
          v77 = 0;
          goto LABEL_144;
        }

        if (v60 && (v166 & 0x40) != 0)
        {
          DWORD2(v174) = 1082461782;
          if ((buf[23] & 0x80u) == 0)
          {
            v75 = buf;
          }

          else
          {
            v75 = *buf;
          }

          v76 = queryNodeForToken(v75, *(a1 + 40), &v174, *(a1 + 32));
          v74 = buf[23];
        }

        else
        {
          v76 = 0;
          v77 = 0;
          if (((v160 | v60) & 1) == 0)
          {
            goto LABEL_144;
          }
        }

        *&v174 = v163;
        DWORD2(v174) = 1083499872;
        BYTE6(v179) = 1;
        if (v74 >= 0)
        {
          v78 = buf;
        }

        else
        {
          v78 = *buf;
        }

        v79 = queryNodeForToken(v78, *(a1 + 40), &v174, *(a1 + 32));
        v77 = makeOrNode(v76, v79);
LABEL_144:
        v80 = makeOrNode(v67, v77);
        v54 = makeAndNode(v54, v80);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_146;
      }

      v28 = v166 & 0xFFFFFFFEFFFFFFBBLL;
      NodeForToken = &v151;
      v29 = Count;
      MEMORY[0x1EEE9AC00](v24);
      v31 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v31, v30);
      v191.location = 0;
      v191.length = v29;
      CFArrayGetValues(v168, v191, v31);
      v32 = 0;
      do
      {
        v33 = CFStringGetLength(*&v31[8 * v32]);
        if (hasTrailingAsterisk(*&v31[8 * v32]))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        ++v32;
      }

      while (Count > v32 && v33 >= v34);
      if (v33 < v34)
      {
        v35 = 0;
        v26 = v28;
LABEL_93:
        if (Count < 2)
        {
          goto LABEL_148;
        }

        v27 = *(*(a1 + 32) + 28);
        goto LABEL_95;
      }

      v36 = (v166 & 0x40) == 0;
      memset(buf, 0, sizeof(buf));
      v37 = Count;
      utf8QueryString(buf, v31, Count, 0);
      v38 = hasTrailingAsterisk(*&v31[8 * v37 - 8]);
      v39 = v38;
      v40 = flt_1C2BF9BC0[v36];
      *&v174 = v162 | 0x40000000;
      if (v38)
      {
        v40 = 7.8;
      }

      *(&v174 + 1) = LODWORD(v40) | 0x80000000000000;
      v177 = 0;
      v175 = &v180;
      v176 = v161;
      v41 = *(a1 + 40);
      v178 = *(a1 + 48);
      v179 = 0;
      BYTE5(v179) = v38;
      if ((buf[23] & 0x80u) == 0)
      {
        v42 = buf;
      }

      else
      {
        v42 = *buf;
      }

      v43 = queryNodeForToken(v42, v41, &v174, *(a1 + 32));
      if (v39)
      {
        if ((buf[23] & 0x8000000000000000) != 0)
        {
          v45 = *buf;
          v44 = --*&buf[8];
        }

        else
        {
          v44 = buf[23] - 1;
          buf[23] = v44 & 0x7F;
          v45 = buf;
        }

        v45[v44] = 0;
      }

      v46 = buf[23];
      v47 = buf[23];
      if ((buf[23] & 0x80u) != 0)
      {
        v46 = *&buf[8];
      }

      if (!v46)
      {
        v50 = 0;
        v26 = v28;
        goto LABEL_91;
      }

      if (v39 && (v166 & 0x40) != 0)
      {
        DWORD2(v174) = 1092435837;
        if ((buf[23] & 0x80u) == 0)
        {
          v48 = buf;
        }

        else
        {
          v48 = *buf;
        }

        v49 = queryNodeForToken(v48, *(a1 + 40), &v174, *(a1 + 32));
        v47 = buf[23];
        v26 = v28;
      }

      else
      {
        v49 = 0;
        v50 = 0;
        v26 = v28;
        if (((v39 | (v166 >> 6)) & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      *&v174 = v26 | 0x40000000;
      DWORD2(v174) = 1093662671;
      BYTE6(v179) = 1;
      if (v47 >= 0)
      {
        v51 = buf;
      }

      else
      {
        v51 = *buf;
      }

      v52 = queryNodeForToken(v51, *(a1 + 40), &v174, *(a1 + 32));
      v50 = makeOrNode(v49, v52);
LABEL_91:
      v35 = makeOrNode(v43, v50);
      if (buf[23] < 0)
      {
        v53 = v35;
        operator delete(*buf);
        v35 = v53;
      }

      goto LABEL_93;
    }
  }

LABEL_52:
  if (SHIBYTE(v181) < 0)
  {
    operator delete(v180);
  }

  return v2;
}

void sub_1C2961FB8(_Unwind_Exception *a1)
{
  if (*(v1 - 185) < 0)
  {
    operator delete(*(v1 - 208));
  }

  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 - 336);
  if (*(v1 - 217) < 0)
  {
    operator delete(*(v1 - 240));
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v131 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a2 + 48) == 4)
    {
      v3 = *(a2 + 16);
      if (v3)
      {
        v4 = *(v3 + 24);
        HIDWORD(v6) = v4 - 1;
        LODWORD(v6) = v4 - 1;
        v5 = v6 >> 1;
        v59 = v5 > 6;
        v7 = (1 << v5) & 0x65;
        v8 = v59 || v7 == 0;
        if (!v8 && v4 != 15)
        {
          v123 = 0uLL;
          v124 = 0;
          is_double_star = query_node_is_double_star(a2);
          v12 = is_double_star;
          v13 = *v3;
          if (*v3 && *v13 == 42)
          {
            v14 = v13[1] == 0;
            if (is_double_star)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v14 = 0;
            if (is_double_star)
            {
              goto LABEL_20;
            }
          }

          if (*v3)
          {
            std::string::basic_string[abi:nn200100]<0>(&v111, *v3);
            if (SHIBYTE(v124) < 0)
            {
              operator delete(v123);
            }

            v123 = v111;
            v124 = v112;
          }

LABEL_20:
          if (isPhotosAttribute(&v123))
          {
            *(v2 + 48) = 16;
            goto LABEL_190;
          }

          v15 = *(v2 + 16);
          v16 = v15[9];
          if (v16)
          {
            v17 = strlen(v15[9]);
            if (v12)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v17 = 0;
            if (v12)
            {
              goto LABEL_28;
            }
          }

          if (*v15 && (is_tokenizable_searchable_string_field(*v15) & 1) == 0)
          {
            if (v17)
            {
              v93 = v14;
            }

            else
            {
              v93 = 0;
            }

            if (!v93)
            {
              goto LABEL_190;
            }

LABEL_29:
            if (v17 == 1 && *v16 == 42)
            {
              goto LABEL_190;
            }

            v18 = *(*(v2 + 16) + 32);
            alloc = *MEMORY[0x1E695E480];
            Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], v17);
            CFStringAppendCString(Mutable, *(*(v2 + 16) + 72), 0x8000100u);
            if (!Mutable)
            {
              goto LABEL_190;
            }

            v20 = CFLocaleCopyCurrent();
            CFStringLowercase(Mutable, v20);
            if (v20)
            {
              CFRelease(v20);
            }

            QueryTokens = CreateQueryTokens(Mutable, (v18 >> 2) & 1);
            v22 = QueryTokens;
            v23 = *QueryTokens;
            if (*QueryTokens)
            {
              Count = CFArrayGetCount(*QueryTokens);
              v25 = Count;
              if (Count)
              {
                v103 = *(*(v2 + 16) + 24);
                v122 = 1065353216;
                memset(v121, 0, sizeof(v121));
                v97 = v22;
                v98 = Mutable;
                if (Count < 1)
                {
                  *&v106[4] = 0;
LABEL_185:
                  CFRelease(v98);
                  calloc = *&v106[4];
                  freeQueryTokensContext(v97);
                  if (!*&v106[4])
                  {
                    calloc = query_calloc();
                    calloc[24] = 32;
                  }

                  if (calloc != v2)
                  {
                    db_free_query_node(v2);
                    v2 = calloc;
                  }

                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v121);
                  goto LABEL_190;
                }

                v102 = v18;
                v105 = v18 & 0xFFFFFFFEFFFFFFFBLL;
                v26 = 1;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v23, v26 - 1);
                  v28 = hasOnlyOptionalSpecialChar(ValueAtIndex);
                  if (!v28)
                  {
                    break;
                  }

                  v59 = v26++ < v25;
                }

                while (v59);
                *&v106[8] = 0;
                v30 = 0;
                v109 = v25;
                *v106 = BYTE4(v18) & 1 | v28;
                v101 = v105 | ((v25 == 1) << 30);
                if (v103 == 5)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = BYTE4(v18) & 1;
                }

                v100 = v31;
                v99 = v31 ^ 1;
                *&v29 = 134219010;
                v96 = v29;
                while (1)
                {
                  *v118 = 0u;
                  *v119 = 0u;
                  v120 = 1065353216;
                  v32 = CFArrayGetValueAtIndex(v23, v30);
                  key = v32;
                  Length = CFStringGetLength(v32);
                  if (Length)
                  {
                    break;
                  }

LABEL_99:
                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v119[0]);
                  v57 = v118[0];
                  v118[0] = 0;
                  if (v57)
                  {
                    operator delete(v57);
                  }

                  if (++v30 == v109)
                  {
                    goto LABEL_185;
                  }
                }

                v34 = hasTrailingAsterisk(v32);
                memset(&__p, 0, sizeof(__p));
                utf8QueryString(&__p, &key, 1, 0);
                if (v34)
                {
                  if (!--Length)
                  {
LABEL_97:
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_99;
                  }

                  v132.location = 0;
                  v132.length = Length;
                  v32 = CFStringCreateWithSubstring(alloc, v32, v132);
                  key = v32;
                  cf = v32;
                }

                else
                {
                  cf = 0;
                }

                v35 = (v106[0] & 1) == 0 && hasOnlyOptionalSpecialChar(v32);
                if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*&v121[0], *(&v121[0] + 1), &__p) && !v35)
                {
                  *&v114[8] = 0;
                  v115 = 0;
                  v111 = v101;
                  v112 = &v123;
                  v113 = v103;
                  *v114 = v103 == 5;
                  v36 = *(a1 + 40);
                  *&v114[4] = *(a1 + 32);
                  BYTE5(v115) = v34;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  NodeForToken = queryNodeForToken(p_p, *(a1 + 48), &v111, v36);
                  if (NodeForToken)
                  {
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v121, &__p, &__p);
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v118, &__p, &__p);
                  }

                  if ((v102 & 0x100000000) == 0)
                  {
                    if (hasTrailingOptionalSpecialChar(v32))
                    {
                      v38 = Length - v34;
                      while (1)
                      {
                        v59 = v38-- < 1;
                        if (v59)
                        {
                          break;
                        }

                        CharacterAtIndex = CFStringGetCharacterAtIndex(v32, v38);
                        if (!isOptionalSpecialChar(CharacterAtIndex))
                        {
                          v133.length = v38 + 1;
                          v133.location = 0;
                          v40 = CFStringCreateWithSubstring(alloc, v32, v133);
                          v110.__r_.__value_.__r.__words[0] = v40;
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v110, 1, 0);
                          CFRelease(v40);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v118[0], v118[1], buf))
                          {
                            *&v111 = v105 | 0x80000000;
                            v41 = (buf[23] & 0x80u) == 0 ? buf : *buf;
                            v42 = queryNodeForToken(v41, *(a1 + 48), &v111, *(a1 + 40));
                            if (v42)
                            {
                              v43 = v42;
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v118, buf, buf);
                              NodeForToken = makeOrNode(NodeForToken, v43);
                            }
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }

                          break;
                        }
                      }
                    }

                    if ((*(*(a1 + 40) + 29) & 0x10) != 0 && CFStringGetLength(v32) >= 2)
                    {
                      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLetter);
                      v134.length = CFStringGetLength(v32) - v34;
                      v134.location = 0;
                      if (!CFStringFindCharacterFromSet(v32, Predefined, v134, 0, 0))
                      {
                        v110.__r_.__value_.__r.__words[0] = convertCommaSeparatedNumberTokenWithNumberFormatter(v32);
                        if (CFStringGetLength(v110.__r_.__value_.__l.__data_) >= 1)
                        {
                          memset(buf, 0, sizeof(buf));
                          utf8QueryString(buf, &v110, 1, 0);
                          if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v118[0], v118[1], buf))
                          {
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v118, buf, buf);
                            *&v111 = v105 | 0x80000000;
                            if ((buf[23] & 0x80u) == 0)
                            {
                              v61 = buf;
                            }

                            else
                            {
                              v61 = *buf;
                            }

                            v62 = queryNodeForToken(v61, *(a1 + 48), &v111, *(a1 + 40));
                            NodeForToken = makeOrNode(NodeForToken, v62);
                          }

                          if (buf[23] < 0)
                          {
                            operator delete(*buf);
                          }
                        }
                      }
                    }

                    v45 = *(*(a1 + 40) + 40);
                    if (v45)
                    {
                      Value = CFDictionaryGetValue(v45, key);
                      v47 = Value;
                      if (Value)
                      {
                        v48 = CFArrayGetCount(Value);
                        if (v48 >= 1)
                        {
                          for (i = 0; i != v48; ++i)
                          {
                            v50 = CFArrayGetValueAtIndex(v47, i);
                            v110.__r_.__value_.__r.__words[0] = [v50 variation];
                            if (CFStringGetLength(v110.__r_.__value_.__l.__data_))
                            {
                              memset(buf, 0, sizeof(buf));
                              utf8QueryString(buf, &v110, 1, 0);
                              if (!std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v118[0], v118[1], buf) || [v50 type] == 1)
                              {
                                v51 = [v50 type];
                                v52 = 0x80000000;
                                if (v51 == 1)
                                {
                                  v52 = 2155872256;
                                }

                                *&v111 = v52 | v105;
                                if ((buf[23] & 0x80u) == 0)
                                {
                                  v53 = buf;
                                }

                                else
                                {
                                  v53 = *buf;
                                }

                                v54 = queryNodeForToken(v53, *(a1 + 48), &v111, *(a1 + 40));
                                if (v54)
                                {
                                  v55 = v54;
                                  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v118, buf, buf);
                                  NodeForToken = makeOrNode(NodeForToken, v55);
                                }
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  if (v100)
                  {
                    goto LABEL_93;
                  }

                  v58 = *(*(a1 + 40) + 28);
                  v59 = (v58 & 0x804) != 0 || Length < 7;
                  if (!v59)
                  {
                    memset(&v110, 0, sizeof(v110));
                    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    if (v34)
                    {
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        size = __p.__r_.__value_.__l.__size_;
                      }

                      std::string::basic_string(&v110, &__p, 0, size - 1, buf);
                    }

                    else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                    {
                      std::string::__init_copy_ctor_external(&v110, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v110 = __p;
                    }

                    if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v63 = &v110;
                    }

                    else
                    {
                      v63 = v110.__r_.__value_.__r.__words[0];
                    }

                    v64 = PRPommesStemWordWithCString(v63, 100, 0);
                    if (v64)
                    {
                      v65 = v64;
                      std::string::basic_string[abi:nn200100]<0>(buf, v64);
                      v66 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v118[0], v118[1], buf);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }

                      if (!v66)
                      {
                        if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v67 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v67 = v110.__r_.__value_.__l.__size_;
                        }

                        if (v67 - strlen(v65) == 1)
                        {
                          v68 = *__error();
                          v69 = _SILogForLogForCategory(17);
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                          {
                            v70 = *(a1 + 40);
                            v72 = *v70;
                            v71 = v70[1];
                            v73 = &v110;
                            if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v73 = v110.__r_.__value_.__r.__words[0];
                            }

                            *buf = v96;
                            *&buf[4] = v72;
                            *&buf[12] = 2080;
                            *&buf[14] = v71;
                            *&buf[22] = 2080;
                            v126 = v65;
                            v127 = 2080;
                            v128 = v73;
                            v129 = 1024;
                            v130 = 0;
                            _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Top Hits) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                          }

                          *__error() = v68;
                          *&v111 = v105 | 0x80000000;
                          v74 = *(a1 + 40);
                          LODWORD(v115) = 0;
                          v75 = queryNodeForToken(v65, *(a1 + 56), &v111, v74);
                          if (v75)
                          {
                            v76 = v75;
                            std::string::basic_string[abi:nn200100]<0>(buf, v65);
                            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v118, buf, buf);
                            if (buf[23] < 0)
                            {
                              operator delete(*buf);
                            }

                            NodeForToken = makeOrNode(NodeForToken, v76);
                          }
                        }

                        free(v65);
                      }
                    }

                    if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v110.__r_.__value_.__l.__data_);
                    }

                    v58 = *(*(a1 + 40) + 28);
                  }

                  v77 = v99;
                  if (Length <= 4)
                  {
                    v77 = 0;
                  }

                  if (v77 != 1)
                  {
LABEL_93:
                    v56 = NodeForToken;
                  }

                  else
                  {
                    v56 = NodeForToken;
                    if ((v58 & 0x804) == 4)
                    {
                      memset(&v110, 0, sizeof(v110));
                      v78 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                      if (v34)
                      {
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v78 = __p.__r_.__value_.__l.__size_;
                        }

                        std::string::basic_string(&v110, &__p, 0, v78 - 1, buf);
                      }

                      else if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
                      {
                        std::string::__init_copy_ctor_external(&v110, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        v110 = __p;
                      }

                      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v79 = &v110;
                      }

                      else
                      {
                        v79 = v110.__r_.__value_.__r.__words[0];
                      }

                      v80 = PRPommesStemWordWithCString(v79, 100, 0);
                      if (v80)
                      {
                        v81 = v80;
                        std::string::basic_string[abi:nn200100]<0>(buf, v80);
                        v82 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(v118[0], v118[1], buf);
                        if (buf[23] < 0)
                        {
                          operator delete(*buf);
                        }

                        if (!v82)
                        {
                          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v83 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v83 = v110.__r_.__value_.__l.__size_;
                          }

                          if (v83 != strlen(v81))
                          {
                            v84 = *__error();
                            v85 = _SILogForLogForCategory(17);
                            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                            {
                              v86 = *(a1 + 40);
                              v88 = *v86;
                              v87 = v86[1];
                              v89 = &v110;
                              if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v89 = v110.__r_.__value_.__r.__words[0];
                              }

                              *buf = v96;
                              *&buf[4] = v88;
                              *&buf[12] = 2080;
                              *&buf[14] = v87;
                              *&buf[22] = 2080;
                              v126 = v81;
                              v127 = 2080;
                              v128 = v89;
                              v129 = 1024;
                              v130 = 3;
                              _os_log_impl(&dword_1C278D000, v85, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][rewrite] First Pass Stemming (Committed Search) added stemmedToken = [%s] to Query Tree for token = [%s] with wildcard_limit = %u", buf, 0x30u);
                            }

                            *__error() = v84;
                            *&v111 = v105 | 0x80000000;
                            v90 = *(a1 + 40);
                            LODWORD(v115) = 3;
                            v91 = queryNodeForToken(v81, *(a1 + 56), &v111, v90);
                            if (v91)
                            {
                              v92 = v91;
                              std::string::basic_string[abi:nn200100]<0>(buf, v81);
                              std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v118, buf, buf);
                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }

                              v56 = makeOrNode(NodeForToken, v92);
                            }
                          }

                          free(v81);
                        }
                      }

                      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v110.__r_.__value_.__l.__data_);
                      }
                    }
                  }

                  *&v106[4] = makeAndNode(*&v106[4], v56);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                goto LABEL_97;
              }
            }

            CFRelease(Mutable);
            freeQueryTokensContext(v22);
LABEL_190:
            if (SHIBYTE(v124) < 0)
            {
              operator delete(v123);
            }

            return v2;
          }

LABEL_28:
          if (!v17)
          {
            goto LABEL_190;
          }

          goto LABEL_29;
        }
      }
    }
  }

  return v2;
}

void sub_1C2962CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  if (a45 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a47);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v47 - 240);
  if (*(v47 - 169) < 0)
  {
    operator delete(*(v47 - 192));
  }

  _Unwind_Resume(a1);
}

void *___ZL19pommesRetrievalTreeP10query_nodeP9PRContext_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else if (a2)
  {
    v7[5] = v4;
    v7[6] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __db_query_tree_apply_block_block_invoke;
    v7[3] = &unk_1E8198ED0;
    v7[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v7, 0);
    return 0;
  }

  return result;
}

void *query_calloc()
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v0 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v0)
  {
    _log_fault_for_malloc_failure();
  }

  return v0;
}

void *___ZL17pommesRankingTreeP10query_nodeP9PRContext_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    a2[1] = a4;
  }

  else if (a2)
  {
    v7[5] = v4;
    v7[6] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __db_query_tree_apply_block_block_invoke;
    v7[3] = &unk_1E8198ED0;
    v7[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v7, 0);
    return 0;
  }

  return result;
}

void incompleteRomajiKanaData(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  {
    {
      std::string::basic_string[abi:nn200100]<0>(&v2, "b");
      std::string::basic_string[abi:nn200100]<0>(&v3, "っ");
      std::string::basic_string[abi:nn200100]<0>(v4, "ば");
      std::string::basic_string[abi:nn200100]<0>(v5, "び");
      std::string::basic_string[abi:nn200100]<0>(v6, "ぶ");
      std::string::basic_string[abi:nn200100]<0>(v7, "べ");
      std::string::basic_string[abi:nn200100]<0>(v8, "ぼ");
      memset(v1, 0, sizeof(v1));
      std::vector<std::string>::__init_with_size[abi:nn200100]<std::string const*,std::string const*>(v1, &v3, v9, 6uLL);
    }
  }
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:nn200100]<true,0>(std::string *this, __int128 *a2, __int128 **a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v4);
  v6 = v5;
  v7 = *(&incompleteRomajiKanaData(void)::data + 1);
  if (!*(&incompleteRomajiKanaData(void)::data + 1))
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(*(&incompleteRomajiKanaData(void)::data + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&incompleteRomajiKanaData(void)::data + 1))
    {
      v10 = v5 % *(&incompleteRomajiKanaData(void)::data + 1);
    }
  }

  else
  {
    v10 = (*(&incompleteRomajiKanaData(void)::data + 1) - 1) & v5;
  }

  v11 = *(incompleteRomajiKanaData(void)::data + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v12 + 2, v2))
  {
    goto LABEL_20;
  }
}

uint64_t std::pair<std::string const,std::vector<std::string>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void SICompletionModelProcessUTF8String(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, UErrorCode a8, __n128 q0_0, const char *a9, int a10, const char *a11, unsigned __int8 a12, uint64_t a13)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      v18 = a6[3];
      v22 = a6[2];
      v23 = v18;
      v24 = a6[4];
      v19 = a6[1];
      v20 = *a6;
      v21 = v19;
      insertLegacyNGramsFromUTF8StringWithPatternAndLock(v19, a1, a2, a3, a4, a5, &v20, a13, a7, a10, a11, a12, (a1 + 48));
    }

    else
    {
      v14 = a6[3];
      v22 = a6[2];
      v23 = v14;
      v24 = a6[4];
      v15 = a6[1];
      v20 = *a6;
      v21 = v15;
      generateCompletionsFromUTF8StringWithPatternAndLock(q0_0, a1, a2, a3, a4, a5, &v20, a13, a7, a8, a9, a10, a11, a12, (a1 + 48));
    }
  }

  else
  {
    v16 = a6[3];
    v22 = a6[2];
    v23 = v16;
    v24 = a6[4];
    v17 = a6[1];
    v20 = *a6;
    v21 = v17;
    generateCompletionsFromUTF8StringWithPatternAndLock(q0_0, 0, a2, a3, a4, a5, &v20, a13, a7, a8, a9, a10, a11, a12, 0);
  }
}

void insertLegacyNGramsFromUTF8StringWithPatternAndLock(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, const char *a11, unsigned __int8 a12, os_unfair_lock_s *a13)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v13;
  v84 = v23;
  v25 = v24;
  v124 = *MEMORY[0x1E69E9840];
  v90 = v26;
  v27 = v13 && *v13 && strlen(*v13) > 3;
  v89 = v25;
  v28 = *(v25 + 4);
  v29 = v27 | ((v28 & 0x20) >> 5);
  if ((v28 & 0x80) == 0)
  {
    v29 = (v28 >> 5) & 1;
  }

  LODWORD(v91) = a10;
  if (a10)
  {
    LOBYTE(v29) = 0;
  }

  if (v19 > 0x12C)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v92 = strlen(*v22);
  v95 = 0;
  v96 = 0;
  v31 = completionPossibleMatch(v22, a11, v21, a12, &v96, &v95);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = splitPossibleMatch(v22, a11, v21, &v96, &v95);
  }

  v33 = 48;
  if (a12)
  {
    v33 = 64;
  }

  v34 = *(v22 + v33);
  v93 = v19;
  v94 = v34;
  v85 = v15;
  if (!a11)
  {
    v37 = 0;
    v36 = 0;
    goto LABEL_28;
  }

  v35 = *a11;
  if (v35 != 106)
  {
    if (v35 == 122)
    {
      v35 = *(a11 + 1);
      v38 = 104;
    }

    else
    {
      v38 = 122;
    }

    v39 = v38 - v35;
    goto LABEL_27;
  }

  if (a11[1] != 97)
  {
    v39 = 16;
LABEL_27:
    v37 = 0;
    v36 = v39 == 0;
    goto LABEL_28;
  }

  v36 = 0;
  v37 = 1;
LABEL_28:
  if (((v31 | a12) & 1) != 0 || *(v22 + 32) > 1uLL)
  {
    v40 = 0;
    if (!v34)
    {
      return;
    }
  }

  else
  {
    v40 = v37 | v36;
    if (((v37 | v36 | v32) & 1) == 0 || !v34)
    {
      return;
    }
  }

  v86 = a11;
  v83 = v21;
  if (dword_1EBF46B04 > 4)
  {
    v80 = *__error();
    v81 = _SILogForLogForCategory(14);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(MaximumSizeForEncoding) = 67109378;
      HIDWORD(MaximumSizeForEncoding) = v91;
      v100 = 2080;
      *v101 = v83;
      _os_log_impl(&dword_1C278D000, v81, OS_LOG_TYPE_DEFAULT, "extracting field id %d: '%s'", &MaximumSizeForEncoding, 0x12u);
    }

    *__error() = v80;
  }

  v87 = &v113;
  if (v92 >= 4)
  {
    v41 = 300;
  }

  else
  {
    v30 |= &v93[-v96] > 0x14;
    if (&v93[-v96] <= 0x14)
    {
      v41 = 300;
    }

    else
    {
      v41 = 20;
    }
  }

  v42 = v86;
  v88 = a12;
  if (v86)
  {
    v43 = *(v22 + 88);
    if (v43)
    {
      Length = CFStringGetLength(v43);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      MEMORY[0x1EEE9AC00](v45);
      v47 = &v83 - v46;
      bzero(&v83 - v46, v48);
      v125.location = 0;
      v125.length = Length;
      v42 = v86;
      CFStringGetBytes(*(v22 + 88), v125, 0x8000100u, 0x2Du, 0, v47, MaximumSizeForEncoding, &MaximumSizeForEncoding);
      v47[MaximumSizeForEncoding] = 0;
      if (strcmp(v42, v47))
      {
        CFRelease(*(v22 + 88));
        *(v22 + 88) = 0;
        *(v22 + 88) = CFStringCreateWithCString(*MEMORY[0x1E695E480], v42, 0x600u);
      }
    }

    else
    {
      *(v22 + 88) = CFStringCreateWithCString(*MEMORY[0x1E695E480], v86, 0x600u);
    }
  }

  bzero(&MaximumSizeForEncoding, 0x1BA0uLL);
  LOBYTE(MaximumSizeForEncoding) = v30 & 1;
  BYTE1(MaximumSizeForEncoding) = v88;
  v49 = v17[3];
  v103 = v17[2];
  v104 = v49;
  v105 = v17[4];
  v50 = v17[1];
  *&v101[6] = *v17;
  v102 = v50;
  v106 = v91;
  v107 = v90;
  v108 = v89;
  v109 = *(v22 + 88);
  v110 = v42;
  v51 = v87;
  *(v87 + 2968) = v40;
  *(v51 + 2969) = v37;
  v97 = 0;
  v111[0] = 0;
  if ((v37 & 1) == 0)
  {
    v52 = v83;
    goto LABEL_59;
  }

  bzero(v117, 0x258uLL);
  LODWORD(v98[0]) = 0;
  v52 = v83;
  u_strFromUTF8(v117, v41, v98, v83, v93, &v97);
  if (v97 == 15)
  {
    v97 = 0;
    LODWORD(v98[0]) = v41;
  }

  else if (!LODWORD(v98[0]))
  {
    goto LABEL_53;
  }

  unorm2_getNFCInstance();
  if (v97 > 0)
  {
LABEL_53:
    v53 = v111[0];
    if (!v111[0])
    {
      goto LABEL_59;
    }

    goto LABEL_62;
  }

  v97 = 0;
  v54 = unorm2_normalize();
  if (v97 == 15)
  {
    v53 = v41;
  }

  else
  {
    v53 = v54;
  }

  v111[0] = v53;
  v97 = 0;
  if (!v53)
  {
LABEL_59:
    u_strFromUTF8(v114, v41, v111, v52, v93, &v97);
    if (v97 == 15)
    {
      v111[0] = v41;
      v97 = 0;
      v53 = v41;
    }

    else
    {
      v53 = v111[0];
      if (!v111[0])
      {
        return;
      }
    }
  }

LABEL_62:
  v55 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], v114, v53, *MEMORY[0x1E695E498]);
  if (v55)
  {
    v56 = v55;
    v122 = 0u;
    v123 = 0u;
    v57 = v84;
    v117[0] = v84;
    v117[1] = v114;
    v117[2] = &v114[v111[0]];
    v118 = v41;
    v58 = v112;
    v119 = v112;
    v120 = 0;
    v121 = 0;
    *&v122 = 0;
    DWORD2(v122) = 0;
    BYTE8(v123) = v37;
    v59 = v87;
    if (*(v87 + 2968) == 1)
    {
      *&v122 = v115;
      v121 = v115;
      v120 = v116;
      *&v123 = &v116[1];
      WORD4(v122) = 300;
    }

    v60 = v109;
    CITokenizerSetLocale(v84, v109, 0);
    v98[0] = tokenrangescallback;
    v98[1] = 0;
    v98[2] = v117;
    v61 = *(v57 + 32) & 0x18;
    v93 = v56;
    CITokenizerGetTokensNew(v62, v57, v56, v60, v61, getPreTokenizerCallback, getTokensWrapper, getSubTokensWrapper, 0, v98);
    v63 = WORD1(v118);
    v64 = v88;
    if (*(v59 + 2968) == 1)
    {
      v116[301] = WORD5(v122);
      *v121 = 0;
      v65 = v121 - &MaximumSizeForEncoding - 5560;
      v66 = v85;
    }

    else
    {
      v67 = (v59 + 183);
      v91 = WORD1(v118);
      if (WORD1(v118))
      {
        v68 = 0;
        v69 = &v116[1];
        v70 = 901;
        v71 = WORD1(v118);
        v72 = v67;
        do
        {
          v73 = *v58;
          if (*v58 > v68)
          {
            v74 = _utf16_to_utf8(&v114[v68], *v58 - v68, v72, v70, v37);
            v70 -= v74;
            v72 += v74;
            v73 = *v58;
          }

          v75 = _utf16_to_utf8(&v114[v73], v58[1], v72, v70, v37);
          *v69++ = v72 - v67;
          v76 = *v58;
          v77 = v58[1];
          v58 += 2;
          v68 = v77 + v76;
          v70 -= v75;
          v72 += v75;
          --v71;
        }

        while (v71);
        v66 = v85;
        v52 = v83;
        v64 = v88;
        v59 = v87;
      }

      else
      {
        v72 = (v59 + 183);
        v66 = v85;
      }

      *v72 = 0;
      LODWORD(v65) = v72 - v67;
      v63 = v91;
    }

    v111[1] = v65;
    CFRelease(v93);
    if (v63)
    {
      if (v64)
      {
        v78 = 4;
      }

      else
      {
        v78 = *(v59 + 2968) ^ 1;
      }

      if ((handlePatterns(&MaximumSizeForEncoding, v63, 1u, v115, &v94, v78, v66, a13) & 1) == 0 && *(v22 + 32) >= 2uLL && (v64 & 1) == 0 && v92 >= 4)
      {
        v79 = *(v22 + 8);
        if (v79)
        {
          if (strcmp(*v22, v79))
          {
            if (splitPossibleMatch(v22, v86, v52, &v96, &v95))
            {
              handlePatterns(&MaximumSizeForEncoding, v63, *(v22 + 32), *(v22 + 40), *(v22 + 80), 2, v66, a13);
            }
          }
        }
      }
    }
  }
}

void generateCompletionsFromUTF8StringWithPatternAndLock(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, UErrorCode a10, const char *a11, int a12, const char *a13, unsigned __int8 a14, os_unfair_lock_s *a15)
{
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v15;
  v27 = v26;
  v139 = *MEMORY[0x1E69E9840];
  v106 = v28;
  v107 = v29;
  v30 = v15 && *v15 && strlen(*v15) > 3;
  v31 = strcmp(a11, "com.apple.mobileslideshow");
  if (!v27)
  {
    goto LABEL_8;
  }

  v32 = *(v27 + 4);
  if ((v32 & 0x80) != 0)
  {
    if ((v32 & 0x1000) != 0)
    {
      if ((v32 & 0x2000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (!v30)
    {
LABEL_11:
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = a12 == 3;
      goto LABEL_24;
    }

    v37 = 0;
    v33 = a12 == 0;
    v38 = a12 == 5;
    v36 = a12 == 6;
    if (v31)
    {
      v35 = 0;
    }

    else
    {
      v35 = a12 == 1;
    }

    if (v31)
    {
      v34 = 0;
    }

    else
    {
      v34 = a12 > 7;
    }

    goto LABEL_24;
  }

  if ((v32 & 0x1000) == 0)
  {
LABEL_8:
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_24;
  }

  v37 = a12 == 4;
  v33 = a12 == 0;
  v38 = a12 == 6;
  v34 = 0;
  if ((v32 & 0x2000) == 0)
  {
    v33 = 0;
  }

  v35 = 0;
  v36 = 0;
  if ((v32 & 0x2000) != 0)
  {
    v37 = a12 == 7;
  }

  else
  {
    v38 = a12 == 3;
  }

LABEL_24:
  if (v22 > 0x12C)
  {
    v33 = 1;
  }

  if (v34 || v35 || v31)
  {
    v102 = v35;
    v103 = v34;
    v97 = v33;
    v98 = v38;
    v99 = v37;
    v100 = v36;
    v109 = 0;
    v110 = 0;
    v39 = completionPossibleMatch(v25, a13, v24, a14, &v110, &v109);
    v105 = v24;
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v41 = v39;
      v40 = splitPossibleMatch(v25, a13, v24, &v110, &v109);
      v39 = v41;
    }

    v42 = 6;
    if (a14)
    {
      v42 = 8;
    }

    v108 = v25[v42];
    if (v108)
    {
      if (a13)
      {
        v43 = *a13;
        if (v43 == 106)
        {
          if (a13[1] == 97)
          {
            v44 = 0;
            v104 = 1;
LABEL_46:
            if (((v39 | a14) & 1) != 0 || v25[4] > 1)
            {
              v47 = 0;
            }

            else
            {
              v47 = v104 | v44;
              if (((v104 | v44 | v40) & 1) == 0)
              {
                return;
              }
            }

            LODWORD(v101) = v47;
            v93 = v44;
            v94 = v39;
            v95 = v18;
            v96 = v27;
            if (dword_1EBF46B04 < 5)
            {
              if (!a13)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v89 = *__error();
              v90 = _SILogForLogForCategory(14);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v114) = 67109378;
                HIDWORD(v114) = a12;
                v115 = 2080;
                *v116 = v105;
                _os_log_impl(&dword_1C278D000, v90, OS_LOG_TYPE_DEFAULT, "extracting field id %d: '%s'", &v114, 0x12u);
              }

              *__error() = v89;
              v27 = v96;
              if (!a13)
              {
LABEL_59:
                bzero(&v114, 0x4860uLL);
                LOBYTE(v114) = a14;
                v55 = v20[3];
                v118 = v20[2];
                v119 = v55;
                v120 = v20[4];
                v56 = v20[1];
                *&v116[6] = *v20;
                v117 = v56;
                v121 = a12;
                v122 = v107;
                v123 = v27;
                v125 = v25[11];
                v126 = a13;
                v134 = v101;
                v135 = v104;
                if (normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::onceToken != -1)
                {
                  dispatch_once(&normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::onceToken, &__block_literal_global_2117);
                }

                v57 = v105;
                v113 = 0;
                v127 = 0;
                bzero(v136, 0x258uLL);
                v112 = 0;
                v58 = 300;
                u_strFromUTF8(v136, 300, &v112, v57, v22, &v113);
                if (v113 == 15)
                {
                  v112 = 300;
                  v113 = 0;
                }

                else
                {
                  v58 = v112;
                  if (!v112)
                  {
                    v58 = v127;
                    goto LABEL_73;
                  }
                }

                v111 = 0;
                if (normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::norm2 && ((v104 & 1) != 0 || (v59 = unorm2_quickCheck(), v58 = v112, v59 != 1)))
                {
                  v60 = unorm2_normalize();
                  if (v113 == 15)
                  {
                    v58 = 300;
                  }

                  else
                  {
                    v58 = v60;
                  }
                }

                else
                {
                  memcpy(v132, v136, 2 * v58);
                  v132[v58] = 0;
                }

                v127 = v58;
LABEL_73:
                if (!v58)
                {
                  return;
                }

                v61 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], v132, v58, *MEMORY[0x1E695E498]);
                if (!v61)
                {
                  return;
                }

                v62 = v61;
                v137 = 0u;
                v138 = 0u;
                v63 = v106;
                v136[0] = v106;
                v136[1] = v132;
                v136[2] = &v132[v127];
                v136[3] = &v130;
                LOWORD(v137) = 300;
                v136[4] = &v131;
                *&v138 = &v129;
                v64 = SIStringContainsNewlineCharacters(v132, v127);
                v66 = v64;
                if (v64)
                {
                  v67 = 0;
                }

                else
                {
                  v67 = GetTokenCallback;
                }

                if (v64)
                {
                  v68 = GetSentenceCallback;
                }

                else
                {
                  v68 = 0;
                }

                v107 = v62;
                CITokenizerGetTokensNew(v65, v63, v62, v125, 4, 0, v67, 0, v68, v136);
                v69 = WORD1(v137);
                if (v66)
                {
                  v70 = WORD4(v138);
                }

                else
                {
                  v70 = WORD4(v138);
                  if (*(&v137 + 1) < WORD1(v137))
                  {
                    v72 = WORD2(v137);
                    v71 = v105;
                    if (WORD2(v137))
                    {
                      v73 = (v138 + 16 * WORD4(v138));
                      *v73 = *(&v137 + 1);
                      v73[1] = v72;
                      v70 = (v70 + 1);
                      WORD4(v138) = v70;
                    }

                    goto LABEL_87;
                  }
                }

                v71 = v105;
LABEL_87:
                v101 = v70;
                if (v69)
                {
                  v106 = v69;
                  if (v130)
                  {
                    v74 = _utf16_to_utf8(v132, v130, v133, 0x385uLL, v135);
                    v75 = 901 - v74;
                    v76 = v133 + v74;
                  }

                  else
                  {
                    v75 = 901;
                    v76 = v133;
                  }

                  v77 = 0;
                  v78 = &v114;
                  v79 = v106;
                  do
                  {
                    if (v77)
                    {
                      v80 = v78[621];
                      if (v80 > v77)
                      {
                        v81 = _utf16_to_utf8(&v132[v77], v80 - v77, v76, v75, v135);
                        v75 -= v81;
                        v76 += v81;
                      }
                    }

                    v82 = _utf16_to_utf8(&v132[v78[621]], v78[622], v76, v75, v135);
                    v77 = v78[622] + v78[621];
                    v78[1712] = v76 - v133;
                    v78[1713] = v82;
                    v75 -= v82;
                    v76 += v82;
                    v78 += 2;
                    --v79;
                  }

                  while (v79);
                  v71 = v105;
                  LODWORD(v69) = v106;
                }

                else
                {
                  v76 = v133;
                }

                *v76 = 0;
                v128 = v76 - v133;
                CFRelease(v107);
                if (v69)
                {
                  if (v103 || v102)
                  {
                    if (v101 == 1)
                    {
                      v83 = v96;
                      if (v96)
                      {
                        v83 = *(v96 + 32);
                      }

                      v124 = v83;
                      insertPatternsForText(&v114, v69, v133, &v108, a10, v95, a15);
                    }
                  }

                  else
                  {
                    if (v100)
                    {
                      v84 = 8;
                    }

                    else
                    {
                      v84 = 7;
                    }

                    if (v100 || v99 || v98)
                    {
                      v85 = v96;
                      if (v96)
                      {
                        v85 = *(v96 + 24);
                      }

                      v124 = v85;
                      handlePatternsForTextWithScore(&v114, v69, v133, &v108, v84, v16, v95, a15);
                    }

                    else
                    {
                      v86 = v95;
                      v87 = v96;
                      if (v96)
                      {
                        v88 = *(v96 + 24);
                      }

                      else
                      {
                        v88 = 0;
                      }

                      v124 = v88;
                      if (v94)
                      {
                        if (tokenPossibleMatch(v25, a13, v71, v104 | v93))
                        {
                          addCrossFieldOidWithLock(v87, v86, a15);
                        }

                        handlePatternsForPhrases(&v114, v69, v101, v133, &v108, v97, a10, v86, a15);
                      }

                      else
                      {
                        handleCrossFieldPatterns(v25, &v114, v69, v101, a10, v95, a15);
                      }
                    }
                  }
                }

                return;
              }
            }

            v48 = v25[11];
            if (v48)
            {
              Length = CFStringGetLength(v48);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v92[1] = v92;
              v114 = MaximumSizeForEncoding;
              MEMORY[0x1EEE9AC00](v51);
              v53 = v92 - v52;
              bzero(v92 - v52, v54);
              v140.location = 0;
              v140.length = Length;
              CFStringGetBytes(v25[11], v140, 0x8000100u, 0x2Du, 0, v53, v114, &v114);
              v53[v114] = 0;
              if (strcmp(a13, v53))
              {
                CFRelease(v25[11]);
                v25[11] = 0;
                v25[11] = CFStringCreateWithCString(*MEMORY[0x1E695E480], a13, 0x600u);
              }

              v27 = v96;
            }

            else
            {
              v25[11] = CFStringCreateWithCString(*MEMORY[0x1E695E480], a13, 0x600u);
            }

            goto LABEL_59;
          }

          v46 = 16;
        }

        else
        {
          if (v43 == 122)
          {
            v43 = *(a13 + 1);
            v45 = 104;
          }

          else
          {
            v45 = 122;
          }

          v46 = v45 - v43;
        }

        v104 = 0;
        v44 = v46 == 0;
        goto LABEL_46;
      }

      v104 = 0;
      v44 = 0;
      goto LABEL_46;
    }
  }
}

uint64_t completionPossibleMatch(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v6 = 8;
  }

  else
  {
    v6 = 6;
  }

  if (!*a1)
  {
    return 0;
  }

  if (!a1[v6])
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (a1[v6])
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      goto LABEL_9;
    }

    v8 = icu_search_context_create();
    __dmb(0xBu);
    a1[v6] = v8;
    os_unfair_lock_unlock(&s_search_context_unfair_lock);
    if (v8)
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:

  return icu_search_match();
}

uint64_t splitPossibleMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (!*(a1 + 72))
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (*(a1 + 72))
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      goto LABEL_6;
    }

    v6 = icu_search_context_create();
    __dmb(0xBu);
    *(a1 + 72) = v6;
    os_unfair_lock_unlock(&s_search_context_unfair_lock);
    if (v6)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:

  return icu_search_match();
}

uint64_t _utf16_to_utf8(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  if (a5)
  {
    v20 = 0;
    if (utf8_encodestr(a1, 2 * a2, a3, &v20, a4))
    {
      return 0;
    }

    else
    {
      return v20;
    }
  }

  else
  {
    v6 = a3;
    if (a4 >= 4 * a2)
    {
      if (a2 >= 1)
      {
        v6 = a3;
        v14 = a1;
        v15 = &a1[a2];
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v17 > 0x7F)
          {
            if (v16 > 0x7FF)
            {
              if ((v16 & 0xF800) == 0xD800)
              {
                if ((v16 & 0x400) == 0 && v14 < v15)
                {
                  v18 = *v14;
                  if ((v18 & 0xFC00) == 0xDC00)
                  {
                    v14 = a1 + 2;
                    v19 = v18 + (v16 << 10) - 56613888;
                    *v6 = (v19 >> 18) | 0xF0;
                    v6[1] = (v19 >> 12) & 0x3F | 0x80;
                    v6[2] = (v19 >> 6) & 0x3F | 0x80;
                    v6[3] = v18 & 0x3F | 0x80;
                    v6 += 4;
                  }
                }
              }

              else
              {
                *v6 = (v16 >> 12) | 0xE0;
                v6[1] = (v16 >> 6) & 0x3F | 0x80;
                v6[2] = v16 & 0x3F | 0x80;
                v6 += 3;
              }
            }

            else
            {
              *v6 = (v16 >> 6) | 0xC0;
              v6[1] = v16 & 0x3F | 0x80;
              v6 += 2;
            }
          }

          else
          {
            *v6++ = v16;
          }

          a1 = v14;
        }

        while (v14 < v15);
      }
    }

    else if (a2 >= 1)
    {
      v7 = &a3[a4];
      v6 = a3;
      v8 = a1;
      v9 = &a1[a2];
      do
      {
        v11 = *v8++;
        v10 = v11;
        if (v11 > 0x7F)
        {
          if (v10 > 0x7FF)
          {
            if ((v10 & 0xF800) == 0xD800)
            {
              if ((v10 & 0x400) == 0 && v8 < v9)
              {
                v12 = *v8;
                if ((v12 & 0xFC00) == 0xDC00)
                {
                  if (v6 + 3 >= v7)
                  {
                    return v6 - a3;
                  }

                  v8 = a1 + 2;
                  v13 = v12 + (v10 << 10) - 56613888;
                  *v6 = (v13 >> 18) | 0xF0;
                  v6[1] = (v13 >> 12) & 0x3F | 0x80;
                  v6[2] = (v13 >> 6) & 0x3F | 0x80;
                  v6[3] = v12 & 0x3F | 0x80;
                  v6 += 4;
                }
              }
            }

            else
            {
              if (v6 + 2 >= v7)
              {
                return v6 - a3;
              }

              *v6 = (v10 >> 12) | 0xE0;
              v6[1] = (v10 >> 6) & 0x3F | 0x80;
              v6[2] = v10 & 0x3F | 0x80;
              v6 += 3;
            }
          }

          else
          {
            if (v6 + 1 >= v7)
            {
              return v6 - a3;
            }

            *v6 = (v10 >> 6) | 0xC0;
            v6[1] = v10 & 0x3F | 0x80;
            v6 += 2;
          }
        }

        else
        {
          if (v6 >= v7)
          {
            return v6 - a3;
          }

          *v6++ = v10;
        }

        a1 = v8;
      }

      while (v8 < v9);
    }

    return v6 - a3;
  }
}

void insertPatternsForText(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, os_unfair_lock_s *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a4 && *(a1 + 120))
  {
    v10 = a5;
    v12 = a1 + 12192;
    v13 = (a1 + 4968);
    v54 = 0;
    v55 = 0;
    v14 = (a1 + 4976);
    v15 = a2;
    while (1)
    {
      if (*v14 == 1)
      {
        v16 = *(v12 + 2 * *(v14 - 1)) - 38;
        v17 = v16 > 0x39;
        v18 = (1 << v16) & 0x2000000000000A1;
        if (!v17 && v18 != 0)
        {
          break;
        }
      }

      v14 += 2;
      if (!--v15)
      {
        if (!*a3)
        {
          return;
        }

        if (!*a4)
        {
          v51 = *(a1 + 136);
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          if (*a4)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v20 = icu_search_context_create();
            __dmb(0xBu);
            *a4 = v20;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            if (!v20)
            {
              return;
            }
          }
        }

        v21 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a1 + 128));
        if (v21)
        {
          v22 = v21;
          v23 = CFRetain(v21);
          if (v23)
          {
            v24 = *(a1 + 160);
            v50 = *(a1 + 152);
            v51 = v23;
            v54 = 0;
            v55 = 0;
            if (icu_search_match() && v24 <= 13 && (v13[2 * v50 - 2 + 2 * v24] - *v13 + v13[2 * v50 - 1 + 2 * v24]) <= 29)
            {
              v49 = &v49;
              MEMORY[0x1EEE9AC00](v25);
              v26 = &v49 - 4 * v24;
              bzero(v26, v27);
              if (v24 < 1)
              {
                v31 = 0;
                v29 = 0;
              }

              else
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                v31 = 0;
                v32 = v50 - v24 + 1;
                v33 = a1 + 8 * v50 + 9784;
                v34 = (a1 + 16 * v50 + 4976);
                do
                {
                  v35 = *(v34 - 1);
                  if (v28)
                  {
                    v36 = *(v34 - 2) + *(v34 - 3);
                    if (v35 > v36)
                    {
                      v37 = &v26[2 * v31];
                      *v37 = v12 + 2 * v36;
                      *(v37 + 2) = v35 - v36;
                      *(v37 + 12) = 1;
                      ++v31;
                      ++v30;
                    }
                  }

                  v38 = *(v33 + 8 * v28);
                  v39 = v12 + 2 * v35;
                  v40 = &v26[2 * v31];
                  v41 = (v38 & 0x800) != 0 || v38 == 0;
                  v42 = *v34;
                  v34 += 2;
                  *v40 = v39;
                  *(v40 + 2) = v42;
                  v43 = !v41;
                  *(v40 + 12) = v43;
                  ++v31;
                  if (!(v32 + v28))
                  {
                    v29 = v30 + v28;
                  }

                  ++v28;
                }

                while (v28 != v24);
              }

              v53 = 0;
              v52 = 0;
              v44 = (*(*(a1 + 104) + 16))();
              os_unfair_lock_lock(a7);
              if (v31)
              {
                v45 = *(a1 + 120);
                v46 = *(a1 + 96);
                v47 = *(a1 + 64);
                v56[2] = *(a1 + 48);
                v56[3] = v47;
                v56[4] = *(a1 + 80);
                v48 = *(a1 + 32);
                v56[0] = *(a1 + 16);
                v47.n128_u64[1] = *(&v56[0] + 1);
                v56[1] = v48;
                v47.n128_u64[0] = 1.0;
                v48.n128_f64[0] = v44;
                word_trie_s::insert((v45 + 16), (&v49 - 4 * v24), v31, v56, a6, v10, v46, 3u, v48, v47, v53, v52, HIBYTE(v52), 6, 0, v29, 0);
              }

              os_unfair_lock_unlock(a7);
            }

            CFRelease(v22);
            CFRelease(v51);
          }
        }

        return;
      }
    }
  }
}

void handlePatternsForTextWithScore(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, int a5, UErrorCode a6, uint64_t a7, os_unfair_lock_s *a8)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (*(a1 + 120))
    {
      v43 = a6;
      v46 = 0;
      v47 = 0;
      if (*a3)
      {
        if (!*a4)
        {
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          if (*a4)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v14 = icu_search_context_create();
            __dmb(0xBu);
            *a4 = v14;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            if (!v14)
            {
              return;
            }
          }
        }

        v15 = *(a1 + 152);
        v46 = 0;
        v47 = 0;
        v16 = icu_search_match();
        if (a2 <= 0xD)
        {
          if (v16)
          {
            v18 = a2;
            v19 = a1 + 4968 + 16 * v15 + 16 * a2;
            if ((*(v19 - 16) - *(a1 + 4968) + *(v19 - 8)) <= 29)
            {
              v42[1] = v42;
              v20 = a1 + 12192;
              MEMORY[0x1EEE9AC00](v17);
              v21 = &v42[-4 * a2];
              bzero(&v42[-4 * v18], v22);
              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = (a1 + 16 * v15 + 4976);
              do
              {
                v28 = *(v27 - 1);
                if (v23)
                {
                  v29 = *(v27 - 2) + *(v27 - 3);
                  if (v28 > v29)
                  {
                    v30 = &v21[2 * v26];
                    *v30 = v20 + 2 * v29;
                    *(v30 + 2) = v28 - v29;
                    *(v30 + 12) = 1;
                    ++v26;
                    ++v25;
                  }
                }

                v31 = *(a1 + 8 * v15 + 9784 + 8 * v23);
                v32 = v20 + 2 * v28;
                v33 = &v21[2 * v26];
                v34 = (v31 & 0x800) != 0 || v31 == 0;
                v35 = *v27;
                v27 += 2;
                *v33 = v32;
                *(v33 + 2) = v35;
                v36 = !v34;
                *(v33 + 12) = v36;
                ++v26;
                if (v18 + ~v15 == v23)
                {
                  v24 = v25 + v23;
                }

                ++v23;
              }

              while (v18 != v23);
              v45 = 0;
              v44 = 0;
              v37 = (*(*(a1 + 104) + 16))();
              os_unfair_lock_lock(a8);
              if (v26)
              {
                v38 = *(a1 + 120);
                v39 = *(a1 + 96);
                v40 = *(a1 + 64);
                v48[2] = *(a1 + 48);
                v48[3] = v40;
                v48[4] = *(a1 + 80);
                v41 = *(a1 + 32);
                v48[0] = *(a1 + 16);
                v40.n128_u64[1] = *(&v48[0] + 1);
                v48[1] = v41;
                v40.n128_u64[0] = 0;
                v41.n128_f64[0] = v37;
                word_trie_s::insert((v38 + 16), &v42[-4 * v18], v26, v48, a7, v43, v39, 3u, v41, v40, v45, v44, HIBYTE(v44), a5, 0, v24, 0);
              }

              os_unfair_lock_unlock(a8);
            }
          }
        }
      }
    }
  }
}

void handleCrossFieldPatterns(const char **a1, uint64_t a2, unsigned int a3, unsigned int a4, UErrorCode a5, uint64_t a6, os_unfair_lock_s *a7)
{
  v98 = *MEMORY[0x1E69E9840];
  if (*(a2 + 120))
  {
    v12 = a2 + 4968;
    v13 = a2 + 13696;
    v14 = *(a2 + 112);
    v15 = a2 + 12794;
    v64 = a6;
    v68 = a2 + 12192;
    v69 = (a2 + 9784);
    v66 = a1;
    if (v14)
    {
      v16 = *(v14 + 8);
    }

    else
    {
      v16 = 0;
    }

    v17 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a2 + 128));
    v91 = v15;
    v92 = v13;
    v93 = v68;
    v94 = v12;
    v95 = v69;
    v96 = a3;
    v67 = v16;
    v18 = v17;
    v19 = SILanguageModelCopyLocale();
    v20 = v19;
    if (!v19)
    {
      v33 = 0;
      if (!v18)
      {
LABEL_37:
        if (v20)
        {
          CFRelease(v33);
        }

        return;
      }

LABEL_36:
      CFRelease(v18);
      goto LABEL_37;
    }

    v65 = a2;
    v61 = a5;
    v62 = a7;
    v87 = 0;
    v88 = &v87;
    v89 = 0x2000000000;
    v90 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x3802000000;
    v84 = __Block_byref_object_copy__2118;
    v85 = __Block_byref_object_dispose__2119;
    v86 = xmmword_1C2BFA360;
    v77 = 0;
    v78 = &v77;
    v79 = 0x2000000000;
    v80 = 0;
    if (!a4)
    {
      goto LABEL_35;
    }

    v63 = v18;
    v21 = a4;
    v70 = v19;
    v22 = (v65 + 152);
    v23 = MEMORY[0x1E69E9820];
    do
    {
      v75[0] = v23;
      v75[1] = 0x40000000;
      v75[2] = ___ZL24handleCrossFieldPatternsP23si_completion_pattern_sP26StringTokenizerPhrasesInfotjbbjxP16os_unfair_lock_s_block_invoke;
      v75[3] = &unk_1E8193178;
      v75[4] = &v87;
      v75[5] = &v81;
      v24 = *v22++;
      v96 = *(&v24 + 1);
      v76 = v24;
      v92 = v13 + 16 * v24;
      v94 = v12 + 16 * v24;
      v95 = &v69[8 * v24];
      v75[6] = &v77;
      MEMORY[0x1C691F2A0](v67, v70, &v91, v75);
      --v21;
    }

    while (v21);
    v18 = v63;
    v20 = v70;
    if (v82[5] == -1 || (v82[6] - 2) > 0xB)
    {
LABEL_35:
      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v87, 8);
      v33 = v20;
      if (!v18)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v25 = *v66;
    v26 = strlen(*v66);
    if (v26)
    {
      v28 = v26 - (v25[v26 - 1] == 42);
      v29 = v62;
      if (v28)
      {
        v30 = v25 - 1;
        v31 = v28;
        v32 = v65;
        do
        {
          if (v30[v31] != 32)
          {
            break;
          }

          --v31;
        }

        while (v31);
LABEL_22:
        v74 = v31 + 1;
        MEMORY[0x1EEE9AC00](v27);
        v35 = &v60[-v34];
        bzero(&v60[-v34], v36);
        v37 = UTF16FromUTF8();
        if (v37)
        {
          v39 = v37;
          v69 = v60;
          MEMORY[0x1EEE9AC00](v38);
          v41 = &v60[-((v40 + 47) & 0xFFFFFFFFFFFFFFE0)];
          bzero(v41, v40 + 32);
          v42 = v39;
          *v41 = v39;
          *(v41 + 2) = v74;
          *(v41 + 12) = 0;
          v73 = 32;
          v41[2] = &v73;
          *(v41 + 6) = 1;
          *(v41 + 28) = 1;
          v43 = v82[6];
          if (v43 < 1)
          {
            v46 = 2;
          }

          else
          {
            v44 = 0;
            v45 = (v32 + 16 * v82[5] + 4976);
            v46 = 2;
            v47 = v68;
            do
            {
              v48 = *(v45 - 1);
              if (v44)
              {
                v49 = *(v45 - 2) + *(v45 - 3);
                if (v48 > v49)
                {
                  v50 = &v41[2 * v46];
                  *v50 = v47 + 2 * v49;
                  *(v50 + 2) = v48 - v49;
                  *(v50 + 12) = 1;
                  ++v46;
                }
              }

              v51 = *v45;
              v45 += 2;
              v52 = &v41[2 * v46];
              *v52 = v47 + 2 * v48;
              *(v52 + 2) = v51;
              *(v52 + 12) = 1;
              ++v46;
              ++v44;
            }

            while (v43 != v44);
          }

          BYTE4(v41[2 * v46 - 1]) = 0;
          v72 = 0;
          v71 = 0;
          v53 = (*(*(v32 + 104) + 16))();
          os_unfair_lock_lock(v29);
          if (v46)
          {
            v54 = *(v32 + 16);
            v97[1] = *(v32 + 32);
            v55 = *(v32 + 64);
            v97[2] = *(v32 + 48);
            v97[3] = v55;
            v97[4] = *(v32 + 80);
            v56.n128_u64[1] = *(&v97[4] + 1);
            v55.n128_u64[0] = v88[3];
            v57 = *(v32 + 120);
            v58 = *(v78 + 6);
            v59 = *(v32 + 96);
            v97[0] = v54;
            v56.n128_f64[0] = v53;
            word_trie_s::insert((v57 + 16), v41, v46, v97, v64, v61, v59, v58, v56, v55, v72, v71, HIBYTE(v71), 3, v74, 0, 0);
          }

          os_unfair_lock_unlock(v29);
          if (v42 != v35)
          {
            free(v42);
          }
        }

        goto LABEL_35;
      }

      LODWORD(v31) = 0;
    }

    else
    {
      LODWORD(v31) = 0;
      v29 = v62;
    }

    v32 = v65;
    goto LABEL_22;
  }
}

uint64_t tokenPossibleMatch(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = strlen(*a1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - ((v9 + 17) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9 + 2);
  memcpy(v10, v6, v7);
  if (v7 && v10[v7 - 1] == 42)
  {
    v11 = v7 - 1;
    if ((a4 & 1) == 0)
    {
      if (v7 == 2)
      {
        v11 = 1;
      }

      else if (v10[v7 - 2] != 32)
      {
        v10[v7 - 1] = 32;
        v11 = v7;
      }
    }

    v12 = &v10[v11];
  }

  else
  {
    v12 = &v10[v7];
    if ((a4 & 1) == 0)
    {
      *v12++ = 32;
    }
  }

  *v12 = 0;
  if (!*(a1 + 56))
  {
    os_unfair_lock_lock(&s_search_context_unfair_lock);
    if (*(a1 + 56))
    {
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
    }

    else
    {
      v13 = icu_search_context_create();
      __dmb(0xBu);
      *(a1 + 56) = v13;
      os_unfair_lock_unlock(&s_search_context_unfair_lock);
      if (!v13)
      {
        return 0;
      }
    }
  }

  return icu_search_match();
}

void addCrossFieldOidWithLock(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  valuePtr = a2;
  if (a1)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_lock(a3);
      Mutable = *(a1 + 40);
      if (Mutable || (Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]), (*(a1 + 40) = Mutable) != 0))
      {
        CFSetAddValue(Mutable, v7);
      }

      os_unfair_lock_unlock(a3);
      CFRelease(v7);
    }
  }
}

void handlePatternsForPhrases(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t *a4, uint64_t *a5, int a6, UErrorCode a7, uint64_t a8, os_unfair_lock_s *a9)
{
  v117 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (*(a1 + 120))
    {
      v110 = 0;
      v111 = 0;
      if (*a4)
      {
        v15 = *a5;
        v103 = a6;
        v102 = v15;
        if (!v15)
        {
          os_unfair_lock_lock(&s_search_context_unfair_lock);
          v102 = *a5;
          if (v102)
          {
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
          }

          else
          {
            v16 = icu_search_context_create();
            __dmb(0xBu);
            *a5 = v16;
            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            v102 = v16;
            if (!v16)
            {
              return;
            }
          }
        }

        v91 = a9;
        v99 = a1 + 12192;
        v96 = a1 + 4968;
        v95 = a1 + 9784;
        v17 = a1 + 13696;
        v18 = *(a1 + 112);
        v98 = a1 + 12794;
        v88 = a8;
        v87 = a7;
        if (v18)
        {
          v94 = *(v18 + 8);
        }

        else
        {
          v94 = 0;
        }

        v97 = CFLocaleCreate(*MEMORY[0x1E695E480], *(a1 + 128));
        v19 = 0;
        v20 = 0;
        v100 = 0;
        v21 = 0;
        v89 = a1;
        v22 = a1 + 160;
        v23 = *(a1 + 160);
        v24 = *(a1 + 152);
        v86 = (v22 - 144);
        v90 = v22 + 13552;
        v92 = xmmword_1C2BFA360;
        v85 = v22 + 9624;
        v84 = v22 + 4816;
        v101 = a2;
        v25 = a3;
        v26 = v98;
        v93 = v22;
        do
        {
          v110 = 0;
          v111 = 0;
          if (!icu_search_match() || v103 && v23 >= 2 && v23 + v24 >= v101)
          {
            break;
          }

          v21 += v111;
          if (v19 < v25)
          {
            v27 = v110 + v21;
            v28 = (v22 + 16 * v19);
            v29 = v99;
            while (1)
            {
              v24 = *(v28 - 1);
              if (v24 < v20)
              {
                ++v20;
              }

              else
              {
                v20 = *(v28 - 1);
              }

              v30 = *(v17 + 16 * v24);
              if (v21 >= v30)
              {
                v23 = *v28;
                v31 = *v28 + v24;
                if (v27 <= *(v17 + 16 * v31 - 8) + *(v17 + 16 * v31 - 16))
                {
                  break;
                }
              }

              ++v19;
              v28 += 2;
              if (v25 == v19)
              {
                goto LABEL_95;
              }
            }

            v32 = *(v17 + 16 * v24 + 8) + v30;
            if (v30 < v21 && v32 < v21)
            {
              v34 = v101;
              if (v20 + 1 > v101)
              {
                v34 = v20 + 1;
              }

              if (v20 == v34 - 1)
              {
LABEL_40:
                v20 = v34;
              }

              else
              {
                v35 = (v90 + 16 * v20++);
                while (1)
                {
                  v36 = vaddvq_s64(*v35);
                  v32 = v36;
                  if (v35->i64[0] >= v21 || v36 >= v21)
                  {
                    break;
                  }

                  ++v20;
                  ++v35;
                  if (v34 == v20)
                  {
                    goto LABEL_40;
                  }
                }
              }
            }

            if (v32 >= v27)
            {
              v38 = v20;
            }

            else
            {
              v38 = v20 + 1;
            }

            if (v38 >= v31 || v20 >= v101 || v38 >= v101)
            {
              break;
            }

            v41 = v100;
            if (!v100)
            {
              v112.n128_u64[0] = v26;
              v112.n128_u64[1] = v17;
              v113.n128_u64[0] = v99;
              v113.n128_u64[1] = v96;
              v114.n128_u64[0] = v95;
              v114.n128_u64[1] = v101;
              v42 = SILanguageModelCopyLocale();
              v29 = v99;
              v41 = v42;
              if (!v42)
              {
                v100 = 0;
                break;
              }
            }

            v109 = 0;
            v108 = v92;
            v107[0] = v26;
            v107[1] = v17 + 16 * v24;
            v107[2] = v29;
            v107[3] = v96 + 16 * v24;
            v107[4] = v95 + 8 * v24;
            v107[5] = v23;
            v106 = 0;
            v100 = v41;
            KeyPhraseAtIndex = SILanguageModelGetKeyPhraseAtIndex();
            if (KeyPhraseAtIndex != -1)
            {
              v46 = v44;
              if (v44 <= 13)
              {
                v47 = KeyPhraseAtIndex + v24;
                v48 = KeyPhraseAtIndex + v24 + v44;
                if (v38 < v48 && v20 >= v47 && (*(v96 + 16 * v48 - 16) - *(v96 + 16 * v47) + *(v96 + 16 * v48 - 8)) <= 29)
                {
                  v83 = v38;
                  v81[1] = v81;
                  MEMORY[0x1EEE9AC00](v45);
                  v82 = &v81[-4 * v46];
                  bzero(v82, v49);
                  if (v46 < 1)
                  {
                    v54 = 0;
                    v51 = 0;
                  }

                  else
                  {
                    v50 = 0;
                    v51 = 0;
                    v52 = 0;
                    v53 = v47;
                    v54 = 0;
                    v55 = v83 - v53;
                    v56 = v85 + 8 * v53;
                    v57 = (v84 + 16 * v53);
                    v58 = v99;
                    v59 = v82;
                    do
                    {
                      v60 = *(v57 - 1);
                      if (v50)
                      {
                        v61 = *(v57 - 2) + *(v57 - 3);
                        if (v60 > v61)
                        {
                          v62 = &v59[2 * v54];
                          *v62 = v58 + 2 * v61;
                          *(v62 + 2) = v60 - v61;
                          *(v62 + 12) = 1;
                          ++v54;
                          ++v52;
                        }
                      }

                      v63 = *v57;
                      v64 = *(v56 + 8 * v50);
                      v65 = (v58 + 2 * v60);
                      v66 = &v59[2 * v54];
                      *v66 = v65;
                      *(v66 + 2) = v63;
                      v68 = (v64 & 0x800) == 0 && v64 != 0;
                      *(v66 + 12) = v68;
                      if (v63 == 1)
                      {
                        v69 = *v65;
                        if (v69 == 45 || v69 == 38)
                        {
                          *(v66 + 12) = 1;
                        }
                      }

                      ++v54;
                      if (v55 == v50)
                      {
                        v51 = v52 + v50;
                      }

                      ++v50;
                      v57 += 2;
                    }

                    while (v46 != v50);
                  }

                  v105 = 0;
                  v104 = 0;
                  v70 = v89;
                  v71 = (*(*(v89 + 104) + 16))();
                  os_unfair_lock_lock(v91);
                  if (v54)
                  {
                    v72.n128_u64[0] = v109;
                    v73 = *(v70 + 120);
                    v74 = *(v70 + 96);
                    v75 = v86[3];
                    v114 = v86[2];
                    v115 = v75;
                    v116 = v86[4];
                    v76 = v86[1];
                    v112 = *v86;
                    v113 = v76;
                    v76.n128_f64[0] = v71;
                    word_trie_s::insert((v73 + 16), v82, v54, &v112, v88, v87, v74, v106, v76, v72, v105, v104, HIBYTE(v104), 1, 0, v51, 0);
                  }

                  os_unfair_lock_unlock(v91);
                  v38 = v83;
                }
              }
            }

            if (v108 == -1)
            {
              v77 = v38 + 1;
              if (v38 + 1 >= v101)
              {
                v80 = v38;
              }

              else
              {
                v80 = v38 + 1;
              }

              v79 = (v17 + 16 * v80);
            }

            else
            {
              v77 = v108 + v24 + *(&v108 + 1);
              if (v77 == v101)
              {
                v78 = -1;
              }

              else
              {
                v78 = 0;
              }

              v79 = (v17 + 16 * v77 + 16 * v78);
            }

            v26 = v98;
            v21 = *v79;
            if (v77 >= v31)
            {
              ++v19;
            }

            v22 = v93;
          }
        }

        while (v19 < v25);
LABEL_95:
        if (v97)
        {
          CFRelease(v97);
        }

        if (v100)
        {
          CFRelease(v100);
        }
      }
    }
  }
}

__n128 __Block_byref_object_copy__2118(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *___ZL24handleCrossFieldPatternsP23si_completion_pattern_sP26StringTokenizerPhrasesInfotjbbjxP16os_unfair_lock_s_block_invoke(void *result, uint64_t a2, uint64_t a3, int a4, double a5)
{
  if (a3 >= 2)
  {
    v5 = *(result[4] + 8);
    if (*(v5 + 24) < a5)
    {
      *(v5 + 24) = a5;
      *(*(result[5] + 8) + 40) = result[7] + a2;
      *(*(result[5] + 8) + 48) = a3;
      *(*(result[6] + 8) + 24) = a4;
    }
  }

  return result;
}

BOOL GetSentenceCallback(const unsigned __int16 *a1, CFRange *a2, unint64_t *a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
LABEL_24:
    if ((*(a5 + 66) & 1) == 0)
    {
      v34 = *(a5 + 22);
      if (*(a5 + 22))
      {
        v35 = *(a5 + 32);
        v36 = (a5[7] + 16 * v35);
        *v36 = a5[6];
        v36[1] = v34;
        *(a5 + 32) = v35 + 1;
        a5[6] = *(a5 + 21);
        *(a5 + 22) = 0;
      }
    }

    if (*(a5 + 21) < *(a5 + 20))
    {
      return *(a5 + 32) > 0x12Bu;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = &a2[v10];
      length = v11->length;
      if ((a3[v10] & 0x10) != 0)
      {
        if (length >= 1)
        {
          v16 = 0;
          location = v11->location;
          do
          {
            v17 = 0;
            v18 = v16;
            while (a1[v18] != 45)
            {
              ++v17;
              if (length == ++v18)
              {
                v15 = 0;
                v14 = length - v16;
                goto LABEL_15;
              }
            }

            v19 = *(a5 + 21);
            v21 = a5[3];
            v20 = a5[4];
            v22 = *(a5 + 22);
            if (v17)
            {
              v23 = (v21 + 16 * v19);
              *v23 = location;
              v23[1] = v17;
              *(v20 + 8 * v19) = 0;
              LOWORD(v19) = v19 + 1;
              ++v22;
            }

            v24 = v17 + location;
            v25 = (v21 + 16 * v19);
            *v25 = v24;
            v25[1] = 1;
            *(v20 + 8 * v19) = 32;
            *(a5 + 21) = v19 + 1;
            *(a5 + 22) = v22 + 1;
            location = v24 + 1;
            v16 = v18 + 1;
          }

          while (v18 + 1 != length);
        }
      }

      else
      {
        location = v11->location;
        v14 = length;
        v15 = a3[v10];
LABEL_15:
        v26 = *(a5 + 21);
        v27 = a5[4];
        v28 = (a5[3] + 16 * v26);
        *v28 = location;
        v28[1] = v14;
        *(v27 + 8 * v26) = v15;
        *(a5 + 21) = v26 + 1;
        ++*(a5 + 22);
      }

      if (*(a5 + 66) == 1)
      {
        LODWORD(v29) = *(a5 + 21);
      }

      else
      {
        IsValidPhraseToken = SILanguageModelIsValidPhraseToken();
        v31 = *(a5 + 22);
        v29 = *(a5 + 21);
        if (!IsValidPhraseToken || v31 >= 0x7D)
        {
          v32 = *(a5 + 32);
          v33 = (a5[7] + 16 * v32);
          *v33 = a5[6];
          v33[1] = v31;
          *(a5 + 32) = v32 + 1;
          a5[6] = v29;
          *(a5 + 22) = 0;
        }
      }

      if (v29 >= *(a5 + 20) || *(a5 + 32) >= 0x12Cu)
      {
        break;
      }

      if (++v10 == a4)
      {
        goto LABEL_24;
      }
    }
  }

  return 1;
}

BOOL GetTokenCallback(const unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4[1];
  if (v5 <= a1 && &a1[a2] <= a4[2])
  {
    v6 = (a1 - v5) >> 1;
    if ((a3 & 0x10) != 0)
    {
      if (a2 >= 1)
      {
        for (i = 0; i != a2; i = v16 + 1)
        {
          v10 = 0;
          while (a1[i + v10] != 45)
          {
            ++v10;
            if (!(i - a2 + v10))
            {
              v8 = 0;
              v7 = a2 - i;
              goto LABEL_15;
            }
          }

          v11 = *(a4 + 21);
          v13 = a4[3];
          v12 = a4[4];
          v14 = *(a4 + 22);
          if (v10)
          {
            v15 = (v13 + 16 * v11);
            *v15 = v6;
            v15[1] = v10;
            *(v12 + 8 * v11) = 0;
            LOWORD(v11) = v11 + 1;
            ++v14;
          }

          v16 = i + v10;
          v17 = v6 + v10;
          v18 = (v13 + 16 * v11);
          *v18 = v17;
          v18[1] = 1;
          *(v12 + 8 * v11) = 32;
          *(a4 + 21) = v11 + 1;
          *(a4 + 22) = v14 + 1;
          v6 = v17 + 1;
        }
      }
    }

    else
    {
      v7 = a2;
      v8 = a3;
LABEL_15:
      v19 = *(a4 + 21);
      v20 = a4[4];
      v21 = (a4[3] + 16 * v19);
      *v21 = v6;
      v21[1] = v7;
      *(v20 + 8 * v19) = v8;
      *(a4 + 21) = v19 + 1;
      ++*(a4 + 22);
    }

    if ((*(a4 + 66) & 1) == 0)
    {
      IsValidPhraseToken = SILanguageModelIsValidPhraseToken();
      v23 = *(a4 + 22);
      if (IsValidPhraseToken)
      {
        if (v23 <= 0x7C)
        {
          return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
        }
      }

      else if (!*(a4 + 22))
      {
LABEL_22:
        a4[6] = *(a4 + 21);
        *(a4 + 22) = 0;
        return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
      }

      v24 = *(a4 + 32);
      v25 = (a4[7] + 16 * v24);
      *v25 = a4[6];
      v25[1] = v23;
      *(a4 + 32) = v24 + 1;
      goto LABEL_22;
    }
  }

  return *(a4 + 21) >= *(a4 + 20) || *(a4 + 32) > 0x12Bu;
}

uint64_t ___ZL21normalizeSourceStringP26StringTokenizerPhrasesInfoPhmmb_block_invoke()
{
  result = unorm2_getNFCInstance();
  normalizeSourceString(StringTokenizerPhrasesInfo *,unsigned char *,unsigned long,unsigned long,BOOL)::norm2 = result;
  return result;
}

uint64_t handlePatterns(__n128 *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, os_unfair_lock_s *a8)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a3 && (v9 = a1[7].n128_u64[0]) != 0 && (v10 = *(v9 + 16)) != 0)
  {
    v45 = v10;
    v53 = 0;
    v54 = 0;
    v13 = 0;
    v14 = 0;
    v48 = &a1[9];
    v15 = &a1[403].n128_u8[14];
    v16 = &a1[347].n128_u8[a1[403].n128_u16[7] + 8];
    v52 = a3;
    v49 = a2 - a1->n128_u8[0];
    v59 = a2;
    v56 = v16;
    v57 = &a1[403].n128_u8[14];
    v50 = &a1[310];
    while (2)
    {
      v55 = v14;
      v17 = 0;
      while (2)
      {
        v18 = v13;
        while (1)
        {
          v19 = *&v15[2 * v18];
          if (*(a4 + 8 * v17) && !*(a5 + 8 * v17))
          {
            os_unfair_lock_lock(&s_search_context_unfair_lock);
            if (!*(a5 + 8 * v17))
            {
              v20 = icu_search_context_create();
              __dmb(0xBu);
              *(a5 + 8 * v17) = v20;
            }

            os_unfair_lock_unlock(&s_search_context_unfair_lock);
            v16 = v56;
            v15 = v57;
          }

          v63 = 0;
          v64 = 0;
          if (icu_search_match())
          {
            break;
          }

          if (!a6 && !v17 && ++v18 < v59)
          {
            continue;
          }

          goto LABEL_50;
        }

        v21 = v64 + v19;
        v64 += v19;
        v22 = a2;
        while (1)
        {
          v23 = *&v15[2 * v18];
          if (v21 <= v23)
          {
            break;
          }

          if (++v18 >= v59)
          {
            LODWORD(v18) = a2;
            goto LABEL_22;
          }
        }

        v53 |= v21 < v23;
LABEL_22:
        if (v17)
        {
          v24 = v54;
        }

        else
        {
          v24 = v18;
        }

        if (v17 + 1 < v52)
        {
          v54 = v24;
          v13 = v18 + 1;
          ++v17;
          if (a2 > (v18 + 1))
          {
            continue;
          }

          goto LABEL_50;
        }

        break;
      }

      v25 = v16;
      v26 = v24;
      v27 = v24 - (v53 & 1);
      memset(v65, 0, sizeof(v65));
      if (v49 > v27)
      {
        v28 = 0;
        v29 = v27;
        v30 = v27;
        do
        {
          if (v27 == v29)
          {
            v31 = v30;
            v32 = *&v48[16 * v30];
          }

          else
          {
            if (v28 - 13 < 0xFFFFFFFFFFFFFFF1)
            {
              goto LABEL_44;
            }

            v31 = v30;
            v33 = &v48[16 * v30];
            v34 = *(v33 - 2);
            v35 = *(v33 - 1);
            v36 = &v65[v28];
            *v36 = &v50[2 * v34 + 2 * v35];
            v32 = *v33;
            *(v36 + 2) = v32 - (v35 + v34);
            ++v28;
            *(v36 + 12) = 1;
          }

          v37 = &v65[v28];
          *v37 = &v50[2 * v32];
          v38 = *&v48[16 * v31 + 8];
          *(v37 + 2) = v38;
          *(v37 + 12) = 0;
          if (v28)
          {
            v39 = v38 <= 20;
          }

          else
          {
            v39 = 1;
          }

          v40 = !v39;
          if (v38 > 40 || (v40 & 1) != 0)
          {
            goto LABEL_45;
          }

          ++v28;
          v29 = ++v30;
        }

        while (v49 > v30);
        if (!v28)
        {
          goto LABEL_45;
        }

LABEL_44:
        v62 = 0;
        v61 = 0;
        v41 = (*(a1[6].n128_u64[1] + 16))();
        os_unfair_lock_lock(a8);
        v42 = a1[4];
        v60[2] = a1[3];
        v60[3] = v42;
        v60[4] = a1[5];
        v43 = a1[2];
        v60[0] = a1[1];
        v60[1] = v43;
        v43.n128_f64[0] = v41;
        SIWordTrieInsert(v45, v65, v28, v60, a7, a1[6].n128_u32[0], v62, v61, v43, HIBYTE(v61), a6);
        v22 = a2;
        os_unfair_lock_unlock(a8);
        v55 = 1;
      }

LABEL_45:
      if (v17 + 2 < v52 || v22 <= (v26 + 1))
      {
LABEL_50:
        LOBYTE(v14) = v55;
        return v14 & 1;
      }

      v13 = v26 + 2;
      v39 = v22 > (v26 + 2);
      v54 = v26 + 1;
      v16 = v25;
      v14 = v55;
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

uint64_t tokenrangescallback(unsigned __int16 *a1, uint64_t a2, char a3, void *a4, __n128 a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4[9];
  if (a3)
  {
    if (v8)
    {
      if (*(a4 + 33) < *(a4 + 32))
      {
        MEMORY[0x1EEE9AC00](a5);
        v10 = &v30.i8[-((v9 + 16) & 0xFFFFFFFFFFFFFFF0)];
        bzero(v10, (6 * a2) | 1);
        v11 = _utf16_to_utf8(a1, a2, v10, (6 * a2) | 1, *(a4 + 80));
        if (v11)
        {
          v12 = v11;
          v10[v11] = 0;
          v13 = *(*a4 + 88);
          v29 = *(*a4 + 96);
          v30 = *(*a4 + 88);
          printf("[%d,%d] %s\n", v30.i32[0], v29, v10);
          v14 = a4[6];
          if (v14)
          {
            if (v14 + v12 < a4[5])
            {
              v15 = *(a4[1] + 2 * v13);
              if (v15 >> 8 >= 0x11 && ((v15 & 0xFF00) == 0x1100 || (v15 - 11904) >> 7 < 0x197 || v15 - 65376 <= 0x4F))
              {
                v16.i64[0] = 0xFFFFFFFFLL;
                v16.i64[1] = 0xFFFFFFFFLL;
                v17 = vandq_s8(v30, v16);
                v18 = a4[4];
                v19 = *(a4 + 13);
                *(a4 + 13) = v19 + 1;
                *(v18 + 16 * v19) = v17;
                memcpy(v14, v10, v12);
                v20 = a4[6];
                v21 = v20 - *(a4 + 14);
                v22 = a4[9];
                v23 = *(a4 + 33);
                *(a4 + 33) = v23 + 1;
                *(v22 + 2 * v23) = v21;
                a4[6] = v20 + v12;
              }
            }
          }
        }
      }
    }
  }

  else if (!v8)
  {
    v25 = *(a4 + 13);
    v26 = *(a4 + 12);
    if (v25 >= v26)
    {
      return 1;
    }

    v27 = a4[1];
    if (v27 <= a1 && &a1[a2] <= a4[2])
    {
      v28 = (a4[4] + 16 * v25);
      LODWORD(v25) = v25 + 1;
      *(a4 + 13) = v25;
      *v28 = (a1 - v27) >> 1;
      v28[1] = a2;
    }

    if (v25 >= v26)
    {
      return 1;
    }
  }

  return 0;
}

double pqinit_CompletionItem_s(uint64_t a1)
{
  *(a1 + 8) = xmmword_1C2BFA370;
  v2 = malloc_type_zone_malloc(queryZone, 0x1DC0uLL, 0xA4971684uLL);
  if (!v2)
  {
    _log_fault_for_malloc_failure();
  }

  *a1 = v2;
  result = 0.0;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void pqdispose_CompletionItem_s(void **a1)
{
  if (a1[2] >= 2)
  {
    v2 = 1;
    v3 = 368;
    do
    {
      CFRelease(*(*a1 + v3));
      ++v2;
      v3 += 224;
    }

    while (a1[2] > v2);
  }

  v4 = *a1;

  free(v4);
}

double GetCompletionItemWeight(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v4 = *(a1 + 16);
  if (*(a1 + 32) + 1 == *(a1 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a1 + 32) + 1 - *(a1 + 8);
  }

  v6 = *(a1 + 152);
  v7 = *(a1 + 156);
  v8 = *(a1 + 160);
  v9 = (v6 + v4) / v4 * *&ranking_factor_weights + 0.0;
  v10 = 0.0;
  if (v2)
  {
    v10 = log(v2) * 18.9648897;
  }

  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v4;
  v15 = v10 + v3;
  v16 = log(v3);
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  v17 = v9 + v16 * *(&ranking_factor_weights + 1);
  v18 = *(a1 + 24);
  v19 = *&qword_1EDD783F0;
  if (*&qword_1EDD783F0 >= v18)
  {
    v22 = log(*(a1 + 24)) * (*&xmmword_1EDD783F8 * *&qword_1EDD783E8);
  }

  else
  {
    v20 = log(*&qword_1EDD783F0);
    v21 = *&qword_1EDD783E8;
    v22 = log(v18 - v19) * unk_1EDD78408 * *(&xmmword_1EDD783F8 + 1) + v20 * v21;
    v14 = v4;
  }

  v24 = v11 / v12;
  v25 = v11 / v13;
  v26 = v17 + v22;
  v27 = *&xmmword_1EDD78418;
  v28 = v11 / v14;
  if (*&xmmword_1EDD78418 >= v5)
  {
    v32 = log((v5 / 2 + 1)) * (*(&xmmword_1EDD78418 + 1) * *&qword_1EDD78410);
  }

  else
  {
    v29 = v25;
    v30 = log(*&xmmword_1EDD78418 * 0.5 + 1.0);
    v31 = *(&xmmword_1EDD78418 + 1) * *&qword_1EDD78410;
    v32 = log((v5 - v27) * 0.5 + 1.0) * unk_1EDD78430 * *&qword_1EDD78428 + v30 * v31;
    v25 = v29;
  }

  v33 = v26 + v32;
  v34 = 0.0;
  if (*(&xmmword_1EDD78438 + 1) >= v24)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = *&xmmword_1EDD78438;
  }

  v36 = v33 + v35;
  if (unk_1EDD78450 >= v25)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = *&qword_1EDD78448;
  }

  v38 = v36 + v37;
  if (*(&xmmword_1EDD78458 + 1) <= v28)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *&xmmword_1EDD78458;
  }

  v40 = v38 + v39 + *(a1 + 208) * *&qword_1EDD78468;
  if (*(a1 + 217))
  {
    v41 = unk_1EDD78470;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = v40 + v41;
  v43 = *&xmmword_1EDD78478;
  if (!*(a1 + 219))
  {
    v43 = 0.0;
  }

  v44 = v42 + v43;
  if (*(a1 + 218))
  {
    v45 = *(&xmmword_1EDD78478 + 1);
  }

  else
  {
    v45 = 0.0;
  }

  v46 = v44 + v45 + *(a1 + 48) * v6 * *&qword_1EDD78490;
  if (*(a1 + 220))
  {
    v34 = *(&xmmword_1EDD78498 + 1);
  }

  v47 = v46 + v34;
  v48 = 157680000.0;
  if (*(a1 + 40) > 0.0)
  {
    v48 = *(a1 + 40);
  }

  result = v47 - log(v48) * *&qword_1EDD78488;
  v49 = *(a1 + 212);
  switch(v49)
  {
    case 4:
      v50 = *&xmmword_1EDD784B8;
      break;
    case 3:
      v50 = qword_1EDD784B0;
      break;
    case 2:
      v50 = qword_1EDD784A8;
      break;
    default:
      return result;
  }

  return result - *&v50;
}

void SICompletionModelEnumerateCompletions(__n128 a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v323 = *MEMORY[0x1E69E9840];
  if (!v1 || !v6)
  {
    return;
  }

  v7 = v5;
  v8 = v2;
  v9 = v1;
  v252 = v4;
  v253 = v3;
  if (v5 >= 0xC8)
  {
    v10 = 200;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(v1 + 4);
  v251 = v6;
  if (v11)
  {
    v265 = 0uLL;
    v266 = 0;
    pqinit_CompletionItem_s(&v265);
    v22 = *(v9 + 16);
    v23 = strdup(v8);
    v24 = v23;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v23;
    while (1)
    {
      v29 = v27;
      v31 = *v28++;
      v30 = v31;
      if (v31 == 92)
      {
        v27 = 1;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v30)
        {
          if (!((v25 == 0) | v26 & 1) && v23[v25 - 1] == 42)
          {
            v23[v25 - 1] = 0;
          }

          v23[v25] = 0;
          v57 = *__error();
          v58 = _SILogForLogForCategory(1);
          v59 = 2 * (dword_1EBF46AD0 < 4);
          if (os_log_type_enabled(v58, v59))
          {
            LODWORD(v310[0]) = 134217984;
            *(v310 + 4) = v7;
            _os_log_impl(&dword_1C278D000, v58, v59, "Completion v1 count:%llu", v310, 0xCu);
          }

          *__error() = v57;
          if (dword_1EBF46AD0 >= 5)
          {
            v234 = *__error();
            v235 = _SILogForLogForCategory(1);
            if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v310[0]) = 136315394;
              *(v310 + 4) = v24;
              WORD6(v310[0]) = 2080;
              *(v310 + 14) = v8;
              _os_log_impl(&dword_1C278D000, v235, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v310, 0x16u);
            }

            *__error() = v234;
          }

          v60 = *MEMORY[0x1E695E480];
          v61 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v24, 0x8000100u);
          MutableCopy = CFStringCreateMutableCopy(v60, 0, v61);
          CFRelease(v61);
          CFStringLowercase(MutableCopy, 0);
          Length = CFStringGetLength(MutableCopy);
          CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
          if (v22)
          {
            v65 = CharactersPtr;
            bzero(&v284, 0x1180uLL);
            v66 = -4480;
            do
            {
              v67 = &v284 + v66;
              *(v67 + 584) = 0;
              *(v67 + 291) = 0uLL;
              *(v67 + 290) = 0uLL;
              *(v67 + 289) = 0uLL;
              *(v67 + 288) = 0uLL;
              *(v67 + 287) = 0uLL;
              *(v67 + 286) = 0uLL;
              *(v67 + 285) = 0uLL;
              *(v67 + 284) = 0uLL;
              *(v67 + 283) = 0uLL;
              *(v67 + 282) = 0uLL;
              *(v67 + 281) = 0uLL;
              *(v67 + 280) = 0uLL;
              *(v67 + 585) = 0xFFEFFFFFFFFFFFFFLL;
              *(v67 + 293) = 0uLL;
              v66 += 224;
            }

            while (v66);
            v274 = 0u;
            v275 = 0u;
            v272 = 0u;
            v273 = 0u;
            v271 = 0u;
            v255 = 0u;
            v256 = 0u;
            v254 = 0x3FF0000000000000uLL;
            *(&v255 + 7) = 0;
            *&v256 = &v271;
            *&v257 = v253;
            *&v297 = MEMORY[0x1E69E9820];
            *(&v297 + 1) = 0x40000000;
            *&v298 = ___ZL24update_completions_queueP16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
            *(&v298 + 1) = &__block_descriptor_tmp_14_2137;
            *&v299 = Length;
            *(&v299 + 1) = v9;
            *&v300 = v253;
            *(&v300 + 1) = v252;
            *&v301 = v7;
            *(&v301 + 1) = &v284;
            *&v302 = v65;
            *(&v302 + 1) = &v265;
            *&v303 = v24;
            *(&v303 + 1) = MutableCopy;
            bzero(v310, 0x1400uLL);
            word_trie_s::iterateFragments(v68, v22 + 16, v310, 0, 0, &v254, &v297, 0, 0);
          }

          CFRelease(MutableCopy);
          free(v24);
          LOBYTE(v259) = 0;
LABEL_50:
          v69 = v266;
          if (v266 == 1)
          {
            goto LABEL_74;
          }

          v70 = v265;
          v71 = *(v265 + 400);
          v319 = *(v265 + 384);
          v320 = v71;
          v72 = *(v265 + 432);
          v321 = *(v265 + 416);
          v322 = v72;
          v73 = *(v265 + 336);
          v315 = *(v265 + 320);
          v316 = v73;
          v74 = *(v265 + 368);
          v317 = *(v265 + 352);
          v318 = v74;
          v75 = *(v265 + 272);
          v311 = *(v265 + 256);
          v312 = v75;
          v76 = *(v265 + 304);
          v313 = *(v265 + 288);
          v314 = v76;
          v77 = *(v265 + 240);
          v310[0] = *(v265 + 224);
          v310[1] = v77;
          v78 = v265 + 224 * v266;
          v280 = *(v78 - 80);
          v281 = *(v78 - 64);
          v282 = *(v78 - 48);
          v283 = *(v78 - 32);
          v276 = *(v78 - 144);
          v277 = *(v78 - 128);
          v278 = *(v78 - 112);
          v279 = *(v78 - 96);
          v272 = *(v78 - 208);
          v273 = *(v78 - 192);
          v274 = *(v78 - 176);
          v275 = *(v78 - 160);
          v271 = *(v78 - 224);
          v79 = *(v78 - 24);
          v264 = *(v78 - 16);
          memmove((v265 + 224), (v78 - 224), 0xC8uLL);
          *(v70 + 424) = v79;
          *(v70 + 432) = v264;
          v266 = v69 - 1;
          v80 = *(&v265 + 1) >> 1;
          v294 = v281;
          v295 = v282;
          v296 = v283;
          v290 = v277;
          v291 = v278;
          v292 = v279;
          v293 = v280;
          v286 = v273;
          v287 = v274;
          v288 = v275;
          v289 = v276;
          v81 = 3;
          v82 = 2;
          v83 = 1;
          v284 = v271;
          v285 = v272;
          while (1)
          {
            v84 = (v265 + 224 * v82);
            v85 = v84[12].n128_f64[1];
            v254 = v84[13];
            v86 = v265 + 224 * v81;
            v306 = *(v86 + 144);
            v307 = *(v86 + 160);
            v308 = *(v86 + 176);
            v309 = *(v86 + 192);
            v302 = *(v86 + 80);
            v303 = *(v86 + 96);
            v304 = *(v86 + 112);
            v305 = *(v86 + 128);
            v298 = *(v86 + 16);
            v299 = *(v86 + 32);
            v300 = *(v86 + 48);
            v301 = *(v86 + 64);
            v297 = *v86;
            v87 = *(v86 + 200);
            v262 = *(v86 + 208);
            if (v81 >= v69)
            {
              v307 = xmmword_1C2BF6CF0;
              v308 = unk_1C2BF6D00;
              v309 = 0;
              v303 = xmmword_1C2BF6CB0;
              v304 = unk_1C2BF6CC0;
              v306 = unk_1C2BF6CE0;
              v305 = xmmword_1C2BF6CD0;
              v299 = xmmword_1C2BF6C70;
              v300 = unk_1C2BF6C80;
              v302 = unk_1C2BF6CA0;
              v301 = xmmword_1C2BF6C90;
              v298 = unk_1C2BF6C60;
              v297 = max_CompletionItem_s;
              v262 = xmmword_1C2BF6D20;
              if (v82 >= v69)
              {
                goto LABEL_71;
              }

              v87 = 1.79769313e308;
            }

            if (v85 >= v79)
            {
              if (v87 >= v79)
              {
                _X8 = v265 + 448 * v83;
                __asm { PRFM            #1, [X8] }

LABEL_71:
                (*(v251 + 16))(v251, v310, &v259);
                if (v318)
                {
                  CFRelease(v318);
                }

                if (v259 == 1)
                {
LABEL_74:
                  pqdispose_CompletionItem_s(&v265);
                  return;
                }

                goto LABEL_50;
              }

              v90 = &v262;
              v89 = &v297;
              v91 = v81;
            }

            else
            {
              _NF = v87 < v85;
              if (v87 >= v85)
              {
                v89 = (v265 + 224 * v82);
              }

              else
              {
                v89 = &v297;
              }

              if (v87 < v85)
              {
                v90 = &v262;
              }

              else
              {
                v87 = v85;
                v90 = &v254;
              }

              if (_NF)
              {
                v91 = v81;
              }

              else
              {
                v91 = v82;
              }
            }

            v280 = v89[9];
            v281 = v89[10];
            v282 = v89[11];
            v283 = *(v89 + 24);
            v276 = v89[5];
            v277 = v89[6];
            v278 = v89[7];
            v279 = v89[8];
            v272 = v89[1];
            v273 = v89[2];
            v274 = v89[3];
            v275 = v89[4];
            v271 = *v89;
            _X9 = v265 + 448 * v91;
            __asm { PRFM            #1, [X9] }

            if (v91 != v83)
            {
              v82 = 2 * v91;
              v81 = (2 * v91) | 1;
              v97 = v265 + 224 * v91;
              *(v97 + 144) = v293;
              *(v97 + 160) = v294;
              *(v97 + 176) = v295;
              *(v97 + 192) = v296;
              *(v97 + 80) = v289;
              *(v97 + 96) = v290;
              *(v97 + 112) = v291;
              *(v97 + 128) = v292;
              *(v97 + 16) = v285;
              *(v97 + 32) = v286;
              *(v97 + 48) = v287;
              *(v97 + 64) = v288;
              *v97 = v284;
              *(v97 + 200) = v79;
              *(v97 + 208) = v264;
              v98 = v265 + 224 * v83;
              *v98 = v271;
              *(v98 + 144) = v280;
              *(v98 + 160) = v281;
              *(v98 + 176) = v282;
              *(v98 + 192) = v283;
              *(v98 + 80) = v276;
              *(v98 + 96) = v277;
              *(v98 + 112) = v278;
              *(v98 + 128) = v279;
              *(v98 + 16) = v272;
              *(v98 + 32) = v273;
              *(v98 + 48) = v274;
              *(v98 + 64) = v275;
              *(v98 + 200) = v87;
              *(v98 + 208) = *v90;
              v281 = v294;
              v282 = v295;
              v283 = v296;
              v277 = v290;
              v278 = v291;
              v279 = v292;
              v280 = v293;
              v273 = v286;
              v274 = v287;
              v275 = v288;
              v276 = v289;
              v271 = v284;
              v272 = v285;
              v83 = v91;
              if (v91 < v80)
              {
                continue;
              }
            }

            goto LABEL_71;
          }
        }

LABEL_18:
        v27 = 0;
        v23[v25++] = v30;
        v26 = v29;
      }
    }
  }

  v262 = 0uLL;
  v263 = 0;
  pqinit_CompletionItem_s(&v262);
  v259 = 0;
  v260 = 0;
  v261 = 0;
  pqinit_CompletionItem_s(&v259);
  v12 = *(v9 + 24);
  v13 = strdup(v8);
  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v13;
  while (1)
  {
    v19 = v17;
    v21 = *v18++;
    v20 = v21;
    if (v21 != 92)
    {
      break;
    }

    v17 = 1;
    if (v19)
    {
LABEL_12:
      v17 = 0;
      v13[v15++] = v20;
      v16 = v19;
    }
  }

  if (v20)
  {
    goto LABEL_12;
  }

  if (!((v15 == 0) | v16 & 1) && v13[v15 - 1] == 42)
  {
    v13[v15 - 1] = 0;
  }

  v13[v15] = 0;
  v32 = *__error();
  v33 = _SILogForLogForCategory(1);
  v34 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v9 + 4);
    LODWORD(v310[0]) = 67109376;
    DWORD1(v310[0]) = v35;
    WORD4(v310[0]) = 2048;
    *(v310 + 10) = v10;
    _os_log_impl(&dword_1C278D000, v33, v34, "Completion v2 options: 0x%x count:%llu", v310, 0x12u);
  }

  *__error() = v32;
  if (dword_1EBF46AD0 >= 5)
  {
    v232 = *__error();
    v233 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v310[0]) = 136315394;
      *(v310 + 4) = v14;
      WORD6(v310[0]) = 2080;
      *(v310 + 14) = v8;
      _os_log_impl(&dword_1C278D000, v233, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v310, 0x16u);
    }

    *__error() = v232;
  }

  v245 = v10;
  v36 = *MEMORY[0x1E695E480];
  v37 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v14, 0x8000100u);
  v246 = v36;
  v38 = CFStringCreateMutableCopy(v36, 0, v37);
  CFRelease(v37);
  CFStringLowercase(v38, 0);
  v39 = CFStringGetLength(v38);
  v40 = CFStringGetCharactersPtr(v38);
  if (v12)
  {
    v41 = v40;
    bzero(&v284, 0x1180uLL);
    v42 = -4480;
    do
    {
      v43 = &v284 + v42;
      *(v43 + 584) = 0;
      *(v43 + 291) = 0uLL;
      *(v43 + 290) = 0uLL;
      *(v43 + 289) = 0uLL;
      *(v43 + 288) = 0uLL;
      *(v43 + 287) = 0uLL;
      *(v43 + 286) = 0uLL;
      *(v43 + 285) = 0uLL;
      *(v43 + 284) = 0uLL;
      *(v43 + 283) = 0uLL;
      *(v43 + 282) = 0uLL;
      *(v43 + 281) = 0uLL;
      *(v43 + 280) = 0uLL;
      *(v43 + 585) = 0xFFEFFFFFFFFFFFFFLL;
      *(v43 + 293) = 0uLL;
      v42 += 224;
    }

    while (v42);
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v271 = 0u;
    v255 = 0u;
    v256 = 0u;
    v254 = 0x3FF0000000000000uLL;
    *(&v255 + 7) = 0;
    *&v256 = &v271;
    *&v257 = v253;
    *&v265 = 0;
    *(&v265 + 1) = &v265;
    v266 = 0x2000000000;
    v267 = 0;
    if (v253)
    {
      v44 = *v253;
      if (v44 == 106)
      {
        if (v253[1] == 97)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v44 == 122)
        {
          v44 = *(v253 + 1);
          v231 = 104;
        }

        else
        {
          v231 = 122;
        }

        if (v231 == v44)
        {
LABEL_31:
          v267 = 1;
        }
      }
    }

    *&v297 = MEMORY[0x1E69E9820];
    *(&v297 + 1) = 0x40000000;
    *&v298 = ___ZL27update_completions_queue_v2P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
    *(&v298 + 1) = &unk_1E81931E0;
    *(&v299 + 1) = v9;
    *&v299 = &v265;
    *&v300 = v252;
    *(&v300 + 1) = v39;
    *&v301 = v245;
    *(&v301 + 1) = &v284;
    *&v302 = v41;
    *(&v302 + 1) = &v262;
    *&v303 = v14;
    bzero(v310, 0x1400uLL);
    word_trie_s::iterateFragments(v45, v12 + 16, v310, 0, 0, &v254, &v297, 0, 0);
    _Block_object_dispose(&v265, 8);
  }

  CFRelease(v38);
  free(v14);
  v46 = *(v9 + 32);
  v47 = strdup(v8);
  v48 = v47;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = v47;
  v53 = v245;
  while (2)
  {
    while (2)
    {
      v54 = v51;
      v56 = *v52++;
      v55 = v56;
      if (v56 == 92)
      {
        v51 = 1;
        if ((v54 & 1) == 0)
        {
          continue;
        }

        goto LABEL_38;
      }

      break;
    }

    if (v55)
    {
LABEL_38:
      v51 = 0;
      v47[v49++] = v55;
      v50 = v54;
      continue;
    }

    break;
  }

  if (!((v49 == 0) | v50 & 1) && v47[v49 - 1] == 42)
  {
    v47[v49 - 1] = 0;
  }

  v47[v49] = 0;
  v101 = *__error();
  v102 = _SILogForLogForCategory(1);
  v103 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v102, v103))
  {
    v104 = *(v9 + 4);
    LODWORD(v310[0]) = 67109376;
    DWORD1(v310[0]) = v104;
    WORD4(v310[0]) = 2048;
    *(v310 + 10) = v53;
    _os_log_impl(&dword_1C278D000, v102, v103, "Completion v3 options: 0x%x count:%llu", v310, 0x12u);
  }

  *__error() = v101;
  if (dword_1EBF46AD0 >= 5)
  {
    v236 = *__error();
    v237 = _SILogForLogForCategory(1);
    if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v310[0]) = 136315394;
      *(v310 + 4) = v48;
      WORD6(v310[0]) = 2080;
      *(v310 + 14) = v8;
      _os_log_impl(&dword_1C278D000, v237, OS_LOG_TYPE_DEFAULT, "Creating unescaped string %s with from %s", v310, 0x16u);
    }

    *__error() = v236;
  }

  v105 = CFStringCreateWithCString(v246, v48, 0x8000100u);
  v106 = CFStringCreateMutableCopy(v246, 0, v105);
  CFRelease(v105);
  CFStringLowercase(v106, 0);
  v107 = CFStringGetLength(v106);
  v108 = CFStringGetCharactersPtr(v106);
  if (v46)
  {
    v109 = v108;
    bzero(&v284, 0x1180uLL);
    v110 = -4480;
    do
    {
      v111 = &v284 + v110;
      *(v111 + 584) = 0;
      *(v111 + 291) = 0uLL;
      *(v111 + 290) = 0uLL;
      *(v111 + 289) = 0uLL;
      *(v111 + 288) = 0uLL;
      *(v111 + 287) = 0uLL;
      *(v111 + 286) = 0uLL;
      *(v111 + 285) = 0uLL;
      *(v111 + 284) = 0uLL;
      *(v111 + 283) = 0uLL;
      *(v111 + 282) = 0uLL;
      *(v111 + 281) = 0uLL;
      *(v111 + 280) = 0uLL;
      *(v111 + 585) = 0xFFEFFFFFFFFFFFFFLL;
      *(v111 + 293) = 0uLL;
      v110 += 224;
    }

    while (v110);
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v271 = 0u;
    v255 = 0u;
    v256 = 0u;
    v254 = 0x3FF0000000000000uLL;
    *(&v255 + 7) = 0;
    *&v256 = &v271;
    *&v257 = v253;
    *&v297 = MEMORY[0x1E69E9820];
    *(&v297 + 1) = 0x40000000;
    *&v298 = ___ZL27update_completions_queue_v3P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke;
    *(&v298 + 1) = &__block_descriptor_tmp_32_2143;
    *&v299 = v107;
    *(&v299 + 1) = v252;
    *&v300 = v53;
    *(&v300 + 1) = &v284;
    *&v301 = v109;
    *(&v301 + 1) = &v259;
    *&v302 = v48;
    bzero(v310, 0x1400uLL);
    word_trie_s::iterateFragments(v112, v46 + 16, v310, 0, 0, &v254, &v297, 0, 0);
  }

  CFRelease(v106);
  free(v48);
  v240 = v238;
  MEMORY[0x1EEE9AC00](v113);
  v242 = &v238[-224 * v53];
  bzero(v242, 224 * v53);
  MEMORY[0x1EEE9AC00](v114);
  v115 = (8 * v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v252 = &v238[-v115];
  bzero(&v238[-v115], 8 * v53);
  MEMORY[0x1EEE9AC00](v116);
  v243 = &v238[-224 * v53];
  bzero(v243, 224 * v53);
  MEMORY[0x1EEE9AC00](v117);
  v244 = &v238[-v115];
  bzero(&v238[-v115], 8 * v53);
  v118 = MEMORY[0x1E695E9F8];
  v119 = v246;
  Mutable = CFSetCreateMutable(v246, 0, MEMORY[0x1E695E9F8]);
  v249 = CFSetCreateMutable(v119, 0, v118);
  v241 = vcvtd_n_f64_u32(v53, 1uLL);
  v120 = v263;
  v121 = v263 - 1;
  if (v263 == 1)
  {
    v247 = 0;
    goto LABEL_115;
  }

  v247 = 0;
  while (2)
  {
    v122 = v262;
    v123 = *(v262 + 336);
    v277 = *(v262 + 320);
    v278 = v123;
    v279 = *(v262 + 352);
    v124 = *(v262 + 272);
    v273 = *(v262 + 256);
    v274 = v124;
    v125 = *(v262 + 304);
    v275 = *(v262 + 288);
    v276 = v125;
    v126 = *(v262 + 240);
    v271 = *(v262 + 224);
    v272 = v126;
    v127 = *(v262 + 368);
    v128 = *(v262 + 424);
    v256 = *(v262 + 408);
    v257 = v128;
    v258 = *(v262 + 440);
    v129 = *(v262 + 392);
    v254 = *(v262 + 376);
    v255 = v129;
    v130 = v262 + 224 * v120;
    v306 = *(v130 - 80);
    v307 = *(v130 - 64);
    v308 = *(v130 - 48);
    v309 = *(v130 - 32);
    v302 = *(v130 - 144);
    v303 = *(v130 - 128);
    v304 = *(v130 - 112);
    v305 = *(v130 - 96);
    v298 = *(v130 - 208);
    v299 = *(v130 - 192);
    v300 = *(v130 - 176);
    v301 = *(v130 - 160);
    v297 = *(v130 - 224);
    v131 = *(v130 - 24);
    v268 = *(v130 - 16);
    memmove((v262 + 224), (v130 - 224), 0xC8uLL);
    *(v122 + 424) = v131;
    *(v122 + 432) = v268;
    v263 = v121;
    v132 = *(&v262 + 1) >> 1;
    v319 = v307;
    v320 = v308;
    *&v321 = v309;
    v315 = v303;
    v316 = v304;
    v318 = v306;
    v317 = v305;
    v311 = v299;
    v312 = v300;
    v314 = v302;
    v313 = v301;
    v133 = 3;
    v134 = 2;
    v135 = 1;
    v310[1] = v298;
    v310[0] = v297;
    while (2)
    {
      v136 = v262 + 224 * v134;
      v137 = *(v136 + 200);
      v265 = *(v136 + 208);
      v138 = v262 + 224 * v133;
      v293 = *(v138 + 144);
      v294 = *(v138 + 160);
      v295 = *(v138 + 176);
      v296 = *(v138 + 192);
      v289 = *(v138 + 80);
      v290 = *(v138 + 96);
      v291 = *(v138 + 112);
      v292 = *(v138 + 128);
      v285 = *(v138 + 16);
      v286 = *(v138 + 32);
      v287 = *(v138 + 48);
      v288 = *(v138 + 64);
      v284 = *v138;
      v139 = *(v138 + 200);
      v270 = *(v138 + 208);
      if (v133 >= v120)
      {
        v294 = xmmword_1C2BF6CF0;
        v295 = unk_1C2BF6D00;
        v296 = 0;
        v290 = xmmword_1C2BF6CB0;
        v291 = unk_1C2BF6CC0;
        v292 = xmmword_1C2BF6CD0;
        v293 = unk_1C2BF6CE0;
        v286 = xmmword_1C2BF6C70;
        v287 = unk_1C2BF6C80;
        v288 = xmmword_1C2BF6C90;
        v289 = unk_1C2BF6CA0;
        v284 = max_CompletionItem_s;
        v285 = unk_1C2BF6C60;
        v270 = xmmword_1C2BF6D20;
        if (v134 >= v120)
        {
          goto LABEL_107;
        }

        v139 = 1.79769313e308;
      }

      if (v137 < v131)
      {
        v140 = v139 < v137;
        if (v139 >= v137)
        {
          v141 = (v262 + 224 * v134);
        }

        else
        {
          v141 = &v284;
        }

        if (v139 < v137)
        {
          v142 = &v270;
        }

        else
        {
          v139 = v137;
          v142 = &v265;
        }

        if (v140)
        {
          v143 = v133;
        }

        else
        {
          v143 = v134;
        }

LABEL_99:
        v306 = v141[9];
        v307 = v141[10];
        v308 = v141[11];
        v309 = *(v141 + 24);
        v302 = v141[5];
        v303 = v141[6];
        v304 = v141[7];
        v305 = v141[8];
        v298 = v141[1];
        v299 = v141[2];
        v300 = v141[3];
        v301 = v141[4];
        v297 = *v141;
        _X9 = v262 + 448 * v143;
        __asm { PRFM            #1, [X9] }

        if (v143 == v135)
        {
          goto LABEL_107;
        }

        v134 = 2 * v143;
        v133 = (2 * v143) | 1;
        v146 = v262 + 224 * v143;
        *(v146 + 144) = v318;
        *(v146 + 160) = v319;
        *(v146 + 176) = v320;
        *(v146 + 192) = v321;
        *(v146 + 80) = v314;
        *(v146 + 96) = v315;
        *(v146 + 112) = v316;
        *(v146 + 128) = v317;
        *(v146 + 16) = v310[1];
        *(v146 + 32) = v311;
        *(v146 + 48) = v312;
        *(v146 + 64) = v313;
        *v146 = v310[0];
        *(v146 + 200) = v131;
        *(v146 + 208) = v268;
        v147 = v262 + 224 * v135;
        *v147 = v297;
        *(v147 + 144) = v306;
        *(v147 + 160) = v307;
        *(v147 + 176) = v308;
        *(v147 + 192) = v309;
        *(v147 + 80) = v302;
        *(v147 + 96) = v303;
        *(v147 + 112) = v304;
        *(v147 + 128) = v305;
        *(v147 + 16) = v298;
        *(v147 + 32) = v299;
        *(v147 + 48) = v300;
        *(v147 + 64) = v301;
        *(v147 + 200) = v139;
        *(v147 + 208) = *v142;
        v307 = v319;
        v308 = v320;
        v309 = v321;
        v303 = v315;
        v304 = v316;
        v306 = v318;
        v305 = v317;
        v299 = v311;
        v300 = v312;
        v302 = v314;
        v301 = v313;
        v298 = v310[1];
        v297 = v310[0];
        v135 = v143;
        if (v143 >= v132)
        {
          goto LABEL_107;
        }

        continue;
      }

      break;
    }

    if (v139 < v131)
    {
      v142 = &v270;
      v141 = &v284;
      v143 = v133;
      goto LABEL_99;
    }

    _X8 = v262 + 448 * v135;
    __asm { PRFM            #1, [X8] }

LABEL_107:
    if (v127)
    {
      v150 = Mutable;
      if (!contains_similar_string(v127, Mutable, v253) && !CFSetContainsValue(v150, v127))
      {
        v151 = v278;
        v152 = v247;
        v153 = &v242[224 * v247];
        *(v153 + 6) = v277;
        *(v153 + 7) = v151;
        *(v153 + 8) = v279;
        v154 = v274;
        *(v153 + 2) = v273;
        *(v153 + 3) = v154;
        v155 = v276;
        *(v153 + 4) = v275;
        *(v153 + 5) = v155;
        v156 = v272;
        *v153 = v271;
        *(v153 + 1) = v156;
        v157 = v254;
        *(v153 + 168) = v255;
        v158 = v257;
        *(v153 + 184) = v256;
        *(v153 + 200) = v158;
        *(v153 + 18) = v127;
        *(v153 + 27) = v258;
        *(v153 + 152) = v157;
        v159 = CFRetain(v127);
        *&v252[8 * v152] = v159;
        CFSetAddValue(v150, v127);
        v247 = v152 + 1;
      }

      CFRelease(v127);
    }

    v120 = v263;
    v121 = v263 - 1;
    if (v263 != 1)
    {
      continue;
    }

    break;
  }

LABEL_115:
  v239 = v245 - v241;
  v160 = v261;
  v161 = v261 - 1;
  if (v261 == 1)
  {
    v248 = 0;
    goto LABEL_145;
  }

  v248 = 0;
  while (2)
  {
    v162 = v259;
    v163 = *(v259 + 21);
    v277 = *(v259 + 20);
    v278 = v163;
    v279 = *(v259 + 22);
    v164 = *(v259 + 17);
    v273 = *(v259 + 16);
    v274 = v164;
    v165 = *(v259 + 19);
    v275 = *(v259 + 18);
    v276 = v165;
    v166 = *(v259 + 15);
    v271 = *(v259 + 14);
    v272 = v166;
    v167 = *(v259 + 46);
    v168 = *(v259 + 424);
    v256 = *(v259 + 408);
    v257 = v168;
    v258 = *(v259 + 55);
    v169 = *(v259 + 392);
    v254 = *(v259 + 376);
    v255 = v169;
    v170 = &v259[224 * v160];
    v306 = *(v170 - 5);
    v307 = *(v170 - 4);
    v308 = *(v170 - 3);
    v309 = *(v170 - 4);
    v302 = *(v170 - 9);
    v303 = *(v170 - 8);
    v304 = *(v170 - 7);
    v305 = *(v170 - 6);
    v298 = *(v170 - 13);
    v299 = *(v170 - 12);
    v300 = *(v170 - 11);
    v301 = *(v170 - 10);
    v297 = *(v170 - 14);
    v171 = *(v170 - 3);
    v269 = *(v170 - 1);
    memmove(v259 + 224, v170 - 224, 0xC8uLL);
    v162[53] = v171;
    *(v162 + 27) = v269;
    v261 = v161;
    v172 = v260 >> 1;
    v319 = v307;
    v320 = v308;
    *&v321 = v309;
    v315 = v303;
    v316 = v304;
    v318 = v306;
    v317 = v305;
    v311 = v299;
    v312 = v300;
    v314 = v302;
    v313 = v301;
    v173 = 3;
    v174 = 2;
    v175 = 1;
    v310[1] = v298;
    v310[0] = v297;
    while (2)
    {
      v176 = &v259[224 * v174];
      v177 = v176[25];
      v265 = *(v176 + 13);
      v178 = &v259[224 * v173];
      v293 = *(v178 + 9);
      v294 = *(v178 + 10);
      v295 = *(v178 + 11);
      v296 = *(v178 + 24);
      v289 = *(v178 + 5);
      v290 = *(v178 + 6);
      v291 = *(v178 + 7);
      v292 = *(v178 + 8);
      v285 = *(v178 + 1);
      v286 = *(v178 + 2);
      v287 = *(v178 + 3);
      v288 = *(v178 + 4);
      v284 = *v178;
      v179 = *(v178 + 25);
      v270 = *(v178 + 13);
      if (v173 >= v160)
      {
        v294 = xmmword_1C2BF6CF0;
        v295 = unk_1C2BF6D00;
        v296 = 0;
        v290 = xmmword_1C2BF6CB0;
        v291 = unk_1C2BF6CC0;
        v292 = xmmword_1C2BF6CD0;
        v293 = unk_1C2BF6CE0;
        v286 = xmmword_1C2BF6C70;
        v287 = unk_1C2BF6C80;
        v288 = xmmword_1C2BF6C90;
        v289 = unk_1C2BF6CA0;
        v284 = max_CompletionItem_s;
        v285 = unk_1C2BF6C60;
        v270 = xmmword_1C2BF6D20;
        if (v174 >= v160)
        {
          goto LABEL_137;
        }

        v179 = 1.79769313e308;
      }

      if (v177 < v171)
      {
        v180 = v179 < v177;
        if (v179 >= v177)
        {
          v181 = &v259[224 * v174];
        }

        else
        {
          v181 = &v284;
        }

        if (v179 < v177)
        {
          v182 = &v270;
        }

        else
        {
          v179 = v177;
          v182 = &v265;
        }

        if (v180)
        {
          v183 = v173;
        }

        else
        {
          v183 = v174;
        }

LABEL_129:
        v306 = v181[9];
        v307 = v181[10];
        v308 = v181[11];
        v309 = *(v181 + 24);
        v302 = v181[5];
        v303 = v181[6];
        v304 = v181[7];
        v305 = v181[8];
        v298 = v181[1];
        v299 = v181[2];
        v300 = v181[3];
        v301 = v181[4];
        v297 = *v181;
        _X9 = &v259[448 * v183];
        __asm { PRFM            #1, [X9] }

        if (v183 == v175)
        {
          goto LABEL_137;
        }

        v174 = 2 * v183;
        v173 = (2 * v183) | 1;
        v186 = &v259[224 * v183];
        *(v186 + 9) = v318;
        *(v186 + 10) = v319;
        *(v186 + 11) = v320;
        *(v186 + 24) = v321;
        *(v186 + 5) = v314;
        *(v186 + 6) = v315;
        *(v186 + 7) = v316;
        *(v186 + 8) = v317;
        *(v186 + 1) = v310[1];
        *(v186 + 2) = v311;
        *(v186 + 3) = v312;
        *(v186 + 4) = v313;
        *v186 = v310[0];
        *(v186 + 25) = v171;
        *(v186 + 13) = v269;
        v187 = &v259[224 * v175];
        *v187 = v297;
        *(v187 + 9) = v306;
        *(v187 + 10) = v307;
        *(v187 + 11) = v308;
        *(v187 + 24) = v309;
        *(v187 + 5) = v302;
        *(v187 + 6) = v303;
        *(v187 + 7) = v304;
        *(v187 + 8) = v305;
        *(v187 + 1) = v298;
        *(v187 + 2) = v299;
        *(v187 + 3) = v300;
        *(v187 + 4) = v301;
        *(v187 + 25) = v179;
        *(v187 + 13) = *v182;
        v307 = v319;
        v308 = v320;
        v309 = v321;
        v303 = v315;
        v304 = v316;
        v306 = v318;
        v305 = v317;
        v299 = v311;
        v300 = v312;
        v302 = v314;
        v301 = v313;
        v298 = v310[1];
        v297 = v310[0];
        v175 = v183;
        if (v183 >= v172)
        {
          goto LABEL_137;
        }

        continue;
      }

      break;
    }

    if (v179 < v171)
    {
      v182 = &v270;
      v181 = &v284;
      v183 = v173;
      goto LABEL_129;
    }

    _X8 = &v259[448 * v175];
    __asm { PRFM            #1, [X8] }

LABEL_137:
    if (v167)
    {
      v190 = v249;
      if (!contains_similar_string(v167, v249, v253) && !CFSetContainsValue(v190, v167))
      {
        v191 = v278;
        v192 = v248;
        v193 = &v243[224 * v248];
        *(v193 + 6) = v277;
        *(v193 + 7) = v191;
        *(v193 + 8) = v279;
        v194 = v274;
        *(v193 + 2) = v273;
        *(v193 + 3) = v194;
        v195 = v276;
        *(v193 + 4) = v275;
        *(v193 + 5) = v195;
        v196 = v272;
        *v193 = v271;
        *(v193 + 1) = v196;
        v197 = v254;
        *(v193 + 168) = v255;
        v198 = v257;
        *(v193 + 184) = v256;
        *(v193 + 200) = v198;
        *(v193 + 18) = v167;
        *(v193 + 27) = v258;
        *(v193 + 152) = v197;
        Copy = CFStringCreateCopy(v246, v167);
        *&v244[8 * v192] = Copy;
        CFSetAddValue(v190, v167);
        v248 = v192 + 1;
      }

      CFRelease(v167);
    }

    v160 = v261;
    v161 = v261 - 1;
    if (v261 != 1)
    {
      continue;
    }

    break;
  }

LABEL_145:
  if (v247 >= v241)
  {
    v200 = v241;
  }

  else
  {
    v200 = v247;
  }

  if (v248 >= v239)
  {
    v201 = v239;
  }

  else
  {
    v201 = v248;
  }

  if (v201 + v200 >= v245)
  {
    v204 = Mutable;
    v203 = v251;
    v205 = v244;
  }

  else
  {
    v202 = v248 - v239;
    if (v248 < v239)
    {
      v202 = 0;
    }

    v204 = Mutable;
    v203 = v251;
    v205 = v244;
    if (v247 <= v241 || v248 > v239)
    {
      if (v248 > v239 && v247 <= v241)
      {
        v230 = v201 + v202;
        if (v230 >= v245)
        {
          v201 = v245;
        }

        else
        {
          v201 = v230;
        }
      }
    }

    else
    {
      v206 = v247 - v241;
      if (v247 < v241)
      {
        v206 = 0;
      }

      v200 += v206;
      if (v200 >= v245)
      {
        v200 = v245;
      }
    }
  }

  LOBYTE(v284) = 0;
  v207 = v247 - 1;
  if ((v247 - 1) >= 0)
  {
    v208 = v200;
    v209 = &v242[224 * v207];
    do
    {
      v210 = *(v209 + 11);
      v319 = *(v209 + 10);
      v320 = v210;
      v211 = *(v209 + 13);
      v321 = *(v209 + 12);
      v322 = v211;
      v212 = *(v209 + 7);
      v315 = *(v209 + 6);
      v316 = v212;
      v213 = *(v209 + 9);
      v317 = *(v209 + 8);
      v318 = v213;
      v214 = *(v209 + 3);
      v311 = *(v209 + 2);
      v312 = v214;
      v215 = *(v209 + 5);
      v313 = *(v209 + 4);
      v314 = v215;
      v216 = *(v209 + 1);
      v310[0] = *v209;
      v310[1] = v216;
      v217 = *&v252[8 * v207];
      *&v318 = v217;
      if ((v284 & 1) == 0 && v208 != v207)
      {
        (*(v203 + 16))(v203, v310, &v284);
      }

      if (v217)
      {
        CFRelease(v217);
      }

      v209 -= 224;
      v218 = v207-- <= 0;
    }

    while (!v218);
  }

  v219 = v248 - 1;
  v220 = v249;
  if ((v248 - 1) >= 0)
  {
    v221 = &v243[224 * v219];
    do
    {
      v222 = *(v221 + 11);
      v319 = *(v221 + 10);
      v320 = v222;
      v223 = *(v221 + 13);
      v321 = *(v221 + 12);
      v322 = v223;
      v224 = *(v221 + 7);
      v315 = *(v221 + 6);
      v316 = v224;
      v225 = *(v221 + 9);
      v317 = *(v221 + 8);
      v318 = v225;
      v226 = *(v221 + 3);
      v311 = *(v221 + 2);
      v312 = v226;
      v227 = *(v221 + 5);
      v313 = *(v221 + 4);
      v314 = v227;
      v228 = *(v221 + 1);
      v310[0] = *v221;
      v310[1] = v228;
      v229 = *&v205[8 * v219];
      *&v318 = v229;
      if ((v284 & 1) == 0 && v201 != v219)
      {
        (*(v203 + 16))(v203, v310, &v284);
      }

      if (v229)
      {
        CFRelease(v229);
      }

      v221 -= 224;
      v218 = v219-- <= 0;
    }

    while (!v218);
  }

  CFRelease(v204);
  CFRelease(v220);
  pqdispose_CompletionItem_s(&v262);
  pqdispose_CompletionItem_s(&v259);
}

void ___ZL24update_completions_queueP16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(void *a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, unsigned int a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{
  v206 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (a3)
  {
    v28 = a2 + 1;
    v29 = a3;
    do
    {
      v30 = *v28;
      v28 += 2;
      v27 += v30;
      --v29;
    }

    while (v29);
  }

  if (a17 && v27 <= a1[4])
  {
    return;
  }

  v31 = a18;
  if (a17 == 2)
  {
    if (v27 < a18)
    {
      return;
    }

    v31 = 0;
  }

  v32 = *(a20 + 16);
  v34 = _hasPunctuation(a2, a3, a20, 1);
  v35 = v34;
  if (a3 <= 1 && v34 != 0.0)
  {
    return;
  }

  v36 = a1[5];
  if (v36)
  {
    LODWORD(v36) = (*(v36 + 4) >> 1) & 1;
  }

  if ((a6 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    LOBYTE(v36) = 0;
  }

  if ((v36 & 1) != 0 || v34 == 0.0)
  {
    return;
  }

  v185 = a1;
  v37 = a12;
  v178 = a11;
  if (v32 == a3)
  {
    v38 = *(a20 + 8);
    v39 = a1;
  }

  else
  {
    v39 = a1;
    v40 = a1[6];
    SIModelManager::getInstance(v33);
    SIModelManager::getPhraseScore(a2, v40, a3, (a20 + 40));
    v37 = a12;
    *(a20 + 8) = v38;
  }

  v41 = v39[7];
  v42 = v39[8];
  v43 = a3 + 1 - v41;
  if (a3 + 1 == v41)
  {
    v43 = 1;
  }

  v183 = v43;
  v44 = *&qword_1EBF46C60;
  v45 = *a5;
  v46 = *(a5 + 1);
  *&v199 = 0;
  v200 = 0u;
  *&v197 = 0;
  *&v190 = 0;
  *(&v190 + 1) = v27;
  *&v191 = a3;
  v184 = a9;
  *(&v191 + 1) = a9;
  v195 = a5[3];
  v196 = a5[4];
  v193 = a5[1];
  v194 = a5[2];
  v192 = *a5;
  *(&v197 + 1) = __PAIR64__(a8, a7);
  *v198 = v37;
  memset(&v198[4], 0, 20);
  v182 = v38;
  *&v198[24] = v38;
  v47 = 0.0;
  v48 = *&s_completion_weights;
  if (v46)
  {
    v49 = v31;
    v50 = v37;
    v51 = log(v46);
    v37 = v50;
    v31 = v49;
    v47 = v51 * 18.9648897;
  }

  v52 = a7;
  v53 = v37;
  v180 = a13 + 1.0;
  v54 = v44;
  v177 = v45;
  v55 = v47 + v45;
  v56 = log(v45);
  v174 = v56;
  v175 = v45;
  if (v55 == 0.0)
  {
    v56 = 0.0;
  }

  v57 = *&qword_1EBF46C28;
  v58 = *&qword_1EBF46C20 * v56 + (a7 + v42) / v42 * v48;
  v59 = *&qword_1EBF46C90;
  if (v27 <= *&qword_1EBF46C90)
  {
    v62 = log(v27) * (v57 + v57);
  }

  else
  {
    v60 = v59;
    v61 = log(v59);
    v62 = log(v27 - v60) * *&qword_1EBF46C68 + v61 * v57;
  }

  v63 = v52 / a8;
  v64 = v52 / v53;
  v65 = v52 / v42;
  v66 = v54;
  v67 = v58 + v62;
  v68 = *&qword_1EBF46C30 * 1.5;
  v69 = 1.0 / v180;
  v70 = v183 - *&qword_1EBF46C98;
  if (v183 <= *&qword_1EBF46C98)
  {
    v74 = log((v183 / 2 + 1)) * v68;
  }

  else
  {
    v71 = v65;
    v72 = v64;
    v73 = log(vcvtd_n_f64_s64(*&qword_1EBF46C98, 1uLL) + 1.0);
    v74 = log(vcvtd_n_f64_s64(v70, 1uLL) + 1.0) * *&qword_1EBF46C80 + v73 * v68;
    v64 = v72;
    v65 = v71;
    v69 = 1.0 / v180;
  }

  v75 = v185;
  v76 = v67 + v74;
  v179 = v63;
  v181 = v64;
  v77 = *&qword_1EBF46C38;
  if (v63 <= 0.25)
  {
    v77 = 0.0;
  }

  v78 = v76 + v77;
  if (v64 <= 0.25)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = dbl_1EBF46C40;
  }

  v80 = v78 + v79;
  v81 = v65;
  v82 = *&qword_1EBF46C48;
  if (v81 >= 0.1)
  {
    v82 = 0.0;
  }

  v83 = v69;
  v84 = v80 + v82 + v182 * unk_1EBF46C50 + v69 * *&qword_1EBF46C58;
  if (a15)
  {
    v85 = v66;
  }

  else
  {
    v85 = 0.0;
  }

  v86 = v85 + v84;
  v87 = *&qword_1EBF46C70;
  if (!a16)
  {
    v87 = 0.0;
  }

  v88 = v87 + v86;
  if (HIBYTE(a15))
  {
    v89 = dbl_1EBF46C78;
  }

  else
  {
    v89 = 0.0;
  }

  v90 = v89 + v88 + 0.0;
  v91 = *&qword_1EBF46C88;
  v92 = 157680000.0;
  if (v184 > 0.0)
  {
    v92 = v184;
  }

  v93 = log(v92);
  *&v200 = __PAIR64__(a17, LODWORD(v69));
  BYTE8(v200) = v31;
  *(&v200 + 9) = a15;
  BYTE11(v200) = a16;
  v94 = v90 - v91 * v93 + -1.0 / v35;
  *(&v199 + 1) = v94;
  switch(a17)
  {
    case 2u:
      v95 = -1000000.0;
      break;
    case 3u:
      v95 = -100000000.0;
      break;
    case 4u:
      v95 = -1.0e10;
      break;
    default:
      v96 = HIBYTE(a15);
      goto LABEL_57;
  }

  v96 = HIBYTE(a15);
  v94 = v94 + v95;
  *(&v199 + 1) = v94;
LABEL_57:
  v97 = *__error();
  v98 = _SILogForLogForCategory(1);
  v99 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v98, v99))
  {
    v172 = v81;
    v100 = v185[8];
    v101 = *&s_completion_weights;
    if (v46)
    {
      v102 = log(v46) * 18.9648897;
    }

    else
    {
      v102 = 0.0;
    }

    v103 = (a7 + v100) / v100;
    v104 = v174;
    if (v102 + v175 == 0.0)
    {
      v104 = 0.0;
    }

    v176 = v104;
    v105 = *&qword_1EBF46C90;
    v106 = v185[4];
    v107 = *&qword_1EBF46C28;
    v173 = v85;
    if (v27 <= *&qword_1EBF46C90)
    {
      v110 = (v107 + v107) * log(v27 - v106);
    }

    else
    {
      v108 = v105;
      v109 = log(v105 - v106);
      v110 = log(v27 - v108) * *&qword_1EBF46C68 + v109 * v107;
    }

    v111 = v101 * v103;
    v112 = *&qword_1EBF46C30 * 1.5;
    v113 = v183 - *&qword_1EBF46C98;
    if (v183 <= *&qword_1EBF46C98)
    {
      v115 = log((v183 / 2 + 1)) * v112;
    }

    else
    {
      v114 = log(vcvtd_n_f64_s64(*&qword_1EBF46C98, 1uLL) + 1.0);
      v115 = log(vcvtd_n_f64_s64(v113, 1uLL) + 1.0) * *&qword_1EBF46C80 + v114 * v112;
    }

    v75 = v185;
    v116 = qword_1EBF46C38;
    v117 = dbl_1EBF46C40;
    if (v179 <= 0.25)
    {
      v116 = 0;
    }

    if (v181 <= 0.25)
    {
      v117 = 0.0;
    }

    v118 = *&qword_1EBF46C48;
    if (v172 >= 0.1)
    {
      v118 = 0.0;
    }

    v119 = qword_1EBF46C70;
    v120 = dbl_1EBF46C78;
    if (!a16)
    {
      v119 = 0;
    }

    if (!v96)
    {
      v120 = 0.0;
    }

    *buf = 134223104;
    *&buf[4] = v111;
    *&buf[12] = 2048;
    *&buf[14] = v176;
    *&buf[22] = 2048;
    *&buf[24] = v110;
    *&buf[32] = 2048;
    *&buf[34] = v115;
    *&buf[42] = 2048;
    *&buf[44] = v116;
    *&buf[52] = 2048;
    *&buf[54] = v117;
    *&buf[62] = 2048;
    *&buf[64] = v118;
    *&buf[72] = 2048;
    *&buf[74] = v182 * unk_1EBF46C50;
    *&buf[82] = 2048;
    *&buf[84] = *&qword_1EBF46C58 * v83;
    *&buf[92] = 2048;
    *&buf[94] = v173;
    *&buf[102] = 2048;
    *&buf[104] = v119;
    *v202 = 2048;
    *&v202[2] = v120;
    *&v202[10] = 2048;
    *&v202[12] = v93 * *&qword_1EBF46C88;
    *&v202[20] = 2048;
    *&v202[22] = v27;
    *&v202[30] = 2048;
    *v203 = v183;
    *&v203[8] = 2048;
    *&v203[10] = a3;
    *&v203[18] = 2048;
    *&v203[20] = v184;
    *&v203[28] = 2048;
    *&v203[30] = v46;
    *&v203[38] = 2048;
    *&v203[40] = v177;
    LOWORD(v204) = 1024;
    *(&v204 + 2) = a7;
    WORD3(v204) = 2048;
    *(&v204 + 1) = v94;
    _os_log_impl(&dword_1C278D000, v98, v99, " weight_F:%g score_F:%g len_F:%g fragment_F:%g wf1_F:%g wf2_F:%g wf3_F:%g phrase_F:%g field_F:%g thread_F:%g shortcut_F:%g used_F:%g age_F:%g\nlen:%ld scoringFragmentCount:%ld fragmentCount:%ld age:%f score:(%llu, %llu) weight:%d computed score:(%g)", buf, 0xD0u);
  }

  *__error() = v97;
  v121 = a4;
  if (a4 >= 0x14)
  {
    v161 = __si_assert_copy_extra_332();
    v169 = v161;
    v170 = "";
    if (v161)
    {
      v170 = v161;
    }

    __message_assert_336(v161, v162, v163, v164, v165, v166, v167, v168, "SICompletions.cpp", 2870, "depth < 20", v170);
    free(v169);
    if (__valid_fs(-1))
    {
      v171 = 2989;
    }

    else
    {
      v171 = 3072;
    }

    *v171 = -559038737;
    abort();
  }

  v122 = (v75[9] + 224 * a4);
  *v122 = 0u;
  v122[1] = v190;
  v122[4] = v192;
  v122[5] = v193;
  v122[2] = v191;
  v122[3] = 0u;
  v122[8] = v196;
  v122[9] = v197;
  v122[6] = v194;
  v122[7] = v195;
  v123 = v200;
  v122[12] = v199;
  v122[13] = v123;
  v122[10] = *v198;
  v122[11] = *&v198[16];
  if (v178 == 1.79769313e308)
  {
    if (a3 == 1)
    {
      v124 = v75[10];
      if (v124)
      {
        v125 = v75[4];
        if (v125 == a2[1] && !memcmp(v124, *a2, v125))
        {
          *(v75[9] + 224 * a4 + 200) = 0xFFEFFFFFFFFFFFFFLL;
        }
      }
    }

    return;
  }

  if (v178 == -1.79769313e308)
  {
    v126 = v75[9] + 224 * a4;
    *(v126 + 384) = 0u;
    *(v126 + 400) = 0u;
    *(v126 + 352) = 0u;
    *(v126 + 368) = 0u;
    *(v126 + 320) = 0u;
    *(v126 + 336) = 0u;
    *(v126 + 288) = 0u;
    *(v126 + 304) = 0u;
    *(v126 + 256) = 0u;
    *(v126 + 272) = 0u;
    *(v126 + 224) = 0u;
    *(v126 + 240) = 0u;
    *(v126 + 416) = 0;
    *(v126 + 424) = 0xFFEFFFFFFFFFFFFFLL;
    *(v126 + 432) = 0;
    *(v126 + 440) = 0;
  }

  v127 = v75[11];
  v128 = a2;
  if (v127[2] >= 22)
  {
    v129 = *v127;
    if (v129)
    {
      v130 = (v129 + 224);
    }

    else
    {
      v130 = &empty_CompletionItem_s;
    }

    v131 = v130[25];
    if (v131 > *(&v199 + 1))
    {
      return;
    }

    v132 = *(v130 + 3);
    v133 = *(v130 + 4);
    v134 = *(v130 + 5);
    v135 = *(v130 + 8);
    v136 = *(v130 + 9);
    v188 = *(v130 + 38);
    v137 = *__error();
    v138 = _SILogForLogForCategory(1);
    v139 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v138, v139))
    {
      *buf = 134219520;
      *&buf[4] = v132;
      *&buf[12] = 2048;
      *&buf[14] = v133;
      *&buf[22] = 2048;
      *&buf[24] = v134;
      *&buf[32] = 2048;
      *&buf[34] = v136;
      *&buf[42] = 2048;
      *&buf[44] = v135;
      *&buf[52] = 1024;
      *&buf[54] = v188;
      *&buf[58] = 2048;
      *&buf[60] = v131;
      _os_log_impl(&dword_1C278D000, v138, v139, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
    }

    *__error() = v137;
    v75 = v185;
    v128 = a2;
    v121 = a4;
  }

  if (v121 <= 1)
  {
    v140 = 0;
    v147 = *(&v199 + 1);
  }

  else
  {
    v140 = 1;
    v141 = 424;
    v142 = 1;
    while (1)
    {
      v143 = *__error();
      v144 = _SILogForLogForCategory(1);
      v145 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v144, v145))
      {
        v146 = *(v75[9] + v141);
        *&buf[24] = *(&v199 + 1);
        v147 = *(&v199 + 1);
        *buf = 134218496;
        *&buf[4] = v142;
        *&buf[12] = 2048;
        *&buf[14] = v146;
        *&buf[22] = 2048;
        _os_log_impl(&dword_1C278D000, v144, v145, "Comparing to parent at %ld (%g) %g", buf, 0x20u);
      }

      else
      {
        v147 = *(&v199 + 1);
      }

      *__error() = v143;
      if (*(v75[9] + v141) > v147)
      {
        break;
      }

      v140 = ++v142 < a4;
      v141 += 224;
      if (a4 == v142)
      {
        v140 = 0;
        goto LABEL_110;
      }
    }

    v148 = *__error();
    v149 = _SILogForLogForCategory(1);
    v150 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v149, v150))
    {
      v151 = *(v75[9] + 224 * v142 + 200);
      *buf = 134218496;
      *&buf[4] = v142;
      *&buf[12] = 2048;
      *&buf[14] = v151;
      *&buf[22] = 2048;
      *&buf[24] = v147;
      _os_log_impl(&dword_1C278D000, v149, v150, "Dropping weak child %ld (%g) %g", buf, 0x20u);
    }

    *__error() = v148;
LABEL_110:
    v128 = a2;
  }

  if (v147 <= v178)
  {
    v157 = *__error();
    v158 = _SILogForLogForCategory(1);
    v159 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v158, v159))
    {
      *buf = 134218240;
      *&buf[4] = v178;
      *&buf[12] = 2048;
      *&buf[14] = v147;
      _os_log_impl(&dword_1C278D000, v158, v159, "Dropping weak parent (%g) %g", buf, 0x16u);
    }

    *__error() = v157;
  }

  else if (!v140)
  {
    CFStringFromFragments = _CreateCFStringFromFragments(v75[12], &v200 + 8, v128, a3, v27);
    v153 = *__error();
    v154 = _SILogForLogForCategory(1);
    v155 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v154, v155))
    {
      v156 = v75[12];
      *buf = 138413570;
      *&buf[4] = CFStringFromFragments;
      *&buf[12] = 1024;
      *&buf[14] = a17;
      *&buf[18] = 2080;
      *&buf[20] = v156;
      *&buf[28] = 1024;
      *&buf[30] = BYTE8(v200);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v197);
      *&buf[40] = 2048;
      *&buf[42] = *(&v199 + 1);
      _os_log_impl(&dword_1C278D000, v154, v155, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
    }

    *__error() = v153;
    if (CFStringFromFragments)
    {
      if (CFEqual(CFStringFromFragments, v75[13]))
      {
        CFRelease(CFStringFromFragments);
      }

      else
      {
        *&v197 = CFStringFromFragments;
        v160 = v75[11];
        *&v203[16] = *v198;
        *&v203[32] = *&v198[16];
        v204 = v199;
        v205 = v200;
        *&buf[96] = v194;
        *v202 = v195;
        *&v202[16] = v196;
        *v203 = v197;
        *&buf[32] = v191;
        *&buf[48] = 0u;
        *&buf[64] = v192;
        *&buf[80] = v193;
        *buf = 0u;
        *&buf[16] = v190;
        pqpush_CompletionItem_s(v160, buf);
      }
    }
  }
}

double ___ZL27update_completions_queue_v2P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(void *a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, int a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21)
{
  v29 = a18;
  v124 = *MEMORY[0x1E69E9840];
  v30 = 0;
  if (a3)
  {
    v31 = a2 + 1;
    v32 = a3;
    do
    {
      v33 = *v31;
      v31 += 2;
      v30 += v33;
      --v32;
    }

    while (v32);
  }

  v34 = a1[5];
  if (!v34)
  {
    if (a17 == 3)
    {
      return -1.79769313e308;
    }

    goto LABEL_14;
  }

  v35 = *(v34 + 4);
  if (a19 && (v35 & 4) != 0 && a1[6] != a19)
  {
    return -1.79769313e308;
  }

  if (a17 != 3)
  {
LABEL_14:
    v36 = a1 + 7;
    if (a17 && v30 < a1[7])
    {
      return -1.79769313e308;
    }

    if (a17 == 2)
    {
      if (v30 < a18)
      {
        return -1.79769313e308;
      }

      v97 = __PAIR64__(a8, a7);
      v100 = a4;
      v39 = 0;
      v29 = 0;
    }

    else
    {
      v97 = __PAIR64__(a8, a7);
      v100 = a4;
      v39 = 0;
    }

    goto LABEL_22;
  }

  if ((v35 & 8) == 0)
  {
    return -1.79769313e308;
  }

  if (*(*(a1[4] + 8) + 24) == 1)
  {
    if (a3 < 3)
    {
      return -1.79769313e308;
    }
  }

  else if (a3 < 5)
  {
    return -1.79769313e308;
  }

  v97 = __PAIR64__(a8, a7);
  v100 = a4;
  *&valuePtr = a6;
  if (!*(v34 + 40))
  {
    return -1.79769313e308;
  }

  v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (!v42)
  {
    return -1.79769313e308;
  }

  v43 = v42;
  v44 = CFSetContainsValue(*(v34 + 40), v42);
  CFRelease(v43);
  if (!v44)
  {
    return -1.79769313e308;
  }

  v36 = a1 + 7;
  if (v30 < a1[7])
  {
    return -1.79769313e308;
  }

  v39 = 1;
LABEL_22:
  v40.n128_f64[0] = _hasPunctuation(a2, a3, a21, 0);
  if (a3 <= 1 && v40.n128_f64[0] != 0.0 && v30 == *v36)
  {
    return -1.79769313e308;
  }

  if ((v39 & 1) == 0)
  {
    v41 = a1[5];
    if (v41)
    {
      if ((a6 - 1) <= 0xFFFFFFFFFFFFFFFDLL && (*(v41 + 4) & 2) != 0)
      {
        return -1.79769313e308;
      }
    }
  }

  if (a14 < 2)
  {
    a10 = 0.0;
    if (v40.n128_f64[0] != 0.0)
    {
      goto LABEL_40;
    }

    return -1.79769313e308;
  }

  v37 = -1.79769313e308;
  if (fabs(a10) <= fabs(*&xmmword_1EDD78498) && v40.n128_f64[0] != 0.0)
  {
LABEL_40:
    v112 = 0u;
    v113 = 0u;
    memset(v111, 0, sizeof(v111));
    v104 = 0u;
    v105 = 0u;
    v45 = *a5;
    v46 = a5[1];
    v106 = 0u;
    v107 = 0u;
    *(&v103 + 1) = a9;
    *&v104 = a10;
    v48 = a5[2];
    v47 = a5[3];
    v108 = 0u;
    v109 = 0u;
    v105 = v45;
    v109 = a5[4];
    v110 = 0u;
    v49 = a1[6];
    *&valuePtr = a1[7];
    *(&valuePtr + 1) = v49;
    *&v102 = a1[8];
    *(&v102 + 1) = v30;
    *&v103 = a3;
    v107 = v48;
    v108 = v47;
    v106 = v46;
    *(&v110 + 1) = v97;
    LODWORD(v111[0]) = a12;
    *(v111 + 4) = 0uLL;
    *&v112 = v40.n128_u64[0];
    v40.n128_f32[0] = 1.0 / (a13 + 1.0);
    *&v113 = v40.n128_f32[0];
    DWORD1(v113) = a17;
    BYTE8(v113) = v29;
    *(&v113 + 9) = a15;
    BYTE11(v113) = a16;
    BYTE12(v113) = (a6 - 1) < 0xFFFFFFFFFFFFFFFELL;
    update_item_bundle_ids(&valuePtr, a20, v40);
    *(&v112 + 1) = GetCompletionItemWeight(&valuePtr);
    v50 = v100;
    if (v100 >= 0x14)
    {
      v82 = __si_assert_copy_extra_332();
      v90 = v82;
      v91 = "";
      if (v82)
      {
        v91 = v82;
      }

      __message_assert_336(v82, v83, v84, v85, v86, v87, v88, v89, "SICompletions.cpp", 3231, "depth < 20", v91);
      free(v90);
      if (__valid_fs(-1))
      {
        v92 = 2989;
      }

      else
      {
        v92 = 3072;
      }

      *v92 = -559038737;
      abort();
    }

    v51 = (a1[9] + 224 * v100);
    v52 = v102;
    *v51 = valuePtr;
    v51[1] = v52;
    v53 = v103;
    v54 = v104;
    v55 = v106;
    v51[4] = v105;
    v51[5] = v55;
    v51[2] = v53;
    v51[3] = v54;
    v56 = v107;
    v57 = v108;
    v58 = v110;
    v51[8] = v109;
    v51[9] = v58;
    v51[6] = v56;
    v51[7] = v57;
    v59 = v111[0];
    v60 = v111[1];
    v61 = v113;
    v51[12] = v112;
    v51[13] = v61;
    v51[10] = v59;
    v51[11] = v60;
    if (a11 == 1.79769313e308)
    {
      if (a3 == 1)
      {
        v62 = a1[10];
        if (v62)
        {
          if (*v36 == a2[1] && !memcmp(v62, *a2, *v36))
          {
            *(a1[9] + 224 * v100 + 200) = 0xFFEFFFFFFFFFFFFFLL;
            return -1.79769313e308;
          }
        }
      }

      return *(&v112 + 1);
    }

    if (a11 == -1.79769313e308)
    {
      v63 = a1[9] + 224 * v100;
      *(v63 + 384) = 0u;
      *(v63 + 400) = 0u;
      *(v63 + 352) = 0u;
      *(v63 + 368) = 0u;
      *(v63 + 320) = 0u;
      *(v63 + 336) = 0u;
      *(v63 + 288) = 0u;
      *(v63 + 304) = 0u;
      *(v63 + 256) = 0u;
      *(v63 + 272) = 0u;
      *(v63 + 224) = 0u;
      *(v63 + 240) = 0u;
      *(v63 + 416) = 0;
      *(v63 + 424) = 0xFFEFFFFFFFFFFFFFLL;
      *(v63 + 432) = 0;
      *(v63 + 440) = 0;
    }

    v64 = a1[11];
    if (v64[2] >= 22)
    {
      v65 = *v64;
      if (v65)
      {
        v66 = (v65 + 224);
      }

      else
      {
        v66 = &empty_CompletionItem_s;
      }

      v67 = v66[25];
      if (v67 > *(&v112 + 1))
      {
        return *(&v112 + 1);
      }

      v68 = *(v66 + 3);
      v93 = *(v66 + 4);
      v94 = *(v66 + 5);
      v95 = *(v66 + 9);
      v96 = *(v66 + 8);
      v98 = *(v66 + 38);
      v99 = *__error();
      v69 = _SILogForLogForCategory(1);
      v70 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v69, v70))
      {
        *buf = 134219520;
        *&buf[4] = v68;
        *&buf[12] = 2048;
        *&buf[14] = v93;
        *&buf[22] = 2048;
        *&buf[24] = v94;
        *&buf[32] = 2048;
        *&buf[34] = v95;
        *&buf[42] = 2048;
        *&buf[44] = v96;
        *&buf[52] = 1024;
        *&buf[54] = v98;
        *&buf[58] = 2048;
        *&buf[60] = v67;
        _os_log_impl(&dword_1C278D000, v69, v70, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
      }

      *__error() = v99;
      v50 = v100;
    }

    if (a14 < 2 || v50 == 19 || a11 == -1.79769313e308 || (v71 = a1[9] + 224 * v50, *(v71 + 424) == -1.79769313e308) || *(v71 + 272) != *&v104)
    {
      if (v39)
      {
        CFStringFromCrossFieldFragments = _CreateCFStringFromCrossFieldFragments(SBYTE8(v113), a2, a3, v30);
      }

      else
      {
        CFStringFromCrossFieldFragments = _CreateCFStringFromFragments(a1[12], &v113 + 8, a2, a3, v30);
      }

      v76 = CFStringFromCrossFieldFragments;
      v77 = *__error();
      v78 = _SILogForLogForCategory(1);
      v79 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v78, v79))
      {
        v80 = a1[12];
        *buf = 138413570;
        *&buf[4] = v76;
        *&buf[12] = 1024;
        *&buf[14] = DWORD1(v113);
        *&buf[18] = 2080;
        *&buf[20] = v80;
        *&buf[28] = 1024;
        *&buf[30] = BYTE8(v113);
        *&buf[34] = 1024;
        *&buf[36] = DWORD2(v110);
        *&buf[40] = 2048;
        *&buf[42] = *(&v112 + 1);
        _os_log_impl(&dword_1C278D000, v78, v79, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
      }

      *__error() = v77;
      if (v76)
      {
        *&v110 = v76;
        v81 = a1[11];
        v120 = v111[0];
        v121 = v111[1];
        v122 = v112;
        v123 = v113;
        v116 = v107;
        v117 = v108;
        v118 = v109;
        v119 = v110;
        *&buf[32] = v103;
        *&buf[48] = v104;
        *&buf[64] = v105;
        v115 = v106;
        *buf = valuePtr;
        *&buf[16] = v102;
        pqpush_CompletionItem_s(v81, buf);
      }
    }

    else
    {
      v72 = *__error();
      v73 = _SILogForLogForCategory(1);
      v74 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v73, v74))
      {
        *buf = 134218240;
        *&buf[4] = a11;
        *&buf[12] = 2048;
        *&buf[14] = *(&v112 + 1);
        _os_log_impl(&dword_1C278D000, v73, v74, "Dropping dangling parent (%g) %g", buf, 0x16u);
      }

      *__error() = v72;
    }

    return *(&v112 + 1);
  }

  return v37;
}

void ___ZL27update_completions_queue_v3P16_CompletionModelP13si_wordtrie_sPKcS4_myP23PQueue_CompletionItem_s_block_invoke(size_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, int a12, int a13, int a14, __int16 a15, char a16, int a17, char a18, uint64_t a19)
{
  v143 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (a3)
  {
    v25 = (a2 + 8);
    v26 = a3;
    do
    {
      v27 = *v25;
      v25 += 2;
      v24 += v27;
      --v26;
    }

    while (v26);
  }

  v131 = 0u;
  v132 = 0u;
  memset(v130, 0, sizeof(v130));
  v123 = 0u;
  v124 = 0u;
  v120 = *(a1 + 2);
  v28 = *a5;
  v29 = a5[1];
  v125 = 0u;
  v126 = 0u;
  *(&v122 + 1) = a9;
  v30 = 0.0;
  if (a14 > 1)
  {
    v30 = a10;
  }

  *&v123 = v30;
  v32 = a5[2];
  v31 = a5[3];
  v127 = 0uLL;
  v128 = 0uLL;
  v124 = v28;
  v125 = v29;
  v128 = a5[4];
  v129 = 0uLL;
  *&v121 = a1[6];
  *(&v121 + 1) = v24;
  *&v122 = a3;
  v126 = v32;
  v127 = v31;
  *(&v129 + 1) = __PAIR64__(a8, a7);
  LODWORD(v130[0]) = a12;
  *(v130 + 4) = 0uLL;
  *&v131 = 0x3FF0000000000000;
  v31.n128_f32[0] = 1.0 / (a13 + 1.0);
  *&v132 = v31.n128_f32[0];
  DWORD1(v132) = a17;
  BYTE8(v132) = a18;
  *(&v132 + 9) = a15;
  BYTE11(v132) = a16;
  BYTE12(v132) = (a6 - 1) < 0xFFFFFFFFFFFFFFFELL;
  update_item_bundle_ids(&v120, a19, v31);
  *(&v131 + 1) = GetCompletionItemWeight(&v120);
  if (a4 > 0x13)
  {
    v89 = __si_assert_copy_extra_332();
    v97 = v89;
    v98 = "";
    if (v89)
    {
      v98 = v89;
    }

    __message_assert_336(v89, v90, v91, v92, v93, v94, v95, v96, "SICompletions.cpp", 3416, "depth < 20", v98);
    free(v97);
    if (__valid_fs(-1))
    {
      v99 = 2989;
    }

    else
    {
      v99 = 3072;
    }

    *v99 = -559038737;
    abort();
  }

  v33 = (a1[7] + 224 * a4);
  v34 = v121;
  *v33 = v120;
  v33[1] = v34;
  v35 = v122;
  v36 = v123;
  v37 = v125;
  v33[4] = v124;
  v33[5] = v37;
  v33[2] = v35;
  v33[3] = v36;
  v38 = v126;
  v39 = v127;
  v40 = v129;
  v33[8] = v128;
  v33[9] = v40;
  v33[6] = v38;
  v33[7] = v39;
  v41 = v130[0];
  v42 = v130[1];
  v43 = v132;
  v33[12] = v131;
  v33[13] = v43;
  v33[10] = v41;
  v33[11] = v42;
  if (a11 == 1.79769313e308)
  {
    if (a3 == 1)
    {
      v44 = a1[8];
      if (v44)
      {
        v45 = a1[4];
        if (v45 == *(a2 + 8) && !memcmp(v44, *a2, v45))
        {
          *(a1[7] + 224 * a4 + 200) = 0xFFEFFFFFFFFFFFFFLL;
        }
      }
    }

    return;
  }

  if (a11 == -1.79769313e308)
  {
    v46 = a1[7] + 224 * a4;
    *(v46 + 384) = 0u;
    *(v46 + 400) = 0u;
    *(v46 + 352) = 0u;
    *(v46 + 368) = 0u;
    *(v46 + 320) = 0u;
    *(v46 + 336) = 0u;
    *(v46 + 288) = 0u;
    *(v46 + 304) = 0u;
    *(v46 + 256) = 0u;
    *(v46 + 272) = 0u;
    *(v46 + 224) = 0u;
    *(v46 + 240) = 0u;
    *(v46 + 416) = 0;
    *(v46 + 424) = 0xFFEFFFFFFFFFFFFFLL;
    *(v46 + 432) = 0;
    *(v46 + 440) = 0;
  }

  v47 = a1[9];
  if (v47[2] >= 22)
  {
    v48 = *v47;
    if (v48)
    {
      v49 = (v48 + 224);
    }

    else
    {
      v49 = &empty_CompletionItem_s;
    }

    v50 = v49[25];
    if (v50 > *(&v131 + 1))
    {
      return;
    }

    v51 = *(v49 + 3);
    v100 = *(v49 + 4);
    v101 = *(v49 + 5);
    v102 = *(v49 + 9);
    v103 = *(v49 + 8);
    v104 = *(v49 + 38);
    v105 = *__error();
    v52 = _SILogForLogForCategory(1);
    v53 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v52, v53))
    {
      *buf = 134219520;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v100;
      *&buf[22] = 2048;
      *&buf[24] = v101;
      *&buf[32] = 2048;
      *&buf[34] = v102;
      *&buf[42] = 2048;
      *&buf[44] = v103;
      *&buf[52] = 1024;
      *&buf[54] = v104;
      *&buf[58] = 2048;
      *&buf[60] = v50;
      _os_log_impl(&dword_1C278D000, v52, v53, "Pop: %ld %ld %f (%llu,%llu) %d (%g)", buf, 0x44u);
    }

    *__error() = v105;
  }

  if (a4 == 19 || a11 == -1.79769313e308 || (v54 = a1[7] + 224 * a4, *(v54 + 424) == -1.79769313e308) || *(v54 + 272) != *&v123)
  {
    CFStringFromFragments = _CreateCFStringFromFragments(a1[10], &v132 + 8, a2, a3, v24);
    v59 = *__error();
    v60 = _SILogForLogForCategory(1);
    v61 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = a1[10];
      *buf = 138413570;
      *&buf[4] = CFStringFromFragments;
      *&buf[12] = 1024;
      *&buf[14] = DWORD1(v132);
      *&buf[18] = 2080;
      *&buf[20] = v62;
      *&buf[28] = 1024;
      *&buf[30] = BYTE8(v132);
      *&buf[34] = 1024;
      *&buf[36] = DWORD2(v129);
      *&buf[40] = 2048;
      *&buf[42] = *(&v131 + 1);
      _os_log_impl(&dword_1C278D000, v60, v61, "Creating suggestion string %@, type %d, with completion %s length:%d weight:%d score:%g", buf, 0x32u);
    }

    *__error() = v59;
    if (CFStringFromFragments)
    {
      *&v129 = CFStringFromFragments;
      v63 = a1[9];
      v116 = v130[0];
      v117 = v130[1];
      v118 = v131;
      v119 = v132;
      v112 = v126;
      v113 = v127;
      v114 = v128;
      v115 = v129;
      v108 = v122;
      v109 = v123;
      v110 = v124;
      v111 = v125;
      v64 = *(v63 + 8);
      v65 = *(v63 + 16);
      v66 = v65;
      v106 = v120;
      v107 = v121;
      if ((v65 + 2) >= v64)
      {
        v67 = 2 * v64;
        v68 = v64 < 4;
        v69 = 4;
        if (!v68)
        {
          v69 = v67;
        }

        *(v63 + 8) = v69;
        v70 = 224 * v69 + 448;
        if (*v63)
        {
          v71 = malloc_type_zone_realloc(queryZone, *v63, v70, 0xA1A7ADA0uLL);
        }

        else
        {
          v71 = malloc_type_zone_malloc(queryZone, v70, 0x566E289CuLL);
        }

        v72 = v71;
        if (!v71)
        {
          _log_fault_for_malloc_failure();
        }

        *v63 = v72;
        v72[12] = 0u;
        v72[13] = 0u;
        v72[10] = 0u;
        v72[11] = 0u;
        v72[8] = 0u;
        v72[9] = 0u;
        v72[6] = 0u;
        v72[7] = 0u;
        v72[4] = 0u;
        v72[5] = 0u;
        v72[2] = 0u;
        v72[3] = 0u;
        *v72 = 0u;
        v72[1] = 0u;
        v66 = *(v63 + 16);
      }

      *(v63 + 16) = v66 + 1;
      v73 = (*v63 + 224 * v65);
      v73[10] = v116;
      v73[11] = v117;
      v73[12] = v118;
      v73[13] = v119;
      v73[6] = v112;
      v73[7] = v113;
      v73[8] = v114;
      v73[9] = v115;
      v73[2] = v108;
      v73[3] = v109;
      v73[4] = v110;
      v73[5] = v111;
      *v73 = v106;
      v73[1] = v107;
      if (v65 >= 2)
      {
        do
        {
          v74 = *v63;
          v75 = v65 >> 1;
          if (*(*v63 + 224 * v65 + 200) > *(*v63 + 224 * (v65 >> 1) + 200))
          {
            break;
          }

          v76 = &v74[224 * v65];
          v139 = *(v76 + 10);
          v140 = *(v76 + 11);
          v141 = *(v76 + 12);
          v142 = *(v76 + 13);
          v135 = *(v76 + 6);
          v136 = *(v76 + 7);
          v137 = *(v76 + 8);
          v138 = *(v76 + 9);
          *&buf[32] = *(v76 + 2);
          *&buf[48] = *(v76 + 3);
          *&buf[64] = *(v76 + 4);
          v134 = *(v76 + 5);
          *buf = *v76;
          *&buf[16] = *(v76 + 1);
          v77 = &v74[224 * v75];
          v78 = *(v77 + 1);
          *v76 = *v77;
          *(v76 + 1) = v78;
          v79 = *(v77 + 2);
          v80 = *(v77 + 3);
          v81 = *(v77 + 5);
          *(v76 + 4) = *(v77 + 4);
          *(v76 + 5) = v81;
          *(v76 + 2) = v79;
          *(v76 + 3) = v80;
          v82 = *(v77 + 6);
          v83 = *(v77 + 7);
          v84 = *(v77 + 9);
          *(v76 + 8) = *(v77 + 8);
          *(v76 + 9) = v84;
          *(v76 + 6) = v82;
          *(v76 + 7) = v83;
          v85 = *(v77 + 10);
          v86 = *(v77 + 11);
          v87 = *(v77 + 13);
          *(v76 + 12) = *(v77 + 12);
          *(v76 + 13) = v87;
          *(v76 + 10) = v85;
          *(v76 + 11) = v86;
          v88 = (*v63 + 224 * v75);
          v88[10] = v139;
          v88[11] = v140;
          v88[12] = v141;
          v88[13] = v142;
          v88[6] = v135;
          v88[7] = v136;
          v88[8] = v137;
          v88[9] = v138;
          v88[2] = *&buf[32];
          v88[3] = *&buf[48];
          v88[4] = *&buf[64];
          v88[5] = v134;
          *v88 = *buf;
          v88[1] = *&buf[16];
          v68 = v65 > 3;
          v65 >>= 1;
        }

        while (v68);
      }
    }
  }

  else
  {
    v55 = *__error();
    v56 = _SILogForLogForCategory(1);
    v57 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v56, v57))
    {
      *buf = 134218240;
      *&buf[4] = a11;
      *&buf[12] = 2048;
      *&buf[14] = *(&v131 + 1);
      _os_log_impl(&dword_1C278D000, v56, v57, "Dropping dangling parent (%g) %g", buf, 0x16u);
    }

    *__error() = v55;
  }
}

BOOL contains_similar_string(const __CFString *a1, CFSetRef theSet, const char *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!theSet || (Count = CFSetGetCount(theSet)) == 0)
  {
    return 0;
  }

  v6 = Count;
  Length = CFStringGetLength(a1);
  v31[0] = Length;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v29[1] = v29;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  bzero(v29 - v10, MaximumSizeForEncoding);
  v34.location = 0;
  v34.length = Length;
  CFStringGetBytes(a1, v34, 0x8000100u, 0x2Du, 0, v11, MaximumSizeForEncoding, v31);
  v11[v31[0]] = 0;
  v29[2] = icu_search_context_create();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, v13);
  CFSetGetValues(theSet, v14);
  if (v6 < 1)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v15 = 1;
  v16 = v6;
  v17 = 1;
  while (1)
  {
    v18 = *v14;
    v19 = CFStringGetLength(*v14);
    v30 = v19;
    v20 = v19 - v31[0];
    if (v19 - v31[0] < 0)
    {
      v20 = v31[0] - v19;
    }

    if (v20 > 3)
    {
      goto LABEL_12;
    }

    if (v19 != v31[0])
    {
      break;
    }

    if (CFStringCompare(v18, a1, 0))
    {
      v19 = v30;
      break;
    }

LABEL_12:
    v17 = v15++ < v6;
    ++v14;
    if (!--v16)
    {
      goto LABEL_19;
    }
  }

  v21 = CFStringGetMaximumSizeForEncoding(v19, 0x8000100u);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v29 - v23;
  bzero(v29 - v23, v21);
  v35.length = v30;
  v35.location = 0;
  CFStringGetBytes(v18, v35, 0x8000100u, 0x2Du, 0, v24, v21, &v30);
  v24[v30] = 0;
  v31[1] = 0;
  *buf = 0;
  if (!icu_search_match())
  {
    goto LABEL_12;
  }

  v25 = *__error();
  v26 = _SILogForLogForCategory(1);
  v27 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v26, v27))
  {
    *buf = 134217984;
    *&buf[4] = v30;
    _os_log_impl(&dword_1C278D000, v26, v27, "Dropping similar completion of length %ld", buf, 0xCu);
  }

  *__error() = v25;
LABEL_19:
  icu_ctx_release();
  return v17;
}

void update_item_bundle_ids(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3 >= 3)
    {
      v3 = 3;
    }

    v22 = v3;
    *(a1 + 164) = v3;
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v25 = v4[3];
        v26 = v4[4];
        v27 = v4[5];
        v28 = v4[6];
        v24 = v4[2];
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5) + 1;
        if (v7 > 0x2AAAAAAAAAAAAAALL)
        {
          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * (-v5 >> 5) > v7)
        {
          v7 = 0x5555555555555556 * (-v5 >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v5 >> 5) >= 0x155555555555555)
        {
          v8 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v8 = v7;
        }

        if (v8)
        {
          if (v8 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::vector<long long>::__throw_length_error[abi:nn200100]();
        }

        v9 = 32 * ((v6 - v5) >> 5);
        *v9 = v4[1].n128_u32[0];
        a3 = v25;
        *(v9 + 48) = v26;
        *(v9 + 64) = v27;
        *(v9 + 80) = v28;
        *(v9 + 16) = v24;
        *(v9 + 32) = v25;
        v10 = v9 + 96 * ((v6 - v5) / -96);
        if (v5 != v6)
        {
          v11 = v5;
          v12 = 32 * ((v6 - v5) >> 5) + 96 * ((v6 - v5) / -96);
          do
          {
            *v12 = *v11;
            *(v12 + 16) = *(v11 + 16);
            a3 = *(v11 + 32);
            v13 = *(v11 + 48);
            v14 = *(v11 + 80);
            *(v12 + 64) = *(v11 + 64);
            *(v12 + 80) = v14;
            *(v12 + 32) = a3;
            *(v12 + 48) = v13;
            v11 += 96;
            v12 += 96;
          }

          while (v11 != v6);
        }

        v6 = (v9 + 96);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = v10;
        v4 = v4->n128_u64[0];
      }

      while (v4);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v15 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5));
    if (v6 == v5)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,SIWordTrieFragmentGetBundleIDs::$_0 &,std::pair<unsigned int,ci_rankingbits_wrapped_s> *,false>(v5, v6, v16, 1, a3);
    if (v6 != v5)
    {
      v17 = (a1 + 168);
      if (v22 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v22;
      }

      v19 = v18 - 1;
      v20 = (v5 + 96);
      do
      {
        *v17++ = v20[-6].n128_u32[0];
        if (!v19)
        {
          break;
        }

        --v19;
        v21 = v20 == v6;
        v20 += 6;
      }

      while (!v21);
    }

    if (v5)
    {

      operator delete(v5);
    }
  }
}

__CFString *_CreateCFStringFromFragments(const char *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], a5 + v9 + 1);
  v11 = Mutable;
  if (v9)
  {
    v12 = a1[v9];
    a1[v9] = 0;
    CFStringAppendCString(Mutable, a1, 0x8000100u);
    a1[v9] = v12;
    *a2 = CFStringGetLength(v11);
  }

  if (a4)
  {
    v13 = (a3 + 8);
    do
    {
      CFStringAppendCharacters(v11, *(v13 - 1), *v13);
      v13 += 2;
      --a4;
    }

    while (a4);
  }

  return v11;
}

double _hasPunctuation(SIModelManager *IsCharacterMember, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0.0;
  if (!a2)
  {
    return v4;
  }

  v8 = IsCharacterMember;
  if (_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::onceToken != -1)
  {
    dispatch_once(&_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::onceToken, &__block_literal_global_17_2162);
  }

  v9 = *(a3 + 24);
  if ((v9 & 0x80000000) != 0)
  {
    return v4;
  }

  if (*(a3 + 16) == a2)
  {
    if (!v9)
    {
      return *a3;
    }

    return v4;
  }

  *(a3 + 16) = a2;
  if (*(a3 + 30))
  {
LABEL_14:
    *(a3 + 30) = 1;
    *a3 = 0;
    return v4;
  }

  v10 = v8 + 16 * a2;
  v11 = *(v10 - 2);
  v12 = *(v10 - 1);
  if (!v12)
  {
    v18 = 0;
    v19 = *(a3 + 28);
    v20 = *(a3 + 29);
    goto LABEL_16;
  }

  v13 = _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::newLineAndTabs;
  v14 = 1;
  v15 = *(v10 - 1);
  v16 = 1;
  do
  {
    v17 = *v11;
    v11 = (v11 + 2);
    IsCharacterMember = CFCharacterSetIsCharacterMember(v13, v17);
    if (IsCharacterMember)
    {
      break;
    }

    v16 = v14++ < v12;
    --v15;
  }

  while (v15);
  if (v16)
  {
    goto LABEL_14;
  }

  v11 = *(v10 - 2);
  v18 = *(v10 - 1);
  v9 = *(a3 + 24);
  if ((v9 & 0x80000000) != 0)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v19 = *(a3 + 28);
  v20 = *(a3 + 29);
  if (!v18)
  {
LABEL_16:
    *(a3 + 29) = v20 & 1;
    *(a3 + 28) = v19 & 1;
    *(a3 + 24) = v9;
    v21 = (v20 | v19) ^ 1;
    if (v9)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    goto LABEL_19;
  }

  v31 = 0;
  while (1)
  {
    v32 = v31 == (v18 - 1) || v31 == 0;
    v33 = *(v11 + v31);
    if (!v32 || v33 != 39)
    {
      break;
    }

    v20 ^= 1u;
LABEL_58:
    v31 = (v31 + 1);
    if (v31 == v18)
    {
      goto LABEL_16;
    }
  }

  if (v33 == 34)
  {
    v19 ^= 1u;
    goto LABEL_58;
  }

  for (i = 0; i != 11; ++i)
  {
    if (asc_1C2BFEEE0[i] == v33)
    {
      *(*(a3 + 32) + 2 * v9++) = word_1C2BFEEF6[i];
      goto LABEL_58;
    }
  }

  if (v9 && *(*(a3 + 32) + 2 * v9 - 2) == v33)
  {
    --v9;
    goto LABEL_58;
  }

  v35 = 0;
  while (word_1C2BFEEF6[v35] != v33)
  {
    if (++v35 == 11)
    {
      goto LABEL_58;
    }
  }

  v22 = 0;
  *(a3 + 29) = v20 & 1;
  *(a3 + 28) = v19 & 1;
  *(a3 + 24) = -1;
LABEL_19:
  v4 = *a3;
  if (v18)
  {
    v23 = _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::characterSet;
    v24 = 1.0;
    v25 = v11;
    v26 = v18;
    do
    {
      v27 = *v25++;
      if (CFCharacterSetIsCharacterMember(v23, v27))
      {
        v24 = v24 * 0.1;
      }

      v26 = (v26 - 1);
    }

    while (v26);
    v4 = v4 * v24;
    IsCharacterMember = CFCharacterSetIsCharacterMember(_hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::whiteSpaceAndPunctuation, *(v11 + v18 - 1));
    if (IsCharacterMember)
    {
      v4 = v4 * 0.01;
    }
  }

  if (a2 != 1)
  {
    *a3 = v4;
  }

  if (a4)
  {
    v28 = *(a3 + 48);
    SIModelManager::getInstance(IsCharacterMember);
    if (SIModelManager::isStopword(v11, v18, v28, v29))
    {
      v4 = v4 * 0.01;
    }
  }

  if (a2 == 1)
  {
    *a3 = v4;
  }

  if ((v22 & 1) == 0)
  {
    return 0.0;
  }

  return v4;
}

__CFString *_CreateCFStringFromCrossFieldFragments(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], a4 + 1);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  if (a3)
  {
    v9 = Predefined;
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = a2 + 16 * v10;
      if (a1)
      {
        a1 -= *(v12 + 8);
      }

      else
      {
        if ((v11 & 1) != 0 && *(v12 + 8))
        {
          v13 = 0;
          do
          {
            if (!CFCharacterSetIsCharacterMember(v9, *(*v12 + 2 * v13)))
            {
              break;
            }

            ++v13;
          }

          while (v13 != *(v12 + 8));
        }

        else
        {
          v13 = 0;
        }

        CFStringAppendCharacters(Mutable, (*v12 + 2 * v13), *(v12 + 8) - v13);
        v11 = 0;
        a1 = 0;
      }

      ++v10;
    }

    while (v10 != a3);
  }

  return Mutable;
}

__n128 pqpush_CompletionItem_s(void **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  if ((v5 + 2) >= v4)
  {
    v7 = 2 * v4;
    v8 = v4 < 4;
    v9 = 4;
    if (!v8)
    {
      v9 = v7;
    }

    a1[1] = v9;
    v10 = 224 * v9 + 448;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    v12[12] = 0u;
    v12[13] = 0u;
    v12[10] = 0u;
    v12[11] = 0u;
    v12[8] = 0u;
    v12[9] = 0u;
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v6 = a1[2];
  }

  a1[2] = v6 + 1;
  v13 = *a1 + 224 * v5;
  result = *(a2 + 16);
  *v13 = *a2;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  *(v13 + 4) = *(a2 + 64);
  *(v13 + 5) = v17;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  v20 = *(a2 + 144);
  *(v13 + 8) = *(a2 + 128);
  *(v13 + 9) = v20;
  *(v13 + 6) = v18;
  *(v13 + 7) = v19;
  v21 = *(a2 + 160);
  v22 = *(a2 + 176);
  v23 = *(a2 + 208);
  *(v13 + 12) = *(a2 + 192);
  *(v13 + 13) = v23;
  *(v13 + 10) = v21;
  *(v13 + 11) = v22;
  *(v13 + 1) = result;
  if (v5 >= 2)
  {
    do
    {
      v24 = *a1;
      result.n128_u64[0] = *(*a1 + 28 * v5 + 25);
      v25 = v5 >> 1;
      if (result.n128_f64[0] > *(*a1 + 28 * (v5 >> 1) + 25))
      {
        break;
      }

      v26 = &v24[224 * v5];
      v49 = v26[10];
      v50 = v26[11];
      v51 = v26[12];
      v52 = v26[13];
      v45 = v26[6];
      v46 = v26[7];
      v47 = v26[8];
      v48 = v26[9];
      v41 = v26[2];
      v42 = v26[3];
      v43 = v26[4];
      v44 = v26[5];
      v39 = *v26;
      v40 = v26[1];
      v27 = &v24[224 * v25];
      v28 = v27[1];
      *v26 = *v27;
      v26[1] = v28;
      v29 = v27[2];
      v30 = v27[3];
      v31 = v27[5];
      v26[4] = v27[4];
      v26[5] = v31;
      v26[2] = v29;
      v26[3] = v30;
      v32 = v27[6];
      v33 = v27[7];
      v34 = v27[9];
      v26[8] = v27[8];
      v26[9] = v34;
      v26[6] = v32;
      v26[7] = v33;
      v35 = v27[10];
      v36 = v27[11];
      v37 = v27[13];
      v26[12] = v27[12];
      v26[13] = v37;
      v26[10] = v35;
      v26[11] = v36;
      v38 = (*a1 + 224 * v25);
      v38[10] = v49;
      v38[11] = v50;
      v38[12] = v51;
      v38[13] = v52;
      v38[6] = v45;
      v38[7] = v46;
      v38[8] = v47;
      v38[9] = v48;
      v38[2] = v41;
      v38[3] = v42;
      v38[4] = v43;
      v38[5] = v44;
      result = v39;
      *v38 = v39;
      v38[1] = v40;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

void ___ZL15_hasPunctuationP18SIWordTrieFragmentmP10cachedInfob_block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  v1 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v2 = *MEMORY[0x1E695E480];
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::openParen = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @"[(<“‘");
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::closeParen = CFCharacterSetCreateWithCharactersInString(v2, @"]>”’"));
  MutableCopy = CFCharacterSetCreateMutableCopy(v2, Predefined);
  CFCharacterSetUnion(MutableCopy, v1);
  CFCharacterSetInvert(MutableCopy);
  CFCharacterSetUnion(MutableCopy, _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::openParen);
  CFCharacterSetUnion(MutableCopy, _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::closeParen);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::characterSet = CFCharacterSetCreateCopy(v2, MutableCopy);
  CFRelease(MutableCopy);
  v4 = CFCharacterSetCreateWithCharactersInString(v2, @"\t");
  v5 = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v6 = CFCharacterSetCreateMutableCopy(v2, v5);
  CFCharacterSetUnion(v6, v4);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::newLineAndTabs = CFCharacterSetCreateCopy(v2, v6);
  CFRelease(v4);
  CFRelease(v6);
  v7 = CFCharacterSetCreateWithCharactersInString(v2, @"-");
  v8 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v9 = CFCharacterSetCreateMutableCopy(v2, v8);
  CFCharacterSetUnion(v9, v7);
  v10 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(v9, v10);
  _hasPunctuation(SIWordTrieFragment *,unsigned long,cachedInfo *,BOOL)::whiteSpaceAndPunctuation = v9;

  CFRelease(v7);
}

uint64_t anonymous namespace::stokencallback(_anonymous_namespace_ *this, const unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 24);
  if (v8)
  {
    v9 = *(a4 + 8);
    if (v9 != *a4)
    {
      goto LABEL_8;
    }

    v10 = 2 * v9;
  }

  else
  {
    v10 = 4;
  }

  *a4 = v10;
  v11 = malloc_type_realloc(v8, 8 * v10, 0x50040EE9192B6uLL);
  v8 = v11;
  if (!*(a4 + 24))
  {
    *(a4 + 8) = 0;
  }

  *(a4 + 24) = v11;
LABEL_8:
  bzero(__src, 0x400uLL);
  v17 = 0;
  if (!utf8_encodestr(this, 2 * a2, __src, &v17, 1024))
  {
    v12 = v17 + 1;
    v13 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
    memcpy(v13, __src, v12);
    v14.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v14.i64[1] = v12;
    v15 = vaddq_s64(*(a4 + 8), v14);
    *(v8 + *(a4 + 8)) = v13;
    *(a4 + 8) = v15;
  }

  return 0;
}

uint64_t SISetCompletionRankingWeights(uint64_t result)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  result = CFArrayGetCount(result);
  if (result == 32)
  {
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
    v31 = 0u;
    v32 = 0u;
    __src = 0u;
    v30 = 0u;
    p_src = &__src;
    TypeID = CFNumberGetTypeID();
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
      if (CFGetTypeID(ValueAtIndex) != TypeID)
      {
        v10 = *__error();
        v11 = _SILogForLogForCategory(1);
        v12 = dword_1EBF46AD0 < 3;
        if (!os_log_type_enabled(v11, (dword_1EBF46AD0 < 3)))
        {
          goto LABEL_34;
        }

        v25 = 134218242;
        v26 = v4;
        v27 = 2112;
        v28 = ValueAtIndex;
        v13 = "*warn* Non-numeric in factor array at index %ld: %@";
        goto LABEL_19;
      }

      result = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, p_src);
      if (!result)
      {
        break;
      }

      ++v4;
      p_src = (p_src + 8);
      if (v4 == 32)
      {
        xmmword_1EDD78498 = v41;
        *&qword_1EDD784A8 = v42;
        xmmword_1EDD784B8 = v43;
        unk_1EDD784C8 = v44;
        xmmword_1EDD78458 = v37;
        *&qword_1EDD78468 = v38;
        xmmword_1EDD78478 = v39;
        *&qword_1EDD78488 = v40;
        xmmword_1EDD78418 = v33;
        *&qword_1EDD78428 = v34;
        xmmword_1EDD78438 = v35;
        *&qword_1EDD78448 = v36;
        ranking_factor_weights = __src;
        *&qword_1EDD783E8 = v30;
        xmmword_1EDD783F8 = v31;
        unk_1EDD78408 = v32;
        return result;
      }
    }

    v10 = *__error();
    v11 = _SILogForLogForCategory(1);
    v12 = dword_1EBF46AD0 < 3;
    if (!os_log_type_enabled(v11, (dword_1EBF46AD0 < 3)))
    {
      goto LABEL_34;
    }

    v25 = 134218242;
    v26 = v4;
    v27 = 2112;
    v28 = ValueAtIndex;
    v13 = "*warn* Bad value in factor array at index %ld: %@";
LABEL_19:
    v14 = v11;
    v15 = v12;
  }

  else
  {
    v6 = result;
    *&v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    __src = 0u;
    v30 = 0u;
    if (result >= 18)
    {
      if (dword_1EBF46B00 >= 5)
      {
        v7 = *__error();
        v8 = _SILogForLogForCategory(13);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 134218242;
          v26 = v6;
          v27 = 2112;
          v28 = v1;
          _os_log_impl(&dword_1C278D000, v8, OS_LOG_TYPE_DEFAULT, "completion weight array too large (%ld): %@", &v25, 0x16u);
        }

        result = __error();
        *result = v7;
      }

      return result;
    }

    if (result == 17)
    {
      v9 = CFNumberGetTypeID();
    }

    else
    {
      v16 = *__error();
      v17 = _SILogForLogForCategory(1);
      v18 = dword_1EBF46AD0 < 3;
      if (os_log_type_enabled(v17, (dword_1EBF46AD0 < 3)))
      {
        v25 = 134218242;
        v26 = v6;
        v27 = 2112;
        v28 = v1;
        _os_log_impl(&dword_1C278D000, v17, v18, "*warn* completion weight array incomplete (%ld): %@", &v25, 0x16u);
      }

      *__error() = v16;
      v9 = CFNumberGetTypeID();
      if (v6 < 1)
      {
        return memcpy(&s_completion_weights, &__src, 8 * v6);
      }
    }

    v19 = v9;
    v20 = 0;
    for (i = &__src; ; i = (i + 8))
    {
      v22 = CFArrayGetValueAtIndex(v1, v20);
      if (CFGetTypeID(v22) != v19)
      {
        v10 = *__error();
        v23 = _SILogForLogForCategory(1);
        v24 = dword_1EBF46AD0 < 3;
        if (!os_log_type_enabled(v23, (dword_1EBF46AD0 < 3)))
        {
          goto LABEL_34;
        }

        v25 = 134218242;
        v26 = v20;
        v27 = 2112;
        v28 = v22;
        v13 = "*warn* Non-numeric in weight array at index %ld: %@";
        goto LABEL_32;
      }

      if (!CFNumberGetValue(v22, kCFNumberDoubleType, i))
      {
        break;
      }

      if (v6 == ++v20)
      {
        return memcpy(&s_completion_weights, &__src, 8 * v6);
      }
    }

    v10 = *__error();
    v23 = _SILogForLogForCategory(1);
    v24 = dword_1EBF46AD0 < 3;
    if (!os_log_type_enabled(v23, (dword_1EBF46AD0 < 3)))
    {
      goto LABEL_34;
    }

    v25 = 134218242;
    v26 = v20;
    v27 = 2112;
    v28 = v22;
    v13 = "*warn* Bad value in weight array at index %ld: %@";
LABEL_32:
    v14 = v23;
    v15 = v24;
  }

  _os_log_impl(&dword_1C278D000, v14, v15, v13, &v25, 0x16u);
LABEL_34:
  result = __error();
  *result = v10;
  return result;
}

uint64_t SIGetCompletionOptionsFromRankingWeights()
{
  if (unk_1EDD784C8 == 1.0)
  {
    v0 = (2 * (*(&xmmword_1EDD784B8 + 1) == 1.0)) | 4;
  }

  else
  {
    v0 = 2 * (*(&xmmword_1EDD784B8 + 1) == 1.0);
  }

  if (*&qword_1EDD784D0 == 1.0)
  {
    return v0 | 8;
  }

  else
  {
    return v0;
  }
}

uint64_t si_enqueue_barrier_routine(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, unsigned int a5)
{
  pthread_mutex_lock((a2 + 48));
  if (*(a2 + 36))
  {
    pthread_mutex_unlock((a2 + 48));

    return a3(a4, 1);
  }

  else
  {
    si_enqueue_barrier_for_job(*(a1 + 8 * a5 + 1008), a3, a4, a2);

    return pthread_mutex_unlock((a2 + 48));
  }
}

uint64_t preadvall(uint64_t __fd, uint64_t a2, off_t a3)
{
  while (1)
  {
    v6 = *(a2 + 8);
    if (!v6)
    {
      break;
    }

    v7 = pread(__fd, *a2, v6, a3);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = *__error();
      if (v8 != 4 && (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, __fd, v8, 16) & 1) == 0))
      {
        return -v8;
      }
    }

    else
    {
      if (!v7)
      {
        return 4294967274;
      }

      v9 = *(a2 + 8);
      v10 = v7 - v9;
      if (v7 >= v9)
      {
        if (v7 != v9)
        {
          result = 0;
          v12 = *(a2 + 16) + v10;
          v13 = *(a2 + 24) - v10;
          *(a2 + 16) = v12;
          *(a2 + 24) = v13;
          return result;
        }

        return 0;
      }

      a3 += v7;
      *a2 += v7;
      *(a2 + 8) = v9 - v7;
    }
  }

  return 0;
}

uint64_t pwritevall(uint64_t __fd, const void **a2, int a3, off_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = pwrite(__fd, *a2, a2[1], a4);
    if ((v8 & 0x8000000000000000) == 0)
    {
      a4 += v8;
      v9 = &a2[2 * (v5 - 1) + 2];
      while (1)
      {
        v10 = a2[1];
        v11 = v8 >= v10;
        v12 = v8 - v10;
        if (!v11)
        {
          break;
        }

        a2 += 2;
        v8 = v12;
        if (!--v5)
        {
          if (!v12)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      v9 = a2;
      v12 = v8;
      if (v8)
      {
LABEL_9:
        v13 = *v9 + v12;
        v14 = v9[1] - v12;
        *v9 = v13;
        v9[1] = v14;
      }

LABEL_10:
      a2 = v9;
      goto LABEL_14;
    }

    v15 = *__error();
    if (v15 != 4 && (!g_prot_error_callback || ((*(g_prot_error_callback + 16))(g_prot_error_callback, __fd, v15, 17) & 1) == 0))
    {
      return -v15;
    }

LABEL_14:
    if (!v5)
    {
      return 0;
    }
  }
}