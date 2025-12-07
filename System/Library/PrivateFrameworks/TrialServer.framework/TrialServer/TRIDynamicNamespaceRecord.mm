@interface TRIDynamicNamespaceRecord
+ (id)dynamicNamespaceRecordWithName:(id)name teamId:(id)id appContainer:(id)container cloudKitContainer:(int)kitContainer compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l hasFetched:(BOOL)fetched;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDynamicNamespaceRecord:(id)record;
- (TRIDynamicNamespaceRecord)initWithCoder:(id)coder;
- (TRIDynamicNamespaceRecord)initWithName:(id)name teamId:(id)id appContainer:(id)container cloudKitContainer:(int)kitContainer compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l hasFetched:(BOOL)fetched;
- (id)copyWithReplacementAppContainer:(id)container;
- (id)copyWithReplacementCloudKitContainer:(int)container;
- (id)copyWithReplacementCompatibilityVersion:(unsigned int)version;
- (id)copyWithReplacementDefaultsFileURL:(id)l;
- (id)copyWithReplacementName:(id)name;
- (id)copyWithReplacementTeamId:(id)id;
- (id)description;
- (unint64_t)hash;
- (void)defaultEncodeWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIDynamicNamespaceRecord

- (TRIDynamicNamespaceRecord)initWithName:(id)name teamId:(id)id appContainer:(id)container cloudKitContainer:(int)kitContainer compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l hasFetched:(BOOL)fetched
{
  nameCopy = name;
  idCopy = id;
  containerCopy = container;
  lCopy = l;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"teamId != nil"}];

    if (containerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (containerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"appContainer != nil"}];

LABEL_4:
  v27.receiver = self;
  v27.super_class = TRIDynamicNamespaceRecord;
  v19 = [(TRIDynamicNamespaceRecord *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v20->_teamId, id);
    objc_storeStrong(&v20->_appContainer, container);
    v20->_cloudKitContainer = kitContainer;
    v20->_compatibilityVersion = version;
    objc_storeStrong(&v20->_defaultsFileURL, l);
    v20->_hasFetched = fetched;
  }

  return v20;
}

+ (id)dynamicNamespaceRecordWithName:(id)name teamId:(id)id appContainer:(id)container cloudKitContainer:(int)kitContainer compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l hasFetched:(BOOL)fetched
{
  v9 = *&version;
  v10 = *&kitContainer;
  lCopy = l;
  containerCopy = container;
  idCopy = id;
  nameCopy = name;
  LOBYTE(v21) = fetched;
  v19 = [[self alloc] initWithName:nameCopy teamId:idCopy appContainer:containerCopy cloudKitContainer:v10 compatibilityVersion:v9 defaultsFileURL:lCopy hasFetched:v21];

  return v19;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:nameCopy teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementTeamId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:idCopy appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementAppContainer:(id)container
{
  containerCopy = container;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:self->_teamId appContainer:containerCopy cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v8];

  return v6;
}

- (id)copyWithReplacementCloudKitContainer:(int)container
{
  v3 = *&container;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v7) = self->_hasFetched;
  return [v5 initWithName:self->_name teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:v3 compatibilityVersion:self->_compatibilityVersion defaultsFileURL:self->_defaultsFileURL hasFetched:v7];
}

- (id)copyWithReplacementCompatibilityVersion:(unsigned int)version
{
  v3 = *&version;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v7) = self->_hasFetched;
  return [v5 initWithName:self->_name teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:v3 defaultsFileURL:self->_defaultsFileURL hasFetched:v7];
}

- (id)copyWithReplacementDefaultsFileURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_hasFetched;
  v6 = [v5 initWithName:self->_name teamId:self->_teamId appContainer:self->_appContainer cloudKitContainer:self->_cloudKitContainer compatibilityVersion:self->_compatibilityVersion defaultsFileURL:lCopy hasFetched:v8];

  return v6;
}

