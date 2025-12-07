@interface CWFLocalDeviceDiscovery
- (BOOL)_filterName:(id)name forLexicon:(_LXLexicon *)lexicon;
- (CWFLocalDeviceDiscovery)init;
- (id)_combineDevicesWithDifferentSourceAddresses:(id)addresses;
- (id)_tokenizeStringForSpecialCharacters:(id)characters;
- (void)_callHandlerWithValidResults:(id)results filtered:(id)filtered;
- (void)_processMRCRecord:(id)record;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CWFLocalDeviceDiscovery

- (CWFLocalDeviceDiscovery)init
{
  v17.receiver = self;
  v17.super_class = CWFLocalDeviceDiscovery;
  v2 = [(CWFLocalDeviceDiscovery *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("CWFLocalNetworkDeviceDiscoveryQueue", v3);
    [(CWFLocalDeviceDiscovery *)v2 setMrcQueue:v4];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v7 = [(__CFString *)localeIdentifier hasPrefix:@"en"];
    v8 = v7;
    if (v7)
    {
      v9 = localeIdentifier;
    }

    else
    {
      v9 = @"en";
    }

    v10 = v9;
    v2->_lexiconEnglish = sub_1E0C5E87C(v10);
    if ((v8 & 1) == 0)
    {
      v2->_lexiconUserLocale = sub_1E0C5E87C(localeIdentifier);
    }

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    [whitespaceAndNewlineCharacterSet formUnionWithCharacterSet:punctuationCharacterSet];

    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [whitespaceAndNewlineCharacterSet formUnionWithCharacterSet:symbolCharacterSet];

    v14 = [whitespaceAndNewlineCharacterSet copy];
    tokenizationCharacterSet = v2->_tokenizationCharacterSet;
    v2->_tokenizationCharacterSet = v14;
  }

  return v2;
}

- (void)dealloc
{
  lexiconEnglish = self->_lexiconEnglish;
  if (lexiconEnglish)
  {
    CFRelease(lexiconEnglish);
  }

  lexiconUserLocale = self->_lexiconUserLocale;
  if (lexiconUserLocale)
  {
    CFRelease(lexiconUserLocale);
  }

  v5.receiver = self;
  v5.super_class = CWFLocalDeviceDiscovery;
  [(CWFLocalDeviceDiscovery *)&v5 dealloc];
}

- (void)activate
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[CWFLocalDeviceDiscovery activate]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 1, "[corewifi] %s", &v17);
  }

  v6 = MEMORY[0x1EEE98818];
  v7 = CWFGetOSLog();
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[CWFLocalDeviceDiscovery activate]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] %s: libMRC available", &v17);
    }

    v12 = mrc_cached_local_records_inquiry_create();
    mrcInquiry = self->_mrcInquiry;
    self->_mrcInquiry = v12;

    v14 = self->_mrcInquiry;
    mrcQueue = [(CWFLocalDeviceDiscovery *)self mrcQueue];
    MEMORY[0x1E12EA050](v14, mrcQueue);

    mrc_cached_local_records_inquiry_set_result_handler();
    MEMORY[0x1E12EA020](self->_mrcInquiry);
  }

  else
  {
    if (v7)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CWFLocalDeviceDiscovery activate]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 16, "[corewifi] %s: libMRC not available", &v17);
    }

    [(CWFLocalDeviceDiscovery *)self _callHandlerWithValidResults:0 filtered:0];
  }
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[CWFLocalDeviceDiscovery invalidate]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 1, "[corewifi] %s", &v7);
  }

  [(CWFLocalDeviceDiscovery *)self setHandler:0];
  if (self->_mrcInquiry)
  {
    mrc_cached_local_records_inquiry_invalidate();
    mrcInquiry = self->_mrcInquiry;
    self->_mrcInquiry = 0;
  }
}

- (void)_callHandlerWithValidResults:(id)results filtered:(id)filtered
{
  v20 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  filteredCopy = filtered;
  handler = [(CWFLocalDeviceDiscovery *)self handler];

  v9 = CWFGetOSLog();
  v10 = v9;
  if (handler)
  {
    if (v9)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[CWFLocalDeviceDiscovery _callHandlerWithValidResults:filtered:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] %s: calling handler", &v18);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C5F5C0;
    block[3] = &unk_1E86E6060;
    block[4] = self;
    v16 = resultsCopy;
    v17 = filteredCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (v9)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[CWFLocalDeviceDiscovery _callHandlerWithValidResults:filtered:]";
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %s: handler is nil", &v18);
    }
  }
}

