@interface GTURLAccessProvider
- (BOOL)_sharesFileSystemWith:(id)with remoteConnection:(id)connection;
- (GTURLAccessProvider)initWithServiceProvider:(id)provider connectionProvider:(id)connectionProvider serviceVendor:(id)vendor;
- (id)makeURL:(id)l;
- (id)urlForPath:(id)path;
- (void)copyIdentifier:(id)identifier toDevice:(id)device allowLocalURL:(BOOL)l directory:(id)directory completionHandler:(id)handler;
- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler;
- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
@end

@implementation GTURLAccessProvider

- (GTURLAccessProvider)initWithServiceProvider:(id)provider connectionProvider:(id)connectionProvider serviceVendor:(id)vendor
{
  providerCopy = provider;
  connectionProviderCopy = connectionProvider;
  vendorCopy = vendor;
  v12 = vendorCopy;
  selfCopy = 0;
  if (providerCopy && connectionProviderCopy && vendorCopy)
  {
    v21.receiver = self;
    v21.super_class = GTURLAccessProvider;
    v14 = [(GTURLAccessProvider *)&v21 init];
    if (v14)
    {
      v15 = objc_opt_new();
      registeredURLs = v14->_registeredURLs;
      v14->_registeredURLs = v15;

      v17 = +[GTDeviceProperties uniqueDeviceID];
      deviceUDID = v14->_deviceUDID;
      v14->_deviceUDID = v17;

      objc_storeStrong(&v14->_serviceProvider, provider);
      objc_storeStrong(&v14->_connectionProvider, connectionProvider);
      objc_storeStrong(&v14->_serviceVendor, vendor);
      v19 = NSTemporaryDirectory();
      DeleteAllArchives(v19);
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)urlForPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_registeredURLs;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v9), v14];
      path = [v10 path];
      v12 = [path isEqualToString:pathCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (BOOL)_sharesFileSystemWith:(id)with remoteConnection:(id)connection
{
  withCopy = with;
  connectionCopy = connection;
  v8 = connectionCopy;
  v9 = 0;
  if (withCopy && connectionCopy)
  {
    if ([(NSString *)self->_deviceUDID isEqualToString:withCopy])
    {
      v9 = 1;
    }

    else
    {
      allServices = [(GTServiceProvider *)self->_serviceProvider allServices];
      v11 = filteredArrayByService(allServices, &unk_2860ED5D8);
      firstObject = [v11 firstObject];

      serviceVendor = self->_serviceVendor;
      serviceProperties = [firstObject serviceProperties];
      v15 = [(GTServiceVendor *)serviceVendor getSimulatorDeviceBrowserService:serviceProperties];

      v9 = [v15 isSimulatorDevice:withCopy];
    }
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = dCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v8 scheme], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"gtsandboxid"), v9, v10) && (objc_msgSend(v8, "host"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    path = [v8 path];

    if (path)
    {
      if (GTCoreLogUseOsLog())
      {
        v13 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
        }
      }

      else
      {
        v17 = *MEMORY[0x277D85E08];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"securityScopedURLFromSandboxID %@", v8];
        fprintf(v17, "%s\n", [v18 UTF8String]);
      }

      v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:v8];
      if (v19)
      {
        host = v19;
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        path2 = [host path];
        v23 = [defaultManager fileExistsAtPath:path2];

        v24 = GTCoreLogUseOsLog();
        if (v23)
        {
          if (v24)
          {
            v25 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
            }
          }

          else
          {
            v27 = *MEMORY[0x277D85E08];
            v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"File found locally %@", host];
            fprintf(v27, "%s\n", [v25 UTF8String]);
          }

          handlerCopy[2](handlerCopy, host);
