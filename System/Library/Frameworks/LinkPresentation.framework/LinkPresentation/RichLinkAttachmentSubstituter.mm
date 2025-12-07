@interface RichLinkAttachmentSubstituter
- (RichLinkAttachmentSubstituter)init;
- (id)applyAttachmentSubstitutionForObject:(id)object;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object;
@end

@implementation RichLinkAttachmentSubstituter

- (RichLinkAttachmentSubstituter)init
{
  v7.receiver = self;
  v7.super_class = RichLinkAttachmentSubstituter;
  v2 = [(RichLinkAttachmentSubstituter *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    archivedAttachments = v2->_archivedAttachments;
    v2->_archivedAttachments = v3;

    *&v2->_shouldSubstituteAttachments = 1;
    v5 = v2;
  }

  return v2;
}

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  archiverCopy = archiver;
  objectCopy = object;
  if (self->_shouldSubstituteAttachments)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      data = [v8 data];

      if (!data)
      {
LABEL_6:

        goto LABEL_22;
      }

      data = [[LPARAssetAttachmentSubstitute alloc] initWithARAsset:v8];
      [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
      archivedAttachments = self->_archivedAttachments;
      data2 = [v8 data];
      [(NSMutableArray *)archivedAttachments addObject:data2];
LABEL_5:

      goto LABEL_6;
    }

    if (self->_shouldSubstituteAttachments)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objectCopy;
        data = [v8 data];

        if (!data)
        {
          goto LABEL_6;
        }

        data = [[LPImageAttachmentSubstitute alloc] initWithImage:v8];
        [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
        v12 = self->_archivedAttachments;
        data2 = [v8 data];
        [(NSMutableArray *)v12 addObject:data2];
        goto LABEL_5;
      }

      if (self->_shouldSubstituteAttachments)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = objectCopy;
          data3 = [v8 data];

          if (data3)
          {
            data = [[LPVideoAttachmentSubstitute alloc] initWithVideo:v8];
            [(LPARAssetAttachmentSubstitute *)data setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
            v14 = self->_archivedAttachments;
            data2 = [v8 data];
            [(NSMutableArray *)v14 addObject:data2];
            goto LABEL_5;
          }
        }
      }
    }
  }

  if (self->_shouldIgnoreAppStoreMetadata && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v17 = LPLogChannelFetching(isKindOfClass, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [RichLinkAttachmentSubstituter archiver:willEncodeObject:];
    }

    data = 0;
  }

  else
  {
    data = objectCopy;
  }

LABEL_22:

  return data;
}

- (id)applyAttachmentSubstitutionForObject:(id)object
{
  v43 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    index = [v5 index];
    v7 = [(NSArray *)self->_attachmentsForUnarchiving count];
    if (index < v7)
    {
      v9 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v5 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 setFileURL:v9];
LABEL_21:
        null = [[LPARAsset alloc] _initWithARAsset:v5];
        goto LABEL_41;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        [v5 setData:v9];
        goto LABEL_21;
      }

      v34 = LPLogChannelFetching(isKindOfClass, v27);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 134217984;
        index2 = [v5 index];
        _os_log_impl(&dword_1AE886000, v34, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v39, 0xCu);
      }

LABEL_31:

      null = [MEMORY[0x1E695DFB0] null];
      goto LABEL_41;
    }

    v14 = LPLogChannelFetching(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      index3 = [v5 index];
      v16 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v39 = 134218240;
      index2 = index3;
      v41 = 2048;
      v42 = v16;
      _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v39, 0x16u);
    }

LABEL_11:

    null2 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objectCopy;
    index4 = [v10 index];
    v12 = [(NSArray *)self->_attachmentsForUnarchiving count];
    if (index4 < v12)
    {
      v9 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v10 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 setFileURL:v9];
      }

      else
      {
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();
        if ((v32 & 1) == 0)
        {
          v34 = LPLogChannelFetching(v32, v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v39 = 134217984;
            index2 = [v10 index];
            _os_log_impl(&dword_1AE886000, v34, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v39, 0xCu);
          }

          goto LABEL_31;
        }

        [v10 setData:v9];
      }

      null = [[LPImage alloc] _initWithImage:v10];
      goto LABEL_41;
    }

    v14 = LPLogChannelFetching(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      index5 = [v10 index];
      v25 = [(NSArray *)self->_attachmentsForUnarchiving count];
      v39 = 134218240;
      index2 = index5;
      v41 = 2048;
      v42 = v25;
      _os_log_impl(&dword_1AE886000, v14, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v39, 0x16u);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = objectCopy;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_43;
  }

  index6 = [v19 index];
  v22 = [(NSArray *)self->_attachmentsForUnarchiving count];
  if (index6 < v22)
  {
    v9 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v20 index]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 setFileURL:v9];
    }

    else
    {
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();
      if ((v35 & 1) == 0)
      {
        v37 = LPLogChannelFetching(v35, v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 134217984;
          index2 = [v20 index];
          _os_log_impl(&dword_1AE886000, v37, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but it is not a URL or data", &v39, 0xCu);
        }

        null = [MEMORY[0x1E695DFB0] null];
        goto LABEL_41;
      }

      [v20 setData:v9];
    }

    null = [[LPVideo alloc] _initWithVideo:v20];
LABEL_41:
    v20 = null;

    goto LABEL_42;
  }

  v29 = LPLogChannelFetching(v22, v23);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    index7 = [v20 index];
    v31 = [(NSArray *)self->_attachmentsForUnarchiving count];
    v39 = 134218240;
    index2 = index7;
    v41 = 2048;
    v42 = v31;
    _os_log_impl(&dword_1AE886000, v29, OS_LOG_TYPE_DEFAULT, "RichLink: Link referred to attachment %ld, but we only have %lu", &v39, 0x16u);
  }

  null2 = [MEMORY[0x1E695DFB0] null];
LABEL_25:
  v20 = null2;
LABEL_42:

LABEL_43:

  return v20;
}

- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object
{
  if (self->_shouldSubstituteAttachments)
  {
    objectCopy = [(RichLinkAttachmentSubstituter *)self applyAttachmentSubstitutionForObject:object];
  }

  else
  {
    objectCopy = object;
  }

  v6 = objectCopy;

  return v6;
}

@end