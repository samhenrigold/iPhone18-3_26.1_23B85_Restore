@interface PBFPosterRoleCoordinatorSynchronizeAttribute
@end

@implementation PBFPosterRoleCoordinatorSynchronizeAttribute

uint64_t ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 attributeType];
  if ([v6 isEqual:*MEMORY[0x277D3EEB8]])
  {
    v7 = MEMORY[0x277D3EDE8];
    v8 = [*(a1 + 32) _path];
    LOBYTE(v7) = [v7 storeFocusConfigurationForPath:v8 focusConfiguration:v5 error:a3];

    if ((v7 & 1) == 0)
    {
      v10 = PBFLogRoleCoordinator(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else if ([v6 isEqual:*MEMORY[0x277D3EEA8]])
  {
    v11 = MEMORY[0x277D3EDE8];
    v12 = [*(a1 + 32) _path];
    LOBYTE(v11) = [v11 storeAmbientConfigurationForPath:v12 ambientConfiguration:v5 error:a3];

    if ((v11 & 1) == 0)
    {
      v10 = PBFLogRoleCoordinator(v13);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
LABEL_11:
        v16 = [*(a1 + 32) role];
        v17 = [*(a1 + 32) pbf_posterUUID];
        v18 = *a3;
        v19 = 138544130;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        v23 = 2114;
        v24 = v6;
        v25 = 2114;
        v26 = v18;
        _os_log_fault_impl(&dword_21B526000, v10, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to synchronize attribute %{public}@ to disk for posterUUID %{public}@: %{public}@", &v19, 0x2Au);
      }

LABEL_9:

      v14 = 0;
      goto LABEL_10;
    }
  }

  v14 = 1;
LABEL_10:

  return v14;
}

uint64_t ___PBFPosterRoleCoordinatorSynchronizeAttribute_block_invoke_383(uint64_t a1, void *a2, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) pbf_posterUUID];
  v8 = [*(a1 + 40) role];
  v9 = [v5 attributeType];
  v10 = [v5 encodeJSON];
  LOBYTE(v6) = [v6 mutateAttributeForPoster:v7 roleId:v8 attributeId:v9 attributePayload:v10 error:a3];

  if ((v6 & 1) == 0)
  {
    v12 = PBFLogRoleCoordinator(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v14 = [*(a1 + 40) role];
      v15 = [*(a1 + 40) pbf_posterUUID];
      v16 = [v5 attributeType];
      v17 = *a3;
      v18 = 138544130;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v17;
      _os_log_fault_impl(&dword_21B526000, v12, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to synchronize attribute %{public}@ to database for posterUUID %{public}@: %{public}@", &v18, 0x2Au);
    }
  }

  return 1;
}

@end