- (void)_processMRCRecord:(id)record
{
  v112 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v89 = [MEMORY[0x1E695DFA8] set];
  v78 = [MEMORY[0x1E695DFA8] set];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v81 = recordCopy;
  obj = [recordCopy allKeys];
  selfCopy = self;
  v82 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (!v82)
  {
    goto LABEL_77;
  }

  v80 = *v100;
  do
  {
    v5 = 0;
    do
    {
      if (*v100 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v86 = v5;
      v6 = *(*(&v99 + 1) + 8 * v5);
      context = objc_autoreleasePoolPush();
      v7 = [v81 objectForKey:v6];
      v87 = [MEMORY[0x1E695DFA8] set];
      v8 = [MEMORY[0x1E695DFA8] set];
      v9 = objc_alloc_init(CWFLocalNetworkDevice);
      v83 = v6;
      v10 = [MEMORY[0x1E695DFD8] setWithObject:v6];
      v84 = v9;
      [(CWFLocalNetworkDevice *)v9 setSourceAddresses:v10];

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v90 = v7;
      v11 = [v90 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v96;
        do
        {
          v14 = 0;
          do
          {
            if (*v96 != v13)
            {
              objc_enumerationMutation(v90);
            }

            v15 = *(*(&v95 + 1) + 8 * v14);
            v16 = objc_autoreleasePoolPush();
            v17 = CWFGetOSLog();
            if (v17)
            {
              v18 = CWFGetOSLog();
            }

            else
            {
              v18 = MEMORY[0x1E69E9C10];
              v19 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v104 = 136315394;
              v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
              v106 = 2112;
              v107 = v15;
              LODWORD(v77) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] %s: record='%@'", &v104, v77);
            }

            serviceName = [(CWFLocalNetworkDevice *)v15 serviceName];
            v21 = [serviceName length];

            if (v21)
            {
              serviceName2 = [(CWFLocalNetworkDevice *)v15 serviceName];
              [v8 addObject:serviceName2];
            }

            deviceName = [(CWFLocalNetworkDevice *)v15 deviceName];
            _stringByReplacingHyphensWithSpaces = deviceName;
            if (deviceName && [(CWFLocalNetworkDevice *)deviceName length])
            {
              rawString = [(CWFLocalNetworkDevice *)v15 rawString];
              _stringContainsFilteredServiceName = [rawString _stringContainsFilteredServiceName];

              if (_stringContainsFilteredServiceName)
              {
                v27 = CWFGetOSLog();
                if (v27)
                {
                  v28 = CWFGetOSLog();
                }

                else
                {
                  v28 = MEMORY[0x1E69E9C10];
                  v33 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  rawString2 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v104 = 136315650;
                  v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v106 = 2112;
                  v107 = _stringByReplacingHyphensWithSpaces;
                  v108 = 2112;
                  v109 = rawString2;
                  LODWORD(v77) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 0, "[corewifi] %s: filtered='%@' (raw='%@') contains filtered service name", &v104, v77);
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 1;
LABEL_48:
                v45 = [CWFLocalNetworkFilteredName filteredName:v36 reason:v37];
                [v89 addObject:v45];

                goto LABEL_49;
              }

              if ([(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringContainsGeneratedName])
              {
                v29 = CWFGetOSLog();
                if (v29)
                {
                  v30 = CWFGetOSLog();
                }

                else
                {
                  v30 = MEMORY[0x1E69E9C10];
                  v41 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  rawString4 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v104 = 136315650;
                  v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v106 = 2112;
                  v107 = _stringByReplacingHyphensWithSpaces;
                  v108 = 2112;
                  v109 = rawString4;
                  LODWORD(v77) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 0, "[corewifi] %s: filtered='%@' (raw='%@') contains generated name", &v104, v77);
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 3;
                goto LABEL_48;
              }

              if ([(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringContainsUnwantedCharactersAtStartOrEnd])
              {
                v31 = CWFGetOSLog();
                if (v31)
                {
                  v32 = CWFGetOSLog();
                }

                else
                {
                  v32 = MEMORY[0x1E69E9C10];
                  v43 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  rawString5 = [(CWFLocalNetworkDevice *)v15 rawString];
                  v104 = 136315650;
                  v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v106 = 2112;
                  v107 = _stringByReplacingHyphensWithSpaces;
                  v108 = 2112;
                  v109 = rawString5;
                  LODWORD(v77) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 0, "[corewifi] %s: filtered='%@' (raw='%@') contains unwanted characters at start/end", &v104, v77);
                }

                rawString3 = [(CWFLocalNetworkDevice *)v15 rawString];
                v36 = rawString3;
                v37 = 2;
                goto LABEL_48;
              }

              _stringByRemovingUnwantedCharacters = [(CWFLocalNetworkDevice *)_stringByReplacingHyphensWithSpaces _stringByRemovingUnwantedCharacters];

              if ([(CWFLocalNetworkDevice *)_stringByRemovingUnwantedCharacters length])
              {
                if (!selfCopy->_lexiconEnglish || ![(CWFLocalDeviceDiscovery *)selfCopy _filterName:_stringByRemovingUnwantedCharacters forLexicon:?]&& (!selfCopy->_lexiconUserLocale || ![(CWFLocalDeviceDiscovery *)selfCopy _filterName:_stringByRemovingUnwantedCharacters forLexicon:?]))
                {
                  _stringByReplacingHyphensWithSpaces = [(CWFLocalNetworkDevice *)_stringByRemovingUnwantedCharacters _stringByReplacingHyphensWithSpaces];

                  [v87 addObject:_stringByReplacingHyphensWithSpaces];
                  goto LABEL_49;
                }

                v39 = CWFGetOSLog();
                if (v39)
                {
                  v40 = CWFGetOSLog();
                }

                else
                {
                  v40 = MEMORY[0x1E69E9C10];
                  v46 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  v104 = 136315394;
                  v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
                  v106 = 2112;
                  v107 = _stringByRemovingUnwantedCharacters;
                  LODWORD(v77) = 22;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 0, "[corewifi] %s: filtered='%@' by lexicon", &v104, v77);
                }

                rawString6 = [(CWFLocalNetworkDevice *)v15 rawString];
                v48 = [CWFLocalNetworkFilteredName filteredName:rawString6 reason:4];
                [v89 addObject:v48];
              }

              _stringByReplacingHyphensWithSpaces = _stringByRemovingUnwantedCharacters;
            }

LABEL_49:

            objc_autoreleasePoolPop(v16);
            ++v14;
          }

          while (v12 != v14);
          v49 = [v90 countByEnumeratingWithState:&v95 objects:v110 count:16];
          v12 = v49;
        }

        while (v49);
      }

      [(CWFLocalNetworkDevice *)v84 setServiceNames:v8];
      self = selfCopy;
      if ([v87 count])
      {
        v50 = CWFGetOSLog();
        if (v50)
        {
          v51 = CWFGetOSLog();
        }

        else
        {
          v51 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          _prettyDescription = [v87 _prettyDescription];
          v104 = 136315394;
          v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
          v106 = 2112;
          v107 = _prettyDescription;
          LODWORD(v77) = 22;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v51, 0, "[corewifi] %s: validNames='%@'", &v104, v77);
        }

        if ([v87 count] == 1)
        {
          anyObject = [v87 anyObject];
          [(CWFLocalNetworkDevice *)v84 setName:anyObject];
        }

        else
        {
          allObjects = [v87 allObjects];
          anyObject = [allObjects sortedArrayUsingComparator:&unk_1F5B89B50];

          firstObject = [anyObject firstObject];
          [(CWFLocalNetworkDevice *)v84 setName:firstObject];
        }

        if ([v83 _isLocalAddress])
        {
          name = [(CWFLocalNetworkDevice *)v84 name];
          v58 = [CWFLocalNetworkFilteredName filteredName:name reason:5];
          [v89 addObject:v58];

          v59 = CWFGetOSLog();
          if (v59)
          {
            v60 = CWFGetOSLog();
          }

          else
          {
            v60 = MEMORY[0x1E69E9C10];
            v61 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v104 = 136315394;
            v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
            v106 = 2112;
            v107 = v84;
            LODWORD(v77) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v60, 0, "[corewifi] %s: filtering current device='%@'", &v104, v77);
          }
        }

        else
        {
          [v78 addObject:v84];
        }
      }

      objc_autoreleasePoolPop(context);
      v5 = v86 + 1;
    }

    while (v86 + 1 != v82);
    v82 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
  }

  while (v82);
