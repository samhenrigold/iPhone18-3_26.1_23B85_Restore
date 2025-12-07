@interface GKInternalRepresentation
+ (id)codedPropertyKeys;
+ (id)internalRepresentation;
+ (id)secureCodedJsonTypes;
- (GKInternalRepresentation)initWithCoder:(id)coder;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)mergePropertiesFrom:(id)from;
@end

@implementation GKInternalRepresentation

+ (id)internalRepresentation
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)secureCodedJsonTypes
{
  if (secureCodedJsonTypes_onceToken != -1)
  {
    +[GKInternalRepresentation secureCodedJsonTypes];
  }

  v3 = secureCodedJsonTypes_result;

  return v3;
}

void __48__GKInternalRepresentation_secureCodedJsonTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:5];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9}];
  v5 = secureCodedJsonTypes_result;
  secureCodedJsonTypes_result = v4;
}

- (GKInternalRepresentation)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = GKInternalRepresentation;
  v14 = [(GKInternalRepresentation *)&v20 init];
  if (v14)
  {
    secureCodedPropertyKeys = [objc_opt_class() secureCodedPropertyKeys];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [secureCodedPropertyKeys allKeys];
    v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [secureCodedPropertyKeys objectForKey:{v10, v14}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [coderCopy decodeObjectOfClasses:v11 forKey:v10];
        }

        else
        {
          [coderCopy decodeObjectOfClass:v11 forKey:v10];
        }
        v12 = ;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_14;
          }

          [(GKInternalRepresentation *)v14 setValue:v12 forKey:v10];
        }

LABEL_14:
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (!v7)
      {
LABEL_16:

        break;
      }
    }
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  codedPropertyKeys = [objc_opt_class() codedPropertyKeys];
  v6 = [codedPropertyKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(codedPropertyKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(GKInternalRepresentation *)self valueForKey:v10];
        if (v11)
        {
          [coderCopy encodeObject:v11 forKey:v10];
        }
      }

      v7 = [codedPropertyKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    codedPropertyKeys = [objc_opt_class() codedPropertyKeys];
    v6 = [codedPropertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = *v14;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(codedPropertyKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(GKInternalRepresentation *)self valueForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v11)
          {
            continue;
          }

          [v4 setValue:v11 forKey:v10];
        }
      }

      v7 = [codedPropertyKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (!v7)
      {
LABEL_13:

        return v4;
      }
    }
  }

  return v4;
}

