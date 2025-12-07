@interface SFAirDropTransferMetaData
- (BOOL)isEqual:(id)equal;
- (SFAirDropTransferMetaData)initWithCoder:(id)coder;
- (SFAirDropTransferMetaData)initWithInformation:(id)information;
- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)types canAutoAccept:(BOOL)accept didAutoAccept:(BOOL)autoAccept verifiableIdentity:(BOOL)identity senderIsMe:(BOOL)me contactIdentifier:(id)identifier senderBundleID:(id)d senderComputerName:(id)self0 senderEmail:(id)self1 senderEmailHash:(id)self2 senderCompositeName:(id)self3 senderFirstName:(id)self4 senderLastName:(id)self5 senderID:(id)self6 senderIcon:(id)self7 smallPreviewImage:(id)self8 previewImage:(id)self9 itemsDescription:(id)description itemsDescriptionAdvanced:(id)advanced items:(id)items rawFiles:(id)files;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setItemsDescription:(id)description;
- (void)updateUsingCoder:(id)coder;
@end

@implementation SFAirDropTransferMetaData

- (SFAirDropTransferMetaData)initWithInformation:(id)information
{
  v59 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v57.receiver = self;
  v57.super_class = SFAirDropTransferMetaData;
  v5 = [(SFAirDropTransferMetaData *)&v57 init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 setTransferTypes:2];
    v7 = [informationCopy objectForKeyedSubscript:@"VerifiableIdentity"];
    v6->_verifiableIdentity = [v7 BOOLValue];

    v8 = [informationCopy objectForKeyedSubscript:@"SenderIsMe"];
    v6->_senderIsMe = [v8 BOOLValue];

    v9 = [informationCopy objectForKeyedSubscript:@"AutoAccept"];
    v49 = v6;
    v6->_canAutoAccept = [v9 BOOLValue];

    v50 = informationCopy;
    v10 = [informationCopy objectForKeyedSubscript:@"Files"];
    v52 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
      v14 = *MEMORY[0x1E6963710];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v53 + 1) + 8 * i) mutableCopy];
          v17 = [v16 objectForKeyedSubscript:@"FileType"];
          if (UTTypeIsDynamic(v17))
          {
            v18 = [v16 objectForKeyedSubscript:@"FileName"];
            pathExtension = [v18 pathExtension];
            PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v14, pathExtension, 0);

            [v16 setObject:PreferredIdentifierForTag forKeyedSubscript:@"FileType"];
          }

          [v52 addObject:v16];
        }

        v12 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v12);
    }

    v6 = v49;
    objc_storeStrong(&v49->_rawFiles, v52);
    informationCopy = v50;
    v21 = [v50 objectForKeyedSubscript:@"ItemsDescription"];
    [(SFAirDropTransferMetaData *)v49 setItemsDescription:v21];

    v22 = [v50 objectForKeyedSubscript:@"SmallFileIcon"];
    smallPreviewImage = v49->_smallPreviewImage;
    v49->_smallPreviewImage = v22;

    v24 = [v50 objectForKeyedSubscript:@"FileIcon"];
    previewImage = v49->_previewImage;
    v49->_previewImage = v24;

    CGImageWithDataOrURL = [v50 objectForKeyedSubscript:@"SenderIcon"];
    v27 = CGImageWithDataOrURL;
    if (CGImageWithDataOrURL)
    {
      CGImageWithDataOrURL = createCGImageWithDataOrURL(CGImageWithDataOrURL);
    }

    senderIcon = v49->_senderIcon;
    v49->_senderIcon = CGImageWithDataOrURL;

    v29 = [v50 objectForKeyedSubscript:@"BundleID"];
    senderBundleID = v49->_senderBundleID;
    v49->_senderBundleID = v29;

    v31 = [v50 objectForKeyedSubscript:@"SenderComputerName"];
    senderComputerName = v49->_senderComputerName;
    v49->_senderComputerName = v31;

    v33 = [v50 objectForKeyedSubscript:@"SenderEmail"];
    senderEmail = v49->_senderEmail;
    v49->_senderEmail = v33;

    v35 = [v50 objectForKeyedSubscript:@"SenderEmailHash"];
    senderEmailHash = v49->_senderEmailHash;
    v49->_senderEmailHash = v35;

    v37 = [v50 objectForKeyedSubscript:@"SenderCompositeName"];
    senderCompositeName = v49->_senderCompositeName;
    v49->_senderCompositeName = v37;

    v39 = [v50 objectForKeyedSubscript:@"SenderFirstName"];
    senderFirstName = v49->_senderFirstName;
    v49->_senderFirstName = v39;

    v41 = [v50 objectForKeyedSubscript:@"SenderLastName"];
    senderLastName = v49->_senderLastName;
    v49->_senderLastName = v41;

    v43 = [v50 objectForKeyedSubscript:@"SenderID"];
    senderID = v49->_senderID;
    v49->_senderID = v43;

    v45 = [v50 objectForKeyedSubscript:@"SenderNode"];

    if (v45)
    {
      v46 = SFNodeCopyContactIdentifier(v45);
      contactIdentifier = v49->_contactIdentifier;
      v49->_contactIdentifier = &v46->isa;
    }
  }

  return v6;
}

