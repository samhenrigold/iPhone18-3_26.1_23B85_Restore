@interface WFLinkEntityContentItem
+ (BOOL)hasInMemoryFindAction;
+ (BOOL)hasLibrary;
+ (BOOL)isAppUsageResultEntity;
+ (BOOL)isCalendarEventEntity;
+ (BOOL)isContactEntity;
+ (BOOL)isFinderNodeEntity;
+ (BOOL)isMailMessageEntity;
+ (BOOL)isNoteEntity;
+ (BOOL)isNoteFolderEntityIdentifier:(id)identifier;
+ (BOOL)isNotes;
+ (BOOL)isPhotosAssetEntity;
+ (BOOL)isRecordingEntity;
+ (BOOL)isReminderEntity;
+ (BOOL)isWorkflowEntity;
+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number;
+ (id)allProperties;
+ (id)allowedOperatorsWithQueryParameterMetadata:(id)metadata objectClasses:(id)classes operators:(id)operators;
+ (id)coercions;
+ (id)localizedCountDescriptionWithValue:(int64_t)value;
+ (id)localizedPluralFilterDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)propertyBuildersForFilteringUsingQuery:(id)query;
+ (void)initialize;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (BOOL)outputsFileContent;
- (LNEntity)entity;
- (WFLinkEntityContentItem)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)name;
- (void)encodeWithCoder:(id)coder;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
- (void)generateStructuredDataRepresentationWithTypeIdentifier:(int64_t)identifier completionHandler:(id)handler;
@end

@implementation WFLinkEntityContentItem

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (void)generateStructuredDataRepresentationWithTypeIdentifier:(int64_t)identifier completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69ACE60];
  handlerCopy = handler;
  entityMetadata = [objc_opt_class() entityMetadata];
  v9 = [v6 policyWithEntityMetadata:entityMetadata];

  v16 = 0;
  v10 = [v9 connectionWithError:&v16];
  v11 = v16;
  if (v10)
  {
    entity = [(WFLinkEntityContentItem *)self entity];
    identifier = [entity identifier];
    v17 = identifier;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [v10 fetchStructuredDataWithTypeIdentifier:identifier forEntityIdentifiers:v14 completionHandler:handlerCopy];

    handlerCopy = entity;
  }

  else
  {
    v15 = getWFGeneralLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[WFLinkEntityContentItem generateStructuredDataRepresentationWithTypeIdentifier:completionHandler:]";
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Unable to create connection for structured data representation fetch: %@", buf, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  v47 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  typeCopy = type;
  entityMetadata = [objc_opt_class() entityMetadata];
  systemProtocolMetadata = [entityMetadata systemProtocolMetadata];
  v11 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  transferableContentTypes = [entityMetadata transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v16 = [exportableTypes if_map:&__block_literal_global_746];

  string = [typeCopy string];
  v18 = WFBestFileTypeForSupportedContentTypes(v16, string);

  if (!v18)
  {
    supportedContentTypes = [v13 supportedContentTypes];
    v20 = [supportedContentTypes if_map:&__block_literal_global_749];

    string2 = [typeCopy string];
    v18 = WFBestFileTypeForSupportedContentTypes(v20, string2);
  }

  isFinderNodeEntity = [objc_opt_class() isFinderNodeEntity];
  if ((isFinderNodeEntity & (v18 == 0)) != 0)
  {
    v23 = @"public.item";
  }

  else
  {
    v23 = v18;
  }

  if ((isFinderNodeEntity & 1) != 0 || v18)
  {
    v26 = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:entityMetadata];
    v44 = 0;
    v27 = [v26 connectionWithError:&v44];
    v40 = v44;
    if (v27)
    {
      v38 = v26;
      entity = [(WFLinkEntityContentItem *)self entity];
      v37 = [objc_alloc(MEMORY[0x1E69AC788]) initWithContentType:v23];
      v29 = [objc_alloc(MEMORY[0x1E69ACF28]) initWithContentType:v37 preferredExtractionType:0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      v31 = processInfo;
      v39 = v13;
      if (processInfo)
      {
        objc_msgSend_if_auditToken(processInfo);
      }

      else
      {
        memset(buf, 0, 32);
      }

      v34 = [v29 configurationWithAuditToken:buf];

      v45 = entity;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __70__WFLinkEntityContentItem_generateFileRepresentation_options_forType___block_invoke_753;
      v41[3] = &unk_1E837AAA0;
      v42 = entity;
      v43 = representationCopy;
      v36 = entity;
      [v27 exportEntities:v35 metadata:entityMetadata withConfiguration:v34 completionHandler:v41];

      v26 = v38;
      v13 = v39;
      v33 = v40;
    }

    else
    {
      v32 = getWFGeneralLogObject();
      v33 = v40;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]";
        *&buf[12] = 2112;
        *&buf[14] = v40;
        _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(representationCopy + 2))(representationCopy, 0, v40);
    }
  }

  else
  {
    v24 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      string3 = [typeCopy string];
      *buf = 136315394;
      *&buf[4] = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]";
      *&buf[12] = 2112;
      *&buf[14] = string3;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Failed to find a best file type for %@ returning nil!", buf, 0x16u);
    }

    (*(representationCopy + 2))(representationCopy, 0, 0);
  }
}