- (BOOL)isEqualToDynamicNamespaceRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy || (v6 = self->_name == 0, [recordCopy name], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (name = self->_name) != 0 && (objc_msgSend(v5, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](name, "isEqual:", v10), v10, !v11) || (v12 = self->_teamId == 0, objc_msgSend(v5, "teamId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (teamId = self->_teamId) != 0 && (objc_msgSend(v5, "teamId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](teamId, "isEqual:", v16), v16, !v17) || (v18 = self->_appContainer == 0, objc_msgSend(v5, "appContainer"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (appContainer = self->_appContainer) != 0 && (objc_msgSend(v5, "appContainer"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[TRIAppContainer isEqual:](appContainer, "isEqual:", v22), v22, !v23) || (cloudKitContainer = self->_cloudKitContainer, cloudKitContainer != objc_msgSend(v5, "cloudKitContainer")) || (compatibilityVersion = self->_compatibilityVersion, compatibilityVersion != objc_msgSend(v5, "compatibilityVersion")) || (v26 = self->_defaultsFileURL == 0, objc_msgSend(v5, "defaultsFileURL"), v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 != 0, v27, v26 == v28) || (defaultsFileURL = self->_defaultsFileURL) != 0 && (objc_msgSend(v5, "defaultsFileURL"), v30 = objc_claimAutoreleasedReturnValue(), v31 = -[NSURL isEqual:](defaultsFileURL, "isEqual:", v30), v30, !v31))
  {
    v33 = 0;
  }

  else
  {
    hasFetched = self->_hasFetched;
    v33 = hasFetched == [v5 hasFetched];
  }

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIDynamicNamespaceRecord *)self isEqualToDynamicNamespaceRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_teamId hash]- v3 + 32 * v3;
  v5 = [(TRIAppContainer *)self->_appContainer hash];
  v6 = self->_cloudKitContainer - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = self->_compatibilityVersion - v6 + 32 * v6;
  v8 = [(NSURL *)self->_defaultsFileURL hash];
  return self->_hasFetched - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
}