- (SFAirDropTransferMetaData)initWithTransferTypes:(int64_t)types canAutoAccept:(BOOL)accept didAutoAccept:(BOOL)autoAccept verifiableIdentity:(BOOL)identity senderIsMe:(BOOL)me contactIdentifier:(id)identifier senderBundleID:(id)d senderComputerName:(id)self0 senderEmail:(id)self1 senderEmailHash:(id)self2 senderCompositeName:(id)self3 senderFirstName:(id)self4 senderLastName:(id)self5 senderID:(id)self6 senderIcon:(id)self7 smallPreviewImage:(id)self8 previewImage:(id)self9 itemsDescription:(id)description itemsDescriptionAdvanced:(id)advanced items:(id)items rawFiles:(id)files
{
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  emailCopy = email;
  hashCopy = hash;
  compositeNameCopy = compositeName;
  firstNameCopy = firstName;
  lastNameCopy = lastName;
  iDCopy = iD;
  iconCopy = icon;
  imageCopy = image;
  previewImageCopy = previewImage;
  descriptionCopy = description;
  advancedCopy = advanced;
  itemsCopy = items;
  filesCopy = files;
  v50.receiver = self;
  v50.super_class = SFAirDropTransferMetaData;
  v30 = [(SFAirDropTransferMetaData *)&v50 init];
  v31 = v30;
  if (v30)
  {
    v30->_transferTypes = types;
    v30->_canAutoAccept = accept;
    v30->_didAutoAccept = autoAccept;
    v30->_verifiableIdentity = identity;
    v30->_senderIsMe = me;
    objc_storeStrong(&v30->_contactIdentifier, identifier);
    objc_storeStrong(&v31->_senderBundleID, d);
    objc_storeStrong(&v31->_senderComputerName, name);
    objc_storeStrong(&v31->_senderEmail, email);
    objc_storeStrong(&v31->_senderEmailHash, hash);
    objc_storeStrong(&v31->_senderCompositeName, compositeName);
    objc_storeStrong(&v31->_senderFirstName, firstName);
    objc_storeStrong(&v31->_senderLastName, lastName);
    objc_storeStrong(&v31->_senderID, iD);
    objc_storeStrong(&v31->_senderIcon, icon);
    objc_storeStrong(&v31->_smallPreviewImage, image);
    objc_storeStrong(&v31->_previewImage, previewImage);
    objc_storeStrong(&v31->_itemsDescription, description);
    objc_storeStrong(&v31->_itemsDescriptionAdvanced, advanced);
    objc_storeStrong(&v31->_items, items);
    objc_storeStrong(&v31->_rawFiles, files);
    v32 = v31;
  }

  return v31;
}

- (SFAirDropTransferMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFAirDropTransferMetaData *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFAirDropTransferMetaData *)v5 updateUsingCoder:coderCopy];
  }

  return v6;
}

