@interface ENExposureClassification
- (ENExposureClassification)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENExposureClassification

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
  if (self->_index)
  {
    [coderCopy encodeInteger:? forKey:?];
  }

  [coderCopy encodeObject:self->_region forKey:@"reg"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ENExposureClassification_encodeWithCoder___block_invoke;
  v7[3] = &unk_278A4B148;
  v8 = coderCopy;
  v5 = coderCopy;
  v6 = MEMORY[0x2383EE560](v7);
  (v6)[2](v6, self->_confirmedTestPerDaySumERVAboveThreshold, @"ctestS");
  (v6)[2](v6, self->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"cdiagS");
  (v6)[2](v6, self->_selfReportPerDaySumERVAboveThreshold, @"selfS");
  (v6)[2](v6, self->_recursivePerDaySumERVAboveThreshold, @"recurS");
  (v6)[2](v6, self->_perDayMaxERVAboveThreshold, @"pdM");
  (v6)[2](v6, self->_perDaySumERVAboveThreshold, @"pdS");
  (v6)[2](v6, self->_weightedDurationAtAttenuationAboveThreshold, @"wdaa");
}

void __44__ENExposureClassification_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    [a2 doubleValue];
    [v4 encodeDouble:v5 forKey:?];
  }
}

- (id)description
{
  v35 = 0;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSAppendPrintF_safe(&v35, "%@ %@ (%lu)", v4, self->_name, self->_index);
  v5 = v35;

  v34 = v5;
  region = self->_region;
  if (!region)
  {
    region = @"<>";
  }

  NSAppendPrintF_safe(&v34, " %@", region);
  v7 = v34;

  v33 = v7;
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v8 = CUPrintDateCF();
  NSAppendPrintF_safe(&v33, " %@ ", v8);
  v9 = v33;

  v32 = v9;
  __39__ENExposureClassification_description__block_invoke(v10, &v32, self->_confirmedTestPerDaySumERVAboveThreshold, @"CTest");
  v11 = v32;

  v31 = v11;
  __39__ENExposureClassification_description__block_invoke(v12, &v31, self->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"CClin");
  v13 = v31;

  v30 = v13;
  __39__ENExposureClassification_description__block_invoke(v14, &v30, self->_selfReportPerDaySumERVAboveThreshold, @"SelfRep");
  v15 = v30;

  v29 = v15;
  __39__ENExposureClassification_description__block_invoke(v16, &v29, self->_recursivePerDaySumERVAboveThreshold, @"Recurs");
  v17 = v29;

  v28 = v17;
  __39__ENExposureClassification_description__block_invoke(v18, &v28, self->_perDayMaxERVAboveThreshold, @"PDayMax");
  v19 = v28;

  v27 = v19;
  __39__ENExposureClassification_description__block_invoke(v20, &v27, self->_perDaySumERVAboveThreshold, @"PDaySum");
  v21 = v27;

  v26 = v21;
  __39__ENExposureClassification_description__block_invoke(v22, &v26, self->_weightedDurationAtAttenuationAboveThreshold, @"WDuration");
  v23 = v26;
  v24 = v26;

  return v23;
}

void __39__ENExposureClassification_description__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3)
  {
    v7 = a4;
    [a3 doubleValue];
    NSAppendPrintF_safe(a2, ", %@ %.0f", v7, v6);
  }
}

- (ENExposureClassification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ENExposureClassification;
  v5 = [(ENExposureClassification *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v6)
    {
      objc_storeStrong(&v5->_name, v6);
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
      if (v7)
      {
        objc_storeStrong(&v5->_date, v7);
        v15 = 0;
        OUTLINED_FUNCTION_1();
        if (NSDecodeSInt64RangedIfPresent())
        {
          v5->_index = v15;
        }

        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
        if (v8)
        {
          objc_storeStrong(&v5->_region, v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __42__ENExposureClassification_initWithCoder___block_invoke;
          v12[3] = &unk_278A4B120;
          v13 = coderCopy;
          v9 = MEMORY[0x2383EE560](v12);
          (v9)[2](v9, &v5->_confirmedTestPerDaySumERVAboveThreshold, @"ctestS");
          (v9)[2](v9, &v5->_clinicalDiagnosisPerDaySumERVAboveThreshold, @"cdiagS");
          (v9)[2](v9, &v5->_selfReportPerDaySumERVAboveThreshold, @"selfS");
          (v9)[2](v9, &v5->_recursivePerDaySumERVAboveThreshold, @"recurS");
          (v9)[2](v9, &v5->_perDayMaxERVAboveThreshold, @"pdM");
          (v9)[2](v9, &v5->_perDaySumERVAboveThreshold, @"pdS");
          (v9)[2](v9, &v5->_weightedDurationAtAttenuationAboveThreshold, @"wdaa");
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __42__ENExposureClassification_initWithCoder___block_invoke(uint64_t a1, void **a2, void *a3)
{
  v8 = a3;
  if ([*(a1 + 32) containsValueForKey:?])
  {
    v5 = MEMORY[0x277CCABB0];
    [*(a1 + 32) decodeDoubleForKey:v8];
    v6 = [v5 numberWithDouble:?];
    v7 = *a2;
    *a2 = v6;
  }
}

@end