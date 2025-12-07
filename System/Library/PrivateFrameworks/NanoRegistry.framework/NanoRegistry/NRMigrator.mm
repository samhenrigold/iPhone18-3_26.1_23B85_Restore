@interface NRMigrator
+ (id)migrationDataPreRestoreForConsentedDevices:(id)devices;
+ (id)sharedMigrator;
+ (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)devices;
- (BOOL)migrationIsAvailable;
- (NSArray)devicesExpectedToBeMigratableAfterRestore;
- (NSArray)migratableDevices;
- (NSArray)migratableDevicesRequiringConsent;
- (id)UDIDUUID;
- (id)devicesFromMigrationConsentRequestData:(id)data;
- (id)lastMigrationRequestPhoneName;
- (id)migrationConsentRequestData;
- (void)beginMigrationWithDevice:(id)device passcode:(id)passcode withBlock:(id)block;
- (void)beginMigrationWithDevice:(id)device withCompletion:(id)completion;
- (void)isPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion;
- (void)setMigrationConsented:(BOOL)consented forDevice:(id)device withBlock:(id)block;
- (void)setMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block;
@end

@implementation NRMigrator

+ (id)sharedMigrator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__NRMigrator_sharedMigrator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6F0A58 != -1)
  {
    dispatch_once(&qword_1ED6F0A58, block);
  }

  v2 = qword_1ED6F0A50;

  return v2;
}

uint64_t __28__NRMigrator_sharedMigrator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6F0A50;
  qword_1ED6F0A50 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)UDIDUUID
{
  if (self)
  {
    v1 = MGCopyAnswer();
    v2 = [v1 dataUsingEncoding:4];
    nRSHA256 = [v2 NRSHA256];

    v4 = [nRSHA256 subdataWithRange:{0, 16}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)devicesFromMigrationConsentRequestData:(id)data
{
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "devicesFromMigrationConsentRequestData called", buf, 2u);
    }
  }

  *buf = 0;
  v53 = buf;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__2;
  v56 = __Block_byref_object_dispose__2;
  v57 = 0;
  v7 = dataCopy;
  if (dataCopy)
  {
    v41 = [[NRPBCompressedData alloc] initWithData:dataCopy];
    if ([(NRPBCompressedData *)v41 compressed])
    {
      v8 = malloc_type_malloc(0x2000uLL, 0x100004077774924uLL);
      if (!v8)
      {
LABEL_32:

        v7 = *(v53 + 5);
        goto LABEL_33;
      }

      possiblyCompressedData = [(NRPBCompressedData *)v41 possiblyCompressedData];
      v10 = possiblyCompressedData;
      bytes = [possiblyCompressedData bytes];
      possiblyCompressedData2 = [(NRPBCompressedData *)v41 possiblyCompressedData];
      v13 = compression_decode_buffer(v8, 0x2000uLL, bytes, [possiblyCompressedData2 length], 0, COMPRESSION_ZLIB);

      if (v13)
      {
        possiblyCompressedData3 = [MEMORY[0x1E695DEF0] dataWithBytes:v8 length:v13];
      }

      else
      {
        possiblyCompressedData3 = 0;
      }

      free(v8);
    }

    else
    {
      possiblyCompressedData3 = [(NRPBCompressedData *)v41 possiblyCompressedData];
    }

    if (possiblyCompressedData3)
    {
      v39 = [[NRPBMigrationDevices alloc] initWithData:possiblyCompressedData3];
      if (!-[NRPBMigrationDevices hasPhoneUDIDHash](v39, "hasPhoneUDIDHash") || (-[NRPBMigrationDevices phoneUDIDHash](v39, "phoneUDIDHash"), v14 = objc_claimAutoreleasedReturnValue(), -[NRMigrator UDIDUUID](self), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 isEqual:v15], v15, v14, (v16 & 1) == 0))
      {
        v43 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        devices = [(NRPBMigrationDevices *)v39 devices];
        v18 = [devices countByEnumeratingWithState:&v48 objects:v59 count:16];
        if (v18)
        {
          v19 = *v49;
          obj = devices;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v48 + 1) + 8 * i);
              v22 = [v21 iD];
              if (v22)
              {
                name = [v21 name];
                if (name)
                {
                  advertisedName = [v21 advertisedName];
                  v25 = advertisedName == 0;

                  if (!v25)
                  {
                    v58[0] = 0;
                    v58[1] = 0;
                    v26 = [v21 iD];
                    [v26 getBytes:v58 length:16];

                    v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v58];
                    name2 = [v21 name];
                    advertisedName2 = [v21 advertisedName];
                    v30 = objc_opt_new();
                    v31 = [[NRMutableDeviceProperty alloc] initWithValue:v27];
                    [v30 setObject:v31 forKeyedSubscript:@"pairingID"];
                    v32 = [[NRMutableDeviceProperty alloc] initWithValue:name2];
                    [v30 setObject:v32 forKeyedSubscript:@"name"];
                    v33 = [[NRMutableDeviceProperty alloc] initWithValue:advertisedName2];
                    [v30 setObject:v33 forKeyedSubscript:@"advertisedName"];
                    [v43 setObject:v30 forKeyedSubscript:v27];
                  }
                }

                else
                {
                }
              }
            }

            devices = obj;
            v18 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
          }

          while (v18);
        }

        v34 = [[NRPairedDeviceRegistry alloc] initWithBoost:0 disconnected:1];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke;
        v46[3] = &unk_1E86DC378;
        v35 = v43;
        v47 = v35;
        [(NRRegistry *)v34 deasyncGrabRegistryWithWriteBlock:v46];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke_2;
        v45[3] = &unk_1E86DC108;
        v45[4] = buf;
        [(NRPairedDeviceRegistry *)v34 threadIsBlockedWaitingOn_nanoregistryd_syncGrabLegacyRegistryWithBlock:v45];
        if (![*(v53 + 5) count])
        {
          v36 = *(v53 + 5);
          *(v53 + 5) = 0;
        }
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v37 = v7;
  _Block_object_dispose(buf, 8);

  return v37;
}

