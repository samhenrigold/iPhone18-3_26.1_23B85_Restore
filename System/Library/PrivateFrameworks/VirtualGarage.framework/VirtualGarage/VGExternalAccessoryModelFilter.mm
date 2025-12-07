@interface VGExternalAccessoryModelFilter
- (BOOL)allowsVehicleWithModelId:(id)id firmwareId:(id)firmwareId year:(id)year model:(id)model;
- (NSArray)denylist;
- (NSArray)modelIdAllowlist;
- (VGExternalAccessoryModelFilter)init;
- (void)_initializeAllowAndDenylists;
- (void)dealloc;
- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup;
@end

@implementation VGExternalAccessoryModelFilter

- (VGExternalAccessoryModelFilter)init
{
  v5.receiver = self;
  v5.super_class = VGExternalAccessoryModelFilter;
  v2 = [(VGExternalAccessoryModelFilter *)&v5 init];
  if (v2)
  {
    modernManager = [MEMORY[0x277D0ECD0] modernManager];
    [modernManager addTileGroupObserver:v2 queue:MEMORY[0x277D85CD0]];

    [(VGExternalAccessoryModelFilter *)v2 _initializeAllowAndDenylists];
  }

  return v2;
}

- (void)_initializeAllowAndDenylists
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = VGAllowlistPayload();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = GEOConfigGetString();
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = 0x277CBE000uLL;
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy = self;
      v57 = v4;
      v9 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v66 objects:&v76 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v67;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v67 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v9 addObject:v15];
            }

            else
            {
              v16 = VGGetExternalAccessoryModelFilterLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v5;
                _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_FAULT, "Encountered a non-number in payload: %@", &buf, 0xCu);
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v66 objects:&v76 count:16];
        }

        while (v12);
      }

      v17 = [v9 copy];
      self = selfCopy;
      v4 = v57;
      v8 = 0x277CBE000;
    }

    else
    {
      v9 = VGGetExternalAccessoryModelFilterLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v76 = 138412290;
        v77 = v7;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_FAULT, "Parsing of allowlist failed. allowlistedModelIds were in an unexpected format: %@", &v76, 0xCu);
      }

      v17 = 0;
    }

    modelIdAllowlist = self->_modelIdAllowlist;
    self->_modelIdAllowlist = v17;

    v19 = v5;
    v20 = GEOConfigGetString();
    v63 = v19;
    v21 = [(VGDenylistEntry *)v19 objectForKeyedSubscript:v20];

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy2 = self;
        v58 = v4;
        v59 = objc_opt_new();
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v54 = v21;
        obj = v21;
        v22 = [obj countByEnumeratingWithState:&v66 objects:&v76 count:16];
        if (!v22)
        {
          goto LABEL_54;
        }

        v23 = v22;
        v24 = *v67;
        v60 = *v67;
        while (1)
        {
          v25 = 0;
          v61 = v23;
          do
          {
            if (*v67 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v66 + 1) + 8 * v25);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v71 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_34;
              v72 = &unk_279E26998;
              v73 = v63;
              v27 = MEMORY[0x2743B8310](&buf);
              v28 = 1;
              v65 = 1;
              v29 = GEOConfigGetString();
              v30 = objc_opt_class();
              v64 = (v27)[2](v27, v29, v30, v26, &v65);

              v31 = GEOConfigGetString();
              v32 = objc_opt_class();
              v33 = (v27)[2](v27, v31, v32, v26, &v65);

              if (v33)
              {
                v28 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v33);
              }

              v65 &= v28;
              v34 = GEOConfigGetString();
              v35 = v8;
              v36 = objc_opt_class();
              v37 = (v27)[2](v27, v34, v36, v26, &v65);

              if (v37)
              {
                v38 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v37);
              }

              else
              {
                v38 = 1;
              }

              v65 &= v38;
              v40 = GEOConfigGetString();
              v41 = objc_opt_class();
              v42 = (v27)[2](v27, v40, v41, v26, &v65);

              if (v42)
              {
                v43 = __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(v42);
              }

              else
              {
                v43 = 1;
              }

              v44 = (v43 & v65) == 0;
              v65 &= v43;
              v24 = v60;
              if (v44)
              {
                v45 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(&v45->super, OS_LOG_TYPE_ERROR))
                {
                  *v74 = 138412290;
                  v75 = v26;
                  p_super = &v45->super;
                  v47 = OS_LOG_TYPE_ERROR;
                  v48 = "Encountered malformed configuration: %@. Will skip it.";
LABEL_47:
                  _os_log_impl(&dword_270EC1000, p_super, v47, v48, v74, 0xCu);
                }
              }

              else if (v64 || v33 || v37 || v42)
              {
                v45 = [[VGDenylistEntry alloc] initWithModelId:v64 firmwareIds:v33 years:v37 models:v42];
                v49 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *v74 = 138412290;
                  v75 = v45;
                  _os_log_impl(&dword_270EC1000, v49, OS_LOG_TYPE_INFO, "Adding new entry to iAP2 denylist: %@", v74, 0xCu);
                }

                [v59 addObject:v45];
              }

              else
              {
                v45 = VGGetExternalAccessoryModelFilterLog();
                if (os_log_type_enabled(&v45->super, OS_LOG_TYPE_FAULT))
                {
                  *v74 = 138412290;
                  v75 = v26;
                  p_super = &v45->super;
                  v47 = OS_LOG_TYPE_FAULT;
                  v48 = "Encountered a configuration without any parameters: %@. Will skip it.";
                  goto LABEL_47;
                }
              }

              v39 = v73;
              v8 = v35;
              v23 = v61;
              goto LABEL_52;
            }

            v39 = VGGetExternalAccessoryModelFilterLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
            {
              *v74 = 138412290;
              v75 = v63;
              _os_log_impl(&dword_270EC1000, v39, OS_LOG_TYPE_FAULT, "Encountered a non-dictionary in payload: %@", v74, 0xCu);
            }