void __70__WFLinkEntityContentItem_generateFileRepresentation_options_forType___block_invoke_753(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 value];
    v7 = [v6 firstObject];
    v8 = [v7 exportedContent];

    v9 = [v8 content];
    v10 = [v9 wf_fileRepresentation];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) identifier];
      v13 = 136315650;
      v14 = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Unable to fetch coerced value for entity with identifier: %@ - %@", &v13, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  v87 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  optionsCopy = options;
  entity = [(WFLinkEntityContentItem *)self entity];
  if ([objc_opt_class() isFinderNodeEntity])
  {
    entityMetadata = [objc_opt_class() entityMetadata];
    transferableContentTypes = [entityMetadata transferableContentTypes];
    exportableTypes = [transferableContentTypes exportableTypes];

    if ([exportableTypes count])
    {
      v70 = entity;
      v14 = optionsCopy;
      v15 = [MEMORY[0x1E6996ED0] typeWithClass:class];
      entityMetadata2 = [objc_opt_class() entityMetadata];
      transferableContentTypes2 = [entityMetadata2 transferableContentTypes];
      exportableTypes2 = [transferableContentTypes2 exportableTypes];
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke;
      v83[3] = &unk_1E8373140;
      v84 = v15;
      v19 = v15;
      firstObject = [exportableTypes2 if_firstObjectPassingTest:v83];

      if (!firstObject)
      {
        entityMetadata3 = [objc_opt_class() entityMetadata];
        transferableContentTypes3 = [entityMetadata3 transferableContentTypes];
        exportableTypes3 = [transferableContentTypes3 exportableTypes];
        firstObject = [exportableTypes3 firstObject];
      }

      v24 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        wf_fileType = [firstObject wf_fileType];
        *buf = 136315394;
        *&buf[4] = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]";
        *&buf[12] = 2112;
        *&buf[14] = wf_fileType;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s [Finder Entity] Generating a file for file type: %@", buf, 0x16u);
      }

      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_717;
      v78[3] = &unk_1E8373190;
      v79 = firstObject;
      classCopy = class;
      optionsCopy = v14;
      v80 = v14;
      v81 = representationCopy;
      v26 = firstObject;
      wf_fileType2 = [v26 wf_fileType];
      [(WFLinkEntityContentItem *)self generateFileRepresentation:v78 options:v80 forType:wf_fileType2];

      entity = v70;
    }

    else
    {
      (*(representationCopy + 2))(representationCopy, 0, 0, 0);
    }

    goto LABEL_45;
  }

  if (objc_opt_class() == class)
  {
    v32 = objc_alloc(MEMORY[0x1E69AC818]);
    identifier = [entity identifier];
    typeIdentifier = [identifier typeIdentifier];
    v35 = [v32 initWithIdentifier:typeIdentifier];

    v36 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:entity valueType:v35];
    (*(representationCopy + 2))(representationCopy, v36, 0, 0);
  }

  else
  {
    if (objc_opt_class() == class)
    {
      entityMetadata4 = [objc_opt_class() entityMetadata];
      systemProtocolMetadata = [entityMetadata4 systemProtocolMetadata];
      v39 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D0]];

      if (v39)
      {
        v40 = MEMORY[0x1E69ACE60];
        entityMetadata5 = [objc_opt_class() entityMetadata];
        v42 = [v40 policyWithEntityMetadata:entityMetadata5];

        v77 = 0;
        v43 = [v42 connectionWithError:&v77];
        v44 = v77;
        v45 = v44;
        if (v43)
        {
          v71 = v44;
          v46 = entity;
          v47 = optionsCopy;
          v48 = [objc_alloc(MEMORY[0x1E69AC788]) initWithContentType:@"public.url"];
          v49 = [objc_alloc(MEMORY[0x1E69ACF28]) initWithContentType:v48 preferredExtractionType:0];
          processInfo = [MEMORY[0x1E696AE30] processInfo];
          v51 = processInfo;
          if (processInfo)
          {
            objc_msgSend_if_auditToken(processInfo);
          }

          else
          {
            memset(buf, 0, 32);
          }

          v65 = [v49 configurationWithAuditToken:{buf, v71}];

          v66 = v46;
          v85 = v46;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
          entityMetadata6 = [objc_opt_class() entityMetadata];
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_730;
          v75[3] = &unk_1E837B530;
          v76 = representationCopy;
          [v43 exportEntities:v67 metadata:entityMetadata6 withConfiguration:v65 completionHandler:v75];

          optionsCopy = v47;
          entity = v66;
          v45 = v72;
        }

        else
        {
          v56 = getWFGeneralLogObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]";
            *&buf[12] = 2112;
            *&buf[14] = v45;
            _os_log_impl(&dword_1CA256000, v56, OS_LOG_TYPE_ERROR, "%s Unable to create connection for URL export: %@", buf, 0x16u);
          }

          (*(representationCopy + 2))(representationCopy, 0, 0, v45);
        }

LABEL_40:
        goto LABEL_46;
      }
    }

    else if (objc_opt_class() == class || objc_opt_class() == class)
    {
      if ([objc_opt_class() isNoteEntity])
      {
        properties = [entity properties];
        exportableTypes = [properties if_firstObjectWithValue:@"contents" forKey:@"identifier"];

        value = [exportableTypes value];
        v29Value = [value value];

        if (v29Value)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v29Value;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v57 = v31;

        name = [(WFLinkEntityContentItem *)self name];
        v59 = name;
        if (!v57 || !name)
        {
          (*(representationCopy + 2))(representationCopy, 0, 0, 0);
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }

        v60 = [name stringByAppendingString:@"\n"];
        if (objc_opt_class() == class)
        {
          string = [v57 string];
          v61 = [v60 stringByAppendingString:string];

          (*(representationCopy + 2))(representationCopy, v61, v59, 0);
        }

        else
        {
          if (objc_opt_class() != class)
          {
LABEL_43:

            goto LABEL_44;
          }

          v61 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v60];
          titleStyle = [getICTextStyleClass() titleStyle];
          attributes = [titleStyle attributes];
          [v61 setAttributes:attributes range:{0, objc_msgSend(v61, "length")}];

          [v61 appendAttributedString:v57];
          v64 = [v61 copy];
          (*(representationCopy + 2))(representationCopy, v64, v59, 0);
        }

        goto LABEL_43;
      }

      entityMetadata7 = [objc_opt_class() entityMetadata];
      transferableContentTypes4 = [entityMetadata7 transferableContentTypes];
      exportableTypes4 = [transferableContentTypes4 exportableTypes];
      v42 = [exportableTypes4 if_firstObjectPassingTest:&__block_literal_global_742];

      if (v42)
      {
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
        v73[3] = &unk_1E837E3C0;
        v74 = representationCopy;
        wf_fileType3 = [v42 wf_fileType];
        [(WFLinkEntityContentItem *)self generateFileRepresentation:v73 options:optionsCopy forType:wf_fileType3];
      }

      else
      {
        (*(representationCopy + 2))(representationCopy, 0, 0, 0);
      }

      goto LABEL_40;
    }

    (*(representationCopy + 2))(representationCopy, 0, 0, 0);
  }

LABEL_46:
}

uint64_t __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6982C40];
  v4 = [a2 contentType];
  v5 = [v3 typeWithIdentifier:v4];

  v6 = [*(a1 + 32) conformsToUTType:v5];
  return v6;
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_717(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) wf_fileType];
      *buf = 136315650;
      v19 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s [Finder Entity] Unable to generate file for file type: %@, error: %@", buf, 0x20u);
    }
  }

  v9 = [MEMORY[0x1E6996D58] itemWithFile:v5];
  v10 = [MEMORY[0x1E6996ED0] typeWithClass:*(a1 + 56)];
  v11 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_719;
  v15[3] = &unk_1E8373168;
  v16 = v5;
  v14 = *(a1 + 48);
  v12 = v14;
  v17 = v14;
  v13 = v5;
  [v9 getRepresentationsForType:v10 options:v11 completionHandler:v15];
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_730(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 value];
    v7 = [v6 firstObject];
    v8 = [v7 exportedContent];

    v9 = [v8 content];
    v10 = [v9 fileURL];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315138;
        v15 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s URLRepresentable entity export did not produce a URL", &v14, 0xCu);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }

  else
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Unable to export URLRepresentable entity as URL: %@", &v14, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a2 data];
  v5 = [v3 wf_stringWithData:v4];

  (*(*(a1 + 32) + 16))();
}

uint64_t __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_740(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6982C40];
  v3 = [a2 contentType];
  v4 = [v2 typeWithIdentifier:v3];

  v5 = [v4 conformsToType:*MEMORY[0x1E6982F40]];
  return v5;
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_719(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromClass(*(a1 + 48));
      v13 = 136315906;
      v14 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s [Finder Entity] Unable to generate representations from file: %@ to target type: %@, error: %@", &v13, 0x2Au);
    }
  }

  v10 = [v5 firstObject];
  v11 = *(a1 + 40);
  v12 = [v10 object];
  (*(v11 + 16))(v11, v12, 0, 0);
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  thumbnailCopy = thumbnail;
  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
  image = [displayRepresentation image];
  wf_image = [image wf_image];

  if (thumbnailCopy && wf_image)
  {
    thumbnailCopy[2](thumbnailCopy, wf_image, 0);
  }

  return wf_image != 0;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
  subtitle = [displayRepresentation subtitle];
  wf_localizedString = [subtitle wf_localizedString];

  if (subtitleCopy && wf_localizedString)
  {
    subtitleCopy[2](subtitleCopy, wf_localizedString);
  }

  return wf_localizedString != 0;
}

