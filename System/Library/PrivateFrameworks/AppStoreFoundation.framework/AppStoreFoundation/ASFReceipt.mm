@interface ASFReceipt
+ (id)receiptFromBundleAtPath:(id)path;
+ (id)receiptFromBundleAtURL:(id)l;
+ (id)receiptWithContentsOfFile:(id)file;
+ (id)receiptWithData:(id)data;
- (ASFReceipt)initWithContentsOfFile:(id)file;
- (ASFReceipt)initWithData:(id)data;
- (BOOL)isDSIDless;
- (NSString)receiptDataString;
@end

@implementation ASFReceipt

+ (id)receiptFromBundleAtPath:(id)path
{
  if (path)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v4 = [ASFReceipt receiptFromBundleAtURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)receiptFromBundleAtURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v4 = lCopy;
    objc_opt_self();
    v5 = v4;
    objc_opt_self();
    v14 = 0;
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v5 allowPlaceholder:0 error:&v14];

    dataContainerURL = [v6 dataContainerURL];
    v8 = [dataContainerURL URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

    if ([v6 isProfileValidated])
    {
      v9 = @"sandboxReceipt";
    }

    else
    {
      v9 = @"receipt";
    }

    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:0];

    if (v10)
    {
      path = [v10 path];
      v12 = [ASFReceipt receiptWithContentsOfFile:path];

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)receiptWithContentsOfFile:(id)file
{
  fileCopy = file;
  v4 = [[ASFReceipt alloc] initWithContentsOfFile:fileCopy];

  return v4;
}

+ (id)receiptWithData:(id)data
{
  dataCopy = data;
  v4 = [[ASFReceipt alloc] initWithData:dataCopy];

  return v4;
}

- (ASFReceipt)initWithContentsOfFile:(id)file
{
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v5 = fileCopy;
  if (!fileCopy || ![fileCopy length])
  {
    v6 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v15 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v7)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v8 code];

      if (code == 260)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v13 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v8;
      _os_log_error_impl(&dword_2400E0000, v13, OS_LOG_TYPE_ERROR, "Error reading receipt: %{public}@", buf, 0xCu);
    }
  }

LABEL_16:

  if (!v6)
  {
    goto LABEL_8;
  }

  v11 = [(ASFReceipt *)self initWithData:v6];
  if (!v11)
  {
    goto LABEL_10;
  }

  v14 = v5;
  self = v11->_path;
  v11->_path = v14;
LABEL_9:

LABEL_10:
  return v11;
}

- (ASFReceipt)initWithData:(id)data
{
  v224 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v220.receiver = self;
  v220.super_class = ASFReceipt;
  v5 = [(ASFReceipt *)&v220 init];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = objc_opt_new();
  mutableIAPs = v5->_mutableIAPs;
  v5->_mutableIAPs = v6;

  if (![dataCopy length])
  {
    goto LABEL_28;
  }

  v8 = dataCopy;
  *v223 = 0;
  if (SecCmsDecoderCreate())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not create decoder";
LABEL_21:
    _os_log_error_impl(&dword_2400E0000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_22:
    if (*v223)
    {
      SecCmsDecoderDestroy();
    }

    v11 = 0;
    goto LABEL_25;
  }

  [v8 bytes];
  [v8 length];
  if (SecCmsDecoderUpdate())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not read data";
    goto LABEL_21;
  }

  if (SecCmsDecoderFinish())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not parse data";
    goto LABEL_21;
  }

  v22 = MEMORY[0x245CB8B50](0);
  if (!v22 || !*v22)
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v175 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
      {
        *v223 = 0;
        _os_log_impl(&dword_2400E0000, v175, OS_LOG_TYPE_DEFAULT, "No content", v223, 2u);
      }
    }

    goto LABEL_232;
  }

  v23 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v22[1] length:*v22];
  v24 = 0x280FB5000uLL;
  v25 = [ASFAsn1Token readTokenFromBuffer:v23 length:0];
  v26 = v25;
  if (!v25 || v25[2] != 17)
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v178 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v223 = 0;
        _os_log_error_impl(&dword_2400E0000, v178, OS_LOG_TYPE_ERROR, "Failed to parse data", v223, 2u);
      }
    }

