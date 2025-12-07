@interface PersonalizedImage
- (BOOL)initializeDeviceAttributes:(id *)attributes;
- (BOOL)initializeImageProperties:(id *)properties;
- (BOOL)mountImage:(id *)image;
- (BOOL)mountImage:(id)image serverTicket:(id)ticket imageDigest:(id)digest trustCacheURL:(id)l error:(id *)error;
- (PersonalizedImage)initWithBundleURL:(id)l imageVariant:(id)variant remoteDevice:(id)device options:(id)options;
- (id)digestFile:(id)file digestLength:(unsigned int)length error:(id *)error;
- (id)digestFileSha1:(id)sha1 error:(id *)error;
- (id)digestFileSha384:(id)sha384 error:(id *)error;
- (void)dealloc;
@end

@implementation PersonalizedImage

- (PersonalizedImage)initWithBundleURL:(id)l imageVariant:(id)variant remoteDevice:(id)device options:(id)options
{
  lCopy = l;
  variantCopy = variant;
  deviceCopy = device;
  optionsCopy = options;
  if (!variantCopy)
  {
LABEL_26:
    selfCopy = 0;
    goto LABEL_27;
  }

  v45.receiver = self;
  v45.super_class = PersonalizedImage;
  self = [(PersonalizedImage *)&v45 init];
  if (self)
  {
    v14 = [lCopy copy];
    bundlePathURL = self->_bundlePathURL;
    self->_bundlePathURL = v14;

    v16 = [variantCopy copy];
    imageVariant = self->_imageVariant;
    self->_imageVariant = v16;

    objc_storeStrong(&self->_remoteDevice, device);
    self->_digestLength = 48;
    self->_useCredentials = 1;
    v18 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://gs.apple.com:443"];
    signingServerURL = self->_signingServerURL;
    self->_signingServerURL = v18;

    objc_storeStrong(&self->_imageType, @"Personalized");
    if (optionsCopy)
    {
      v20 = [optionsCopy objectForKeyedSubscript:@"UseCredentials"];
      v21 = v20;
      if (v20)
      {
        v22 = isNSNumber(v20);

        if (v22)
        {
          self->_useCredentials = [v21 BOOLValue];
        }
      }

      v23 = [optionsCopy objectForKeyedSubscript:@"SigningServerURL"];
      v24 = v23;
      if (v23)
      {
        v25 = isNSURL(v23);

        if (v25)
        {
          v26 = [v24 copy];
          v27 = self->_signingServerURL;
          self->_signingServerURL = v26;
        }
      }

      v43 = v21;
      v28 = [optionsCopy objectForKeyedSubscript:@"MountedBundlePath"];
      v29 = v28;
      if (v28)
      {
        v30 = isNSURL(v28);

        if (v30)
        {
          v31 = [v29 copy];
          userProvidedBundleMountPathURL = self->_userProvidedBundleMountPathURL;
          self->_userProvidedBundleMountPathURL = v31;
        }
      }

      v33 = [optionsCopy objectForKeyedSubscript:@"ImagePath"];
      v34 = v33;
      if (v33)
      {
        v35 = isNSURL(v33);

        if (v35)
        {
          v36 = [v34 copy];
          userProvidedImagePathURL = self->_userProvidedImagePathURL;
          self->_userProvidedImagePathURL = v36;
        }
      }

      v38 = [optionsCopy objectForKeyedSubscript:@"UseCryptexFlow"];
      v39 = v38;
      if (v38)
      {
        v40 = isNSNumber(v38);

        if (v40)
        {
          objc_storeStrong(&self->_imageType, @"Cryptex");
        }
      }
    }

    if (!lCopy && !self->_userProvidedBundleMountPathURL && !self->_userProvidedImagePathURL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
      }

      goto LABEL_26;
    }
  }

  self = self;
  selfCopy = self;
LABEL_27:

  return selfCopy;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PersonalizedImage;
  [(PersonalizedImage *)&v2 dealloc];
}

- (id)digestFileSha1:(id)sha1 error:(id *)error
{
  sha1Copy = sha1;
  v9 = sha1Copy;
  memset(&c, 0, sizeof(c));
  if (!sha1Copy)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 377, -2, 0, @"Invalid inputs.", v6, v7, v8, v27);
    v12 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CCA9F8];
  path = [sha1Copy path];
  v12 = [v10 fileHandleForReadingAtPath:path];

  if (!v12)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 383, -2, 0, @"Failed to create file handle for %@.", v13, v14, v15, v9);
    goto LABEL_9;
  }

  CC_SHA1_Init(&c);
  v19 = malloc_type_malloc(0x14uLL, 0x9E43C831uLL);
  if (v19)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [v12 readDataOfLength:1024];
      CC_SHA1_Update(&c, [v21 bytes], objc_msgSend(v21, "length"));
      v22 = [v21 length];

      objc_autoreleasePoolPop(v20);
    }

    while (v22);
    CC_SHA1_Final(v19, &c);
    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:20];
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v24 = createMobileStorageError("[PersonalizedImage digestFileSha1:error:]", 391, -2, 0, @"Failed to allocate digest memory.", v16, v17, v18, v27);
LABEL_10:
  v23 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v23)
  {
    v25 = v24;
    *error = v24;
  }

LABEL_13:
  if (v19)
  {
    free(v19);
  }

  return v23;
}

- (id)digestFileSha384:(id)sha384 error:(id *)error
{
  sha384Copy = sha384;
  v9 = sha384Copy;
  memset(&c, 0, sizeof(c));
  if (!sha384Copy)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 428, -2, 0, @"Invalid inputs.", v6, v7, v8, v28);
    v12 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CCA9F8];
  path = [sha384Copy path];
  v12 = [v10 fileHandleForReadingAtPath:path];

  if (!v12)
  {
    v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 434, -2, 0, @"Failed to create file handle for %@.", v13, v14, v15, v9);
    goto LABEL_9;
  }

  CC_SHA384_Init(&c);
  v19 = malloc_type_malloc(0x30uLL, 0x152E8B13uLL);
  if (v19)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = [v12 readDataOfLength:1024];
      CC_SHA384_Update(&c, [v21 bytes], objc_msgSend(v21, "length"));
      v22 = [v21 length];

      objc_autoreleasePoolPop(v20);
    }

    while (v22);
    CC_SHA384_Final(v19, &c);
    v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v19 length:48];
    v24 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v24 = createMobileStorageError("[PersonalizedImage digestFileSha384:error:]", 442, -2, 0, @"Failed to allocate digest memory.", v16, v17, v18, v28);