- (id)name
{
  v3 = [(WFLinkEntityContentItem *)self objectForClass:objc_opt_class()];
  wfName = [v3 wfName];

  if (wfName)
  {
    wfName2 = [v3 wfName];
  }

  else
  {
    displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
    title = [displayRepresentation title];
    wf_localizedString = [title wf_localizedString];
    v9 = wf_localizedString;
    if (wf_localizedString)
    {
      localizedTypeDescription = wf_localizedString;
    }

    else
    {
      localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
    }

    wfName2 = localizedTypeDescription;
  }

  return wfName2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entity = [(WFLinkEntityContentItem *)self entity];
  [coderCopy encodeObject:entity forKey:@"entity"];

  entityMetadata = [objc_opt_class() entityMetadata];
  [coderCopy encodeObject:entityMetadata forKey:@"entityMetadata"];

  queryMetadata = [objc_opt_class() queryMetadata];
  [coderCopy encodeObject:queryMetadata forKey:@"queryMetadata"];

  appBundleIdentifier = [objc_opt_class() appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  appBundleIdentifier2 = [objc_opt_class() appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier2 forKey:@"entityNamespace"];

  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];
}

- (WFLinkEntityContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WFLinkEntityContentItem;
  v5 = [(WFLinkEntityContentItem *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityMetadata"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryMetadata"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    if (!v8)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityNamespace"];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayedAppBundleIdentifier"];
    v10 = [v6 wf_contentItemClassWithQueryMetadata:v7 appBundleIdentifier:v8 displayedAppBundleIdentifier:v9];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
    v13 = [v10 itemWithObject:v11];
    [(WFLinkEntityContentItem *)v13 setDisplayRepresentation:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)debugDescription
{
  v3 = os_variant_allows_internal_security_policies();
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", self];
  }

  else
  {
    entity = [(WFLinkEntityContentItem *)self entity];
    identifier = [entity identifier];
    v5 = [v4 stringWithFormat:@"WFLinkEntityContentItem <%@>", identifier];
  }

  return v5;
}

- (LNEntity)entity
{
  v3 = objc_opt_class();

  return [(WFLinkEntityContentItem *)self objectForClass:v3];
}

+ (id)outputTypes
{
  v32.receiver = self;
  v32.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
  v3 = objc_msgSendSuper2(&v32, sel_outputTypes);
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  [v4 addObject:v5];

  if ([self isNoteEntity])
  {
    v6 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
    [v4 insertObject:v6 atIndex:0];
  }

  if ([self isFinderNodeEntity])
  {
    v7 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    [v4 insertObject:v7 atIndex:0];

    v8 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D50]];
    [v4 insertObject:v8 atIndex:0];
  }

  entityMetadata = [self entityMetadata];
  systemProtocolMetadata = [entityMetadata systemProtocolMetadata];
  v11 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D0]];

  if (v11)
  {
    v12 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
    [v4 insertObject:v12 atIndex:0];
  }

  entityMetadata2 = [self entityMetadata];
  transferableContentTypes = [entityMetadata2 transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v16 = [exportableTypes if_map:&__block_literal_global_759];
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  [v4 addObjectsFromArray:v20];
  entityMetadata3 = [self entityMetadata];
  systemProtocolMetadata2 = [entityMetadata3 systemProtocolMetadata];
  v23 = [systemProtocolMetadata2 objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  supportedContentTypes = [v25 supportedContentTypes];

  v27 = [supportedContentTypes if_map:&__block_literal_global_762];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v18;
  }

  v30 = v29;

  [v4 addObjectsFromArray:v30];

  return v4;
}

