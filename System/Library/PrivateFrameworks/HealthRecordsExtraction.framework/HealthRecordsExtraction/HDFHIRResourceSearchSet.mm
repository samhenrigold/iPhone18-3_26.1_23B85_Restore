@interface HDFHIRResourceSearchSet
+ (id)searchSetWithFHIRJSONObject:(id)object serverBaseURL:(id)l error:(id *)error;
- (id)_initWithEntries:(id)entries serverBaseURL:(id)l pageURL:(id)rL nextPageURL:(id)uRL;
@end

@implementation HDFHIRResourceSearchSet

- (id)_initWithEntries:(id)entries serverBaseURL:(id)l pageURL:(id)rL nextPageURL:(id)uRL
{
  entriesCopy = entries;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v24.receiver = self;
  v24.super_class = HDFHIRResourceSearchSet;
  v14 = [(HDFHIRResourceSearchSet *)&v24 init];
  if (v14)
  {
    v15 = [entriesCopy copy];
    entries = v14->_entries;
    v14->_entries = v15;

    v17 = [lCopy copy];
    serverBaseURL = v14->_serverBaseURL;
    v14->_serverBaseURL = v17;

    v19 = [rLCopy copy];
    pageURL = v14->_pageURL;
    v14->_pageURL = v19;

    v21 = [uRLCopy copy];
    nextPageURL = v14->_nextPageURL;
    v14->_nextPageURL = v21;
  }

  return v14;
}

+ (id)searchSetWithFHIRJSONObject:(id)object serverBaseURL:(id)l error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  lCopy = l;
  if (!lCopy)
  {
    [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:a2 serverBaseURL:self error:?];
  }

  detectedResourceType = [objectCopy detectedResourceType];
  v11 = [detectedResourceType isEqualToString:@"Bundle"];

  if ((v11 & 1) == 0)
  {
    v38 = MEMORY[0x277CCA9B8];
    detectedResourceType2 = [objectCopy detectedResourceType];
    [v38 hk_assignError:error code:3 format:{@"searchSetWithFHIRJSONObject needs Bundle resource, but got %@", detectedResourceType2}];

    v40 = 0;
    goto LABEL_67;
  }

  selfCopy = self;
  sourceURL = [objectCopy sourceURL];
  jSONObject = [objectCopy JSONObject];
  v14 = [jSONObject hk_safeArrayIfExistsForKeyPath:@"link" error:0];

  errorCopy = error;
  v75 = objectCopy;
  v70 = v14;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v77 = sourceURL;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_28;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v93;
  v19 = @"url";
  v20 = 0x277CCA000uLL;
  v21 = @"link.url";
  do
  {
    v22 = 0;
    v79 = v16;
    do
    {
      if (*v93 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v92 + 1) + 8 * v22);
      v24 = [v23 objectForKeyedSubscript:v19];
      objc_opt_class();
      v25 = HKSafeObject();

      if (v25)
      {
        v26 = [lCopy hrs_URLByExpandingReference:v25];
        if (v26)
        {
          v27 = v18;
          v28 = v21;
          v29 = v19;
          v30 = v20;
          v31 = [v23 valueForKeyPath:@"relation"];
          if ([v31 isEqual:@"self"])
          {
            v32 = v77;
            v77 = v26;
            goto LABEL_19;
          }

          v35 = [v31 isEqual:@"next"];
          v36 = v17;
          v32 = v17;
          v17 = v26;
          if (v35)
          {
LABEL_19:
            v37 = v26;

            v36 = v17;
          }

          v17 = v36;

          v20 = v30;
          v19 = v29;
          v21 = v28;
          v18 = v27;
          v16 = v79;
        }

        else
        {
          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            [(HDFHIRResourceSearchSet *)v99 searchSetWithFHIRJSONObject:v34 serverBaseURL:v25 error:&v100];
          }
        }

        goto LABEL_22;
      }

      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251CC8000, v33, OS_LOG_TYPE_DEFAULT, "Ignoring link entry missing its url in Bundle", buf, 2u);
      }

LABEL_22:

      ++v22;
    }

    while (v16 != v22);
    v16 = [obj countByEnumeratingWithState:&v92 objects:v101 count:16];
  }

  while (v16);
