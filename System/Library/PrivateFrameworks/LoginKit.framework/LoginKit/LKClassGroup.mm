@interface LKClassGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKClassGroup:(id)group;
- (LKClassGroup)initWithClassGroupDictionary:(id)dictionary classesDictionaryByClassID:(id)d;
- (LKClassGroup)initWithCoder:(id)coder;
- (LKClassGroup)initWithGroupName:(id)name classes:(id)classes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LKClassGroup

- (LKClassGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = LKClassGroup;
  v5 = [(LKClassGroup *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"classGroupName"];
    classGroupName = v5->_classGroupName;
    v5->_classGroupName = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"classes"];
    classes = v5->_classes;
    v5->_classes = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  classGroupName = self->_classGroupName;
  coderCopy = coder;
  [coderCopy encodeObject:classGroupName forKey:@"classGroupName"];
  [coderCopy encodeObject:self->_classes forKey:@"classes"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClassGroup *)self isEqualToLKClassGroup:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClassGroup:(id)group
{
  groupCopy = group;
  classGroupName = [(LKClassGroup *)self classGroupName];
  classGroupName2 = [groupCopy classGroupName];
  v7 = [classGroupName isEqualToString:classGroupName2];

  if (v7)
  {
    classes = [(LKClassGroup *)self classes];
    classes2 = [groupCopy classes];
    v10 = [classes isEqualToArray:classes2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (LKClassGroup)initWithGroupName:(id)name classes:(id)classes
{
  nameCopy = name;
  classesCopy = classes;
  v12.receiver = self;
  v12.super_class = LKClassGroup;
  v9 = [(LKClassGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classGroupName, name);
    objc_storeStrong(&v10->_classes, classes);
  }

  return v10;
}

- (LKClassGroup)initWithClassGroupDictionary:(id)dictionary classesDictionaryByClassID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  LKRegisterLoginKitLogging(dCopy, v8);
  v31.receiver = self;
  v31.super_class = LKClassGroup;
  v9 = [(LKClassGroup *)&v31 init];
  if (v9)
  {
    v10 = [dictionaryCopy objectForKey:@"Name"];
    classGroupName = v9->_classGroupName;
    v25 = v9;
    v9->_classGroupName = v10;

    v12 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = dictionaryCopy;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"GroupBeaconIDs"];
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14;
    v16 = *v28;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [dCopy objectForKey:{v18, v25}];
        if (v19)
        {
          v20 = [dCopy objectForKey:v18];
          [(NSArray *)v12 addObject:v20];
        }

        else
        {
          v21 = LKLogParsing;
          if (!os_log_type_enabled(LKLogParsing, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          v20 = v21;
          stringValue = [v18 stringValue];
          *buf = 138412290;
          v33 = stringValue;
          _os_log_impl(&dword_25618F000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring the classID %@ because there is no class with that id.", buf, 0xCu);
        }

LABEL_12:
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (!v15)
      {
LABEL_14:

        v9 = v25;
        classes = v25->_classes;
        v25->_classes = v12;

        dictionaryCopy = v26;
        break;
      }
    }
  }

  return v9;
}

@end