id __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [NRMutableDeviceCollection diffFrom:v2 to:*(a1 + 32)];

  return v3;
}

uint64_t __53__NRMigrator_devicesFromMigrationConsentRequestData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 allValues];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x1EEE66BB8](v5, v7);
}

- (id)migrationConsentRequestData
{
  v93 = *MEMORY[0x1E69E9840];
  v2 = nr_framework_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = nr_framework_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0ADF000, v4, OS_LOG_TYPE_DEFAULT, "migrationConsentRequestData called", buf, 2u);
    }
  }

  devicesExpectedToBeMigratableAfterRestore = [(NRMigrator *)self devicesExpectedToBeMigratableAfterRestore];
  v6 = devicesExpectedToBeMigratableAfterRestore;
  if (self && (v85 = 0u, v86 = 0u, v83 = 0u, v84 = 0u, (v7 = [devicesExpectedToBeMigratableAfterRestore countByEnumeratingWithState:&v83 objects:buf count:16]) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = *v84;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v84 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v83 + 1) + 8 * i);
        v13 = nr_framework_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        if (v14)
        {
          v15 = nr_framework_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v87 = 0;
            _os_log_impl(&dword_1E0ADF000, v15, OS_LOG_TYPE_DEFAULT, "NRDevice found", v87, 2u);
          }
        }

        if ([v12 canMigrate])
        {
          v16 = nr_framework_log();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

          if (v17)
          {
            v18 = nr_framework_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v87 = 0;
              _os_log_impl(&dword_1E0ADF000, v18, OS_LOG_TYPE_DEFAULT, "NRDevice supports migration", v87, 2u);
            }
          }

          v19 = objc_opt_new();
          *v87 = 0;
          v88 = 0;
          v20 = [v12 valueForProperty:@"pairingID"];
          [v20 getUUIDBytes:v87];

          v21 = [MEMORY[0x1E695DEF0] dataWithBytes:v87 length:16];
          [v19 setID:v21];

          v22 = [v12 valueForProperty:@"name"];
          [v19 setName:v22];

          v23 = [v12 valueForProperty:@"advertisedName"];
          [v19 setAdvertisedName:v23];

          if (!v9)
          {
            v24 = nr_framework_log();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

            if (v25)
            {
              v26 = nr_framework_log();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *v82 = 0;
                _os_log_impl(&dword_1E0ADF000, v26, OS_LOG_TYPE_DEFAULT, "protobuf created", v82, 2u);
              }
            }

            v9 = objc_opt_new();
          }

          [v9 addDevices:v19];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v83 objects:buf count:16];
    }

    while (v8);
    if (v9)
    {
      uDIDUUID = [(NRMigrator *)self UDIDUUID];
      [v9 setPhoneUDIDHash:uDIDUUID];
    }
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    data5 = 0;
    goto LABEL_73;
  }

  v29 = 0;
  v30 = 0;
  *&v28 = 67109120;
  v77 = v28;
  v78 = v9;
  do
  {
    v81 = v30;
    v31 = v9;
    if (self)
    {
      v33 = nr_framework_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v35 = nr_framework_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          data = [v31 data];
          v37 = [data length];
          *buf = v77;
          v90 = v37;
          _os_log_impl(&dword_1E0ADF000, v35, OS_LOG_TYPE_DEFAULT, "%d bytes of protobuf created", buf, 8u);
        }
      }

      v38 = objc_opt_new();
      data2 = [v31 data];
      bytes = [data2 bytes];

      data3 = [v31 data];
      v42 = [data3 length];

      v43 = malloc_type_malloc(v42, 0x100004077774924uLL);
      v44 = v43;
      if (v43 && (v45 = compression_encode_buffer(v43, v42, bytes, v42, 0, COMPRESSION_ZLIB)) != 0)
      {
        v46 = v45;
        v47 = nr_framework_log();
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

        if (v48)
        {
          v49 = nr_framework_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v77;
            v90 = v46;
            _os_log_impl(&dword_1E0ADF000, v49, OS_LOG_TYPE_DEFAULT, "data compressed! It is now only %d bytes", buf, 8u);
          }
        }

        [v38 setCompressed:{1, v77}];
        v50 = [MEMORY[0x1E695DEF0] dataWithBytes:v44 length:v46];
        [v38 setPossiblyCompressedData:v50];
      }

      else
      {
        v51 = nr_framework_log();
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

        if (v52)
        {
          v53 = nr_framework_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E0ADF000, v53, OS_LOG_TYPE_DEFAULT, "data did not compress. Bummer.", buf, 2u);
          }
        }

        [v38 setCompressed:{0, v77}];
        data4 = [v31 data];
        [v38 setPossiblyCompressedData:data4];

        if (!v44)
        {
          goto LABEL_53;
        }
      }

      free(v44);