- (TRIDynamicNamespaceRecord)initWithCoder:(id)coder
{
  v45[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"teamId"];
    if (!v6)
    {
      error = [coderCopy error];

      if (error)
      {
        v6 = 0;
        selfCopy = 0;
LABEL_33:

        goto LABEL_34;
      }

      v42 = *MEMORY[0x277CCA450];
      v43 = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.teamId";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v8];
      [coderCopy failWithError:v11];
      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = objc_opt_class();
      v8 = NSStringFromClass(v16);
      v17 = objc_opt_class();
      v11 = NSStringFromClass(v17);
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIDynamicNamespaceRecord key teamId (expected %@, decoded %@)", v8, v11, 0];
      v40 = *MEMORY[0x277CCA450];
      v41 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:3 userInfo:v19];
      [coderCopy failWithError:v20];

LABEL_15:
LABEL_16:

LABEL_30:
      selfCopy = 0;
      goto LABEL_31;
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appContainer"];
    if (v7)
    {
      v8 = v7;
      v9 = [coderCopy decodeInt64ForKey:@"cloudKitContainer"];
      if (!v9)
      {
        error2 = [coderCopy error];

        if (error2)
        {
          goto LABEL_25;
        }

        if (([coderCopy containsValueForKey:@"cloudKitContainer"] & 1) == 0)
        {
          v36 = *MEMORY[0x277CCA450];
          v37 = @"Missing serialized value for TRIDynamicNamespaceRecord.cloudKitContainer";
          v23 = MEMORY[0x277CBEAC0];
          v24 = &v37;
          v25 = &v36;
          goto LABEL_37;
        }
      }

      v10 = [coderCopy decodeInt64ForKey:@"compatibilityVersion"];
      if (v10)
      {
        goto LABEL_7;
      }

      error3 = [coderCopy error];

      if (!error3)
      {
        if ([coderCopy containsValueForKey:@"compatibilityVersion"])
        {
LABEL_7:
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultsFileURL"];
          if (!v11)
          {
            error4 = [coderCopy error];

            if (error4)
            {
              v11 = 0;
              goto LABEL_30;
            }
          }

          v12 = [coderCopy decodeInt64ForKey:@"hasFetched"];
          if (v12)
          {
            goto LABEL_9;
          }

          error5 = [coderCopy error];

          if (error5)
          {
            goto LABEL_30;
          }

          if ([coderCopy containsValueForKey:@"hasFetched"])
          {
LABEL_9:
            LOBYTE(v31) = v12 != 0;
            self = [(TRIDynamicNamespaceRecord *)self initWithName:v5 teamId:v6 appContainer:v8 cloudKitContainer:v9 compatibilityVersion:v10 defaultsFileURL:v11 hasFetched:v31];
            selfCopy = self;
LABEL_31:

            goto LABEL_32;
          }

          v32 = *MEMORY[0x277CCA450];
          v33 = @"Missing serialized value for TRIDynamicNamespaceRecord.hasFetched";
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:1 userInfo:v18];
          [coderCopy failWithError:v19];
          goto LABEL_15;
        }

        v34 = *MEMORY[0x277CCA450];
        v35 = @"Missing serialized value for TRIDynamicNamespaceRecord.compatibilityVersion";
        v23 = MEMORY[0x277CBEAC0];
        v24 = &v35;
        v25 = &v34;
LABEL_37:
        v11 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
        v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:1 userInfo:v11];
        [coderCopy failWithError:v18];
        goto LABEL_16;
      }
    }

    else
    {
      error6 = [coderCopy error];

      if (!error6)
      {
        v38 = *MEMORY[0x277CCA450];
        v39 = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.appContainer";
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v11];
        [coderCopy failWithError:v27];

        v8 = 0;
        goto LABEL_30;
      }

      v8 = 0;
    }

LABEL_25:
    selfCopy = 0;
LABEL_32:

    goto LABEL_33;
  }

  error7 = [coderCopy error];

  if (!error7)
  {
    v44 = *MEMORY[0x277CCA450];
    v45[0] = @"Retrieved nil serialized value for nonnull TRIDynamicNamespaceRecord.name";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIDynamicNamespaceRecordOCNTErrorDomain" code:2 userInfo:v6];
    [coderCopy failWithError:v8];
    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_34:

  return selfCopy;
}

- (void)defaultEncodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = self->_name;
  v9 = coderCopy;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
    coderCopy = v9;
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v9 encodeObject:teamId forKey:@"teamId"];
    coderCopy = v9;
  }

  appContainer = self->_appContainer;
  if (appContainer)
  {
    [v9 encodeObject:appContainer forKey:@"appContainer"];
    coderCopy = v9;
  }

  [coderCopy encodeInt64:self->_cloudKitContainer forKey:@"cloudKitContainer"];
  [v9 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  defaultsFileURL = self->_defaultsFileURL;
  if (defaultsFileURL)
  {
    [v9 encodeObject:defaultsFileURL forKey:@"defaultsFileURL"];
  }

  [v9 encodeInt64:self->_hasFetched forKey:@"hasFetched"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:309 description:{@"Do not use NSKeyedArchiver to persist instances of TRIDynamicNamespaceRecord to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRIDynamicNamespaceRecord *)self defaultEncodeWithCoder:coderCopy];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = *&self->_name;
  appContainer = self->_appContainer;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_cloudKitContainer];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  defaultsFileURL = self->_defaultsFileURL;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFetched];
  v9 = [v3 initWithFormat:@"<TRIDynamicNamespaceRecord | name:%@ teamId:%@ appContainer:%@ cloudKitContainer:%@ compatibilityVersion:%@ defaultsFileURL:%@ hasFetched:%@>", v11, appContainer, v5, v6, defaultsFileURL, v8];

  return v9;
}

@end