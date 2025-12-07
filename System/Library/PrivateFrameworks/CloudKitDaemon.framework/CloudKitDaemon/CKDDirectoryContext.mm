@interface CKDDirectoryContext
+ (id)daemonDatabaseDirectoryName;
- (CKDDirectoryContext)initWithContainer:(id)container;
- (CKDDirectoryContext)initWithTestRootDirectory:(id)directory;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (id)applicationCachesDirectoryForDataContainerDirectory:(id)directory usingHomeCachesDirectory:(BOOL)cachesDirectory;
@end

@implementation CKDDirectoryContext

+ (id)daemonDatabaseDirectoryName
{
  if (*MEMORY[0x277CBC820] != -1)
  {
    dispatch_once(MEMORY[0x277CBC820], &unk_28385E880);
  }

  if (*MEMORY[0x277CBC818] != 1)
  {
    objc_msgSend_stringByAppendingString_(@"cloudd_db", a2, @"_debug");
    goto LABEL_6;
  }

  if (CKIsRunningInTestHost())
  {
    objc_msgSend_stringByAppendingString_(@"cloudd_db", v2, @"_test_host");
    v3 = LABEL_6:;
    goto LABEL_8;
  }

  v3 = @"cloudd_db";
LABEL_8:

  return v3;
}