LABEL_77:

  v62 = [(CWFLocalDeviceDiscovery *)self _combineDevicesWithDifferentSourceAddresses:v78];
  v63 = CWFGetOSLog();
  if (v63)
  {
    v64 = CWFGetOSLog();
  }

  else
  {
    v64 = MEMORY[0x1E69E9C10];
    v65 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v66 = [v62 count];
    v104 = 136315394;
    v105 = "[CWFLocalDeviceDiscovery _processMRCRecord:]";
    v106 = 2048;
    v107 = v66;
    LODWORD(v77) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v64, 0, "[corewifi] %s: valid local devices=%lu", &v104, v77);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v67 = v62;
  v68 = [v67 countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v92;
    v71 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v92 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v73 = *(*(&v91 + 1) + 8 * i);
        v74 = CWFGetOSLog();
        if (v74)
        {
          v75 = CWFGetOSLog();
        }

        else
        {
          v76 = v71;
          v75 = v71;
        }

        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v104 = 138412290;
          v105 = v73;
          LODWORD(v77) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v75, 0, "[corewifi] %@", &v104, v77);
        }
      }

      v69 = [v67 countByEnumeratingWithState:&v91 objects:v103 count:16];
    }

    while (v69);
  }

  [(CWFLocalDeviceDiscovery *)selfCopy _callHandlerWithValidResults:v67 filtered:v89];
}

