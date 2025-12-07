@interface PMLTraining
+ (id)sharedSingletonWithDirectory:(id)directory;
- (BOOL)isMultiLabelModel:(id)model;
- (PMLTraining)initWithStore:(id)store fidesStore:(id)fidesStore availableSessionsTracker:(id)tracker;
- (id)_trainWithRecipe:(id)recipe chunkData:(id)data args:(id)args error:(id *)error;
- (id)planReceivedWithPayload:(id)payload error:(id *)error;
- (id)planReceivedWithRecipe:(id)recipe attachments:(id)attachments error:(id *)error;
- (void)_deleteAllSavedRecordsFromFidesStoreSync;
- (void)_sendStatsToFidesForModel:(id)model sessionCount:(unint64_t)count positivesCount:(unint64_t)positivesCount negativesCount:(unint64_t)negativesCount support:(float)support;
- (void)_sendStatsToFidesForMultiLabelModel:(id)model sessionCount:(unint64_t)count labeledStats:(id)stats;
- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal;
- (void)deleteSessionsWithDomainIdentifiers:(id)identifiers bundleID:(id)d;
- (void)deleteSessionsWithIdentifiers:(id)identifiers bundleID:(id)d;
- (void)sendSessionStatsToFides;
- (void)trimDbWithDeferralBlock:(id)block;
@end

@implementation PMLTraining

- (id)planReceivedWithRecipe:(id)recipe attachments:(id)attachments error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  attachmentsCopy = attachments;
  v10 = [recipeCopy objectForKeyedSubscript:@"isEspressoTraining"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v10 BOOLValue] & 1) == 0)
  {
    v30 = PML_LogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_260D68000, v30, OS_LOG_TYPE_FAULT, "Unable to train with Espresso because recipe flag IS_ESPRESSO_TRAINING is not set", buf, 2u);
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:0];
      *error = v29 = 0;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_36;
  }

  errorCopy = error;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = attachmentsCopy;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v12)
  {

    v15 = 0;
    v14 = 0;
    errorCopy2 = error;
    goto LABEL_28;
  }

  v13 = v12;
  selfCopy = self;
  v39 = attachmentsCopy;
  v40 = recipeCopy;
  v41 = v10;
  v14 = 0;
  v15 = 0;
  v16 = *v44;
  do
  {
    v17 = v11;
    for (i = 0; i != v13; ++i)
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v17);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      pathExtension = [v19 pathExtension];
      if ([pathExtension isEqualToString:@"chunk"])
      {
        v21 = v15;
        v22 = v14;
        v15 = v19;
      }

      else if ([pathExtension isEqualToString:@"bin"])
      {
        v21 = v14;
        v22 = v19;
      }

      else
      {
        v21 = v14;
        v22 = v19;
        if (![pathExtension isEqualToString:@"net"])
        {
          goto LABEL_15;
        }
      }

      v23 = v19;

      v14 = v22;
LABEL_15:
    }

    v11 = v17;
    v13 = [v17 countByEnumeratingWithState:&v43 objects:v57 count:16];
  }

  while (v13);

  if (v15)
  {
    attachmentsCopy = v39;
    recipeCopy = v40;
    v10 = v41;
    errorCopy2 = errorCopy;
    if (v14)
    {
      v25 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v15];
      if ([v25 length])
      {
        v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D05620], "pluginShouldAddNoiseAndEncryptResult:", v40)}];
        store = selfCopy->_store;
        v47[0] = @"TRAINING_STORE";
        v47[1] = @"PML_ESPRESSO_TRAINING_NETWORK_PATH";
        v48[0] = store;
        v48[1] = v14;
        v47[2] = @"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT";
        v48[2] = v26;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
        v29 = [(PMLTraining *)selfCopy _trainWithRecipe:v40 chunkData:v25 args:v28 error:errorCopy];

        v10 = v41;
        goto LABEL_33;
      }

      v36 = PML_LogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_260D68000, v36, OS_LOG_TYPE_FAULT, "Unable to train because chunk file contents were empty", buf, 2u);
      }

      if (errorCopy)
      {
        v33 = MEMORY[0x277CCA9B8];
        v34 = 0;
LABEL_32:
        [v33 errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:v34];
        *errorCopy2 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }

LABEL_33:

      goto LABEL_35;
    }
  }

  else
  {
    attachmentsCopy = v39;
    recipeCopy = v40;
    v10 = v41;
    errorCopy2 = errorCopy;
  }