- (void)updateUsingCoder:(id)coder
{
  v83[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  self->_transferTypes = [coderCopy decodeInt64ForKey:@"transferTypes"];
  self->_canAutoAccept = [coderCopy decodeBoolForKey:@"canAutoAccept"];
  self->_didAutoAccept = [coderCopy decodeBoolForKey:@"didAutoAccept"];
  self->_verifiableIdentity = [coderCopy decodeBoolForKey:@"verifiableIdentity"];
  self->_senderIsMe = [coderCopy decodeBoolForKey:@"senderIsMe"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderBundleID"];
  senderBundleID = self->_senderBundleID;
  self->_senderBundleID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderComputerName"];
  senderComputerName = self->_senderComputerName;
  self->_senderComputerName = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderEmail"];
  senderEmail = self->_senderEmail;
  self->_senderEmail = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderEmailHash"];
  senderEmailHash = self->_senderEmailHash;
  self->_senderEmailHash = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderCompositeName"];
  senderCompositeName = self->_senderCompositeName;
  self->_senderCompositeName = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderFirstName"];
  senderFirstName = self->_senderFirstName;
  self->_senderFirstName = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderLastName"];
  senderLastName = self->_senderLastName;
  self->_senderLastName = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderID"];
  senderID = self->_senderID;
  self->_senderID = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_senderIconData"];
  v24 = v23;
  if (v23)
  {
    CGImageWithData = createCGImageWithData(v23);
    senderIcon = self->_senderIcon;
    self->_senderIcon = CGImageWithData;

    if (!self->_senderIcon)
    {
      v28 = airdrop_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v28 updateUsingCoder:v29, v30, v31, v32, v33, v34, v35];
      }
    }
  }

  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_smallPreviewImageData"];

  if (v36)
  {
    v37 = createCGImageWithData(v36);
    smallPreviewImage = self->_smallPreviewImage;
    self->_smallPreviewImage = v37;

    if (!self->_smallPreviewImage)
    {
      v40 = airdrop_log(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v40 updateUsingCoder:v41, v42, v43, v44, v45, v46, v47];
      }
    }
  }

  v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_previewImageData"];

  if (v48)
  {
    v49 = createCGImageWithData(v48);
    previewImage = self->_previewImage;
    self->_previewImage = v49;

    if (!self->_previewImage)
    {
      v52 = airdrop_log(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropTransferMetaData *)v52 updateUsingCoder:v53, v54, v55, v56, v57, v58, v59];
      }
    }
  }

  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemsDescription"];
  v61 = [v60 copy];
  itemsDescription = self->_itemsDescription;
  self->_itemsDescription = v61;

  v63 = MEMORY[0x1E695DFD8];
  v83[0] = objc_opt_class();
  v83[1] = objc_opt_class();
  v83[2] = objc_opt_class();
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
  v65 = [v63 setWithArray:v64];
  v66 = [coderCopy decodeObjectOfClasses:v65 forKey:@"itemsDescriptionAdvanced"];
  itemsDescriptionAdvanced = self->_itemsDescriptionAdvanced;
  self->_itemsDescriptionAdvanced = v66;

  v68 = MEMORY[0x1E695DFD8];
  v82[0] = objc_opt_class();
  v82[1] = objc_opt_class();
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v70 = [v68 setWithArray:v69];
  v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"items"];
  items = self->_items;
  self->_items = v71;

  v73 = MEMORY[0x1E695DFD8];
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:4];
  v75 = [v73 setWithArray:{v74, v78, v79, v80}];
  v76 = [coderCopy decodeObjectOfClasses:v75 forKey:@"rawFiles"];
  rawFiles = self->_rawFiles;
  self->_rawFiles = v76;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_transferTypes forKey:@"transferTypes"];
  [coderCopy encodeBool:self->_canAutoAccept forKey:@"canAutoAccept"];
  [coderCopy encodeBool:self->_didAutoAccept forKey:@"didAutoAccept"];
  [coderCopy encodeBool:self->_verifiableIdentity forKey:@"verifiableIdentity"];
  [coderCopy encodeBool:self->_senderIsMe forKey:@"senderIsMe"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_senderBundleID forKey:@"senderBundleID"];
  [coderCopy encodeObject:self->_senderComputerName forKey:@"senderComputerName"];
  [coderCopy encodeObject:self->_senderEmail forKey:@"senderEmail"];
  [coderCopy encodeObject:self->_senderEmailHash forKey:@"senderEmailHash"];
  [coderCopy encodeObject:self->_senderCompositeName forKey:@"senderCompositeName"];
  [coderCopy encodeObject:self->_senderFirstName forKey:@"senderFirstName"];
  [coderCopy encodeObject:self->_senderLastName forKey:@"senderLastName"];
  [coderCopy encodeObject:self->_senderID forKey:@"senderID"];
  senderIcon = self->_senderIcon;
  if (senderIcon)
  {
    v5 = copyImageData(senderIcon, 0);
    [coderCopy encodeObject:v5 forKey:@"_senderIconData"];
  }

  smallPreviewImage = self->_smallPreviewImage;
  if (smallPreviewImage)
  {
    v7 = copyImageData(smallPreviewImage, 0);
    [coderCopy encodeObject:v7 forKey:@"_smallPreviewImageData"];
  }

  previewImage = self->_previewImage;
  if (previewImage)
  {
    v9 = copyImageData(previewImage, 0);
    [coderCopy encodeObject:v9 forKey:@"_previewImageData"];
  }

  [coderCopy encodeObject:self->_itemsDescription forKey:@"itemsDescription"];
  [coderCopy encodeObject:self->_itemsDescriptionAdvanced forKey:@"itemsDescriptionAdvanced"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
  [coderCopy encodeObject:self->_rawFiles forKey:@"rawFiles"];
}