LABEL_232:
    v11 = 0;
    goto LABEL_233;
  }

  v27 = v25;
  if (v5->_verbose)
  {
    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v28 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
    {
      *v223 = 0;
      _os_log_impl(&dword_2400E0000, v28, OS_LOG_TYPE_DEFAULT, "Parsing receipt", v223, 2u);
    }
  }

  nextToken = [(ASFAsn1SetToken *)v27 nextToken];
  if (nextToken)
  {
    v30 = 0x280FB5000uLL;
    do
    {
      context = objc_autoreleasePoolPush();
      v32 = objc_getProperty(nextToken, v31, 24, 1);
      v33 = [(ASFAsn1ReceiptToken *)v30 + 1304 readFromBuffer:v32];

      if (v33)
      {
        switch(v33[1])
        {
          case 0:
            stringValue = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            receiptType = v5->_receiptType;
            v5->_receiptType = stringValue;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v37 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v38 = v5->_receiptType;
                *v223 = 138543362;
                *&v223[4] = v38;
                v39 = v37;
                v40 = "Receipt type: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 1:
            v85 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            itemID = v5->_itemID;
            v5->_itemID = v85;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v87 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v88 = v5->_itemID;
                *v223 = 138543362;
                *&v223[4] = v88;
                v39 = v87;
                v40 = "AdamID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 2:
            v64 = objc_getProperty(v33, v34, 24, 1);
            v66 = v64;
            if (v64)
            {
              Property = objc_getProperty(v64, v65, 24, 1);
            }

            else
            {
              Property = 0;
            }

            objc_storeStrong(&v5->_bundleIDData, Property);

            stringValue2 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            bundleID = v5->_bundleID;
            v5->_bundleID = stringValue2;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v70 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v71 = v5->_bundleID;
                *v223 = 138543362;
                *&v223[4] = v71;
                v39 = v70;
                v40 = "BundleID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 3:
            stringValue3 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            bundleVersion = v5->_bundleVersion;
            v5->_bundleVersion = stringValue3;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v127 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v128 = v5->_bundleVersion;
                *v223 = 138543362;
                *&v223[4] = v128;
                v39 = v127;
                v40 = "Application version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 4:
            if ([(ASFAsn1ReceiptToken *)v33 contentIsAnInteger])
            {
              v130 = objc_getProperty(v33, v129, 24, 1);
              v132 = v130;
              if (v130)
              {
                v130 = objc_getProperty(v130, v131, 24, 1);
              }

              v133 = v130;
              v134 = [v133 length];

              if (v134)
              {
                v135 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
                stringValue4 = [v135 stringValue];
                opaqueDSIDString = v5->_opaqueDSIDString;
                v5->_opaqueDSIDString = stringValue4;

LABEL_193:
                goto LABEL_194;
              }
            }

            v157 = objc_getProperty(v33, v129, 24, 1);
            v159 = v157;
            if (v157)
            {
              v157 = objc_getProperty(v157, v158, 24, 1);
            }

            v160 = v157;
            v161 = [v160 length];

            if (v161)
            {
              v163 = objc_getProperty(v33, v162, 24, 1);
              v165 = v163;
              if (v163)
              {
                v166 = objc_getProperty(v163, v164, 24, 1);
              }

              else
              {
                v166 = 0;
              }

              objc_storeStrong(&v5->_opaqueDSIDData, v166);

              v167 = [(NSData *)v5->_opaqueDSIDData base64EncodedStringWithOptions:0];
              v135 = v5->_opaqueDSIDString;
              v5->_opaqueDSIDString = v167;
              goto LABEL_193;
            }

LABEL_194:
            v30 = 0x280FB5000;
            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v168 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v169 = v5->_opaqueDSIDString;
                *v223 = 138543362;
                *&v223[4] = v169;
                v39 = v168;
                v40 = "DSID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 5:
            v72 = objc_getProperty(v33, v34, 24, 1);
            v74 = v72;
            if (v72)
            {
              v72 = objc_getProperty(v72, v73, 24, 1);
            }

            v75 = v72;

            sha1 = v5->_sha1;
            v5->_sha1 = v75;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v77 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v78 = v5->_sha1;
                v79 = v77;
                v80 = [(NSData *)v78 base64EncodedStringWithOptions:0];
                *v223 = 138543362;
                *&v223[4] = v80;
                _os_log_impl(&dword_2400E0000, v79, OS_LOG_TYPE_DEFAULT, "SHA1: %{public}@", v223, 0xCu);
              }
            }

            break;
          case 8:
            stringValue5 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            v90 = _readStringDate(stringValue5);
            purchaseDate = v5->_purchaseDate;
            v5->_purchaseDate = v90;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v92 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v5->_purchaseDate;
                *v223 = 138543362;
                *&v223[4] = v93;
                v39 = v92;
                v40 = "Transaction date: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 9:
            v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            frToolVersion = v5->_frToolVersion;
            v5->_frToolVersion = v94;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v96 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v97 = v5->_frToolVersion;
                *v223 = 138543362;
                *&v223[4] = v97;
                v39 = v96;
                v40 = "FR tool version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xALL:
            stringValue6 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            parentalControls = v5->_parentalControls;
            v5->_parentalControls = stringValue6;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v145 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v146 = v5->_parentalControls;
                *v223 = 138543362;
                *&v223[4] = v146;
                v39 = v145;
                v40 = "Parental controls: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xBLL:
            v138 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            stringValue7 = [v138 stringValue];
            developerID = v5->_developerID;
            v5->_developerID = stringValue7;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v141 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v142 = v5->_developerID;
                *v223 = 138543362;
                *&v223[4] = v142;
                v39 = v141;
                v40 = "DeveloperID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xCLL:
            stringValue8 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            v51 = _readStringDate(stringValue8);
            creationDate = v5->_creationDate;
            v5->_creationDate = v51;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v53 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v54 = v5->_creationDate;
                *v223 = 138543362;
                *&v223[4] = v54;
                v39 = v53;
                v40 = "Receipt created: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xDLL:
            stringValue9 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            frAppVersion = v5->_frAppVersion;
            v5->_frAppVersion = stringValue9;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v83 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v84 = v5->_frAppVersion;
                *v223 = 138543362;
                *&v223[4] = v84;
                v39 = v83;
                v40 = "FR app version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xELL:
            v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            stringValue10 = [v55 stringValue];
            hwtype = v5->_hwtype;
            v5->_hwtype = stringValue10;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v58 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v59 = v5->_hwtype;
                *v223 = 138543362;
                *&v223[4] = v59;
                v39 = v58;
                v40 = "HW type: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xFLL:
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            stringValue11 = [v45 stringValue];
            downloadID = v5->_downloadID;
            v5->_downloadID = stringValue11;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v48 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v49 = v5->_downloadID;
                *v223 = 138543362;
                *&v223[4] = v49;
                v39 = v48;
                v40 = "DownloadID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x10:
            v98 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v33)];
            stringValue12 = [v98 stringValue];
            installerVersionID = v5->_installerVersionID;
            v5->_installerVersionID = stringValue12;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v101 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v102 = v5->_installerVersionID;
                *v223 = 138543362;
                *&v223[4] = v102;
                v39 = v101;
                v40 = "Installer versionID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x11:
            v103 = objc_getProperty(v33, v34, 24, 1);
            v105 = v103;
            if (v103)
            {
              v103 = objc_getProperty(v103, v104, 24, 1);
            }

            v106 = v103;

            v107 = v106;
            if (v107)
            {
              v108 = [(ASFAsn1Token *)v24 + 1224 readTokenFromBuffer:v107 length:0];
              if (v108 && v108[2] == 17)
              {
                v214 = v107;
                v215 = v27;
                v216 = v23;
                v213 = v108;
                v109 = v108;
                v110 = objc_opt_new();
                v218 = v109;
                nextToken2 = [(ASFAsn1SetToken *)v109 nextToken];
                if (nextToken2)
                {
                  do
                  {
                    v112 = objc_autoreleasePoolPush();
                    v114 = objc_getProperty(nextToken2, v113, 24, 1);
                    v115 = [ASFAsn1ReceiptIAPToken readFromBuffer:v114];

                    if (v115)
                    {
                      v116 = v115[1];
                      if (v116 > 1703)
                      {
                        switch(v116)
                        {
                          case 1704:
                            stringValue13 = [(ASFAsn1ReceiptIAPToken *)v115 stringValue];
                            stringValue14 = _readStringDate(stringValue13);

                            if (!v110)
                            {
                              goto LABEL_154;
                            }

                            v119 = v110;
                            v120 = stringValue14;
                            v121 = 24;
                            goto LABEL_153;
                          case 1705:
                            stringValue14 = [(ASFAsn1ReceiptIAPToken *)v115 stringValue];
                            if (!v110)
                            {
                              goto LABEL_154;
                            }

                            v119 = v110;
                            v120 = stringValue14;
                            v121 = 16;
                            goto LABEL_153;
                          case 1706:
                            stringValue15 = [(ASFAsn1ReceiptIAPToken *)v115 stringValue];
                            stringValue14 = _readStringDate(stringValue15);

                            if (v110)
                            {
                              v119 = v110;
                              v120 = stringValue14;
                              v121 = 8;
                              goto LABEL_153;
                            }

LABEL_154:

                            break;
                        }
                      }

                      else
                      {
                        switch(v116)
                        {
                          case 1701:
                            stringValue14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v115)];
                            if (!v110)
                            {
                              goto LABEL_154;
                            }

                            v119 = v110;
                            v120 = stringValue14;
                            v121 = 40;
LABEL_153:
                            objc_setProperty_atomic_copy(v119, v117, v120, v121);
                            goto LABEL_154;
                          case 1702:
                            stringValue14 = [(ASFAsn1ReceiptIAPToken *)v115 stringValue];
                            if (!v110)
                            {
                              goto LABEL_154;
                            }

                            v119 = v110;
                            v120 = stringValue14;
                            v121 = 32;
                            goto LABEL_153;
                          case 1703:
                            stringValue14 = [(ASFAsn1ReceiptIAPToken *)v115 stringValue];
                            if (v110)
                            {
                              v119 = v110;
                              v120 = stringValue14;
                              v121 = 48;
                              goto LABEL_153;
                            }

                            goto LABEL_154;
                        }
                      }
                    }

                    objc_autoreleasePoolPop(v112);
                    nextToken3 = [(ASFAsn1SetToken *)v218 nextToken];

                    nextToken2 = nextToken3;
                  }

                  while (nextToken3);
                }

                v27 = v215;
                v23 = v216;
                v24 = 0x280FB5000;
                v108 = v213;
                v107 = v214;
              }

              else if (v5->_verbose)
              {
                v217 = v23;
                v172 = v24;
                v173 = v108;
                if (ASFLogHandleForCategory_onceToken != -1)
                {
                  dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
                }

                v174 = ASFLogHandleForCategory_logHandles_0;
                if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
                {
                  *v223 = 0;
                  _os_log_error_impl(&dword_2400E0000, v174, OS_LOG_TYPE_ERROR, "Failed to parse data", v223, 2u);
                }

                v110 = 0;
                v108 = v173;
                v24 = v172;
                v23 = v217;
              }

              else
              {
                v110 = 0;
              }

              if (v110)
              {
                [(NSMutableArray *)v5->_mutableIAPs addObject:v110];

                goto LABEL_217;
              }
            }

            else if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v171 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
              {
                *v223 = 0;
                _os_log_error_impl(&dword_2400E0000, v171, OS_LOG_TYPE_ERROR, "Failed to load data", v223, 2u);
              }
            }

            NSLog(&cfstr_DecodeIapsFail.isa, v213, v214, v215);
