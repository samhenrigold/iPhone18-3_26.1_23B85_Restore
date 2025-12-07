@interface CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable
+ (id)dbProperties;
- (BOOL)updateLastSentCapabilities:(id)capabilities capabilitySetSavedDate:(id)date withError:(id *)error;
- (BOOL)updateUsageSavedDate:(id)date withError:(id *)error;
- (CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable)initWithContainerID:(id)d;
- (id)lastSentCapabilityAndUsageWithError:(id *)error;
@end

@implementation CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable

+ (id)dbProperties
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"rowID";
  v4[1] = @"deviceCapabilityStringSet";
  v5[0] = &unk_2838C81D8;
  v5[1] = &unk_2838C81F0;
  v4[2] = @"capabilitySetSavedDate";
  v4[3] = @"usageSavedDate";
  v5[2] = &unk_2838C8208;
  v5[3] = &unk_2838C8208;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 4);

  return v2;
}

- (CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable)initWithContainerID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable;
  v6 = [(CKSQLiteCacheTable *)&v9 initWithLogicalTableName:@"LastSentTable" entryCountLimit:1 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerID, d);
  }

  return v7;
}

- (BOOL)updateLastSentCapabilities:(id)capabilities capabilitySetSavedDate:(id)date withError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  dateCopy = date;
  if (!capabilitiesCopy)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable.m", 81, @"capabilitySet must not be nil");
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2251495DC;
  v26[3] = &unk_278546800;
  v13 = capabilitiesCopy;
  v27 = v13;
  v14 = dateCopy;
  v28 = v14;
  selfCopy = self;
  v16 = objc_msgSend_performTransaction_(self, v15, v26);
  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = v17;
      v23 = objc_msgSend_containerID(self, v21, v22);
      *buf = 138412546;
      v31 = v23;
      v32 = 2112;
      v33 = v16;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "Failed to update last sent capabilities and date for containerID %@: %@", buf, 0x16u);

      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (error)
    {
LABEL_8:
      v18 = v16;
      *error = v16;
    }
  }

LABEL_9:

  return v16 == 0;
}

- (BOOL)updateUsageSavedDate:(id)date withError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!dateCopy)
  {
    v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDDeviceCapabilityLastSentCapabilitiesAndUsageTable.m", 102, @"date must not be nil");
  }

  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = sub_2251498F4;
  v25 = &unk_278546180;
  v10 = dateCopy;
  v26 = v10;
  selfCopy = self;
  v12 = objc_msgSend_performTransaction_(self, v11, &v22);
  if (v12)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v16 = v13;
      v19 = objc_msgSend_containerID(self, v17, v18, v22, v23, v24, v25);
      *buf = 138412546;
      v29 = v19;
      v30 = 2112;
      v31 = v12;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Failed to update usage saved date for containerID %@: %@", buf, 0x16u);

      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (error)
    {
LABEL_8:
      v14 = v12;
      *error = v12;
    }
  }

LABEL_9:

  return v12 == 0;
}

- (id)lastSentCapabilityAndUsageWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_225073EF0;
  v18 = sub_225073504;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225149C04;
  v13[3] = &unk_278546828;
  v13[4] = self;
  v13[5] = &v14;
  v5 = objc_msgSend_performTransaction_(self, a2, v13);
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_msgSend_containerID(self, v7, v8);
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_22506F000, v6, OS_LOG_TYPE_ERROR, "Failed to fetch last sent capabilities and usage date for containerID %@: %@", buf, 0x16u);
    }

    if (error)
    {
      v9 = v5;
      v10 = 0;
      *error = v5;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

@end