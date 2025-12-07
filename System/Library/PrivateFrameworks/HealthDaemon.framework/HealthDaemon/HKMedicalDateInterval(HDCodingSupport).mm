@interface HKMedicalDateInterval(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableMedicalDateInterval)codableRepresentationForSync;
@end

@implementation HKMedicalDateInterval(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  if (([v4 hasEndDate] & 1) != 0 || objc_msgSend(v4, "hasStartDate"))
  {
    v5 = MEMORY[0x277CCD5D8];
    startDate = [v4 startDate];
    v7 = [v5 createWithCodable:startDate];

    v8 = MEMORY[0x277CCD5D8];
    endDate = [v4 endDate];
    v10 = [v8 createWithCodable:endDate];

    if (v10)
    {
      if (v7)
      {
        v19 = 0;
        v11 = [MEMORY[0x277CCD5E0] medicalDateIntervalWithStartDate:v7 endDate:v10 error:&v19];
        v12 = v19;
        if (!v11)
        {
          _HKInitializeLogging();
          v13 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            v16 = v13;
            v17 = objc_opt_class();
            *buf = 138412546;
            v21 = v17;
            v22 = 2112;
            v23 = v12;
            v18 = v17;
            _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%@: Unable to create HKMedicalDateInterval from codable, error: %@", buf, 0x16u);
          }
        }

        goto LABEL_15;
      }

      v14 = [MEMORY[0x277CCD5E0] medicalDateIntervalWithEndDate:v10];
    }

    else
    {
      v14 = [MEMORY[0x277CCD5E0] medicalDateIntervalWithStartDate:v7];
    }

    v11 = v14;
LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

LABEL_17:

  return v11;
}

- (HDCodableMedicalDateInterval)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableMedicalDateInterval);
  startDate = [self startDate];
  codableRepresentationForSync = [startDate codableRepresentationForSync];
  [(HDCodableMedicalDateInterval *)v2 setStartDate:codableRepresentationForSync];

  endDate = [self endDate];
  codableRepresentationForSync2 = [endDate codableRepresentationForSync];
  [(HDCodableMedicalDateInterval *)v2 setEndDate:codableRepresentationForSync2];

  return v2;
}

@end