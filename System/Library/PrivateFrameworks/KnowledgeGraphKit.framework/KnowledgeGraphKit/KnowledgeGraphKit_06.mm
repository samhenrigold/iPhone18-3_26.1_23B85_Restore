uint64_t std::pair<std::string,degas::DatabaseMap::DatabaseMapEntry>::~pair(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void degas::DatabaseMap::DatabaseMapEntry::~DatabaseMapEntry(void **this)
{
  v2 = (this + 5);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>::operator()[abi:ne200100](void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void degas::DatabaseMap::deregisterDatabase(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 24));
  v8 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v8 != v9)
  {
    v12 = v8;
    while (v12[11] != a3 || *(v12 + 14) != a4)
    {
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v15 = *v14 == v12;
          v12 = v14;
        }

        while (!v15);
      }

      v12 = v14;
      if (v14 == v9)
      {
        goto LABEL_28;
      }
    }

    v16 = v12[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      v18 = v12;
      do
      {
        v17 = v18[2];
        v15 = *v17 == v18;
        v18 = v17;
      }

      while (!v15);
    }

    if (*a1 == v12)
    {
      *a1 = v17;
    }

    v19 = *(a1 + 8);
    --*(a1 + 16);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v19, v12);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,degas::DatabaseMap::DatabaseMapEntry>,void,0>((v12 + 4));
    operator delete(v12);
    goto LABEL_28;
  }

  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v10 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *__p = 136315138;
    *&__p[4] = v11;
    _os_log_fault_impl(&dword_255870000, v10, OS_LOG_TYPE_FAULT, "double deregister of a database at path %s", __p, 0xCu);
LABEL_28:
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }
  }

  v20 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 2)
    {
      v21 = "none";
    }

    else
    {
      v21 = off_2797FF020[a4 - 1];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v21);
    if (v25 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = *__p;
    }

    if (*(a2 + 23) >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    *buf = 136315394;
    v27 = v22;
    v28 = 2080;
    v29 = v23;
    _os_log_impl(&dword_255870000, v20, OS_LOG_TYPE_INFO, "released database with mode %s at path %s", buf, 0x16u);
    if (v25 < 0)
    {
      operator delete(*__p);
    }
  }

  os_unfair_lock_unlock((a1 + 24));
}

uint64_t degas::DatabaseMap::changeMode(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v43 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(a1 + 6);
  v10 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v10 == v11)
  {
    goto LABEL_28;
  }

  v12 = 1;
  v13 = v11;
  do
  {
    v14 = *(v10 + 14);
    if (v14 == a4)
    {
      v15 = v10;
    }

    else
    {
      v15 = v13;
    }

    v16 = a5 == 2 && v14 == 2;
    v17 = !v16;
    v18 = v17 & v12;
    if (v14 == 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    if (a5 == 3)
    {
      v19 = 0;
    }

    if (v10[11] == a3)
    {
      v13 = v15;
    }

    else
    {
      v12 = v19;
    }

    v20 = v10[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v10[2];
        v16 = *v21 == v10;
        v10 = v21;
      }

      while (!v16);
    }

    v10 = v21;
  }

  while (v21 != v11);
  if (((v13 != v11) & v12) == 0)
  {
LABEL_28:
    v22 = 0;
  }

  else
  {
    *(v13 + 14) = a5;
    v22 = 1;
  }

  os_unfair_lock_unlock(a1 + 6);
  if (degas::DegasLoggingConnection(void)::onceToken != -1)
  {
    dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
  }

  v23 = degas::DegasLoggingConnection(void)::log;
  if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
  {
    if ((a4 - 1) > 2)
    {
      v24 = "none";
    }

    else
    {
      v24 = off_2797FF020[a4 - 1];
    }

    v25 = v33;
    std::string::basic_string[abi:ne200100]<0>(v33, v24);
    if (v34 < 0)
    {
      v25 = v33[0];
    }

    if ((a5 - 1) > 2)
    {
      v26 = "none";
    }

    else
    {
      v26 = off_2797FF020[a5 - 1];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v26);
    v27 = "failed to change";
    if (v22)
    {
      v27 = "changed";
    }

    if (v32 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if (*(a2 + 23) >= 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = *a2;
    }

    *buf = 136315906;
    v36 = v27;
    v37 = 2080;
    v38 = v25;
    v39 = 2080;
    v40 = v28;
    v41 = 2080;
    v42 = v29;
    _os_log_impl(&dword_255870000, v23, OS_LOG_TYPE_INFO, "%s mode for database from %s to %s at path %s", buf, 0x2Au);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

  return v22;
}

void sub_25591F82C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void degas::DatabaseMap::iterateDatabasesForPath(os_unfair_lock_s *a1, const void **a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 6);
  v6 = std::__tree<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::__map_value_compare<std::string,std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,degas::DatabaseMap::DatabaseMapEntry>>>::__equal_range_multi<std::string>(a1, a2);
  if (v6 != v7)
  {
    v8 = v6;
    v9 = v7;
    do
    {
      if (v8[11])
      {
        (*(a3 + 16))(a3);
      }

      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  os_unfair_lock_unlock(a1 + 6);
}

void *degas::nullStatementPtr(degas *this)
{
  {
    __cxa_atexit(std::shared_ptr<degas::Statement>::~shared_ptr[abi:ne200100], &degas::nullStatementPtr(void)::nullPtr, &dword_255870000);
  }

  return &degas::nullStatementPtr(void)::nullPtr;
}

uint64_t std::shared_ptr<degas::Statement>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t degas::Statement::enableQueryExplain(uint64_t this)
{
  degas::sExplainQuery = this;
  if (this)
  {
    degas::sExplainQueryPlan = 0;
  }

  return this;
}

uint64_t degas::Statement::enableQueryPlanExplain(uint64_t this)
{
  degas::sExplainQueryPlan = this;
  if (this)
  {
    degas::sExplainQuery = 0;
  }

  return this;
}

sqlite3_stmt **degas::Statement::Statement(sqlite3_stmt **ppStmt, sqlite3 *db, uint64_t a3)
{
  v54[19] = *MEMORY[0x277D85DE8];
  *(ppStmt + 5) = 0;
  *ppStmt = 0;
  ppStmt[1] = db;
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

  v9 = sqlite3_prepare_v2(db, v7, v8, ppStmt, 0);
  if (v9)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v10 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_FAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v33 = a3;
      }

      else
      {
        v33 = *a3;
      }

      *v49 = 136315650;
      *&v49[4] = v33;
      *&v49[12] = 1024;
      *&v49[14] = v9;
      v50 = 2080;
      v51 = sqlite3_errmsg(db);
      _os_log_fault_impl(&dword_255870000, v10, OS_LOG_TYPE_FAULT, "Failed to prepare statement for query: <%s> rc=%d err=<%s>", v49, 0x1Cu);
    }
  }

  *(ppStmt + 4) = v9;
  if ((degas::sExplainQueryPlan & 1) != 0 || degas::sExplainQuery == 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v49);
    if (degas::sExplainQueryPlan)
    {
      v11 = "explain query plan ";
    }

    else
    {
      v11 = "explain ";
    }

    if (degas::sExplainQueryPlan)
    {
      v12 = 19;
    }

    else
    {
      v12 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v11, v12);
    v13 = *(a3 + 23);
    if (v13 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (v13 >= 0)
    {
      v15 = *(a3 + 23);
    }

    else
    {
      v15 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v14, v15);
    std::stringbuf::str();
    ppStmta = 0;
    if ((v44 & 0x80u) == 0)
    {
      v16 = &v42;
    }

    else
    {
      v16 = v42;
    }

    if ((v44 & 0x80u) == 0)
    {
      v17 = v44;
    }

    else
    {
      v17 = v43;
    }

    sqlite3_prepare_v2(db, v16, v17, &ppStmta, 0);
    v18 = sqlite3_step(ppStmta);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v36);
    for (i = v18; i == 100; i = sqlite3_step(ppStmta))
    {
      v20 = sqlite3_column_count(ppStmta);
      if (v20 >= 1)
      {
        for (j = 0; j != v20; ++j)
        {
          v22 = sqlite3_column_text(ppStmta, j);
          v23 = v22;
          if (v22)
          {
            v24 = strlen(v22);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, v23, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, " ", 1);
          }
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "\n", 1);
    }

    if (v18 == 100)
    {
      if (degas::DegasLoggingConnection(void)::onceToken != -1)
      {
        dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
      }

      v25 = degas::DegasLoggingConnection(void)::log;
      if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_INFO))
      {
        v26 = *(a3 + 23);
        v27 = *a3;
        std::stringbuf::str();
        v28 = v26 >= 0 ? a3 : v27;
        v29 = v35 >= 0 ? &__p : __p;
        *buf = 136315394;
        v46 = v28;
        v47 = 2080;
        v48 = v29;
        _os_log_impl(&dword_255870000, v25, OS_LOG_TYPE_INFO, "query plan for: %s\n%s", buf, 0x16u);
        if (v35 < 0)
        {
          operator delete(__p);
        }
      }
    }

    sqlite3_finalize(ppStmta);
    v36 = *MEMORY[0x277D82828];
    v30 = v36;
    v31 = *(MEMORY[0x277D82828] + 24);
    *(&v36 + *(v36 - 24)) = v31;
    v37 = MEMORY[0x277D82878] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v38);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](&v40);
    if (v44 < 0)
    {
      operator delete(v42);
    }

    *v49 = v30;
    *&v49[*(v30 - 24)] = v31;
    *&v49[8] = MEMORY[0x277D82878] + 16;
    if (v53 < 0)
    {
      operator delete(v52);
    }

    *&v49[8] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v49[16]);
    std::ostream::~ostream();
    MEMORY[0x259C43E80](v54);
  }

  return ppStmt;
}

void sub_25591FF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  std::ostringstream::~ostringstream(&a12);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a56);
  _Unwind_Resume(a1);
}

void degas::Statement::~Statement(degas::Statement *this)
{
  if (*(this + 4) == 100)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v2 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_255870000, v2, OS_LOG_TYPE_DEBUG, "deleting statement with possible open cursor", v3, 2u);
    }
  }

  if (*this)
  {
    sqlite3_finalize(*this);
    *this = 0;
  }
}