LABEL_10:
  v23 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v23)
  {
    v25 = v24;
    *error = v24;
  }

LABEL_13:
  if (v19)
  {
    free(v19);
  }

  v26 = v23;

  return v26;
}

- (id)digestFile:(id)file digestLength:(unsigned int)length error:(id *)error
{
  v6 = *&length;
  fileCopy = file;
  if (v6 == 48)
  {
    v12 = [(PersonalizedImage *)self digestFileSha384:fileCopy error:error];
    goto LABEL_5;
  }

  if (v6 == 20)
  {
    v12 = [(PersonalizedImage *)self digestFileSha1:fileCopy error:error];
LABEL_5:
    v13 = v12;
    goto LABEL_9;
  }

  if (error)
  {
    createMobileStorageError("[PersonalizedImage digestFile:digestLength:error:]", 481, -3, 0, @"Unsupported digest length: %d", v8, v9, v10, v6);
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_9:

  return v13;
}

- (BOOL)initializeImageProperties:(id *)properties
{
  selfCopy = self;
  v191 = *MEMORY[0x277D85DE8];
  userProvidedImagePathURL = [(PersonalizedImage *)self userProvidedImagePathURL];

  if (userProvidedImagePathURL)
  {
    userProvidedImagePathURL2 = [(PersonalizedImage *)selfCopy userProvidedImagePathURL];
    path = [userProvidedImagePathURL2 path];

    if (path)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
      [(PersonalizedImage *)selfCopy setImagePathURL:v7];

      v8 = 0;
      v9 = 0;
      v170 = 0;
      v172 = 0;
      v10 = 0;
      v175 = 0;
      goto LABEL_4;
    }
  }

  else
  {
    userProvidedBundleMountPathURL = [(PersonalizedImage *)selfCopy userProvidedBundleMountPathURL];

    if (userProvidedBundleMountPathURL)
    {
      v173 = selfCopy;
      userProvidedBundleMountPathURL2 = [(PersonalizedImage *)selfCopy userProvidedBundleMountPathURL];
      path2 = [userProvidedBundleMountPathURL2 path];
      v20 = [path2 copy];

      goto LABEL_20;
    }

    path = [(PersonalizedImage *)selfCopy mountedVolumeEntry];

    if (!path)
    {
      v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 532, -2, 0, @"Bundle mounting not support on this platform.", v51, v52, v53, v165);
      v15 = 0;
      v14 = 0;
      v13 = 0;
      v171 = 0;
      goto LABEL_97;
    }
  }

  v173 = selfCopy;
  v20 = 0;
LABEL_20:
  v54 = MEMORY[0x277CBEAC0];
  v55 = [v20 stringByAppendingPathComponent:@"Restore/BuildManifest.plist"];
  path = [v54 dictionaryWithContentsOfFile:v55];

  v171 = v20;
  if (!path)
  {
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 544, -2, 0, @"Failed to load build manifest.", v56, v57, v58, v165);
    v15 = 0;
    v14 = 0;
    v13 = 0;
LABEL_97:
    v170 = 0;
    v172 = 0;
    v175 = 0;
    obj = 0;
    goto LABEL_101;
  }

  v175 = path;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v59 = [path objectForKeyedSubscript:@"ManifestVersion"];
    *buf = 138412290;
    *&buf[4] = v59;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Manifest Version: %@", buf, 0xCu);

    path = v175;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v60 = [path objectForKeyedSubscript:@"ProductVersion"];
    *buf = 138412290;
    *&buf[4] = v60;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Product Version: %@", buf, 0xCu);

    path = v175;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v61 = [path objectForKeyedSubscript:@"ProductBuildVersion"];
    *buf = 138412290;
    *&buf[4] = v61;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Product Build Version: %@", buf, 0xCu);

    path = v175;
  }

  v62 = [path objectForKeyedSubscript:@"BuildIdentities"];
  path = isNSArray(v62);

  if (!path)
  {
    obj = v62;
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 556, -2, 0, @"Missing key 'BuildIdentities'.", v63, v64, v65, v165);
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v170 = 0;
    v172 = 0;
    goto LABEL_101;
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v66 = v62;
  obj = v66;
  v178 = [v66 countByEnumeratingWithState:&v185 objects:v189 count:16];
  if (!v178)
  {

    v172 = 0;
    v170 = 0;
    v9 = 0;
    goto LABEL_94;
  }

  v9 = 0;
  v170 = 0;
  v172 = 0;
  v168 = 0;
  v177 = *v186;
  do
  {
    v67 = 0;
    do
    {
      if (*v186 != v177)
      {
        objc_enumerationMutation(obj);
      }

      v68 = *(*(&v185 + 1) + 8 * v67);
      *buf = 0;
      v69 = [v68 objectForKeyedSubscript:@"ApBoardID"];
      v70 = isNSString(v69);

      if (!v70)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 577, -3, 0, @"Missing expected key 'ApBoardID'", v71, v72, v73, v165);
        v180 = 0;
        v181 = 0;
        goto LABEL_51;
      }

      v74 = [v68 objectForKeyedSubscript:@"ApChipID"];
      v70 = isNSString(v74);

      v180 = v74;
      if (!v70)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 583, -3, 0, @"Missing expected key 'ApChipID'", v75, v76, v77, v165);
        v181 = 0;
LABEL_51:
        v114 = 0;
        v182 = 0;
LABEL_52:
        v97 = 0;
LABEL_53:
        v102 = 0;
LABEL_54:
        v115 = 0;
        v106 = 0;
LABEL_55:

        v116 = 3;
        goto LABEL_56;
      }

      v78 = [v68 objectForKeyedSubscript:@"ApSecurityDomain"];
      v70 = isNSString(v78);

      v182 = v78;
      if (!v70)
      {
        v179 = v9;
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 589, -3, 0, @"Missing expected key 'ApSecurityDomain'", v79, v80, v81, v165);
        v181 = 0;
