@interface BLSHInactiveProcessMinutesBudget
- (BLSHInactiveProcessMinutesBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider;
- (BOOL)chargeSpecifier:(void *)specifier withChargeBlock:(void *)block fitInBucketBlock:(void *)bucketBlock exceededBudgetBlock:(void *)budgetBlock missedBucketBlock:;
- (BOOL)hasSecondsBudgetAtDate:(id)date;
- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date;
- (NSArray)buckets;
- (NSString)debugDescription;
- (NSString)description;
- (double)delayTimeToAddInvalidation:(char)invalidation hasSecondsBudget:;
- (double)intervalSinceLastInvalidation;
- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity;
- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity;
- (uint64_t)lock_hasSecondsBudgetAtDate:(uint64_t)date;
- (unint64_t)bucketCount;
- (unint64_t)secondsBucketCount;
- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity;
- (void)dealloc;
- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block;
- (void)performInvalidation;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveProcessMinutesBudget

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  [v3 appendArraySection:self->_lock_buckets withName:@"buckets" multilinePrefix:@"    " skipIfEmpty:1 objectTransformer:&__block_literal_global_28];
  if ([(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled])
  {
    [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
    v5 = [v3 appendTimeInterval:@"pendingInvalidation" withName:1 decomposeUnits:?];
  }

  if (self->_lock_lastInvalidationTimestamp)
  {
    v6 = BLSLoggingStringForMachTime();
    [v3 appendString:v6 withName:@"lastInvalidation" skipIfEmpty:0];
  }

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (BLSHInactiveProcessMinutesBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BLSHInactiveProcessMinutesBudget;
  v8 = [(BLSHInactiveProcessMinutesBudget *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_osTimerProvider, provider);
    v9->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    lock_buckets = v9->_lock_buckets;
    v9->_lock_buckets = array;

    v12 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHInactiveProcessMinutesBudget;
  [(BLSHInactiveProcessMinutesBudget *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  [v3 appendArraySection:self->_lock_buckets withName:@"buckets" multilinePrefix:@"    " skipIfEmpty:1];
  if ([(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled])
  {
    [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
    v5 = [v3 appendTimeInterval:@"pendingInvalidation" withName:1 decomposeUnits:?];
  }

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity
{
  dateCopy = date;
  if (fidelity != 1)
  {
    [BLSHInactiveProcessMinutesBudget allowedFidelityAtDate:a2 expectedFidelity:self];
  }

  v8 = dateCopy;
  if ([(BLSHInactiveProcessMinutesBudget *)self hasSecondsBudgetAtDate:dateCopy])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)chargeSpecifier:(void *)specifier withChargeBlock:(void *)block fitInBucketBlock:(void *)bucketBlock exceededBudgetBlock:(void *)budgetBlock missedBucketBlock:
{
  v86 = *MEMORY[0x277D85DE8];
  v11 = a2;
  specifierCopy = specifier;
  blockCopy = block;
  bucketBlockCopy = bucketBlock;
  v38 = v11;
  budgetBlockCopy = budgetBlock;
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__12;
    v67 = __Block_byref_object_dispose__12;
    v68 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0x7FF8000000000000;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v15 = *(self + 24);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __123__BLSHInactiveProcessMinutesBudget_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock___block_invoke;
    v44[3] = &unk_2784208E0;
    v46 = &v59;
    v45 = specifierCopy;
    v47 = &v55;
    v48 = &v51;
    v49 = &v63;
    v50 = &v69;
    [v15 enumerateObjectsWithOptions:2 usingBlock:v44];
    if (*(v56 + 24) == 1)
    {
      bucketBlockCopy[2](bucketBlockCopy, v64[5]);
      v16 = blockCopy;
      v37 = 0;
    }

    else
    {
      v17 = v64[5];
      if (*(v52 + 24) == 1)
      {
        (*(blockCopy + 2))(blockCopy, v17);
        v16 = blockCopy;
        v37 = 1;
      }

      else
      {
        v16 = blockCopy;
        v18 = budgetBlockCopy[2](budgetBlockCopy, v17, v60[3]);
        v37 = v18 != 0;
        if (v18)
        {
          [*(self + 24) insertObject:v18 atIndex:v70[3]];
          if (os_variant_has_internal_diagnostics())
          {
            v19 = bls_budget_log();
            v36 = v18;
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

            if (v20)
            {
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v21 = *(self + 24);
              v22 = 0;
              v23 = [v21 countByEnumeratingWithState:&v40 objects:v85 count:16];
              if (v23)
              {
                v24 = *v41;
                do
                {
                  v25 = 0;
                  v26 = v22;
                  do
                  {
                    if (*v41 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v27 = *(*(&v40 + 1) + 8 * v25);
                    if (v26 && [v26 compare:*(*(&v40 + 1) + 8 * v25)] != -1)
                    {
                      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(internal only) unsorted buckets %@", *(self + 24)];
                      v30 = MEMORY[0x277D86220];
                      v31 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                      {
                        v32 = NSStringFromSelector(sel_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock_);
                        v33 = objc_opt_class();
                        v34 = NSStringFromClass(v33);
                        *buf = 138544642;
                        v74 = v32;
                        v75 = 2114;
                        v76 = v34;
                        v77 = 2048;
                        selfCopy = self;
                        v79 = 2114;
                        v80 = @"BLSHInactiveProcessMinutesBudget.m";
                        v81 = 1024;
                        v82 = 141;
                        v83 = 2114;
                        v84 = v29;
                        _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
                      }

                      v35 = v29;
                      [v29 UTF8String];
                      _bs_set_crash_log_message();
                      [BLSHFlipbook cancelAllFramesWithError:];
                    }

                    v22 = v27;

                    ++v25;
                    v26 = v22;
                  }

                  while (v23 != v25);
                  v23 = [v21 countByEnumeratingWithState:&v40 objects:v85 count:16];
                }

                while (v23);
              }

              v18 = v36;
            }
          }
        }
      }
    }

    os_unfair_lock_unlock((self + 48));

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);

    _Block_object_dispose(&v69, 8);
  }

  else
  {
    v16 = blockCopy;
    v37 = 0;
  }

  return v37;
}

void __123__BLSHInactiveProcessMinutesBudget_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  *(*(a1[5] + 8) + 24) = (*(a1[4] + 16))(a1[4], v7, a3 == 0);
  *(*(a1[6] + 8) + 24) = 0;
  *(*(a1[7] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0.0;
  v8 = *(*(a1[5] + 8) + 24);
  if (v8 > 0.0 && *(*(a1[8] + 8) + 40) && (*(a1[4] + 16))() == 0.0)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  if (*(*(a1[6] + 8) + 24))
  {
    v9 = 1;
  }

  else
  {
    v9 = (v8 > 0.0) | *(*(a1[7] + 8) + 24);
  }

  *a4 = v9 & 1;
  if (v8 <= 0.0)
  {
    if (a3)
    {
      goto LABEL_13;
    }

    v10 = 0;
  }

  else
  {
    v10 = a3 + 1;
  }

  *(*(a1[9] + 8) + 24) = v10;
LABEL_13:
  v11 = *(a1[8] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v7;
}

- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  nextSpecifierCopy = nextSpecifier;
  if (fidelity != 1)
  {
    [BLSHInactiveProcessMinutesBudget validateAndChargeFutureSpecifier:a2 nextSpecifier:self expectedFidelity:?];
  }

  v11 = nextSpecifierCopy;
  fidelity = [specifierCopy fidelity];
  if ((fidelity - 4) <= 0xFFFFFFFFFFFFFFFALL)
  {
    [BLSHInactiveProcessMinutesBudget validateAndChargeFutureSpecifier:fidelity nextSpecifier:a2 expectedFidelity:self];
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__12;
  v54 = __Block_byref_object_dispose__12;
  v13 = specifierCopy;
  v55 = v13;
  [MEMORY[0x277CF0920] secondsFidelityThreshold];
  v15 = v14;
  os_unfair_lock_lock(&self->_lock);
  date = [v13 date];
  v17 = [(BLSHInactiveProcessMinutesBudget *)self lock_hasSecondsBudgetAtDate:date];
  date2 = [v11 date];
  [date2 timeIntervalSinceDate:date];
  v20 = v19;

  if (v20 > v15 + v15)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  v22 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke;
  v47[3] = &unk_278420908;
  v48 = v13;
  v49 = v21;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2;
  v44[3] = &unk_278420930;
  v44[4] = self;
  v45 = v22;
  v46 = v48;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_39;
  v39[3] = &unk_278420958;
  v39[4] = self;
  v40 = v45;
  v41 = v46;
  v43 = v20;
  v42 = v11;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43;
  v29[3] = &unk_278420980;
  v35 = v15;
  v36 = v20;
  v38 = v17;
  v34 = &v50;
  v23 = v41;
  v30 = v23;
  selfCopy = self;
  v24 = v40;
  v32 = v24;
  v25 = v42;
  v33 = v25;
  v37 = a2;
  if (![(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v23 withChargeBlock:v47 fitInBucketBlock:v44 exceededBudgetBlock:v39 missedBucketBlock:v29])
  {
    v26 = v51[5];
    v51[5] = 0;
  }

  v27 = v51[5];

  _Block_object_dispose(&v50, 8);

  return v27;
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = bls_budget_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2_cold_1();
  }
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_39(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = bls_budget_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = a1[7];
    v7 = a1[8];
    v9 = a1[6];
    v10 = [*(v5 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_42];
    v11 = 134219522;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    v17 = 2048;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v3;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_21FD11000, v4, OS_LOG_TYPE_INFO, "%p:%{public}@ budget full will skip specifier:%{public}@ %.3lfs after nextSpecifier:%{public}@ bucket:%{public}@ existing:%{public}@", &v11, 0x48u);
  }
}

BLSHInactiveBudgetBucket *__100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43(uint64_t a1, void *a2, double a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -v6;
  if ((*(a1 + 96) & 1) == 0)
  {
    v9 = v8 > a3 || v6 < a3;
    if (!v9 && v7 <= v6)
    {
      v11 = bls_budget_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = *(a1 + 80);
        v16 = *(a1 + 48);
        v15 = *(a1 + 56);
        v17 = [*(v12 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_62];
        *buf = 134219522;
        v40 = v12;
        v41 = 2114;
        v42 = v16;
        v43 = 2114;
        v44 = v13;
        v45 = 2048;
        v46 = a3;
        v47 = 2048;
        v48 = v14;
        v49 = 2114;
        v50 = v15;
        v51 = 2114;
        v52 = v17;
        _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "%p:%{public}@ will skip - out of budget specifier:%{public}@ %.3lfs after oldBucket %.3lfs before nextSpecifier:%{public}@ existing:%{public}@", buf, 0x48u);
      }

      v18 = 0;
      goto LABEL_26;
    }
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = [*(a1 + 32) newSpecifierWithMaxFidelity:1];
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v18 = [[BLSHInactiveBudgetBucket alloc] initWithFutureSpecifier:*(*(*(a1 + 64) + 8) + 40)];
  if (*(a1 + 96) == 1)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_2(a1, v18, v11);
    }

    goto LABEL_26;
  }

  if (v6 < a3)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(*(*(a1 + 64) + 8) + 40);
      v25 = [*(v22 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_50];
      *buf = 134219266;
      v40 = v22;
      v41 = 2114;
      v42 = v23;
      v43 = 2114;
      v44 = v24;
      v45 = 2048;
      v46 = a3;
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs after oldBucket newBucket:%{public}@ existing:%{public}@";
LABEL_30:
      v32 = v11;
      v33 = 62;
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v7 > v6)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v30 = *(*(*(a1 + 64) + 8) + 40);
      v31 = *(a1 + 80);
      v25 = [*(v27 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_53];
      *buf = 134219522;
      v40 = v27;
      v41 = 2114;
      v42 = v28;
      v43 = 2114;
      v44 = v30;
      v45 = 2048;
      v46 = v31;
      v47 = 2114;
      v48 = v29;
      v49 = 2114;
      v50 = v18;
      v51 = 2114;
      v52 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs before nextSpecifier:%{public}@ newBucket:%{public}@ existing:%{public}@";
      v32 = v11;
      v33 = 72;
LABEL_31:
      _os_log_debug_impl(&dword_21FD11000, v32, OS_LOG_TYPE_DEBUG, v26, buf, v33);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v8 > a3)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);
      v37 = *(*(*(a1 + 64) + 8) + 40);
      v25 = [*(v35 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_56];
      *buf = 134219266;
      v40 = v35;
      v41 = 2114;
      v42 = v36;
      v43 = 2114;
      v44 = v37;
      v45 = 2048;
      v46 = a3;
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs before oldBucket newBucket:%{public}@ existing:%{public}@";
      goto LABEL_30;
    }

LABEL_26:

    return v18;
  }

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"false"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_1(a1, v38);
  }

  [v38 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)resetFutureSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  lock_buckets = self->_lock_buckets;
  v4 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:&__block_literal_global_66];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v4];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __57__BLSHInactiveProcessMinutesBudget_resetFutureSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFutureSpecifiers];
  if ([v2 hasBeenRendered])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 containsInvalidation] ^ 1;
  }

  return v3;
}

- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  v8 = self->_identifier;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke;
  v24[3] = &unk_2784209C8;
  v25 = specifierCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2;
  v21[3] = &unk_278420930;
  v21[4] = self;
  v22 = v8;
  v23 = v25;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_67;
  v16[3] = &unk_2784209F0;
  fidelityCopy = fidelity;
  v20 = a2;
  v17 = v23;
  selfCopy = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71;
  v11[3] = &unk_278420A18;
  v12 = v17;
  selfCopy2 = self;
  v14 = v22;
  v15 = a2;
  v9 = v22;
  v10 = v17;
  [(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v10 withChargeBlock:v24 fitInBucketBlock:v21 exceededBudgetBlock:v16 missedBucketBlock:v11];
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = bls_budget_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2_cold_1();
  }
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = NSStringFromBLSUpdateFidelity();
  v7 = [v4 stringWithFormat:@"applyRenderedSpecifier: should never exceed budget:%@ specifier:%@ expectedFidelity:%@", v3, v5, v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(*(a1 + 56));
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 40);
    *buf = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2114;
    v19 = @"BLSHInactiveProcessMinutesBudget.m";
    v20 = 1024;
    v21 = 251;
    v22 = 2114;
    v23 = v7;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

BLSHInactiveBudgetBucket *__77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71(uint64_t *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[BLSHInactiveBudgetBucket alloc] initWithFutureSpecifier:a1[4]];
  [(BLSHInactiveBudgetBucket *)v4 applyRenderedSpecifier:a1[4] allowBeforeStart:0];
  if (v5 != 0.0)
  {
    v12 = v5;
    v13 = MEMORY[0x277CCACA8];
    v14 = a1[4];
    v15 = [(BLSHInactiveBudgetBucket *)v4 startDate];
    v16 = [v15 bls_shortLoggingString];
    v17 = [a1[4] date];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = [(BLSHInactiveBudgetBucket *)v4 startDate];
    [v20 timeIntervalSinceReferenceDate];
    v22 = [v13 stringWithFormat:@"newly allocated bucket failed to apply rendered specifier bucket:%@ specifier:%@ interval:%lf startDate:%@ (specifier:%a startDate:%a)", v4, v14, *&v12, v16, v19, v21];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71_cold_1(a1, v22);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD6FB74);
  }

  v6 = bls_budget_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = [*(v9 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_77];
    *buf = 134219010;
    v24 = v9;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v4;
    v31 = 2114;
    v32 = v11;
    _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p:%{public}@ rendered specifier:%{public}@ not found, applied to new bucket:%{public}@ existing:%{public}@", buf, 0x34u);
  }

  return v4;
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = bls_budget_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2_cold_1();
  }
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78(uint64_t a1)
{
  v2 = bls_budget_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78_cold_1(a1, v2);
  }
}

