@interface MTRCommandWithRequiredResponse
- (BOOL)_isEqualToOther:(id)other;
- (BOOL)isEqual:(id)equal;
- (MTRCommandWithRequiredResponse)initWithCoder:(id)coder;
- (MTRCommandWithRequiredResponse)initWithPath:(id)path commandFields:(id)fields requiredResponse:(id)response;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTRCommandWithRequiredResponse

- (MTRCommandWithRequiredResponse)initWithPath:(id)path commandFields:(id)fields requiredResponse:(id)response
{
  pathCopy = path;
  fieldsCopy = fields;
  responseCopy = response;
  v14.receiver = self;
  v14.super_class = MTRCommandWithRequiredResponse;
  v11 = [(MTRCommandWithRequiredResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MTRCommandWithRequiredResponse *)v11 setPath:pathCopy];
    [(MTRCommandWithRequiredResponse *)v12 setCommandFields:fieldsCopy];
    [(MTRCommandWithRequiredResponse *)v12 setRequiredResponse:responseCopy];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTRCommandWithRequiredResponse alloc];
  path = [(MTRCommandWithRequiredResponse *)self path];
  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];
  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];
  v8 = [(MTRCommandWithRequiredResponse *)v4 initWithPath:path commandFields:commandFields requiredResponse:requiredResponse];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  path = [(MTRCommandWithRequiredResponse *)self path];
  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];
  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];
  v9 = [v3 stringWithFormat:@"<%@: %p, path: %@, fields: %@, requiredResponse: %@", v5, self, path, commandFields, requiredResponse];

  return v9;
}

- (MTRCommandWithRequiredResponse)initWithCoder:(id)coder
{
  v51[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v45.receiver = self;
  v45.super_class = MTRCommandWithRequiredResponse;
  v5 = [(MTRCommandWithRequiredResponse *)&v45 init];
  if (!v5)
  {
LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pathKey"];
  p_path = &v5->_path;
  path = v5->_path;
  v5->_path = v6;

  if (!v5->_path || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = sub_2393D9044(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *p_path;
      *buf = 138412290;
      v47 = v26;
      _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for endpoint, not MTRCommandPath.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded %@ for endpoint, not MTRCommandPath.", *p_path);
    }

    goto LABEL_27;
  }

  if ((atomic_load_explicit(&qword_27DF77650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF77650))
  {
    v38 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v51[2] = objc_opt_class();
    v51[3] = objc_opt_class();
    v51[4] = objc_opt_class();
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:5];
    qword_27DF77648 = [v38 setWithArray:v39];

    __cxa_guard_release(&qword_27DF77650);
  }

  v9 = [coderCopy decodeObjectOfClasses:qword_27DF77648 forKey:@"fieldsKey"];
  p_commandFields = &v5->_commandFields;
  commandFields = v5->_commandFields;
  v5->_commandFields = v9;

  if (v5->_commandFields)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = sub_2393D9044(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *p_commandFields;
        *buf = 138412290;
        v47 = v29;
        _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not NSDictionary.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not NSDictionary.", *p_commandFields);
      }

      goto LABEL_27;
    }

    if (!sub_238EE7184(*p_commandFields) || ([*p_commandFields objectForKeyedSubscript:@"type"], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(@"Structure", "isEqual:", v12), v12, (v13 & 1) == 0))
    {
      v30 = sub_2393D9044(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *p_commandFields;
        *buf = 138412290;
        v47 = v31;
        _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not a structure-typed data-value dictionary.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded %@ for commandFields, not a structure-typed data-value dictionary.", *p_commandFields);
      }

      goto LABEL_27;
    }
  }

  v14 = [coderCopy decodeObjectOfClasses:qword_27DF77648 forKey:@"requiredResponseKey"];
  p_requiredResponse = &v5->_requiredResponse;
  requiredResponse = v5->_requiredResponse;
  v5->_requiredResponse = v14;

  if (!v5->_requiredResponse)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = sub_2393D9044(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *p_requiredResponse;
      *buf = 138412290;
      v47 = v33;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded %@ for requiredResponse, not NSDictionary.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded %@ for requiredResponse, not NSDictionary.", *p_requiredResponse);
    }

    goto LABEL_27;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *p_requiredResponse;
  v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = *v42;
  while (2)
  {
    v19 = 0;
    do
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v41 + 1) + 8 * v19);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = sub_2393D9044(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v47 = v20;
          _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded key %@ in requiredResponse", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded key %@ in requiredResponse", v20);
        }

        goto LABEL_50;
      }

      v21 = [*p_requiredResponse objectForKeyedSubscript:v20];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

LABEL_46:
        v35 = sub_2393D9044(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = [*p_requiredResponse objectForKeyedSubscript:v20];
          *buf = 138412546;
          v47 = v36;
          v48 = 2112;
          v49 = v20;
          _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "MTRCommandWithRequiredResponse decoded value %@ for key %@ in requiredResponse", buf, 0x16u);
        }

        if (sub_2393D5398(1u))
        {
          v37 = [*p_requiredResponse objectForKeyedSubscript:v20];
          sub_2393D5320(0, 1, "MTRCommandWithRequiredResponse decoded value %@ for key %@ in requiredResponse", v37, v20);
        }

LABEL_50:

        goto LABEL_27;
      }

      v22 = [*p_requiredResponse objectForKeyedSubscript:v20];
      v23 = sub_238EE7184(v22);

      if (!v23)
      {
        goto LABEL_46;
      }

      ++v19;
    }

    while (v17 != v19);
    v17 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:
  v24 = v5;
LABEL_28:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  path = [(MTRCommandWithRequiredResponse *)self path];

  if (path)
  {
    path2 = [(MTRCommandWithRequiredResponse *)self path];
    [coderCopy encodeObject:path2 forKey:@"pathKey"];
  }

  commandFields = [(MTRCommandWithRequiredResponse *)self commandFields];

  if (commandFields)
  {
    commandFields2 = [(MTRCommandWithRequiredResponse *)self commandFields];
    [coderCopy encodeObject:commandFields2 forKey:@"fieldsKey"];
  }

  requiredResponse = [(MTRCommandWithRequiredResponse *)self requiredResponse];

  if (requiredResponse)
  {
    requiredResponse2 = [(MTRCommandWithRequiredResponse *)self requiredResponse];
    [coderCopy encodeObject:requiredResponse2 forKey:@"requiredResponseKey"];
  }
}

- (BOOL)_isEqualToOther:(id)other
{
  otherCopy = other;
  path = self->_path;
  path = [otherCopy path];
  if (sub_238DB32F8(path, path))
  {
    commandFields = self->_commandFields;
    commandFields = [otherCopy commandFields];
    if (sub_238DB32F8(commandFields, commandFields))
    {
      requiredResponse = self->_requiredResponse;
      requiredResponse = [otherCopy requiredResponse];
      v11 = sub_238DB32F8(requiredResponse, requiredResponse);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(MTRCommandWithRequiredResponse *)self _isEqualToOther:equalCopy];

  return v6;
}

@end