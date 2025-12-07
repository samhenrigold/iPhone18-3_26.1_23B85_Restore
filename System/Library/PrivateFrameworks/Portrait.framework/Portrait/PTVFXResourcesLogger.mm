@interface PTVFXResourcesLogger
- (PTVFXResourcesLogger)initWithName:(id)name index:(int)index;
- (id)progressHandler;
@end

@implementation PTVFXResourcesLogger

- (PTVFXResourcesLogger)initWithName:(id)name index:(int)index
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = PTVFXResourcesLogger;
  v8 = [(PTVFXResourcesLogger *)&v12 init];
  objc_storeStrong(&v8->_name, name);
  v8->_index = index;
  v8->_verboseLogging = 0;
  v9 = kdebug_trace();
  if (v8->_verboseLogging)
  {
    v10 = _PTLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTVFXResourcesLogger initWithName:nameCopy index:v10];
    }
  }

  return v8;
}

- (id)progressHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PTVFXResourcesLogger_progressHandler__block_invoke;
  v4[3] = &unk_278523360;
  v4[4] = self;
  v2 = MEMORY[0x22AA50020](v4, a2);

  return v2;
}

void __39__PTVFXResourcesLogger_progressHandler__block_invoke(uint64_t a1, void *a2, _BYTE *a3, float a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  v10 = *(a1 + 32);
  v9 = a1 + 32;
  if (*(v10 + 20) == 1)
  {
    v11 = _PTLogSystem(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*v9 + 8);
      v14 = *a3;
      v15 = 138412802;
      v16 = v13;
      v17 = 2048;
      v18 = a4;
      v19 = 1024;
      v20 = v14;
      _os_log_error_impl(&dword_2243FB000, v11, OS_LOG_TYPE_ERROR, "VFX Init %@ progress %f stop %i ", &v15, 0x1Cu);
    }
  }

  if (v8)
  {
    v12 = _PTLogSystem(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __39__PTVFXResourcesLogger_progressHandler__block_invoke_cold_1(v9, v8, v12);
    }
  }

  if (a4 == 1.0 || (*a3 & 1) != 0)
  {
    kdebug_trace();
  }
}

- (void)initWithName:(uint64_t)a1 index:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "VFX Init Start %@", &v2, 0xCu);
}

void __39__PTVFXResourcesLogger_progressHandler__block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(*a1 + 8);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_6(&dword_2243FB000, a2, a3, "VFX Init %@ error %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end