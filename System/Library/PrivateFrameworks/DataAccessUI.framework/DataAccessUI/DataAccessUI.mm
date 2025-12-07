void *validPathsForPaths(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v13 = 0;
        if (([v2 fileExistsAtPath:v9 isDirectory:&v13] & 1) == 0)
        {
          if (!v6)
          {
            v6 = [v3 mutableCopy];
          }

          [v6 removeObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v10;
}

void sub_24859E320(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf, __int128 a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v14))
    {
      buf = 138412546;
      WORD2(a12) = 2112;
      *(&a12 + 6) = v12;
      _os_log_impl(&dword_248599000, v13, v14, "Parsing host string %@ led to exception %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x24859E240);
  }

  _Unwind_Resume(a1);
}

id DAAccountDescriptionFromHostname(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"."];
  if ([v2 count] == 1 || objc_msgSend(v2, "count") != 2)
  {
    v4 = v1;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 capitalizedString];
  }

  return v4;
}