id __56__WFLinkEntityContentItem_appUsageResultCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([objc_opt_class() isAppUsageResultEntity])
  {
    v6 = [v5 entity];
    v7 = [v6 properties];
    v8 = [v7 if_firstObjectWithValue:@"appIdentifier" forKey:@"identifier"];

    v9 = [v8 value];
    v10 = [v9 value];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
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

    v13 = v11;

    v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v13 allowPlaceholder:0 error:a4];
    if (v14)
    {
      v12 = [objc_alloc(MEMORY[0x1E6996C80]) initWithRecord:v14];
    }

    else
    {
      v15 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "+[WFLinkEntityContentItem appUsageResultCoercionHandler]_block_invoke";
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s %@ is not an app, returning nil!", &v17, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v6 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[WFLinkEntityContentItem appUsageResultCoercionHandler]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Attempted to coerce a non-Screen Time entity to WFApp", &v17, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

id __49__WFLinkEntityContentItem_contactCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isContactEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = objc_opt_new();
    v7 = [v6 contactWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __50__WFLinkEntityContentItem_workflowCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isWorkflowEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = +[WFDatabaseProxy defaultDatabase];
    v7 = [v6 referenceForWorkflowID:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__WFLinkEntityContentItem_photosAssetCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([objc_opt_class() isPhotosAssetEntity])
  {
    v6 = [v4 entity];
    v7 = [v6 identifier];
    v8 = [v7 instanceIdentifier];

    v9 = [MEMORY[0x1E6996F50] sharedLibrary];
    v20 = 0;
    v10 = [v9 fetchOptionsWithError:&v20];
    v11 = v20;

    if (!v10)
    {
      v12 = getWFGeneralLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "+[WFLinkEntityContentItem photosAssetCoercionHandler]_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v27 = v11;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for library: %li, error: %@", buf, 0x20u);
      }
    }

    [v10 setWantsIncrementalChangeDetails:0];
    [v10 setIncludeGuestAssets:1];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v13 = getPHAssetClass_softClass;
    v24 = getPHAssetClass_softClass;
    if (!getPHAssetClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPHAssetClass_block_invoke;
      v27 = &unk_1E837FAC0;
      v28 = &v21;
      __getPHAssetClass_block_invoke(buf);
      v13 = v22[3];
    }

    v14 = v13;
    _Block_object_dispose(&v21, 8);
    v25 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v16 = [v13 fetchAssetsWithLocalIdentifiers:v15 options:v10];

    if ([v16 count])
    {
      v17 = [v16 firstObject];
    }

    else
    {
      v18 = getWFGeneralLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "+[WFLinkEntityContentItem photosAssetCoercionHandler]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 2048;
        v27 = 0;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s No PHAsset found for asset identifier: %{public}@, library: %li", buf, 0x20u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id __50__WFLinkEntityContentItem_reminderCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([objc_opt_class() isReminderEntity])
  {
    v6 = [v4 entity];
    v7 = [v6 identifier];
    v8 = [v7 instanceIdentifier];

    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    if (v9)
    {
      v10 = WFGetWorkflowReminderStore();
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v11 = getREMObjectIDClass_softClass;
      v22 = getREMObjectIDClass_softClass;
      if (!getREMObjectIDClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getREMObjectIDClass_block_invoke;
        v24 = &unk_1E837FAC0;
        v25 = &v19;
        __getREMObjectIDClass_block_invoke(buf);
        v11 = v20[3];
      }

      v12 = v11;
      _Block_object_dispose(&v19, 8);
      v13 = [v11 objectIDWithURL:v9];
      v18 = 0;
      v14 = [v10 fetchReminderWithObjectID:v13 error:&v18];
      v15 = v18;
      if (!v14)
      {
        v16 = getWFContentGraphLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "+[WFLinkEntityContentItem reminderCoercionHandler]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          *&buf[22] = 2112;
          v24 = v15;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to load reminder %@ (store returned nil): %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v10 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[WFLinkEntityContentItem reminderCoercionHandler]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to load reminder %@ (instance identifier failed to URL-ify)", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __55__WFLinkEntityContentItem_calendarEventCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isCalendarEventEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = WFGetWorkflowEventStore();
    v7 = [v6 eventWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__WFLinkEntityContentItem_mailMessageCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (![objc_opt_class() isMailMessageEntity])
  {
    v60 = 0;
    goto LABEL_70;
  }

  v6 = [v4 entity];
  v7 = [v6 identifier];
  v8 = [v7 instanceIdentifier];

  v72 = v8;
  if (![(__CFString *)v8 hasPrefix:@"1%"])
  {
    v9 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v91 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v92 = 2112;
      v93 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Failed to parse instance identifier %@ (unrecognized version)", buf, 0x16u);
    }

    goto LABEL_50;
  }

  v9 = [(__CFString *)v8 componentsSeparatedByString:@"%"];
  if ([v9 count]!= 5)
  {
    v61 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v91 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v92 = 2112;
      v93 = v72;
      v94 = 2048;
      v95 = [v9 count];
      _os_log_impl(&dword_1CA256000, v61, OS_LOG_TYPE_ERROR, "%s Failed to parse instance identifier %@ (expected 5 delimited items, got %tu)", buf, 0x20u);
    }

LABEL_50:
    v60 = 0;
    goto LABEL_69;
  }

  v70 = v5;
  v71 = v4;
  v10 = [v9 objectAtIndexedSubscript:3];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v69 = v6;
  obj = [v6 properties];
  v81 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
  if (!v81)
  {
    v76 = 0;
    v11 = 0;
    v12 = 0;
    v78 = 0;
    goto LABEL_52;
  }

  v76 = 0;
  v11 = 0;
  v12 = 0;
  v78 = 0;
  v80 = *v87;
  v73 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v87 != v80)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v86 + 1) + 8 * v13);
      v15 = [v14 identifier];
      if ([@"account" isEqual:v15])
      {
        v16 = [v14 value];
        v17 = [v16 valueType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_26;
        }

        v19 = v10;
        v20 = [v14 value];
        v21 = [v20 valueType];
        v22 = [v21 identifier];
        v23 = [v22 isEqual:@"AccountEntity"];

        if (v23)
        {
          v24 = [v14 value];
          v25 = [v24 value];
          v26 = [v25 identifier];
          v27 = [v26 instanceIdentifier];

          v78 = v27;
          goto LABEL_16;
        }

        goto LABEL_25;
      }

      if ([@"subject" isEqual:v15])
      {
        v19 = v10;
        v28 = [v14 value];
        v29 = [v28 valueType];
        v30 = [v29 objectClass];
        v31 = objc_opt_class();

        if (v30 == v31)
        {
          v24 = [v14 value];
          [v24 value];
          v12 = v25 = v12;
LABEL_16:
          v10 = v19;
LABEL_17:

LABEL_18:
          goto LABEL_26;
        }
      }

      else if ([@"sender" isEqual:v15])
      {
        v19 = v10;
        v32 = [v14 value];
        v33 = [v32 valueType];
        v34 = [v33 objectClass];
        v35 = objc_opt_class();

        if (v34 == v35)
        {
          v36 = [v14 value];
          v24 = [v36 value];

          v37 = [v24 personHandle];
          v38 = [v37 type];

          v10 = v19;
          if (v38 == 1)
          {
            v25 = [v24 personHandle];
            v39 = [v25 value];

            v11 = v39;
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (![@"to" isEqual:v15])
        {
          goto LABEL_26;
        }

        v19 = v10;
        v77 = v15;
        v40 = [v14 value];
        v41 = [v40 valueType];
        v42 = [v41 objectClass];
        v43 = objc_opt_class();

        if (v42 == v43)
        {
          v44 = objc_opt_new();
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v45 = [v14 value];
          v25 = [v45 value];

          v46 = [v25 countByEnumeratingWithState:&v82 objects:v100 count:16];
          if (v46)
          {
            v47 = v46;
            v74 = v11;
            v75 = v12;
            v48 = *v83;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v83 != v48)
                {
                  objc_enumerationMutation(v25);
                }

                v50 = *(*(&v82 + 1) + 8 * i);
                v51 = [v50 valueType];
                v52 = [v51 objectClass];
                v53 = objc_opt_class();

                if (v52 == v53)
                {
                  v54 = [v50 value];
                  v55 = [v54 personHandle];
                  v56 = [v55 type];

                  if (v56 == 1)
                  {
                    v57 = [v54 personHandle];
                    v58 = [v57 value];
                    [v44 addObject:v58];
                  }
                }
              }

              v47 = [v25 countByEnumeratingWithState:&v82 objects:v100 count:16];
            }

            while (v47);
            v12 = v75;
            v24 = v76;
            v76 = v44;
            v10 = v73;
            v11 = v74;
          }

          else
          {
            v10 = v19;
            v24 = v76;
            v76 = v44;
          }

          v15 = v77;
          goto LABEL_17;
        }
      }

LABEL_25:
      v10 = v19;
LABEL_26:

      ++v13;
    }

    while (v13 != v81);
    v59 = [obj countByEnumeratingWithState:&v86 objects:v101 count:16];
    v81 = v59;
  }

  while (v59);
LABEL_52:

  if (v78 && v12 && v11 && v76)
  {
    v60 = [objc_alloc(MEMORY[0x1E6996DF8]) initWithGlobalMessageID:-[NSObject longLongValue](v10 accountIdentifier:"longLongValue") subject:v78 sender:v12 recipients:{v11, v76}];
    v62 = v11;
    v5 = v70;
    v4 = v71;
  }

  else
  {
    v62 = v11;
    v63 = getWFContentGraphLogObject();
    v5 = v70;
    v4 = v71;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = &stru_1F4A1C408;
      v65 = @" accountIdentifier";
      v66 = @" subject";
      if (v78)
      {
        v65 = &stru_1F4A1C408;
      }

      if (v12)
      {
        v66 = &stru_1F4A1C408;
      }

      *buf = 136316162;
      v91 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v67 = @" sender";
      if (v62)
      {
        v67 = &stru_1F4A1C408;
      }

      v92 = 2112;
      v93 = v65;
      v94 = 2112;
      v95 = v66;
      v96 = 2112;
      v97 = v67;
      if (!v76)
      {
        v64 = @" recipients";
      }

      v98 = 2112;
      v99 = v64;
      _os_log_impl(&dword_1CA256000, v63, OS_LOG_TYPE_ERROR, "%s Failed to populate WFEmail (nil fields:%@%@%@%@)", buf, 0x34u);
    }

    v60 = 0;
  }

  v6 = v69;

  v9 = v10;
LABEL_69:

LABEL_70:

  return v60;
}

