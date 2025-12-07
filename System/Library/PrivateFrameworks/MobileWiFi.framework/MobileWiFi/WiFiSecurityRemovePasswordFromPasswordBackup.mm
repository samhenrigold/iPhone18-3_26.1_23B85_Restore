@interface WiFiSecurityRemovePasswordFromPasswordBackup
@end

@implementation WiFiSecurityRemovePasswordFromPasswordBackup

void ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_3();
    goto LABEL_18;
  }

  if (![v3 length])
  {
    ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_2();
    goto LABEL_18;
  }

  v4 = WiFiSecurityCopySSIDHashForPasswordBackup(*(a1 + 32));
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_1();
LABEL_18:
    v5 = *v12;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *v12 = 136315650;
    *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (%@)", v12, 0x20u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:*MEMORY[0x277CDC238] forKeyedSubscript:*MEMORY[0x277CDC228]];
  [v7 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBF20]];
  [v7 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x277CDC120]];
  v8 = SecItemDelete(v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 136315650;
      *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 1024;
      LODWORD(v16) = v9;
      _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:[%@] error result %d", v12, 0x1Cu);
    }
  }

LABEL_10:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *v12 = 136315394;
    *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_25A116000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:[%@] finished removal", v12, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

void ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v2, "%s: error: empty ssid hash", v3, v4, v5, v6, v7, DWORD2(v7));
  }

  *v0 = v1;
}

void ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: error: empty ssid", v1, v2, v3, v4, v5, DWORD2(v5));
  }

  OUTLINED_FUNCTION_1_2();
}

void ____WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke_cold_3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 136315138;
    *(&v5 + 4) = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    OUTLINED_FUNCTION_0_3(&dword_25A116000, MEMORY[0x277D86220], v0, "%s: null ssid", v1, v2, v3, v4, v5, DWORD2(v5));
  }

  OUTLINED_FUNCTION_1_2();
}

@end