- (CKDDirectoryContext)initWithContainer:(id)container
{
  v210 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v205.receiver = self;
  v205.super_class = CKDDirectoryContext;
  v7 = [(CKDDirectoryContext *)&v205 init];
  if (v7)
  {
    v8 = objc_msgSend_containerID(containerCopy, v5, v6);
    v9 = *(v7 + 1);
    *(v7 + 1) = v8;

    v12 = objc_msgSend_containerIdentifier(*(v7 + 1), v10, v11);
    v13 = *(v7 + 3);
    *(v7 + 3) = v12;

    v16 = objc_msgSend_applicationBundleID(containerCopy, v14, v15);
    v17 = objc_alloc(MEMORY[0x277CC1E50]);
    v204 = 0;
    v19 = objc_msgSend_initWithBundleIdentifier_error_(v17, v18, v16, &v204);
    v22 = v204;
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v207 = v16;
        v208 = 2112;
        v209 = v22;
        _os_log_impl(&dword_22506F000, v23, OS_LOG_TYPE_INFO, "Bundle ID %@ doesn't belong to an extension: %@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v24 = objc_msgSend_containingBundleRecord(v19, v20, v21);
      v27 = objc_msgSend_bundleIdentifier(v24, v25, v26);

      v16 = v27;
    }

    v28 = objc_alloc(MEMORY[0x277CC1E70]);
    v203 = v22;
    v30 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v28, v29, v16, 0, &v203);
    v200 = v203;

    if (v19)
    {
      v31 = v19;
    }

    else
    {
      v31 = v30;
    }

    v32 = v31;
    v199 = v30;
    v35 = objc_msgSend_applicationState(v30, v33, v34);
    isInstalled = objc_msgSend_isInstalled(v35, v36, v37);

    if (isInstalled)
    {
      v41 = objc_msgSend_dataContainerURL(v32, v39, v40);
    }

    else
    {
      v41 = 0;
    }

    v198 = v32;
    v201 = objc_msgSend_applicationCachesDirectoryForDataContainerDirectory_usingHomeCachesDirectory_(v7, v39, v41, 0);
    v44 = objc_msgSend_applicationBundleID(containerCopy, v42, v43);
    v47 = objc_msgSend_personaID(containerCopy, v45, v46);

    if (v47)
    {
      v50 = objc_msgSend_personaID(containerCopy, v48, v49);
      v52 = objc_msgSend_stringByAppendingString_(v44, v51, v50);

      v44 = v52;
    }

    v53 = objc_msgSend_stringByAppendingString_(v44, v48, *(v7 + 3));

    objc_msgSend_environment(*(v7 + 1), v54, v55);
    v56 = CKContainerEnvironmentString();
    v58 = objc_msgSend_stringByAppendingString_(v53, v57, v56);

    v61 = objc_msgSend_accountOverrideInfo(containerCopy, v59, v60);
    v64 = objc_msgSend_accountID(v61, v62, v63);

    v67 = objc_msgSend_accountOverrideInfo(containerCopy, v65, v66);
    v70 = v67;
    if (v64)
    {
      v71 = objc_msgSend_accountID(v67, v68, v69);
    }

    else
    {
      v73 = objc_msgSend_altDSID(v67, v68, v69);

      if (!v73)
      {
LABEL_22:
        v202 = v41;
        if (*MEMORY[0x277CBC810] == 1)
        {
          v80 = objc_msgSend_options(containerCopy, v74, v75);
          v83 = objc_msgSend_fakeEntitlements(v80, v81, v82);
          v86 = objc_msgSend_count(v83, v84, v85);

          if (v86)
          {
            v87 = MEMORY[0x277CCAAA0];
            v88 = objc_msgSend_options(containerCopy, v74, v75);
            v91 = objc_msgSend_fakeEntitlements(v88, v89, v90);
            v93 = objc_msgSend_dataWithJSONObject_options_error_(v87, v92, v91, 0, 0);

            if (v93 && (v94 = objc_alloc(MEMORY[0x277CCACA8]), (v96 = objc_msgSend_initWithData_encoding_(v94, v95, v93, 4)) != 0))
            {
              v98 = v96;
              v99 = 0;
              v100 = v96;
              objc_msgSend_stringByAppendingString_(v58, v97, v96);
            }

            else
            {
              v99 = 1;
              v100 = CKShortRandomID();
              v98 = 0;
              objc_msgSend_stringByAppendingString_(v58, v101, v100);
            }
            v102 = ;

            if (v99)
            {
            }

            v58 = v102;
            v41 = v202;
          }
        }

        v103 = objc_msgSend_CKSafeHashStringForPathComponent(v58, v74, v75);
        objc_storeStrong(v7 + 2, v103);
        v106 = objc_msgSend_deviceContext(containerCopy, v104, v105);
        v109 = objc_msgSend_testDevice(v106, v107, v108);

        if (v109)
        {
          v197 = v16;
          v112 = objc_msgSend_deviceContext(containerCopy, v110, v111);
          v115 = objc_msgSend_testDevice(v112, v113, v114);
          v118 = objc_msgSend_daemonServer(v115, v116, v117);
          v121 = objc_msgSend_dataDirectory(v118, v119, v120);

          v124 = objc_msgSend_deviceContext(containerCopy, v122, v123);
          v127 = objc_msgSend_testDevice(v124, v125, v126);
          v130 = objc_msgSend_deviceID(v127, v128, v129);
          v132 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v131, v130, 1);

          v135 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v133, v134);
          objc_msgSend_isDataSeparated(v135, v136, v137);
          v195 = v132;
          v196 = v19;
          if (CKBoolFromCKTernary())
          {
            v140 = MEMORY[0x277CCACA8];
            v141 = objc_msgSend_identifier(v135, v138, v139);
            v143 = objc_msgSend_stringWithFormat_(v140, v142, @"ClientData-%@", v141);
            v144 = v132;
            v145 = v143;
            v147 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v144, v146, v143, 1);
          }

          else
          {
            v147 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v132, v138, @"ClientData", 1);
          }

          v163 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v147, v148, @"cloudd_db", 1);
          v164 = *(v7 + 7);
          *(v7 + 7) = v163;

          v167 = objc_msgSend_applicationBundleID(containerCopy, v165, v166);
          v170 = objc_msgSend_CKSafeStringForPathComponent(v167, v168, v169);
          v172 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v147, v171, v170, 1);

          if (v202)
          {
            objc_storeStrong(v7 + 4, v172);
          }

          v174 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v172, v173, v103, 1);
          v175 = *(v7 + 5);
          *(v7 + 5) = v174;

          v177 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v172, v176, @"Caches", 1);
          v179 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v177, v178, v103, 1);
          v180 = *(v7 + 6);
          *(v7 + 6) = v179;

          v19 = v196;
          v16 = v197;
          v41 = v202;
        }

        else
        {
          if (v41)
          {
            objc_storeStrong(v7 + 4, v41);
            v151 = objc_msgSend_containerDirectory(v7, v149, v150);
            v121 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v151, v152, @"CloudKit", 1);

            v154 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v153, @"cloudd_db", 1);
            v155 = *(v7 + 7);
            *(v7 + 7) = v154;

            v157 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v121, v156, v103, 1);
            v158 = *(v7 + 5);
            *(v7 + 5) = v157;

            v159 = v201;
            v161 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v201, v160, v103, 1);
            v162 = *(v7 + 6);
            *(v7 + 6) = v161;

