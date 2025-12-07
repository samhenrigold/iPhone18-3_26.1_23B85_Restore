@interface CSUTextEncoderConfiguration
+ (id)availableContextLengthsForRevision:(int64_t)revision;
+ (id)availableRevisions;
+ (id)createForRevision:(int64_t)revision error:(id *)error;
+ (id)defaultContextLengthForRevision:(int64_t)revision;
- (BOOL)setInferenceBackend:(int64_t)backend;
- (id)initSystemSearchTextEncoderV1:(id)v1 forRevision:(int64_t)revision;
- (id)initTextEncoderE5ML:(id)l forRevision:(int64_t)revision;
- (void)setAdditionalLayerNames:(id)names;
- (void)setContextLength:(unint64_t)length;
@end

@implementation CSUTextEncoderConfiguration

+ (id)availableRevisions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  objc_msgSend_addIndex_(v2, v3, 7, v4, v5);
  objc_msgSend_addIndex_(v2, v6, 2, v7, v8);
  objc_msgSend_addIndex_(v2, v9, 8, v10, v11);
  objc_msgSend_addIndex_(v2, v12, 11, v13, v14);
  objc_msgSend_addIndex_(v2, v15, 12, v16, v17);

  return v2;
}

+ (id)availableContextLengthsForRevision:(int64_t)revision
{
  if ((revision - 6) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E7967FB0[revision - 6];
  }
}

+ (id)defaultContextLengthForRevision:(int64_t)revision
{
  if ((revision - 6) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1E7967FE8[revision - 6];
  }
}

+ (id)createForRevision:(int64_t)revision error:(id *)error
{
  v6 = 0;
  *error = 0;
  if (revision <= 10)
  {
    if ((revision - 6) >= 2)
    {
      if (revision != 8)
      {
        goto LABEL_20;
      }

      v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 5, error, v4);
      v12 = *error;
      if (*error)
      {
        goto LABEL_13;
      }

      v20 = [CSUTextEncoderConfiguration alloc];
      inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v20, v21, v11, 8, v22);
    }

    else
    {
      v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 2, error, v4);
      v12 = *error;
      if (*error)
      {
        goto LABEL_13;
      }

      v13 = [CSUTextEncoderConfiguration alloc];
      inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v13, v14, v11, revision, v15);
    }

LABEL_18:
    v6 = inited;
    goto LABEL_19;
  }

  if (revision != 11)
  {
    if (revision != 12)
    {
      goto LABEL_20;
    }

    v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 8, error, v4);
    v12 = *error;
    if (*error)
    {
      goto LABEL_13;
    }

    v23 = [CSUTextEncoderConfiguration alloc];
    inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v23, v24, v11, 12, v25);
    goto LABEL_18;
  }

  v11 = objc_msgSend_TextEncoderE5MLConfigurationForRevision_error_(CSUTextEncoderE5MLConfiguration, a2, 7, error, v4);
  v12 = *error;
  if (!*error)
  {
    v17 = [CSUTextEncoderConfiguration alloc];
    inited = objc_msgSend_initTextEncoderE5ML_forRevision_(v17, v18, v11, 11, v19);
    goto LABEL_18;
  }

LABEL_13:
  objc_msgSend_logInternalError_(CSUError, v8, v12, v9, v10);
  v6 = 0;
LABEL_19:

LABEL_20:

  return v6;
}

