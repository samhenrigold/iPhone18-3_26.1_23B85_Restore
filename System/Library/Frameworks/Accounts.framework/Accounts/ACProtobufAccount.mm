@interface ACProtobufAccount
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dataclassPropertiesDictionary;
- (NSDictionary)propertiesDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDataclassProperties:(id)properties;
- (void)addDirtyAccountProperties:(id)properties;
- (void)addDirtyDataclassProperties:(id)properties;
- (void)addDirtyProperties:(id)properties;
- (void)addEnabledDataclasses:(id)dataclasses;
- (void)addEnabledEnumDataclasses:(id)dataclasses;
- (void)addProperties:(id)properties;
- (void)addProvisionedDataclasses:(id)dataclasses;
- (void)addProvisionedEnumDataclasses:(id)dataclasses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setDataclassPropertiesDictionary:(id)dictionary;
- (void)setPropertiesDictionary:(id)dictionary;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufAccount

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_properties;
    self->_properties = v6;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSMutableArray *)properties addObject:propertiesCopy];
}

- (void)addDataclassProperties:(id)properties
{
  propertiesCopy = properties;
  dataclassProperties = self->_dataclassProperties;
  v8 = propertiesCopy;
  if (!dataclassProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dataclassProperties;
    self->_dataclassProperties = v6;

    propertiesCopy = v8;
    dataclassProperties = self->_dataclassProperties;
  }

  [(NSMutableArray *)dataclassProperties addObject:propertiesCopy];
}

- (void)addEnabledDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  enabledDataclasses = self->_enabledDataclasses;
  v8 = dataclassesCopy;
  if (!enabledDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_enabledDataclasses;
    self->_enabledDataclasses = v6;

    dataclassesCopy = v8;
    enabledDataclasses = self->_enabledDataclasses;
  }

  [(NSMutableArray *)enabledDataclasses addObject:dataclassesCopy];
}

- (void)addProvisionedDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  provisionedDataclasses = self->_provisionedDataclasses;
  v8 = dataclassesCopy;
  if (!provisionedDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_provisionedDataclasses;
    self->_provisionedDataclasses = v6;

    dataclassesCopy = v8;
    provisionedDataclasses = self->_provisionedDataclasses;
  }

  [(NSMutableArray *)provisionedDataclasses addObject:dataclassesCopy];
}

- (void)addDirtyProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyProperties = self->_dirtyProperties;
  v8 = propertiesCopy;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    propertiesCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableArray *)dirtyProperties addObject:propertiesCopy];
}

- (void)addDirtyAccountProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyAccountProperties = self->_dirtyAccountProperties;
  v8 = propertiesCopy;
  if (!dirtyAccountProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyAccountProperties;
    self->_dirtyAccountProperties = v6;

    propertiesCopy = v8;
    dirtyAccountProperties = self->_dirtyAccountProperties;
  }

  [(NSMutableArray *)dirtyAccountProperties addObject:propertiesCopy];
}

- (void)addDirtyDataclassProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyDataclassProperties = self->_dirtyDataclassProperties;
  v8 = propertiesCopy;
  if (!dirtyDataclassProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyDataclassProperties;
    self->_dirtyDataclassProperties = v6;

    propertiesCopy = v8;
    dirtyDataclassProperties = self->_dirtyDataclassProperties;
  }

  [(NSMutableArray *)dirtyDataclassProperties addObject:propertiesCopy];
}

- (void)addEnabledEnumDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  enabledEnumDataclasses = self->_enabledEnumDataclasses;
  v8 = dataclassesCopy;
  if (!enabledEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_enabledEnumDataclasses;
    self->_enabledEnumDataclasses = v6;

    dataclassesCopy = v8;
    enabledEnumDataclasses = self->_enabledEnumDataclasses;
  }

  [(NSMutableArray *)enabledEnumDataclasses addObject:dataclassesCopy];
}

