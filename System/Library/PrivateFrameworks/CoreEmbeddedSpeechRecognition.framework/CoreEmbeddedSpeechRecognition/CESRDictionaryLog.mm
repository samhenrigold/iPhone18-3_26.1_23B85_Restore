@interface CESRDictionaryLog
- (BOOL)_loadLogOrCreate:(BOOL)create readOnly:(BOOL)only error:(id *)error;
- (BOOL)clear:(id *)clear;
- (BOOL)clearObjectForKey:(id)key error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDictionaryLog:(id)log;
- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error;
- (CESRDictionaryLog)init;
- (CESRDictionaryLog)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory readOnly:(BOOL)only create:(BOOL)create error:(id *)error;
- (id)description;
- (id)mutableDictionaryForKey:(id)key error:(id *)error;
- (id)objectForKey:(id)key;
- (unint64_t)hash;
@end

@implementation CESRDictionaryLog

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_logFileURL hash];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_protectionClass];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSDictionary *)self->_log hash];

  return v5 ^ v6;
}

- (BOOL)isEqualToDictionaryLog:(id)log
{
  logCopy = log;
  if ([(NSURL *)self->_logFileURL isEqual:logCopy[1]]&& self->_protectionClass == *(logCopy + 6))
  {
    v5 = [(NSDictionary *)self->_log isEqual:logCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRDictionaryLog *)self isEqualToDictionaryLog:equalCopy];

  return v5;
}

- (BOOL)clear:(id *)clear
{
  v26[1] = *MEMORY[0x277D85DE8];
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v5 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v26[0] = v6;
    defaultManager = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v8 = [v5 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:3 userInfo:defaultManager];
    path = v8;
    v10 = 0;
    if (clear && v8)
    {
      v11 = v8;
      v10 = 0;
      *clear = path;
    }

    goto LABEL_18;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [(NSURL *)self->_logFileURL path];
  if (!path || ![defaultManager fileExistsAtPath:path])
  {
    v14 = 0;
    goto LABEL_17;
  }

  logFileURL = self->_logFileURL;
  v20 = 0;
  v13 = [defaultManager removeItemAtURL:logFileURL error:&v20];
  v14 = v20;
  if (v13)
  {
LABEL_17:
    [(NSDictionary *)self->_log removeAllObjects];
    v10 = 1;
    v6 = v14;
    goto LABEL_18;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove log file at path: %@", path];
  [v15 setObject:v16 forKey:*MEMORY[0x277CCA450]];

  if (v14)
  {
    [v15 setObject:v14 forKey:*MEMORY[0x277CCA7E8]];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v15];

  if (clear && v6)
  {
    v17 = v6;
    *clear = v6;
  }

  v18 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[CESRDictionaryLog clear:]";
    v23 = 2112;
    v24 = v6;
    _os_log_error_impl(&dword_225EEB000, v18, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)clearObjectForKey:(id)key error:(id *)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v7 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v34[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v10 = v7;
    v11 = 3;
    goto LABEL_10;
  }

  if (!keyCopy)
  {
    v17 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid key: %@", 0];
    v32 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v10 = v17;
    v11 = 1;
LABEL_10:
    v18 = [v10 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v11 userInfo:v9];
    if (error && v18)
    {
      v18 = v18;
      *error = v18;
    }

    v13 = 0;
    goto LABEL_26;
  }

  v12 = [(NSDictionary *)self->_log objectForKey:keyCopy];
  if (v12)
  {
    v8 = v12;
    [(NSDictionary *)self->_log removeObjectForKey:keyCopy];
    v13 = SFWritePropertyList();
    v14 = 0;
    if (v13)
    {
      v15 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v26 = "[CESRDictionaryLog clearObjectForKey:error:]";
        v27 = 2112;
        v28 = v8;
        v29 = 2112;
        v30 = keyCopy;
        _os_log_debug_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEBUG, "%s Removed object: %@ for key: %@", buf, 0x20u);
      }

      v16 = v14;
    }

    else
    {
      [(NSDictionary *)self->_log setObject:v8 forKey:keyCopy];
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write removal for key: %@ reverting to prior object: %@", keyCopy, v8];
      [v20 setObject:v21 forKey:*MEMORY[0x277CCA450]];

      if (v14)
      {
        [v20 setObject:v14 forKey:*MEMORY[0x277CCA7E8]];
      }

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v20];

      if (error && v16)
      {
        v22 = v16;
        *error = v16;
      }

      v23 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[CESRDictionaryLog clearObjectForKey:error:]";
        v27 = 2112;
        v28 = v16;
        _os_log_error_impl(&dword_225EEB000, v23, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "[CESRDictionaryLog clearObjectForKey:error:]";
      v27 = 2112;
      v28 = keyCopy;
      _os_log_debug_impl(&dword_225EEB000, v19, OS_LOG_TYPE_DEBUG, "%s No object exists for key: %@", buf, 0x16u);
    }

    v8 = 0;
    v13 = 1;
  }

LABEL_26:

  return v13;
}

