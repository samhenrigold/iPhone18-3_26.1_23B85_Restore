@interface DPPreambleRandomizer
@end

@implementation DPPreambleRandomizer

void __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 length];
  if (v6 <= 0x800000)
  {
    v19 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [v5 isValidOneHotVectorReturningIndex:&v20 error:&v19];
    v9 = v19;
    v10 = +[_DPLog framework];
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_2(a1, a3, v11);
      }

      v12 = objc_autoreleasePoolPush();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      v14 = *(a1 + 40);
      v18 = v9;
      v15 = [_DPPreambleShim shard:v13 metaData:v14 dimension:v6 error:&v18];
      v16 = v18;

      if (v15)
      {
        v17 = [*(a1 + 48) recordWithShardResult:v15 metadata:*(a1 + 40) key:*(a1 + 32)];
        if (v17)
        {
          [*(a1 + 56) addObject:v17];
        }
      }

      else
      {
        v17 = +[_DPLog framework];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_3(a1, v16, v17);
        }
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_1(v9, a3, v11);
      }

      v16 = v9;
    }
  }

  else
  {
    v7 = +[_DPLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_4(v6, v7);
    }
  }
}

void __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_3_0(&dword_22622D000, a2, a3, "Skipping Preamble privatization for invalid vector %lu: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_22622D000, log, OS_LOG_TYPE_DEBUG, "Privatizing with Preamble for vector %lu for %@", &v4, 0x16u);
}

void __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_3_0(&dword_22622D000, a2, a3, "Fail to privatize one-hot with Preamble for %@ error=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __61___DPPreambleRandomizer_randomizeBitVectors_metadata_forKey___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 0x800000;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "dimension=(%lu) should be less than or equal to %zu", &v2, 0x16u);
}

@end