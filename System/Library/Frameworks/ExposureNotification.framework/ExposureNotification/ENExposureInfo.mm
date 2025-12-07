@interface ENExposureInfo
- (ENExposureInfo)init;
- (ENExposureInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENExposureInfo

- (ENExposureInfo)init
{
  v7.receiver = self;
  v7.super_class = ENExposureInfo;
  v2 = [(ENExposureInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    attenuationDurations = v2->_attenuationDurations;
    v2->_attenuationDurations = &unk_284B0F1F8;

    v3->_daysSinceOnsetOfSymptoms = 0x7FFFFFFFFFFFFFFFLL;
    v5 = v3;
  }

  return v3;
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  CUXPCEncodeNSArrayOfNSNumber();
  if (self->_attenuationValue)
  {
    xpc_dictionary_set_uint64(xdict, "attV", self->_attenuationValue);
  }

  daysSinceOnsetOfSymptoms = self->_daysSinceOnsetOfSymptoms;
  if (daysSinceOnsetOfSymptoms != 0x7FFFFFFFFFFFFFFFLL)
  {
    xpc_dictionary_set_int64(xdict, "dSOS", daysSinceOnsetOfSymptoms);
  }

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType)
  {
    xpc_dictionary_set_uint64(xdict, "dRT", diagnosisReportType);
  }

  v6 = self->_date;
  v7 = v6;
  if (v6)
  {
    [(NSDate *)v6 timeIntervalSinceReferenceDate];
    if (v8 != 0.0)
    {
      xpc_dictionary_set_double(xdict, "tims", v8);
    }
  }

  duration = self->_duration;
  if (duration != 0.0)
  {
    xpc_dictionary_set_double(xdict, "dura", duration);
  }

  v10 = xdict;
  if (self->_totalRiskScore)
  {
    xpc_dictionary_set_uint64(xdict, "toRS", self->_totalRiskScore);
    v10 = xdict;
  }

  totalRiskScoreFullRange = self->_totalRiskScoreFullRange;
  if (totalRiskScoreFullRange == 0.0)
  {
    CFDictionaryGetDouble();
    v10 = xdict;
  }

  if (totalRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(xdict, "toRSFR", totalRiskScoreFullRange);
    v10 = xdict;
  }

  xpc_dictionary_set_uint64(v10, "trRL", self->_transmissionRiskLevel);
}

- (id)description
{
  v31 = 0;
  NSAppendPrintF_safe(&v31, "ENExposureInfo");
  v3 = v31;
  v4 = v3;
  attenuationValue = self->_attenuationValue;
  if (self->_attenuationValue)
  {
    v30 = v3;
    NSAppendPrintF_safe(&v30, ", Attn %u", attenuationValue);
    v6 = v30;

    v4 = v6;
  }

  v7 = self->_attenuationDurations;
  if ([(NSArray *)v7 count])
  {
    v29 = v4;
    NSAppendPrintF(&v29, ", %##@", v7);
    v8 = v29;

    v4 = v8;
  }

  date = self->_date;
  if (date)
  {
    v28 = v4;
    v10 = date;
    NSAppendPrintF_safe(&v28, ", Date %@", v10);
    v11 = v28;

    v4 = v11;
  }

  duration = self->_duration;
  if (duration > 0.0)
  {
    v27 = v4;
    NSAppendPrintF_safe(&v27, ", Dur %.3f", duration);
    v13 = v27;

    v4 = v13;
  }

  daysSinceOnsetOfSymptoms = self->_daysSinceOnsetOfSymptoms;
  if (daysSinceOnsetOfSymptoms != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = v4;
    NSAppendPrintF_safe(&v26, ", Days %ld", daysSinceOnsetOfSymptoms);
    v15 = v26;

    v4 = v15;
  }

  diagnosisReportType = self->_diagnosisReportType;
  if (diagnosisReportType)
  {
    v25 = v4;
    if (diagnosisReportType > 5)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_278A4B258[diagnosisReportType - 1];
    }

    NSAppendPrintF_safe(&v25, ", DRT %s", v17);
    v18 = v25;

    v4 = v18;
  }

  v24 = v4;
  NSAppendPrintF_safe(&v24, ", TransmissionRisk %d", self->_transmissionRiskLevel);
  v19 = v24;

  totalRiskScore = self->_totalRiskScore;
  if (self->_totalRiskScore)
  {
    v23 = v19;
    NSAppendPrintF_safe(&v23, ", TotalRisk %u (%.0f FR)", totalRiskScore, self->_totalRiskScoreFullRange);
    v21 = v23;

    v19 = v21;
  }

  return v19;
}

- (ENExposureInfo)initWithXPCObject:(id)object error:(id *)error
{
  v28[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v7 = [(ENExposureInfo *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_33;
    }

    ENErrorF(2, "super init failed");
LABEL_32:
    *error = v23 = 0;
    goto LABEL_27;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_33;
    }

    ENErrorF(2, "XPC non-dict");
    goto LABEL_32;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_33;
  }

  v26 = 0;
  OUTLINED_FUNCTION_1();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_attenuationValue = v26;
  }

  else if (v8 == 5)
  {
    goto LABEL_33;
  }

  v25 = 0.0;
  v9 = OUTLINED_FUNCTION_2(v8, "tims", &v25);
  if (!v9)
  {
    goto LABEL_33;
  }

  if (v25 != 0.0)
  {
    v12 = objc_alloc(MEMORY[0x277CBEAA8]);
    v13 = [v12 initWithTimeIntervalSinceReferenceDate:v25];
    date = v7->_date;
    v7->_date = v13;
  }

  v26 = 0;
  v15 = OUTLINED_FUNCTION_4(v9, "dSOS", v10, v11, &v26);
  if (v15 == 6)
  {
    v7->_daysSinceOnsetOfSymptoms = v26;
  }

  else if (v15 == 5)
  {
    goto LABEL_33;
  }

  v26 = 0;
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v7->_diagnosisReportType = v26;
  }

  else if (v16 == 5)
  {
    goto LABEL_33;
  }

  if (!OUTLINED_FUNCTION_2(v16, "dura", &v7->_duration))
  {
    goto LABEL_33;
  }

  v26 = 0;
  OUTLINED_FUNCTION_1();
  v17 = CUXPCDecodeUInt64RangedEx();
  if (v17 == 6)
  {
    v7->_totalRiskScore = v26;
  }

  else if (v17 == 5)
  {
    goto LABEL_33;
  }

  if (!OUTLINED_FUNCTION_2(v17, "toRSFR", &v7->_totalRiskScoreFullRange))
  {
    goto LABEL_33;
  }

  v26 = 0;
  OUTLINED_FUNCTION_1();
  v18 = CUXPCDecodeUInt64RangedEx();
  if (v18 != 6)
  {
    if (v18 != 5)
    {
      goto LABEL_24;
    }

LABEL_33:
    v23 = 0;
    goto LABEL_27;
  }

  v7->_transmissionRiskLevel = v26;
LABEL_24:
  attenuationDurations = v7->_attenuationDurations;
  if (!attenuationDurations)
  {
    attenuationDurations = MEMORY[0x277CBEBF8];
  }

  v27[1] = @"totalRiskScoreFullRange";
  v28[0] = attenuationDurations;
  v27[0] = @"attenuationDurations";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_totalRiskScoreFullRange];
  v28[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  metadata = v7->_metadata;
  v7->_metadata = v21;

  v23 = v7;
LABEL_27:

  return v23;
}

@end