LABEL_61:
        v114 = 0;
        goto LABEL_52;
      }

      v70 = [MEMORY[0x277CCAC80] scannerWithString:v69];
      if (![v70 scanHexLongLong:buf] || (v82 = *buf, -[PersonalizedImage boardID](v173, "boardID"), v83 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend(v83, "unsignedLongLongValue"), v83, v82 != v84))
      {
LABEL_59:
        v181 = 0;
        v114 = 0;
        v97 = 0;
        v102 = 0;
        v115 = 0;
        v106 = 0;
        v116 = 4;
        goto LABEL_56;
      }

      v179 = v9;
      v85 = [MEMORY[0x277CCAC80] scannerWithString:v74];

      if ([v85 scanHexLongLong:buf] && (v86 = *buf, -[PersonalizedImage chipID](v173, "chipID"), v87 = objc_claimAutoreleasedReturnValue(), v88 = objc_msgSend(v87, "unsignedLongLongValue"), v87, v86 == v88))
      {
        v70 = [MEMORY[0x277CCAC80] scannerWithString:v78];

        if ([v70 scanHexLongLong:buf])
        {
          v89 = *buf;
          securityDomain = [(PersonalizedImage *)v173 securityDomain];
          unsignedLongLongValue = [securityDomain unsignedLongLongValue];

          v9 = v179;
          if (v89 != unsignedLongLongValue)
          {
            goto LABEL_59;
          }

          v181 = [v68 objectForKeyedSubscript:@"Info"];
          v92 = isNSDictionary(v181);

          if (!v92)
          {
            v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 613, -3, 0, @"Missing expected key 'Info'", v93, v94, v95, v165);
            goto LABEL_61;
          }

          v96 = [v68 objectForKeyedSubscript:@"Manifest"];
          v97 = isNSDictionary(v96);

          if (!v97)
          {
            v114 = v96;
            v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 619, -3, 0, @"Missing expected key 'Manifest'", v98, v99, v100, v165);
            goto LABEL_53;
          }

          v101 = [v96 objectForKeyedSubscript:@"LoadableTrustCache"];
          v102 = v101;
          if (v101)
          {
            v97 = isNSDictionary(v101);

            if (!v97)
            {
              v114 = v96;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 625, -3, 0, @"Invalid value for key 'LoadableTrustCache'", v103, v104, v105, v165);
              goto LABEL_54;
            }

            v106 = [v102 objectForKeyedSubscript:@"Info"];
            v97 = isNSDictionary(v106);

            if (!v97)
            {
              v114 = v96;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 632, -3, 0, @"Missing expected key 'Info'", v107, v108, v109, v165);
              v115 = 0;
              goto LABEL_55;
            }

            v110 = [v106 objectForKeyedSubscript:@"Path"];

            v97 = isNSString(v110);

            if (!v97)
            {
              v114 = v96;
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 638, -3, 0, @"Missing expected key 'Path'", v111, v112, v113, v165);
              v139 = v110;
              v115 = 0;
              v172 = v139;
              goto LABEL_55;
            }

            v172 = v110;
          }

          else
          {
            v106 = 0;
          }

          v97 = [v96 objectForKeyedSubscript:@"PersonalizedDMG"];
          v115 = isNSDictionary(v97);

          if (!v115)
          {
            v114 = v96;
            v136 = 645;
            v137 = @"Missing expected key 'PersonalizedDMG'";
            goto LABEL_81;
          }

          v115 = [v97 objectForKeyedSubscript:@"Name"];
          v120 = isNSString(v115);

          if (!v120)
          {
            v114 = v96;
            v136 = 651;
            v137 = @"Missing expected key 'Name'";
LABEL_81:
            v138 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", v136, -3, 0, v137, v117, v118, v119, v165);
LABEL_82:
            v9 = v138;
            goto LABEL_55;
          }

          imageVariant = [(PersonalizedImage *)v173 imageVariant];
          v166 = [v115 isEqualToString:imageVariant];

          if (v166)
          {
            v122 = [v97 objectForKeyedSubscript:@"Info"];

            v123 = isNSDictionary(v122);

            if (!v123)
            {
              v114 = v96;
              v138 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 658, -3, 0, @"Missing expected key 'Info'", v124, v125, v126, v165);
              v106 = v122;
              goto LABEL_82;
            }

            v167 = v122;
            v127 = [v122 objectForKeyedSubscript:@"HashMethod"];

            v128 = isNSString(v127);
            if (v128)
            {
              v129 = v128;
              v130 = [v127 isEqualToString:@"sha1"];

              if (v130)
              {
                [(PersonalizedImage *)v173 setDigestLength:20];
              }
            }

            v170 = v127;
            v114 = v96;
            v131 = [v167 objectForKeyedSubscript:@"Path"];

            v132 = isNSString(v131);

            if (!v132)
            {
              v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 669, -3, 0, @"Missing expected key 'Path'", v133, v134, v135, v165);
              v168 = v131;
              v106 = v167;
              goto LABEL_55;
            }

            v116 = 3;
            v168 = v131;
            v106 = v167;
          }

          else
          {
            v114 = v96;
            v116 = 0;
          }
        }

        else
        {
          v181 = 0;
          v114 = 0;
          v97 = 0;
          v102 = 0;
          v115 = 0;
          v106 = 0;
          v116 = 4;
        }
      }

      else
      {
        v181 = 0;
        v114 = 0;
        v97 = 0;
        v102 = 0;
        v115 = 0;
        v106 = 0;
        v116 = 4;
        v70 = v85;
      }

      v9 = v179;
LABEL_56:

      if ((v116 | 4) != 4)
      {
        goto LABEL_88;
      }

      ++v67;
    }

    while (v178 != v67);
    v140 = [obj countByEnumeratingWithState:&v185 objects:v189 count:16];
    v178 = v140;
  }

  while (v140);
LABEL_88:

  if (!v168)
  {
LABEL_94:
    imageVariant2 = [(PersonalizedImage *)v173 imageVariant];
    v152 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 678, -2, v9, @"Failed to find image for variant %@.", v149, v150, v151, imageVariant2);

    v15 = 0;
    v14 = 0;
    v13 = 0;
    path = 0;