LABEL_28:
  v31 = PML_LogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    v37 = [v11 count];
    *buf = 138412802;
    v52 = v15;
    v53 = 2112;
    v54 = v14;
    v55 = 2048;
    v56 = v37;
    _os_log_fault_impl(&dword_260D68000, v31, OS_LOG_TYPE_FAULT, "Unable to train because chunk path %@ or training network path %@ not found in %lu attachments", buf, 0x20u);
  }

  if (errorCopy2)
  {
    v32 = MEMORY[0x277CCA9B8];
    v49 = @"attachments";
    v50 = v11;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v33 = v32;
    v34 = v25;
    goto LABEL_32;
  }

  v29 = 0;
LABEL_35:

LABEL_36:

  return v29;
}

- (id)planReceivedWithPayload:(id)payload error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  store = self->_store;
  v12 = @"TRAINING_STORE";
  v13[0] = store;
  v7 = MEMORY[0x277CBEAC0];
  payloadCopy = payload;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [(PMLTraining *)self _trainWithRecipe:MEMORY[0x277CBEC10] chunkData:payloadCopy args:v9 error:error];

  return v10;
}

- (id)_trainWithRecipe:(id)recipe chunkData:(id)data args:(id)args error:(id *)error
{
  v37[3] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  dataCopy = data;
  argsCopy = args;
  v13 = [PMLPlanSerialization planFromData:dataCopy withArgs:argsCopy];
  if (!v13)
  {
    v17 = PML_LogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v30) = 0;
      _os_log_fault_impl(&dword_260D68000, v17, OS_LOG_TYPE_FAULT, "Training plan deserialized without exception but is nil", &v30, 2u);
    }

    if (!error)
    {
      v13 = 0;
      goto LABEL_22;
    }

    v18 = MEMORY[0x277CCA9B8];
    v36 = @"isEspressoTraining";
    v19 = [recipeCopy objectForKeyedSubscript:?];
    v20 = v19;
    v21 = MEMORY[0x277CBEC28];
    if (v19)
    {
      v21 = v19;
    }

    v37[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    *error = [v18 errorWithDomain:@"ProactiveMLErrorDomain" code:4 userInfo:v22];

    v13 = 0;
LABEL_20:
    error = 0;
    goto LABEL_22;
  }

  if ([(PMLTrainingStore *)self->_store isDbOpen])
  {
    v14 = PML_LogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v13;
      _os_log_impl(&dword_260D68000, v14, OS_LOG_TYPE_DEFAULT, "Running %@ synchronously", &v30, 0xCu);
    }

    error = [v13 runWithError:error];
    v15 = PML_LogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      planId = [v13 planId];
      v30 = 138412546;
      v31 = planId;
      v32 = 1024;
      v33 = error != 0;
      _os_log_impl(&dword_260D68000, v15, OS_LOG_TYPE_DEFAULT, "Plan %@ completed run. Result present? %d.", &v30, 0x12u);
    }

    goto LABEL_22;
  }

  [(PMLTrainingStore *)self->_store logDbNotOpenEvent];
  v23 = PML_LogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v13;
    _os_log_impl(&dword_260D68000, v23, OS_LOG_TYPE_DEFAULT, "Ignoring synchronous plan %@ because the db is not open.", &v30, 0xCu);
  }

  if (error)
  {
    v24 = MEMORY[0x277CCA9B8];
    v34 = @"isEspressoTraining";
    v25 = [recipeCopy objectForKeyedSubscript:?];
    v26 = v25;
    v27 = MEMORY[0x277CBEC28];
    if (v25)
    {
      v27 = v25;
    }

    v35 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    *error = [v24 errorWithDomain:@"ProactiveMLErrorDomain" code:5 userInfo:v28];

    goto LABEL_20;
  }

LABEL_22:

  return error;
}