LABEL_217:
            v30 = 0x280FB5000;

            break;
          case 0x15:
            stringValue16 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            v153 = _readStringDate(stringValue16);
            expirationDate = v5->_expirationDate;
            v5->_expirationDate = v153;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v155 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v156 = v5->_expirationDate;
                *v223 = 138543362;
                *&v223[4] = v156;
                v39 = v155;
                v40 = "Receipt expires: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x16:
            stringValue17 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            v148 = _readStringDate(stringValue17);
            renewalDate = v5->_renewalDate;
            v5->_renewalDate = v148;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v150 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v151 = v5->_renewalDate;
                *v223 = 138543362;
                *&v223[4] = v151;
                v39 = v150;
                v40 = "Receipt renewal: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x17:
            stringValue18 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            organizationDisplayName = v5->_organizationDisplayName;
            v5->_organizationDisplayName = stringValue18;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v43 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v44 = v5->_organizationDisplayName;
                *v223 = 138543362;
                *&v223[4] = v44;
                v39 = v43;
                v40 = "Organization display name: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x18:
            stringValue19 = [(ASFAsn1ReceiptIAPToken *)v33 stringValue];
            cancellationReason = v5->_cancellationReason;
            v5->_cancellationReason = stringValue19;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v62 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v63 = v5->_cancellationReason;
                *v223 = 138543362;
                *&v223[4] = v63;
                v39 = v62;
                v40 = "Cancellation reason: %{public}@";