uint64_t degas::Statement::prepareForUse(degas::Statement *this)
{
  if (*(this + 4) == 100)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v2 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_255870000, v2, OS_LOG_TYPE_DEBUG, "resetting statement with possible open cursor", v8, 2u);
    }
  }

  v3 = sqlite3_reset(*this);
  if (v3 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v3 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v3)
  {
    v6 = 0;
  }

  if (v3 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t degas::Statement::bindInteger(sqlite3_stmt **this, int a2, sqlite3_int64 a3)
{
  v4 = sqlite3_bind_int64(*this, a2, a3);
  *(this + 4) = v4;
  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::Statement::bindDouble(sqlite3_stmt **this, int a2, double a3)
{
  v4 = sqlite3_bind_double(*this, a2, a3);
  *(this + 4) = v4;
  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t degas::Statement::bindString(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(a3 + 23);
  v6 = *(a3 + 2);
  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    a3 = *a3;
    v7 = v6;
  }

  v8 = sqlite3_bind_text(v4, a2, a3, v7, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 16) = v8;
  result = 3;
  if (v8 > 99)
  {
    if (v8 == 100)
    {
      return 1;
    }

    else if (v8 == 101)
    {
      return 2;
    }
  }

  else if (v8)
  {
    if (v8 == 17)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t degas::Statement::bindBitmap(degas::Statement *this, const Bitmap *a2, const degas::Bitmap *a3)
{
  v3 = a2;
  degas::LiteralBitmap::makeLiteralBitmap(a3, a2);
  v6 = v5;
  v7 = degas::Statement::bindLiteralBitmap(this, v3, v5);
  MEMORY[0x259C43EB0](v6, 0x1000C4000313F17);
  return v7;
}

uint64_t degas::Statement::bindLiteralBitmap(uint64_t a1, int a2, _DWORD *a3)
{
  v4 = sqlite3_bind_blob(*a1, a2, a3, (144 * a3[1]) | 8, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 16) = v4;
  result = 3;
  if (v4 > 99)
  {
    if (v4 == 100)
    {
      return 1;
    }

    else if (v4 == 101)
    {
      return 2;
    }
  }

  else if (v4)
  {
    if (v4 == 17)
    {
      return 4;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t degas::Statement::bindBitmapPointer(sqlite3_stmt **this, int a2, Bitmap *a3)
{
  result = sqlite3_bind_pointer(*this, a2, a3, degas::kBitmapPointerTypeName, 0);
  *(this + 4) = result;
  if (result > 99)
  {
    if (result == 100)
    {
      return 1;
    }

    v5 = result == 101;
    v6 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = result == 17;
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 3;
  }
}

uint64_t degas::Statement::bindArrayPointer(sqlite3_stmt **this, int a2, void *a3)
{
  result = sqlite3_bind_pointer(*this, a2, a3, degas::kArrayPointerTypeName, 0);
  *(this + 4) = result;
  if (result > 99)
  {
    if (result == 100)
    {
      return 1;
    }

    v5 = result == 101;
    v6 = 2;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = result == 17;
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 3;
  }
}

uint64_t degas::Statement::bindNull(sqlite3_stmt **this, int a2)
{
  v3 = sqlite3_bind_null(*this, a2);
  *(this + 4) = v3;
  if (v3 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v3 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v3)
  {
    v6 = 0;
  }

  if (v3 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t degas::Statement::next(sqlite3_stmt **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step(*this);
  *(this + 4) = v2;
  if ((v2 - 102) <= 0xFFFFFFFD)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v3 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v2;
      _os_log_error_impl(&dword_255870000, v3, OS_LOG_TYPE_ERROR, "statement step error: %d", v8, 8u);
    }
  }

  if (v2 == 101)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  if (v2 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v2 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v2)
  {
    v6 = 0;
  }

  if (v2 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t degas::Statement::finishStatementCursor(degas::Statement *this)
{
  v1 = *(this + 4);
  if (v1 > 99)
  {
    if (v1 == 100)
    {
      v5 = sqlite3_reset(*this);
      *(this + 4) = 101;
      if (v5 == 101)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (v5 == 100)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      if (v5 == 17)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }

      if (!v5)
      {
        v8 = 0;
      }

      if (v5 <= 99)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    else if (v1 == 101)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (v1 == 17)
    {
      v2 = 4;
    }

    else
    {
      v2 = 3;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t degas::Statement::update(sqlite3_stmt **this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sqlite3_step(*this);
  *(this + 4) = v2;
  if ((v2 - 102) <= 0xFFFFFFFD)
  {
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v3 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v2;
      _os_log_error_impl(&dword_255870000, v3, OS_LOG_TYPE_ERROR, "statement update error: %d", v8, 8u);
    }
  }

  if (v2 == 101)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v4 == 100)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 17)
  {
    v6 = 4;
  }

  else
  {
    v6 = 3;
  }

  if (!v4)
  {
    v6 = 0;
  }

  if (v4 <= 99)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

double degas::Statement::stringColumnValue(sqlite3_stmt **a1, int a2, uint64_t a3)
{
  v4 = sqlite3_column_text(*a1, a2);
  if (v4)
  {
    v6 = v4;
    v7 = strlen(v4);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    result = *&__dst;
    *a3 = __dst;
    *(a3 + 16) = v10;
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void degas::Statement::bitmapColumnValue(sqlite3_stmt **this, int a2, degas::Bitmap *a3)
{
  v4 = degas::Statement::literalBitmapColumnValue(this, a2);
  if (v4)
  {
    degas::Bitmap::Bitmap(v7, v4);
    degas::Bitmap::operator=(a3, v7);
    v9 = &v8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  else
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    v5 = *(a3 + 2);
    for (i = *(a3 + 3); i != v5; i -= 16)
    {
      degas::BitsetPtr::releaseBitset((i - 16));
      *(i - 8) = 0;
    }

    *(a3 + 3) = v5;
  }
}

void sub_255920998(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 16;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

unsigned int *degas::Statement::literalBitmapColumnValue(sqlite3_stmt **this, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sqlite3_column_blob(*this, a2);
  v5 = sqlite3_column_bytes(*this, a2);
  if (((144 * v4[1]) | 8) != v5)
  {
    v6 = v5;
    if (degas::DegasLoggingConnection(void)::onceToken != -1)
    {
      dispatch_once(&degas::DegasLoggingConnection(void)::onceToken, &__block_literal_global_5283);
    }

    v7 = degas::DegasLoggingConnection(void)::log;
    if (os_log_type_enabled(degas::DegasLoggingConnection(void)::log, OS_LOG_TYPE_ERROR))
    {
      v9 = (144 * v4[1]) | 8;
      v10 = 134218240;
      v11 = v6;
      v12 = 2048;
      v13 = v9;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "bad literal bitmap read, column has %lu bytes, bitmap thinks it needs %lu", &v10, 0x16u);
    }

    return 0;
  }

  return v4;
}

uint64_t degas::Statement::measureIO(sqlite3 **this, degas::IOAccountingEntry *a2)
{
  pHiwtr = 0;
  v4 = sqlite3_db_status(this[1], 8, a2 + 1, &pHiwtr, 0);
  if (!v4)
  {
    v4 = sqlite3_db_status(this[1], 7, a2, &pHiwtr, 0);
    if (!v4)
    {
      v4 = sqlite3_db_status(this[1], 12, a2 + 2, &pHiwtr, 0);
    }
  }

  if (v4 == 101)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 100)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 17)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  if (!v4)
  {
    v7 = 0;
  }

  if (v4 <= 99)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void *degas::Cursor::Cursor(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

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

  return result;
}

__n128 degas::Cursor::Cursor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void degas::Cursor::~Cursor(degas::Statement **this)
{
  degas::Statement::finishStatementCursor(*this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t degas::Cursor::columnDataType(sqlite3_stmt ***this, int a2)
{
  LODWORD(result) = sqlite3_column_type(**this, a2);
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t degas::EdgeTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = degas::EdgeTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = sqlite3_errmsg(this[4]);
    v8 = 136315138;
    v9 = v7;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge delete failed: %s", &v8, 0xCu);
  }

  return v5;
}

degas::Statement **degas::EdgeTable::deleteStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_5;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable15deleteStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "delete from ", 12);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where identifier=?1", 20);
  operator new();
}

void sub_255921000(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::EdgeTable::createTable(degas::EdgeTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, "create table ", 13);
  v2 = *(this + 31);
  if (v2 >= 0)
  {
    v3 = this + 8;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v40, " (identifier integer primary key autoincrement, labels blob, sourceNodeId integer, targetNodeId integer)", 104);
  v5 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v5, &__p);
  if (SHIBYTE(v36[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v6 = degas::Statement::update(ppStmt);
  v7 = MEMORY[0x277D82828];
  if (!v6)
  {
    if (*(this + 49) == 1)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "create index ", 13);
      v8 = *(this + 31);
      if (v8 >= 0)
      {
        v9 = this + 8;
      }

      else
      {
        v9 = *(this + 1);
      }

      if (v8 >= 0)
      {
        v10 = *(this + 31);
      }

      else
      {
        v10 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "_source_idx on ", 15);
      v11 = *(this + 31);
      if (v11 >= 0)
      {
        v12 = this + 8;
      }

      else
      {
        v12 = *(this + 1);
      }

      if (v11 >= 0)
      {
        v13 = *(this + 31);
      }

      else
      {
        v13 = *(this + 2);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v12, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, " (sourceNodeId)", 15);
      v14 = *(this + 4);
      std::stringbuf::str();
      degas::Statement::Statement(v33, v14, &v28);
      if (SHIBYTE(v30[0].__locale_) < 0)
      {
        operator delete(v28);
      }

      v6 = degas::Statement::update(v33);
      if (v6)
      {
        v15 = *v7;
        v16 = *(v7 + 24);
      }

      else
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v28);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "create index ", 13);
        v17 = *(this + 31);
        if (v17 >= 0)
        {
          v18 = this + 8;
        }

        else
        {
          v18 = *(this + 1);
        }

        if (v17 >= 0)
        {
          v19 = *(this + 31);
        }

        else
        {
          v19 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v18, v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "_target_idx on ", 15);
        v20 = *(this + 31);
        if (v20 >= 0)
        {
          v21 = this + 8;
        }

        else
        {
          v21 = *(this + 1);
        }

        if (v20 >= 0)
        {
          v22 = *(this + 31);
        }

        else
        {
          v22 = *(this + 2);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, v21, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, " (targetNodeId)", 15);
        v23 = *(this + 4);
        std::stringbuf::str();
        degas::Statement::Statement(v27, v23, &v25);
        if (v26 < 0)
        {
          operator delete(v25);
        }

        v6 = degas::Statement::update(v27);
        degas::Statement::~Statement(v27);
        v15 = *v7;
        v28 = *v7;
        v16 = *(v7 + 24);
        *(&v28 + *(v28 - 3)) = v16;
        v29 = MEMORY[0x277D82878] + 16;
        if (v31 < 0)
        {
          operator delete(v30[7].__locale_);
        }

        v29 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v30);
        std::ostream::~ostream();
        MEMORY[0x259C43E80](&v32);
      }

      degas::Statement::~Statement(v33);
      __p = v15;
      *(&__p + *(v15 - 3)) = v16;
      v35 = MEMORY[0x277D82878] + 16;
      if (v37 < 0)
      {
        operator delete(v36[7].__locale_);
      }

      v35 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v36);
      std::ostream::~ostream();
      MEMORY[0x259C43E80](&v38);
    }

    else
    {
      v6 = 0;
    }
  }

  degas::Statement::~Statement(ppStmt);
  v40 = *v7;
  *(&v40 + *(v40 - 3)) = *(v7 + 24);
  v41 = MEMORY[0x277D82878] + 16;
  if (v43 < 0)
  {
    operator delete(v42[7].__locale_);
  }

  v41 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v42);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v44);
  return v6;
}

void sub_2559215E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  degas::Statement::~Statement(&a13);
  std::ostringstream::~ostringstream(&a16);
  degas::Statement::~Statement(&a49);
  std::ostringstream::~ostringstream(&a52);
  degas::Statement::~Statement(&STACK[0x260]);
  std::ostringstream::~ostringstream(&STACK[0x278]);
  _Unwind_Resume(a1);
}

void degas::EdgeTable::~EdgeTable(degas::EdgeTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::EdgeTable::EdgeTable(void *a1, uint64_t a2, __int128 *a3, char a4, char a5, uint64_t a6)
{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9B68;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9B68;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

degas::Statement **degas::EdgeTable::insertStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_3707;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable15insertStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "insert into ", 12);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " (identifier, labels, sourceNodeId, targetNodeId) values(?1, ?2, ?3, ?4)", 72);
  operator new();
}

void sub_255921AE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByIdentifierStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_3710;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where identifier=?1", 20);
  operator new();
}

void sub_255921DB0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByBitmapStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_3712;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " e, identifierBitmap(?) b where e.identifier = b.value", 54);
  operator new();
}

void sub_255922078(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByLabelStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable20readByLabelStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_3715;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable20readByLabelStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapContainsIdentifier(labels, ?1)", 43);
  operator new();
}

void sub_255922340(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAllLabelsStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x802u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable24readByAllLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_14_3717;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable24readByAllLabelsStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapContainsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_255922608(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAllLabelsAndIdentifiersStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x803u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_16_3719;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " e, identifierBitmap(?1) b where e.identifier = b.value and bitmapContainsBitmap(e.labels, ?2)", 94);
  operator new();
}

void sub_2559228D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAnyLabelsStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x804u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable24readByAnyLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_18_3721;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable24readByAnyLabelsStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapOverlapsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_255922B98(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readByAnyLabelsAndIdentifiersStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x805u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_20_3723;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select e.identifier, e.labels, e.sourceNodeId, e.targetNodeId from ", 67);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " e, identifierBitmap(?1) b where e.identifier = b.value and bitmapOverlapsBitmap(e.labels, ?2)", 94);
  operator new();
}

void sub_255922E60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::EdgeTable::readAllStatement(degas::EdgeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9EdgeTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_22_3725;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9EdgeTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, sourceNodeId, targetNodeId from ", 59);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " order by identifier", 20);
  operator new();
}

