@interface PPContact
+ (BOOL)identifier:(id)identifier startsWithPrefix:(id)prefix;
+ (PPContact)contactWithIdentifier:(id)identifier source:(unsigned __int8)source namePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)self0 localizedFullName:(id)self1 organizationName:(id)self2 jobTitle:(id)self3 birthday:(id)self4 nonGregorianBirthday:(id)self5 phoneNumbers:(id)self6 emailAddresses:(id)self7 socialProfiles:(id)self8 postalAddresses:(id)self9;
+ (id)contactsContactIdentifierWithIdentifier:(id)identifier error:(id *)error;
+ (id)sourceIdentifierWithSource:(unsigned __int8)source identifier:(id)identifier;
+ (int64_t)foundInAppsRecordIdentifierNumberWithIdentifier:(id)identifier error:(id *)error;
+ (unsigned)sourceFromSourceIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContact:(id)contact;
- (PPContact)initWithCoder:(id)coder;
- (PPContact)initWithContactsContact:(id)contact;
- (PPContact)initWithFoundInAppsContact:(id)contact;
- (PPContact)initWithIdentifier:(id)identifier source:(unsigned __int8)source namePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)self0 localizedFullName:(id)self1 organizationName:(id)self2 jobTitle:(id)self3 birthday:(id)self4 nonGregorianBirthday:(id)self5 phoneNumbers:(id)self6 emailAddresses:(id)self7 socialProfiles:(id)self8 postalAddresses:(id)self9;
- (id)contactsContactIdentifierWithError:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)foundInAppsRecordIdentifierNumberWithError:(id *)error;
- (unint64_t)hash;
- (void)_generateLocalizedFullName;
- (void)encodeWithCoder:(id)coder;
- (void)setEmailAddressForTesting:(id)testing;
@end

@implementation PPContact

