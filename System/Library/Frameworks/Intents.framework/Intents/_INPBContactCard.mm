@interface _INPBContactCard
- (BOOL)isEqual:(id)equal;
- (_INPBContactCard)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactRelations:(id)relations;
- (void)addDates:(id)dates;
- (void)addEmailAddresses:(id)addresses;
- (void)addInstantMessageAddresses:(id)addresses;
- (void)addPhoneNumbers:(id)numbers;
- (void)addPostalAddresses:(id)addresses;
- (void)addUrlAddresses:(id)addresses;
- (void)encodeWithCoder:(id)coder;
- (void)setContactIdentifier:(id)identifier;
- (void)setContactRelations:(id)relations;
- (void)setDates:(id)dates;
- (void)setDepartmentName:(id)name;
- (void)setEmailAddresses:(id)addresses;
- (void)setFirstName:(id)name;
- (void)setFullName:(id)name;
- (void)setInstantMessageAddresses:(id)addresses;
- (void)setJobTitle:(id)title;
- (void)setLastName:(id)name;
- (void)setMiddleName:(id)name;
- (void)setNamePrefix:(id)prefix;
- (void)setNameSuffix:(id)suffix;
- (void)setNickName:(id)name;
- (void)setOrganizationName:(id)name;
- (void)setPhoneNumbers:(id)numbers;
- (void)setPhoneticFirstName:(id)name;
- (void)setPhoneticLastName:(id)name;
- (void)setPhoneticMiddleName:(id)name;
- (void)setPhoneticNamePrefix:(id)prefix;
- (void)setPhoneticNameSuffix:(id)suffix;
- (void)setPhoneticNickName:(id)name;
- (void)setPostalAddresses:(id)addresses;
- (void)setUrlAddresses:(id)addresses;
- (void)writeTo:(id)to;
@end

@implementation _INPBContactCard