LABEL_51:

          goto LABEL_17;
        }

        if (v24)
        {
          v26 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
          }
        }

        else
        {
          v28 = *MEMORY[0x277D85DF8];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"File should exist locally at %@ but can't be found on disk", host];
          fprintf(v28, "%s\n", [v26 UTF8String]);
        }

        [(NSMutableDictionary *)self->_registeredURLs removeObjectForKey:v8];
      }

      host = [v8 host];
      v29 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:host];
      v30 = v29;
      if (v29)
      {
        v31 = allServicesForDeviceUDID(v29, host);
        v32 = filteredArrayByService(v31, &unk_2860EEDF0);
        firstObject = [v32 firstObject];

        if (firstObject)
        {
          v34 = [GTURLAccessProviderXPCProxy alloc];
          serviceProperties = [firstObject serviceProperties];
          v36 = [(GTURLAccessProviderXPCProxy *)v34 initWithConnection:v30 remoteProperties:serviceProperties];

          if ([(GTURLAccessProvider *)self _sharesFileSystemWith:host remoteConnection:v30])
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke;
            v50[3] = &unk_279661870;
            v50[4] = self;
            v51 = v8;
            v52 = handlerCopy;
            [(GTURLAccessProviderXPCProxy *)v36 securityScopedURLFromSandboxID:v51 completionHandler:v50];

            v37 = v51;
          }

          else
          {
            v40 = objc_opt_respondsToSelector();
            deviceUDID = self->_deviceUDID;
            if (v40)
            {
              v47[0] = MEMORY[0x277D85DD0];
              v47[1] = 3221225472;
              v47[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2;
              v47[3] = &unk_279661898;
              v49 = handlerCopy;
              v47[4] = self;
              v48 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 copyIdentifier:v48 toDevice:deviceUDID completionHandler:v47];

              v37 = v49;
            }

            else
            {
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70;
              v44[3] = &unk_2796618C0;
              v46 = handlerCopy;
              v44[4] = self;
              v45 = v8;
              [(GTURLAccessProviderXPCProxy *)v36 transferIdentifier:v45 toDevice:deviceUDID completionHandler:v44];

              v37 = v46;
            }
          }
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            v39 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
            }
          }

          else
          {
            v43 = *MEMORY[0x277D85DF8];
            v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find URL access provider"];
            fprintf(v43, "%s\n", [v39 UTF8String]);
          }

          handlerCopy[2](handlerCopy, 0);
        }
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v38 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
          }
        }

        else
        {
          v42 = *MEMORY[0x277D85DF8];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing remote connection for %@", host];
          fprintf(v42, "%s\n", [v38 UTF8String]);
        }

        handlerCopy[2](handlerCopy, 0);
      }

      goto LABEL_51;
    }
  }

  else
  {
  }

  if (GTCoreLogUseOsLog())
  {
    v14 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [GTURLAccessProvider securityScopedURLFromSandboxID:completionHandler:];
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85DF8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid sandbox ID %@", v8];
    fprintf(v15, "%s\n", [v16 UTF8String]);
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_17:
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1[4] + 8) setObject:v3 forKeyedSubscript:a1[5]];
  }

  (*(a1[6] + 16))();
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 scheme];
    v8 = [v7 isEqualToString:@"gtsandboxid"];

    if (v8)
    {
      [*(a1[4] + 8) objectForKeyedSubscript:v5];
    }

    else
    {
      LocalArchiveURLFromRemoteURL(v5);
    }
    v10 = ;
    [*(a1[4] + 8) setObject:v10 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v9 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2_cold_1(v6, v9);
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85DF8];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v6 localizedDescription];
      v14 = [v12 stringWithFormat:@"Failed to transfer archive, %@", v13];
      fprintf(v11, "%s\n", [v14 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70(void *a1, void *a2)
{
  if (a2)
  {
    v6 = LocalArchiveURLFromRemoteURL(a2);
    [*(a1[4] + 8) setObject:v6 forKeyedSubscript:a1[5]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v3 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70_cold_1();
      }
    }

    else
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to transfer archive"];
      fprintf(v4, "%s\n", [v5 UTF8String]);
    }

    (*(a1[6] + 16))();
  }
}

