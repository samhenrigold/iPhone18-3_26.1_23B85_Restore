@interface TPSGestaltValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSGestaltValidation

- (void)validateWithCompletion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  queries = [(TPSDeviceCapabilityValidation *)self queries];
  v6 = [queries count];

  if (v6)
  {
    queries2 = [(TPSDeviceCapabilityValidation *)self queries];
    allKeys = [queries2 allKeys];
    v9 = MGCopyMultipleAnswers();

    if (v9)
    {
      v28 = completionCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      queries3 = [(TPSDeviceCapabilityValidation *)self queries];
      allKeys2 = [queries3 allKeys];

      obj = allKeys2;
      v12 = [allKeys2 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v31;
        LOBYTE(v16) = 1;
        *&v13 = 138413058;
        v27 = v13;
        do
        {
          v17 = 0;
          do
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v30 + 1) + 8 * v17);
            v19 = [v9 objectForKeyedSubscript:{v18, v27}];
            queries4 = [(TPSDeviceCapabilityValidation *)self queries];
            v21 = [queries4 objectForKeyedSubscript:v18];

            targeting = [MEMORY[0x277D71778] targeting];
            if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              *buf = v27;
              v35 = v24;
              v36 = 2112;
              v37 = v18;
              v38 = 2112;
              v39 = v19;
              v40 = 2112;
              v41 = v21;
              v25 = v24;
              _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking %@...Answer: %@. Expected: %@", buf, 0x2Au);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && ([v19 isEqual:v21])
            {
              if (v16)
              {
                v23 = 1;
                v16 = 1;
                if ([(TPSTargetingValidation *)self joinType]== 1)
                {
                  goto LABEL_22;
                }
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v23 = 0;
              v16 = 0;
              if (![(TPSTargetingValidation *)self joinType])
              {
LABEL_22:

                v16 = v23;
                goto LABEL_25;
              }
            }

            ++v17;
          }

          while (v14 != v17);
          v26 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
          v14 = v26;
        }

        while (v26);
      }

      else
      {
        v16 = 1;
      }

LABEL_25:

      completionCopy = v28;
      (*(v28 + 2))(v28, v16, 0);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

@end