BLSHInactiveBudgetBucket *__80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_82(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[BLSHInactiveBudgetBucket alloc] initWithInvalidation:a1[4]];
  v5 = bls_budget_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[5];
    v7 = a1[6];
    v9 = a1[4];
    v10 = [*(v8 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_85];
    v11 = 134219010;
    v12 = v8;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v3;
    v19 = 2114;
    v20 = v10;
    _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "%p:%{public}@ invalidation:%{public}@ applied to new bucket:%{public}@ existing:%{public}@", &v11, 0x34u);
  }

  return v4;
}

uint64_t __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_91(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)performInvalidation
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_lastInvalidationTimestamp = mach_continuous_time();
  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  lock_invalidationTimer = self->_lock_invalidationTimer;
  self->_lock_invalidationTimer = 0;

  lock_buckets = self->_lock_buckets;
  v5 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:&__block_literal_global_94];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v5];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __55__BLSHInactiveProcessMinutesBudget_performInvalidation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFutureAndRenderedSpecifiers];
  v3 = [v2 containsInvalidation];

  return v3 ^ 1u;
}

- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_buckets = self->_lock_buckets;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__BLSHInactiveProcessMinutesBudget_stillTrackingAfterPurgingStaleDataForNowDate___block_invoke;
  v9[3] = &unk_278420A90;
  v10 = dateCopy;
  v6 = dateCopy;
  v7 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:v9];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v7];

  LOBYTE(lock_buckets) = [(NSMutableArray *)self->_lock_buckets count]!= 0;
  os_unfair_lock_unlock(&self->_lock);

  return lock_buckets;
}