void sub_255923128(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::EdgeTable::insert(sqlite3 **this, sqlite3_int64 *a2, const degas::Bitmap *a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v17 = *MEMORY[0x277D85DE8];
  inserted = degas::EdgeTable::insertStatement(this);
  v11 = *inserted;
  if (*a2)
  {
    degas::Statement::bindInteger(v11, 1, *a2);
  }

  else
  {
    degas::Statement::bindNull(v11, 1);
  }

  degas::Statement::bindBitmap(*inserted, 2, a3);
  degas::Statement::bindInteger(*inserted, 3, a4);
  degas::Statement::bindInteger(*inserted, 4, a5);
  v12 = degas::Statement::update(*inserted);
  if (v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = sqlite3_errmsg(this[4]);
      v15 = 136315138;
      v16 = v13;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge insert failed: %s", &v15, 0xCu);
    }
  }

  else if (!*a2)
  {
    *a2 = sqlite3_last_insert_rowid(this[4]);
  }

  return v12;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByIdentifier(degas::EdgeTable *this, sqlite3_int64 a2)
{
  v3 = degas::EdgeTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByBitmap(degas::EdgeTable *this, Bitmap *a2)
{
  v3 = degas::EdgeTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByLabel(degas::EdgeTable *this, sqlite3_int64 a2)
{
  v3 = degas::EdgeTable::readByLabelStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

degas::Statement **degas::EdgeTable::prepareStatementToReadByAllLabels(degas::EdgeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::EdgeTable::readByAllLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByAllLabelsAndIdentifiers(degas::EdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::EdgeTable::readByAllLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

degas::Statement **degas::EdgeTable::prepareStatementToReadByAnyLabels(degas::EdgeTable *this, const degas::Bitmap *a2)
{
  v3 = degas::EdgeTable::readByAnyLabelsStatement(this);
  degas::Statement::bindBitmap(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::EdgeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(degas::EdgeTable *this, const degas::Bitmap *a2, Bitmap *a3)
{
  v5 = degas::EdgeTable::readByAnyLabelsAndIdentifiersStatement(this);
  degas::Statement::bindBitmapPointer(*v5, 1, a3);
  degas::Statement::bindBitmap(*v5, 2, a2);
  return v5;
}

void *degas::EdgeCursor::EdgeCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void degas::EdgeCursor::setForSelectAll(degas::EdgeCursor *this, const degas::EdgeTable *a2)
{
  AllStatement = degas::EdgeTable::readAllStatement(a2);
  v5 = *AllStatement;
  v4 = AllStatement[1];
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 1);
  *this = v5;
  *(this + 1) = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void degas::EdgeCursor::setForIdentifier(degas::EdgeCursor *this, sqlite3_int64 a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForIdentifiers(degas::EdgeCursor *this, Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForLabel(degas::EdgeCursor *this, sqlite3_int64 a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByLabelStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAllLabels(degas::EdgeCursor *this, const degas::Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByAllLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAllLabelsAndIdentifiers(degas::EdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::EdgeTable *a4)
{
  v5 = degas::EdgeTable::prepareStatementToReadByAllLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAnyLabels(degas::EdgeCursor *this, const degas::Bitmap *a2, const degas::EdgeTable *a3)
{
  v5 = degas::EdgeTable::readByAnyLabelsStatement(a3);
  degas::Statement::bindBitmap(*v5, 1, a2);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void degas::EdgeCursor::setForAnyLabelsAndIdentifiers(degas::EdgeCursor *this, const degas::Bitmap *a2, Bitmap *a3, const degas::EdgeTable *a4)
{
  v5 = degas::EdgeTable::prepareStatementToReadByAnyLabelsAndIdentifiers(a4, a2, a3);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 1);
  *this = v7;
  *(this + 1) = v6;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_255926620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, id a16)
{
  objc_sync_exit(obj);
  objc_sync_exit(a16);
  _Unwind_Resume(a1);
}

void *degas::Migration::Migration(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::Migration::migrateAttributeSchema(degas::Migration *this)
{
  AllStatement = degas::AttributeTable::readAllStatement((*this + 304));
  v4 = AllStatement[1];
  v38[0] = *AllStatement;
  v38[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  do
  {
    v5 = degas::Statement::next(v38[0]);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v1 = 0;
      }

      else
      {
        v1 = v5;
      }

      break;
    }

    v6 = sqlite3_column_int64(*v38[0], 0);
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    degas::Statement::stringColumnValue(v38[0], 1, v36);
    degas::AttributeInstanceTable::AttributeInstanceTable(v35, *(this + 1), v36, 0, 1, *this + 40);
    v7 = degas::AttributeInstanceTable::readAllStatement(v35);
    v8 = v7[1];
    v33 = *v7;
    v34 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    }

    while (1)
    {
      v9 = degas::Statement::next(v33);
      v10 = v9;
      if (v9 != 1)
      {
        break;
      }

      v11 = sqlite3_column_int64(*v33, 0);
      v12 = sqlite3_column_int64(*v33, 4);
      v13 = 1;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          __p = 0;
          v31 = 0;
          v32 = 0;
          degas::Statement::stringColumnValue(v33, 3, &__p);
          v13 = degas::Database::setNodeAttributeValue(*this, v11, v6, &__p);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_16;
        }

        if (v12 == 4)
        {
          v16 = sqlite3_column_int64(*v33, 1);
          v15 = degas::Database::setNodeAttributeValueUnsigned(*this, v11, v6, v16);
          goto LABEL_15;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v17 = sqlite3_column_int64(*v33, 1);
          v15 = degas::Database::setNodeAttributeValue(*this, v11, v6, v17);
          goto LABEL_15;
        }

        if (v12 == 2)
        {
          v14 = sqlite3_column_double(*v33, 2);
          v15 = degas::Database::setNodeAttributeValue(*this, v11, v6, v14);
LABEL_15:
          v13 = v15;
        }
      }

LABEL_16:
      v18 = v13;
      if (v13 >= 2)
      {
        goto LABEL_21;
      }
    }

    v13 = v9;
    v18 = v1;
LABEL_21:
    degas::Cursor::~Cursor(&v33);
    degas::AttributeInstanceTable::~AttributeInstanceTable(v35);
    if (v10 == 1)
    {
      v19 = 0;
      v1 = v18;
      goto LABEL_41;
    }

    degas::AttributeInstanceTable::AttributeInstanceTable(v35, *(this + 1), v36, 0, 2, *this + 40);
    v20 = degas::AttributeInstanceTable::readAllStatement(v35);
    v21 = v20[1];
    v33 = *v20;
    v34 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    while (2)
    {
      v22 = degas::Statement::next(v33);
      v19 = v22 != 1;
      if (v22 == 1)
      {
        v23 = sqlite3_column_int64(*v33, 0);
        v24 = sqlite3_column_int64(*v33, 4);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            __p = 0;
            v31 = 0;
            v32 = 0;
            degas::Statement::stringColumnValue(v33, 3, &__p);
            v13 = degas::Database::setEdgeAttributeValue(*this, v23, v6, &__p);
            if (SHIBYTE(v32) < 0)
            {
              operator delete(__p);
            }

            goto LABEL_36;
          }

          if (v24 != 4)
          {
            goto LABEL_36;
          }

          v27 = sqlite3_column_int64(*v33, 1);
          v26 = degas::Database::setEdgeAttributeValueUnsigned(*this, v23, v6, v27);
        }

        else
        {
          if (v24 != 1)
          {
            if (v24 == 2)
            {
              v25 = sqlite3_column_double(*v33, 2);
              v26 = degas::Database::setEdgeAttributeValue(*this, v23, v6, v25);
              goto LABEL_35;
            }

LABEL_36:
            if (v13 >= 2)
            {
              goto LABEL_40;
            }

            continue;
          }

          v28 = sqlite3_column_int64(*v33, 1);
          v26 = degas::Database::setEdgeAttributeValue(*this, v23, v6, v28);
        }

LABEL_35:
        v13 = v26;
        goto LABEL_36;
      }

      break;
    }

    v13 = v18;
LABEL_40:
    degas::Cursor::~Cursor(&v33);
    degas::AttributeInstanceTable::~AttributeInstanceTable(v35);
    v1 = v13;
LABEL_41:
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }
  }

  while (v19);
  degas::Cursor::~Cursor(v38);
  return v1;
}

void sub_25592799C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, char a17)
{
  if (*(v17 - 81) < 0)
  {
    operator delete(*(v17 - 104));
  }

  degas::Cursor::~Cursor((v17 - 80));
  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateBitmapSchema(sqlite3 ***this)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *this;
  AllStatement = degas::LabelTable::readAllStatement((*this + 10));
  v5 = AllStatement[1];
  v24[0] = *AllStatement;
  v24[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v7 = MEMORY[0x277D86220];
  while (degas::Statement::next(v24[0]) == 1)
  {
    v8 = sqlite3_column_int64(*v24[0], 0);
    v29[0] = sqlite3_column_blob(*v24[0], 2);
    *__p = 0u;
    memset(v33, 0, 25);
    if (v29[0] && (degas::Bitmap::replaceFromEncodedBuffer(__p, v29) & 1) == 0)
    {
      ppStmt[0] = v33;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
      v1 = 4;
LABEL_38:
      degas::Cursor::~Cursor(v24);
      return v1;
    }

    *v34 = sqlite3_column_blob(*v24[0], 3);
    *ppStmt = 0u;
    memset(v31, 0, 25);
    if (*v34 && (degas::Bitmap::replaceFromEncodedBuffer(ppStmt, v34) & 1) == 0)
    {
      v9 = 0;
      v6 = 4;
      v1 = 4;
    }

    else
    {
      v6 = degas::LabelTable::update((v3 + 10), v8, __p, ppStmt);
      if (v6)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = sqlite3_errmsg(v3[14]);
          *buf = 136315138;
          *&buf[4] = v10;
          _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "node update failed: %s", buf, 0xCu);
        }

        v9 = 0;
        v1 = v6;
      }

      else
      {
        v9 = 1;
      }
    }

    *buf = v31;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    ppStmt[0] = v33;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
    if ((v9 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  degas::Cursor::~Cursor(v24);
  v11 = *this;
  degas::NodeCursor::NodeCursor(v29);
  degas::NodeCursor::setForSelectAll(v29, (v11 + 24));
  v12 = this[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "update Node set labels=?2, edgesIn=?3, edgesOut=?4 where identifier=?1");
  degas::Statement::Statement(buf, v12, __p);
  if (v33[7] < 0)
  {
    operator delete(__p[0]);
  }

  v13 = MEMORY[0x277D86220];
  while (1)
  {
    v14 = degas::Statement::next(v29[0]);
    v15 = v14 == 1;
    if (v14 != 1)
    {
      break;
    }

    v16 = sqlite3_column_int64(*v29[0], 0);
    v28 = sqlite3_column_blob(*v29[0], 1);
    *__p = 0u;
    memset(v33, 0, 25);
    if (v28 && (degas::Bitmap::replaceFromEncodedBuffer(__p, &v28) & 1) == 0)
    {
      ppStmt[0] = v33;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
      v6 = 4;
      v15 = 1;
      v1 = 4;
      break;
    }

    v27 = sqlite3_column_blob(*v29[0], 2);
    *ppStmt = 0u;
    memset(v31, 0, 25);
    if (v27 && (degas::Bitmap::replaceFromEncodedBuffer(ppStmt, &v27) & 1) == 0)
    {
      v17 = 0;
      v6 = 4;
      v1 = 4;
    }

    else
    {
      v26 = sqlite3_column_blob(*v29[0], 3);
      *v24 = 0u;
      memset(v25, 0, 25);
      if (v26 && (degas::Bitmap::replaceFromEncodedBuffer(v24, &v26) & 1) == 0)
      {
        v17 = 0;
        v6 = 4;
        v1 = 4;
      }

      else
      {
        degas::Statement::prepareForUse(buf);
        degas::Statement::bindInteger(buf, 1, v16);
        degas::Statement::bindBitmap(buf, 2, __p);
        degas::Statement::bindBitmap(buf, 3, ppStmt);
        degas::Statement::bindBitmap(buf, 4, v24);
        v6 = degas::Statement::update(buf);
        if (v6)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v18 = sqlite3_errmsg(v11[28]);
            *v34 = 136315138;
            *&v34[4] = v18;
            _os_log_error_impl(&dword_255870000, v13, OS_LOG_TYPE_ERROR, "node update failed: %s", v34, 0xCu);
          }

          v17 = 0;
          v1 = v6;
        }

        else
        {
          v17 = 1;
        }
      }

      *v34 = v25;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v34);
    }

    v24[0] = v31;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](v24);
    ppStmt[0] = v33;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](ppStmt);
    if ((v17 & 1) == 0)
    {
      v15 = 1;
      break;
    }
  }

  degas::Statement::~Statement(buf);
  degas::Cursor::~Cursor(v29);
  if (!v15)
  {
    v19 = *this;
    degas::EdgeCursor::EdgeCursor(v24);
    degas::EdgeCursor::setForSelectAll(v24, (v19 + 31));
    v20 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "update Edge set labels=?2 where identifier=?1");
    degas::Statement::Statement(ppStmt, v20, __p);
    if (v33[7] < 0)
    {
      operator delete(__p[0]);
    }

    while (degas::Statement::next(v24[0]) == 1)
    {
      v21 = sqlite3_column_int64(*v24[0], 0);
      v29[0] = sqlite3_column_blob(*v24[0], 1);
      *__p = 0u;
      memset(v33, 0, 25);
      if (v29[0] && (degas::Bitmap::replaceFromEncodedBuffer(__p, v29) & 1) == 0)
      {
        v6 = 4;
LABEL_51:
        *buf = v33;
        std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
        break;
      }

      degas::Statement::prepareForUse(ppStmt);
      degas::Statement::bindInteger(ppStmt, 1, v21);
      degas::Statement::bindBitmap(ppStmt, 2, __p);
      v6 = degas::Statement::update(ppStmt);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v22 = sqlite3_errmsg(v19[35]);
          *buf = 136315138;
          *&buf[4] = v22;
          _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "edge update failed: %s", buf, 0xCu);
        }

        goto LABEL_51;
      }

      *buf = v33;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    degas::Statement::~Statement(ppStmt);
    degas::Cursor::~Cursor(v24);
    return v6;
  }

  return v1;
}

void sub_255928030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  *(v35 - 128) = v34;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v35 - 128));
  degas::Statement::~Statement(&a23);
  degas::Cursor::~Cursor(&a11);
  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateWeights(sqlite3 ***this)
{
  v12 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v9, kgDefaultWeightPropertyName);
  v2 = *this;
  degas::AttributeCursor::AttributeCursor(v8, v9, (*this + 38));
  v3 = 0;
  while (degas::Statement::next(v8[0]) == 1)
  {
    v3 = sqlite3_column_int64(*v8[0], 0);
  }

  if (v3)
  {
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(buf, "select identifier, weight from Node");
    degas::Database::cursorForAdhocStatement();
  }

  v4 = *this;
  if ((*this)[4])
  {
    v5 = 8;
  }

  else
  {
    *buf = 0;
    v5 = degas::AttributeTable::insert(v4 + 38, buf, v9);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = sqlite3_errmsg(v2[42]);
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "weight migration failed: %s", buf, 0xCu);
  }

  degas::Cursor::~Cursor(v8);
  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v5;
}