+ (id)codedPropertyKeys
{
  secureCodedPropertyKeys = [self secureCodedPropertyKeys];
  allKeys = [secureCodedPropertyKeys allKeys];

  return allKeys;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(children);
  string = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v65 = v4;
  v54 = v4;
  selfCopy = self;
  [string appendFormat:@"%@<%@ %p> {\n", v54, v7, self];

  descriptionSubstitutionMap = [(GKInternalRepresentation *)self descriptionSubstitutionMap];
  array = [MEMORY[0x277CBEB18] array];
  codedPropertyKeys = [objc_opt_class() codedPropertyKeys];
  v10 = [codedPropertyKeys sortedArrayUsingComparator:&__block_literal_global_11];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v74 objects:v80 count:16];
  v56 = v11;
  if (v12)
  {
    v13 = v12;
    v14 = *v75;
    v58 = *v75;
    v55 = selfCopy;
    do
    {
      v15 = 0;
      v61 = v13;
      do
      {
        if (*v75 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v74 + 1) + 8 * v15);
        v17 = [(GKInternalRepresentation *)selfCopy valueForKey:v16];
        if (v17)
        {
          v18 = v17;
          v19 = [descriptionSubstitutionMap objectForKeyedSubscript:v16];
          objc_opt_class();
          v62 = v15;
          if (objc_opt_isKindOfClass())
          {
            v59 = v19;
            v20 = v19;
            [v20 count];
            if ([v20 count] == 1)
            {
              [v20 objectAtIndexedSubscript:0];
              v22 = v21 = v18;
              v23 = [v21 valueForKeyPath:v22];

              v24 = [v23 _gkDescriptionWithChildren:children + 1];
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v26 = [v24 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

              v27 = [v20 objectAtIndexedSubscript:0];
              [string appendFormat:@"%@    %@.%@ : %@", v65, v16, v27, v26];

              v18 = v23;
              v13 = v61;
              v19 = v59;
            }

            else
            {
              [string appendFormat:@"    %@%@ : <%@:%p> {\n", v65, v16, objc_opt_class(), v18];
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              v20 = v20;
              v31 = [v20 countByEnumeratingWithState:&v70 objects:v79 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v71;
                obj = v20;
                do
                {
                  for (i = 0; i != v32; ++i)
                  {
                    v35 = string;
                    if (*v71 != v33)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v36 = *(*(&v70 + 1) + 8 * i);
                    [v18 valueForKeyPath:v36];
                    v38 = v37 = v18;
                    v39 = [v38 _gkDescriptionWithChildren:children + 2];
                    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                    v41 = [v39 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

                    string = v35;
                    [v35 appendFormat:@"%@        %@ : %@", v65, v36, v41];

                    v18 = v37;
                  }

                  v20 = obj;
                  v32 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
                }

                while (v32);
              }

              [string appendFormat:@"    %@}\n", v65];
              selfCopy = v55;
              v11 = v56;
              v13 = v61;
              v14 = v58;
              v19 = v59;
            }
          }

          else
          {
            if (v19)
            {
              v28 = [v18 valueForKeyPath:v19];

              v29 = [v28 _gkDescriptionWithChildren:children + 1];
              whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v20 = [v29 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

              [string appendFormat:@"%@    %@.%@ : %@", v65, v16, v19, v20];
              v18 = v28;
            }

            else
            {
              v42 = [v18 _gkDescriptionWithChildren:children + 1];
              whitespaceCharacterSet4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v20 = [v42 stringByTrimmingCharactersInSet:whitespaceCharacterSet4];

              [string appendFormat:@"%@    %@ : %@", v65, v16, v20];
            }

            v14 = v58;
            v13 = v61;
          }

          v15 = v62;
        }

        else
        {
          [array addObject:v16];
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v13);
  }

  v44 = array;
  if ([array count])
  {
    [string appendFormat:@"%@    ", v65];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v45 = array;
    v46 = [v45 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = 0;
      v49 = *v67;
      do
      {
        v50 = 0;
        v51 = v48;
        do
        {
          if (*v67 != v49)
          {
            objc_enumerationMutation(v45);
          }

          if (v51 <= 0)
          {
            v52 = @"%@";
          }

          else
          {
            v52 = @", %@";
          }

          [string appendFormat:v52, *(*(&v66 + 1) + 8 * v50)];
          ++v51;
          ++v50;
        }

        while (v47 != v50);
        v48 += v47;
        v47 = [v45 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v47);
    }

    [string appendString:@" : (null)\n"];
    v11 = v56;
    v44 = array;
  }

  [string appendFormat:@"%@}\n", v65];

  return string;
}

- (void)mergePropertiesFrom:(id)from
{
  v23 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = [v5 stringWithFormat:@"%@ is not a %@", v6, objc_opt_class()];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKInternalRepresentation.m"];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [v5 stringWithFormat:@"%@ ([self isKindOfClass:[other class]])\n[%s (%s:%d)]", v7, "-[GKInternalRepresentation mergePropertiesFrom:]", objc_msgSend(lastPathComponent, "UTF8String"), 191];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
  }

  codedPropertyKeys = [objc_opt_class() codedPropertyKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [codedPropertyKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(codedPropertyKeys);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [fromCopy valueForKey:v16];
        if (v17)
        {
          [(GKInternalRepresentation *)self setValue:v17 forKey:v16];
        }
      }

      v13 = [codedPropertyKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

@end