LABEL_53:
      data5 = [v38 data];

      goto LABEL_54;
    }

    data5 = 0;
LABEL_54:

    if ([data5 length] < 0x201)
    {
      break;
    }

    v79 = data5;
    v55 = v81;
    if (!self)
    {
      goto LABEL_70;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    devices = [v31 devices];
    v57 = [devices countByEnumeratingWithState:&v83 objects:buf count:16];
    if (!v57)
    {
      goto LABEL_69;
    }

    v58 = v57;
    v59 = *v84;
    do
    {
      v60 = 0;
      do
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(devices);
        }

        v61 = *(*(&v83 + 1) + 8 * v60);
        name = [v61 name];
        v63 = [name length];
        v64 = name;
        if (v63 < 0x15)
        {
          goto LABEL_64;
        }

        v65 = v63 - v63 / 3;
        v66 = malloc_type_malloc(2 * v65, 0x68F83E02uLL);
        if (v66)
        {
          v67 = v66;
          [name getCharacters:v66 range:{0, v65}];
          v64 = [MEMORY[0x1E696AEC0] stringWithCharacters:v67 length:v65];

          free(v67);
LABEL_64:
          v68 = v64;
          v69 = v68;
          goto LABEL_65;
        }

        v69 = 0;
        v68 = name;
LABEL_65:

        [v61 setName:v69];
        ++v60;
      }

      while (v58 != v60);
      v70 = [devices countByEnumeratingWithState:&v83 objects:buf count:16];
      v58 = v70;
    }

    while (v70);
LABEL_69:

    v55 = v81;
LABEL_70:
    v30 = v55 + 1;
    v9 = v78;
    data5 = v79;
    v29 = v79;
  }

  while (v30 != 10);
LABEL_73:
  if ([data5 length] > 0x200)
  {
    v72 = nr_framework_log();
    v73 = os_log_type_enabled(v72, OS_LOG_TYPE_ERROR);

    if (v73)
    {
      v74 = nr_framework_log();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v76 = [data5 length];
        *buf = 67109376;
        v90 = 512;
        v91 = 2048;
        v92 = v76;
        _os_log_error_impl(&dword_1E0ADF000, v74, OS_LOG_TYPE_ERROR, "migrationConsentRequestData called- could not squish protobuf data to %d bytes (it's %ld bytes). Not returning any data!", buf, 0x12u);
      }
    }

    v71 = 0;
  }

  else
  {
    v71 = data5;
  }

  return v71;
}