void sub_2559285CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, degas::Statement *a10, uint64_t a11, degas::Statement *a12, uint64_t a13, degas::Statement *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  degas::Statement::~Statement(&a29);
  degas::Statement::~Statement((v34 - 80));
  degas::Cursor::~Cursor(&a10);
  degas::Cursor::~Cursor(&a12);
  degas::Cursor::~Cursor(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::Migration::migrateEdgeIndex(degas::Migration *this)
{
  v2 = *(this + 1);
  std::string::basic_string[abi:ne200100]<0>(__p, "create index edge_source_idx on edge (sourceNodeId)");
  degas::Statement::Statement(ppStmt, v2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = degas::Statement::update(ppStmt);
  if (!v3)
  {
    v4 = *(this + 1);
    std::string::basic_string[abi:ne200100]<0>(v6, "create index edge_target_idx on edge (targetNodeId)");
    degas::Statement::Statement(__p, v4, v6);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    v3 = degas::Statement::update(__p);
    degas::Statement::~Statement(__p);
  }

  degas::Statement::~Statement(ppStmt);
  return v3;
}

void sub_2559287A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  degas::Statement::~Statement(&a16);
  degas::Statement::~Statement((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2559287E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2559287D8);
}

uint64_t degas::Migration::migratePruneSchema(sqlite3 **this)
{
  if (sqlite3_table_column_metadata(this[1], 0, "Attribute", "dataType", 0, 0, 0, 0, 0))
  {
    goto LABEL_34;
  }

  v3 = this[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "alter table Attribute drop column dataType");
  degas::Statement::Statement(ppStmt, v3, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  if (!v2)
  {
LABEL_34:
    if (sqlite3_table_column_metadata(this[1], 0, "Attribute", "flags", 0, 0, 0, 0, 0))
    {
      goto LABEL_35;
    }

    v4 = this[1];
    std::string::basic_string[abi:ne200100]<0>(__p, "alter table Attribute drop column flags");
    degas::Statement::Statement(ppStmt, v4, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = degas::Statement::update(ppStmt);
    degas::Statement::~Statement(ppStmt);
    if (!v2)
    {
LABEL_35:
      if (sqlite3_table_column_metadata(this[1], 0, "Node", "attrIds", 0, 0, 0, 0, 0))
      {
        goto LABEL_36;
      }

      v5 = this[1];
      std::string::basic_string[abi:ne200100]<0>(__p, "alter table Node drop column attrIds");
      degas::Statement::Statement(ppStmt, v5, __p);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = degas::Statement::update(ppStmt);
      degas::Statement::~Statement(ppStmt);
      if (!v2)
      {
LABEL_36:
        if (sqlite3_table_column_metadata(this[1], 0, "Edge", "attrIds", 0, 0, 0, 0, 0))
        {
          goto LABEL_37;
        }

        v6 = this[1];
        std::string::basic_string[abi:ne200100]<0>(__p, "alter table Edge drop column attrIds");
        degas::Statement::Statement(ppStmt, v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v2 = degas::Statement::update(ppStmt);
        degas::Statement::~Statement(ppStmt);
        if (!v2)
        {
LABEL_37:
          if (sqlite3_table_column_metadata(this[1], 0, "TombstoneNode", "attrIds", 0, 0, 0, 0, 0))
          {
            goto LABEL_38;
          }

          v7 = this[1];
          std::string::basic_string[abi:ne200100]<0>(__p, "alter table TombstoneNode drop column attrIds");
          degas::Statement::Statement(ppStmt, v7, __p);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }

          v2 = degas::Statement::update(ppStmt);
          degas::Statement::~Statement(ppStmt);
          if (!v2)
          {
LABEL_38:
            if (sqlite3_table_column_metadata(this[1], 0, "TombstoneEdge", "attrIds", 0, 0, 0, 0, 0))
            {
              return 0;
            }

            else
            {
              v8 = this[1];
              std::string::basic_string[abi:ne200100]<0>(__p, "alter table TombstoneEdge drop column attrIds");
              degas::Statement::Statement(ppStmt, v8, __p);
              if (v11 < 0)
              {
                operator delete(__p[0]);
              }

              v2 = degas::Statement::update(ppStmt);
              degas::Statement::~Statement(ppStmt);
            }
          }
        }
      }
    }
  }

  return v2;
}

uint64_t degas::Migration::migrate(sqlite3 ***this, int a2, int a3)
{
  if (!a2 || (a3 > 1 ? (v5 = a2 < 2) : (v5 = 0), a2 < 4 ? (v6 = a3 <= 3) : (v6 = 1), v6 ? (v7 = 0) : (v7 = 1), a2 < 6 ? (v8 = a3 <= 5) : (v8 = 1), v8 ? (v9 = 0) : (v9 = 1), a2 < 8 ? (v10 = a3 <= 7) : (v10 = 1), v10 ? (v11 = 0) : (v11 = 1), (a2 > 2 || a3 < 3 || (result = degas::Migration::migrateBitmapSchema(this), !result)) && (!v11 || (result = degas::Migration::migratePruneSchema(this), !result)) && (!v5 || (result = degas::Migration::migrateAttributeSchema(this), !result)) && (!v7 || (result = degas::Migration::migrateWeights(this), !result)) && (!v9 || (result = degas::Migration::migrateEdgeIndex(this), !result))))
  {
    if (((*this)[4] & 1) == 0)
    {
      degas::MetadataTable::insertOrUpdate((*this + 17), 3, a3);
    }

    return 0;
  }

  return result;
}

uint64_t degas::BitsetPoolPage::BitsetPoolPage(uint64_t this, os_unfair_lock_s *a2)
{
  *(this + 8352) = 0;
  *(this + 8360) = a2;
  return this;
}

{
  *(this + 8352) = 0;
  *(this + 8360) = a2;
  return this;
}

uint64_t degas::BitsetPoolPage::allocBitsetSlot(degas::BitsetPoolPage *this)
{
  v2 = degas::BitsetPoolPage::provideFreeSlot(this);
  *(this + 1044) |= 1 << v2;
  return this + 144 * v2;
}

uint64_t degas::BitsetPoolPage::provideFreeSlot(degas::BitsetPoolPage *this)
{
  v1 = *(this + 1044);
  if ((~v1 & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    __assert_rtn("provideFreeSlot", "bitsetPool.cpp", 129, "!isFull()");
  }

  result = 0;
  while (((v1 >> result) & 1) != 0)
  {
    if (++result == 58)
    {
      return 0;
    }
  }

  return result;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, uint64_t a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  *(this + 1044) |= 1 << v6;
  v7 = this + 144 * v6;
  *v7 = 0;
  *(v7 + 1) = a3;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, const degas::Bitset *a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  v7 = this + 144 * v6;
  *(this + 1044) |= 1 << v6;
  v8 = *(a3 + 1);
  *v7 = 0;
  *(v7 + 1) = v8;
  *(v7 + 1) = *(a3 + 1);
  v9 = *(a3 + 4);
  v11 = *(a3 + 1);
  v10 = *(a3 + 2);
  *(v7 + 3) = *(a3 + 3);
  *(v7 + 4) = v9;
  *(v7 + 1) = v11;
  *(v7 + 2) = v10;
  v12 = *(a3 + 8);
  v14 = *(a3 + 5);
  v13 = *(a3 + 6);
  *(v7 + 7) = *(a3 + 7);
  *(v7 + 8) = v12;
  *(v7 + 5) = v14;
  *(v7 + 6) = v13;
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::allocBitset(degas::BitsetPoolPage *this, degas::BitsetPtr *a2, const unsigned __int8 **a3)
{
  v6 = degas::BitsetPoolPage::provideFreeSlot(this);
  v7 = (this + 144 * v6);
  *(this + 1044) |= 1 << v6;
  degas::Bitset::Bitset(v7, a3);
  degas::BitsetPtr::releaseBitset(a2);
  *a2 = v7;
  *(a2 + 1) = this;
  ++*v7;
}

void degas::BitsetPoolPage::releaseBitset(os_unfair_lock_t *this, degas::Bitset *a2)
{
  v2 = a2;
  os_unfair_lock_lock(this[1045]);
  this[1044] = (this[1044] & ~(1 << ((v2 - this) / 0x90u)));
  v4 = this[1045];

  os_unfair_lock_unlock(v4);
}

uint64_t degas::BitsetPool::BitsetPool(uint64_t this)
{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = this;
  *(this + 32) = 0;
  return this;
}

{
  *this = this;
  *(this + 8) = this;
  *(this + 16) = 0;
  *(this + 24) = this;
  *(this + 32) = 0;
  return this;
}

uint64_t degas::BitsetPool::getPageWithSlotFree(degas::BitsetPool *this)
{
  v1 = *(this + 3);
  if (v1 == this)
  {
LABEL_5:
    v4 = this;
    do
    {
      v4 = *(v4 + 1);
      *(this + 3) = v4;
      if (v4 == v1)
      {
        operator new();
      }

      v3 = *(v4 + 2);
    }

    while ((~*(v3 + 8352) & 0x3FFFFFFFFFFFFFFLL) == 0);
  }

  else
  {
    v2 = *(this + 3);
    while (1)
    {
      v3 = *(v2 + 2);
      if ((~*(v3 + 8352) & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      v2 = *(v2 + 1);
      *(this + 3) = v2;
      if (v2 == this)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, uint64_t a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, const degas::Bitset *a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::allocBitset(os_unfair_lock_s *this, degas::BitsetPtr *a2, const unsigned __int8 **a3)
{
  os_unfair_lock_lock(this + 8);
  PageWithSlotFree = degas::BitsetPool::getPageWithSlotFree(this);
  degas::BitsetPoolPage::allocBitset(PageWithSlotFree, a2, a3);

  os_unfair_lock_unlock(this + 8);
}

void degas::BitsetPool::purgeEmptyPages(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 8);
  v2 = *&this[2]._os_unfair_lock_opaque;
  while (v2 != this)
  {
    v3 = *&v2[4]._os_unfair_lock_opaque;
    if (*(v3 + 8352))
    {
      v2 = *&v2[2]._os_unfair_lock_opaque;
    }

    else
    {
      v4 = *&this[6]._os_unfair_lock_opaque;
      if (*(v4 + 16) == v3)
      {
        *&this[6]._os_unfair_lock_opaque = *(v4 + 8);
      }

      v5 = *&v2->_os_unfair_lock_opaque;
      v6 = *&v2[2]._os_unfair_lock_opaque;
      *(v5 + 8) = v6;
      *&v6->_os_unfair_lock_opaque = v5;
      --*&this[4]._os_unfair_lock_opaque;
      operator delete(v2);
      MEMORY[0x259C43EB0](v3, 0x1020C4058D1BB3BLL);
      v2 = v6;
    }
  }

  os_unfair_lock_unlock(this + 8);
}

uint64_t degas::getBitsetPool(degas *this)
{
  if (degas::getBitsetPool(void)::onceToken != -1)
  {
    dispatch_once(&degas::getBitsetPool(void)::onceToken, &__block_literal_global_3936);
  }

  return degas::getBitsetPool(void)::sPool;
}

void *degas::BitsetPtr::BitsetPtr(void *this, degas::Bitset *a2, degas::BitsetPoolPage *a3)
{
  *this = a2;
  this[1] = a3;
  ++*a2;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  ++*a2;
  return this;
}

__n128 degas::BitsetPtr::BitsetPtr(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  ++*result.n128_u64[0];
  return result;
}

{
  result = *a2;
  *this = *a2;
  ++*result.n128_u64[0];
  return result;
}

void degas::BitsetPtr::releaseBitset(degas::BitsetPtr *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      if ((*v3)-- == 1)
      {
        degas::BitsetPoolPage::releaseBitset(v2, v3);
      }
    }
  }

  *this = 0;
}

void degas::BitsetPtr::~BitsetPtr(degas::BitsetPtr *this)
{
  degas::BitsetPtr::releaseBitset(this);
  *(this + 1) = 0;
}

{
  degas::BitsetPtr::releaseBitset(this);
  *(this + 1) = 0;
}

degas::BitsetPtr *degas::BitsetPtr::operator=(degas::BitsetPtr *a1, __int128 *a2)
{
  degas::BitsetPtr::releaseBitset(a1);
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    ++*v4;
  }

  return a1;
}

void degas::BitsetPtr::reset(degas::BitsetPtr *this, degas::Bitset *a2, degas::BitsetPoolPage *a3)
{
  degas::BitsetPtr::releaseBitset(this);
  *this = a2;
  if (a3)
  {
    *(this + 1) = a3;
  }

  ++*a2;
}

uint64_t degas::NodeFilter_Labels::resolveNodes(degas::NodeFilter_Labels *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = (v4 + 192);
  v7[1] = v4;
  if (degas::Bitmap::count((this + 16)) != 1)
  {
    return degas::NodeLabelQuery::nodesForAllLabels(v7, (this + 16), a2, 0);
  }

  Bit = degas::Bitmap::firstBit((this + 16));
  return degas::NodeLabelQuery::nodesForLabel(v7, Bit, a2);
}

void degas::NodeFilter_Labels::~NodeFilter_Labels(degas::NodeFilter_Labels *this)
{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9BF8;
  v1 = (this + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::NodeFilter_Attribute::resolveNodes(degas::NodeFilter_Attribute *this, degas::Bitmap *a2)
{
  v4 = *(this + 1);
  v7[0] = v4 + 472;
  v7[1] = degas::Database::nodeCount(v4);
  v5 = *(this + 4);
  switch(v5)
  {
    case 3:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), this + 48, 1, a2);
    case 2:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), 1, a2, *(this + 5));
    case 1:
      return degas::AttributeQuery::elementsForAttributeValue(v7, *(this + 3), *(this + 4), 1, a2);
  }

  return 3;
}

void degas::NodeFilter_Attribute::~NodeFilter_Attribute(void **this)
{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

{
  *this = &unk_2867A9C20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }
}

uint64_t degas::NodeFilter_Or::resolveNodes(degas::NodeFilter_Or *this, degas::Bitmap *a2)
{
  v9 = 0u;
  memset(v10, 0, 25);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
LABEL_4:
    degas::Bitmap::operator=(a2, &v9);
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v7 = 0u;
      memset(v8, 0, 25);
      v5 = (*(**v3 + 16))(*v3, &v7);
      if (v5)
      {
        break;
      }

      degas::Bitmap::unionWith<degas::Bitmap>(&v9, &v7);
      v11 = v8;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v11 = v8;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v11);
  }

  *&v7 = v10;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v5;
}

void sub_255929A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::NodeFilter_Or::~NodeFilter_Or(degas::NodeFilter_Or *this)
{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9C48;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t degas::NodeFilter_And::resolveNodes(degas::NodeFilter_And *this, degas::Bitmap *a2)
{
  v14 = 0u;
  memset(v15, 0, 25);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
LABEL_8:
    degas::Bitmap::operator=(a2, &v14);
    v10 = 0;
  }

  else
  {
    v5 = 1;
    while (1)
    {
      v12 = 0u;
      memset(v13, 0, 25);
      v10 = (*(**v3 + 16))(*v3, &v12);
      if (v10)
      {
        break;
      }

      if (v5)
      {
        degas::Bitmap::operator=(&v14, &v12);
      }

      else
      {
        degas::Bitmap::intersectWith<degas::Bitmap>(&v14, &v12, v6, v7, v8, v9);
      }

      v16 = v13;
      std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
      v5 = 0;
      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_8;
      }
    }

    v16 = v13;
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  *&v12 = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v12);
  return v10;
}

void sub_255929C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a9 = &a17;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void degas::NodeFilter_And::~NodeFilter_And(degas::NodeFilter_And *this)
{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_2867A9C70;
  v1 = (this + 16);
  std::vector<std::shared_ptr<degas::Predicate>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void *degas::NodeFilter::NodeFilter(void *result, uint64_t a2)
{
  *result = &unk_2867A9BD0;
  result[1] = a2;
  return result;
}

degas::NodeFilter_Labels *degas::NodeFilter_Labels::NodeFilter_Labels(degas::NodeFilter_Labels *this, degas::Database *a2, __int128 **a3)
{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 4, a3[2], a3[3], a3[3] - a3[2]);
  *(this + 56) = *(a3 + 40);
  return this;
}

{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = *a3;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 4, a3[2], a3[3], a3[3] - a3[2]);
  *(this + 56) = *(a3 + 40);
  return this;
}

degas::NodeFilter_Labels *degas::NodeFilter_Labels::NodeFilter_Labels(degas::NodeFilter_Labels *this, degas::Database *a2, unint64_t a3)
{
  *this = &unk_2867A9BF8;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 41) = 0u;
  *(this + 1) = 0u;
  degas::Bitmap::setBit((this + 16), a3);
  return this;
}