- (unint64_t)bucketCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)secondsBucketCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets bs_filter:&__block_literal_global_97];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (NSArray)buckets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (uint64_t)lock_hasSecondsBudgetAtDate:(uint64_t)date
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (date)
  {
    [MEMORY[0x277CF0920] secondsFidelityThreshold];
    v5 = llround(150.0 / v4);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = *(date + 24);
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 validAtDate:{v3, v23}])
          {
            if ([v11 isSecondsFidelity])
            {
              v12 = __OFSUB__(v5--, 1);
              if ((v5 < 0) ^ v12 | (v5 == 0))
              {
                v13 = bls_budget_log();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  bls_shortLoggingString = [v3 bls_shortLoggingString];
                  bls_boundedDescription = [*(date + 24) bls_boundedDescription];
                  OUTLINED_FUNCTION_5_8();
                  v28 = v17;
                  *v29 = bls_shortLoggingString;
                  *&v29[8] = 2112;
                  *&v29[10] = v18;
                  _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p:%{public}@ budget full at date:%{public}@ buckets:%@", buf, 0x2Au);
                }

                date = 0;
                goto LABEL_18;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v6 = bls_budget_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      bls_shortLoggingString2 = [v3 bls_shortLoggingString];
      v20 = [*(date + 24) bls_boundedDescriptionWithMax:16 transformer:&__block_literal_global_99];
      OUTLINED_FUNCTION_5_8();
      v28 = 1024;
      *v29 = v5;
      *&v29[4] = v21;
      *&v29[6] = bls_shortLoggingString2;
      *&v29[14] = 2112;
      *&v29[16] = v22;
      _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p:%{public}@ budget available (%d) at date:%{public}@ buckets:%@", buf, 0x30u);
    }

    date = 1;
LABEL_18:
  }

  return date;
}