- (void)addProvisionedEnumDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  provisionedEnumDataclasses = self->_provisionedEnumDataclasses;
  v8 = dataclassesCopy;
  if (!provisionedEnumDataclasses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_provisionedEnumDataclasses;
    self->_provisionedEnumDataclasses = v6;

    dataclassesCopy = v8;
    provisionedEnumDataclasses = self->_provisionedEnumDataclasses;
  }

  [(NSMutableArray *)provisionedEnumDataclasses addObject:dataclassesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufAccount;
  v4 = [(ACProtobufAccount *)&v8 description];
  dictionaryRepresentation = [(ACProtobufAccount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v82 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  accountType = self->_accountType;
  if (accountType)
  {
    dictionaryRepresentation = [(ACProtobufAccountType *)accountType dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"accountType"];
  }

  credential = self->_credential;
  if (credential)
  {
    dictionaryRepresentation2 = [(ACProtobufAccountCredential *)credential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"credential"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [dictionary setObject:accountDescription forKey:@"accountDescription"];
  }

  username = self->_username;
  if (username)
  {
    [dictionary setObject:username forKey:@"username"];
  }

  if ([(NSMutableArray *)self->_properties count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_properties, "count")}];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v12 = self->_properties;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v75;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v75 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation3 = [*(*(&v74 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation3];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"properties"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_authenticated];
  [dictionary setObject:v18 forKey:@"authenticated"];

  lastCredentialRenewalRejectionDate = self->_lastCredentialRenewalRejectionDate;
  if (lastCredentialRenewalRejectionDate)
  {
    dictionaryRepresentation4 = [(ACProtobufDate *)lastCredentialRenewalRejectionDate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"lastCredentialRenewalRejectionDate"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  [dictionary setObject:v21 forKey:@"active"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_visible];
  [dictionary setObject:v22 forKey:@"visible"];

  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsAuthentication];
  [dictionary setObject:v23 forKey:@"supportsAuthentication"];

  if ([(NSMutableArray *)self->_dataclassProperties count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dataclassProperties, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v25 = self->_dataclassProperties;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v71;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation5 = [*(*(&v70 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation5];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"dataclassProperties"];
  }

  objectID = self->_objectID;
  if (objectID)
  {
    dictionaryRepresentation6 = [(ACProtobufURL *)objectID dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"objectID"];
  }

  parentAccount = self->_parentAccount;
  if (parentAccount)
  {
    dictionaryRepresentation7 = [(ACProtobufAccount *)parentAccount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"parentAccount"];
  }

  enabledDataclasses = self->_enabledDataclasses;
  if (enabledDataclasses)
  {
    [dictionary setObject:enabledDataclasses forKey:@"enabledDataclasses"];
  }

  provisionedDataclasses = self->_provisionedDataclasses;
  if (provisionedDataclasses)
  {
    [dictionary setObject:provisionedDataclasses forKey:@"provisionedDataclasses"];
  }

  authenticationType = self->_authenticationType;
  if (authenticationType)
  {
    [dictionary setObject:authenticationType forKey:@"authenticationType"];
  }

  credentialType = self->_credentialType;
  if (credentialType)
  {
    [dictionary setObject:credentialType forKey:@"credentialType"];
  }

  date = self->_date;
  if (date)
  {
    dictionaryRepresentation8 = [(ACProtobufDate *)date dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"date"];
  }

  owningBundleID = self->_owningBundleID;
  if (owningBundleID)
  {
    [dictionary setObject:owningBundleID forKey:@"owningBundleID"];
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties)
  {
    [dictionary setObject:dirtyProperties forKey:@"dirtyProperties"];
  }

  dirtyAccountProperties = self->_dirtyAccountProperties;
  if (dirtyAccountProperties)
  {
    [dictionary setObject:dirtyAccountProperties forKey:@"dirtyAccountProperties"];
  }

  dirtyDataclassProperties = self->_dirtyDataclassProperties;
  if (dirtyDataclassProperties)
  {
    [dictionary setObject:dirtyDataclassProperties forKey:@"dirtyDataclassProperties"];
  }

  if (*&self->_has)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_warmingUp];
    [dictionary setObject:v45 forKey:@"warmingUp"];
  }

  modificationID = self->_modificationID;
  if (modificationID)
  {
    [dictionary setObject:modificationID forKey:@"modificationID"];
  }

  if ([(NSMutableArray *)self->_enabledEnumDataclasses count])
  {
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_enabledEnumDataclasses, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v48 = self->_enabledEnumDataclasses;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v66 objects:v79 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v67;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v67 != v51)
          {
            objc_enumerationMutation(v48);
          }

          dictionaryRepresentation9 = [*(*(&v66 + 1) + 8 * k) dictionaryRepresentation];
          [v47 addObject:dictionaryRepresentation9];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v66 objects:v79 count:16];
      }

      while (v50);
    }

    [dictionary setObject:v47 forKey:@"enabledEnumDataclasses"];
  }

  if ([(NSMutableArray *)self->_provisionedEnumDataclasses count])
  {
    v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_provisionedEnumDataclasses, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v55 = self->_provisionedEnumDataclasses;
    v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v63;
      do
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v63 != v58)
          {
            objc_enumerationMutation(v55);
          }

          dictionaryRepresentation10 = [*(*(&v62 + 1) + 8 * m) dictionaryRepresentation];
          [v54 addObject:dictionaryRepresentation10];
        }

        v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v57);
    }

    [dictionary setObject:v54 forKey:@"provisionedEnumDataclasses"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v95 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteSubmessage();
  if (self->_credential)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteStringField();
  if (self->_accountDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_username)
  {
    PBDataWriterWriteStringField();
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v5 = self->_properties;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v83;
    do
    {
      v9 = 0;
      do
      {
        if (*v83 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v82 objects:v94 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteBOOLField();
  if (self->_lastCredentialRenewalRejectionDate)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteBOOLField();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteBOOLField();
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = self->_dataclassProperties;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v79;
    do
    {
      v14 = 0;
      do
      {
        if (*v79 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v12);
  }

  if (self->_objectID)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_parentAccount)
  {
    PBDataWriterWriteSubmessage();
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v15 = self->_enabledDataclasses;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v75;
    do
    {
      v19 = 0;
      do
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteStringField();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v17);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v20 = self->_provisionedDataclasses;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v71;
    do
    {
      v24 = 0;
      do
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v70 objects:v91 count:16];
    }

    while (v22);
  }

  if (self->_authenticationType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_credentialType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_date)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_owningBundleID)
  {
    PBDataWriterWriteStringField();
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = self->_dirtyProperties;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v67;
    do
    {
      v29 = 0;
      do
      {
        if (*v67 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteStringField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v66 objects:v90 count:16];
    }

    while (v27);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v30 = self->_dirtyAccountProperties;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v63;
    do
    {
      v34 = 0;
      do
      {
        if (*v63 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteStringField();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v62 objects:v89 count:16];
    }

    while (v32);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v35 = self->_dirtyDataclassProperties;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v59;
    do
    {
      v39 = 0;
      do
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(v35);
        }

        PBDataWriterWriteStringField();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v58 objects:v88 count:16];
    }

    while (v37);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_modificationID)
  {
    PBDataWriterWriteStringField();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = self->_enabledEnumDataclasses;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v55;
    do
    {
      v44 = 0;
      do
      {
        if (*v55 != v43)
        {
          objc_enumerationMutation(v40);
        }

        PBDataWriterWriteSubmessage();
        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v54 objects:v87 count:16];
    }

    while (v42);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v45 = self->_provisionedEnumDataclasses;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v51;
    do
    {
      v49 = 0;
      do
      {
        if (*v51 != v48)
        {
          objc_enumerationMutation(v45);
        }

        PBDataWriterWriteSubmessage();
        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v50 objects:v86 count:16];
    }

    while (v47);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAccountType:self->_accountType];
  if (self->_credential)
  {
    [toCopy setCredential:?];
  }

  [toCopy setIdentifier:self->_identifier];
  if (self->_accountDescription)
  {
    [toCopy setAccountDescription:?];
  }

  if (self->_username)
  {
    [toCopy setUsername:?];
  }

  if ([(ACProtobufAccount *)self propertiesCount])
  {
    [toCopy clearProperties];
    propertiesCount = [(ACProtobufAccount *)self propertiesCount];
    if (propertiesCount)
    {
      v5 = propertiesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufAccount *)self propertiesAtIndex:i];
        [toCopy addProperties:v7];
      }
    }
  }

  v8 = toCopy;
  toCopy[185] = self->_authenticated;
  if (self->_lastCredentialRenewalRejectionDate)
  {
    [toCopy setLastCredentialRenewalRejectionDate:?];
    v8 = toCopy;
  }

  v8[184] = self->_active;
  v8[187] = self->_visible;
  v8[186] = self->_supportsAuthentication;
  if ([(ACProtobufAccount *)self dataclassPropertiesCount])
  {
    [toCopy clearDataclassProperties];
    dataclassPropertiesCount = [(ACProtobufAccount *)self dataclassPropertiesCount];
    if (dataclassPropertiesCount)
    {
      v10 = dataclassPropertiesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(ACProtobufAccount *)self dataclassPropertiesAtIndex:j];
        [toCopy addDataclassProperties:v12];
      }
    }
  }

  if (self->_objectID)
  {
    [toCopy setObjectID:?];
  }

  if (self->_parentAccount)
  {
    [toCopy setParentAccount:?];
  }

  if ([(ACProtobufAccount *)self enabledDataclassesCount])
  {
    [toCopy clearEnabledDataclasses];
    enabledDataclassesCount = [(ACProtobufAccount *)self enabledDataclassesCount];
    if (enabledDataclassesCount)
    {
      v14 = enabledDataclassesCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(ACProtobufAccount *)self enabledDataclassesAtIndex:k];
        [toCopy addEnabledDataclasses:v16];
      }
    }
  }

  if ([(ACProtobufAccount *)self provisionedDataclassesCount])
  {
    [toCopy clearProvisionedDataclasses];
    provisionedDataclassesCount = [(ACProtobufAccount *)self provisionedDataclassesCount];
    if (provisionedDataclassesCount)
    {
      v18 = provisionedDataclassesCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(ACProtobufAccount *)self provisionedDataclassesAtIndex:m];
        [toCopy addProvisionedDataclasses:v20];
      }
    }
  }

  if (self->_authenticationType)
  {
    [toCopy setAuthenticationType:?];
  }

  if (self->_credentialType)
  {
    [toCopy setCredentialType:?];
  }

  if (self->_date)
  {
    [toCopy setDate:?];
  }

  if (self->_owningBundleID)
  {
    [toCopy setOwningBundleID:?];
  }

  if ([(ACProtobufAccount *)self dirtyPropertiesCount])
  {
    [toCopy clearDirtyProperties];
    dirtyPropertiesCount = [(ACProtobufAccount *)self dirtyPropertiesCount];
    if (dirtyPropertiesCount)
    {
      v22 = dirtyPropertiesCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(ACProtobufAccount *)self dirtyPropertiesAtIndex:n];
        [toCopy addDirtyProperties:v24];
      }
    }
  }

  if ([(ACProtobufAccount *)self dirtyAccountPropertiesCount])
  {
    [toCopy clearDirtyAccountProperties];
    dirtyAccountPropertiesCount = [(ACProtobufAccount *)self dirtyAccountPropertiesCount];
    if (dirtyAccountPropertiesCount)
    {
      v26 = dirtyAccountPropertiesCount;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(ACProtobufAccount *)self dirtyAccountPropertiesAtIndex:ii];
        [toCopy addDirtyAccountProperties:v28];
      }
    }
  }

  if ([(ACProtobufAccount *)self dirtyDataclassPropertiesCount])
  {
    [toCopy clearDirtyDataclassProperties];
    dirtyDataclassPropertiesCount = [(ACProtobufAccount *)self dirtyDataclassPropertiesCount];
    if (dirtyDataclassPropertiesCount)
    {
      v30 = dirtyDataclassPropertiesCount;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(ACProtobufAccount *)self dirtyDataclassPropertiesAtIndex:jj];
        [toCopy addDirtyDataclassProperties:v32];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[188] = self->_warmingUp;
    toCopy[192] |= 1u;
  }

  if (self->_modificationID)
  {
    [toCopy setModificationID:?];
  }

  if ([(ACProtobufAccount *)self enabledEnumDataclassesCount])
  {
    [toCopy clearEnabledEnumDataclasses];
    enabledEnumDataclassesCount = [(ACProtobufAccount *)self enabledEnumDataclassesCount];
    if (enabledEnumDataclassesCount)
    {
      v34 = enabledEnumDataclassesCount;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(ACProtobufAccount *)self enabledEnumDataclassesAtIndex:kk];
        [toCopy addEnabledEnumDataclasses:v36];
      }
    }
  }

  if ([(ACProtobufAccount *)self provisionedEnumDataclassesCount])
  {
    [toCopy clearProvisionedEnumDataclasses];
    provisionedEnumDataclassesCount = [(ACProtobufAccount *)self provisionedEnumDataclassesCount];
    if (provisionedEnumDataclassesCount)
    {
      v38 = provisionedEnumDataclassesCount;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(ACProtobufAccount *)self provisionedEnumDataclassesAtIndex:mm];
        [toCopy addProvisionedEnumDataclasses:v40];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ACProtobufAccountType *)self->_accountType copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(ACProtobufAccountCredential *)self->_credential copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  v12 = [(NSString *)self->_accountDescription copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = [(NSString *)self->_username copyWithZone:zone];
  v15 = *(v5 + 176);
  *(v5 + 176) = v14;

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v16 = self->_properties;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v119 objects:v131 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v120;
    do
    {
      v20 = 0;
      do
      {
        if (*v120 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v119 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addProperties:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v119 objects:v131 count:16];
    }

    while (v18);
  }

  *(v5 + 185) = self->_authenticated;
  v22 = [(ACProtobufDate *)self->_lastCredentialRenewalRejectionDate copyWithZone:zone];
  v23 = *(v5 + 112);
  *(v5 + 112) = v22;

  *(v5 + 184) = self->_active;
  *(v5 + 187) = self->_visible;
  *(v5 + 186) = self->_supportsAuthentication;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v24 = self->_dataclassProperties;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v116;
    do
    {
      v28 = 0;
      do
      {
        if (*v116 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v115 + 1) + 8 * v28) copyWithZone:zone];
        [v5 addDataclassProperties:v29];

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v115 objects:v130 count:16];
    }

    while (v26);
  }

  v30 = [(ACProtobufURL *)self->_objectID copyWithZone:zone];
  v31 = *(v5 + 128);
  *(v5 + 128) = v30;

  v32 = [(ACProtobufAccount *)self->_parentAccount copyWithZone:zone];
  v33 = *(v5 + 144);
  *(v5 + 144) = v32;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v34 = self->_enabledDataclasses;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v112;
    do
    {
      v38 = 0;
      do
      {
        if (*v112 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v111 + 1) + 8 * v38) copyWithZone:zone];
        [v5 addEnabledDataclasses:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v111 objects:v129 count:16];
    }

    while (v36);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v40 = self->_provisionedDataclasses;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v107 objects:v128 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v108;
    do
    {
      v44 = 0;
      do
      {
        if (*v108 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v107 + 1) + 8 * v44) copyWithZone:zone];
        [v5 addProvisionedDataclasses:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v107 objects:v128 count:16];
    }

    while (v42);
  }

  v46 = [(NSString *)self->_authenticationType copyWithZone:zone];
  v47 = *(v5 + 24);
  *(v5 + 24) = v46;

  v48 = [(NSString *)self->_credentialType copyWithZone:zone];
  v49 = *(v5 + 40);
  *(v5 + 40) = v48;

  v50 = [(ACProtobufDate *)self->_date copyWithZone:zone];
  v51 = *(v5 + 56);
  *(v5 + 56) = v50;

  v52 = [(NSString *)self->_owningBundleID copyWithZone:zone];
  v53 = *(v5 + 136);
  *(v5 + 136) = v52;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v54 = self->_dirtyProperties;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v103 objects:v127 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v104;
    do
    {
      v58 = 0;
      do
      {
        if (*v104 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [*(*(&v103 + 1) + 8 * v58) copyWithZone:zone];
        [v5 addDirtyProperties:v59];

        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v103 objects:v127 count:16];
    }

    while (v56);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v60 = self->_dirtyAccountProperties;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v99 objects:v126 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v100;
    do
    {
      v64 = 0;
      do
      {
        if (*v100 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v99 + 1) + 8 * v64) copyWithZone:zone];
        [v5 addDirtyAccountProperties:v65];

        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v99 objects:v126 count:16];
    }

    while (v62);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v66 = self->_dirtyDataclassProperties;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v95 objects:v125 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v96;
    do
    {
      v70 = 0;
      do
      {
        if (*v96 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [*(*(&v95 + 1) + 8 * v70) copyWithZone:zone];
        [v5 addDirtyDataclassProperties:v71];

        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v95 objects:v125 count:16];
    }

    while (v68);
  }

  if (*&self->_has)
  {
    *(v5 + 188) = self->_warmingUp;
    *(v5 + 192) |= 1u;
  }

  v72 = [(NSString *)self->_modificationID copyWithZone:zone];
  v73 = *(v5 + 120);
  *(v5 + 120) = v72;

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = self->_enabledEnumDataclasses;
  v75 = [(NSMutableArray *)v74 countByEnumeratingWithState:&v91 objects:v124 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v92;
    do
    {
      v78 = 0;
      do
      {
        if (*v92 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = [*(*(&v91 + 1) + 8 * v78) copyWithZone:zone];
        [v5 addEnabledEnumDataclasses:v79];

        ++v78;
      }

      while (v76 != v78);
      v76 = [(NSMutableArray *)v74 countByEnumeratingWithState:&v91 objects:v124 count:16];
    }

    while (v76);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v80 = self->_provisionedEnumDataclasses;
  v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v87 objects:v123 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v88;
    do
    {
      v84 = 0;
      do
      {
        if (*v88 != v83)
        {
          objc_enumerationMutation(v80);
        }

        v85 = [*(*(&v87 + 1) + 8 * v84) copyWithZone:{zone, v87}];
        [v5 addProvisionedEnumDataclasses:v85];

        ++v84;
      }

      while (v82 != v84);
      v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v87 objects:v123 count:16];
    }

    while (v82);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  accountType = self->_accountType;
  if (accountType | *(equalCopy + 2))
  {
    if (![(ACProtobufAccountType *)accountType isEqual:?])
    {
      goto LABEL_65;
    }
  }

  credential = self->_credential;
  if (credential | *(equalCopy + 4))
  {
    if (![(ACProtobufAccountCredential *)credential isEqual:?])
    {
      goto LABEL_65;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 13))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_65;
    }
  }

  accountDescription = self->_accountDescription;
  if (accountDescription | *(equalCopy + 1))
  {
    if (![(NSString *)accountDescription isEqual:?])
    {
      goto LABEL_65;
    }
  }

  username = self->_username;
  if (username | *(equalCopy + 22))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_65;
    }
  }

  properties = self->_properties;
  if (properties | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)properties isEqual:?])
    {
      goto LABEL_65;
    }
  }

  if (self->_authenticated)
  {
    if ((*(equalCopy + 185) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(equalCopy + 185))
  {
    goto LABEL_65;
  }

  lastCredentialRenewalRejectionDate = self->_lastCredentialRenewalRejectionDate;
  if (lastCredentialRenewalRejectionDate | *(equalCopy + 14) && ![(ACProtobufDate *)lastCredentialRenewalRejectionDate isEqual:?])
  {
    goto LABEL_65;
  }

  if (self->_active)
  {
    if ((*(equalCopy + 184) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(equalCopy + 184))
  {
    goto LABEL_65;
  }

  if (self->_visible)
  {
    if ((*(equalCopy + 187) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(equalCopy + 187))
  {
    goto LABEL_65;
  }

  if (self->_supportsAuthentication)
  {
    if ((*(equalCopy + 186) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (*(equalCopy + 186))
  {
    goto LABEL_65;
  }

  dataclassProperties = self->_dataclassProperties;
  if (dataclassProperties | *(equalCopy + 6) && ![(NSMutableArray *)dataclassProperties isEqual:?])
  {
    goto LABEL_65;
  }

  objectID = self->_objectID;
  if (objectID | *(equalCopy + 16))
  {
    if (![(ACProtobufURL *)objectID isEqual:?])
    {
      goto LABEL_65;
    }
  }

  parentAccount = self->_parentAccount;
  if (parentAccount | *(equalCopy + 18))
  {
    if (![(ACProtobufAccount *)parentAccount isEqual:?])
    {
      goto LABEL_65;
    }
  }

  enabledDataclasses = self->_enabledDataclasses;
  if (enabledDataclasses | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)enabledDataclasses isEqual:?])
    {
      goto LABEL_65;
    }
  }

  provisionedDataclasses = self->_provisionedDataclasses;
  if (provisionedDataclasses | *(equalCopy + 20))
  {
    if (![(NSMutableArray *)provisionedDataclasses isEqual:?])
    {
      goto LABEL_65;
    }
  }

  authenticationType = self->_authenticationType;
  if (authenticationType | *(equalCopy + 3))
  {
    if (![(NSString *)authenticationType isEqual:?])
    {
      goto LABEL_65;
    }
  }

  credentialType = self->_credentialType;
  if (credentialType | *(equalCopy + 5))
  {
    if (![(NSString *)credentialType isEqual:?])
    {
      goto LABEL_65;
    }
  }

  date = self->_date;
  if (date | *(equalCopy + 7))
  {
    if (![(ACProtobufDate *)date isEqual:?])
    {
      goto LABEL_65;
    }
  }

  owningBundleID = self->_owningBundleID;
  if (owningBundleID | *(equalCopy + 17))
  {
    if (![(NSString *)owningBundleID isEqual:?])
    {
      goto LABEL_65;
    }
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)dirtyProperties isEqual:?])
    {
      goto LABEL_65;
    }
  }

  dirtyAccountProperties = self->_dirtyAccountProperties;
  if (dirtyAccountProperties | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)dirtyAccountProperties isEqual:?])
    {
      goto LABEL_65;
    }
  }

  dirtyDataclassProperties = self->_dirtyDataclassProperties;
  if (dirtyDataclassProperties | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)dirtyDataclassProperties isEqual:?])
    {
      goto LABEL_65;
    }
  }

  v24 = *(equalCopy + 192);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_57;
  }

  if ((*(equalCopy + 192) & 1) == 0)
  {
    goto LABEL_65;
  }

  v24 = *(equalCopy + 188);
  if (!self->_warmingUp)
  {
LABEL_57:
    if ((v24 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_65:
    v28 = 0;
    goto LABEL_66;
  }

  if ((*(equalCopy + 188) & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_58:
  modificationID = self->_modificationID;
  if (modificationID | *(equalCopy + 15) && ![(NSString *)modificationID isEqual:?])
  {
    goto LABEL_65;
  }

  enabledEnumDataclasses = self->_enabledEnumDataclasses;
  if (enabledEnumDataclasses | *(equalCopy + 12))
  {
    if (![(NSMutableArray *)enabledEnumDataclasses isEqual:?])
    {
      goto LABEL_65;
    }
  }

  provisionedEnumDataclasses = self->_provisionedEnumDataclasses;
  if (provisionedEnumDataclasses | *(equalCopy + 21))
  {
    v28 = [(NSMutableArray *)provisionedEnumDataclasses isEqual:?];
  }

  else
  {
    v28 = 1;
  }

LABEL_66:

  return v28;
}

- (unint64_t)hash
{
  v32 = [(ACProtobufAccountType *)self->_accountType hash];
  v31 = [(ACProtobufAccountCredential *)self->_credential hash];
  v30 = [(NSString *)self->_identifier hash];
  v29 = [(NSString *)self->_accountDescription hash];
  v28 = [(NSString *)self->_username hash];
  v3 = [(NSMutableArray *)self->_properties hash];
  authenticated = self->_authenticated;
  v27 = v3;
  v4 = [(ACProtobufDate *)self->_lastCredentialRenewalRejectionDate hash];
  active = self->_active;
  v25 = v4;
  visible = self->_visible;
  supportsAuthentication = self->_supportsAuthentication;
  v23 = [(NSMutableArray *)self->_dataclassProperties hash];
  v21 = [(ACProtobufURL *)self->_objectID hash];
  v5 = [(ACProtobufAccount *)self->_parentAccount hash];
  v6 = [(NSMutableArray *)self->_enabledDataclasses hash];
  v7 = [(NSMutableArray *)self->_provisionedDataclasses hash];
  v8 = [(NSString *)self->_authenticationType hash];
  v9 = [(NSString *)self->_credentialType hash];
  v10 = [(ACProtobufDate *)self->_date hash];
  v11 = [(NSString *)self->_owningBundleID hash];
  v12 = [(NSMutableArray *)self->_dirtyProperties hash];
  v13 = [(NSMutableArray *)self->_dirtyAccountProperties hash];
  v14 = [(NSMutableArray *)self->_dirtyDataclassProperties hash];
  if (*&self->_has)
  {
    v15 = 2654435761 * self->_warmingUp;
  }

  else
  {
    v15 = 0;
  }

  v16 = v31 ^ v32 ^ v30 ^ v29 ^ v28 ^ v27 ^ (2654435761 * authenticated) ^ v25 ^ (2654435761 * active) ^ (2654435761 * visible) ^ (2654435761 * supportsAuthentication) ^ v23 ^ v21 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v17 = v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSString *)self->_modificationID hash];
  v18 = v17 ^ [(NSMutableArray *)self->_enabledEnumDataclasses hash];
  return v16 ^ v18 ^ [(NSMutableArray *)self->_provisionedEnumDataclasses hash];
}

- (void)mergeFrom:(id)from
{
  v107 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  accountType = self->_accountType;
  v6 = *(fromCopy + 2);
  if (accountType)
  {
    if (v6)
    {
      [(ACProtobufAccountType *)accountType mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ACProtobufAccount *)self setAccountType:?];
  }

  credential = self->_credential;
  v8 = *(fromCopy + 4);
  if (credential)
  {
    if (v8)
    {
      [(ACProtobufAccountCredential *)credential mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ACProtobufAccount *)self setCredential:?];
  }

  if (*(fromCopy + 13))
  {
    [(ACProtobufAccount *)self setIdentifier:?];
  }

  if (*(fromCopy + 1))
  {
    [(ACProtobufAccount *)self setAccountDescription:?];
  }

  if (*(fromCopy + 22))
  {
    [(ACProtobufAccount *)self setUsername:?];
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v9 = *(fromCopy + 19);
  v10 = [v9 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v95;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v95 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(ACProtobufAccount *)self addProperties:*(*(&v94 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v11);
  }

  self->_authenticated = *(fromCopy + 185);
  lastCredentialRenewalRejectionDate = self->_lastCredentialRenewalRejectionDate;
  v15 = *(fromCopy + 14);
  if (lastCredentialRenewalRejectionDate)
  {
    if (v15)
    {
      [(ACProtobufDate *)lastCredentialRenewalRejectionDate mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(ACProtobufAccount *)self setLastCredentialRenewalRejectionDate:?];
  }

  self->_active = *(fromCopy + 184);
  self->_visible = *(fromCopy + 187);
  self->_supportsAuthentication = *(fromCopy + 186);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v16 = *(fromCopy + 6);
  v17 = [v16 countByEnumeratingWithState:&v90 objects:v105 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v91;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v91 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ACProtobufAccount *)self addDataclassProperties:*(*(&v90 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v90 objects:v105 count:16];
    }

    while (v18);
  }

  objectID = self->_objectID;
  v22 = *(fromCopy + 16);
  if (objectID)
  {
    if (v22)
    {
      [(ACProtobufURL *)objectID mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(ACProtobufAccount *)self setObjectID:?];
  }

  parentAccount = self->_parentAccount;
  v24 = *(fromCopy + 18);
  if (parentAccount)
  {
    if (v24)
    {
      [(ACProtobufAccount *)parentAccount mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(ACProtobufAccount *)self setParentAccount:?];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v25 = *(fromCopy + 11);
  v26 = [v25 countByEnumeratingWithState:&v86 objects:v104 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v87;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v87 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(ACProtobufAccount *)self addEnabledDataclasses:*(*(&v86 + 1) + 8 * k)];
      }

      v27 = [v25 countByEnumeratingWithState:&v86 objects:v104 count:16];
    }

    while (v27);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v30 = *(fromCopy + 20);
  v31 = [v30 countByEnumeratingWithState:&v82 objects:v103 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v83;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v83 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(ACProtobufAccount *)self addProvisionedDataclasses:*(*(&v82 + 1) + 8 * m)];
      }

      v32 = [v30 countByEnumeratingWithState:&v82 objects:v103 count:16];
    }

    while (v32);
  }

  if (*(fromCopy + 3))
  {
    [(ACProtobufAccount *)self setAuthenticationType:?];
  }

  if (*(fromCopy + 5))
  {
    [(ACProtobufAccount *)self setCredentialType:?];
  }

  date = self->_date;
  v36 = *(fromCopy + 7);
  if (date)
  {
    if (v36)
    {
      [(ACProtobufDate *)date mergeFrom:?];
    }
  }

  else if (v36)
  {
    [(ACProtobufAccount *)self setDate:?];
  }

  if (*(fromCopy + 17))
  {
    [(ACProtobufAccount *)self setOwningBundleID:?];
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v37 = *(fromCopy + 10);
  v38 = [v37 countByEnumeratingWithState:&v78 objects:v102 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v79;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v79 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(ACProtobufAccount *)self addDirtyProperties:*(*(&v78 + 1) + 8 * n)];
      }

      v39 = [v37 countByEnumeratingWithState:&v78 objects:v102 count:16];
    }

    while (v39);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v42 = *(fromCopy + 8);
  v43 = [v42 countByEnumeratingWithState:&v74 objects:v101 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v75;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v75 != v45)
        {
          objc_enumerationMutation(v42);
        }

        [(ACProtobufAccount *)self addDirtyAccountProperties:*(*(&v74 + 1) + 8 * ii)];
      }

      v44 = [v42 countByEnumeratingWithState:&v74 objects:v101 count:16];
    }

    while (v44);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v47 = *(fromCopy + 9);
  v48 = [v47 countByEnumeratingWithState:&v70 objects:v100 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v71;
    do
    {
      for (jj = 0; jj != v49; ++jj)
      {
        if (*v71 != v50)
        {
          objc_enumerationMutation(v47);
        }

        [(ACProtobufAccount *)self addDirtyDataclassProperties:*(*(&v70 + 1) + 8 * jj)];
      }

      v49 = [v47 countByEnumeratingWithState:&v70 objects:v100 count:16];
    }

    while (v49);
  }

  if (*(fromCopy + 192))
  {
    self->_warmingUp = *(fromCopy + 188);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 15))
  {
    [(ACProtobufAccount *)self setModificationID:?];
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v52 = *(fromCopy + 12);
  v53 = [v52 countByEnumeratingWithState:&v66 objects:v99 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v67;
    do
    {
      for (kk = 0; kk != v54; ++kk)
      {
        if (*v67 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [(ACProtobufAccount *)self addEnabledEnumDataclasses:*(*(&v66 + 1) + 8 * kk)];
      }

      v54 = [v52 countByEnumeratingWithState:&v66 objects:v99 count:16];
    }

    while (v54);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v57 = *(fromCopy + 21);
  v58 = [v57 countByEnumeratingWithState:&v62 objects:v98 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v63;
    do
    {
      for (mm = 0; mm != v59; ++mm)
      {
        if (*v63 != v60)
        {
          objc_enumerationMutation(v57);
        }

        [(ACProtobufAccount *)self addProvisionedEnumDataclasses:*(*(&v62 + 1) + 8 * mm), v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v62 objects:v98 count:16];
    }

    while (v59);
  }
}

- (void)setPropertiesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(ACProtobufAccount *)self clearProperties];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ACProtobufAccount_Helpers__setPropertiesDictionary___block_invoke;
  v5[3] = &unk_1E7977500;
  v5[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v5];
}

void __54__ACProtobufAccount_Helpers__setPropertiesDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ACProtobufVariableKeyValuePair alloc] initWithObjectValue:v5 forKey:v6];

  [*(a1 + 32) addProperties:v7];
}