void sub_255929EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 32);
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 1;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  *result = &unk_2867A9C20;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_2867A9C20;
  *(result + 8) = a2;
  *(result + 16) = 2;
  *(result + 24) = a3;
  *(result + 32) = 0;
  *(result + 40) = a4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t degas::NodeFilter_Attribute::NodeFilter_Attribute(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_2867A9C20;
  *(a1 + 8) = a2;
  *(a1 + 16) = 3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v5;
  }

  return a1;
}

void *degas::NodeFilter_Or::NodeFilter_Or(void *result, uint64_t a2)
{
  *result = &unk_2867A9C48;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867A9C48;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::NodeFilter_Or::NodeFilter_Or(void *a1, uint64_t a2, void **a3)
{
  *a1 = &unk_2867A9C48;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(a1 + 2, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867A9C48;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(a1 + 2, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<degas::Predicate>>>(a4);
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }
}

void *degas::NodeFilter_And::NodeFilter_And(void *result, uint64_t a2)
{
  *result = &unk_2867A9C70;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2867A9C70;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *degas::NodeFilter_And::NodeFilter_And(void *a1, uint64_t a2, void **a3)
{
  *a1 = &unk_2867A9C70;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(a1 + 2, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

{
  *a1 = &unk_2867A9C70;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<degas::NodeFilter>>::__init_with_size[abi:ne200100]<std::shared_ptr<degas::NodeFilter>*,std::shared_ptr<degas::NodeFilter>*>(a1 + 2, *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

uint64_t kgWaitForProtectedAccess(unsigned int a1, const char *a2)
{
  if (kgDeviceCanProceedForProtectionClass(a1, a2) == 1)
  {
    return 1;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v5 = dispatch_queue_create("com.apple.photos.knowledge.unlock", 0);
  v6 = dispatch_semaphore_create(0);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = -1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __kgWaitForProtectedAccess_block_invoke;
  v11[3] = &unk_2797FF1D0;
  v11[4] = v18;
  v11[5] = &v20;
  v11[6] = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __kgWaitForProtectedAccess_block_invoke_2;
  block[3] = &unk_2797FF1F8;
  v10 = a1;
  block[4] = v11;
  block[5] = v12;
  block[6] = &v14;
  block[7] = &v20;
  block[8] = v18;
  block[9] = v5;
  block[10] = a2;
  block[11] = v6;
  dispatch_sync(v5, block);
  if (*(v15 + 6) == 1)
  {
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __kgWaitForProtectedAccess_block_invoke_4;
    v8[3] = &unk_2797FF220;
    v8[4] = v12;
    dispatch_sync(v5, v8);
  }

  dispatch_release(v6);
  dispatch_release(v5);
  v4 = *(v21 + 6);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);
  return v4;
}

uint64_t kgDeviceCanProceedForProtectionClass(unsigned int a1, const char *a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  if (a1 < 2)
  {
    *&v8.st_dev = xmmword_2797FF240;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = 0;
    v3 = 1;
    CFDictionaryCreate(*MEMORY[0x277CBECE8], &v8, values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = MKBGetDeviceLockState();
    if (v5 <= 7 && ((1 << v5) & 0x89) != 0)
    {
      return v3;
    }

    if (a1 == 1)
    {
      memset(&v8, 0, sizeof(v8));
      if (stat(a2, &v8) == -1 && *__error() == 2)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a1 != 2)
  {
    return a1 == 3;
  }

  return MEMORY[0x282186880]();
}

void *__kgWaitForProtectedAccess_block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  if (!*(v1 + 24))
  {
    *(v1 + 24) = 1;
    v3 = result[5];
    v2 = result[6];
    *(*(v3 + 8) + 24) = 1;
    return dispatch_semaphore_signal(v2);
  }

  return result;
}

void __kgWaitForProtectedAccess_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_2797FF250[v2];
  }

  if (notify_register_dispatch(v3, (*(*(a1 + 40) + 8) + 24), *(a1 + 72), *(a1 + 32)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to register for protected device access notification", v6, 2u);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (kgDeviceCanProceedForProtectionClass(*(a1 + 96), *(a1 + 80)) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v4 = *(*(a1 + 64) + 8);
      if (!*(v4 + 24))
      {
        *(v4 + 24) = 1;
        v5 = *(a1 + 88);

        dispatch_semaphore_signal(v5);
      }
    }
  }
}

void sub_25592B04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25592B1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *degas::AttributeQuery::AttributeQuery(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t a4, degas::Bitmap *a5)
{
  v6 = a4;
  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, a3, v6, v9);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a5);
  }

  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  degas::Cursor::~Cursor(v13);
  return v11;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, degas::Bitmap *a4, double a5)
{
  v6 = a3;
  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, v6, v9, a5);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a4);
  }

  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  degas::Cursor::~Cursor(v13);
  return v11;
}

uint64_t degas::AttributeQuery::elementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, degas::Bitmap *a5)
{
  v6 = a4;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v13);
  degas::AggregateValueCursor::setForValue(v13, a2, &__p, v6, v9);
  while (1)
  {
    v10 = degas::Statement::next(v13[0]);
    if (v10 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v13[0], 0, a5);
  }

  degas::Cursor::~Cursor(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 2)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void sub_25592C25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, degas::Statement *a16)
{
  degas::Cursor::~Cursor(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::elementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, void *a3, uint64_t a4, uint64_t a5, degas::Bitmap *a6)
{
  v7 = a5;
  v8 = a4;
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a2, a3, v8, v7, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

{
  v7 = a5;
  v8 = a4;
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a2, a3, v8, v7, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

{
  return degas::implElementsForAttributeValues<char const*>(a2, a3, a4, a5, a6, *a1);
}

uint64_t degas::implElementsForAttributeValues<char const*>(sqlite3_int64 a1, void *a2, uint64_t a3, uint64_t a4, degas::Bitmap *a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForValues(v15, a1, a2, v9, v8, a6);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a5);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, uint64_t *a3, uint64_t a4, uint64_t a5, degas::Bitmap *a6)
{
  v12 = a4;
  std::vector<char const*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v13 = 0;
    do
    {
      v14 = a3;
      if (*(a3 + 23) < 0)
      {
        v14 = *a3;
      }

      *(__p[0] + v13++) = v14;
      a3 += 3;
    }

    while (v12 != v13);
  }

  v15 = degas::implElementsForAttributeValues<char const*>(a2, __p[0], a4, a5, a6, *a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v15;
}

void sub_25592C5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<char const*>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<unsigned long long>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_25592C650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, uint64_t a5, degas::Bitmap *a6)
{
  v7 = a5;
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForRange(v15, a2, a3, a4, v7, v11);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a6);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, degas::Bitmap *a4, double a5, double a6)
{
  v7 = a3;
  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v15);
  degas::AggregateValueCursor::setForRange(v15, a2, v7, v11, a5, a6);
  while (1)
  {
    v12 = degas::Statement::next(v15[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v15[0], 0, a4);
  }

  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  degas::Cursor::~Cursor(v15);
  return v13;
}

uint64_t degas::AttributeQuery::elementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, uint64_t a5, degas::Bitmap *a6)
{
  v7 = a5;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a3, *(a3 + 8));
  }

  else
  {
    v15 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v11 = *a1;
  degas::AggregateValueCursor::AggregateValueCursor(v16);
  degas::AggregateValueCursor::setForRange(v16, a2, &v15, &__p, v7, v11);
  while (1)
  {
    v12 = degas::Statement::next(v16[0]);
    if (v12 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(v16[0], 0, a6);
  }

  degas::Cursor::~Cursor(v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (v12 == 2)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void sub_25592C904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::filterElementsForAggregateCursor(sqlite3_stmt ***this, degas::AggregateValueCursor *a2, degas::Bitmap *a3, const degas::Bitmap *a4)
{
  v14 = 0u;
  memset(v15, 0, 25);
  while (1)
  {
    v7 = degas::Statement::next(*this);
    v12 = v7;
    if (v7 != 1)
    {
      break;
    }

    degas::Statement::bitmapColumnValue(*this, 0, &v14);
  }

  if (v7 == 2)
  {
    if (*(a3 + 2) != *(a3 + 3))
    {
      degas::Bitmap::intersectWith<degas::Bitmap>(&v14, a3, v8, v9, v10, v11);
    }

    degas::Bitmap::operator=(a2, &v14);
    v12 = 0;
  }

  v16 = v15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v16);
  return v12;
}

void sub_25592C9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 40) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, uint64_t a4, Bitmap *a5, degas::AggregateValueCursor *a6)
{
  v8 = a4;
  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v17);
  if (degas::Bitmap::count(a5) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v17, a2, a3, v8, v11);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v17, a2, a3, v8, a5, v11);
    degas::Bitmap::emptyBitmap(v13);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v17, a6, a5, v14);
  degas::Cursor::~Cursor(v17);
  return v15;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, Bitmap *a4, degas::AggregateValueCursor *a5, double a6)
{
  v8 = a3;
  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v17);
  if (degas::Bitmap::count(a4) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v17, a2, v8, v11, a6);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v17, a2, v8, a4, v11, a6);
    degas::Bitmap::emptyBitmap(v13);
    a4 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v17, a5, a4, v14);
  degas::Cursor::~Cursor(v17);
  return v15;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValue(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, Bitmap *a5, degas::AggregateValueCursor *a6)
{
  v8 = a4;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v11 = *a1;
  v12 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v18);
  if (degas::Bitmap::count(a5) / v12 >= 0.1)
  {
    degas::AggregateValueCursor::setForValue(v18, a2, &__p, v8, v11);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValue(v18, a2, &__p, v8, a5, v11);
    degas::Bitmap::emptyBitmap(v13);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v15 = degas::filterElementsForAggregateCursor(v18, a6, a5, v14);
  degas::Cursor::~Cursor(v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_25592CD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, degas::Statement *a16)
{
  degas::Cursor::~Cursor(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValues(uint64_t *a1, sqlite3_int64 a2, void *a3, uint64_t a4, uint64_t a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v9 = a5;
  v10 = a4;
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v19, a2, a3, v10, v9, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v19, a2, a3, v10, v9, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

{
  v9 = a5;
  v10 = a4;
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v19, a2, a3, v10, v9, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v19, a2, a3, v10, v9, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

{
  return degas::implFilterElementsForAttributeValues<char const*>(a2, a3, a4, a5, a6, a7, *a1, a1[1]);
}

uint64_t degas::implFilterElementsForAttributeValues<char const*>(sqlite3_int64 a1, void *a2, uint64_t a3, uint64_t a4, Bitmap *a5, degas::AggregateValueCursor *a6, uint64_t a7, unint64_t a8)
{
  v12 = a4;
  v13 = a3;
  degas::AggregateValueCursor::AggregateValueCursor(v20);
  if (degas::Bitmap::count(a5) / a8 >= 0.1)
  {
    degas::AggregateValueCursor::setForValues(v20, a1, a2, v13, v12, a7);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForValues(v20, a1, a2, v13, v12, a5, a7);
    degas::Bitmap::emptyBitmap(v16);
    a5 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v18 = degas::filterElementsForAggregateCursor(v20, a6, a5, v17);
  degas::Cursor::~Cursor(v20);
  return v18;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValues(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t a4, uint64_t a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v14 = a4;
  std::vector<char const*>::vector[abi:ne200100](__p, a4);
  if (a4)
  {
    v15 = 0;
    do
    {
      v16 = a3;
      if (*(a3 + 23) < 0)
      {
        v16 = *a3;
      }

      *(__p[0] + v15++) = v16;
      a3 += 3;
    }

    while (v14 != v15);
  }

  v17 = degas::implFilterElementsForAttributeValues<char const*>(a2, __p[0], a4, a5, a6, a7, *a1, *(a1 + 8));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v17;
}

void sub_25592D1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, uint64_t a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v9 = a5;
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v19, a2, a3, a4, v9, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v19, a2, a3, a4, v9, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a7, a6, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, Bitmap *a4, degas::AggregateValueCursor *a5, double a6, double a7)
{
  v9 = a3;
  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v19);
  if (degas::Bitmap::count(a4) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v19, a2, v9, v13, a6, a7);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v19, a2, v9, a4, v13, a6, a7);
    degas::Bitmap::emptyBitmap(v15);
    a4 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v19, a5, a4, v16);
  degas::Cursor::~Cursor(v19);
  return v17;
}

uint64_t degas::AttributeQuery::filterElementsForAttributeValueRange(uint64_t *a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, uint64_t a5, Bitmap *a6, degas::AggregateValueCursor *a7)
{
  v9 = a5;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
  }

  else
  {
    v20 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v13 = *a1;
  v14 = a1[1];
  degas::AggregateValueCursor::AggregateValueCursor(v21);
  if (degas::Bitmap::count(a6) / v14 >= 0.1)
  {
    degas::AggregateValueCursor::setForRange(v21, a2, &v20, &__p, v9, v13);
  }

  else
  {
    degas::AggregateValueCursor::setToFilterForRange(v21, a2, &v20, &__p, v9, a6, v13);
    degas::Bitmap::emptyBitmap(v15);
    a6 = &degas::Bitmap::emptyBitmap(void)::bitmap;
  }

  v17 = degas::filterElementsForAggregateCursor(v21, a7, a6, v16);
  degas::Cursor::~Cursor(v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_25592D554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double degas::UncountedPathCollection::UncountedPathCollection(degas::UncountedPathCollection *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

degas::UncountedPathCollection *degas::UncountedPathCollection::UncountedPathCollection(degas::UncountedPathCollection *this, __int128 **a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 3) = *a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 5, a2[2], a2[3], a2[3] - a2[2]);
  *(this + 64) = *(a2 + 40);
  return this;
}

uint64_t degas::UncountedPathCollection::addPath(degas::UncountedPathCollection *this, unint64_t a2, unint64_t a3)
{
  v5 = *(this + 1);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 8;
  do
  {
    v7 = *(v5 + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * v9];
  }

  while (v5);
  if (v6 == this + 8 || *(v6 + 4) > a3)
  {
LABEL_9:
    operator new();
  }

  degas::Bitmap::setBit(*(v6 + 5), a2);
  return degas::Bitmap::setBit((this + 24), a3);
}

void sub_25592D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<degas::Bitmap>>>(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::unique_ptr<degas::Bitmap>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x259C43EB0](v2, 0x1020C40C46AEF4ELL);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255972C8ELL))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = (v1 + 16);
    std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&v2);

    JUMPOUT(0x259C43EB0);
  }

  return result;
}

