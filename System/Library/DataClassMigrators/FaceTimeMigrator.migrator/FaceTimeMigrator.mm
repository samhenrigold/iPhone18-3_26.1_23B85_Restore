void sub_23396DBBC()
{
  v0 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23396C000, v0, OS_LOG_TYPE_DEFAULT, "  Delete succeeded", v1, 2u);
  }
}

void sub_23396DC2C()
{
  v0 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23396C000, v0, OS_LOG_TYPE_DEFAULT, "  Delete succeeded", v1, 2u);
  }
}

void sub_23396DC9C(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_23396C000, v4, OS_LOG_TYPE_DEFAULT, "ProfileID save completed, success %@, account %@", &v7, 0x16u);
  }
}