LABEL_199:
                _os_log_impl(&dword_2400E0000, v39, OS_LOG_TYPE_DEFAULT, v40, v223, 0xCu);
              }
            }

            break;
          default:
            break;
        }
      }

      objc_autoreleasePoolPop(context);
      nextToken4 = [(ASFAsn1SetToken *)v27 nextToken];

      nextToken = nextToken4;
    }

    while (nextToken4);
  }

  v179 = SecCmsMessageContentLevelCount();
  if (v179 >= 1)
  {
    v180 = v179;
    for (i = 0; i != v180; ++i)
    {
      SecCmsMessageContentLevel();
      if (SecCmsContentInfoGetContentTypeTag() == 26 && SecCmsContentInfoGetContent())
      {
        break;
      }
    }
  }

  v182 = v5->_creationDate;
  *buf = 0;
  CertificateList = SecCmsSignedDataGetCertificateList();
  if (!CertificateList)
  {
    goto LABEL_254;
  }

  v184 = CertificateList;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v186 = *v184;
  if (*v184)
  {
    v187 = v184 + 1;
    do
    {
      v188 = CFDataCreate(0, *(v186 + 8), *v186);
      if (v188)
      {
        v189 = v188;
        v190 = SecCertificateCreateWithData(0, v188);
        if (v190)
        {
          v191 = v190;
          CFArrayAppendValue(Mutable, v190);
          CFRelease(v191);
        }

        CFRelease(v189);
      }

      v192 = *v187++;
      v186 = v192;
    }

    while (v192);
  }

  if (!Mutable)
  {
LABEL_254:
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v195 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v223 = 0;
        _os_log_error_impl(&dword_2400E0000, v195, OS_LOG_TYPE_ERROR, "Could not read certificates", v223, 2u);
      }
    }

    v11 = 0;
    goto LABEL_284;
  }

  if (SecTrustCreateWithCertificates(Mutable, 0, buf))
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v193 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v223 = 0;
        v194 = "Could not create trust";