LABEL_52:

            ++v25;
          }

          while (v23 != v25);
          v23 = [obj countByEnumeratingWithState:&v66 objects:&v76 count:16];
          if (!v23)
          {
LABEL_54:

            v50 = v59;
            v51 = [v59 copy];
            self = selfCopy2;
            v4 = v58;
            v21 = v54;
            goto LABEL_58;
          }
        }
      }
    }

    v50 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      v76 = 138412290;
      v77 = v21;
      _os_log_impl(&dword_270EC1000, v50, OS_LOG_TYPE_FAULT, "Parsing of denylist failed. denylistedConfigurations were in an unexpected format: %@", &v76, 0xCu);
    }

    v51 = 0;
LABEL_58:

    denylist = self->_denylist;
    self->_denylist = v51;
  }

  else
  {
    v53 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v76) = 0;
      _os_log_impl(&dword_270EC1000, v53, OS_LOG_TYPE_ERROR, "Parsing of allowlist failed. Payload was nil.", &v76, 2u);
    }
  }
}

- (void)resourceManifestManager:(id)manager didChangeActiveTileGroup:(id)group fromOldTileGroup:(id)tileGroup
{
  v14 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  tileGroupCopy = tileGroup;
  v9 = VGGetExternalAccessoryModelFilterLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412546;
    v11 = tileGroupCopy;
    v12 = 2112;
    v13 = groupCopy;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Geo active tile group changed from %@ to %@; rebuilding allow and deny lists", &v10, 0x16u);
  }

  [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
}