LABEL_100:
    v9 = v152;
    goto LABEL_101;
  }

  path = [@"Restore" stringByAppendingPathComponent:v168];

  v141 = MEMORY[0x277CBEBC0];
  v8 = v171;
  v142 = [v171 stringByAppendingPathComponent:path];
  v143 = [v141 fileURLWithPath:v142];
  selfCopy = v173;
  [(PersonalizedImage *)v173 setImagePathURL:v143];

  if (v172)
  {
    v144 = [@"Restore" stringByAppendingPathComponent:v172];

    v145 = MEMORY[0x277CBEBC0];
    v146 = [v171 stringByAppendingPathComponent:v144];
    v147 = [v145 fileURLWithPath:v146];
    [(PersonalizedImage *)v173 setTrustCacheURL:v147];

    v172 = v144;
  }

  else
  {
    v172 = 0;
  }

  v10 = obj;
LABEL_4:
  remoteDevice = [(PersonalizedImage *)selfCopy remoteDevice];

  v171 = v8;
  obj = v10;
  if (remoteDevice)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  v174 = selfCopy;
  v14 = copyWorkingDirectory(v12);
  if (!v14)
  {
    v152 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 719, -2, 0, @"Failed to query working directory path.", v21, v22, v23, v165);

    v15 = 0;
LABEL_99:
    v13 = 0;
    goto LABEL_100;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v14 stringByAppendingPathComponent:uUIDString];

  if (!v15)
  {
    v152 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 725, -2, 0, @"Failed to create path.", v26, v27, v28, v165);

    goto LABEL_99;
  }

  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  if (!v13)
  {
    v152 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 731, -2, 0, @"Failed to create URL.", v29, v30, v31, v165);

    goto LABEL_100;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  imagePathURL = [(PersonalizedImage *)v174 imagePathURL];
  v34 = v9;
  v184 = v9;
  v35 = [defaultManager copyItemAtURL:imagePathURL toURL:v13 error:&v184];
  v9 = v184;

  if ((v35 & 1) == 0)
  {
    imagePathURL2 = [(PersonalizedImage *)v174 imagePathURL];
    v156 = v9;
    v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 736, -2, v9, @"Failed to copy %@ to %@.", v157, v158, v159, imagePathURL2);

    goto LABEL_101;
  }

  [(PersonalizedImage *)v174 setImagePathURL:v13];
  trustCacheURL = [(PersonalizedImage *)v174 trustCacheURL];

  if (trustCacheURL)
  {
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v39 = [v14 stringByAppendingPathComponent:uUIDString2];

    v43 = v9;
    if (v39)
    {
      v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];

      if (v44)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        trustCacheURL2 = [(PersonalizedImage *)v174 trustCacheURL];
        v183 = v9;
        v50 = [defaultManager2 copyItemAtURL:trustCacheURL2 toURL:v44 error:&v183];
        v9 = v183;

        if (v50)
        {
          [(PersonalizedImage *)v174 setTrustCacheURL:v44];
          v16 = 1;
          v13 = v44;
          v15 = v39;
          goto LABEL_104;
        }

        trustCacheURL3 = [(PersonalizedImage *)v174 trustCacheURL];
        v164 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 756, -2, v9, @"Failed to copy %@ to %@.", v161, v162, v163, trustCacheURL3);

        v9 = v164;
        v15 = v39;
        v13 = v44;
      }

      else
      {
        v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 751, -2, 0, @"Failed to create URL.", v45, v46, v47, v165);

        v13 = 0;
        v15 = v39;
      }
    }

    else
    {
      v9 = createMobileStorageError("[PersonalizedImage initializeImageProperties:]", 745, -2, 0, @"Failed to create path.", v40, v41, v42, v165);

      v15 = 0;
    }

LABEL_101:
    if (properties)
    {
      v153 = v9;
      v16 = 0;
      *properties = v9;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
LABEL_6:
    v16 = 1;
  }

LABEL_104:

  return v16;
}

- (BOOL)initializeDeviceAttributes:(id *)attributes
{
  v126 = *MEMORY[0x277D85DE8];
  cf = 0;
  memset(v125, 0, sizeof(v125));
  v123 = @"PersonalizedImageType";
  imageVariant = [(PersonalizedImage *)self imageVariant];
  v124 = imageVariant;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];

  remoteDevice = [(PersonalizedImage *)self remoteDevice];

  if (remoteDevice)
  {
    remoteDevice2 = [(PersonalizedImage *)self remoteDevice];
    v9 = MobileStorageRemoteCopyPersonalizationIdentifiersWithError(remoteDevice2, v6, &cf);
  }

  else
  {
    v9 = MobileStorageCopyPersonalizationIdentifiersWithError(v6, &cf);
  }

  v116 = v9;
  if (!v9 && (mobileStorageErrorHasDomainAndErrorCode(cf, @"com.apple.MobileStorage.ErrorDomain", 0xFFFFFFFFFFFFFFFBLL) & 1) == 0)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 816, -2, cf, @"Failed to query personalization identifiers.", v10, v11, v12, v112);
    v119 = 0;
    v120 = 0;
    v24 = 0;
    v117 = 0;
    v121 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v16 = 0;
LABEL_19:
    v34 = 0;
    v35 = 0;
    v118 = 0;
    if (!attributes)
    {
      goto LABEL_40;
    }

LABEL_39:
    v53 = v23;
    attributesCopy = attributes;
    LOBYTE(attributes) = 0;
    *attributesCopy = v23;
    goto LABEL_40;
  }

  remoteDevice3 = [(PersonalizedImage *)self remoteDevice];

  if (remoteDevice3)
  {
    remoteDevice4 = [(PersonalizedImage *)self remoteDevice];
    v15 = copy_remote_device_property();
  }

  else
  {
    v15 = MGCopyAnswer();
  }

  v16 = isNSString(v15);

  v120 = v15;
  if (!v16)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 828, -2, 0, @"Failed to copy value: %@", v17, v18, v19, @"HWModelStr");
    v119 = 0;
    v24 = 0;
    v117 = 0;
    v121 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_19;
  }

  remoteDevice5 = [(PersonalizedImage *)self remoteDevice];

  if (remoteDevice5)
  {
    v21 = @"Bridge";
  }

  else
  {
    v21 = MGCopyAnswer();
  }

  v118 = v21;
  v16 = isNSString(v21);

  if (!v16)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 838, -2, 0, @"Failed to copy value: %@", v28, v29, v30, @"DeviceClass");
    v119 = 0;
    v24 = 0;
    v117 = 0;
    v121 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_38;
  }

  v31 = [v9 objectForKeyedSubscript:@"UniqueChipID"];
  v32 = isNSNumber(v31);
  if (v32)
  {
    remoteDevice7 = v32;
  }

  else
  {
    remoteDevice6 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice6)
    {
      goto LABEL_24;
    }

    remoteDevice7 = [(PersonalizedImage *)self remoteDevice];
    attributesCopy2 = attributes;
    v38 = copy_remote_device_property();

    v31 = v38;
    attributes = attributesCopy2;
  }