- (BOOL)isEqualToContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    goto LABEL_61;
  }

  v5 = self->_identifier;
  v6 = v5;
  if (v5 == contactCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  if (self->_source != *(contactCopy + 8))
  {
LABEL_61:
    v50 = 0;
    goto LABEL_62;
  }

  v8 = self->_namePrefix;
  v9 = v8;
  if (v8 == contactCopy[3])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v11 = self->_givenName;
  v12 = v11;
  if (v11 == contactCopy[4])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v14 = self->_middleName;
  v15 = v14;
  if (v14 == contactCopy[5])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v17 = self->_familyName;
  v18 = v17;
  if (v17 == contactCopy[6])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v20 = self->_nameSuffix;
  v21 = v20;
  if (v20 == contactCopy[7])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v23 = self->_nickname;
  v24 = v23;
  if (v23 == contactCopy[8])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v26 = self->_localizedFullName;
  v27 = v26;
  if (v26 == contactCopy[9])
  {
  }

  else
  {
    v28 = [(NSString *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v29 = self->_organizationName;
  v30 = v29;
  if (v29 == contactCopy[10])
  {
  }

  else
  {
    v31 = [(NSString *)v29 isEqual:?];

    if ((v31 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v32 = self->_jobTitle;
  v33 = v32;
  if (v32 == contactCopy[11])
  {
  }

  else
  {
    v34 = [(NSString *)v32 isEqual:?];

    if ((v34 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v35 = self->_birthday;
  v36 = v35;
  if (v35 == contactCopy[12])
  {
  }

  else
  {
    v37 = [(NSDateComponents *)v35 isEqual:?];

    if ((v37 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v38 = self->_nonGregorianBirthday;
  v39 = v38;
  if (v38 == contactCopy[13])
  {
  }

  else
  {
    v40 = [(NSDateComponents *)v38 isEqual:?];

    if ((v40 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v41 = self->_phoneNumbers;
  v42 = v41;
  if (v41 == contactCopy[14])
  {
  }

  else
  {
    v43 = [(NSArray *)v41 isEqual:?];

    if ((v43 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v44 = self->_emailAddresses;
  v45 = v44;
  if (v44 == contactCopy[15])
  {
  }

  else
  {
    v46 = [(NSArray *)v44 isEqual:?];

    if ((v46 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v47 = self->_socialProfiles;
  v48 = v47;
  if (v47 == contactCopy[16])
  {
  }

  else
  {
    v49 = [(NSArray *)v47 isEqual:?];

    if ((v49 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v52 = self->_postalAddresses;
  v53 = v52;
  if (v52 == contactCopy[17])
  {
    v50 = 1;
  }

  else
  {
    v50 = [(NSArray *)v52 isEqual:?];
  }

LABEL_62:
  return v50;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContact *)self isEqualToContact:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = objc_opt_class();
  v24 = [(NSString *)self->_identifier copyWithZone:zone];
  source = self->_source;
  v20 = [(NSString *)self->_namePrefix copyWithZone:zone];
  v18 = [(NSString *)self->_givenName copyWithZone:zone];
  v17 = [(NSString *)self->_middleName copyWithZone:zone];
  v16 = [(NSString *)self->_familyName copyWithZone:zone];
  v23 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v14 = [(NSString *)self->_nickname copyWithZone:zone];
  v13 = [(NSString *)self->_localizedFullName copyWithZone:zone];
  v12 = [(NSString *)self->_organizationName copyWithZone:zone];
  v15 = [(NSString *)self->_jobTitle copyWithZone:zone];
  v11 = [(NSDateComponents *)self->_birthday copyWithZone:zone];
  v5 = [(NSDateComponents *)self->_nonGregorianBirthday copyWithZone:zone];
  v6 = [(NSArray *)self->_phoneNumbers copyWithZone:zone];
  v7 = [(NSArray *)self->_emailAddresses copyWithZone:zone];
  v8 = [(NSArray *)self->_socialProfiles copyWithZone:zone];
  v9 = [(NSArray *)self->_postalAddresses copyWithZone:zone];
  v22 = [v19 contactWithIdentifier:v24 source:source namePrefix:v20 givenName:v18 middleName:v17 familyName:v16 nameSuffix:v23 nickname:v14 localizedFullName:v13 organizationName:v12 jobTitle:v15 birthday:v11 nonGregorianBirthday:v5 phoneNumbers:v6 emailAddresses:v7 socialProfiles:v8 postalAddresses:v9];

  return v22;
}

- (unint64_t)hash
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_identifier hash];
  v4 = self->_source - v3 + 32 * v3;
  v5 = [(NSString *)self->_namePrefix hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_givenName hash]- v5 + 32 * v5;
  v7 = [(NSString *)self->_middleName hash]- v6 + 32 * v6;
  v8 = [(NSString *)self->_familyName hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_nameSuffix hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_nickname hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_localizedFullName hash]- v10 + 32 * v10;
  v12 = [(NSString *)self->_organizationName hash]- v11 + 32 * v11;
  v13 = [(NSString *)self->_jobTitle hash]- v12 + 32 * v12;
  v14 = [(NSDateComponents *)self->_birthday hash]- v13 + 32 * v13;
  v15 = [(NSDateComponents *)self->_nonGregorianBirthday hash]- v14 + 32 * v14;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v16 = self->_phoneNumbers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v50;
    do
    {
      v20 = 0;
      do
      {
        if (*v50 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v15 = [*(*(&v49 + 1) + 8 * v20++) hash] - v15 + 32 * v15;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v18);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = self->_emailAddresses;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      v25 = 0;
      do
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v15 = [*(*(&v45 + 1) + 8 * v25++) hash] - v15 + 32 * v15;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v23);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v26 = self->_socialProfiles;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v42;
    do
    {
      v30 = 0;
      do
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v15 = [*(*(&v41 + 1) + 8 * v30++) hash] - v15 + 32 * v15;
      }

      while (v28 != v30);
      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v28);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = self->_postalAddresses;
  v32 = [(NSArray *)v31 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v38;
    do
    {
      v35 = 0;
      do
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v15 = [*(*(&v37 + 1) + 8 * v35++) hash] - v15 + 32 * v15;
      }

      while (v33 != v35);
      v33 = [(NSArray *)v31 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v33);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"idt"];
  [coderCopy encodeInt32:self->_source forKey:@"src"];
  [coderCopy encodeObject:self->_namePrefix forKey:@"npr"];
  [coderCopy encodeObject:self->_givenName forKey:@"gnm"];
  [coderCopy encodeObject:self->_middleName forKey:@"mnm"];
  [coderCopy encodeObject:self->_familyName forKey:@"fnm"];
  [coderCopy encodeObject:self->_nameSuffix forKey:@"nsf"];
  [coderCopy encodeObject:self->_nickname forKey:@"nck"];
  [coderCopy encodeObject:self->_localizedFullName forKey:@"lfn"];
  [coderCopy encodeObject:self->_organizationName forKey:@"org"];
  [coderCopy encodeObject:self->_jobTitle forKey:@"job"];
  [coderCopy encodeObject:self->_birthday forKey:@"bdy"];
  [coderCopy encodeObject:self->_nonGregorianBirthday forKey:@"ngb"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phn"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"eml"];
  [coderCopy encodeObject:self->_socialProfiles forKey:@"soc"];
  [coderCopy encodeObject:self->_postalAddresses forKey:@"pos"];
}

- (PPContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v10 = [coderCopy decodeObjectOfClass:v5 forKey:@"idt"];
  if (v10)
  {
    v25 = [coderCopy decodeInt32ForKey:@"src"];
    v24 = [coderCopy decodeObjectOfClass:v5 forKey:@"npr"];
    v23 = [coderCopy decodeObjectOfClass:v5 forKey:@"gnm"];
    v22 = [coderCopy decodeObjectOfClass:v5 forKey:@"mnm"];
    v21 = [coderCopy decodeObjectOfClass:v5 forKey:@"fnm"];
    v28 = [coderCopy decodeObjectOfClass:v5 forKey:@"nsf"];
    v27 = [coderCopy decodeObjectOfClass:v5 forKey:@"nck"];
    v20 = [coderCopy decodeObjectOfClass:v5 forKey:@"lfn"];
    v26 = [coderCopy decodeObjectOfClass:v5 forKey:@"org"];
    v19 = [coderCopy decodeObjectOfClass:v5 forKey:@"job"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bdy"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ngb"];
    v16 = [coderCopy decodeObjectOfClasses:v9 forKey:@"phn"];
    v11 = [coderCopy decodeObjectOfClasses:v9 forKey:@"eml"];
    v12 = [coderCopy decodeObjectOfClasses:v9 forKey:@"soc"];
    v13 = [coderCopy decodeObjectOfClasses:v9 forKey:@"pos"];
    self = [(PPContact *)self initWithIdentifier:v10 source:v25 namePrefix:v24 givenName:v23 middleName:v22 familyName:v21 nameSuffix:v28 nickname:v27 localizedFullName:v20 organizationName:v26 jobTitle:v19 birthday:v18 nonGregorianBirthday:v17 phoneNumbers:v16 emailAddresses:v11 socialProfiles:v12 postalAddresses:v13];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setEmailAddressForTesting:(id)testing
{
  v8[1] = *MEMORY[0x1E69E9840];
  testingCopy = testing;
  v5 = [[PPLabeledValue alloc] initWithLabel:@"email" value:testingCopy];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v6;
}

- (void)_generateLocalizedFullName
{
  v3 = objc_opt_new();
  v6 = v3;
  if (self->_namePrefix)
  {
    [v3 setNamePrefix:?];
    v3 = v6;
  }

  if (self->_givenName)
  {
    [v6 setGivenName:?];
    v3 = v6;
  }

  if (self->_middleName)
  {
    [v6 setMiddleName:?];
    v3 = v6;
  }

  if (self->_familyName)
  {
    [v6 setFamilyName:?];
    v3 = v6;
  }

  if (self->_nameSuffix)
  {
    [v6 setNameSuffix:?];
    v3 = v6;
  }

  if (self->_nickname)
  {
    [v6 setNickname:?];
    v3 = v6;
  }

  [v3 setContactType:0];
  v4 = [MEMORY[0x1E695CD80] stringFromContact:v6 style:0];
  localizedFullName = self->_localizedFullName;
  self->_localizedFullName = v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPContact %@: '%@' src:%d>", self->_identifier, self->_localizedFullName, self->_source];

  return v2;
}

- (id)contactsContactIdentifierWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_source == 1)
  {
    v5 = [PPContact contactsContactIdentifierWithIdentifier:self->_identifier error:error];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempt to get CN identifier for non-CN contact: src:%d id:%@", self->_source, self->_identifier];
    v7 = pp_contacts_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      source = self->_source;
      identifier = self->_identifier;
      *buf = 67109378;
      v18 = source;
      v19 = 2112;
      v20 = identifier;
      _os_log_error_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_ERROR, "attempt to get CN identifier for non-CN contact: src:%d id:%@", buf, 0x12u);
    }

    if (error)
    {
      v8 = MEMORY[0x1E696ABC0];
      v15[0] = @"PPErrorInfoKey";
      v15[1] = @"identifier";
      v9 = self->_identifier;
      v16[0] = v6;
      v16[1] = v9;
      v15[2] = @"source";
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_source];
      v16[2] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      *error = [v8 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v11];
    }

    v5 = 0;
  }

  return v5;
}

- (int64_t)foundInAppsRecordIdentifierNumberWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_source == 2)
  {
    identifier = self->_identifier;

    return [PPContact foundInAppsRecordIdentifierNumberWithIdentifier:identifier error:error];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"attempt to get FIA identifier for non-FIA contact: src:%d id:%@", self->_source, self->_identifier];
    v8 = pp_contacts_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      source = self->_source;
      v14 = self->_identifier;
      *buf = 67109378;
      v18 = source;
      v19 = 2112;
      v20 = v14;
      _os_log_error_impl(&dword_1A7FD3000, v8, OS_LOG_TYPE_ERROR, "attempt to get FIA identifier for non-FIA contact: src:%d id:%@", buf, 0x12u);
    }

    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v15[0] = @"PPErrorInfoKey";
      v15[1] = @"identifier";
      v10 = self->_identifier;
      v16[0] = v7;
      v16[1] = v10;
      v15[2] = @"source";
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_source];
      v16[2] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
      *error = [v9 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v12];
    }

    return 0;
  }
}

- (PPContact)initWithFoundInAppsContact:(id)contact
{
  v83 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPContact.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  selfCopy = self;
  v6 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  phones = [contactCopy phones];
  v8 = [phones countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v77;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(phones);
        }

        v12 = *(*(&v76 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        phoneNumber = [v12 phoneNumber];
        v15 = [phoneNumber length];

        if (v15)
        {
          label = [v12 label];
          phoneNumber2 = [v12 phoneNumber];
          v18 = [PPLabeledValue labeledValueWithLabel:label value:phoneNumber2];
          [v6 addObject:v18];
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [phones countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v9);
  }

  v67 = v6;

  v19 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v21 = [emailAddresses countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v73;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v73 != v23)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v25 = *(*(&v72 + 1) + 8 * j);
        v26 = objc_autoreleasePoolPush();
        emailAddress = [v25 emailAddress];
        v28 = [emailAddress length];

        if (v28)
        {
          label2 = [v25 label];
          emailAddress2 = [v25 emailAddress];
          v31 = [PPLabeledValue labeledValueWithLabel:label2 value:emailAddress2];
          [v19 addObject:v31];
        }

        objc_autoreleasePoolPop(v26);
      }

      v22 = [emailAddresses countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v22);
  }

  v32 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v64 = contactCopy;
  postalAddresses = [contactCopy postalAddresses];
  v34 = [postalAddresses countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v69;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v69 != v36)
        {
          objc_enumerationMutation(postalAddresses);
        }

        v38 = *(*(&v68 + 1) + 8 * k);
        v39 = objc_autoreleasePoolPush();
        v40 = [[PPPostalAddress alloc] initWithFoundInAppsPostalAddress:v38];
        label3 = [v38 label];
        v42 = [PPLabeledValue labeledValueWithLabel:label3 value:v40];
        [v32 addObject:v42];

        objc_autoreleasePoolPop(v39);
      }

      v35 = [postalAddresses countByEnumeratingWithState:&v68 objects:v80 count:16];
    }

    while (v35);
  }

  v43 = objc_opt_class();
  v44 = objc_alloc(MEMORY[0x1E696AEC0]);
  recordId = [v64 recordId];
  v60 = [v44 initWithFormat:@"%llu", objc_msgSend(recordId, "numericValue")];
  v66 = [v43 sourceIdentifierWithSource:2 identifier:v60];
  name = [v64 name];
  prefix = [name prefix];
  name2 = [v64 name];
  firstName = [name2 firstName];
  name3 = [v64 name];
  middleName = [name3 middleName];
  name4 = [v64 name];
  lastName = [name4 lastName];
  name5 = [v64 name];
  suffix = [name5 suffix];
  name6 = [v64 name];
  fullName = [name6 fullName];
  birthday = [v64 birthday];
  dateComponents = [birthday dateComponents];
  v63 = [(PPContact *)selfCopy initWithIdentifier:v66 source:2 namePrefix:prefix givenName:firstName middleName:middleName familyName:lastName nameSuffix:suffix nickname:0 localizedFullName:fullName organizationName:0 jobTitle:0 birthday:dateComponents nonGregorianBirthday:0 phoneNumbers:v67 emailAddresses:v19 socialProfiles:0 postalAddresses:v32];

  return v63;
}

- (PPContact)initWithContactsContact:(id)contact
{
  v114 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPContact.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v93 = objc_opt_new();
  selfCopy = self;
  v88 = contactCopy;
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C330]])
  {
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    phoneNumbers = [contactCopy phoneNumbers];
    v7 = [phoneNumbers countByEnumeratingWithState:&v106 objects:v113 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v107;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v107 != v9)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v11 = *(*(&v106 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          value = [v11 value];
          stringValue = [value stringValue];
          v15 = [stringValue length];

          if (v15)
          {
            label = [v11 label];
            value2 = [v11 value];
            stringValue2 = [value2 stringValue];
            v19 = [PPLabeledValue labeledValueWithLabel:label value:stringValue2];
            [v93 addObject:v19];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [phoneNumbers countByEnumeratingWithState:&v106 objects:v113 count:16];
      }

      while (v8);
    }

    self = selfCopy;
    contactCopy = v88;
  }

  v92 = objc_opt_new();
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C208]])
  {
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v21 = [emailAddresses countByEnumeratingWithState:&v102 objects:v112 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v103;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v103 != v23)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v25 = *(*(&v102 + 1) + 8 * j);
          v26 = objc_autoreleasePoolPush();
          value3 = [v25 value];
          v28 = [value3 length];

          if (v28)
          {
            label2 = [v25 label];
            value4 = [v25 value];
            v31 = [PPLabeledValue labeledValueWithLabel:label2 value:value4];
            [v92 addObject:v31];
          }

          objc_autoreleasePoolPop(v26);
        }

        v22 = [emailAddresses countByEnumeratingWithState:&v102 objects:v112 count:16];
      }

      while (v22);
    }

    contactCopy = v88;
  }

  v91 = objc_opt_new();
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C3D0]])
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    socialProfiles = [contactCopy socialProfiles];
    v33 = [socialProfiles countByEnumeratingWithState:&v98 objects:v111 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v99;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v99 != v35)
          {
            objc_enumerationMutation(socialProfiles);
          }

          v37 = *(*(&v98 + 1) + 8 * k);
          v38 = objc_autoreleasePoolPush();
          value5 = [v37 value];
          username = [value5 username];
          v41 = [username length];

          if (v41)
          {
            value6 = [v37 value];
            service = [value6 service];
            value7 = [v37 value];
            username2 = [value7 username];
            v46 = [PPLabeledValue labeledValueWithLabel:service value:username2];
            [v91 addObject:v46];
          }

          objc_autoreleasePoolPop(v38);
        }

        v34 = [socialProfiles countByEnumeratingWithState:&v98 objects:v111 count:16];
      }

      while (v34);
    }

    self = selfCopy;
    contactCopy = v88;
  }

  v90 = objc_opt_new();
  if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C360]])
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    postalAddresses = [contactCopy postalAddresses];
    v48 = [postalAddresses countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v95;
      do
      {
        for (m = 0; m != v49; ++m)
        {
          if (*v95 != v50)
          {
            objc_enumerationMutation(postalAddresses);
          }

          v52 = *(*(&v94 + 1) + 8 * m);
          v53 = objc_autoreleasePoolPush();
          value8 = [v52 value];

          if (value8)
          {
            v55 = [PPPostalAddress alloc];
            value9 = [v52 value];
            v57 = [(PPPostalAddress *)v55 initWithContactsPostalAddress:value9];

            label3 = [v52 label];
            v59 = [PPLabeledValue labeledValueWithLabel:label3 value:v57];
            [v90 addObject:v59];
          }

          objc_autoreleasePoolPop(v53);
        }

        v49 = [postalAddresses countByEnumeratingWithState:&v94 objects:v110 count:16];
      }

      while (v49);
    }

    self = selfCopy;
    contactCopy = v88;
  }

  v60 = objc_opt_class();
  identifier = [contactCopy identifier];
  v62 = [v60 sourceIdentifierWithSource:1 identifier:identifier];
  v63 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C300]];
  if (v63)
  {
    namePrefix = [contactCopy namePrefix];
  }

  else
  {
    namePrefix = 0;
  }

  v65 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C240]];
  if (v65)
  {
    givenName = [contactCopy givenName];
  }

  else
  {
    givenName = 0;
  }

  v79 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C2F0]];
  if (v79)
  {
    middleName = [contactCopy middleName];
  }

  else
  {
    middleName = 0;
  }

  v78 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C230]];
  if (v78)
  {
    familyName = [contactCopy familyName];
  }

  else
  {
    familyName = 0;
  }

  v77 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C308]];
  if (v77)
  {
    nameSuffix = [contactCopy nameSuffix];
  }

  else
  {
    nameSuffix = 0;
  }

  v76 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C310]];
  if (v76)
  {
    nickname = [contactCopy nickname];
  }

  else
  {
    nickname = 0;
  }

  v89 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
  v75 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C328]];
  if (v75)
  {
    organizationName = [contactCopy organizationName];
  }

  else
  {
    organizationName = 0;
  }

  v66 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C2C8]];
  if (v66)
  {
    jobTitle = [contactCopy jobTitle];
  }

  else
  {
    jobTitle = 0;
  }

  v67 = [contactCopy isKeyAvailable:*MEMORY[0x1E695C1D0]];
  if (v67)
  {
    birthday = [contactCopy birthday];
  }

  else
  {
    birthday = 0;
  }

  if (([contactCopy isKeyAvailable:*MEMORY[0x1E695C318]] & 1) == 0)
  {
    v71 = [(PPContact *)self initWithIdentifier:v62 source:1 namePrefix:namePrefix givenName:givenName middleName:middleName familyName:familyName nameSuffix:nameSuffix nickname:nickname localizedFullName:v89 organizationName:organizationName jobTitle:jobTitle birthday:birthday nonGregorianBirthday:0 phoneNumbers:v93 emailAddresses:v92 socialProfiles:v91 postalAddresses:v90];
    if (!v67)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  [contactCopy nonGregorianBirthday];
  v74 = identifier;
  v70 = v69 = namePrefix;
  v71 = [(PPContact *)self initWithIdentifier:v62 source:1 namePrefix:v69 givenName:givenName middleName:middleName familyName:familyName nameSuffix:nameSuffix nickname:nickname localizedFullName:v89 organizationName:organizationName jobTitle:jobTitle birthday:birthday nonGregorianBirthday:v70 phoneNumbers:v93 emailAddresses:v92 socialProfiles:v91 postalAddresses:v90];

  namePrefix = v69;
  identifier = v74;
  if (v67)
  {
LABEL_78:
  }

LABEL_79:
  if (v66)
  {
  }

  if (v75)
  {
  }

  if (v76)
  {
  }

  if (v77)
  {
  }

  if (v78)
  {
  }

  if (!v79)
  {
    if (!v65)
    {
      goto LABEL_91;
    }

LABEL_95:

    if (!v63)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (v65)
  {
    goto LABEL_95;
  }

LABEL_91:
  if (v63)
  {
LABEL_92:
  }

LABEL_93:

  return v71;
}

- (PPContact)initWithIdentifier:(id)identifier source:(unsigned __int8)source namePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)self0 localizedFullName:(id)self1 organizationName:(id)self2 jobTitle:(id)self3 birthday:(id)self4 nonGregorianBirthday:(id)self5 phoneNumbers:(id)self6 emailAddresses:(id)self7 socialProfiles:(id)self8 postalAddresses:(id)self9
{
  identifierCopy = identifier;
  prefixCopy = prefix;
  prefixCopy2 = prefix;
  nameCopy = name;
  middleNameCopy = middleName;
  middleNameCopy2 = middleName;
  selfCopy = self;
  v47 = middleNameCopy2;
  familyNameCopy = familyName;
  suffixCopy = suffix;
  nicknameCopy = nickname;
  fullNameCopy = fullName;
  organizationNameCopy = organizationName;
  titleCopy = title;
  birthdayCopy = birthday;
  gregorianBirthdayCopy = gregorianBirthday;
  numbersCopy = numbers;
  addressesCopy = addresses;
  profilesCopy = profiles;
  postalAddressesCopy = postalAddresses;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PPContact.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v51.receiver = selfCopy;
  v51.super_class = PPContact;
  v31 = [(PPContact *)&v51 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_identifier, identifier);
    v32->_source = source;
    objc_storeStrong(&v32->_namePrefix, prefixCopy);
    objc_storeStrong(&v32->_givenName, name);
    objc_storeStrong(&v32->_middleName, middleNameCopy);
    objc_storeStrong(&v32->_familyName, familyName);
    objc_storeStrong(&v32->_nameSuffix, suffix);
    objc_storeStrong(&v32->_nickname, nickname);
    objc_storeStrong(&v32->_organizationName, organizationName);
    objc_storeStrong(&v32->_jobTitle, title);
    objc_storeStrong(&v32->_birthday, birthday);
    objc_storeStrong(&v32->_nonGregorianBirthday, gregorianBirthday);
    objc_storeStrong(&v32->_phoneNumbers, numbers);
    objc_storeStrong(&v32->_emailAddresses, addresses);
    objc_storeStrong(&v32->_socialProfiles, profiles);
    objc_storeStrong(&v32->_postalAddresses, postalAddresses);
    objc_storeStrong(&v32->_localizedFullName, fullName);
    if (!v32->_localizedFullName)
    {
      [(PPContact *)v32 _generateLocalizedFullName];
    }
  }

  return v32;
}