- (NSDictionary)propertiesDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ACProtobufAccount propertiesCount](self, "propertiesCount")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  properties = [(ACProtobufAccount *)self properties];
  v5 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(properties);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        value = [v9 value];
        object = [value object];
        v12 = [v9 key];
        [v3 setObject:object forKeyedSubscript:v12];
      }

      v6 = [properties countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)setDataclassPropertiesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(ACProtobufAccount *)self clearDataclassProperties];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ACProtobufAccount_Helpers__setDataclassPropertiesDictionary___block_invoke;
  v5[3] = &unk_1E7977500;
  v5[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v5];
}

void __63__ACProtobufAccount_Helpers__setDataclassPropertiesDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ACProtobufVariableKeyValuePair alloc] initWithObjectValue:v5 forKey:v6];

  [*(a1 + 32) addDataclassProperties:v7];
}

- (NSDictionary)dataclassPropertiesDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ACProtobufAccount dataclassPropertiesCount](self, "dataclassPropertiesCount")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataclassProperties = [(ACProtobufAccount *)self dataclassProperties];
  v5 = [dataclassProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(dataclassProperties);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        value = [v9 value];
        object = [value object];
        v12 = [v9 key];
        [v3 setObject:object forKeyedSubscript:v12];
      }

      v6 = [dataclassProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

@end