- (id)_combineDevicesWithDifferentSourceAddresses:(id)addresses
{
  v75 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  if (addressesCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v47 = addressesCopy;
    v5 = addressesCopy;
    v6 = [v5 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v65;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v65 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v64 + 1) + 8 * i);
          name = [v10 name];

          if (name)
          {
            sanitizedName = [v10 sanitizedName];
            v13 = [dictionary objectForKey:sanitizedName];
            if (v13)
            {
              [dictionary objectForKey:sanitizedName];
            }

            else
            {
              [MEMORY[0x1E695DFA8] set];
            }
            v15 = ;

            [v15 addObject:v10];
            [dictionary setObject:v15 forKey:sanitizedName];
          }

          else
          {
            v14 = CWFGetOSLog();
            if (v14)
            {
              sanitizedName = CWFGetOSLog();
            }

            else
            {
              sanitizedName = MEMORY[0x1E69E9C10];
              v16 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(sanitizedName, OS_LOG_TYPE_DEFAULT))
            {
              v70 = 136315394;
              v71 = "[CWFLocalDeviceDiscovery _combineDevicesWithDifferentSourceAddresses:]";
              v72 = 2112;
              v73 = v10;
              LODWORD(v46) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, sanitizedName, 0, "[corewifi] %s: nil name for device='%@'", &v70, v46);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v7);
    }

    v17 = [MEMORY[0x1E695DFA8] set];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [dictionary allKeys];
    v18 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v61;
      v49 = v17;
      v50 = dictionary;
      v48 = *v61;
      do
      {
        v21 = 0;
        v51 = v19;
        do
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v60 + 1) + 8 * v21);
          v23 = [dictionary objectForKey:v22];
          if ([v23 count] == 1)
          {
            anyObject = [v23 anyObject];
            [v17 addObject:anyObject];
          }

          else
          {
            v53 = v22;
            v55 = v21;
            anyObject = [MEMORY[0x1E695DFA8] set];
            v25 = [MEMORY[0x1E695DFA8] set];
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v54 = v23;
            v26 = v23;
            v27 = [v26 countByEnumeratingWithState:&v56 objects:v68 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v57;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v57 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v56 + 1) + 8 * j);
                  serviceNames = [v31 serviceNames];
                  if (serviceNames)
                  {
                    v33 = serviceNames;
                    serviceNames2 = [v31 serviceNames];
                    v35 = [serviceNames2 count];

                    if (v35)
                    {
                      serviceNames3 = [v31 serviceNames];
                      allObjects = [serviceNames3 allObjects];
                      [anyObject addObjectsFromArray:allObjects];
                    }
                  }

                  sourceAddresses = [v31 sourceAddresses];
                  if (sourceAddresses)
                  {
                    v39 = sourceAddresses;
                    sourceAddresses2 = [v31 sourceAddresses];
                    v41 = [sourceAddresses2 count];

                    if (v41)
                    {
                      sourceAddresses3 = [v31 sourceAddresses];
                      allObjects2 = [sourceAddresses3 allObjects];
                      [v25 addObjectsFromArray:allObjects2];
                    }
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v56 objects:v68 count:16];
              }

              while (v28);
            }

            v44 = objc_alloc_init(CWFLocalNetworkDevice);
            [(CWFLocalNetworkDevice *)v44 setName:v53];
            [(CWFLocalNetworkDevice *)v44 setServiceNames:anyObject];
            [(CWFLocalNetworkDevice *)v44 setSourceAddresses:v25];
            v17 = v49;
            [v49 addObject:v44];

            dictionary = v50;
            v19 = v51;
            v20 = v48;
            v23 = v54;
            v21 = v55;
          }

          ++v21;
        }

        while (v21 != v19);
        v19 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v19);
    }

    addressesCopy = v47;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_filterName:(id)name forLexicon:(_LXLexicon *)lexicon
{
  v57 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(CWFLocalDeviceDiscovery *)self _tokenizeStringForSpecialCharacters:nameCopy];
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 138412546;
    v46 = nameCopy;
    v47 = 2112;
    v48 = v7;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] %@ tokens -> %@", &v45, 22);
  }

  if ([v7 count])
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1E0C60C34;
    v27[3] = &unk_1E86E7370;
    lexiconCopy = lexicon;
    v11 = nameCopy;
    v28 = v11;
    v29 = &v41;
    v30 = &v33;
    v31 = &v37;
    [v7 enumerateObjectsUsingBlock:v27];
    if ((v42[3] & 1) != 0 || (v12 = v38[3], v12 > 1) || v12 == [v7 count])
    {
      v13 = CWFGetOSLog();
      if (v13)
      {
        v14 = CWFGetOSLog();
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v42 + 24);
        v19 = v34[3];
        v20 = v38[3];
        v21 = [v7 count];
        v22 = @"NO";
        v45 = 136316418;
        v46 = "[CWFLocalDeviceDiscovery _filterName:forLexicon:]";
        v47 = 2112;
        v48 = v11;
        if (v20 == v21)
        {
          v22 = @"YES";
        }

        v49 = 1024;
        v50 = v18;
        v51 = 2048;
        v52 = v19;
        v53 = 2048;
        v54 = v20;
        v55 = 2112;
        v56 = v22;
        LODWORD(v26) = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] %s: removing '%@' due lexicon (foundUnwantedWords: %d, lexiconMatches: %lu, lexiconNonMatches: %lu, noMatches: %@)", &v45, v26);
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v41, 8);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412290;
      v46 = nameCopy;
      LODWORD(v26) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] failed to tokenize name='%@'", &v45, v26);
    }

    v23 = 1;
  }

  return v23;
}