LABEL_24:
  v26 = isNSNumber(v31);

  v119 = v31;
  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 849, -2, 0, @"Failed to copy value: %@", v39, v40, v41, @"UniqueChipID");
    v24 = 0;
LABEL_35:
    v117 = 0;
LABEL_36:
    v121 = 0;
LABEL_37:
    v25 = 0;
    v27 = 0;
    v16 = 0;
LABEL_38:
    v34 = 0;
    v35 = 0;
    if (!attributes)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v24 = [v9 objectForKeyedSubscript:@"ChipID"];
  v42 = isNSNumber(v24);
  if (v42)
  {
    remoteDevice9 = v42;
  }

  else
  {
    remoteDevice8 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice8)
    {
      goto LABEL_31;
    }

    remoteDevice9 = [(PersonalizedImage *)self remoteDevice];
    attributesCopy3 = attributes;
    v46 = copy_remote_device_property();

    v24 = v46;
    attributes = attributesCopy3;
  }

LABEL_31:
  v26 = isNSNumber(v24);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 858, -2, 0, @"Failed to copy value: %@", v47, v48, v49, @"ChipID");
    goto LABEL_35;
  }

  v50 = [v9 objectForKeyedSubscript:@"BoardId"];
  v51 = isNSNumber(v50);
  if (v51)
  {
    remoteDevice11 = v51;
  }

  else
  {
    remoteDevice10 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice10)
    {
      goto LABEL_46;
    }

    remoteDevice11 = [(PersonalizedImage *)self remoteDevice];
    attributesCopy4 = attributes;
    v58 = copy_remote_device_property();

    v50 = v58;
    attributes = attributesCopy4;
  }

LABEL_46:
  v26 = isNSNumber(v50);

  v117 = v50;
  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 867, -2, 0, @"Failed to copy value: %@", v59, v60, v61, @"BoardId");
    goto LABEL_36;
  }

  v121 = [v9 objectForKeyedSubscript:@"SecurityDomain"];
  v62 = isNSNumber(v121);
  if (v62)
  {
    remoteDevice13 = v62;
  }

  else
  {
    remoteDevice12 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice12)
    {
      goto LABEL_53;
    }

    remoteDevice13 = [(PersonalizedImage *)self remoteDevice];
    attributesCopy5 = attributes;
    v66 = copy_remote_device_property();

    v121 = v66;
    attributes = attributesCopy5;
  }

LABEL_53:
  v26 = isNSNumber(v121);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 876, -2, 0, @"Failed to copy value: %@", v67, v68, v69, @"SecurityDomain");
    goto LABEL_37;
  }

  v27 = [v9 objectForKeyedSubscript:@"EffectiveSecurityModeAp"];
  v70 = isNSNumber(v27);
  attributesCopy6 = attributes;
  if (v70)
  {
    remoteDevice15 = v70;
  }

  else
  {
    remoteDevice14 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice14)
    {
      goto LABEL_60;
    }

    remoteDevice15 = [(PersonalizedImage *)self remoteDevice];
    v73 = copy_remote_device_property();

    v27 = v73;
  }

LABEL_60:
  v26 = isNSNumber(v27);

  if (!v26)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 885, -2, 0, @"Failed to copy value: %@", v74, v75, v76, @"EffectiveSecurityModeAp");
    v25 = 0;
    v16 = 0;
LABEL_79:
    v34 = 0;
    v35 = 0;
    goto LABEL_80;
  }

  v16 = [v9 objectForKeyedSubscript:@"EffectiveProductionStatusAp"];
  v77 = isNSNumber(v16);
  if (v77)
  {
    remoteDevice17 = v77;
  }

  else
  {
    remoteDevice16 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice16)
    {
      goto LABEL_67;
    }

    remoteDevice17 = [(PersonalizedImage *)self remoteDevice];
    v80 = copy_remote_device_property();

    v16 = v80;
  }

LABEL_67:
  v81 = isNSNumber(v16);

  if (!v81)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 894, -2, 0, @"Failed to copy value: %@", v82, v83, v84, @"EffectiveProductionStatusAp");
    v25 = 0;
LABEL_78:
    v26 = 0;
    goto LABEL_79;
  }

  v25 = [v9 objectForKeyedSubscript:@"CertificateSecurityMode"];
  v85 = isNSNumber(v25);
  if (v85)
  {
    remoteDevice19 = v85;
  }

  else
  {
    remoteDevice18 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice18)
    {
      goto LABEL_74;
    }

    remoteDevice19 = [(PersonalizedImage *)self remoteDevice];
    v88 = copy_remote_device_property();

    v25 = v88;
  }

LABEL_74:
  v89 = isNSNumber(v25);

  if (!v89)
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 903, -2, 0, @"Failed to copy value: %@", v90, v91, v92, @"CertificateSecurityMode");
    goto LABEL_78;
  }

  v26 = [v9 objectForKeyedSubscript:@"CertificateProductionStatus"];
  v93 = isNSNumber(v26);
  if (v93)
  {
    remoteDevice21 = v93;
  }

  else
  {
    remoteDevice20 = [(PersonalizedImage *)self remoteDevice];

    if (!remoteDevice20)
    {
      goto LABEL_85;
    }

    remoteDevice21 = [(PersonalizedImage *)self remoteDevice];
    v96 = v9;
    v97 = v6;
    v98 = copy_remote_device_property();

    v26 = v98;
    v6 = v97;
    v9 = v96;
  }