+ (PPContact)contactWithIdentifier:(id)identifier source:(unsigned __int8)source namePrefix:(id)prefix givenName:(id)name middleName:(id)middleName familyName:(id)familyName nameSuffix:(id)suffix nickname:(id)self0 localizedFullName:(id)self1 organizationName:(id)self2 jobTitle:(id)self3 birthday:(id)self4 nonGregorianBirthday:(id)self5 phoneNumbers:(id)self6 emailAddresses:(id)self7 socialProfiles:(id)self8 postalAddresses:(id)self9
{
  sourceCopy = source;
  postalAddressesCopy = postalAddresses;
  profilesCopy = profiles;
  addressesCopy = addresses;
  numbersCopy = numbers;
  gregorianBirthdayCopy = gregorianBirthday;
  birthdayCopy = birthday;
  titleCopy = title;
  organizationNameCopy = organizationName;
  fullNameCopy = fullName;
  nicknameCopy = nickname;
  suffixCopy = suffix;
  familyNameCopy = familyName;
  middleNameCopy = middleName;
  nameCopy = name;
  prefixCopy = prefix;
  identifierCopy = identifier;
  v38 = [[self alloc] initWithIdentifier:identifierCopy source:sourceCopy namePrefix:prefixCopy givenName:nameCopy middleName:middleNameCopy familyName:familyNameCopy nameSuffix:suffixCopy nickname:nicknameCopy localizedFullName:fullNameCopy organizationName:organizationNameCopy jobTitle:titleCopy birthday:birthdayCopy nonGregorianBirthday:gregorianBirthdayCopy phoneNumbers:numbersCopy emailAddresses:addressesCopy socialProfiles:profilesCopy postalAddresses:postalAddressesCopy];

  return v38;
}