- (id)initSystemSearchTextEncoderV1:(id)v1 forRevision:(int64_t)revision
{
  v1Copy = v1;
  v17.receiver = self;
  v17.super_class = CSUTextEncoderConfiguration;
  v8 = [(CSUTextEncoderConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_revision = revision;
    objc_storeStrong(&v8->_systemSearchTextEncoderConfig, v1);
    v9->_tokenEmbeddingLength = objc_msgSend_tokenEmbeddingLength(v9->_systemSearchTextEncoderConfig, v10, v11, v12, v13);
    textEncoderE5MLConfig = v9->_textEncoderE5MLConfig;
    v9->_textEncoderE5MLConfig = 0;

    v15 = v9;
  }

  return v9;
}

- (id)initTextEncoderE5ML:(id)l forRevision:(int64_t)revision
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = CSUTextEncoderConfiguration;
  v8 = [(CSUTextEncoderConfiguration *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_revision = revision;
    objc_storeStrong(&v8->_textEncoderE5MLConfig, l);
    v9->_tokenEmbeddingLength = objc_msgSend_tokenEmbeddingLength(v9->_textEncoderE5MLConfig, v10, v11, v12, v13);
    systemSearchTextEncoderConfig = v9->_systemSearchTextEncoderConfig;
    v9->_systemSearchTextEncoderConfig = 0;

    v15 = v9;
  }

  return v9;
}

- (void)setAdditionalLayerNames:(id)names
{
  namesCopy = names;
  objc_storeStrong(&self->_additionalLayerNames, names);
  systemSearchTextEncoderConfig = self->_systemSearchTextEncoderConfig;
  if (systemSearchTextEncoderConfig)
  {
    objc_msgSend_setAdditionalLayerNames_(systemSearchTextEncoderConfig, v5, namesCopy, v6, v7);
  }

  textEncoderE5MLConfig = self->_textEncoderE5MLConfig;
  if (textEncoderE5MLConfig)
  {
    objc_msgSend_setAdditionalLayerNames_(textEncoderE5MLConfig, v5, namesCopy, v6, v7);
  }
}

- (BOOL)setInferenceBackend:(int64_t)backend
{
  if ((self->_revision - 11) <= 1)
  {
    v3 = sub_1AC090E50(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F8DC();
    }
  }

  return 0;
}

- (void)setContextLength:(unint64_t)length
{
  self->_contextLength = length;
  if (self->_systemSearchTextEncoderConfig)
  {
    v5 = sub_1AC090E50(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F910();
    }
  }

  else
  {
    textEncoderE5MLConfig = self->_textEncoderE5MLConfig;
    if (textEncoderE5MLConfig)
    {
      v8 = objc_msgSend_setContextLength_(textEncoderE5MLConfig, a2, length, v3, v4);
      revision = self->_revision;
      if (revision == 11)
      {
        contextLength = self->_contextLength;
        v11 = sub_1AC090E50(v8);
        v12 = v11;
        if (contextLength == 512)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *v42 = 0;
            _os_log_impl(&dword_1AC05D000, v12, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_512", v42, 2u);
          }

          v8 = objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v16, @"main_ctx_512", v17, v18);
        }

        else if (contextLength == 77)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC05D000, v12, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_77", buf, 2u);
          }

          v8 = objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v13, @"main_ctx_77", v14, v15);
        }

        else
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1AC11F944();
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v19, @"main_ctx_77", v20, v21);
          self->_contextLength = 77;
          v8 = objc_msgSend_setContextLength_(self->_textEncoderE5MLConfig, v22, 77, v23, v24);
        }

        revision = self->_revision;
      }

      if (revision == 12)
      {
        v25 = self->_contextLength;
        v26 = sub_1AC090E50(v8);
        v27 = v26;
        if (v25 == 128)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *v40 = 0;
            _os_log_impl(&dword_1AC05D000, v27, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_128", v40, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v31, @"main_ctx_128", v32, v33);
        }

        else if (v25 == 77)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *v41 = 0;
            _os_log_impl(&dword_1AC05D000, v27, OS_LOG_TYPE_INFO, "Setting e5Function to be used as main_ctx_77", v41, 2u);
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v28, @"main_ctx_77", v29, v30);
        }

        else
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            sub_1AC11F978();
          }

          objc_msgSend_setE5function_(self->_textEncoderE5MLConfig, v34, @"main_ctx_128", v35, v36);
          self->_contextLength = 128;
          objc_msgSend_setContextLength_(self->_textEncoderE5MLConfig, v37, 128, v38, v39);
        }
      }
    }
  }
}

@end