LABEL_85:
  v35 = isNSNumber(v26);

  if (v35)
  {
    v35 = [v9 objectForKeyedSubscript:{@"Ap, SikaFuse"}];
    remoteDevice22 = [(PersonalizedImage *)self remoteDevice];

    if (remoteDevice22)
    {
      remoteDevice23 = [(PersonalizedImage *)self remoteDevice];
      v22 = v6;
      v34 = MobileStorageRemoteCopyPersonalizationNonceWithError(remoteDevice23, v6, &cf);
    }

    else
    {
      v22 = v6;
      v34 = MobileStorageCopyPersonalizationNonceWithError(v6, &cf);
    }

    v104 = isNSData(v34);

    if (v104)
    {
      remoteDevice24 = [(PersonalizedImage *)self remoteDevice];

      if (remoteDevice24)
      {
        remoteDevice25 = [(PersonalizedImage *)self remoteDevice];
        v114 = copy_remote_device_property();

        v110 = v114;
      }

      else
      {
        v110 = MGCopyAnswer();
      }

      v115 = v110;
      v111 = isNSData(v110);

      if (v111)
      {
        attributes = v115;
      }

      else
      {
        attributes = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v125 length:160];
      }

      [(PersonalizedImage *)self setDeviceClass:v118];
      [(PersonalizedImage *)self setHardwareModel:v120];
      [(PersonalizedImage *)self setEcid:v119];
      [(PersonalizedImage *)self setChipID:v24];
      [(PersonalizedImage *)self setBoardID:v117];
      [(PersonalizedImage *)self setSecurityDomain:v121];
      [(PersonalizedImage *)self setEffectiveSecurityMode:v27];
      [(PersonalizedImage *)self setEffectiveProductionStatus:v16];
      [(PersonalizedImage *)self setCertificateSecurityMode:v25];
      [(PersonalizedImage *)self setCertificateProductionStatus:v26];
      [(PersonalizedImage *)self setImage4Supported:MEMORY[0x277CBEC38]];
      [(PersonalizedImage *)self setApNonce:v34];
      [(PersonalizedImage *)self setSepNonce:attributes];
      [(PersonalizedImage *)self setSikaFuse:v35];

      v23 = 0;
      LOBYTE(attributes) = 1;
      goto LABEL_40;
    }

    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 924, -2, cf, @"Failed to copy personalization nonce.", v105, v106, v107, v112);
  }

  else
  {
    v22 = v6;
    v23 = createMobileStorageError("[PersonalizedImage initializeDeviceAttributes:]", 912, -2, 0, @"Failed to copy value: %@", v99, v100, v101, @"CertificateProductionStatus");
    v34 = 0;
  }

LABEL_80:
  attributes = attributesCopy6;
  if (attributesCopy6)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  return attributes;
}

- (BOOL)mountImage:(id)image serverTicket:(id)ticket imageDigest:(id)digest trustCacheURL:(id)l error:(id *)error
{
  v93[3] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  ticketCopy = ticket;
  digestCopy = digest;
  lCopy = l;
  v84 = digestCopy;
  cf = 0;
  v81 = lCopy;
  v82 = ticketCopy;
  if (!imageCopy || !ticketCopy || !digestCopy)
  {
    v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 981, -2, 0, @"Invalid input(s).", v15, v16, v17, v76);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v80 = 0;
    v83 = 0;
    goto LABEL_42;
  }

  v18 = lCopy;
  v19 = objc_alloc(MEMORY[0x277CBEB38]);
  v92[0] = @"DeviceType";
  v92[1] = @"DiskImageType";
  v93[0] = @"DiskImage";
  v93[1] = @"Personalized";
  v92[2] = @"ImageSignature";
  v93[2] = ticketCopy;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
  v83 = [v19 initWithDictionary:v20];

  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v18];
    if (!v21)
    {
      v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 993, -2, 0, @"Failed to load %@.", v22, v23, v24, v18);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v80 = 0;
      goto LABEL_42;
    }

    v25 = v21;
    [v83 setObject:v21 forKeyedSubscript:@"ImageTrustCache"];
  }

  else
  {
    v25 = 0;
  }

  v80 = v25;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    hardwareModel = [(PersonalizedImage *)self hardwareModel];
    deviceClass = [(PersonalizedImage *)self deviceClass];
    ecid = [(PersonalizedImage *)self ecid];
    *buf = 138413058;
    *v87 = imageCopy;
    *&v87[8] = 2112;
    *v88 = hardwareModel;
    *&v88[8] = 2112;
    v89 = deviceClass;
    v90 = 2112;
    v91 = ecid;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Preparing to mount %@ on %@ (deviceClass: %@ ecid: %@)", buf, 0x2Au);
  }

  remoteDevice = [(PersonalizedImage *)self remoteDevice];

  if (remoteDevice)
  {
    remoteDevice2 = [(PersonalizedImage *)self remoteDevice];
    v30 = MobileStorageRemoteCopyDevicesWithError(remoteDevice2, 0, &cf);
  }

  else
  {
    v30 = MobileStorageCopyDevicesWithError(0, &cf);
  }

  v36 = isNSArray(v30);

  if (!v36)
  {
    v26 = createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1010, -2, cf, @"Failed to copy device list.", v37, v38, v39, v76);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_42;
  }

  selfCopy = self;
  v78 = imageCopy;
  if (![v30 count])
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_36:
    remoteDevice3 = [(PersonalizedImage *)selfCopy remoteDevice];

    if (remoteDevice3)
    {
      remoteDevice4 = [(PersonalizedImage *)selfCopy remoteDevice];
      imageCopy = v78;
      path = [v78 path];
      v54 = MobileStorageRemoteMountWithError(remoteDevice4, path, v83, &cf);

      if (v54)
      {
        v55 = cf;
        path2 = [v78 path];
        createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1049, -2, v55, @"Failed to mount %@.", v57, v58, v59, path2);
        v26 = LABEL_41:;

LABEL_42:
        if (error)
        {
          v70 = v26;
          v71 = 0;
          v74 = 0;
          *error = v26;
        }

        else
        {
          v71 = 0;
          v74 = 0;
        }

LABEL_49:
        v44 = v28;
        v46 = v27;
        goto LABEL_50;
      }

      v74 = 0;
    }

    else
    {
      imageCopy = v78;
      path3 = [v78 path];
      v74 = MobileStorageMountWithError(path3, v83, &cf, v61, v62, v63, v64, v65);

      if (!v74)
      {
        v66 = cf;
        path2 = [v78 path];
        createMobileStorageError("[PersonalizedImage mountImage:serverTicket:imageDigest:trustCacheURL:error:]", 1055, -2, v66, @"Failed to mount %@.", v67, v68, v69, path2);
        goto LABEL_41;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path4 = [imageCopy path];
      *buf = 138412290;
      *v87 = path4;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ successfully mounted on device.", buf, 0xCu);
    }

    v26 = 0;
    v71 = 1;
    goto LABEL_49;
  }

  v40 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v41 = MEMORY[0x277D86220];
  while (1)
  {
    v42 = v29;
    v29 = [v30 objectAtIndexedSubscript:v40];

    v43 = isNSDictionary(v29);

    if (!v43)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v48 = [v30 count];
        *buf = 67109376;
        *v87 = v40;
        *&v87[4] = 1024;
        *&v87[6] = v48;
        _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Failed to retrieve entry %d of %d.", buf, 0xEu);
      }

      goto LABEL_31;
    }

    v44 = [v29 objectForKeyedSubscript:@"DeviceType"];

    v45 = isNSString(v44);

    if (!v45)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v49 = [v30 count];
        *buf = 138412802;
        *v87 = @"DeviceType";
        *&v87[8] = 1024;
        *v88 = v40 + 1;
        *&v88[4] = 1024;
        *&v88[6] = v49;
        _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
      }

      goto LABEL_30;
    }

    if ([v44 isEqualToString:@"DiskImage"])
    {
      break;
    }