+ (id)coercions
{
  v3 = objc_opt_new();
  if ([self isMailMessageEntity])
  {
    v4 = MEMORY[0x1E6996CD8];
    v5 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFEmail" frameworkName:@"ContentKit" location:1];
    mailMessageCoercionHandler = [self mailMessageCoercionHandler];
    v7 = [v4 coercionToType:v5 handler:mailMessageCoercionHandler];
    [v3 addObject:v7];
  }

  if ([self isCalendarEventEntity])
  {
    v8 = MEMORY[0x1E6996CD8];
    v9 = [MEMORY[0x1E6996ED0] typeWithClassName:@"EKEvent" frameworkName:@"EventKit" location:0];
    calendarEventCoercionHandler = [self calendarEventCoercionHandler];
    v11 = [v8 coercionToType:v9 handler:calendarEventCoercionHandler];
    [v3 addObject:v11];
  }

  if ([self isReminderEntity])
  {
    v12 = MEMORY[0x1E6996CD8];
    v13 = [MEMORY[0x1E6996ED0] typeWithClassName:@"REMReminder" frameworkName:@"ReminderKit" location:1];
    reminderCoercionHandler = [self reminderCoercionHandler];
    v15 = [v12 coercionToType:v13 handler:reminderCoercionHandler];
    [v3 addObject:v15];
  }

  if ([self isPhotosAssetEntity])
  {
    v16 = MEMORY[0x1E6996CD8];
    v17 = [MEMORY[0x1E6996ED0] typeWithClassName:@"PHAsset" frameworkName:@"Photos" location:0];
    photosAssetCoercionHandler = [self photosAssetCoercionHandler];
    v19 = [v16 coercionToType:v17 handler:photosAssetCoercionHandler];
    [v3 addObject:v19];
  }

  if ([self isWorkflowEntity])
  {
    v20 = MEMORY[0x1E6996CD8];
    v21 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFWorkflowReference" frameworkName:@"WorkflowKit" location:1];
    workflowCoercionHandler = [self workflowCoercionHandler];
    v23 = [v20 coercionToType:v21 handler:workflowCoercionHandler];
    [v3 addObject:v23];
  }

  if ([self isContactEntity])
  {
    v24 = MEMORY[0x1E6996CD8];
    v25 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFContact" frameworkName:@"WorkflowKit" location:1];
    contactCoercionHandler = [self contactCoercionHandler];
    v27 = [v24 coercionToType:v25 handler:contactCoercionHandler];
    [v3 addObject:v27];
  }

  if ([self isAppUsageResultEntity])
  {
    v28 = MEMORY[0x1E6996CD8];
    v29 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFApp" frameworkName:@"WorkflowKit" location:1];
    appUsageResultCoercionHandler = [self appUsageResultCoercionHandler];
    v31 = [v28 coercionToType:v29 handler:appUsageResultCoercionHandler];
    [v3 addObject:v31];
  }

  v32 = [v3 copy];

  return v32;
}

+ (BOOL)isRecordingEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(appBundleIdentifier);

  if (isEqualToString)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = *MEMORY[0x1E69970E8];
    v8 = identifier;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      LOBYTE(isEqualToString) = 1;
    }

    else
    {
      LOBYTE(isEqualToString) = 0;
      if (v8 && v9)
      {
        LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(v8);
      }
    }
  }

  return isEqualToString;
}

+ (BOOL)isAppUsageResultEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(appBundleIdentifier);

  if (isEqualToString)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"AppUsageResultAppEntity")
    {
      LOBYTE(isEqualToString) = 1;
    }

    else if (identifier)
    {
      LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(identifier);
    }

    else
    {
      LOBYTE(isEqualToString) = 0;
    }
  }

  return isEqualToString;
}

+ (BOOL)isContactEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(appBundleIdentifier);

  if (isEqualToString)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"ContactEntity")
    {
      LOBYTE(isEqualToString) = 1;
    }

    else if (identifier)
    {
      LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(identifier);
    }

    else
    {
      LOBYTE(isEqualToString) = 0;
    }
  }

  return isEqualToString;
}

+ (BOOL)isWorkflowEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = VCIsShortcutsAppBundleIdentifier();

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = *MEMORY[0x1E69970F0];
    v8 = identifier;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
      if (v8 && v9)
      {
        LOBYTE(v4) = objc_msgSend_isEqualToString_(v8);
      }
    }
  }

  return v4;
}

+ (BOOL)isPhotosAssetEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(appBundleIdentifier);

  if (isEqualToString)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"AssetEntity")
    {
      LOBYTE(isEqualToString) = 1;
    }

    else if (identifier)
    {
      LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(identifier);
    }

    else
    {
      LOBYTE(isEqualToString) = 0;
    }
  }

  return isEqualToString;
}

+ (BOOL)isReminderEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0F08]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"ReminderEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isCalendarEventEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0E48]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"EventEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isMailMessageEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0EA0]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"MailMessageEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasLibrary
{
  queryMetadata = [self queryMetadata];
  if (queryMetadata)
  {
    hasInMemoryFindAction = 1;
  }

  else
  {
    hasInMemoryFindAction = [self hasInMemoryFindAction];
  }

  return hasInMemoryFindAction;
}

+ (id)localizedCountDescriptionWithValue:(int64_t)value
{
  v16[1] = *MEMORY[0x1E69E9840];
  entityMetadata = [self entityMetadata];
  displayRepresentation = [entityMetadata displayRepresentation];
  numericFormat = [displayRepresentation numericFormat];

  if (numericFormat)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [numericFormat localizedStringWithReplacements:v9 forLocaleIdentifier:0];
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    localizedPluralTypeDescription = [self localizedPluralTypeDescription];
    localizedLowercaseString = [localizedPluralTypeDescription localizedLowercaseString];
    v10 = [v11 stringWithFormat:@"%@ %@", v12, localizedLowercaseString];
  }

  return v10;
}

+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number
{
  contextCopy = context;
  if ([self isRecordingEntity])
  {
    localizedStringResource = WFLocalizedStringResourceWithKey(@"Recording", @"Recording");
    identifier = [contextCopy localize:localizedStringResource];
    goto LABEL_7;
  }

  entityMetadata = [self entityMetadata];
  displayRepresentation = [entityMetadata displayRepresentation];
  name = [displayRepresentation name];
  localizedStringResource = [name localizedStringResource];

  if (localizedStringResource)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:number];
    identifier = [contextCopy localize:localizedStringResource pluralizationNumber:v12];

    if ([identifier length])
    {
      goto LABEL_7;
    }
  }

  entityMetadata2 = [self entityMetadata];
  identifier = [entityMetadata2 identifier];

LABEL_7:

  return identifier;
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  if ([self isRecordingEntity])
  {
    v5 = WFLocalizedStringResourceWithKey(@"Recordings", @"Recordings");
    v6 = [contextCopy localize:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
    v6 = objc_msgSendSuper2(&v8, sel_localizedPluralFilterDescriptionWithContext_, contextCopy);
  }

  return v6;
}