LABEL_28:

  error = errorCopy;
  objectCopy = v75;
  sourceURL = v77;
  v14 = v70;
LABEL_29:
  array = [MEMORY[0x277CBEB18] array];
  jSONObject2 = [objectCopy JSONObject];
  v91 = 0;
  v43 = [jSONObject2 hk_safeArrayForKeyPath:@"entry" error:&v91];
  v69 = v91;

  if (v43)
  {
    v71 = array;
    v78 = sourceURL;
    date = [MEMORY[0x277CBEAA8] date];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v67 = v43;
    v72 = v43;
    v80 = [v72 countByEnumeratingWithState:&v87 objects:v98 count:16];
    if (v80)
    {
      v76 = *v88;
      while (2)
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v88 != v76)
          {
            objc_enumerationMutation(v72);
          }

          v45 = *(*(&v87 + 1) + 8 * i);
          objc_opt_class();
          v46 = HKSafeObject();

          if (!v46)
          {

            v40 = 0;
            sourceURL = v78;
            v14 = v70;
            array = v71;
            v43 = v67;
            goto LABEL_66;
          }

          v47 = [v45 hk_safeStringIfExistsForKeyPath:@"fullUrl" error:0];
          if (v47)
          {
            v48 = [MEMORY[0x277CBEBC0] URLWithString:v47];
          }

          else
          {
            v48 = 0;
          }

          v86 = 0;
          v49 = [v45 hk_safeDictionaryForKeyPath:@"resource" error:&v86];
          v50 = v86;
          if (v49)
          {
            v51 = MEMORY[0x277D12380];
            fHIRVersion = [objectCopy FHIRVersion];
            obja = v48;
            if (v48)
            {
              v85 = v50;
              v53 = &v85;
              [v51 resourceObjectWithJSONObject:v49 sourceURL:v48 FHIRVersion:fHIRVersion receivedDate:date extractionHints:0 error:&v85];
            }

            else
            {
              v84 = v50;
              v53 = &v84;
              [v51 resourceObjectWithJSONObject:v49 serverBaseURL:lCopy FHIRVersion:fHIRVersion receivedDate:date error:&v84];
            }
            v56 = ;
            v55 = *v53;

            if (v56)
            {
              [v71 addObject:v56];
              objectCopy = v75;
            }

            else
            {
              _HKInitializeLogging();
              v57 = *MEMORY[0x277CCC2C0];
              objectCopy = v75;
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v97 = v55;
                _os_log_error_impl(&dword_251CC8000, v57, OS_LOG_TYPE_ERROR, "Failed to create resource object from search set entry: %@", buf, 0xCu);
              }
            }

            v48 = obja;
          }

          else
          {
            _HKInitializeLogging();
            v54 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v97 = v50;
              _os_log_impl(&dword_251CC8000, v54, OS_LOG_TYPE_DEFAULT, "No resource in search set entry: %@", buf, 0xCu);
            }

            v55 = v50;
          }
        }

        v80 = [v72 countByEnumeratingWithState:&v87 objects:v98 count:16];
        if (v80)
        {
          continue;
        }

        break;
      }
    }

    sourceURL = v78;
    v14 = v70;
    array = v71;
    v43 = v67;
LABEL_63:
    v40 = [[selfCopy alloc] _initWithEntries:array serverBaseURL:lCopy pageURL:sourceURL nextPageURL:v17];
  }

  else
  {
    jSONObject3 = [objectCopy JSONObject];
    v59 = [jSONObject3 objectForKeyedSubscript:@"entry"];

    _HKInitializeLogging();
    v60 = *MEMORY[0x277CCC2C0];
    v61 = *MEMORY[0x277CCC2C0];
    if (!v59)
    {
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v60;
        v65 = HKSensitiveLogItem();
        *buf = 138412290;
        v97 = v65;
        _os_log_impl(&dword_251CC8000, v64, OS_LOG_TYPE_DEFAULT, "There's no entry key on Bundle obtained from %@", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:v60 serverBaseURL:sourceURL error:?];
    }

    v62 = v69;
    if (v62)
    {
      if (error)
      {
        v63 = v62;
        *error = v62;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v40 = 0;
  }

LABEL_66:

LABEL_67:

  return v40;
}

@end