- (id)_tokenizeStringForSpecialCharacters:(id)characters
{
  charactersCopy = characters;
  v17 = [MEMORY[0x1E695DFA8] set];
  if ([charactersCopy length])
  {
    context = objc_autoreleasePoolPush();
    v18 = [charactersCopy length];
    v4 = v18 - 2;
    if (v18 >= 2)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v5 + 1;
        v8 = [charactersCopy characterAtIndex:v5 + 1];
        tokenizationCharacterSet = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
        LODWORD(v8) = [tokenizationCharacterSet characterIsMember:v8];

        if ((v4 == v5) | v8)
        {
          v10 = v18;
          if (v4 != v5)
          {
            v10 = v5 + 1;
          }

          v11 = [charactersCopy substringWithRange:{v6, v10 - v6}];
          tokenizationCharacterSet2 = [(CWFLocalDeviceDiscovery *)self tokenizationCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:tokenizationCharacterSet2];
          lowercaseString = [v13 lowercaseString];

          if ([lowercaseString length] >= 2)
          {
            [v17 addObject:lowercaseString];
          }
        }

        else
        {
          v7 = v6;
        }

        ++v5;
        v6 = v7;
      }

      while (v18 - 1 != v5);
    }

    objc_autoreleasePoolPop(context);
  }

  return v17;
}

@end