- (void)trimDbWithDeferralBlock:(id)block
{
  blockCopy = block;
  isDbOpen = [(PMLTrainingStore *)self->_store isDbOpen];
  v6 = PML_LogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!isDbOpen)
  {
    if (v7)
    {
      *buf = 0;
      v13 = "Won't trim training db because the db is not open.";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEFAULT, "Trimming training db.", buf, 2u);
  }

  [(PMLTrainingStore *)self->_store limitSessionsByLastUsedTTL:15552000.0];
  v8 = PML_LogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v8, OS_LOG_TYPE_DEFAULT, "DONE limitSessionsByLastUsedTTL", buf, 2u);
  }

  if (blockCopy[2](blockCopy))
  {
    goto LABEL_14;
  }

  [(PMLTrainingStore *)self->_store limitSessionsByMaxTimesAccessed];
  v9 = PML_LogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v9, OS_LOG_TYPE_DEFAULT, "DONE limitSessionsByMaxTimesAccessed", buf, 2u);
  }

  if (blockCopy[2](blockCopy))
  {
    goto LABEL_14;
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 0;
  store = self->_store;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__PMLTraining_trimDbWithDeferralBlock___block_invoke;
  v14[3] = &unk_279AC0650;
  v14[4] = self;
  v11 = blockCopy;
  v15 = v11;
  v16 = buf;
  [(PMLTrainingStore *)store enumerateSessionDescriptorsUsingBlock:v14];
  LOBYTE(store) = v18[24];

  _Block_object_dispose(buf, 8);
  if (store)
  {
    goto LABEL_14;
  }

  v12 = PML_LogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260D68000, v12, OS_LOG_TYPE_DEFAULT, "Vacuuming training db.", buf, 2u);
  }

  [(PMLTrainingStore *)self->_store vacuumDbWithDeferralBlock:v11];
  if (blockCopy[2](v11))
  {
LABEL_14:
    v6 = PML_LogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "We've been asked to defer. Skipping remaining work.";
LABEL_18:
      _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __39__PMLTraining_trimDbWithDeferralBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Removing training samples for %@", &v12, 0xCu);
  }

  v7 = [v5 name];
  v8 = [v7 isEqualToString:@"QuickResponsesClassification"];

  v9 = *(a1[4] + 32);
  if (v8)
  {
    [v9 limitSessionsWithSessionDescriptor:v5 withLabel:0 limit:1000];
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = 138412290;
    v13 = v5;
    v11 = "DONE limitSessionsWithSessionDescriptor:(%@) withLabel:nil";
  }

  else
  {
    [v9 limitSessionsForEachLabelWithSessionDescriptor:v5 totalSessionLimit:1000];
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = 138412290;
    v13 = v5;
    v11 = "DONE limitSessionsForEachLabelWithSessionDescriptor:(%@)";
  }

  _os_log_impl(&dword_260D68000, v10, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
LABEL_9:

  if ((*(a1[5] + 16))())
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)deleteSessionsWithDomainIdentifiers:(id)identifiers bundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(PMLTrainingStore *)self->_store deleteSessionsWithBundleId:dCopy domainId:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)deleteSessionsWithIdentifiers:(id)identifiers bundleID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        [(PMLTrainingStore *)self->_store deleteSessionsWithBundleId:dCopy itemId:*(*(&v12 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_deleteAllSavedRecordsFromFidesStoreSync
{
  v3 = dispatch_semaphore_create(0);
  fidesStore = self->_fidesStore;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__PMLTraining__deleteAllSavedRecordsFromFidesStoreSync__block_invoke;
  v6[3] = &unk_279AC0628;
  v7 = v3;
  v5 = v3;
  [(DESRecordStore *)fidesStore deleteAllSavedRecordsWithCompletion:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

void __55__PMLTraining__deleteAllSavedRecordsFromFidesStoreSync__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = PML_LogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Failed to delete existing records in DESRecordStore. Error: %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_sendStatsToFidesForMultiLabelModel:(id)model sessionCount:(unint64_t)count labeledStats:(id)stats
{
  v21[5] = *MEMORY[0x277D85DE8];
  v20[0] = @"modelName";
  statsCopy = stats;
  modelCopy = model;
  name = [modelCopy name];
  v21[0] = name;
  v20[1] = @"modelVersion";
  version = [modelCopy version];
  v21[1] = version;
  v20[2] = @"modelLocale";
  locale = [modelCopy locale];

  v21[2] = locale;
  v20[3] = @"sessionsCount";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v20[4] = @"labeledStats";
  v21[3] = v13;
  v21[4] = statsCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  fidesStore = self->_fidesStore;
  v16 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__PMLTraining__sendStatsToFidesForMultiLabelModel_sessionCount_labeledStats___block_invoke;
  v18[3] = &unk_279AC0600;
  v19 = v14;
  v17 = v14;
  [(DESRecordStore *)fidesStore saveRecordWithData:v16 recordInfo:v17 completion:v18];
}

void __77__PMLTraining__sendStatsToFidesForMultiLabelModel_sessionCount_labeledStats___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PML_LogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v9, 0xCu);
  }
}

- (void)_sendStatsToFidesForModel:(id)model sessionCount:(unint64_t)count positivesCount:(unint64_t)positivesCount negativesCount:(unint64_t)negativesCount support:(float)support
{
  v28[7] = *MEMORY[0x277D85DE8];
  v27[0] = @"modelName";
  modelCopy = model;
  name = [modelCopy name];
  v28[0] = name;
  v27[1] = @"modelVersion";
  version = [modelCopy version];
  v28[1] = version;
  v27[2] = @"modelLocale";
  locale = [modelCopy locale];

  v28[2] = locale;
  v27[3] = @"sessionsCount";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v28[3] = v16;
  v27[4] = @"positivesCount";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:positivesCount];
  v28[4] = v17;
  v27[5] = @"negativesCount";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:negativesCount];
  v28[5] = v18;
  v27[6] = @"support";
  *&v19 = support;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v28[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:7];

  fidesStore = self->_fidesStore;
  v23 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__PMLTraining__sendStatsToFidesForModel_sessionCount_positivesCount_negativesCount_support___block_invoke;
  v25[3] = &unk_279AC0600;
  v26 = v21;
  v24 = v21;
  [(DESRecordStore *)fidesStore saveRecordWithData:v23 recordInfo:v24 completion:v25];
}