- (id)makeURL:(id)l
{
  ++makeURL__urlNumber;
  lCopy = l;
  path = [lCopy path];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v7 = [path stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  makeURL__urlNumber = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@/%@?id=%u", @"gtsandboxid", self->_deviceUDID, v7, makeURL__urlNumber];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:makeURL__urlNumber];
  [(NSMutableDictionary *)self->_registeredURLs setObject:lCopy forKeyedSubscript:v9];

  return v9;
}

- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__GTURLAccessProvider_transferIdentifier_toDevice_completionHandler___block_invoke;
  v10[3] = &unk_2796618E8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(GTURLAccessProvider *)self copyIdentifier:identifier toDevice:device allowLocalURL:0 directory:0 completionHandler:v10];
}

- (void)copyIdentifier:(id)identifier toDevice:(id)device allowLocalURL:(BOOL)l directory:(id)directory completionHandler:(id)handler
{
  lCopy = l;
  v187 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  directoryCopy = directory;
  handlerCopy = handler;
  if (GTCoreLogUseOsLog())
  {
    v16 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    deviceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"copyIdentifier %@ to device %@", identifierCopy, deviceCopy];
    fprintf(v17, "%s\n", [deviceCopy UTF8String]);
  }

  v19 = [(NSMutableDictionary *)self->_registeredURLs objectForKeyedSubscript:identifierCopy];
  v133 = lCopy;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"currentURL %@", v19];
    fprintf(v21, "%s\n", [v20 UTF8String]);
  }

  v22 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:deviceCopy];
  v23 = v22;
  if (!v22)
  {
    if (GTCoreLogUseOsLog())
    {
      deviceCopy2 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(deviceCopy2, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v30 = *MEMORY[0x277D85DF8];
      deviceCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"No remote connection for device %@", deviceCopy];
      fprintf(v30, "%s\n", [deviceCopy2 UTF8String]);
    }

    v31 = MEMORY[0x277CCA9B8];
    v176 = *MEMORY[0x277CCA450];
    deviceCopy3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing connection for device: %@", deviceCopy];
    v177 = deviceCopy3;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
    v24 = [v31 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:0 userInfo:v33];

    handlerCopy[2](handlerCopy, 0, v24);
    goto LABEL_93;
  }

  selfCopy = self;
  v24 = FindRemoteGTFileWriterService(v22, deviceCopy, self->_connectionProvider);
  if (!v24)
  {
    if (GTCoreLogUseOsLog())
    {
      deviceCopy4 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(deviceCopy4, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v34 = *MEMORY[0x277D85DF8];
      deviceCopy4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find remote file writer service for device %@", deviceCopy];
      fprintf(v34, "%s\n", [deviceCopy4 UTF8String]);
    }

    v35 = MEMORY[0x277CCA9B8];
    v174 = *MEMORY[0x277CCA450];
    deviceCopy5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing file writer service for device: %@", deviceCopy];
    v175 = deviceCopy5;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
    v38 = [v35 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:1 userInfo:v37];

    handlerCopy[2](handlerCopy, 0, v38);
    goto LABEL_92;
  }

  v25 = [GTFileWriterServiceXPCProxy alloc];
  serviceProperties = [v24 serviceProperties];
  v132 = [(GTFileWriterServiceXPCProxy *)v25 initWithConnection:v23 remoteProperties:serviceProperties];

  if (([v19 startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v27 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
      }
    }

    else
    {
      v39 = *MEMORY[0x277D85E08];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to consume sandbox extension for URL %@", v19];
      fprintf(v39, "%s\n", [v27 UTF8String]);
    }
  }

  v127 = identifierCopy;
  v40 = directoryCopy;
  v148 = 0;
  v41 = v19;
  v171 = 0;
  v134 = *MEMORY[0x277CBE7A0];
  v42 = [v41 getResourceValue:&v171 forKey:? error:?];
  v43 = v171;
  v44 = 0;
  v129 = v24;
  if (!v42)
  {
    goto LABEL_75;
  }

  v120 = v23;
  v116 = v43;
  pathComponents = [v43 pathComponents];
  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy__4;
  v165 = __Block_byref_object_dispose__4;
  v166 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v46 = *MEMORY[0x277CBE838];
  v139 = *MEMORY[0x277CBE868];
  v179[0] = *MEMORY[0x277CBE868];
  v122 = v46;
  v179[1] = v46;
  v131 = *MEMORY[0x277CBE8B0];
  v179[2] = *MEMORY[0x277CBE8B0];
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:3];
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __NewFileEntriesForURL_block_invoke;
  v160[3] = &unk_279661960;
  v160[4] = &v167;
  v160[5] = &v161;
  v117 = v41;
  v48 = [defaultManager enumeratorAtURL:v41 includingPropertiesForKeys:v47 options:0 errorHandler:v160];

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  obj = v48;
  v50 = [obj countByEnumeratingWithState:&v156 objects:v178 count:16];
  if (!v50)
  {
    goto LABEL_71;
  }

  v51 = v50;
  v137 = *v157;
  v114 = *MEMORY[0x277CCA450];
  v115 = *MEMORY[0x277CCA5B8];
  v126 = v49;
  v112 = handlerCopy;
  v113 = deviceCopy;
  v123 = v40;
  v118 = v19;
  while (2)
  {
    v52 = 0;
    v130 = v51;
    do
    {
      if (*v157 != v137)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v156 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      v154 = 0;
      v155 = 0;
      v55 = v162;
      v56 = [v53 getResourceValue:&v155 forKey:v139 error:&v154];
      v57 = v155;
      objc_storeStrong(v55 + 5, v154);
      if ((v56 & 1) == 0)
      {
        *(v168 + 24) = 1;
        goto LABEL_70;
      }

      if ([v57 BOOLValue])
      {
        goto LABEL_60;
      }

      v152 = 0;
      v153 = 0;
      v58 = v162;
      v59 = [v53 getResourceValue:&v153 forKey:v131 error:&v152];
      v60 = v153;
      objc_storeStrong(v58 + 5, v152);
      if ((v59 & 1) == 0)
      {
        *(v168 + 24) = 1;
        goto LABEL_69;
      }

      v61 = v162 + 5;
      v151 = v162[5];
      v62 = pathComponents;
      *v186 = 0;
      v63 = 0;
      if ([v53 getResourceValue:v186 forKey:v134 error:&v151])
      {
        [*v186 pathComponents];
        v65 = v64 = v60;
        v66 = [v65 subarrayWithRange:{objc_msgSend(v62, "count"), objc_msgSend(v65, "count") - objc_msgSend(v62, "count")}];

        v60 = v64;
        v63 = [MEMORY[0x277CCACA8] pathWithComponents:v66];

        v49 = v126;
      }

      objc_storeStrong(v61, v151);
      if (!v63)
      {
        *(v168 + 24) = 1;
        goto LABEL_68;
      }

      if ([v60 BOOLValue])
      {
        v125 = v60;
        v68 = v162 + 5;
        v67 = v162[5];
        v69 = v53;
        v70 = readlink([v69 fileSystemRepresentation], v186, 0x400uLL);
        if ((v70 & 0x8000000000000000) != 0)
        {
          v78 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v79 = gt_tagged_log(0x10u);
            v80 = 0x277CCA000;
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v69;
              v181 = 1024;
              LODWORD(v182) = v78;
              _os_log_error_impl(&dword_24DBC9000, v79, OS_LOG_TYPE_ERROR, "Failed to read symlink for %@ (%d)", buf, 0x12u);
            }
          }

          else
          {
            v81 = *MEMORY[0x277D85DF8];
            v80 = 0x277CCA000uLL;
            v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to read symlink for %@ (%d)", v69, v78];
            fprintf(v81, "%s\n", [v79 UTF8String]);
          }

          v82 = v78;

          v83 = MEMORY[0x277CCA9B8];
          v185 = v114;
          v84 = [*(v80 + 3240) stringWithFormat:@"Failed to read symlink for %@", v69];
          *buf = v84;
          v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v185 count:1];
          v67 = [v83 errorWithDomain:v115 code:v82 userInfo:v85];
          v86 = v67;

          v76 = 0;
          v49 = v126;
        }

        else
        {
          v71 = v70;
          if (v70 < 0x400)
          {
            v186[v70] = 0;
            v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:v186];
          }

          else
          {
            v111 = v68;
            if (GTCoreLogUseOsLog())
            {
              1024 = gt_tagged_log(0x10u);
              v73 = 0x277CCA000;
              if (os_log_type_enabled(1024, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                *&buf[4] = v69;
                v181 = 2048;
                v182 = v71;
                v183 = 2048;
                v184 = 1024;
                _os_log_error_impl(&dword_24DBC9000, 1024, OS_LOG_TYPE_ERROR, "Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", buf, 0x20u);
              }
            }

            else
            {
              v87 = *MEMORY[0x277D85DF8];
              v73 = 0x277CCA000uLL;
              1024 = [MEMORY[0x277CCACA8] stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v69, v71, 1024];
              fprintf(v87, "%s\n", [1024 UTF8String]);
            }

            v88 = MEMORY[0x277CCA9B8];
            v185 = v114;
            10242 = [*(v73 + 3240) stringWithFormat:@"Target path for symlink %@ is too long (%zd bytes >= %lu bytes [PATH_MAX])", v69, v71, 1024];
            *buf = 10242;
            v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v185 count:1];
            v67 = [v88 errorWithDomain:v115 code:55 userInfo:v90];
            v91 = v67;

            v76 = 0;
            v49 = v126;
            v68 = v111;
          }
        }

        objc_storeStrong(v68, v67);
        if (!v76)
        {
          *(v168 + 24) = 1;
          v60 = v125;
          goto LABEL_68;
        }

        v77 = [[GTFileEntry alloc] initWithLink:v63 destination:v76];
        v60 = v125;
        goto LABEL_59;
      }

      v149 = 0;
      v150 = 0;
      v74 = v162;
      v75 = [v53 getResourceValue:&v150 forKey:v122 error:&v149];
      v76 = v150;
      objc_storeStrong(v74 + 5, v149);
      if (!v75)
      {
        *(v168 + 24) = 1;

LABEL_68:
LABEL_69:

LABEL_70:
        v19 = v118;

        objc_autoreleasePoolPop(v54);
        handlerCopy = v112;
        deviceCopy = v113;
        v40 = v123;
        v24 = v129;
        goto LABEL_71;
      }

      v77 = -[GTFileEntry initWithPath:fileSize:]([GTFileEntry alloc], "initWithPath:fileSize:", v63, [v76 unsignedIntegerValue]);
