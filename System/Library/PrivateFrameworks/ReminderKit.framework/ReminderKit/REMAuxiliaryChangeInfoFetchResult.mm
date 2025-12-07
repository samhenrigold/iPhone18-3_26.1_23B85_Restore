@interface REMAuxiliaryChangeInfoFetchResult
+ (id)auxiliaryChangeInfoFetchResultOfType:(Class)type;
- (REMAuxiliaryChangeInfoFetchResult)initWithAuxiliaryChangeInfoType:(Class)type;
- (id)auxiliaryChangeInfoFromData:(id)data withObjectID:(id)d fromChangeObject:(id)object error:(id *)error;
- (id)changeObjectForAuxiliaryChangeInfo:(id)info;
@end

@implementation REMAuxiliaryChangeInfoFetchResult

- (REMAuxiliaryChangeInfoFetchResult)initWithAuxiliaryChangeInfoType:(Class)type
{
  v9.receiver = self;
  v9.super_class = REMAuxiliaryChangeInfoFetchResult;
  v4 = [(REMAuxiliaryChangeInfoFetchResult *)&v9 init];
  v5 = v4;
  if (type && v4)
  {
    v4->_typedKlass = type;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    changeObjectForAuxiliaryChangeInfoMap = v5->_changeObjectForAuxiliaryChangeInfoMap;
    v5->_changeObjectForAuxiliaryChangeInfoMap = dictionary;
  }

  return v5;
}

- (id)changeObjectForAuxiliaryChangeInfo:(id)info
{
  infoCopy = info;
  changeObjectForAuxiliaryChangeInfoMap = [(REMAuxiliaryChangeInfoFetchResult *)self changeObjectForAuxiliaryChangeInfoMap];
  remObjectID = [infoCopy remObjectID];

  v7 = [changeObjectForAuxiliaryChangeInfoMap objectForKey:remObjectID];

  return v7;
}

+ (id)auxiliaryChangeInfoFetchResultOfType:(Class)type
{
  v3 = [[REMAuxiliaryChangeInfoFetchResult alloc] initWithAuxiliaryChangeInfoType:type];

  return v3;
}

- (id)auxiliaryChangeInfoFromData:(id)data withObjectID:(id)d fromChangeObject:(id)object error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  objectCopy = object;
  v13 = objc_opt_class();
  v14 = objc_alloc([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
  v15 = REMCheckedDynamicCast(v13, v14);

  v16 = [v15 initWithREMObjectID:dCopy];
  if (v16)
  {
    v32 = objectCopy;
    v33 = 0;
    v31 = dataCopy;
    v17 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v33];
    v18 = v33;
    v19 = v18;
    if (!v17 || v18)
    {
      v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10 underlyingError:v18];
      v20 = +[REMLog changeTracking];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromClass([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
        localizedDescription = [v19 localizedDescription];
        *buf = 138543874;
        v35 = v25;
        v36 = 2114;
        v37 = dCopy;
        v38 = 2114;
        v39 = localizedDescription;
        _os_log_error_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_ERROR, "REMChangeTracking+AuxiliaryChgInfo: Failed to decode data to plist dictionary for {class: %{public}@, remObjectID: %{public}@, plistError: %{public}@}", buf, 0x20u);
      }
    }

    else
    {
      v20 = [v17 objectForKey:@"identifier"];
      if (v20)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v20];
        v22 = v21;
        if (v21)
        {
          v21 = [objc_opt_class() objectIDWithUUID:v21];
        }

        if (([v21 isEqual:dCopy, v21]& 1) != 0)
        {
          [v16 setStorage:v17];
          changeObjectForAuxiliaryChangeInfoMap = [(REMAuxiliaryChangeInfoFetchResult *)self changeObjectForAuxiliaryChangeInfoMap];
          [changeObjectForAuxiliaryChangeInfoMap setObject:v32 forKeyedSubscript:dCopy];
          v24 = 0;
        }

        else
        {
          v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
          changeObjectForAuxiliaryChangeInfoMap = +[REMLog changeTracking];
          if (os_log_type_enabled(changeObjectForAuxiliaryChangeInfoMap, OS_LOG_TYPE_ERROR))
          {
            v29 = NSStringFromClass([(REMAuxiliaryChangeInfoFetchResult *)self typedKlass]);
            *buf = 138543874;
            v35 = v29;
            v36 = 2114;
            v37 = dCopy;
            v38 = 2114;
            v39 = v30;
            _os_log_error_impl(&dword_19A0DB000, changeObjectForAuxiliaryChangeInfoMap, OS_LOG_TYPE_ERROR, "REMChangeTracking+AuxiliaryChgInfo: Decoded object identifier from the plist dictionary does not match with input object ID for {class: %{public}@, remObjectID: %{public}@, decodedObjID: %{public}@}", buf, 0x20u);
          }
        }
      }

      else
      {
        v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
        v22 = +[REMLog changeTracking];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess) auxiliaryChangeInfoFromData:? withObjectID:? fromChangeObject:? error:?];
        }
      }
    }

    dataCopy = v31;
    objectCopy = v32;
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] errorWithREMChangeErrorCode:10];
    v19 = +[REMLog changeTracking];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [REMAuxiliaryChangeInfoFetchResult(REMChangeTrackingInternalAccess) auxiliaryChangeInfoFromData:? withObjectID:? fromChangeObject:? error:?];
    }
  }

  if (error)
  {
    v27 = v24;
    *error = v24;
  }

  return v16;
}

@end