- (double)delayTimeToAddInvalidation:(char)invalidation hasSecondsBudget:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 8);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke;
    v21[3] = &unk_278420908;
    v22 = v5;
    invalidationCopy = invalidation;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2;
    v18[3] = &unk_278420930;
    v18[4] = self;
    v19 = v6;
    v20 = v22;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78;
    v15[3] = &unk_278420930;
    v15[4] = self;
    v16 = v19;
    v17 = v20;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_82;
    v11[3] = &unk_278420A40;
    v12 = v17;
    selfCopy = self;
    v7 = v16;
    v14 = v7;
    if ([(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v12 withChargeBlock:v21 fitInBucketBlock:v18 exceededBudgetBlock:v15 missedBucketBlock:v11])
    {
      if ([(BLSHInactiveProcessMinutesBudget *)self intervalSinceLastInvalidation]>= 0.9)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }
    }

    else
    {
      [MEMORY[0x277CF0920] secondsFidelityThreshold];
      v9 = v8;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)intervalSinceLastInvalidation
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_lock(self + 12);
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v3 = v2;
  os_unfair_lock_unlock(self + 12);
  return v3;
}

- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  blockCopy = block;
  v10 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:dateCopy fidelity:fidelity];
  v11 = [(BLSHInactiveProcessMinutesBudget *)self delayTimeToAddInvalidation:v10 hasSecondsBudget:[(BLSHInactiveProcessMinutesBudget *)self hasSecondsBudgetAtDate:dateCopy]];
  v12 = self->_osTimerProvider;
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke;
  v46 = &unk_278420A68;
  LOBYTE(v51) = v11 == 0.0;
  selfCopy = self;
  v13 = v12;
  v48 = v13;
  fidelityCopy = fidelity;
  v14 = blockCopy;
  v49 = v14;
  v15 = MEMORY[0x223D70730](&v43);
  os_unfair_lock_lock(&self->_lock);
  if (v11 == 0.0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v15[2](v15);
  }

  else
  {
    isScheduled = [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled];
    v17 = bls_budget_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (isScheduled)
    {
      if (v18)
      {
        identifier = self->_identifier;
        bls_loggingString = [dateCopy bls_loggingString];
        [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
        *buf = 134218754;
        selfCopy3 = self;
        v54 = 2114;
        v55 = identifier;
        v56 = 2114;
        v57 = bls_loggingString;
        v58 = 2048;
        v59 = v27;
        OUTLINED_FUNCTION_8_4(&dword_21FD11000, v28, v29, "%p:%{public}@ will ignore budgeted invalidation at requesteDate:%{public}@ already have scheduled invalidation in %.3lfs", v30, v31, v32, v33, v38, v39, v40, v41, v42, v43, v44, v45, v46, selfCopy, v48, v49, fidelityCopy, v51);
      }
    }

    else
    {
      if (v18)
      {
        v34 = self->_identifier;
        *buf = 134218754;
        selfCopy3 = self;
        v54 = 2114;
        v55 = v34;
        v56 = 2114;
        v57 = v10;
        v58 = 2048;
        v59 = v11;
        OUTLINED_FUNCTION_8_4(&dword_21FD11000, v19, v20, "%p:%{public}@ will schedule budgeted invalidation specifier:%{public}@ in %.0lfs", v21, v22, v23, v24, v38, v39, v40, v41, v42, v43, v44, v45, v46, selfCopy, v48, v49, fidelityCopy, v51);
      }

      [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
      osTimerProvider = self->_osTimerProvider;
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_91;
      v41 = &unk_27841F3C8;
      v42 = v15;
      v36 = [(BLSHOSTimerProviding *)osTimerProvider scheduledTimerWithIdentifier:@"MinutesInvalidationBudgetExceeded" interval:&v38 leewayInterval:v11 handler:v11 * 0.25];
      lock_invalidationTimer = self->_lock_invalidationTimer;
      self->_lock_invalidationTimer = v36;

      v17 = v42;
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)hasSecondsBudgetAtDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSHInactiveProcessMinutesBudget *)self lock_hasSecondsBudgetAtDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)allowedFidelityAtDate:(const char *)a1 expectedFidelity:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"expectedFidelity == BLSUpdateFidelityMinutes"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)validateAndChargeFutureSpecifier:(const char *)a1 nextSpecifier:(uint64_t)a2 expectedFidelity:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"expectedFidelity == BLSUpdateFidelityMinutes"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)validateAndChargeFutureSpecifier:(uint64_t)a1 nextSpecifier:(const char *)a2 expectedFidelity:(uint64_t)a3 .cold.2(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"fidelity out of range:%ld", a1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v0, v1, "%p:%{public}@ specifier:%{public}@ fits in bucket:%{public}@");
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(*(a1 + 88));
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_1_17();
  v8 = @"BLSHInactiveProcessMinutesBudget.m";
  v9 = 1024;
  v10 = 215;
  v11 = v6;
  v12 = a2;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = [*(v5 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_47];
  v10 = 134219010;
  v11 = v5;
  OUTLINED_FUNCTION_7_5();
  v12 = v6;
  v13 = v8;
  v14 = a2;
  v15 = v8;
  v16 = v9;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ have budget for specifier:%{public}@ created new newBucket:%{public}@ existing:%{public}@", &v10, 0x34u);
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v0, v1, "%p:%{public}@ rendered specifier:%{public}@ applied to bucket:%{public}@");
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(*(a1 + 56));
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_1_17();
  v8 = @"BLSHInactiveProcessMinutesBudget.m";
  v9 = 1024;
  v10 = 255;
  v11 = v6;
  v12 = a2;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v0, v1, "%p:%{public}@ invalidation:%{public}@ applied to bucket:%{public}@");
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [*(v3 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_81];
  v8 = 134218754;
  v9 = v3;
  OUTLINED_FUNCTION_7_5();
  v10 = v4;
  v11 = v6;
  v12 = v7;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p:%{public}@ invalidation:%{public}@ exceeded budget existing:%{public}@", &v8, 0x2Au);
}

void __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x277CF0848]);
  v5 = [*(a1 + 40) now];
  v4 = [v3 initWithDate:v5 fidelity:*(a1 + 56)];
  [(BLSHInactiveProcessMinutesBudget *)v2 delayTimeToAddInvalidation:v4 hasSecondsBudget:1];
}

@end