LABEL_30:
    v28 = v44;
LABEL_31:
    if (++v40 >= [v30 count])
    {
      goto LABEL_36;
    }
  }

  v46 = [v29 objectForKeyedSubscript:@"ImageSignature"];

  v47 = isNSData(v46);

  if (!v47)
  {
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v50 = [v30 count];
      *buf = 138412802;
      *v87 = @"ImageSignature";
      *&v87[8] = 1024;
      *v88 = v40 + 1;
      *&v88[4] = 1024;
      *&v88[6] = v50;
      _os_log_debug_impl(&dword_259B65000, v41, OS_LOG_TYPE_DEBUG, "Invalid value %@ for entry %d of %d.", buf, 0x18u);
    }

    goto LABEL_29;
  }

  if (![v84 isEqualToData:v46])
  {
LABEL_29:
    v27 = v46;
    goto LABEL_30;
  }

  v74 = [v29 objectForKeyedSubscript:@"MountPath"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    imageCopy = v78;
    [PersonalizedImage mountImage:v78 serverTicket:v74 imageDigest:? trustCacheURL:? error:?];
    v26 = 0;
    v71 = 1;
  }

  else
  {
    v26 = 0;
    v71 = 1;
    imageCopy = v78;
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  return v71;
}

- (BOOL)mountImage:(id *)image
{
  v102[5] = *MEMORY[0x277D85DE8];
  v95 = 0;
  cf = 0;
  v5 = [(PersonalizedImage *)self initializeDeviceAttributes:&v95];
  v6 = v95;
  v7 = v6;
  if (!v5)
  {
    v13 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v91 = 0;
    v24 = 0;
    if (!image)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  imageCopy = image;
  v94 = v6;
  v8 = [(PersonalizedImage *)self initializeImageProperties:&v94];
  imagePathURL2 = v94;

  if (!v8)
  {
    v13 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v91 = 0;
    v24 = 0;
    v7 = imagePathURL2;
    goto LABEL_20;
  }

  if (mountImage__onceToken != -1)
  {
    [PersonalizedImage mountImage:];
  }

  v13 = AMAuthInstallCreate();
  if (!v13)
  {
    createMobileStorageError("[PersonalizedImage mountImage:]", 1115, -2, 0, @"AMAuthInstallCreate failed.", v10, v11, v12, v80);
    goto LABEL_17;
  }

  signingServerURL = [(PersonalizedImage *)self signingServerURL];
  v15 = AMAuthInstallSetSigningServerURL();

  if (v15)
  {
    convertLibAuthInstallError(v15);
    createMobileStorageError("[PersonalizedImage mountImage:]", 1123, -2, 0, @"AMAuthInstallSetSigningServerURL failed: %d (%s)", v16, v17, v18, v15);
    v7 = LABEL_17:;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_18:
    v22 = 0;
    v23 = 0;
    v91 = 0;
    v24 = 0;
LABEL_19:

LABEL_20:
    image = imageCopy;
    if (!imageCopy)
    {
LABEL_10:
      v26 = 0;
      v27 = 0;
      if (!v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v25 = v7;
    *image = v7;
    goto LABEL_10;
  }

  if ([(PersonalizedImage *)self useCredentials])
  {
    v29 = AMAuthInstallSsoEnable();
    if (v29)
    {
      v30 = v29;
      convertLibAuthInstallError(v29);
      createMobileStorageError("[PersonalizedImage mountImage:]", 1132, -2, 0, @"AMAuthInstallSsoEnable failed: %d (%s)", v31, v32, v33, v30);
      goto LABEL_17;
    }
  }

  imagePathURL = [(PersonalizedImage *)self imagePathURL];
  v93 = imagePathURL2;
  v21 = [(PersonalizedImage *)self digestFile:imagePathURL digestLength:[(PersonalizedImage *)self digestLength] error:&v93];
  v35 = v93;

  if (!v21)
  {
    imagePathURL2 = [(PersonalizedImage *)self imagePathURL];
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1141, -2, v35, @"Failed to digest %@.", v39, v40, v41, imagePathURL2);

    v19 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  trustCacheURL = [(PersonalizedImage *)self trustCacheURL];

  v91 = v21;
  if (trustCacheURL)
  {
    trustCacheURL2 = [(PersonalizedImage *)self trustCacheURL];
    v92 = v35;
    v24 = [(PersonalizedImage *)self digestFile:trustCacheURL2 digestLength:[(PersonalizedImage *)self digestLength] error:&v92];
    v38 = v92;

    if (!v24)
    {
      imagePathURL2 = [(PersonalizedImage *)self trustCacheURL];
      v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1150, -2, v38, @"Failed to digest %@", v77, v78, v79, imagePathURL2);

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_19;
    }

    v89 = v38;
  }

  else
  {
    v89 = v35;
    v24 = 0;
  }

  v42 = *MEMORY[0x277D825A0];
  v43 = *MEMORY[0x277D825C8];
  v101[0] = *MEMORY[0x277D825A0];
  v101[1] = v43;
  v86 = v43;
  v102[0] = v21;
  v102[1] = MEMORY[0x277CBEC38];
  v44 = *MEMORY[0x277D825A8];
  v101[2] = *MEMORY[0x277D825A8];
  effectiveProductionStatus = [(PersonalizedImage *)self effectiveProductionStatus];
  v102[2] = effectiveProductionStatus;
  v46 = *MEMORY[0x277D825B0];
  v101[3] = *MEMORY[0x277D825B0];
  effectiveSecurityMode = [(PersonalizedImage *)self effectiveSecurityMode];
  v102[3] = effectiveSecurityMode;
  v101[4] = *MEMORY[0x277D825B8];
  imageVariant = [(PersonalizedImage *)self imageVariant];
  v102[4] = imageVariant;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:5];

  if (v24)
  {
    v99[0] = v42;
    v99[1] = v86;
    v100[0] = v24;
    v100[1] = MEMORY[0x277CBEC38];
    v99[2] = v44;
    effectiveProductionStatus2 = [(PersonalizedImage *)self effectiveProductionStatus];
    v100[2] = effectiveProductionStatus2;
    v99[3] = v46;
    effectiveSecurityMode2 = [(PersonalizedImage *)self effectiveSecurityMode];
    v100[3] = effectiveSecurityMode2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:4];
  }

  else
  {
    v22 = 0;
  }

  v51 = MEMORY[0x277CBEB38];
  v97[0] = *MEMORY[0x277D82588];
  certificateSecurityMode = [(PersonalizedImage *)self certificateSecurityMode];
  v98[0] = certificateSecurityMode;
  v97[1] = *MEMORY[0x277D82570];
  certificateProductionStatus = [(PersonalizedImage *)self certificateProductionStatus];
  v98[1] = certificateProductionStatus;
  v97[2] = *MEMORY[0x277D82580];
  securityDomain = [(PersonalizedImage *)self securityDomain];
  v98[2] = securityDomain;
  v97[3] = *MEMORY[0x277D82548];
  boardID = [(PersonalizedImage *)self boardID];
  v98[3] = boardID;
  v97[4] = *MEMORY[0x277D82550];
  chipID = [(PersonalizedImage *)self chipID];
  v98[4] = chipID;
  v97[5] = *MEMORY[0x277D82558];
  ecid = [(PersonalizedImage *)self ecid];
  v98[5] = ecid;
  v97[6] = *MEMORY[0x277D82578];
  image4Supported = [(PersonalizedImage *)self image4Supported];
  v98[6] = image4Supported;
  v97[7] = *MEMORY[0x277D82568];
  apNonce = [(PersonalizedImage *)self apNonce];
  v55 = *MEMORY[0x277D825D0];
  v98[7] = apNonce;
  v98[8] = MEMORY[0x277CBEC28];
  v56 = *MEMORY[0x277D82540];
  v97[8] = v55;
  v97[9] = v56;
  v98[9] = v21;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:10];
  v19 = [v51 dictionaryWithDictionary:v57];

  sepNonce = [(PersonalizedImage *)self sepNonce];

  if (sepNonce)
  {
    sepNonce2 = [(PersonalizedImage *)self sepNonce];
    [v19 setObject:sepNonce2 forKeyedSubscript:*MEMORY[0x277D82590]];
  }

  sikaFuse = [(PersonalizedImage *)self sikaFuse];

  if (sikaFuse)
  {
    sikaFuse2 = [(PersonalizedImage *)self sikaFuse];
    [v19 setObject:sikaFuse2 forKeyedSubscript:*MEMORY[0x277D82598]];
  }

  if (v22)
  {
    [v19 setObject:v22 forKeyedSubscript:@"LoadableTrustCache"];
  }

  v62 = AMAuthInstallRequestSendSync();
  if (v62)
  {
    v63 = v62;
    convertLibAuthInstallError(v62);
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1204, -2, 0, @"AMAuthInstallRequestSendSync failed: %d (%s)", v64, v65, v66, v63);
    v20 = 0;
    v23 = 0;