- (BOOL)migrationIsAvailable
{
  migratableDevices = [(NRMigrator *)self migratableDevices];
  v3 = migratableDevices != 0;

  return v3;
}

- (NSArray)devicesExpectedToBeMigratableAfterRestore
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getDevicesMatching:&__block_literal_global_642];

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __55__NRMigrator_devicesExpectedToBeMigratableAfterRestore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isPaired"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 canMigrate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)migratableDevicesRequiringConsent
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getAllDevicesWithArchivedDevicesMatching:&__block_literal_global_644];

  v5 = [MEMORY[0x1E695DFA8] setWithArray:v4];
  v6 = MEMORY[0x1E695DFD8];
  migratableDevices = [(NRMigrator *)self migratableDevices];
  v8 = [v6 setWithArray:migratableDevices];

  [v5 minusSet:v8];
  allObjects = [v5 allObjects];
  if ([allObjects count])
  {
    v10 = allObjects;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __47__NRMigrator_migratableDevicesRequiringConsent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isArchived"];
  if ([v3 BOOLValue])
  {
    v4 = [v2 valueForProperty:@"isAltAccount"];
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)migratableDevices
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getAllDevicesWithArchivedDevicesMatching:&__block_literal_global_648];

  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL __31__NRMigrator_migratableDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 valueForProperty:@"isAltAccount"];
  if ([v3 BOOLValue])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 valueForProperty:@"isArchived"];
    if ([v5 BOOLValue])
    {
      v6 = [v2 valueForProperty:@"migrationConsent"];
      if ([v6 BOOLValue])
      {
        v7 = [v2 valueForProperty:@"migrationConsentDate"];
        v8 = v7;
        if (v7)
        {
          [v7 timeIntervalSinceNow];
          v4 = v9 >= -86400.0 && v9 <= 0.0;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)migrationDataPreRestoreForConsentedDevices:(id)devices
{
  v36 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = [devicesCopy count];
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "Generating pre-restore migration data blob for (%lu) devices", buf, 0xCu);
    }
  }

  v7 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = devicesCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        pairingID = [*(*(&v27 + 1) + 8 * i) pairingID];
        uUIDString = [pairingID UUIDString];

        [v7 addObject:uUIDString];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v10);
  }

  v26 = 0;
  v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v26];
  v16 = v26;
  v17 = nr_framework_log();
  v18 = v17;
  if (v16)
  {
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

    if (v19)
    {
      v20 = nr_framework_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = v16;
        v33 = 2112;
        v34 = v7;
        _os_log_error_impl(&dword_1E0ADF000, v20, OS_LOG_TYPE_ERROR, "Failed to serialize with error (%@) device IDs: (%@)", buf, 0x16u);
      }
    }

    v21 = 0;
  }

  else
  {
    v22 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = nr_framework_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v15 length];
        *buf = 134217984;
        v32 = v24;
        _os_log_impl(&dword_1E0ADF000, v23, OS_LOG_TYPE_DEFAULT, "Generated pre-restore migration data blob of length (%lu bytes)", buf, 0xCu);
      }
    }

    v21 = v15;
  }

  return v21;
}

+ (void)ingestPostRestoreMigrationDataForConsentedDevices:(id)devices
{
  v53 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v4 = nr_framework_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v50 = [devicesCopy length];
      _os_log_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_DEFAULT, "Ingesting post-restore migration data blob of length (%lu bytes)", buf, 0xCu);
    }
  }

  if ([devicesCopy length])
  {
    v47 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithData:devicesCopy options:0 format:0 error:&v47];
    v8 = v47;
    if (v8)
    {
      v9 = nr_framework_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_10;
      }

      v11 = nr_framework_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 138412546;
      v50 = v8;
      v51 = 2112;
      v52 = devicesCopy;
      v33 = "Failed to unserialize with error (%@) pre-restore data : (%@)";
      v34 = v11;
      v35 = 22;
      goto LABEL_45;
    }

    if (!v7)
    {
      v31 = nr_framework_log();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
        goto LABEL_10;
      }

      v11 = nr_framework_log();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v33 = "Unserialization returned nil object without error";
      v34 = v11;
      v35 = 2;
