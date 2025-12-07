@interface ENExposureDaySummary
- (ENExposureDaySummary)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
- (void)roundDurations;
@end

@implementation ENExposureDaySummary

- (ENExposureDaySummary)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = ENExposureDaySummary;
  v7 = [(ENExposureDaySummary *)&v21 init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    ENErrorF(2, "super init failed");
LABEL_23:
    *error = v19 = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_18;
    }

    ENErrorF(2, "XPC non-dict");
    goto LABEL_23;
  }

  if (!CUXPCDecodeDouble())
  {
LABEL_18:
    v19 = 0;
    goto LABEL_16;
  }

  v8 = xpc_dictionary_get_dictionary(objectCopy, "siCT");
  if (v8 && (v9 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:error], confirmedTestSummary = v7->_confirmedTestSummary, v7->_confirmedTestSummary = v9, confirmedTestSummary, !v7->_confirmedTestSummary) || (v8, xpc_dictionary_get_dictionary(objectCopy, "siCC"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:error], confirmedClinicalDiagnosisSummary = v7->_confirmedClinicalDiagnosisSummary, v7->_confirmedClinicalDiagnosisSummary = v11, confirmedClinicalDiagnosisSummary, !v7->_confirmedClinicalDiagnosisSummary) || (v8, xpc_dictionary_get_dictionary(objectCopy, "siRC"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:error], recursiveSummary = v7->_recursiveSummary, v7->_recursiveSummary = v13, recursiveSummary, !v7->_recursiveSummary) || (v8, xpc_dictionary_get_dictionary(objectCopy, "siSR"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:error], selfReportedSummary = v7->_selfReportedSummary, v7->_selfReportedSummary = v15, selfReportedSummary, !v7->_selfReportedSummary))
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = xpc_dictionary_get_dictionary(objectCopy, "siDay");
  if (v8)
  {
    v17 = [[ENExposureSummaryItem alloc] initWithXPCObject:v8 error:error];
    if (v17)
    {
      daySummary = v7->_daySummary;
      v7->_daySummary = v17;

      goto LABEL_15;
    }

    goto LABEL_17;
  }

LABEL_15:

  v19 = v7;
LABEL_16:

  return v19;
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  v4 = self->_date;
  v5 = v4;
  if (v4)
  {
    [(NSDate *)v4 timeIntervalSinceReferenceDate];
    if (v6 != 0.0)
    {
      xpc_dictionary_set_double(xdict, "tims", v6);
    }
  }

  confirmedTestSummary = self->_confirmedTestSummary;
  if (confirmedTestSummary)
  {
    v8 = confirmedTestSummary;
    v9 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v8 encodeWithXPCObject:v9];

    xpc_dictionary_set_value(xdict, "siCT", v9);
  }

  confirmedClinicalDiagnosisSummary = self->_confirmedClinicalDiagnosisSummary;
  if (confirmedClinicalDiagnosisSummary)
  {
    v11 = confirmedClinicalDiagnosisSummary;
    v12 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v11 encodeWithXPCObject:v12];

    xpc_dictionary_set_value(xdict, "siCC", v12);
  }

  recursiveSummary = self->_recursiveSummary;
  if (recursiveSummary)
  {
    v14 = recursiveSummary;
    v15 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v14 encodeWithXPCObject:v15];

    xpc_dictionary_set_value(xdict, "siRC", v15);
  }

  selfReportedSummary = self->_selfReportedSummary;
  if (selfReportedSummary)
  {
    v17 = selfReportedSummary;
    v18 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v17 encodeWithXPCObject:v18];

    xpc_dictionary_set_value(xdict, "siSR", v18);
  }

  daySummary = self->_daySummary;
  v20 = xdict;
  if (daySummary)
  {
    v21 = daySummary;
    v22 = xpc_dictionary_create(0, 0, 0);
    [(ENExposureSummaryItem *)v21 encodeWithXPCObject:v22];

    xpc_dictionary_set_value(xdict, "siDay", v22);
    v20 = xdict;
  }
}