LABEL_42:
    imagePathURL2 = v89;
    goto LABEL_19;
  }

  v20 = cf;
  v23 = [v20 objectForKeyedSubscript:*MEMORY[0x277D82560]];
  v67 = isNSData(v23);

  if (!v67)
  {
    v7 = createMobileStorageError("[PersonalizedImage mountImage:]", 1214, -2, 0, @"Invalid server ticket in response: %@", v68, v69, v70, v20);
    goto LABEL_42;
  }

  imagePathURL3 = [(PersonalizedImage *)self imagePathURL];
  trustCacheURL3 = [(PersonalizedImage *)self trustCacheURL];
  selfCopy = self;
  v73 = trustCacheURL3;
  v85 = [PersonalizedImage mountImage:selfCopy serverTicket:"mountImage:serverTicket:imageDigest:trustCacheURL:error:" imageDigest:imagePathURL3 trustCacheURL:v23 error:v91];
  v7 = v89;

  if (!v85)
  {
    createMobileStorageError("[PersonalizedImage mountImage:]", 1221, -2, v7, @"Failed to mount image.", v74, v75, v76, v80);
    v7 = imagePathURL2 = v7;
    goto LABEL_19;
  }

  v26 = 1;
LABEL_11:
  CFRelease(v13);
  v27 = v26;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v27;
}

uint64_t __32__PersonalizedImage_mountImage___block_invoke()
{
  AMAuthInstallLogSetHandler();

  return MEMORY[0x2821F72D0](0);
}

- (void)mountImage:(void *)a1 serverTicket:(uint64_t)a2 imageDigest:trustCacheURL:error:.cold.1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ already mounted at %@.", &v4, 0x16u);
}

@end