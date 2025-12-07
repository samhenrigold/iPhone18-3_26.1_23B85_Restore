@interface WFItemProviderEntityRequestMetadata
- (WFItemProviderEntityRequestMetadata)initWithCoder:(id)coder;
- (WFItemProviderEntityRequestMetadata)initWithEntity:(id)entity metadata:(id)metadata;
- (id)registeredTypeIdentifiers;
- (void)encodeWithCoder:(id)coder;
- (void)fetchLinkMetadataWithCompletion:(id)completion;
@end

@implementation WFItemProviderEntityRequestMetadata

- (WFItemProviderEntityRequestMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(WFItemProviderEntityRequestMetadata *)self initWithEntity:v5 metadata:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entity = [(WFItemProviderEntityRequestMetadata *)self entity];
  [coderCopy encodeObject:entity forKey:@"entity"];

  metadata = [(WFItemProviderEntityRequestMetadata *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (id)registeredTypeIdentifiers
{
  metadata = [(WFItemProviderEntityRequestMetadata *)self metadata];
  transferableContentTypes = [metadata transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v5 = [exportableTypes if_map:&__block_literal_global_6255];

  return v5;
}

- (void)fetchLinkMetadataWithCompletion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MEMORY[0x1E69ACE68];
  metadata = [(WFItemProviderEntityRequestMetadata *)self metadata];
  v7 = [v5 policyWithEntityMetadata:metadata];

  v21 = 0;
  v8 = [v7 connectionWithError:&v21];
  v9 = v21;
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x1E69ACF00]);
    entity = [(WFItemProviderEntityRequestMetadata *)self entity];
    identifier = [entity identifier];
    v22[0] = identifier;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v14 = [v10 initWithEntityIdentifiers:v13];

    v15 = objc_alloc(MEMORY[0x1E69ACFC8]);
    metadata2 = [(WFItemProviderEntityRequestMetadata *)self metadata];
    v17 = [v15 initWithEntityMetadata:metadata2];

    v18 = [objc_alloc(MEMORY[0x1E69ACE08]) initWithQueryType:v14 target:v17 options:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__WFItemProviderEntityRequestMetadata_fetchLinkMetadataWithCompletion___block_invoke;
    v19[3] = &unk_1E7B00D90;
    v20 = completionCopy;
    [v8 performConfigurableQuery:v18 completionHandler:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v9);
  }
}

void __71__WFItemProviderEntityRequestMetadata_fetchLinkMetadataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 value];
    v4 = [v3 value];

    v5 = [v4 firstObject];
    v6 = [v5 displayRepresentation];

    v7 = objc_alloc_init(getLPLinkMetadataClass());
    v8 = [v6 title];
    v9 = [v8 localizedStringForLocaleIdentifier:0];
    [v7 setTitle:v9];

    v10 = [v6 subtitle];
    v11 = [v10 localizedStringForLocaleIdentifier:0];
    if (v11)
    {
      [v7 setSummary:v11];
    }

    else
    {
      v13 = [v6 descriptionText];
      v14 = [v13 localizedStringForLocaleIdentifier:0];
      [v7 setSummary:v14];
    }

    v15 = [v6 image];
    v16 = [v15 inImage];

    if (v16)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __71__WFItemProviderEntityRequestMetadata_fetchLinkMetadataWithCompletion___block_invoke_2;
      v17[3] = &unk_1E7B00D68;
      v18 = v7;
      v19 = *(a1 + 32);
      [v16 _retrieveImageDataWithReply:v17];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v12 = *(*(a1 + 32) + 16);

    v12();
  }
}

void __71__WFItemProviderEntityRequestMetadata_fetchLinkMetadataWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 _isSystem];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v8 = getUIImageClass_softClass;
  v24 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getUIImageClass_block_invoke;
    v19 = &unk_1E7B02C60;
    v20 = &v21;
    __getUIImageClass_block_invoke(&v16);
    v8 = v22[3];
  }

  v9 = v8;
  _Block_object_dispose(&v21, 8);
  v10 = v9;
  if (v7)
  {
    v11 = [v5 _name];
    [v9 systemImageNamed:v11];
  }

  else
  {
    v11 = [v5 _imageData];
    [v9 imageWithData:v11];
  }
  v12 = ;

  if (v12)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v13 = getLPImageClass_softClass;
    v24 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __getLPImageClass_block_invoke;
      v19 = &unk_1E7B02C60;
      v20 = &v21;
      __getLPImageClass_block_invoke(&v16);
      v13 = v22[3];
    }

    v14 = v13;
    _Block_object_dispose(&v21, 8);
    v15 = [[v13 alloc] initWithPlatformImage:v12];
    [*(a1 + 32) setImage:v15];
  }

  (*(*(a1 + 40) + 16))();
}

- (WFItemProviderEntityRequestMetadata)initWithEntity:(id)entity metadata:(id)metadata
{
  entityCopy = entity;
  metadataCopy = metadata;
  v10 = metadataCopy;
  if (entityCopy)
  {
    if (metadataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFItemProviderRequestMetadata.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"entity"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFItemProviderRequestMetadata.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFItemProviderEntityRequestMetadata;
  v11 = [(WFItemProviderEntityRequestMetadata *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entity, entity);
    objc_storeStrong(&v12->_metadata, metadata);
    v13 = v12;
  }

  return v12;
}

@end