- (BOOL)allowsVehicleWithModelId:(id)id firmwareId:(id)firmwareId year:(id)year model:(id)model
{
  v67 = *MEMORY[0x277D85DE8];
  idCopy = id;
  firmwareIdCopy = firmwareId;
  yearCopy = year;
  modelCopy = model;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  modelIdAllowlist = [(VGExternalAccessoryModelFilter *)self modelIdAllowlist];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke;
  v45[3] = &unk_279E269C0;
  v38 = idCopy;
  v46 = v38;
  v47 = &v48;
  [modelIdAllowlist enumerateObjectsUsingBlock:v45];

  if (v49[3])
  {
    v12 = [VGDenylistEntry alloc];
    if (firmwareIdCopy)
    {
      v58 = firmwareIdCopy;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    if (yearCopy)
    {
      v57 = yearCopy;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    }

    else
    {
      v27 = MEMORY[0x277CBEBF8];
    }

    if (modelCopy)
    {
      v56 = modelCopy;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    }

    else
    {
      v28 = MEMORY[0x277CBEBF8];
    }

    v29 = [(VGDenylistEntry *)v12 initWithModelId:v38 firmwareIds:v13 years:v27 models:v28];
    if (modelCopy)
    {
    }

    if (yearCopy)
    {
    }

    if (firmwareIdCopy)
    {
    }

    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    denylist = [(VGExternalAccessoryModelFilter *)self denylist];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke_41;
    v42[3] = &unk_279E269E8;
    v37 = v29;
    v43 = v37;
    v44 = &v63;
    [denylist enumerateObjectsUsingBlock:v42];

    v31 = *(v64 + 24);
    v32 = v31 ^ 1;
    _Block_object_dispose(&v63, 8);
  }

  else
  {
    v37 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_modelIdAllowlist;
      v36 = v14;
      if (v14)
      {
        if ([(NSArray *)v14 count])
        {
          v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](v36, "count")}];
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v16 = v36;
          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:&v63 count:16];
          if (v17)
          {
            v18 = *v53;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v53 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v52 + 1) + 8 * i);
                if (v20)
                {
                  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v20];
                }

                else
                {
                  v21 = @"<nil>";
                }

                [v15 addObject:v21];
              }

              v17 = [(NSArray *)v16 countByEnumeratingWithState:&v52 objects:&v63 count:16];
            }

            while (v17);
          }

          v22 = [(NSArray *)v16 componentsJoinedByString:@", "];
          v23 = MEMORY[0x277CCACA8];
          v24 = v16;
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

          v26 = [v23 stringWithFormat:@"%@ [%@]", v25, v22];
        }

        else
        {
          v33 = MEMORY[0x277CCACA8];
          v34 = v36;
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v34];

          v26 = [v33 stringWithFormat:@"%@ (empty)", v15];
        }
      }

      else
      {
        v26 = @"<nil>";
      }

      *buf = 138412546;
      v60 = v38;
      v61 = 2112;
      v62 = v26;
      _os_log_impl(&dword_270EC1000, v37, OS_LOG_TYPE_ERROR, "allowsVehicleWithModelId: denied modelId: %@ as it is not in the allowlist: %@", buf, 0x16u);
    }

    v32 = 0;
  }

  _Block_object_dispose(&v48, 8);
  return v32 & 1;
}

void *__81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqual:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __81__VGExternalAccessoryModelFilter_allowsVehicleWithModelId_firmwareId_year_model___block_invoke_41(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 isSupersetOfEntry:*(a1 + 32)])
  {
    v7 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "allowsVehicleWithModelId: denied entry: %@ as it matches entry from denylist: %@", &v9, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_34(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a4;
  v10 = [v9 objectForKeyedSubscript:v8];
  if (v10 && (v11 = v10, [v9 objectForKeyedSubscript:v8], v12 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) == 0))
  {
    v15 = VGGetExternalAccessoryModelFilterLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 32);
      v18 = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_FAULT, "Encountered an invalid value under key: %@ in payload: %@", &v18, 0x16u);
    }

    v14 = 0;
    *a5 = 0;
  }

  else
  {
    v14 = [v9 objectForKeyedSubscript:v8];
  }

  return v14;
}

uint64_t __62__VGExternalAccessoryModelFilter__initializeAllowAndDenylists__block_invoke_36(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 0;
            goto LABEL_13;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)denylist
{
  denylist = self->_denylist;
  if (!denylist)
  {
    [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
    denylist = self->_denylist;
  }

  return denylist;
}

- (NSArray)modelIdAllowlist
{
  modelIdAllowlist = self->_modelIdAllowlist;
  if (!modelIdAllowlist)
  {
    [(VGExternalAccessoryModelFilter *)self _initializeAllowAndDenylists];
    modelIdAllowlist = self->_modelIdAllowlist;
  }

  return modelIdAllowlist;
}

- (void)dealloc
{
  modernManager = [MEMORY[0x277D0ECD0] modernManager];
  [modernManager removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = VGExternalAccessoryModelFilter;
  [(VGExternalAccessoryModelFilter *)&v4 dealloc];
}

@end