- (BOOL)writeUpdatedObjects:(id)objects forKeys:(id)keys error:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  keysCopy = keys;
  if ([(CESRDictionaryLog *)self isReadOnly])
  {
    v10 = MEMORY[0x277CCA9B8];
    v61 = *MEMORY[0x277CCA450];
    keysCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"instance: %@ is read only.", self];
    v62[0] = keysCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v13 = v10;
    v14 = 3;
    goto LABEL_18;
  }

  v15 = [objectsCopy count];
  if (v15 != [keysCopy count])
  {
    v23 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    keysCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected number of objects: %@ for keys: %@", objectsCopy, keysCopy];
    v60 = keysCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v13 = v23;
    v14 = 1;
LABEL_18:
    v24 = [v13 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v14 userInfo:v12];
    if (error && v24)
    {
      v24 = v24;
      *error = v24;
    }

    goto LABEL_22;
  }

  errorCopy = error;
  keysCopy = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v16 = [objectsCopy count];
  if ([objectsCopy count])
  {
    for (i = 0; i < [objectsCopy count]; ++i)
    {
      v18 = [objectsCopy objectAtIndex:i];
      v19 = [keysCopy objectAtIndex:i];
      v20 = [keysCopy objectForKey:v19];
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = [(NSDictionary *)self->_log objectForKey:v19];
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      if ([v21 isEqual:v18])
      {
        v22 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v51 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
          v52 = 2112;
          v53 = v18;
          v54 = 2112;
          v55 = v19;
          _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s object: %@ is already recorded for key: %@", buf, 0x20u);
        }

        --v16;
        goto LABEL_15;
      }

      [keysCopy setObject:v21 forKey:v19];
LABEL_14:
      [(NSDictionary *)self->_log setObject:v18 forKey:v19];
LABEL_15:
    }
  }

  if (!v16)
  {
    v25 = 1;
    goto LABEL_24;
  }

  v49 = 0;
  v27 = SFWritePropertyList();
  v28 = 0;
  v29 = v28;
  if (v27)
  {
    v30 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v51 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
      v52 = 2112;
      v53 = objectsCopy;
      v54 = 2112;
      v55 = keysCopy;
      v56 = 2112;
      v57 = keysCopy;
      _os_log_debug_impl(&dword_225EEB000, v30, OS_LOG_TYPE_DEBUG, "%s Updated object(s): %@ for key(s): %@ replacing prior object(s): %@", buf, 0x2Au);
    }

    v25 = 1;
    v12 = v29;
    goto LABEL_23;
  }

  v43 = v28;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = keysCopy;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * j);
        v37 = [keysCopy objectForKey:v36];
        log = self->_log;
        if (v37)
        {
          [(NSDictionary *)log setObject:v37 forKey:v36];
        }

        else
        {
          [(NSDictionary *)log removeObjectForKey:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v33);
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write updated object(s): %@ for key(s): %@ reverting to prior object(s): %@", objectsCopy, v31, keysCopy];
  [v39 setObject:v40 forKey:*MEMORY[0x277CCA450]];

  if (v43)
  {
    [v39 setObject:v43 forKey:*MEMORY[0x277CCA7E8]];
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:8 userInfo:v39];

  if (errorCopy && v12)
  {
    v41 = v12;
    *errorCopy = v12;
  }

  v42 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[CESRDictionaryLog writeUpdatedObjects:forKeys:error:]";
    v52 = 2112;
    v53 = v12;
    _os_log_error_impl(&dword_225EEB000, v42, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

LABEL_22:
  v25 = 0;
LABEL_23:

LABEL_24:
  return v25;
}

- (BOOL)writeUpdatedObject:(id)object forKey:(id)key error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  if (object && key)
  {
    objectCopy = object;
    v8 = MEMORY[0x277CBEA60];
    keyCopy = key;
    objectCopy2 = object;
    keyCopy2 = [v8 arrayWithObjects:&objectCopy count:1];
    v21 = keyCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];

    v13 = [(CESRDictionaryLog *)self writeUpdatedObjects:keyCopy2 forKeys:v12 error:error];
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v15 = MEMORY[0x277CCACA8];
    keyCopy2 = key;
    objectCopy3 = object;
    keyCopy2 = [v15 stringWithFormat:@"Invalid {object: %@ key: %@}", objectCopy3, keyCopy2];
    v24[0] = keyCopy2;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v14 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:1 userInfo:v12];

    if (error && v18)
    {
      v19 = v18;
      *error = v18;
    }

    v13 = 0;
  }

  return v13;
}