+ (id)allowedOperatorsWithQueryParameterMetadata:(id)metadata objectClasses:(id)classes operators:(id)operators
{
  metadataCopy = metadata;
  classesCopy = classes;
  v10 = [operators copy];
  v11 = [classesCopy if_firstObjectPassingTest:&__block_literal_global_538];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v10];
    if ([v12 containsObject:&unk_1F4A9A090])
    {
      [v12 addObject:&unk_1F4A9A0A8];
      [v12 addObject:&unk_1F4A9A0C0];
      [v12 addObject:&unk_1F4A9A0D8];
    }

    array = [v12 array];

    v10 = array;
  }

  if ([self isNotes])
  {
    propertyIdentifier = [metadataCopy propertyIdentifier];
    v15 = propertyIdentifier;
    if (propertyIdentifier == @"creationDate" || propertyIdentifier && (v16 = objc_msgSend_isEqualToString_(propertyIdentifier), v15, (v16 & 1) != 0) || ([metadataCopy propertyIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17 == @"modificationDate"))
    {
    }

    else
    {
      v18 = v17;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      isEqualToString = objc_msgSend_isEqualToString_(v17);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(__CFString *)v10 if_arrayByRemovingObjectsInArray:&unk_1F4A9AF60];
    v10 = v15 = v10;
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

uint64_t __94__WFLinkEntityContentItem_allowedOperatorsWithQueryParameterMetadata_objectClasses_operators___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isSubclassOfClass:v3];
}

+ (id)allProperties
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
  v2 = objc_msgSendSuper2(&v5, sel_allProperties);
  v3 = [v2 if_compactMap:&__block_literal_global_536];

  return v3;
}

id __40__WFLinkEntityContentItem_allProperties__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 userInfo];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 objectForKey:@"WFLinkEntityContentPropertyUserInfoPropertyIdentifier"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = [v2 userInfo];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;
  }

  if (([v6 isEqual:*MEMORY[0x1E69970C8]] & 1) == 0)
  {
    v9 = [v2 localizedName];
    v10 = [v9 length];

    if (v10)
    {
      v11 = v2;
      goto LABEL_21;
    }

    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v2 name];
      v15 = 136315394;
      v16 = "+[WFLinkEntityContentItem allProperties]_block_invoke";
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Ignoring entity property '%@' because it doesn't have a title.", &v15, 0x16u);
    }
  }

  v11 = 0;
LABEL_21:

  return v11;
}

+ (id)propertyBuildersForFilteringUsingQuery:(id)query
{
  queryCopy = query;
  entityMetadata = [self entityMetadata];
  properties = [entityMetadata properties];
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke;
  v13[3] = &unk_1E8373098;
  v14 = v7;
  v15 = queryCopy;
  v16 = entityMetadata;
  selfCopy = self;
  v8 = entityMetadata;
  v9 = queryCopy;
  v10 = v7;
  v11 = [properties if_compactMap:v13];

  return v11;
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke(id *a1, void *a2)
{
  v176[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueType];
  v5 = [v4 wf_unionValueType];
  v6 = [v5 memberValueTypes];

  v7 = [v3 valueType];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 wf_unionValueType];
    v10 = [v9 memberValueTypes];
  }

  else
  {
    v176[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:1];
  }

  v148 = v3;
  [v3 identifier];
  v147 = v151 = a1;
  [a1[4] setObject:? forKey:?];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v12 = v10;
  v149 = v11;
  obj = v12;
  v154 = [v12 countByEnumeratingWithState:&v165 objects:v175 count:16];
  if (!v154)
  {
    goto LABEL_30;
  }

  v13 = 0x1E69E0000uLL;
  v152 = *v166;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v166 != v152)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v165 + 1) + 8 * v14);
      v16 = [v15 wf_objectClass];
      if (v16 == objc_opt_class())
      {
        v24 = [v15 wf_entityValueType];
        v25 = [*(v13 + 2416) sharedProvider];
        v26 = [v24 identifier];
        v27 = [objc_opt_class() appBundleIdentifier];
        v28 = [v25 entityWithIdentifier:v26 fromBundleIdentifier:v27];

        v29 = [v151[7] queryMetadata];
        v30 = [v151[7] appBundleIdentifier];
        v31 = [v151[7] displayedAppBundleIdentifier];
        v16 = [v28 wf_contentItemClassWithQueryMetadata:v29 appBundleIdentifier:v30 displayedAppBundleIdentifier:v31];

        v11 = v149;
        goto LABEL_24;
      }

      if (v16 == objc_opt_class())
      {
        v24 = [v15 wf_enumValueType];
        v35 = [*(v13 + 2416) sharedProvider];
        v36 = [v24 enumerationIdentifier];
        v37 = [objc_opt_class() appBundleIdentifier];
        v28 = [v35 enumerationWithIdentifier:v36 fromBundleIdentifier:v37];

        v38 = [v151[7] appBundleIdentifier];
        v16 = [v28 wf_contentItemClassWithAppBundleIdentifier:v38];

        v39 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v28 requiringSecureCoding:1 error:0];
        v13 = 0x1E69E0000;
        [v151[4] setObject:v39 forKey:@"WFLinkEntityContentPropertyUserInfoEnumMetadata"];