+ (BOOL)identifier:(id)identifier startsWithPrefix:(id)prefix
{
  identifierCopy = identifier;
  prefixCopy = prefix;
  v7 = objc_autoreleasePoolPush();
  v8 = [prefixCopy stringByAppendingString:@":"];
  objc_autoreleasePoolPop(v7);
  v9 = [v8 length];
  v10 = [identifierCopy length];
  if (v10 <= [v8 length])
  {
    v13 = 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [identifierCopy substringWithRange:{0, v9}];
    objc_autoreleasePoolPop(v11);
    v13 = [v12 isEqualToString:v8];
  }

  return v13;
}

+ (unsigned)sourceFromSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy containsString:@":"])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [identifierCopy componentsSeparatedByString:@":"];
    firstObject = [v5 firstObject];

    objc_autoreleasePoolPop(v4);
    if ([firstObject isEqualToString:@"CN"])
    {
      v7 = 1;
    }

    else if ([firstObject isEqualToString:@"FIA"])
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sourceIdentifierWithSource:(unsigned __int8)source identifier:(id)identifier
{
  sourceCopy = source;
  identifierCopy = identifier;
  switch(sourceCopy)
  {
    case 0:
      v8 = @"UNK";
      goto LABEL_7;
    case 2:
      v8 = @"FIA";
      goto LABEL_7;
    case 1:
      v8 = @"CN";
LABEL_7:
      if ([self identifier:identifierCopy startsWithPrefix:v8])
      {
        identifierCopy = identifierCopy;
      }

      else
      {
        identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@%@", v8, @":", identifierCopy];
      }

      v4 = identifierCopy;
      break;
  }

  return v4;
}