void std::__shared_ptr_pointer<degas::Bitmap *,std::shared_ptr<degas::Bitmap>::__shared_ptr_default_delete<degas::Bitmap,degas::Bitmap>,std::allocator<degas::Bitmap>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C43EB0);
}

uint64_t degas::UncountedPathCollection::addPaths(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 1;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 1 && v6[4] <= a2)
  {
    degas::Bitmap::unionWith<degas::Bitmap>(v6[5], *a3);
  }

  else
  {
LABEL_9:
    v11 = *a3;
    v10 = a3[1];
    v13[0] = a2;
    v13[1] = v11;
    v14 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<degas::Bitmap>>>(a1, a2, v13);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return degas::Bitmap::setBit((a1 + 3), a2);
}

void sub_25592DAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void degas::UncountedPathCollection::clear(degas::UncountedPathCollection *this)
{
  v2 = (this + 8);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<degas::Bitmap>>>>::destroy(*(this + 1));
  *this = v2;
  *v2 = 0u;
  *(this + 24) = 0u;
  v3 = *(this + 5);
  for (i = *(this + 6); i != v3; i -= 16)
  {
    degas::BitsetPtr::releaseBitset((i - 16));
    *(i - 8) = 0;
  }

  *(this + 6) = v3;
}

uint64_t *degas::UncountedPathCollection::addToCollectionWithFilter(degas::UncountedPathCollection *this, degas::UncountedPathCollection *a2, const degas::Bitmap *a3)
{
  result = degas::Bitmap::count(a3);
  if (result < *(this + 2))
  {
    result = degas::Bitmap::begin(&v21, a3);
    v7 = (this + 8);
    while (1)
    {
      v8 = v22;
      v9 = v21 == a3 && v22 == -1;
      if (v9)
      {
        if (v23 == *(a3 + 3))
        {
          return result;
        }

        v8 = -1;
      }

      v10 = *v7;
      if (*v7)
      {
        v11 = v7;
        do
        {
          v12 = v10[4];
          v13 = v12 >= v8;
          v14 = v12 < v8;
          if (v13)
          {
            v11 = v10;
          }

          v10 = v10[v14];
        }

        while (v10);
        if (v11 != v7 && v8 >= v11[4])
        {
          degas::UncountedPathCollection::addPaths(a2, v8, v11 + 5);
        }
      }

      result = degas::Bitmap::iterator::operator++(&v21);
    }
  }

  v17 = *this;
  v15 = this + 8;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = *(v16 + 4);
      result = degas::Bitmap::isSet(a3, v18);
      if (result)
      {
        result = degas::UncountedPathCollection::addPaths(a2, v18, v16 + 5);
      }

      v19 = *(v16 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v16 + 2);
          v9 = *v20 == v16;
          v16 = v20;
        }

        while (!v9);
      }

      v16 = v20;
    }

    while (v20 != v15);
  }

  return result;
}

char **degas::UncountedPathCollection::sourceNodesForTargetNodeId(char **this, unint64_t a2)
{
  {
    v14 = a2;
    v15 = this;
    a2 = v14;
    this = v15;
    if (v13)
    {
      __cxa_atexit(std::shared_ptr<degas::Bitmap>::~shared_ptr[abi:ne200100], &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap, &dword_255870000);
      a2 = v14;
      this = v15;
    }
  }

  v4 = this[1];
  v2 = this + 1;
  v3 = v4;
  if (!v4)
  {
    return &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  v9 = &degas::UncountedPathCollection::sourceNodesForTargetNodeId(unsigned long long)const::emptyBitmap;
  if (v5 != v2)
  {
    v10 = v5[4];
    v11 = v5 + 5;
    if (v10 <= a2)
    {
      return v11;
    }
  }

  return v9;
}

uint64_t std::shared_ptr<degas::Bitmap>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

double degas::CountedPathCollection::CountedPathCollection(degas::CountedPathCollection *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 49) = 0u;
  return result;
}

degas::CountedPathCollection *degas::CountedPathCollection::CountedPathCollection(degas::CountedPathCollection *this, __int128 **a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  *(this + 3) = *a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  std::vector<degas::BitsetPtr>::__init_with_size[abi:ne200100]<degas::BitsetPtr*,degas::BitsetPtr*>(this + 5, a2[2], a2[3], a2[3] - a2[2]);
  *(this + 64) = *(a2 + 40);
  return this;
}

void degas::CountedPathCollection::addPath(degas::CountedPathCollection *this, unint64_t a2, unint64_t a3, int a4)
{
  v6 = *(this + 1);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (this + 8);
  do
  {
    v8 = v6[4];
    v9 = v8 >= a3;
    v10 = v8 < a3;
    if (v9)
    {
      v7 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v7 != (this + 8) && v7[4] <= a3)
  {
    v13 = v7[6];
    v11 = v7 + 6;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v11;
    do
    {
      v15 = v12[4];
      v9 = v15 >= a2;
      v16 = v15 < a2;
      if (v9)
      {
        v14 = v12;
      }

      v12 = v12[v16];
    }

    while (v12);
    if (v14 != v11 && v14[4] <= a2)
    {
      *(v14 + 10) += a4;
    }

    else
    {
LABEL_19:
      v17 = a2;
      LODWORD(v18[0]) = a4;
      std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v11 - 1, a2, &v17);
    }
  }

  else
  {
LABEL_9:
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v17 = a2;
    LODWORD(v18[0]) = a4;
    std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(&v19, a2, &v17);
    v17 = a3;
    std::map<unsigned long long,int>::map[abi:ne200100](v18, &v19);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(this, v17, &v17);
    std::__tree<unsigned long long>::destroy(v18[1]);
    degas::Bitmap::setBit((this + 24), a3);
    std::__tree<unsigned long long>::destroy(v20[0]);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *std::map<unsigned long long,int>::map[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }
      }

      else
      {
        v9 = a1 + 1;
        if (v3)
        {
          v9 = a1 + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = v3[4];
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t degas::CountedPathCollection::addPaths(uint64_t *a1, unint64_t a2, void *a3)
{
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 1;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 1 && v6[4] <= a2)
  {
    v11 = a3 + 1;
    v12 = *a3;
    if (*a3 != a3 + 1)
    {
      v13 = v6 + 6;
      do
      {
        v14 = v12[4];
        v15 = *(v12 + 10);
        v16 = *v13;
        if (!*v13)
        {
          goto LABEL_21;
        }

        v17 = v6 + 6;
        do
        {
          v18 = *(v16 + 32);
          v8 = v18 >= v14;
          v19 = v18 < v14;
          if (v8)
          {
            v17 = v16;
          }

          v16 = *(v16 + 8 * v19);
        }

        while (v16);
        if (v17 != v13 && v14 >= v17[4])
        {
          *(v17 + 10) += v15;
        }

        else
        {
LABEL_21:
          v23 = v12[4];
          LODWORD(v24[0]) = v15;
          std::__tree<std::__value_type<unsigned long long,int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v6 + 5, v14, &v23);
        }

        v20 = v12[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v12[2];
            v22 = *v21 == v12;
            v12 = v21;
          }

          while (!v22);
        }

        v12 = v21;
      }

      while (v21 != v11);
    }
  }

  else
  {
LABEL_9:
    v23 = a2;
    std::map<unsigned long long,int>::map[abi:ne200100](v24, a3);
    std::__tree<std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::map<unsigned long long,int>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::map<unsigned long long,int>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::map<unsigned long long,int>>>(a1, v23, &v23);
    std::__tree<unsigned long long>::destroy(v24[1]);
  }

  return degas::Bitmap::setBit((a1 + 3), a2);
}

uint64_t *degas::CountedPathCollection::addToCollectionWithFilter(degas::CountedPathCollection *this, degas::CountedPathCollection *a2, const degas::Bitmap *a3)
{
  result = degas::Bitmap::count(a3);
  if (result < *(this + 2))
  {
    result = degas::Bitmap::begin(&v21, a3);
    v7 = (this + 8);
    while (1)
    {
      v8 = v22;
      v9 = v21 == a3 && v22 == -1;
      if (v9)
      {
        if (v23 == *(a3 + 3))
        {
          return result;
        }

        v8 = -1;
      }

      v10 = *v7;
      if (*v7)
      {
        v11 = v7;
        do
        {
          v12 = v10[4];
          v13 = v12 >= v8;
          v14 = v12 < v8;
          if (v13)
          {
            v11 = v10;
          }

          v10 = v10[v14];
        }

        while (v10);
        if (v11 != v7 && v8 >= v11[4])
        {
          degas::CountedPathCollection::addPaths(a2, v8, v11 + 5);
        }
      }

      result = degas::Bitmap::iterator::operator++(&v21);
    }
  }

  v17 = *this;
  v15 = this + 8;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = *(v16 + 4);
      result = degas::Bitmap::isSet(a3, v18);
      if (result)
      {
        result = degas::CountedPathCollection::addPaths(a2, v18, v16 + 5);
      }

      v19 = *(v16 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v16 + 2);
          v9 = *v20 == v16;
          v16 = v20;
        }

        while (!v9);
      }

      v16 = v20;
    }

    while (v20 != v15);
  }

  return result;
}

uint64_t *degas::CountedPathCollection::sourcePathsForTargetNodeId(char **this, unint64_t a2)
{
  {
    v14 = a2;
    v15 = this;
    a2 = v14;
    this = v15;
    if (v13)
    {
      qword_27F7D9DD8 = 0;
      qword_27F7D9DD0 = 0;
      degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry = &qword_27F7D9DD0;
      __cxa_atexit(std::map<unsigned long long,int>::~map[abi:ne200100], &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry, &dword_255870000);
      a2 = v14;
      this = v15;
    }
  }

  v4 = this[1];
  v2 = this + 1;
  v3 = v4;
  if (!v4)
  {
    return &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  v9 = &degas::CountedPathCollection::sourcePathsForTargetNodeId(unsigned long long)const::emptyEntry;
  if (v5 != v2)
  {
    v10 = v5[4];
    v11 = v5 + 5;
    if (v10 <= a2)
    {
      return v11;
    }
  }

  return v9;
}

double degas::Distribution::Distribution(degas::Distribution *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void degas::Distribution::setCountedPathCollection(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void degas::Distribution::setUncountedPathCollection(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t *degas::Distribution::enumeratePaths(uint64_t *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    v6 = *v3;
    v4 = v3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      do
      {
        for (result = degas::Bitmap::begin(v19, v5[5]); ; result = degas::Bitmap::iterator::operator++(v19))
        {
          v7 = v5[5];
          v8 = v19[0] == v7 && v19[1] == -1;
          if (v8 && v19[2] == *(v7 + 24))
          {
            break;
          }

          (*(a2 + 16))(a2);
        }

        v9 = v5[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v5[2];
            v8 = *v10 == v5;
            v5 = v10;
          }

          while (!v8);
        }

        v5 = v10;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v11 = *result + 8;
    v12 = **result;
    if (v12 != v11)
    {
      do
      {
        v13 = v12[5];
        if (v13 != v12 + 6)
        {
          v14 = v12[4];
          do
          {
            result = (*(a2 + 16))(a2, v13[4], v14, *(v13 + 10));
            v15 = v13[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v13[2];
                v8 = *v16 == v13;
                v13 = v16;
              }

              while (!v8);
            }

            v13 = v16;
          }

          while (v16 != v12 + 6);
        }

        v17 = v12[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v12[2];
            v8 = *v18 == v12;
            v12 = v18;
          }

          while (!v8);
        }

        v12 = v18;
      }

      while (v18 != v11);
    }
  }

  return result;
}

uint64_t kg_errorCodeFromDegasReturnCode(int a1)
{
  if ((a1 - 2) > 9)
  {
    return -1;
  }

  else
  {
    return qword_255972CE0[a1 - 2];
  }
}

void sub_25592F518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4361(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255931A5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v2 = objc_begin_catch(exception_object);
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void degas::Bitmap::symmetricDiffWith<degas::Bitmap>(degas::Bitmap *this, uint64_t a2)
{
  v2 = (*(a2 + 24) - *(a2 + 16)) >> 4;
  if (v2)
  {
    Offset = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 2);
      v8 = (*(this + 3) - v7) >> 4;
      if (v8 <= Offset)
      {
        break;
      }

      v9 = *(*(a2 + 16) + 16 * v6);
      v10 = *(*(v7 + 16 * Offset) + 8);
      v11 = *(v9 + 8);
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          v12 = *this;
          if (*this != 0xFFFFFFFFLL)
          {
            v13 = *(v9 + 4);
            if (v13 == -1)
            {
              v14 = 0;
              v15 = 0uLL;
              do
              {
                do
                {
                  v15 = vpadalq_u16(v15, vpaddlq_u8(vcntq_s8(*(v9 + 16 + 4 * v14))));
                  v14 += 4;
                }

                while (v14 != 32);
                v14 = 0;
                v13 = vaddvq_s32(v15);
                v15 = 0uLL;
              }

              while (v13 == -1);
              *(v9 + 4) = v13;
            }

            *this = v12 + v13;
          }

          degas::Bitmap::insertBitset(this, Offset++, v9);
          ++v6;
          *(this + 40) = 1;
        }

        else
        {
          degas::Bitmap::unshadowedBitSetAtIndex(v21, this, Offset);
          v16 = 0;
          v17 = v21[0];
          v18 = v21[0] + 16;
          do
          {
            *(v18 + v16) ^= *(v9 + 16 + v16);
            v16 += 4;
          }

          while (v16 != 128);
          *(v17 + 4) = -1;
          ++Offset;
          ++v6;
          *this = 0xFFFFFFFFLL;
          *(this + 40) = 1;
          degas::BitsetPtr::releaseBitset(v21);
        }
      }

      else
      {
        Offset = degas::Bitmap::findOffset(this, v11, Offset, v8);
      }
    }

    while (v6 < v2);
    v19 = v2 - v6;
    if (v2 > v6)
    {
      v20 = 16 * v6;
      do
      {
        degas::Bitmap::appendBitset(this, *(*(a2 + 16) + v20));
        *(this + 40) = 1;
        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }
}