LABEL_24:
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

      v17 = v15;
      if (v17 && (v18 = v17, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) != 0))
      {
        v20 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        v23 = [v151[7] appBundleIdentifier];
        v16 = [v22 wf_contentItemClassWithAppBundleIdentifier:v23];

        if (!v16)
        {
LABEL_33:
          v45 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            v41 = v148;
            v46 = [v148 identifier];
            *buf = 136315650;
            v170 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
            v171 = 2112;
            v172 = v46;
            v173 = 2112;
            v174 = v15;
            _os_log_impl(&dword_1CA256000, v45, OS_LOG_TYPE_FAULT, "%s Unable to get object class for entity with property metadata: %@, valueType: %@", buf, 0x20u);

            v47 = 0;
            v48 = obj;
            v49 = obj;
          }

          else
          {
            v47 = 0;
            v48 = obj;
            v49 = obj;
            v41 = v148;
          }

          goto LABEL_85;
        }
      }

      else if (v16 == objc_opt_class())
      {
        v16 = objc_opt_class();
        if (!v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v32 = [MEMORY[0x1E6996D68] sharedRegistry];
        v33 = [MEMORY[0x1E6996ED0] typeWithClass:v16];
        v34 = [v32 contentItemClassForType:v33];

        if (!v34)
        {
          v69 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v41 = v148;
            v70 = [v148 identifier];
            *buf = 136315650;
            v170 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
            v171 = 2112;
            v172 = v70;
            v173 = 2112;
            v174 = v16;
            _os_log_impl(&dword_1CA256000, v69, OS_LOG_TYPE_ERROR, "%s Not making content property (%@) because objectClass (%@) does not have a content item", buf, 0x20u);

            v47 = 0;
            v48 = obj;
            v49 = obj;
          }

          else
          {
            v47 = 0;
            v48 = obj;
            v49 = obj;
            v41 = v148;
          }

          v45 = v69;
          goto LABEL_85;
        }

        if (!v16)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      [v11 addObject:v16];
      ++v14;
    }

    while (v154 != v14);
    v12 = obj;
    v40 = [obj countByEnumeratingWithState:&v165 objects:v175 count:16];
    v154 = v40;
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v41 = v148;
  v42 = [v148 valueType];
  objc_opt_class();
  v43 = objc_opt_isKindOfClass();

  v44 = [v148 valueType];
  v141 = v43;
  if (v44 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v145 = v44;
    v45 = [MEMORY[0x1E69E0BE8] unitTypeFromLinkMeasurementUnitType:{objc_msgSend(v44, "unitType")}];
  }

  else
  {

    v45 = 0;
    v145 = 0;
  }

  v50 = [v151[5] parameters];
  v51 = [v148 identifier];
  v153 = [v50 if_firstObjectWithValue:v51 forKey:@"propertyIdentifier"];

  v52 = [v151[5] sortingOptions];
  v53 = [v148 identifier];
  v155 = [v52 if_firstObjectWithValue:v53 forKey:@"propertyIdentifier"];

  v54 = [v151[6] systemProtocolMetadata];
  v55 = [v54 objectForKeyedSubscript:*MEMORY[0x1E69AC278]];

  v56 = [objc_opt_class() appBundleIdentifier];
  v57 = [v151[6] identifier];
  v58 = WFShortcutsActionIdentifierFromLinkIdentifiers(v56, v57);

  v59 = WFIndexingKeyForForcedLinkEntityFindAction();
  v144 = v58;
  v60 = [v59 objectForKey:v58];
  v61 = [v148 identifier];
  v62 = [v60 objectForKey:v61];
  v63 = v62;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v65 = v45;
    v66 = [v148 spotlightAttributeKey];
    v67 = v66;
    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = [v148 spotlightCustomAttributeKey];
    }

    v64 = v68;

    v45 = v65;
  }

  if (!v55)
  {
    v74 = 0;
    v71 = v151;
    v72 = v153;
    if (!v153)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v71 = v151;
  v72 = v153;
  if (![v64 length])
  {
    v74 = 0;
    if (!v153)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if ([v64 length] && ((objc_msgSend_isEqualToString_(v64) & 1) != 0 || objc_msgSend_isEqualToString_(v64)))
  {
    v73 = v151[4];
    v74 = 1;
    v75 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v73 setObject:v75 forKey:@"WFLinkEntityContentPropertyUserInfoTextContentSpotlightAttributeKey"];

    if (!v153)
    {
      goto LABEL_55;
    }

LABEL_53:
    v76 = 1;
  }

  else
  {
    v74 = 1;
    if (v153)
    {
      goto LABEL_53;
    }

LABEL_55:
    v76 = v74 | [v71[7] hasInMemoryFindAction];
  }

  if (v155)
  {
    v77 = 1;
  }

  else
  {
    v77 = v74 | [v71[7] hasInMemoryFindAction];
  }

  if ([v71[7] isNotes])
  {
    v78 = [v148 title];
    v79 = [v78 key];
  }

  else
  {
    v79 = [v148 identifier];
  }

  v146 = v79;
  if (!v79)
  {
    v84 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      v85 = [v148 identifier];
      v86 = [v148 valueType];
      *buf = 136315650;
      v170 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
      v171 = 2112;
      v172 = v85;
      v173 = 2112;
      v174 = v86;
      _os_log_impl(&dword_1CA256000, v84, OS_LOG_TYPE_FAULT, "%s Unable to get property name for entity with property metadata: %@, valueType: %@", buf, 0x20u);
    }

    v47 = 0;
    v87 = v144;
    v49 = v145;
    goto LABEL_84;
  }

  v138 = v77;
  v139 = v76;
  v80 = [v148 title];
  v81 = [v80 wf_localizedString];

  v82 = [v148 valueType];
  objc_opt_class();
  v140 = v64;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v143 = v81;
LABEL_73:

    goto LABEL_74;
  }

  v83 = [v81 length];

  if (!v83)
  {
    v88 = [v148 valueType];
    v82 = [v88 wf_enumValueType];

    v89 = [v82 enumerationIdentifier];
    v90 = [MEMORY[0x1E69E0970] sharedProvider];
    v91 = [objc_opt_class() appBundleIdentifier];
    v92 = [v90 enumerationWithIdentifier:v89 fromBundleIdentifier:v91];

    v93 = [v92 displayRepresentation];
    v94 = [v93 name];
    [v94 wf_localizedString];
    v96 = v95 = v45;

    v72 = v153;
    v71 = v151;
    v143 = v96;
    v45 = v95;
    v79 = v146;
    goto LABEL_73;
  }

  v143 = v81;
LABEL_74:
  v97 = MEMORY[0x1E696AEC0];
  v98 = WFLocalizedString(@"Not %@");
  v99 = [v97 stringWithFormat:v98, v143];

  v100 = MEMORY[0x1E6996D90];
  v162[0] = MEMORY[0x1E69E9820];
  v162[1] = 3221225472;
  v162[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_510;
  v162[3] = &unk_1E8372F90;
  v101 = v148;
  v102 = v71[7];
  v163 = v101;
  v164 = v102;
  v136 = [v100 block:v162 name:v79 classes:v11];
  v135 = [v136 multipleValues:v141 & 1];
  v137 = v45;
  v134 = [v135 measurementUnitType:v45];
  v103 = [v134 displayName:v143];
  v142 = v99;
  v104 = [v103 negativeName:v99];
  v105 = v71[7];
  v106 = [v72 wf_supportedContentOperators];
  v107 = [v105 allowedOperatorsWithQueryParameterMetadata:v72 objectClasses:v11 operators:v106];
  v108 = [v104 allowedOperators:v107];
  v109 = [v108 filterable:v139];
  [v109 sortable:v138];
  v111 = v110 = v71;
  v112 = [v111 withLinkPropertyIdentifier:v147];
  v47 = [v112 userInfo:v110[4]];

  v72 = v153;
  v113 = [v101 valueType];
  v114 = [v113 wf_objectClass];
  v115 = objc_opt_class();

  if (v153 && v114 == v115)
  {
    v159[0] = MEMORY[0x1E69E9820];
    v159[1] = 3221225472;
    v159[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3;
    v159[3] = &unk_1E8373000;
    v116 = v101;
    v117 = v151[7];
    v160 = v116;
    v161 = v117;
    v118 = [v47 possibleValuesAsynchronousGetter:v159];

    v119 = v160;
    v47 = v118;
    v41 = v148;
    v11 = v149;
    goto LABEL_79;
  }

  v120 = [v101 valueType];
  objc_opt_class();
  v121 = objc_opt_isKindOfClass();

  if (v121)
  {
    v122 = [v101 valueType];
    v123 = [v122 wf_enumValueType];

    v119 = [v123 enumerationIdentifier];
    v124 = [MEMORY[0x1E69E0970] sharedProvider];
    v125 = [objc_opt_class() appBundleIdentifier];
    v126 = [v124 enumerationWithIdentifier:v119 fromBundleIdentifier:v125];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3_526;
    aBlock[3] = &unk_1E8373050;
    v157 = v126;
    v158 = v123;
    v127 = v123;
    v128 = v126;
    v129 = _Block_copy(aBlock);
    v130 = [v47 possibleValuesGetter:v129];

    v41 = v148;
    v47 = v130;
    v11 = v149;
LABEL_79:
    v45 = v137;
    v49 = v145;
    v64 = v140;
    v84 = v143;
  }

  else
  {
    v41 = v148;
    v11 = v149;
    v45 = v137;
    v49 = v145;
    v64 = v140;
    v84 = v143;
  }

  if ([v11 if_firstObjectPassingTest:&__block_literal_global_531])
  {
    v131 = [v47 comparableUnits:8444];
    v132 = [v131 timeUnits:8444];

    v47 = v132;
  }

  v87 = v144;

LABEL_84:
  v48 = obj;
LABEL_85:

  return v47;
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_510(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 entity];
  v11 = [v10 properties];
  v12 = [*(a1 + 32) identifier];
  v13 = [v11 if_firstObjectWithValue:v12 forKey:@"identifier"];

  v14 = [v9 entity];
  v15 = objc_opt_class();

  v16 = [v15 entityMetadata];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_2;
  v19[3] = &unk_1E8372F68;
  v17 = *(a1 + 40);
  v20 = v7;
  v21 = v17;
  v18 = v7;
  [v13 wf_getValueForEntity:v14 entityMetadata:v16 completionHandler:v19];
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) valueType];
  v5 = [v4 wf_entityValueType];

  v6 = [MEMORY[0x1E69E0970] sharedProvider];
  v7 = [v5 identifier];
  v8 = [objc_opt_class() appBundleIdentifier];
  v9 = [v6 entityWithIdentifier:v7 fromBundleIdentifier:v8];

  v10 = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:v9];
  v18 = 0;
  v11 = [v10 connectionWithError:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = [v10 appEntityMangledTypeName];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_521;
    v15[3] = &unk_1E8372FD8;
    v17 = *(a1 + 40);
    v16 = v3;
    [v11 performSuggestedEntitiesQueryWithEntityMangledTypeName:v13 completionHandler:v15];
  }

  else
  {
    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke_3";
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
    }

    (*(v3 + 2))(v3, MEMORY[0x1E695E0F0]);
  }
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3_526(uint64_t a1)
{
  v2 = [*(a1 + 32) cases];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_4;
  v5[3] = &unk_1E8373028;
  v6 = *(a1 + 40);
  v3 = [v2 if_map:v5];

  return v3;
}

