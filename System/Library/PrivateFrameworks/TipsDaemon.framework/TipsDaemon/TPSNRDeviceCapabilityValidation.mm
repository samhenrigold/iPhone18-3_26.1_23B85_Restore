@interface TPSNRDeviceCapabilityValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSNRDeviceCapabilityValidation

- (void)validateWithCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v34 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    queries = [(TPSDeviceCapabilityValidation *)self queries];
    v8 = [queries count];

    if (v8)
    {
      v32 = completionCopy;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      queries2 = [(TPSDeviceCapabilityValidation *)self queries];
      allKeys = [queries2 allKeys];

      obj = allKeys;
      v11 = [allKeys countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v11)
      {
        v13 = v11;
        v14 = *v36;
        LOBYTE(v15) = 1;
        *&v12 = 138412546;
        v31 = v12;
        do
        {
          v16 = 0;
          do
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v35 + 1) + 8 * v16);
            v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
            if (v18)
            {
              v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v34, "supportsCapability:", v18)}];
              queries3 = [(TPSDeviceCapabilityValidation *)self queries];
              v21 = [queries3 objectForKeyedSubscript:v17];

              targeting = [MEMORY[0x277D71778] targeting];
              if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                *buf = 138413058;
                v40 = v25;
                v41 = 2112;
                v42 = v17;
                v43 = 2112;
                v44 = v19;
                v45 = 2112;
                v46 = v21;
                v26 = v25;
                _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking %@...Answer: %@. Expected: %@", buf, 0x2Au);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqual:v21])
              {
                if (v15)
                {
                  v23 = 1;
                  v15 = 1;
                  if ([(TPSTargetingValidation *)self joinType]== 1)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  v15 = 0;
                }
              }

              else
              {
                v23 = 0;
                v15 = 0;
                if (![(TPSTargetingValidation *)self joinType])
                {
LABEL_31:

LABEL_32:
                  v15 = v23;
                  goto LABEL_33;
                }
              }
            }

            else
            {
              targeting2 = [MEMORY[0x277D71778] targeting];
              if (os_log_type_enabled(targeting2, OS_LOG_TYPE_ERROR))
              {
                v27 = objc_opt_class();
                *buf = v31;
                v40 = v27;
                v41 = 2112;
                v42 = v17;
                v28 = v27;
                _os_log_error_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_ERROR, "%@ - Invalid Key: %@", buf, 0x16u);
              }

              v23 = 0;
              v15 = 0;
              if (![(TPSTargetingValidation *)self joinType])
              {
                goto LABEL_32;
              }
            }

            ++v16;
          }

          while (v13 != v16);
          v29 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
          v13 = v29;
        }

        while (v29);
      }

      else
      {
        v15 = 1;
      }

LABEL_33:

      completionCopy = v32;
      v32[2](v32, v15, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    targeting3 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting3, OS_LOG_TYPE_DEBUG))
    {
      [(TPSNRDeviceCapabilityValidation *)self validateWithCompletion:targeting3];
    }

    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - No active paired device", &v4, 0xCu);
}

@end