LABEL_59:
      [v49 addObject:v77];

      v51 = v130;
LABEL_60:

      objc_autoreleasePoolPop(v54);
      ++v52;
    }

    while (v51 != v52);
    v51 = [obj countByEnumeratingWithState:&v156 objects:v178 count:16];
    handlerCopy = v112;
    deviceCopy = v113;
    v40 = v123;
    v19 = v118;
    v24 = v129;
    if (v51)
    {
      continue;
    }

    break;
  }

LABEL_71:

  if (*(v168 + 24) == 1)
  {
    v44 = 0;
    v148 = v162[5];
  }

  else
  {
    v44 = [v49 copy];
  }

  v23 = v120;

  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(&v167, 8);

  v43 = v116;
  v41 = v117;
LABEL_75:

  v92 = v148;
  [v41 stopAccessingSecurityScopedResource];
  if (v44)
  {
    v140 = v92;
    v93 = v41;
    v138 = objc_opt_new();
    directoryCopy = v40;
    if (v40)
    {
      v124 = v40;
      identifierCopy = v127;
      if (objc_opt_respondsToSelector())
      {
        v94 = objc_opt_new();
        path = [v93 path];
        v121 = v23;
        v96 = v19;
        deviceUDID = selfCopy->_deviceUDID;
        v146[0] = MEMORY[0x277D85DD0];
        v146[1] = 3221225472;
        v146[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke;
        v146[3] = &unk_2796618E8;
        v147 = handlerCopy;
        v98 = deviceUDID;
        v19 = v96;
        v23 = v121;
        directoryCopy = v124;
        [(GTFileWriterServiceXPCProxy *)v132 startTransfer:v44 basePath:path fromDevice:v98 toDirectory:v124 options:v94 completionHandler:v146];

        v99 = v138;
        v92 = v140;
      }

      else
      {
        v119 = v19;
        if (GTCoreLogUseOsLog())
        {
          v103 = gt_tagged_log(0x10u);
          directoryCopy = v124;
          v104 = v140;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            [GTURLAccessProvider copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:];
          }
        }

        else
        {
          v107 = *MEMORY[0x277D85DF8];
          v103 = [MEMORY[0x277CCACA8] stringWithFormat:@"The gputrace file transfer service is too old to support remote macOS debugging. Try updating your device's DDI by installing a newer Xcode."];
          fprintf(v107, "%s\n", [v103 UTF8String]);
          directoryCopy = v124;
          v104 = v140;
        }

        v108 = MEMORY[0x277CCA9B8];
        v172 = *MEMORY[0x277CCA450];
        v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"File writer service is too old. Missing selector %@", @"startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:"];
        v173 = v109;
        v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v92 = [v108 errorWithDomain:@"com.apple.gputools.urlaccessprovider" code:2 userInfo:v110];

        handlerCopy[2](handlerCopy, 0, v92);
        v19 = v119;
        v99 = v138;
      }
    }

    else
    {
      identifierCopy = v127;
      if (v133 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        path2 = [v93 path];
        v101 = selfCopy->_deviceUDID;
        v144[0] = MEMORY[0x277D85DD0];
        v144[1] = 3221225472;
        v144[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke_115;
        v144[3] = &unk_2796618E8;
        v145 = handlerCopy;
        v99 = v138;
        [(GTFileWriterServiceXPCProxy *)v132 startTransfer:v44 basePath:path2 fromDevice:v101 options:v138 completionHandler:v144];

        v102 = v145;
      }

      else
      {
        path3 = [v93 path];
        v106 = selfCopy->_deviceUDID;
        v141[0] = MEMORY[0x277D85DD0];
        v141[1] = 3221225472;
        v141[2] = __89__GTURLAccessProvider_copyIdentifier_toDevice_allowLocalURL_directory_completionHandler___block_invoke_2;
        v141[3] = &unk_279661910;
        v143 = handlerCopy;
        v142 = v93;
        v99 = v138;
        [(GTFileWriterServiceXPCProxy *)v132 initiateTransfer:v44 basePath:path3 fromDevice:v106 options:v138 completionHandler:v141];

        v102 = v143;
      }

      v92 = v140;
    }

    v24 = v129;
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v92);
    directoryCopy = v40;
    identifierCopy = v127;
  }

  v38 = v132;
LABEL_92:

LABEL_93:
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_ERROR, "Failed to transfer archive, %@", v4, 0xCu);
}

void __72__GTURLAccessProvider_securityScopedURLFromSandboxID_completionHandler___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_24DBC9000, v1, OS_LOG_TYPE_DEBUG, "copyIdentifier %@ to device %@", v2, 0x16u);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyIdentifier:toDevice:allowLocalURL:directory:completionHandler:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end