uint64_t __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isSubclassOfClass:v3];
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = *(a1 + 32);
  v8 = [v4 displayRepresentation];

  v9 = [v5 initWithValue:v6 valueType:v7 displayRepresentation:v8];

  return v9;
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_521(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 value];
  v4 = [v3 value];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  if ([objc_opt_class() isNotes] && (v9 = *(a1 + 40), objc_msgSend(v16, "value"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "valueType"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "wf_entityValueType"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "identifier"), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = objc_msgSend(v9, "isNoteFolderEntityIdentifier:", v13), v13, v12, v11, v10, v9))
  {
    v14 = *(a1 + 32);
    v15 = [v8 if_map:&__block_literal_global];
    (*(v14 + 16))(v14, v15);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 valueType];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 memberValueType];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v7 = [v23 value];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v22 = v8;

    v11 = *(a1 + 32);
    v12 = [v22 valueForKeyPath:@"value"];
  }

  else
  {
    v9 = [v23 valueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = [v23 valueType];
      v14 = [objc_opt_class() appBundleIdentifier];
      v15 = [objc_opt_class() displayedAppBundleIdentifier];
      v12 = [v13 wf_contentCollectionFromLinkValue:v23 appBundleIdentifier:v14 displayedBundleIdentifier:v15 disclosureLevel:1];

      v16 = *(a1 + 32);
      v17 = [v12 items];
      v18 = [v17 count];
      v19 = [v12 items];
      v20 = v19;
      if (v18 == 1)
      {
        v21 = [v19 firstObject];
        (*(v16 + 16))(v16, v21);
      }

      else
      {
        (*(v16 + 16))(v16, v19);
      }

      goto LABEL_20;
    }

    v11 = *(a1 + 32);
    v12 = [v23 value];
  }

  (*(v11 + 16))(v11, v12);
LABEL_20:
}

+ (id)propertyBuilders
{
  queryMetadata = [self queryMetadata];
  v4 = [self propertyBuildersForFilteringUsingQuery:queryMetadata];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37__WFLinkEntityContentItem_initialize__block_invoke;
    v3[3] = &__block_descriptor_40_e30__24__0__WFContentProperty_8_16l;
    v3[4] = self;
    [MEMORY[0x1E6996D48] registerValueMapping:v3];
  }
}

id __37__WFLinkEntityContentItem_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a2 propertyClasses];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v28 = v5;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      if ([v11 isSubclassOfClass:*(a1 + 32)])
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v5;
          v13 = [v12 entity];
          v14 = [v11 entityMetadata];
          if ([v11 isNotes])
          {
            [v14 identifier];
            v16 = v15 = v6;
            v17 = [v11 isNoteFolderEntityIdentifier:v16];

            v6 = v15;
            if (v17)
            {
              v21 = objc_alloc(MEMORY[0x1E69ACA90]);
              v22 = objc_alloc(MEMORY[0x1E69AC818]);
              v23 = [v14 identifier];
              v24 = [v22 initWithIdentifier:v23];
              v25 = [v12 displayRepresentation];
              v26 = [v21 initWithValue:v13 valueType:v24 displayRepresentation:v25];

              v6 = v15;
              v19 = WFNotesFolderIntentsValueFromLinkValue(v26);

              v5 = v28;
LABEL_27:

              goto LABEL_28;
            }
          }

          v5 = v28;
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v5 value];
          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v12;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v13 = v18;
LABEL_18:

          if (v13)
          {
            if ([v13 isTransient])
            {
              v20 = v13;
              v13 = v20;
            }

            else
            {
              v20 = [v13 identifier];
            }

            v19 = v20;
            goto LABEL_27;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v19 = v5;
LABEL_28:

  return v19;
}

+ (BOOL)hasInMemoryFindAction
{
  v3 = MEMORY[0x1E696AEC0];
  appBundleIdentifier = [self appBundleIdentifier];
  entityMetadata = [self entityMetadata];
  identifier = [entityMetadata identifier];
  v7 = [v3 stringWithFormat:@"%@.%@", appBundleIdentifier, identifier];

  v8 = WFForcedLinkEntityFindActionIdentifiers();
  if ([v8 containsObject:v7])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    queryMetadata = [self queryMetadata];
    v9 = [queryMetadata capabilities] & 1;
  }

  return v9;
}

+ (BOOL)isNoteFolderEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy == @"FolderEntity")
  {
    isEqualToString = 1;
  }

  else if (identifierCopy)
  {
    isEqualToString = objc_msgSend_isEqualToString_(identifierCopy);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

+ (BOOL)isNoteEntity
{
  if (![self isNotes])
  {
    return 0;
  }

  entityMetadata = [self entityMetadata];
  identifier = [entityMetadata identifier];
  v5 = identifier;
  if (identifier == @"NoteEntity")
  {
    isEqualToString = 1;
  }

  else if (identifier)
  {
    isEqualToString = objc_msgSend_isEqualToString_(identifier);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

+ (BOOL)isNotes
{
  appBundleIdentifier = [self appBundleIdentifier];
  isEqualToString = objc_msgSend_isEqualToString_(appBundleIdentifier);

  return isEqualToString;
}

- (BOOL)outputsFileContent
{
  supportedTypes = [(WFLinkEntityContentItem *)self supportedTypes];
  array = [supportedTypes array];
  v4 = [array if_objectsPassingTest:&__block_literal_global_58738];
  v5 = v4 != 0;

  return v5;
}

uint64_t __53__WFLinkEntityContentItem_Finder__outputsFileContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)isFinderNodeEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if (objc_msgSend_isEqualToString_(appBundleIdentifier))
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = identifier;
    if (identifier == @"FINodeEntity")
    {
      isEqualToString = 1;
    }

    else if (identifier)
    {
      isEqualToString = objc_msgSend_isEqualToString_(identifier);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end