void sub_2559337F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4693(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_255933C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 - 24) = &a11;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v11 - 24));
  _Unwind_Resume(a1);
}

void sub_255933D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a10 = &a15;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL degas::Bitmap::isSubsetOf<degas::Bitmap>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (((a4 - a3) & 0xFFFFFFFF0) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(a3 + 16 * v4);
      v6 = *(*a1 + 8);
      v7 = *(v5 + 8);
      if (v6 < v7)
      {
        break;
      }

      if (v6 <= v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = v5 + 16;
        do
        {
          v11 = *(*a1 + 16 + 4 * v9);
          if (v11 && (v11 & ~*(v10 + 4 * v9)) != 0)
          {
            break;
          }

          v8 = v9++ > 0x1E;
        }

        while (v9 != 32);
        if (!v8)
        {
          return 0;
        }

        a1 += 16;
      }

      if (a1 != a2 && ++v4 < ((a4 - a3) >> 4))
      {
        continue;
      }

      return a1 == a2;
    }
  }

  return 0;
}

void sub_2559343CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v13 - 40) = &a12;
  std::vector<degas::BitsetPtr>::__destroy_vector::operator()[abi:ne200100]((v13 - 40));

  _Unwind_Resume(a1);
}

_DWORD *degas::LiteralBitmap::LiteralBitmap(_DWORD *this, int a2)
{
  *this = 7;
  this[1] = a2;
  return this;
}

{
  *this = 7;
  this[1] = a2;
  return this;
}

__n128 degas::LiteralBitmap::makeLiteralBitmap(degas::LiteralBitmap *this, const Bitmap *a2)
{
  v3 = (*(this + 3) - *(this + 2)) >> 4;
  v4 = operator new((144 * v3) | 8);
  *v4 = 7;
  v4[1] = v3;
  v6 = *(this + 2);
  v7 = *(this + 3);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v6 += 2;
      v10 = *(v9 + 4);
      v11 = &v4[36 * v8 + 2];
      *v11 = 0;
      *(v11 + 4) = v10;
      *(v11 + 8) = *(v9 + 8);
      v12 = *(v9 + 96);
      *(v11 + 80) = *(v9 + 80);
      *(v11 + 96) = v12;
      v13 = *(v9 + 128);
      *(v11 + 112) = *(v9 + 112);
      *(v11 + 128) = v13;
      v14 = *(v9 + 32);
      *(v11 + 16) = *(v9 + 16);
      *(v11 + 32) = v14;
      result = *(v9 + 48);
      v15 = *(v9 + 64);
      ++v8;
      *(v11 + 48) = result;
      *(v11 + 64) = v15;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t degas::LiteralBitmap::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v2 = *(a2 + 4);
  if (v2 == *(a1 + 4))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = (a2 + 24);
    for (i = (a1 + 24); *(i - 1) == *(v3 - 1) && !memcmp(i, v3, 0x80uLL); i += 18)
    {
      v3 += 18;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t degas::LiteralBitmap::rangeCompare(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3)
{
  if (*(this + 1) <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 18 * a3 + 2);
  if (v3 + 1024 > a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v3 > a2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

unint64_t degas::LiteralBitmap::findOffset(degas::LiteralBitmap *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 2);
  if (v3 > a2 || v3 + 1024 > a2)
  {
    return 0;
  }

  if (v2 != 1)
  {
    v6 = this + 8;
    v7 = 1;
    v8 = *(this + 1);
    while (1)
    {
      result = (v8 + v7) >> 1;
      if (result >= v2)
      {
        goto LABEL_15;
      }

      v9 = *&v6[144 * result + 8];
      if (v9 <= a2)
      {
        break;
      }

      v8 = (v8 + v7) >> 1;
LABEL_16:
      if (v7 == v8)
      {
        return result;
      }
    }

    if (v9 + 1024 > a2)
    {
      return result;
    }

LABEL_15:
    v7 = result + 1;
    result = v8;
    goto LABEL_16;
  }

  return 1;
}

unint64_t degas::LiteralBitmap::findOffset(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 != a4)
  {
    v5 = *(this + 1);
    v6 = this + 8;
    while (1)
    {
      result = (a3 + a4) >> 1;
      if (result >= v5)
      {
        goto LABEL_8;
      }

      v7 = *&v6[144 * result + 8];
      if (v7 <= a2)
      {
        break;
      }

      a4 = (a3 + a4) >> 1;
LABEL_9:
      if (a3 == a4)
      {
        return result;
      }
    }

    if (v7 + 1024 > a2)
    {
      return result;
    }

LABEL_8:
    a3 = result + 1;
    result = a4;
    goto LABEL_9;
  }

  return a3;
}

uint64_t degas::LiteralBitmap::isSet(degas::LiteralBitmap *this, unint64_t a2)
{
  Offset = degas::LiteralBitmap::findOffset(this, a2);
  if (Offset < *(this + 1) && ((v5 = this + 144 * Offset, v6 = *(v5 + 2), v7 = v6 + 1024, v8 = a2 >= v6, v9 = a2 - v6, v8) ? (v10 = v7 > a2) : (v10 = 0), v10))
  {
    return (*&v5[4 * (v9 >> 5) + 24] >> v9) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t degas::LiteralBitmap::bitAtIndex(degas::LiteralBitmap *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return -1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = (this + 144 * v4 + 8);
    v7 = *(v6 + 1);
    if (v7 == -1)
    {
      v8 = 0;
      v9 = 0uLL;
      do
      {
        do
        {
          v9 = vpadalq_u16(v9, vpaddlq_u8(vcntq_s8(*(v6 + 4 * v8 + 16))));
          v8 += 4;
        }

        while (v8 != 32);
        v8 = 0;
        v7 = vaddvq_s32(v9);
        v9 = 0uLL;
      }

      while (v7 == -1);
      *(v6 + 1) = v7;
    }

    if (v5 + v7 > a2)
    {
      break;
    }

    ++v4;
    v5 += v7;
    if (v4 == v2)
    {
      return -1;
    }
  }

  v10 = -1;
  v12 = -1;
  do
  {
    degas::Bitset::nextBit(v6, &v12, v10);
    v10 = v12;
    ++v5;
  }

  while (v5 <= a2);
  return v10;
}

uint64_t degas::LiteralBitmap::count(degas::LiteralBitmap *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = this + 8;
  do
  {
    v6 = &v5[144 * v3];
    v7 = *(v6 + 1);
    if (v7 == -1)
    {
      v8 = 0;
      v9 = 0uLL;
      do
      {
        do
        {
          v9 = vpadalq_u16(v9, vpaddlq_u8(vcntq_s8(*&v6[4 * v8 + 16])));
          v8 += 4;
        }

        while (v8 != 32);
        v8 = 0;
        v7 = vaddvq_s32(v9);
        v9 = 0uLL;
      }

      while (v7 == -1);
      *(v6 + 1) = v7;
    }

    result += v7;
    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t degas::LiteralBitmap::countBitsInRange(degas::LiteralBitmap *this, unint64_t a2, unint64_t a3)
{
  if (a2 > a3)
  {
    return 0;
  }

  Offset = degas::LiteralBitmap::findOffset(this, a2);
  v8 = *(this + 1);
  if (Offset >= v8)
  {
    return 0;
  }

  v9 = Offset;
  v10 = this + 8;
  v11 = Offset;
  v12 = *(this + 1);
  do
  {
    v13 = (v12 + v11) >> 1;
    if (v13 < v8)
    {
      v14 = *&v10[144 * v13 + 8];
      if (v14 > a3)
      {
        v12 = (v12 + v11) >> 1;
        continue;
      }

      if (v14 + 1024 > a3)
      {
        break;
      }
    }

    v11 = v13 + 1;
    v13 = v12;
  }

  while (v11 != v12);
  v15 = v13 - (v13 >= v8);
  v16 = &v10[144 * Offset];
  v17 = *(v16 + 1);
  if (v17 <= a3 && v17 + 1024 >= a2)
  {
    v19 = degas::Bitset::countBitsInRange(v16, a2, a3, *v7.i8);
  }

  else
  {
    v19 = 0;
  }

  if (v9 != v15)
  {
    v21 = v9 + 1;
    if (v9 + 1 < v15)
    {
      do
      {
        v22 = &v10[144 * v21];
        v23 = *(v22 + 1);
        if (v23 <= a3 && v23 + 1024 >= a2)
        {
          v25 = *(v22 + 1);
          if (v25 == -1)
          {
            v26 = 0;
            v7 = 0uLL;
            do
            {
              do
              {
                v7 = vpadalq_u16(v7, vpaddlq_u8(vcntq_s8(*&v22[4 * v26 + 16])));
                v26 += 4;
              }

              while (v26 != 32);
              v26 = 0;
              v25 = vaddvq_s32(v7);
              v7 = 0uLL;
            }

            while (v25 == -1);
            *(v22 + 1) = v25;
          }

          v19 += v25;
        }

        ++v21;
      }

      while (v21 != v15);
    }

    v27 = &v10[144 * v15];
    v28 = *(v27 + 1);
    if (v28 <= a3 && v28 + 1024 >= a2)
    {
      v19 += degas::Bitset::countBitsInRange(v27, a2, a3, *v7.i8);
    }
  }

  return v19;
}

unint64_t degas::LiteralBitmap::firstBit(degas::LiteralBitmap *this)
{
  v1 = -1;
  v3 = -1;
  if (*(this + 1))
  {
    v1 = *(this + 2);
    if (v1 > 0xFFFFFFFFFFFFFBFFLL || (*(this + 24) & 1) == 0)
    {
      degas::Bitset::nextBit((this + 8), &v3, v1);
      return v3;
    }
  }

  return v1;
}

uint64_t degas::LiteralBitmap::lastBit(degas::LiteralBitmap *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = this + 144 * (v1 - 1);
  v3 = (v2 + 148);
  v4 = 31;
  do
  {
    v6 = *v3--;
    v5 = v6;
    if (v6)
    {
      v4 *= 32;
      return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 2);
    }

    --v4;
  }

  while (v4);
  result = 0;
  v5 = *(v2 + 6);
  if (!v5)
  {
    return result;
  }

  return (v4 | __clz(v5) ^ 0x1F) + *(v2 + 2);
}

uint64_t *degas::LiteralBitmap::emptyBitmap(degas::LiteralBitmap *this)
{
  {
    degas::LiteralBitmap::emptyBitmap(void)::bitmap = 7;
  }

  return &degas::LiteralBitmap::emptyBitmap(void)::bitmap;
}

void degas::AggregateValueTable::~AggregateValueTable(degas::AggregateValueTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::AggregateValueTable::AggregateValueTable(void *a1, uint64_t a2, __int128 *a3, char a4, uint64_t a5)
{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9D58;
  *(result + 48) = a4;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a5);
  *result = &unk_2867A9D58;
  *(result + 48) = a4;
  return result;
}

degas::Statement **degas::AggregateValueTable::readByIdentifierStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4786;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where elementId=?1", 19);
  operator new();
}

void sub_2559358DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByAttrIdIdentifierStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable31readByAttrIdIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4_4790;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable31readByAttrIdIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where elementId=?1 and attributeId=?2", 38);
  operator new();
}

void sub_255935BA4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByBitmapStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_4792;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select mergeLiteralBitmap(v.elementId) from ", 44);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " v, identifierBitmap(?1) b where v.elementId = b.value", 54);
  operator new();
}

void sub_255935E6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_10_4795;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable23readByIntValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and intValue", 34);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?2 order by elementId", 21);
  operator new();
}

void sub_255936194(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_12_4798;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByRealValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and realValue", 35);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?2 order by elementId", 21);
  operator new();
}

void sub_2559364BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValueStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_14_4800;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable26readByStringValueStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where attributeId=?1 and stringValue", 37);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?2 order by elementId", 21);
  operator new();
}

void sub_2559367E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_16_4802;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xC00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByIntValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and intValue", 34);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?2, ?3, 'int64') order by elementId", 46);
  operator new();
}

void sub_255936AEC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_18_4804;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xD00u, v5);
}

void ___ZNK5degas19AggregateValueTable25readByRealValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and realValue", 35);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?2, ?3, 'double') order by elementId", 47);
  operator new();
}

void sub_255936DF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValuesStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_20_4806;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, a2 | (v2 << 16) | 0xE00u, v5);
}

void ___ZNK5degas19AggregateValueTable27readByStringValuesStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where attributeId=?1 and stringValue", 37);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?2, ?3, 'char*') order by elementId", 46);
  operator new();
}

void sub_255937100(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_23;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable34readByIntValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +intValue", 75);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?3", 2);
  operator new();
}

void sub_25593742C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_25;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByRealValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +realValue", 76);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?3", 2);
  operator new();
}

void sub_255937758(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValueIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_27;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable37readByStringValueIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +stringValue", 78);
  v7 = *(a1 + 40);
  if (v7 > 8)
  {
    v8 = " == ";
  }

  else
  {
    v8 = *(&off_2797FE388 + v7);
  }

  v9 = strlen(v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v8, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "?3", 2);
  operator new();
}

void sub_255937A84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByIntValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_29;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xC00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByIntValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +intValue", 75);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?3, ?4, 'int64') order by elementId", 46);
  operator new();
}

void sub_255937D90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable36readByRealValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_31_4813;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xD00u, v5);
}

void ___ZNK5degas19AggregateValueTable36readByRealValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +realValue", 76);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?3, ?4, 'double') order by elementId", 47);
  operator new();
}

void sub_2559380A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringValuesIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable38readByStringValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_33;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 16) | (v2 << 16) | 0xE00u, v5);
}

void ___ZNK5degas19AggregateValueTable38readByStringValuesIdentifiersStatementENS_14BinaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " where elementId in identifierBitmap(?1) and attributeId = ?2 and +stringValue", 78);
  v7 = degas::AttributeValueTable::listOperatorText(*(a1 + 40));
  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "valueArray(?3, ?4, 'char*') order by elementId", 46);
  operator new();
}