LABEL_45:
      _os_log_error_impl(&dword_1E0ADF000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v7;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v13)
      {
        goto LABEL_35;
      }

      v14 = v13;
      v15 = *v44;
      while (1)
      {
        v16 = 0;
        do
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v43 + 1) + 8 * v16);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
            if (v18)
            {
              v19 = +[NRMigrator sharedMigrator];
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __64__NRMigrator_ingestPostRestoreMigrationDataForConsentedDevices___block_invoke;
              v41[3] = &unk_1E86DC3A0;
              v42 = v18;
              [v19 setMigrationConsented:1 forDeviceID:v42 withBlock:v41];

              v20 = v42;
            }

            else
            {
              v26 = nr_framework_log();
              v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

              if (!v27)
              {
                v18 = 0;
                goto LABEL_28;
              }

              v20 = nr_framework_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v50 = v17;
                v24 = v20;
                v25 = "Failed to convert unserialized deviceID (%@) into a UUID";
LABEL_33:
                _os_log_error_impl(&dword_1E0ADF000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
              }
            }

            goto LABEL_28;
          }

          v21 = nr_framework_log();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

          if (!v22)
          {
            goto LABEL_29;
          }

          v18 = nr_framework_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = 138412290;
            v50 = v23;
            v20 = v23;
            v24 = v18;
            v25 = "Unserialization deviceID not a string: (%@)";
            goto LABEL_33;
          }

LABEL_28:

LABEL_29:
          ++v16;
        }

        while (v14 != v16);
        v28 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
        v14 = v28;
        if (!v28)
        {
LABEL_35:

          v29 = nr_framework_log();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

          v7 = v40;
          if (v30)
          {
            v11 = nr_framework_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_DEFAULT, "Ingesting post-restore migration data complete", buf, 2u);
            }

            goto LABEL_9;
          }

          goto LABEL_10;
        }
      }
    }

    v36 = nr_framework_log();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);

    if (v37)
    {
      v11 = nr_framework_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        *buf = 138412290;
        v50 = v38;
        v39 = v38;
        _os_log_error_impl(&dword_1E0ADF000, v11, OS_LOG_TYPE_ERROR, "Unserialized root object not an array (%@)", buf, 0xCu);
      }

LABEL_9:
    }

LABEL_10:
  }
}

void __64__NRMigrator_ingestPostRestoreMigrationDataForConsentedDevices___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = nr_framework_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = nr_framework_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v8 = 138412546;
        v9 = v3;
        v10 = 2112;
        v11 = v7;
        _os_log_error_impl(&dword_1E0ADF000, v6, OS_LOG_TYPE_ERROR, "Failed with error: (%@) to apply consent for deviceID: %@", &v8, 0x16u);
      }
    }
  }
}

- (void)setMigrationConsented:(BOOL)consented forDevice:(id)device withBlock:(id)block
{
  consentedCopy = consented;
  blockCopy = block;
  deviceCopy = device;
  v10 = +[NRPairedDeviceRegistry sharedInstance];
  pairingID = [deviceCopy pairingID];

  [v10 setMigrationConsented:consentedCopy forDeviceID:pairingID withBlock:blockCopy];
}

- (void)setMigrationConsented:(BOOL)consented forDeviceID:(id)d withBlock:(id)block
{
  consentedCopy = consented;
  blockCopy = block;
  dCopy = d;
  v9 = +[NRPairedDeviceRegistry sharedInstance];
  [v9 setMigrationConsented:consentedCopy forDeviceID:dCopy withBlock:blockCopy];
}

- (void)beginMigrationWithDevice:(id)device passcode:(id)passcode withBlock:(id)block
{
  blockCopy = block;
  passcodeCopy = passcode;
  deviceCopy = device;
  v10 = +[NRPairedDeviceRegistry sharedInstance];
  [v10 beginMigrationWithDevice:deviceCopy passcode:passcodeCopy withBlock:blockCopy];
}

- (void)beginMigrationWithDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  [v7 beginMigrationWithDevice:deviceCopy withCompletion:completionCopy];
}

- (id)lastMigrationRequestPhoneName
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  lastMigrationRequestPhoneName = [v2 lastMigrationRequestPhoneName];

  return lastMigrationRequestPhoneName;
}

- (void)isPhoneReadyToMigrateDevice:(id)device withCompletion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  v7 = +[NRPairedDeviceRegistry sharedInstance];
  [v7 isPhoneReadyToMigrateDevice:deviceCopy withCompletion:completionCopy];
}

@end