- (id)dictionaryRepresentation
{
  v131 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  birthday = [(_INPBContactCard *)self birthday];
  dictionaryRepresentation = [birthday dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"birthday"];

  if (self->_contactIdentifier)
  {
    contactIdentifier = [(_INPBContactCard *)self contactIdentifier];
    v7 = [contactIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"contactIdentifier"];
  }

  if ([(NSArray *)self->_contactRelations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v9 = self->_contactRelations;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v120 objects:v130 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v121;
      do
      {
        v13 = 0;
        do
        {
          if (*v121 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v120 + 1) + 8 * v13) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v120 objects:v130 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"contactRelations"];
  }

  if ([(NSArray *)self->_dates count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v16 = self->_dates;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v116 objects:v129 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v117;
      do
      {
        v20 = 0;
        do
        {
          if (*v117 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v116 + 1) + 8 * v20) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v116 objects:v129 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"dates"];
  }

  if (self->_departmentName)
  {
    departmentName = [(_INPBContactCard *)self departmentName];
    v23 = [departmentName copy];
    [dictionary setObject:v23 forKeyedSubscript:@"departmentName"];
  }

  if ([(NSArray *)self->_emailAddresses count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v25 = self->_emailAddresses;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v112 objects:v128 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v113;
      do
      {
        v29 = 0;
        do
        {
          if (*v113 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation4 = [*(*(&v112 + 1) + 8 * v29) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation4];

          ++v29;
        }

        while (v27 != v29);
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v112 objects:v128 count:16];
      }

      while (v27);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"emailAddresses"];
  }

  if (self->_firstName)
  {
    firstName = [(_INPBContactCard *)self firstName];
    v32 = [firstName copy];
    [dictionary setObject:v32 forKeyedSubscript:@"firstName"];
  }

  if (self->_fullName)
  {
    fullName = [(_INPBContactCard *)self fullName];
    v34 = [fullName copy];
    [dictionary setObject:v34 forKeyedSubscript:@"fullName"];
  }

  image = [(_INPBContactCard *)self image];
  dictionaryRepresentation5 = [image dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"image"];

  if ([(NSArray *)self->_instantMessageAddresses count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v38 = self->_instantMessageAddresses;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v108 objects:v127 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v109;
      do
      {
        v42 = 0;
        do
        {
          if (*v109 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation6 = [*(*(&v108 + 1) + 8 * v42) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation6];

          ++v42;
        }

        while (v40 != v42);
        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v108 objects:v127 count:16];
      }

      while (v40);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"instantMessageAddresses"];
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    v44 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBContactCard isMe](self, "isMe")}];
    [dictionary setObject:v44 forKeyedSubscript:@"isMe"];
  }

  if (self->_jobTitle)
  {
    jobTitle = [(_INPBContactCard *)self jobTitle];
    v46 = [jobTitle copy];
    [dictionary setObject:v46 forKeyedSubscript:@"jobTitle"];
  }

  if (self->_lastName)
  {
    lastName = [(_INPBContactCard *)self lastName];
    v48 = [lastName copy];
    [dictionary setObject:v48 forKeyedSubscript:@"lastName"];
  }

  if (self->_middleName)
  {
    middleName = [(_INPBContactCard *)self middleName];
    v50 = [middleName copy];
    [dictionary setObject:v50 forKeyedSubscript:@"middleName"];
  }

  if (self->_namePrefix)
  {
    namePrefix = [(_INPBContactCard *)self namePrefix];
    v52 = [namePrefix copy];
    [dictionary setObject:v52 forKeyedSubscript:@"namePrefix"];
  }

  if (self->_nameSuffix)
  {
    nameSuffix = [(_INPBContactCard *)self nameSuffix];
    v54 = [nameSuffix copy];
    [dictionary setObject:v54 forKeyedSubscript:@"nameSuffix"];
  }

  if (self->_nickName)
  {
    nickName = [(_INPBContactCard *)self nickName];
    v56 = [nickName copy];
    [dictionary setObject:v56 forKeyedSubscript:@"nickName"];
  }

  nonGregorianBirthday = [(_INPBContactCard *)self nonGregorianBirthday];
  dictionaryRepresentation7 = [nonGregorianBirthday dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"nonGregorianBirthday"];

  if (self->_organizationName)
  {
    organizationName = [(_INPBContactCard *)self organizationName];
    v60 = [organizationName copy];
    [dictionary setObject:v60 forKeyedSubscript:@"organizationName"];
  }

  if ([(NSArray *)self->_phoneNumbers count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v62 = self->_phoneNumbers;
    v63 = [(NSArray *)v62 countByEnumeratingWithState:&v104 objects:v126 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v105;
      do
      {
        v66 = 0;
        do
        {
          if (*v105 != v65)
          {
            objc_enumerationMutation(v62);
          }

          dictionaryRepresentation8 = [*(*(&v104 + 1) + 8 * v66) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation8];

          ++v66;
        }

        while (v64 != v66);
        v64 = [(NSArray *)v62 countByEnumeratingWithState:&v104 objects:v126 count:16];
      }

      while (v64);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"phoneNumbers"];
  }

  if (self->_phoneticFirstName)
  {
    phoneticFirstName = [(_INPBContactCard *)self phoneticFirstName];
    v69 = [phoneticFirstName copy];
    [dictionary setObject:v69 forKeyedSubscript:@"phoneticFirstName"];
  }

  if (self->_phoneticLastName)
  {
    phoneticLastName = [(_INPBContactCard *)self phoneticLastName];
    v71 = [phoneticLastName copy];
    [dictionary setObject:v71 forKeyedSubscript:@"phoneticLastName"];
  }

  if (self->_phoneticMiddleName)
  {
    phoneticMiddleName = [(_INPBContactCard *)self phoneticMiddleName];
    v73 = [phoneticMiddleName copy];
    [dictionary setObject:v73 forKeyedSubscript:@"phoneticMiddleName"];
  }

  if (self->_phoneticNamePrefix)
  {
    phoneticNamePrefix = [(_INPBContactCard *)self phoneticNamePrefix];
    v75 = [phoneticNamePrefix copy];
    [dictionary setObject:v75 forKeyedSubscript:@"phoneticNamePrefix"];
  }

  if (self->_phoneticNameSuffix)
  {
    phoneticNameSuffix = [(_INPBContactCard *)self phoneticNameSuffix];
    v77 = [phoneticNameSuffix copy];
    [dictionary setObject:v77 forKeyedSubscript:@"phoneticNameSuffix"];
  }

  if (self->_phoneticNickName)
  {
    phoneticNickName = [(_INPBContactCard *)self phoneticNickName];
    v79 = [phoneticNickName copy];
    [dictionary setObject:v79 forKeyedSubscript:@"phoneticNickName"];
  }

  if ([(NSArray *)self->_postalAddresses count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v81 = self->_postalAddresses;
    v82 = [(NSArray *)v81 countByEnumeratingWithState:&v100 objects:v125 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v101;
      do
      {
        v85 = 0;
        do
        {
          if (*v101 != v84)
          {
            objc_enumerationMutation(v81);
          }

          dictionaryRepresentation9 = [*(*(&v100 + 1) + 8 * v85) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation9];

          ++v85;
        }

        while (v83 != v85);
        v83 = [(NSArray *)v81 countByEnumeratingWithState:&v100 objects:v125 count:16];
      }

      while (v83);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"postalAddresses"];
  }

  if ([(NSArray *)self->_urlAddresses count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v88 = self->_urlAddresses;
    v89 = [(NSArray *)v88 countByEnumeratingWithState:&v96 objects:v124 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v97;
      do
      {
        v92 = 0;
        do
        {
          if (*v97 != v91)
          {
            objc_enumerationMutation(v88);
          }

          dictionaryRepresentation10 = [*(*(&v96 + 1) + 8 * v92) dictionaryRepresentation];
          [array7 addObject:dictionaryRepresentation10];

          ++v92;
        }

        while (v90 != v92);
        v90 = [(NSArray *)v88 countByEnumeratingWithState:&v96 objects:v124 count:16];
      }

      while (v90);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"urlAddresses"];
  }

  v94 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v31 = [(_INPBDateTimeRangeValue *)self->_birthday hash];
  v3 = [(NSString *)self->_contactIdentifier hash];
  v4 = [(NSArray *)self->_contactRelations hash];
  v5 = [(NSArray *)self->_dates hash];
  v6 = [(NSString *)self->_departmentName hash];
  v7 = [(NSArray *)self->_emailAddresses hash];
  v8 = [(NSString *)self->_firstName hash];
  v9 = [(NSString *)self->_fullName hash];
  v10 = [(_INPBImageValue *)self->_image hash];
  v11 = [(NSArray *)self->_instantMessageAddresses hash];
  if ([(_INPBContactCard *)self hasIsMe])
  {
    v12 = 2654435761 * self->_isMe;
  }

  else
  {
    v12 = 0;
  }

  v13 = v3 ^ v31 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  v14 = [(NSString *)self->_jobTitle hash];
  v15 = v14 ^ [(NSString *)self->_lastName hash];
  v16 = v15 ^ [(NSString *)self->_middleName hash];
  v17 = v16 ^ [(NSString *)self->_namePrefix hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_nameSuffix hash];
  v19 = [(NSString *)self->_nickName hash];
  v20 = v19 ^ [(_INPBDateTimeRangeValue *)self->_nonGregorianBirthday hash];
  v21 = v20 ^ [(NSString *)self->_organizationName hash];
  v22 = v21 ^ [(NSArray *)self->_phoneNumbers hash];
  v23 = v22 ^ [(NSString *)self->_phoneticFirstName hash];
  v24 = v18 ^ v23 ^ [(NSString *)self->_phoneticLastName hash];
  v25 = [(NSString *)self->_phoneticMiddleName hash];
  v26 = v25 ^ [(NSString *)self->_phoneticNamePrefix hash];
  v27 = v26 ^ [(NSString *)self->_phoneticNameSuffix hash];
  v28 = v27 ^ [(NSString *)self->_phoneticNickName hash];
  v29 = v28 ^ [(NSArray *)self->_postalAddresses hash];
  return v24 ^ v29 ^ [(NSArray *)self->_urlAddresses hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_141;
  }

  birthday = [(_INPBContactCard *)self birthday];
  birthday2 = [equalCopy birthday];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  birthday3 = [(_INPBContactCard *)self birthday];
  if (birthday3)
  {
    v8 = birthday3;
    birthday4 = [(_INPBContactCard *)self birthday];
    birthday5 = [equalCopy birthday];
    v11 = [birthday4 isEqual:birthday5];

    if (!v11)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self contactIdentifier];
  birthday2 = [equalCopy contactIdentifier];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  contactIdentifier = [(_INPBContactCard *)self contactIdentifier];
  if (contactIdentifier)
  {
    v13 = contactIdentifier;
    contactIdentifier2 = [(_INPBContactCard *)self contactIdentifier];
    contactIdentifier3 = [equalCopy contactIdentifier];
    v16 = [contactIdentifier2 isEqual:contactIdentifier3];

    if (!v16)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self contactRelations];
  birthday2 = [equalCopy contactRelations];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  contactRelations = [(_INPBContactCard *)self contactRelations];
  if (contactRelations)
  {
    v18 = contactRelations;
    contactRelations2 = [(_INPBContactCard *)self contactRelations];
    contactRelations3 = [equalCopy contactRelations];
    v21 = [contactRelations2 isEqual:contactRelations3];

    if (!v21)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self dates];
  birthday2 = [equalCopy dates];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  dates = [(_INPBContactCard *)self dates];
  if (dates)
  {
    v23 = dates;
    dates2 = [(_INPBContactCard *)self dates];
    dates3 = [equalCopy dates];
    v26 = [dates2 isEqual:dates3];

    if (!v26)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self departmentName];
  birthday2 = [equalCopy departmentName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  departmentName = [(_INPBContactCard *)self departmentName];
  if (departmentName)
  {
    v28 = departmentName;
    departmentName2 = [(_INPBContactCard *)self departmentName];
    departmentName3 = [equalCopy departmentName];
    v31 = [departmentName2 isEqual:departmentName3];

    if (!v31)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self emailAddresses];
  birthday2 = [equalCopy emailAddresses];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  emailAddresses = [(_INPBContactCard *)self emailAddresses];
  if (emailAddresses)
  {
    v33 = emailAddresses;
    emailAddresses2 = [(_INPBContactCard *)self emailAddresses];
    emailAddresses3 = [equalCopy emailAddresses];
    v36 = [emailAddresses2 isEqual:emailAddresses3];

    if (!v36)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self firstName];
  birthday2 = [equalCopy firstName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  firstName = [(_INPBContactCard *)self firstName];
  if (firstName)
  {
    v38 = firstName;
    firstName2 = [(_INPBContactCard *)self firstName];
    firstName3 = [equalCopy firstName];
    v41 = [firstName2 isEqual:firstName3];

    if (!v41)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self fullName];
  birthday2 = [equalCopy fullName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  fullName = [(_INPBContactCard *)self fullName];
  if (fullName)
  {
    v43 = fullName;
    fullName2 = [(_INPBContactCard *)self fullName];
    fullName3 = [equalCopy fullName];
    v46 = [fullName2 isEqual:fullName3];

    if (!v46)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self image];
  birthday2 = [equalCopy image];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  image = [(_INPBContactCard *)self image];
  if (image)
  {
    v48 = image;
    image2 = [(_INPBContactCard *)self image];
    image3 = [equalCopy image];
    v51 = [image2 isEqual:image3];

    if (!v51)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self instantMessageAddresses];
  birthday2 = [equalCopy instantMessageAddresses];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  instantMessageAddresses = [(_INPBContactCard *)self instantMessageAddresses];
  if (instantMessageAddresses)
  {
    v53 = instantMessageAddresses;
    instantMessageAddresses2 = [(_INPBContactCard *)self instantMessageAddresses];
    instantMessageAddresses3 = [equalCopy instantMessageAddresses];
    v56 = [instantMessageAddresses2 isEqual:instantMessageAddresses3];

    if (!v56)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  hasIsMe = [(_INPBContactCard *)self hasIsMe];
  if (hasIsMe != [equalCopy hasIsMe])
  {
    goto LABEL_141;
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    if ([equalCopy hasIsMe])
    {
      isMe = self->_isMe;
      if (isMe != [equalCopy isMe])
      {
        goto LABEL_141;
      }
    }
  }

  birthday = [(_INPBContactCard *)self jobTitle];
  birthday2 = [equalCopy jobTitle];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  jobTitle = [(_INPBContactCard *)self jobTitle];
  if (jobTitle)
  {
    v60 = jobTitle;
    jobTitle2 = [(_INPBContactCard *)self jobTitle];
    jobTitle3 = [equalCopy jobTitle];
    v63 = [jobTitle2 isEqual:jobTitle3];

    if (!v63)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self lastName];
  birthday2 = [equalCopy lastName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  lastName = [(_INPBContactCard *)self lastName];
  if (lastName)
  {
    v65 = lastName;
    lastName2 = [(_INPBContactCard *)self lastName];
    lastName3 = [equalCopy lastName];
    v68 = [lastName2 isEqual:lastName3];

    if (!v68)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self middleName];
  birthday2 = [equalCopy middleName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  middleName = [(_INPBContactCard *)self middleName];
  if (middleName)
  {
    v70 = middleName;
    middleName2 = [(_INPBContactCard *)self middleName];
    middleName3 = [equalCopy middleName];
    v73 = [middleName2 isEqual:middleName3];

    if (!v73)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self namePrefix];
  birthday2 = [equalCopy namePrefix];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  namePrefix = [(_INPBContactCard *)self namePrefix];
  if (namePrefix)
  {
    v75 = namePrefix;
    namePrefix2 = [(_INPBContactCard *)self namePrefix];
    namePrefix3 = [equalCopy namePrefix];
    v78 = [namePrefix2 isEqual:namePrefix3];

    if (!v78)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self nameSuffix];
  birthday2 = [equalCopy nameSuffix];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  nameSuffix = [(_INPBContactCard *)self nameSuffix];
  if (nameSuffix)
  {
    v80 = nameSuffix;
    nameSuffix2 = [(_INPBContactCard *)self nameSuffix];
    nameSuffix3 = [equalCopy nameSuffix];
    v83 = [nameSuffix2 isEqual:nameSuffix3];

    if (!v83)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self nickName];
  birthday2 = [equalCopy nickName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  nickName = [(_INPBContactCard *)self nickName];
  if (nickName)
  {
    v85 = nickName;
    nickName2 = [(_INPBContactCard *)self nickName];
    nickName3 = [equalCopy nickName];
    v88 = [nickName2 isEqual:nickName3];

    if (!v88)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self nonGregorianBirthday];
  birthday2 = [equalCopy nonGregorianBirthday];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  nonGregorianBirthday = [(_INPBContactCard *)self nonGregorianBirthday];
  if (nonGregorianBirthday)
  {
    v90 = nonGregorianBirthday;
    nonGregorianBirthday2 = [(_INPBContactCard *)self nonGregorianBirthday];
    nonGregorianBirthday3 = [equalCopy nonGregorianBirthday];
    v93 = [nonGregorianBirthday2 isEqual:nonGregorianBirthday3];

    if (!v93)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self organizationName];
  birthday2 = [equalCopy organizationName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  organizationName = [(_INPBContactCard *)self organizationName];
  if (organizationName)
  {
    v95 = organizationName;
    organizationName2 = [(_INPBContactCard *)self organizationName];
    organizationName3 = [equalCopy organizationName];
    v98 = [organizationName2 isEqual:organizationName3];

    if (!v98)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneNumbers];
  birthday2 = [equalCopy phoneNumbers];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneNumbers = [(_INPBContactCard *)self phoneNumbers];
  if (phoneNumbers)
  {
    v100 = phoneNumbers;
    phoneNumbers2 = [(_INPBContactCard *)self phoneNumbers];
    phoneNumbers3 = [equalCopy phoneNumbers];
    v103 = [phoneNumbers2 isEqual:phoneNumbers3];

    if (!v103)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticFirstName];
  birthday2 = [equalCopy phoneticFirstName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticFirstName = [(_INPBContactCard *)self phoneticFirstName];
  if (phoneticFirstName)
  {
    v105 = phoneticFirstName;
    phoneticFirstName2 = [(_INPBContactCard *)self phoneticFirstName];
    phoneticFirstName3 = [equalCopy phoneticFirstName];
    v108 = [phoneticFirstName2 isEqual:phoneticFirstName3];

    if (!v108)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticLastName];
  birthday2 = [equalCopy phoneticLastName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticLastName = [(_INPBContactCard *)self phoneticLastName];
  if (phoneticLastName)
  {
    v110 = phoneticLastName;
    phoneticLastName2 = [(_INPBContactCard *)self phoneticLastName];
    phoneticLastName3 = [equalCopy phoneticLastName];
    v113 = [phoneticLastName2 isEqual:phoneticLastName3];

    if (!v113)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticMiddleName];
  birthday2 = [equalCopy phoneticMiddleName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticMiddleName = [(_INPBContactCard *)self phoneticMiddleName];
  if (phoneticMiddleName)
  {
    v115 = phoneticMiddleName;
    phoneticMiddleName2 = [(_INPBContactCard *)self phoneticMiddleName];
    phoneticMiddleName3 = [equalCopy phoneticMiddleName];
    v118 = [phoneticMiddleName2 isEqual:phoneticMiddleName3];

    if (!v118)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticNamePrefix];
  birthday2 = [equalCopy phoneticNamePrefix];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticNamePrefix = [(_INPBContactCard *)self phoneticNamePrefix];
  if (phoneticNamePrefix)
  {
    v120 = phoneticNamePrefix;
    phoneticNamePrefix2 = [(_INPBContactCard *)self phoneticNamePrefix];
    phoneticNamePrefix3 = [equalCopy phoneticNamePrefix];
    v123 = [phoneticNamePrefix2 isEqual:phoneticNamePrefix3];

    if (!v123)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticNameSuffix];
  birthday2 = [equalCopy phoneticNameSuffix];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticNameSuffix = [(_INPBContactCard *)self phoneticNameSuffix];
  if (phoneticNameSuffix)
  {
    v125 = phoneticNameSuffix;
    phoneticNameSuffix2 = [(_INPBContactCard *)self phoneticNameSuffix];
    phoneticNameSuffix3 = [equalCopy phoneticNameSuffix];
    v128 = [phoneticNameSuffix2 isEqual:phoneticNameSuffix3];

    if (!v128)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self phoneticNickName];
  birthday2 = [equalCopy phoneticNickName];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  phoneticNickName = [(_INPBContactCard *)self phoneticNickName];
  if (phoneticNickName)
  {
    v130 = phoneticNickName;
    phoneticNickName2 = [(_INPBContactCard *)self phoneticNickName];
    phoneticNickName3 = [equalCopy phoneticNickName];
    v133 = [phoneticNickName2 isEqual:phoneticNickName3];

    if (!v133)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self postalAddresses];
  birthday2 = [equalCopy postalAddresses];
  if ((birthday != 0) == (birthday2 == 0))
  {
    goto LABEL_140;
  }

  postalAddresses = [(_INPBContactCard *)self postalAddresses];
  if (postalAddresses)
  {
    v135 = postalAddresses;
    postalAddresses2 = [(_INPBContactCard *)self postalAddresses];
    postalAddresses3 = [equalCopy postalAddresses];
    v138 = [postalAddresses2 isEqual:postalAddresses3];

    if (!v138)
    {
      goto LABEL_141;
    }
  }

  else
  {
  }

  birthday = [(_INPBContactCard *)self urlAddresses];
  birthday2 = [equalCopy urlAddresses];
  if ((birthday != 0) != (birthday2 == 0))
  {
    urlAddresses = [(_INPBContactCard *)self urlAddresses];
    if (!urlAddresses)
    {

LABEL_144:
      v144 = 1;
      goto LABEL_142;
    }

    v140 = urlAddresses;
    urlAddresses2 = [(_INPBContactCard *)self urlAddresses];
    urlAddresses3 = [equalCopy urlAddresses];
    v143 = [urlAddresses2 isEqual:urlAddresses3];

    if (v143)
    {
      goto LABEL_144;
    }
  }

  else
  {
LABEL_140:
  }

LABEL_141:
  v144 = 0;
LABEL_142:

  return v144;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBContactCard allocWithZone:](_INPBContactCard init];
  v6 = [(_INPBDateTimeRangeValue *)self->_birthday copyWithZone:zone];
  [(_INPBContactCard *)v5 setBirthday:v6];

  v7 = [(NSString *)self->_contactIdentifier copyWithZone:zone];
  [(_INPBContactCard *)v5 setContactIdentifier:v7];

  v8 = [(NSArray *)self->_contactRelations copyWithZone:zone];
  [(_INPBContactCard *)v5 setContactRelations:v8];

  v9 = [(NSArray *)self->_dates copyWithZone:zone];
  [(_INPBContactCard *)v5 setDates:v9];

  v10 = [(NSString *)self->_departmentName copyWithZone:zone];
  [(_INPBContactCard *)v5 setDepartmentName:v10];

  v11 = [(NSArray *)self->_emailAddresses copyWithZone:zone];
  [(_INPBContactCard *)v5 setEmailAddresses:v11];

  v12 = [(NSString *)self->_firstName copyWithZone:zone];
  [(_INPBContactCard *)v5 setFirstName:v12];

  v13 = [(NSString *)self->_fullName copyWithZone:zone];
  [(_INPBContactCard *)v5 setFullName:v13];

  v14 = [(_INPBImageValue *)self->_image copyWithZone:zone];
  [(_INPBContactCard *)v5 setImage:v14];

  v15 = [(NSArray *)self->_instantMessageAddresses copyWithZone:zone];
  [(_INPBContactCard *)v5 setInstantMessageAddresses:v15];

  if ([(_INPBContactCard *)self hasIsMe])
  {
    [(_INPBContactCard *)v5 setIsMe:[(_INPBContactCard *)self isMe]];
  }

  v16 = [(NSString *)self->_jobTitle copyWithZone:zone];
  [(_INPBContactCard *)v5 setJobTitle:v16];

  v17 = [(NSString *)self->_lastName copyWithZone:zone];
  [(_INPBContactCard *)v5 setLastName:v17];

  v18 = [(NSString *)self->_middleName copyWithZone:zone];
  [(_INPBContactCard *)v5 setMiddleName:v18];

  v19 = [(NSString *)self->_namePrefix copyWithZone:zone];
  [(_INPBContactCard *)v5 setNamePrefix:v19];

  v20 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  [(_INPBContactCard *)v5 setNameSuffix:v20];

  v21 = [(NSString *)self->_nickName copyWithZone:zone];
  [(_INPBContactCard *)v5 setNickName:v21];

  v22 = [(_INPBDateTimeRangeValue *)self->_nonGregorianBirthday copyWithZone:zone];
  [(_INPBContactCard *)v5 setNonGregorianBirthday:v22];

  v23 = [(NSString *)self->_organizationName copyWithZone:zone];
  [(_INPBContactCard *)v5 setOrganizationName:v23];

  v24 = [(NSArray *)self->_phoneNumbers copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneNumbers:v24];

  v25 = [(NSString *)self->_phoneticFirstName copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticFirstName:v25];

  v26 = [(NSString *)self->_phoneticLastName copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticLastName:v26];

  v27 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticMiddleName:v27];

  v28 = [(NSString *)self->_phoneticNamePrefix copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticNamePrefix:v28];

  v29 = [(NSString *)self->_phoneticNameSuffix copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticNameSuffix:v29];

  v30 = [(NSString *)self->_phoneticNickName copyWithZone:zone];
  [(_INPBContactCard *)v5 setPhoneticNickName:v30];

  v31 = [(NSArray *)self->_postalAddresses copyWithZone:zone];
  [(_INPBContactCard *)v5 setPostalAddresses:v31];

  v32 = [(NSArray *)self->_urlAddresses copyWithZone:zone];
  [(_INPBContactCard *)v5 setUrlAddresses:v32];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBContactCard *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBContactCard)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBContactCard *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v98 = *MEMORY[0x1E69E9840];
  toCopy = to;
  birthday = [(_INPBContactCard *)self birthday];

  if (birthday)
  {
    birthday2 = [(_INPBContactCard *)self birthday];
    PBDataWriterWriteSubmessage();
  }

  contactIdentifier = [(_INPBContactCard *)self contactIdentifier];

  if (contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v8 = self->_contactRelations;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v88;
    do
    {
      v12 = 0;
      do
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v87 objects:v97 count:16];
    }

    while (v10);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v13 = self->_dates;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v84;
    do
    {
      v17 = 0;
      do
      {
        if (*v84 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v15);
  }

  departmentName = [(_INPBContactCard *)self departmentName];

  if (departmentName)
  {
    PBDataWriterWriteStringField();
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v19 = self->_emailAddresses;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
    do
    {
      v23 = 0;
      do
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v21);
  }

  firstName = [(_INPBContactCard *)self firstName];

  if (firstName)
  {
    PBDataWriterWriteStringField();
  }

  fullName = [(_INPBContactCard *)self fullName];

  if (fullName)
  {
    PBDataWriterWriteStringField();
  }

  image = [(_INPBContactCard *)self image];

  if (image)
  {
    image2 = [(_INPBContactCard *)self image];
    PBDataWriterWriteSubmessage();
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v28 = self->_instantMessageAddresses;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v75 objects:v94 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v76;
    do
    {
      v32 = 0;
      do
      {
        if (*v76 != v31)
        {
          objc_enumerationMutation(v28);
        }

        PBDataWriterWriteSubmessage();
        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v75 objects:v94 count:16];
    }

    while (v30);
  }

  if ([(_INPBContactCard *)self hasIsMe])
  {
    PBDataWriterWriteBOOLField();
  }

  jobTitle = [(_INPBContactCard *)self jobTitle];

  if (jobTitle)
  {
    PBDataWriterWriteStringField();
  }

  lastName = [(_INPBContactCard *)self lastName];

  if (lastName)
  {
    PBDataWriterWriteStringField();
  }

  middleName = [(_INPBContactCard *)self middleName];

  if (middleName)
  {
    PBDataWriterWriteStringField();
  }

  namePrefix = [(_INPBContactCard *)self namePrefix];

  if (namePrefix)
  {
    PBDataWriterWriteStringField();
  }

  nameSuffix = [(_INPBContactCard *)self nameSuffix];

  if (nameSuffix)
  {
    PBDataWriterWriteStringField();
  }

  nickName = [(_INPBContactCard *)self nickName];

  if (nickName)
  {
    PBDataWriterWriteStringField();
  }

  nonGregorianBirthday = [(_INPBContactCard *)self nonGregorianBirthday];

  if (nonGregorianBirthday)
  {
    nonGregorianBirthday2 = [(_INPBContactCard *)self nonGregorianBirthday];
    PBDataWriterWriteSubmessage();
  }

  organizationName = [(_INPBContactCard *)self organizationName];

  if (organizationName)
  {
    PBDataWriterWriteStringField();
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v42 = self->_phoneNumbers;
  v43 = [(NSArray *)v42 countByEnumeratingWithState:&v71 objects:v93 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v72;
    do
    {
      v46 = 0;
      do
      {
        if (*v72 != v45)
        {
          objc_enumerationMutation(v42);
        }

        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSArray *)v42 countByEnumeratingWithState:&v71 objects:v93 count:16];
    }

    while (v44);
  }

  phoneticFirstName = [(_INPBContactCard *)self phoneticFirstName];

  if (phoneticFirstName)
  {
    PBDataWriterWriteStringField();
  }

  phoneticLastName = [(_INPBContactCard *)self phoneticLastName];

  if (phoneticLastName)
  {
    PBDataWriterWriteStringField();
  }

  phoneticMiddleName = [(_INPBContactCard *)self phoneticMiddleName];

  if (phoneticMiddleName)
  {
    PBDataWriterWriteStringField();
  }

  phoneticNamePrefix = [(_INPBContactCard *)self phoneticNamePrefix];

  if (phoneticNamePrefix)
  {
    PBDataWriterWriteStringField();
  }

  phoneticNameSuffix = [(_INPBContactCard *)self phoneticNameSuffix];

  if (phoneticNameSuffix)
  {
    PBDataWriterWriteStringField();
  }

  phoneticNickName = [(_INPBContactCard *)self phoneticNickName];

  if (phoneticNickName)
  {
    PBDataWriterWriteStringField();
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v53 = self->_postalAddresses;
  v54 = [(NSArray *)v53 countByEnumeratingWithState:&v67 objects:v92 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v68;
    do
    {
      v57 = 0;
      do
      {
        if (*v68 != v56)
        {
          objc_enumerationMutation(v53);
        }

        PBDataWriterWriteSubmessage();
        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSArray *)v53 countByEnumeratingWithState:&v67 objects:v92 count:16];
    }

    while (v55);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v58 = self->_urlAddresses;
  v59 = [(NSArray *)v58 countByEnumeratingWithState:&v63 objects:v91 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v64;
    do
    {
      v62 = 0;
      do
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(v58);
        }

        PBDataWriterWriteSubmessage();
        ++v62;
      }

      while (v60 != v62);
      v60 = [(NSArray *)v58 countByEnumeratingWithState:&v63 objects:v91 count:16];
    }

    while (v60);
  }
}

- (void)addUrlAddresses:(id)addresses
{
  addressesCopy = addresses;
  urlAddresses = self->_urlAddresses;
  v8 = addressesCopy;
  if (!urlAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_urlAddresses;
    self->_urlAddresses = array;

    addressesCopy = v8;
    urlAddresses = self->_urlAddresses;
  }

  [(NSArray *)urlAddresses addObject:addressesCopy];
}

- (void)setUrlAddresses:(id)addresses
{
  v4 = [addresses mutableCopy];
  urlAddresses = self->_urlAddresses;
  self->_urlAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, urlAddresses);
}

- (void)addPostalAddresses:(id)addresses
{
  addressesCopy = addresses;
  postalAddresses = self->_postalAddresses;
  v8 = addressesCopy;
  if (!postalAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_postalAddresses;
    self->_postalAddresses = array;

    addressesCopy = v8;
    postalAddresses = self->_postalAddresses;
  }

  [(NSArray *)postalAddresses addObject:addressesCopy];
}

- (void)setPostalAddresses:(id)addresses
{
  v4 = [addresses mutableCopy];
  postalAddresses = self->_postalAddresses;
  self->_postalAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, postalAddresses);
}

- (void)setPhoneticNickName:(id)name
{
  v4 = [name copy];
  phoneticNickName = self->_phoneticNickName;
  self->_phoneticNickName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNickName);
}

- (void)setPhoneticNameSuffix:(id)suffix
{
  v4 = [suffix copy];
  phoneticNameSuffix = self->_phoneticNameSuffix;
  self->_phoneticNameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNameSuffix);
}

- (void)setPhoneticNamePrefix:(id)prefix
{
  v4 = [prefix copy];
  phoneticNamePrefix = self->_phoneticNamePrefix;
  self->_phoneticNamePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticNamePrefix);
}

- (void)setPhoneticMiddleName:(id)name
{
  v4 = [name copy];
  phoneticMiddleName = self->_phoneticMiddleName;
  self->_phoneticMiddleName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticMiddleName);
}

- (void)setPhoneticLastName:(id)name
{
  v4 = [name copy];
  phoneticLastName = self->_phoneticLastName;
  self->_phoneticLastName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticLastName);
}

- (void)setPhoneticFirstName:(id)name
{
  v4 = [name copy];
  phoneticFirstName = self->_phoneticFirstName;
  self->_phoneticFirstName = v4;

  MEMORY[0x1EEE66BB8](v4, phoneticFirstName);
}

- (void)addPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  phoneNumbers = self->_phoneNumbers;
  v8 = numbersCopy;
  if (!phoneNumbers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = array;

    numbersCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSArray *)phoneNumbers addObject:numbersCopy];
}

- (void)setPhoneNumbers:(id)numbers
{
  v4 = [numbers mutableCopy];
  phoneNumbers = self->_phoneNumbers;
  self->_phoneNumbers = v4;

  MEMORY[0x1EEE66BB8](v4, phoneNumbers);
}

- (void)setOrganizationName:(id)name
{
  v4 = [name copy];
  organizationName = self->_organizationName;
  self->_organizationName = v4;

  MEMORY[0x1EEE66BB8](v4, organizationName);
}

- (void)setNickName:(id)name
{
  v4 = [name copy];
  nickName = self->_nickName;
  self->_nickName = v4;

  MEMORY[0x1EEE66BB8](v4, nickName);
}

- (void)setNameSuffix:(id)suffix
{
  v4 = [suffix copy];
  nameSuffix = self->_nameSuffix;
  self->_nameSuffix = v4;

  MEMORY[0x1EEE66BB8](v4, nameSuffix);
}

- (void)setNamePrefix:(id)prefix
{
  v4 = [prefix copy];
  namePrefix = self->_namePrefix;
  self->_namePrefix = v4;

  MEMORY[0x1EEE66BB8](v4, namePrefix);
}

- (void)setMiddleName:(id)name
{
  v4 = [name copy];
  middleName = self->_middleName;
  self->_middleName = v4;

  MEMORY[0x1EEE66BB8](v4, middleName);
}

- (void)setLastName:(id)name
{
  v4 = [name copy];
  lastName = self->_lastName;
  self->_lastName = v4;

  MEMORY[0x1EEE66BB8](v4, lastName);
}

- (void)setJobTitle:(id)title
{
  v4 = [title copy];
  jobTitle = self->_jobTitle;
  self->_jobTitle = v4;

  MEMORY[0x1EEE66BB8](v4, jobTitle);
}

- (void)addInstantMessageAddresses:(id)addresses
{
  addressesCopy = addresses;
  instantMessageAddresses = self->_instantMessageAddresses;
  v8 = addressesCopy;
  if (!instantMessageAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_instantMessageAddresses;
    self->_instantMessageAddresses = array;

    addressesCopy = v8;
    instantMessageAddresses = self->_instantMessageAddresses;
  }

  [(NSArray *)instantMessageAddresses addObject:addressesCopy];
}

- (void)setInstantMessageAddresses:(id)addresses
{
  v4 = [addresses mutableCopy];
  instantMessageAddresses = self->_instantMessageAddresses;
  self->_instantMessageAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, instantMessageAddresses);
}