- (id)description
{
  v30 = 0;
  v3 = objc_opt_class();
  v4 = SFAirDropTransferTypesToString(self->_transferTypes);
  NSAppendPrintF(&v30, "<%@: transferTypes: [%@]", v3, v4);
  v5 = v30;

  v29 = v5;
  if (self->_verifiableIdentity)
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  NSAppendPrintF(&v29, ", verifiableIdentity: %s", v6);
  v7 = v29;

  v28 = v7;
  if (self->_contactIdentifier)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  NSAppendPrintF(&v28, ", hasContactIdentifier: %s", v8);
  v9 = v28;

  v27 = v9;
  if (self->_senderIsMe)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  NSAppendPrintF(&v27, ", senderIsMe: %s", v10);
  v11 = v27;

  v26 = v11;
  if (self->_canAutoAccept)
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  NSAppendPrintF(&v26, ", canAutoAccept: %s", v12);
  v13 = v26;

  v25 = v13;
  NSAppendPrintF(&v25, ", sender: %@", self->_senderComputerName);
  v14 = v25;

  v24 = v14;
  if (self->_previewImage)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  NSAppendPrintF(&v24, ", hasPreviewImage: %s", v15);
  v16 = v24;

  v23 = v16;
  if (self->_smallPreviewImage)
  {
    v17 = "yes";
  }

  else
  {
    v17 = "no";
  }

  NSAppendPrintF(&v23, ", hasSmallPreviewImage: %s", v17);
  v18 = v23;

  v22 = v18;
  NSAppendPrintF(&v22, ">");
  v19 = v22;
  v20 = v22;

  return v19;
}

- (unint64_t)hash
{
  transferTypes = [(SFAirDropTransferMetaData *)self transferTypes];
  contactIdentifier = [(SFAirDropTransferMetaData *)self contactIdentifier];
  v5 = [contactIdentifier hash] ^ transferTypes;
  senderID = [(SFAirDropTransferMetaData *)self senderID];
  v7 = [senderID hash];
  senderBundleID = [(SFAirDropTransferMetaData *)self senderBundleID];
  v9 = v7 ^ [senderBundleID hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SFAirDropTransferMetaData *)self hash];
      v6 = v5 == [(SFAirDropTransferMetaData *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setItemsDescription:(id)description
{
  descriptionCopy = description;
  p_itemsDescription = &self->_itemsDescription;
  if (([descriptionCopy isEqual:self->_itemsDescription] & 1) == 0)
  {
    v7 = SFStringIsJSON(descriptionCopy);
    if (v7)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v9 = airdrop_log(isKindOfClass);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [(SFAirDropTransferMetaData *)v7 setItemsDescription:v9];
        }

        objc_storeStrong(&self->_itemsDescriptionAdvanced, v7);
        v10 = [(NSDictionary *)self->_itemsDescriptionAdvanced objectForKeyedSubscript:@"SFAirDropActivitySubjectMain"];
        itemsDescription = self->_itemsDescription;
        self->_itemsDescription = v10;
      }

      else
      {
        itemsDescription = *p_itemsDescription;
        *p_itemsDescription = 0;
      }
    }

    else
    {
      objc_storeStrong(&self->_itemsDescription, description);
    }
  }
}

- (void)setItemsDescription:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A9662000, a2, OS_LOG_TYPE_DEBUG, "Transfer provided JSON items description: %@", &v2, 0xCu);
}

@end