LABEL_41:
            goto LABEL_42;
          }

          v182 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v201, v110, @"cloudd_db", 1);
          v183 = *(v7 + 7);
          *(v7 + 7) = v182;

          v186 = objc_msgSend_applicationBundleID(containerCopy, v184, v185);
          v189 = objc_msgSend_CKSafeStringForPathComponent(v186, v187, v188);
          v191 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v201, v190, v189, 1);

          v193 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v191, v192, v103, 1);

          v41 = 0;
          v194 = *(v7 + 4);
          *(v7 + 4) = 0;

          objc_storeStrong(v7 + 5, v193);
          v121 = *(v7 + 6);
          *(v7 + 6) = v193;
        }

        v159 = v201;
        goto LABEL_41;
      }

      v70 = objc_msgSend_accountOverrideInfo(containerCopy, v74, v75);
      v71 = objc_msgSend_altDSID(v70, v76, v77);
    }

    v78 = v71;
    v79 = objc_msgSend_stringByAppendingString_(v58, v72, v71);

    v58 = v79;
    goto LABEL_22;
  }

LABEL_42:

  return v7;
}

- (CKDDirectoryContext)initWithTestRootDirectory:(id)directory
{
  directoryCopy = directory;
  v27.receiver = self;
  v27.super_class = CKDDirectoryContext;
  v6 = [(CKDDirectoryContext *)&v27 init];
  v7 = v6;
  if (v6)
  {
    containerIdentifier = v6->_containerIdentifier;
    v6->_containerIdentifier = @"com.apple.test.container";

    v10 = objc_msgSend_applicationCachesDirectoryForDataContainerDirectory_usingHomeCachesDirectory_(v7, v9, directoryCopy, 0);
    objc_storeStrong(&v7->_containerDirectory, directory);
    v13 = objc_msgSend_containerDirectory(v7, v11, v12);
    v15 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v13, v14, @"CloudKit", 1);
    v17 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v15, v16, @"FakeTestHash", 1);
    containerCloudKitDirectory = v7->_containerCloudKitDirectory;
    v7->_containerCloudKitDirectory = v17;

    v20 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v10, v19, @"FakeTestHash", 1);
    daemonCachesDirectory = v7->_daemonCachesDirectory;
    v7->_daemonCachesDirectory = v20;

    v23 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v7->_daemonCachesDirectory, v22, @"SQLiteDBs", 1);
    daemonDatabaseDirectory = v7->_daemonDatabaseDirectory;
    v7->_daemonDatabaseDirectory = v23;

    dataSeparationHash = v7->_dataSeparationHash;
    v7->_dataSeparationHash = @"test";
  }

  return v7;
}

- (id)applicationCachesDirectoryForDataContainerDirectory:(id)directory usingHomeCachesDirectory:(BOOL)cachesDirectory
{
  cachesDirectoryCopy = cachesDirectory;
  v29 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v8 = directoryCopy;
  if (directoryCopy)
  {
    v9 = objc_msgSend_path(directoryCopy, v6, v7);
    v11 = objc_msgSend_stringByAppendingPathComponent_(v9, v10, @"Library");
    v13 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, @"Caches");
  }

  else
  {
    if (cachesDirectoryCopy)
    {
      CKGetPersonaAwareHomeCacheDirectory(0, v6, v7);
    }

    else
    {
      CKGetPersonaAwareCacheDirectory(0, v6, v7);
    }
    v9 = ;
    v13 = objc_msgSend_stringByDeletingLastPathComponent(v9, v14, v15);
  }

  v16 = CKGetRealPath();

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v23 = v17;
    v26 = objc_msgSend_CKSanitizedPath(v16, v24, v25);
    v27 = 138412290;
    v28 = v26;
    _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Got caches path: %@", &v27, 0xCu);
  }

  v19 = objc_msgSend_stringByAppendingPathComponent_(v16, v18, @"CloudKit");

  v21 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v20, v19, 1);

  return v21;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  v33[2] = *MEMORY[0x277D85DE8];
  v32[0] = @"containerCloudKitDirectory";
  v6 = objc_msgSend_containerCloudKitDirectory(self, a2, public, private, expand);
  v9 = objc_msgSend_CKSanitizedPath(v6, v7, v8);
  v32[1] = @"daemonCachesDirectory";
  v33[0] = v9;
  v12 = objc_msgSend_daemonCachesDirectory(self, v10, v11);
  v15 = objc_msgSend_CKSanitizedPath(v12, v13, v14);
  v33[1] = v15;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v33, v32, 2);

  v20 = objc_msgSend_containerDirectory(self, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_mutableCopy(v17, v21, v22);

    v26 = objc_msgSend_containerDirectory(self, v24, v25);
    v29 = objc_msgSend_CKSanitizedPath(v26, v27, v28);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v30, v29, @"containerDirectory");

    v17 = v23;
  }

  return v17;
}

@end