- (void)setFullName:(id)name
{
  v4 = [name copy];
  fullName = self->_fullName;
  self->_fullName = v4;

  MEMORY[0x1EEE66BB8](v4, fullName);
}

- (void)setFirstName:(id)name
{
  v4 = [name copy];
  firstName = self->_firstName;
  self->_firstName = v4;

  MEMORY[0x1EEE66BB8](v4, firstName);
}

- (void)addEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  emailAddresses = self->_emailAddresses;
  v8 = addressesCopy;
  if (!emailAddresses)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_emailAddresses;
    self->_emailAddresses = array;

    addressesCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSArray *)emailAddresses addObject:addressesCopy];
}

- (void)setEmailAddresses:(id)addresses
{
  v4 = [addresses mutableCopy];
  emailAddresses = self->_emailAddresses;
  self->_emailAddresses = v4;

  MEMORY[0x1EEE66BB8](v4, emailAddresses);
}

- (void)setDepartmentName:(id)name
{
  v4 = [name copy];
  departmentName = self->_departmentName;
  self->_departmentName = v4;

  MEMORY[0x1EEE66BB8](v4, departmentName);
}

- (void)addDates:(id)dates
{
  datesCopy = dates;
  dates = self->_dates;
  v8 = datesCopy;
  if (!dates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dates;
    self->_dates = array;

    datesCopy = v8;
    dates = self->_dates;
  }

  [(NSArray *)dates addObject:datesCopy];
}

- (void)setDates:(id)dates
{
  v4 = [dates mutableCopy];
  dates = self->_dates;
  self->_dates = v4;

  MEMORY[0x1EEE66BB8](v4, dates);
}

- (void)addContactRelations:(id)relations
{
  relationsCopy = relations;
  contactRelations = self->_contactRelations;
  v8 = relationsCopy;
  if (!contactRelations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contactRelations;
    self->_contactRelations = array;

    relationsCopy = v8;
    contactRelations = self->_contactRelations;
  }

  [(NSArray *)contactRelations addObject:relationsCopy];
}

- (void)setContactRelations:(id)relations
{
  v4 = [relations mutableCopy];
  contactRelations = self->_contactRelations;
  self->_contactRelations = v4;

  MEMORY[0x1EEE66BB8](v4, contactRelations);
}

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->_contactIdentifier;
  self->_contactIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, contactIdentifier);
}

@end