+ (id)contactsContactIdentifierWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if ([self identifier:identifierCopy startsWithPrefix:@"CN"])
  {
    v6 = [@"CN" length];
    v7 = [@":" length] + v6;
    v8 = [identifierCopy length] - v7;
    v9 = objc_autoreleasePoolPush();
    v10 = [identifierCopy substringWithRange:{v7, v8}];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = identifierCopy;
  }

  return v10;
}

+ (int64_t)foundInAppsRecordIdentifierNumberWithIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [self identifier:identifierCopy startsWithPrefix:@"FIA"];
  v8 = identifierCopy;
  if (v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [@"FIA" length];
    v11 = [@":" length] + v10;
    v8 = [identifierCopy substringWithRange:{v11, objc_msgSend(identifierCopy, "length") - v11}];

    objc_autoreleasePoolPop(v9);
  }

  v12 = objc_opt_new();
  v13 = [v12 numberFromString:v8];
  v14 = v13;
  if (v13)
  {
    longLongValue = [v13 longLongValue];
  }

  else
  {
    identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Number formatter failed to get FIA identifier from id: %@", identifierCopy];
    v17 = pp_contacts_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = identifierCopy;
      _os_log_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_INFO, "Number formatter failed to get FIA identifier from id: %@", buf, 0xCu);
    }

    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v21[0] = @"PPErrorInfoKey";
      v21[1] = @"identifier";
      v22[0] = identifierCopy;
      v22[1] = identifierCopy;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      *error = [v18 errorWithDomain:@"PPErrorDomain" code:2 userInfo:v19];
    }

    longLongValue = -1;
  }

  return longLongValue;
}

@end