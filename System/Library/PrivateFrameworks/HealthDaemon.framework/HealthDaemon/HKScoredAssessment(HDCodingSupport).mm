@interface HKScoredAssessment(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
@end

@implementation HKScoredAssessment(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  sample = [v4 sample];
  dataType = [sample dataType];

  if (_HKValidDataTypeCode())
  {
    v7 = [MEMORY[0x277CCD720] dataTypeWithCode:dataType];
    v8 = [objc_alloc(objc_msgSend(v7 "dataObjectClass"))];
    if ([v8 conformsToProtocol:&unk_283D45200])
    {
      if ([v4 applyToObject:v8])
      {
        v9 = HKDefaultObjectValidationConfigurationIgnoringAllOptions();
        v11 = [v8 _validateWithConfiguration:{v9, v10}];
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8;
        }

        v13 = v12;

        goto LABEL_14;
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v16 = v14;
        v18 = 138412290;
        v19 = objc_opt_class();
        v17 = v19;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Class: %@ must conform to _HKScoredRiskAssessment:", &v18, 0xCu);
      }
    }

    v13 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

LABEL_16:

  return v13;
}

@end