void __92__PMLTraining__sendStatsToFidesForModel_sessionCount_positivesCount_negativesCount_support___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PML_LogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_260D68000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_260D68000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v9, 0xCu);
  }
}

- (void)sendSessionStatsToFides
{
  if ([(PMLTrainingStore *)self->_store isDbOpen])
  {
    [(PMLTraining *)self _deleteAllSavedRecordsFromFidesStoreSync];
    sessionStats = [(PMLTrainingStore *)self->_store sessionStats];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__PMLTraining_sendSessionStatsToFides__block_invoke;
    v4[3] = &unk_279AC05D8;
    v4[4] = self;
    [sessionStats enumerateKeysAndObjectsUsingBlock:v4];
  }
}

void __38__PMLTraining_sendSessionStatsToFides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v52 + 1) + 8 * i) second];
        v9 += [v12 unsignedIntegerValue];
      }

      v8 = [v6 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v44 = a1;
  v45 = v6;
  if ([*(a1 + 32) isMultiLabelModel:v5])
  {
    v43 = v5;
    v47 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v6;
    v13 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v49;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v48 + 1) + 8 * j);
          v18 = [v17 first];
          v19 = [v18 unsignedIntegerValue];

          if (v19)
          {
            v20 = [v17 second];
            [v20 floatValue];
            v22 = v21 / v9;

            v23 = [v17 second];
            v24 = [v23 unsignedIntegerValue];

            v56[0] = @"positivesCount";
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
            v56[1] = @"support";
            v57[0] = v25;
            *&v26 = v22;
            v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
            v57[1] = v27;
            v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
            v29 = objc_alloc(MEMORY[0x277CCACA8]);
            v30 = [v17 first];
            v31 = [v29 initWithFormat:@"label%tu", objc_msgSend(v30, "unsignedLongValue")];
            [v47 setObject:v28 forKey:v31];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v14);
    }

    v5 = v43;
    [*(v44 + 32) _sendStatsToFidesForMultiLabelModel:v43 sessionCount:v9 labeledStats:v47];
  }

  else
  {
    v32 = v6;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = [v32 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = 0;
      v36 = *v53;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v52 + 1) + 8 * k);
          v39 = [v38 first];
          v40 = [v39 integerValue];

          if (v40 >= 1)
          {
            v41 = [v38 second];
            v35 += [v41 unsignedIntegerValue];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v34);
    }

    else
    {
      v35 = 0;
    }

    *&v42 = v35 / v9;
    [*(v44 + 32) _sendStatsToFidesForModel:v5 sessionCount:v9 positivesCount:v35 negativesCount:v9 - v35 support:v42];
  }
}