void sub_2559383AC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_37_4816;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable23readByIntRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("intValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " order by elementId", 19);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2559386E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_39_4820;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable24readByRealRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("realValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " order by elementId", 19);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255938A38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringRangeStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_41_4822;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 32) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable26readByStringRangeStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("stringValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " order by elementId", 19);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255938D8C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByIntRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable34readByIntRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_44_4824;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0x900u, v5);
}

void ___ZNK5degas19AggregateValueTable34readByIntRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+intValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_2559390E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByRealRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable35readByRealRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_46_4827;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0xA00u, v5);
}

void ___ZNK5degas19AggregateValueTable35readByRealRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+realValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255939434(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readByStringRangeIdentifiersStatement(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5degas19AggregateValueTable37readByStringRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke;
  v5[3] = &__block_descriptor_tmp_48_4829;
  v5[4] = a1;
  v6 = a2;
  return degas::StatementCache::getStatement(v3, (a2 + 64) | (v2 << 16) | 0xB00u, v5);
}

void ___ZNK5degas19AggregateValueTable37readByStringRangeIdentifiersStatementENS_15TernaryOperatorE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "select mergeLiteralBitmap(elementId) from ", 42);
  v4 = *(v3 + 31);
  if (v4 >= 0)
  {
    v5 = v3 + 8;
  }

  else
  {
    v5 = *(v3 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 31);
  }

  else
  {
    v6 = *(v3 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " where attributeId=?1 and ", 26);
  degas::AttributeValueTable::rangeOperatorText("+stringValue", *(a1 + 40));
  if ((v10 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v8 = v10;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " and elementId in identifierBitmap(?4) order by elementId", 57);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_255939788(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::AggregateValueTable::readAllStatement(degas::AggregateValueTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas19AggregateValueTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_49_4831;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas19AggregateValueTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select mergeLiteralBitmap(elementId) from ", 42);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " order by elementId", 19);
  operator new();
}

void sub_255939A6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByIdentifier(degas::AggregateValueTable *this, sqlite3_int64 a2)
{
  v3 = degas::AggregateValueTable::readByIdentifierStatement(this);
  degas::Statement::bindInteger(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(degas::AggregateValueTable *this, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v5 = degas::AggregateValueTable::readByAttrIdIdentifierStatement(this);
  degas::Statement::bindInteger(*v5, 1, a3);
  degas::Statement::bindInteger(*v5, 2, a2);
  return v5;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByBitmap(degas::AggregateValueTable *this, Bitmap *a2)
{
  v3 = degas::AggregateValueTable::readByBitmapStatement(this);
  degas::Statement::bindBitmapPointer(*v3, 1, a2);
  return v3;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4)
{
  v6 = degas::AggregateValueTable::readByIntValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindInteger(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, int a3, double a4)
{
  v6 = degas::AggregateValueTable::readByRealValueStatement(a1, a3);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindDouble(*v6, 2, a4);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValue(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4)
{
  v6 = degas::AggregateValueTable::readByStringValueStatement(a1, a4);
  degas::Statement::bindInteger(*v6, 1, a2);
  degas::Statement::bindString(*v6, 2, a3);
  return v6;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValues(uint64_t a1, sqlite3_int64 a2, void *a3, int a4, int a5)
{
  v8 = degas::AggregateValueTable::readByIntValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AggregateValueTable::readByRealValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

{
  v8 = degas::AggregateValueTable::readByStringValuesStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindArrayPointer(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5)
{
  v8 = degas::AggregateValueTable::readByIntValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindInteger(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, int a3, Bitmap *a4, double a5)
{
  v8 = degas::AggregateValueTable::readByRealValueIdentifiersStatement(a1, a3);
  degas::Statement::bindBitmapPointer(*v8, 1, a4);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5)
{
  v8 = degas::AggregateValueTable::readByStringValueIdentifiersStatement(a1, a4);
  degas::Statement::bindBitmapPointer(*v8, 1, a5);
  degas::Statement::bindInteger(*v8, 2, a2);
  degas::Statement::bindString(*v8, 3, a3);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(uint64_t a1, sqlite3_int64 a2, void *a3, int a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByIntValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

{
  v10 = degas::AggregateValueTable::readByRealValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

{
  v10 = degas::AggregateValueTable::readByStringValuesIdentifiersStatement(a1, a5);
  degas::Statement::bindBitmapPointer(*v10, 1, a6);
  degas::Statement::bindInteger(*v10, 2, a2);
  degas::Statement::bindArrayPointer(*v10, 3, a3);
  degas::Statement::bindInteger(*v10, 4, a4);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5)
{
  v8 = degas::AggregateValueTable::readByIntRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindInteger(*v8, 2, a3);
  degas::Statement::bindInteger(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, int a3, double a4, double a5)
{
  v8 = degas::AggregateValueTable::readByRealRangeStatement(a1, a3);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindDouble(*v8, 2, a4);
  degas::Statement::bindDouble(*v8, 3, a5);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRange(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = degas::AggregateValueTable::readByStringRangeStatement(a1, a5);
  degas::Statement::bindInteger(*v8, 1, a2);
  degas::Statement::bindString(*v8, 2, a3);
  degas::Statement::bindString(*v8, 3, a4);
  return v8;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByIntRangeIdentifiersStatement(a1, a5);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindInteger(*v10, 2, a3);
  degas::Statement::bindInteger(*v10, 3, a4);
  degas::Statement::bindBitmapPointer(*v10, 4, a6);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, int a3, Bitmap *a4, double a5, double a6)
{
  v10 = degas::AggregateValueTable::readByRealRangeIdentifiersStatement(a1, a3);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindDouble(*v10, 2, a5);
  degas::Statement::bindDouble(*v10, 3, a6);
  degas::Statement::bindBitmapPointer(*v10, 4, a4);
  return v10;
}

sqlite3_stmt ***degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(uint64_t a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, Bitmap *a6)
{
  v10 = degas::AggregateValueTable::readByStringRangeIdentifiersStatement(a1, a5);
  degas::Statement::bindInteger(*v10, 1, a2);
  degas::Statement::bindString(*v10, 2, a3);
  degas::Statement::bindString(*v10, 3, a4);
  degas::Statement::bindBitmapPointer(*v10, 4, a6);
  return v10;
}

void *degas::AggregateValueCursor::AggregateValueCursor(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, const degas::AggregateValueTable *a2)
{
  AllStatement = degas::AggregateValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  AllStatement = degas::AggregateValueTable::readAllStatement(a2);
  v4 = AllStatement[1];
  *this = *AllStatement;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, sqlite3_int64 a2, const degas::AggregateValueTable *a3)
{
  v5 = degas::AggregateValueTable::readByIdentifierStatement(a3);
  degas::Statement::bindInteger(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, sqlite3_int64 a2, sqlite3_int64 a3, const degas::AggregateValueTable *a4)
{
  v5 = degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  v5 = degas::AggregateValueTable::prepareStatementToReadByAttrIdIdentifier(a4, a2, a3);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

degas::AggregateValueCursor *degas::AggregateValueCursor::AggregateValueCursor(degas::AggregateValueCursor *this, Bitmap *a2, const degas::AggregateValueTable *a3)
{
  v5 = degas::AggregateValueTable::readByBitmapStatement(a3);
  degas::Statement::bindBitmapPointer(*v5, 1, a2);
  v6 = v5[1];
  *this = *v5;
  *(this + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, uint64_t a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a4, a2, a3, a5);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, uint64_t a5)
{
  v6 = degas::AggregateValueTable::prepareStatementToReadByValue(a5, a2, a3, a4);
  v8 = *v6;
  v7 = v6[1];
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v9 = a1[1];
  *a1 = v8;
  a1[1] = v7;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void degas::AggregateValueCursor::setForValues(sqlite3_stmt ***a1, sqlite3_int64 a2, void *a3, int a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValues(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, Bitmap *a4, uint64_t a5, double a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a5, a2, a3, a4, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValue(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, int a4, Bitmap *a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByValueIdentifiers(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForValues(sqlite3_stmt ***a1, sqlite3_int64 a2, void *a3, int a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

{
  v8 = degas::AggregateValueTable::prepareStatementToReadByValuesIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, uint64_t a4, double a5, double a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a4, a2, a3, a5, a6);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, uint64_t a6)
{
  v7 = degas::AggregateValueTable::prepareStatementToReadByRange(a6, a2, a3, a4, a5);
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  *a1 = v9;
  a1[1] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, int a3, Bitmap *a4, uint64_t a5, double a6, double a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a5, a2, a3, a4, a6, a7);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void degas::AggregateValueCursor::setToFilterForRange(sqlite3_stmt ***a1, sqlite3_int64 a2, uint64_t *a3, uint64_t *a4, int a5, Bitmap *a6, uint64_t a7)
{
  v8 = degas::AggregateValueTable::prepareStatementToReadByRangeIdentifiers(a7, a2, a3, a4, a5, a6);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = a1[1];
  *a1 = v10;
  a1[1] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

uint64_t degas::NodeTable::deleteEntry(sqlite3 **this, sqlite3_int64 a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = degas::NodeTable::deleteStatement(this);
  degas::Statement::bindInteger(*v4, 1, a2);
  v5 = degas::Statement::update(*v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = sqlite3_errmsg(this[4]);
    v8 = 136315138;
    v9 = v7;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "node delete failed: %s", &v8, 0xCu);
  }

  return v5;
}

degas::Statement **degas::NodeTable::deleteStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x500u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15deleteStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_8_4943;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15deleteStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "delete from ", 12);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where identifier=?1", 20);
  operator new();
}

void sub_25593C634(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t degas::NodeTable::createTable(degas::NodeTable *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "create table ", 13);
  v2 = *(this + 31);
  if (v2 >= 0)
  {
    v3 = this + 8;
  }

  else
  {
    v3 = *(this + 1);
  }

  if (v2 >= 0)
  {
    v4 = *(this + 31);
  }

  else
  {
    v4 = *(this + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, " (identifier integer primary key autoincrement, labels blob, edgesIn blob, edgesOut blob)", 89);
  v5 = *(this + 4);
  std::stringbuf::str();
  degas::Statement::Statement(ppStmt, v5, &__p);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  v6 = degas::Statement::update(ppStmt);
  degas::Statement::~Statement(ppStmt);
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  MEMORY[0x259C43E80](&v15);
  return v6;
}

void sub_25593C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  degas::Statement::~Statement(&a16);
  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void degas::NodeTable::~NodeTable(degas::NodeTable *this)
{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x259C43EB0);
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_2867A9A50;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *degas::NodeTable::NodeTable(void *a1, uint64_t a2, __int128 *a3, char a4, char a5, uint64_t a6)
{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9DA0;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

{
  result = degas::Table::Table(a1, a3, a2, a6);
  *result = &unk_2867A9DA0;
  *(result + 49) = a4;
  *(result + 48) = a5;
  return result;
}

degas::Statement **degas::NodeTable::insertStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x300u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15insertStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_4950;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15insertStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "insert into ", 12);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " (identifier, labels, edgesIn, edgesOut) values(?1, ?2, ?3, ?4)", 63);
  operator new();
}

void sub_25593CCE4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::updateStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x400u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable15updateStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_5_4953;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable15updateStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "update ", 7);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " set edgesIn=?2, edgesOut=?3 where identifier=?1", 48);
  operator new();
}

void sub_25593CFAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByIdentifierStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x600u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable25readByIdentifierStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_10_4956;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable25readByIdentifierStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where identifier=?1", 20);
  operator new();
}

void sub_25593D274(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByBitmapStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x800u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable21readByBitmapStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_13;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable21readByBitmapStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " n, identifierBitmap(?) b where n.identifier = b.value", 54);
  operator new();
}

void sub_25593D53C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByLabelStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x801u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable20readByLabelStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_15;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable20readByLabelStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapContainsIdentifier(labels, ?1)", 43);
  operator new();
}

void sub_25593D804(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAllLabelsStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x802u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable24readByAllLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_17_4961;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable24readByAllLabelsStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapContainsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_25593DACC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAllLabelsAndIdentifiersStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x803u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_19_4963;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable38readByAllLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " n, identifierBitmap(?1) b where n.identifier = b.value and bitmapContainsBitmap(n.labels, ?2)", 94);
  operator new();
}

void sub_25593DD94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAnyLabelsStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x804u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable24readByAnyLabelsStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_21;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable24readByAnyLabelsStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " where bitmapOverlapsBitmap(labels, ?1)", 39);
  operator new();
}

void sub_25593E05C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readByAnyLabelsAndIdentifiersStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x805u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_23_4966;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable38readByAnyLabelsAndIdentifiersStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " n, identifierBitmap(?1) b where n.identifier = b.value and bitmapOverlapsBitmap(n.labels, ?2)", 94);
  operator new();
}

void sub_25593E324(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readAllStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x700u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable16readAllStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_25_4968;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable16readAllStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select identifier, labels, edgesIn, edgesOut from ", 50);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " order by identifier", 20);
  operator new();
}

void sub_25593E5EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MEMORY[0x259C43EB0](v15, 0x1020C4062D53EE8, a3, a4, a5, a6, a7, a8);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

degas::Statement **degas::NodeTable::readWhereNoEdgesStatement(degas::NodeTable *this)
{
  v1 = (*(this + 48) << 16) | 0x806u;
  v2 = *(this + 5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5degas9NodeTable25readWhereNoEdgesStatementEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_27_4970;
  v4[4] = this;
  return degas::StatementCache::getStatement(v2, v1, v4);
}

void ___ZNK5degas9NodeTable25readWhereNoEdgesStatementEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "select n.identifier, n.labels, n.edgesIn, n.edgesOut from ", 58);
  v3 = *(v2 + 31);
  if (v3 >= 0)
  {
    v4 = v2 + 8;
  }

  else
  {
    v4 = *(v2 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 31);
  }

  else
  {
    v5 = *(v2 + 16);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, v4, v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, " n where not exists (select * from Edge e where e.sourceNodeId = n.identifier or e.targetNodeId = n.identifier)", 111);
  operator new();
}