- (id)description
{
  v52 = 0;
  NSAppendPrintF_safe(&v52, "ENExposureDaySummary");
  v3 = v52;
  v51 = v3;
  NSAppendPrintF_safe(&v51, ", Date %@", self->_date);
  v4 = v51;

  daySummary = self->_daySummary;
  if (daySummary)
  {
    v50 = v4;
    v6 = daySummary;
    [(ENExposureSummaryItem *)v6 maximumScore];
    v8 = v7;
    [(ENExposureSummaryItem *)v6 scoreSum];
    v10 = v9;
    [(ENExposureSummaryItem *)v6 weightedDurationSum];
    NSAppendPrintF_safe(&v50, ", Day { M %.0f, S %.0f, D %.0f }", v8, v10, v11);
    v12 = v50;

    v4 = v12;
  }

  confirmedTestSummary = self->_confirmedTestSummary;
  if (confirmedTestSummary)
  {
    v49 = v4;
    v14 = confirmedTestSummary;
    [(ENExposureSummaryItem *)v14 maximumScore];
    v16 = v15;
    [(ENExposureSummaryItem *)v14 scoreSum];
    v18 = v17;
    [(ENExposureSummaryItem *)v14 weightedDurationSum];
    NSAppendPrintF_safe(&v49, ", CTest { M %.0f, S %.0f, D %.0f }", v16, v18, v19);
    v20 = v49;

    v4 = v20;
  }

  confirmedClinicalDiagnosisSummary = self->_confirmedClinicalDiagnosisSummary;
  if (confirmedClinicalDiagnosisSummary)
  {
    v48 = v4;
    v22 = confirmedClinicalDiagnosisSummary;
    [(ENExposureSummaryItem *)v22 maximumScore];
    v24 = v23;
    [(ENExposureSummaryItem *)v22 scoreSum];
    v26 = v25;
    [(ENExposureSummaryItem *)v22 weightedDurationSum];
    NSAppendPrintF_safe(&v48, ", CClin { M %.0f, S %.0f, D %.0f }", v24, v26, v27);
    v28 = v48;

    v4 = v28;
  }

  recursiveSummary = self->_recursiveSummary;
  if (recursiveSummary)
  {
    v47 = v4;
    v30 = recursiveSummary;
    [(ENExposureSummaryItem *)v30 maximumScore];
    v32 = v31;
    [(ENExposureSummaryItem *)v30 scoreSum];
    v34 = v33;
    [(ENExposureSummaryItem *)v30 weightedDurationSum];
    NSAppendPrintF_safe(&v47, ", Recurs { M %.0f, S %.0f, D %.0f }", v32, v34, v35);
    v36 = v47;

    v4 = v36;
  }

  selfReportedSummary = self->_selfReportedSummary;
  if (selfReportedSummary)
  {
    v46 = v4;
    v38 = selfReportedSummary;
    [(ENExposureSummaryItem *)v38 maximumScore];
    v40 = v39;
    [(ENExposureSummaryItem *)v38 scoreSum];
    v42 = v41;
    [(ENExposureSummaryItem *)v38 weightedDurationSum];
    NSAppendPrintF_safe(&v46, ", SelfR { M %.0f, S %.0f, D %.0f }", v40, v42, v43);
    v44 = v46;

    v4 = v44;
  }

  return v4;
}

- (void)roundDurations
{
  [(ENExposureSummaryItem *)self->_confirmedTestSummary roundDurations];
  [(ENExposureSummaryItem *)self->_confirmedClinicalDiagnosisSummary roundDurations];
  [(ENExposureSummaryItem *)self->_recursiveSummary roundDurations];
  [(ENExposureSummaryItem *)self->_selfReportedSummary roundDurations];
  daySummary = self->_daySummary;

  [(ENExposureSummaryItem *)daySummary roundDurations];
}

@end