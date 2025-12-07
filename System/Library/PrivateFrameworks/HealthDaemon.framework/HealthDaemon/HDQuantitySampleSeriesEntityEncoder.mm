@interface HDQuantitySampleSeriesEntityEncoder
@end

@implementation HDQuantitySampleSeriesEntityEncoder

uint64_t __78___HDQuantitySampleSeriesEntityEncoder_addSeriesDataForHFDKey_toSample_error___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v7 = *(a1 + 32);
  v8 = objc_alloc_init(HDCodableQuantitySeriesDatum);
  [(HDCodableQuantitySeriesDatum *)v8 setValue:a3];
  if (a4 != -1.0)
  {
    [(HDCodableQuantitySeriesDatum *)v8 setStartDate:a2];
    a2 = a2 + a4;
  }

  [(HDCodableQuantitySeriesDatum *)v8 setEndDate:a2];
  [v7 addQuantitySeriesData:v8];

  return 1;
}

uint64_t __127___HDQuantitySampleSeriesEntityEncoder_generateCodableRepresentationsForHFDKey_sample_maxBytesPerRepresentation_error_handler___block_invoke_2(uint64_t a1, const char *a2, double a3, double a4, double a5)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 24) + 32 > *(a1 + 88))
  {
    [*(*(*(a1 + 56) + 8) + 40) setFinal:0];
    v9 = *(*(a1 + 64) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      v10 = *(*(*(a1 + 48) + 8) + 24);
      v11 = *(a1 + 88);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 sample];
        [v12 valueInCanonicalUnit];
        v16 = v15;
        v17 = [v12 count];
        v18 = [v12 frozen];
        v19 = [v12 final];
        v20 = [v12 quantitySeriesDatas];
        *buf = 138545154;
        v43 = v14;
        v44 = 2048;
        v45 = v16;
        v46 = 2048;
        v47 = v17;
        v48 = 1024;
        v49 = v18;
        v50 = 1024;
        v51 = v19;
        v52 = 2048;
        v53 = [v20 count];
        v54 = 2048;
        v55 = v10 + 32;
        v56 = 2048;
        v57 = v11;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Non-final quantity sample generated %{public}@, value=%f, count=%lld, frozen=%{BOOL}d, final=%{BOOL}d, datumsCount=%lu, estimatedSize=%ld, maxSize=%ld", buf, 0x4Au);
      }

      v21 = MEMORY[0x277CCD830];
      v22 = [v12 sample];
      v23 = [v21 dataTypeWithCode:{objc_msgSend(v22, "dataType")}];

      v24 = [v23 dataObjectClass];
      v25 = [v12 count];
      v26 = [v12 quantitySeriesDatas];
      +[HDAutoBugCaptureReporter reportNotFinalSeriesSampleWithClass:count:datumCount:reason:](HDAutoBugCaptureReporter, "reportNotFinalSeriesSampleWithClass:count:datumCount:reason:", v24, v25, [v26 count], @"generate");
    }

    v27 = (*(*(a1 + 40) + 16))();
    v28 = 0;
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;

    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (v27 == 1)
    {
      goto LABEL_11;
    }

    if (v27 == 2)
    {
      v31 = *(*(a1 + 72) + 8);
      v34 = *(v31 + 40);
      v33 = (v31 + 40);
      v32 = v34;
      if (v28)
      {
        v35 = v28;
        v32 = v28;
      }

      objc_storeStrong(v33, v32);
      *(*(*(a1 + 80) + 8) + 24) = 0;
LABEL_11:

      return 0;
    }
  }

  v37 = *(*(*(a1 + 56) + 8) + 40);
  if (!v37)
  {
    v38 = objc_msgSend_copy(*(a1 + 32));
    v39 = *(*(a1 + 56) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 96);
    v37 = *(*(*(a1 + 56) + 8) + 40);
  }

  v41 = objc_alloc_init(HDCodableQuantitySeriesDatum);
  [(HDCodableQuantitySeriesDatum *)v41 setValue:a4];
  if (a5 != -1.0)
  {
    [(HDCodableQuantitySeriesDatum *)v41 setStartDate:a3];
    a3 = a3 + a5;
  }

  [(HDCodableQuantitySeriesDatum *)v41 setEndDate:a3];
  [v37 addQuantitySeriesData:v41];

  *(*(*(a1 + 48) + 8) + 24) += 32;
  return 1;
}

@end