LABEL_302:
        _os_log_error_impl(&dword_2400E0000, v193, OS_LOG_TYPE_ERROR, v194, v223, 2u);
      }
    }

    goto LABEL_282;
  }

  v196 = *buf;
  v197 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF128]);
  v198 = *MEMORY[0x277CDC4C8];
  v199 = *MEMORY[0x277CDC4D0];
  v200 = 1;
  do
  {
    v201 = v200;
    v202 = SecPolicyCreateWithProperties(v198, 0);
    if (!v202)
    {
      v203 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v203)
      {
        goto LABEL_277;
      }

      goto LABEL_266;
    }

    CFArrayAppendValue(v197, v202);
    CFRelease(v202);
    v200 = 0;
    v198 = v199;
  }

  while ((v201 & 1) != 0);
  v203 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v203)
  {
LABEL_266:
    v204 = v203;
    v205 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{3, v213, v214, v215}];
    CFDictionaryAddValue(v204, *MEMORY[0x277CDC4E8], v205);
    v206 = SecPolicyCreateWithProperties(*MEMORY[0x277CDC4C0], v204);
    if (v206)
    {
      v207 = v206;
      CFArrayAppendValue(v197, v206);
      CFRelease(v207);
      CFRelease(v204);

      if (v202)
      {
        goto LABEL_268;
      }
    }

    else
    {
      CFRelease(v204);
    }