- (id)mutableDictionaryForKey:(id)key error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [(CESRDictionaryLog *)self objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_13:
    v18 = v8;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 mutableCopy];
    goto LABEL_13;
  }

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_13;
  }

  v9 = MEMORY[0x277CCA9B8];
  v24 = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"Unexpected object: %@ for key: %@ expected: %@", v7, keyCopy, v12];
  v25[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v15 = [v9 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:4 userInfo:v14];

  if (error && v15)
  {
    v16 = v15;
    *error = v15;
  }

  v17 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[CESRDictionaryLog mutableDictionaryForKey:error:]";
    v22 = 2112;
    v23 = v15;
    _os_log_error_impl(&dword_225EEB000, v17, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (id)objectForKey:(id)key
{
  v3 = [(NSDictionary *)self->_log objectForKey:key];
  v4 = [v3 copy];

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CESRDictionaryLog;
  v3 = [(CESRDictionaryLog *)&v7 description];
  path = [(NSURL *)self->_logFileURL path];
  v5 = [v3 stringByAppendingFormat:@" logFile: %@", path];

  return v5;
}

- (BOOL)_loadLogOrCreate:(BOOL)create readOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v54[1] = *MEMORY[0x277D85DE8];
  path = [(NSURL *)self->_logFileURL path];
  v10 = SFReadPropertyList();
  v11 = 0;
  log = self->_log;
  self->_log = v10;

  if (!self->_log)
  {
    code = [v11 code];
    v22 = *MEMORY[0x277CEF0E8];
    if (code == 260)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v44 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
        v45 = 2112;
        v46 = path;
        _os_log_debug_impl(&dword_225EEB000, v22, OS_LOG_TYPE_DEBUG, "%s No prior log found at path: %@", buf, 0x16u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA7E8];
      v50 = v11;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v25 = v23;
      v26 = 6;
LABEL_26:
      v36 = [v25 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:v26 userInfo:v24];

      v11 = v36;
      if (create)
      {
        goto LABEL_14;
      }

LABEL_27:
      v32 = 0;
      if (error && v11)
      {
        v37 = v11;
        v32 = 0;
        *error = v11;
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
      v45 = 2112;
      v46 = path;
      v47 = 2112;
      v48 = v11;
      _os_log_error_impl(&dword_225EEB000, v22, OS_LOG_TYPE_ERROR, "%s Failed to read prior log file at path: %@ error: %@", buf, 0x20u);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    else if (v11)
    {
LABEL_22:
      v41 = *MEMORY[0x277CCA7E8];
      v42 = v11;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
LABEL_25:
      v25 = MEMORY[0x277CCA9B8];
      v26 = 7;
      goto LABEL_26;
    }

    v24 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (onlyCopy)
    {
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_16;
    }

    errorCopy2 = error;
    v39 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"Expected mutable plist class (%@) but received class (%@) for object: %@ at path: %@", v15, v17, self->_log, path];
    v54[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v20 = [v39 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:5 userInfo:v19];

    v11 = v19;
  }

  else
  {
    errorCopy2 = error;
    v27 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v28 = MEMORY[0x277CCACA8];
    v29 = objc_opt_class();
    v15 = NSStringFromClass(v29);
    v17 = [v28 stringWithFormat:@"Unexpected plist class (%@) of object: %@ at path: %@", v15, self->_log, path];
    v52 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v20 = [v27 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:5 userInfo:v18];
  }

  v30 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v44 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
    v45 = 2112;
    v46 = v20;
    _os_log_error_impl(&dword_225EEB000, v30, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v11 = v20;
  error = errorCopy2;
  if (!create)
  {
    goto LABEL_27;
  }

LABEL_14:
  if (onlyCopy)
  {
    v31 = self->_log;
    self->_log = MEMORY[0x277CBEC10];

LABEL_16:
    v32 = 1;
    goto LABEL_30;
  }

  v33 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "[CESRDictionaryLog _loadLogOrCreate:readOnly:error:]";
    v45 = 2112;
    v46 = path;
    _os_log_impl(&dword_225EEB000, v33, OS_LOG_TYPE_INFO, "%s Initializing empty log file at path: %@", buf, 0x16u);
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = self->_log;
  self->_log = v34;

  v32 = SFWritePropertyList();
LABEL_30:

  return v32;
}

- (CESRDictionaryLog)initWithFilename:(id)filename protectionClass:(int)class directory:(id)directory readOnly:(BOOL)only create:(BOOL)create error:(id *)error
{
  createCopy = create;
  onlyCopy = only;
  v27[1] = *MEMORY[0x277D85DE8];
  filenameCopy = filename;
  directoryCopy = directory;
  v25.receiver = self;
  v25.super_class = CESRDictionaryLog;
  v16 = [(CESRDictionaryLog *)&v25 init];
  if (!v16)
  {
    goto LABEL_5;
  }

  if (!filenameCopy || !directoryCopy)
  {
    v20 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    directoryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid {filename: %@, directory: %@}", filenameCopy, directoryCopy];
    v27[0] = directoryCopy;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v23 = [v20 errorWithDomain:@"com.apple.siri.speech-dictionary-log" code:2 userInfo:v22];
    if (error && v23)
    {
      v23 = v23;
      *error = v23;
    }

    goto LABEL_10;
  }

  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:filenameCopy relativeToURL:directoryCopy];
  logFileURL = v16->_logFileURL;
  v16->_logFileURL = v17;

  v16->_protectionClass = class;
  if (![(CESRDictionaryLog *)v16 _loadLogOrCreate:createCopy readOnly:onlyCopy error:error])
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v19 = v16;
LABEL_11:

  return v19;
}

- (CESRDictionaryLog)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end