- (BOOL)isMultiLabelModel:(id)model
{
  v14 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  isMultiLabel = self->_isMultiLabel;
  name = [modelCopy name];
  v7 = [(NSDictionary *)isMultiLabel objectForKeyedSubscript:name];

  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v9 = PML_LogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      name2 = [modelCopy name];
      v12 = 138412290;
      v13 = name2;
      _os_log_fault_impl(&dword_260D68000, v9, OS_LOG_TYPE_FAULT, "No isMultiLabel information for %@", &v12, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)addSessionWithCovariates:(id)covariates label:(int64_t)label sessionDescriptor:(id)descriptor spotlightReference:(id)reference isInternal:(BOOL)internal
{
  v27 = *MEMORY[0x277D85DE8];
  covariatesCopy = covariates;
  descriptorCopy = descriptor;
  referenceCopy = reference;
  v15 = PML_LogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v22 = descriptorCopy;
    v23 = 2048;
    labelCopy = label;
    v25 = 2048;
    v26 = [covariatesCopy length];
    _os_log_debug_impl(&dword_260D68000, v15, OS_LOG_TYPE_DEBUG, "Adding session for %@ (label: %tu, length: %tu)", buf, 0x20u);
  }

  store = self->_store;
  bundleIdentifier = [referenceCopy bundleIdentifier];
  domainIdentifier = [referenceCopy domainIdentifier];
  itemIdentifiers = [referenceCopy itemIdentifiers];

  LOBYTE(v20) = internal;
  [(PMLTrainingStore *)store storeSession:covariatesCopy label:label model:descriptorCopy bundleId:bundleIdentifier domainId:domainIdentifier itemIds:itemIdentifiers isAppleInternal:v20];
}

- (PMLTraining)initWithStore:(id)store fidesStore:(id)fidesStore availableSessionsTracker:(id)tracker
{
  storeCopy = store;
  fidesStoreCopy = fidesStore;
  trackerCopy = tracker;
  v16.receiver = self;
  v16.super_class = PMLTraining;
  v12 = [(PMLTraining *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_fidesStore, fidesStore);
    objc_storeStrong(&v13->_availableSessionsTracker, tracker);
    [(PMLAWDAvailableSessionsTracker *)v13->_availableSessionsTracker setAWDMetricQueryDelegate:v13];
    isMultiLabel = v13->_isMultiLabel;
    v13->_isMultiLabel = &unk_287358508;
  }

  return v13;
}

+ (id)sharedSingletonWithDirectory:(id)directory
{
  v24 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  pthread_mutex_lock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
  if (sharedSingletonWithDirectory__sharedInstance)
  {
    goto LABEL_6;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = PML_LogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_260D68000, v5, OS_LOG_TYPE_INFO, "Instantiating PMLTraining singleton.", &v20, 2u);
  }

  v6 = [PMLTrainingStore alloc];
  v7 = [(__CFString *)directoryCopy stringByAppendingPathComponent:@"training.db"];
  v8 = [(PMLTrainingStore *)v6 initWithPath:v7];

  v9 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.proactive.PMLDESPlugin"];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [[PMLTraining alloc] initWithStore:v8 fidesStore:v10 availableSessionsTracker:v11];
    v13 = sharedSingletonWithDirectory__sharedInstance;
    sharedSingletonWithDirectory__sharedInstance = v12;

    v14 = [(__CFString *)directoryCopy copy];
    v15 = sharedSingletonWithDirectory__sharedInstanceDirectory;
    sharedSingletonWithDirectory__sharedInstanceDirectory = v14;

    objc_autoreleasePoolPop(v4);
LABEL_6:
    if (sharedSingletonWithDirectory__sharedInstanceDirectory && ([(__CFString *)directoryCopy isEqualToString:?]& 1) == 0)
    {
      v16 = PML_LogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = directoryCopy;
        v22 = 2112;
        v23 = sharedSingletonWithDirectory__sharedInstanceDirectory;
        _os_log_impl(&dword_260D68000, v16, OS_LOG_TYPE_DEFAULT, "Can't instantiate PMLTraining in %@, becacuse there is already an instance in %@.", &v20, 0x16u);
      }
    }

    pthread_mutex_unlock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
    v17 = sharedSingletonWithDirectory__sharedInstance;
    goto LABEL_12;
  }

  v19 = PML_LogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    v20 = 138412290;
    v21 = @"com.apple.proactive.PMLDESPlugin";
    _os_log_fault_impl(&dword_260D68000, v19, OS_LOG_TYPE_FAULT, "PMLTraining failed to get a DESRecordStore for %@", &v20, 0xCu);
  }

  pthread_mutex_unlock(&sharedSingletonWithDirectory__sharedInstanceInitLock);
  objc_autoreleasePoolPop(v4);
  v17 = 0;
LABEL_12:

  return v17;
}

@end