LABEL_277:
    CFRelease(v197);
    goto LABEL_278;
  }

LABEL_268:
  v208 = SecTrustSetPolicies(v196, v197);
  CFRelease(v197);
  if (!v208)
  {
    if (v182 && SecTrustSetVerifyDate(*buf, v182))
    {
      if (v5->_verbose)
      {
        if (ASFLogHandleForCategory_onceToken != -1)
        {
          dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
        }

        v193 = ASFLogHandleForCategory_logHandles_0;
        if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
        {
          *v223 = 0;
          v194 = "Could not set verification date";
          goto LABEL_302;
        }
      }
    }

    else
    {
      error = 0;
      v209 = SecTrustEvaluateWithError(*buf, &error);
      v210 = error;
      if (error)
      {
        if (v5->_verbose)
        {
          if (ASFLogHandleForCategory_onceToken != -1)
          {
            dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
          }

          v211 = ASFLogHandleForCategory_logHandles_0;
          if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
          {
            *v223 = 138543362;
            *&v223[4] = error;
            _os_log_impl(&dword_2400E0000, v211, OS_LOG_TYPE_DEFAULT, "Error evaluating trust: %{public}@", v223, 0xCu);
          }

          v210 = error;
        }

        CFRelease(v210);
      }

      if (v209)
      {
        v11 = error == 0;
        goto LABEL_283;
      }

      if (v5->_verbose)
      {
        v212 = ASFLogHandleForCategory();
        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v223 = 0;
          _os_log_error_impl(&dword_2400E0000, v212, OS_LOG_TYPE_ERROR, "Failed to evaluate trust", v223, 2u);
        }
      }
    }

    goto LABEL_282;
  }

LABEL_278:
  if (v5->_verbose)
  {
    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v193 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      *v223 = 0;
      v194 = "Failed to update policies";
      goto LABEL_302;
    }
  }

LABEL_282:
  v11 = 0;
LABEL_283:
  CFRelease(Mutable);
LABEL_284:
  if (*buf)
  {
    CFRelease(*buf);
  }

LABEL_233:
  SecCmsMessageDestroy();
LABEL_25:
  if ([(NSMutableArray *)v5->_mutableIAPs count:v213])
  {
    v12 = [(NSMutableArray *)v5->_mutableIAPs copy];
    iaps = v5->_iaps;
    v5->_iaps = v12;
  }

  if (!v11)
  {
LABEL_28:
    if ([(NSString *)v5->_receiptType hasSuffix:@"Stub"])
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v14 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [dataCopy length];
        *v223 = 134217984;
        *&v223[4] = v16;
        v17 = "Allowing invalid receipt because it is a stub receipt [%{iec-bytes}ld]";
        goto LABEL_38;
      }
    }

    else if ([(NSString *)v5->_receiptType isEqualToString:@"Xcode"])
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v18 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v15 = v18;
        v19 = [dataCopy length];
        *v223 = 134217984;
        *&v223[4] = v19;
        v17 = "Allowing invalid receipt because it is an StoreKit testing receipt [%{iec-bytes}ld]";
LABEL_38:
        _os_log_error_impl(&dword_2400E0000, v15, OS_LOG_TYPE_ERROR, v17, v223, 0xCu);
      }
    }

    else
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v20 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v176 = v20;
        v177 = [dataCopy length];
        *v223 = 134217984;
        *&v223[4] = v177;
        _os_log_error_impl(&dword_2400E0000, v176, OS_LOG_TYPE_ERROR, "Invalid receipt [%{iec-bytes}ld]", v223, 0xCu);
      }

      v5 = 0;
    }
  }

LABEL_44:

  return v5;
}

- (BOOL)isDSIDless
{
  downloadID = self->_downloadID;
  if (!downloadID || (LODWORD(v4) = [(NSString *)downloadID isEqualToString:@"0"], v4))
  {
    v4 = [(NSString *)self->_opaqueDSIDString length];
    if (v4)
    {
      if ([(NSString *)self->_opaqueDSIDString isEqualToString:@"0"])
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = ![(NSString *)self->_receiptType isEqualToString:@"ProductionSandbox"];
      }
    }
  }

  return v4;
}

- (NSString)receiptDataString
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:self->_path];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

@end