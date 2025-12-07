@interface POXSComplexTypeDefinition
+ (id)_descriptionForValue:(id)value prefix:(id)prefix;
- (BOOL)flattenMultiValueElementWithName:(id)name;
- (NSArray)attributes;
- (NSArray)elements;
- (NSArray)namespaces;
- (POXSComplexTypeDefinition)init;
- (id)_attributeForName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)maxCountForElementName:(id)name;
- (unint64_t)minCountForElementName:(id)name;
- (void)_setAttribute:(id)attribute forName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes;
- (void)addAttributeWithName:(id)name type:(Class)type isSpecifiedKey:(id)key;
- (void)addAttributeWithName:(id)name type:(Class)type namespaceURI:(id)i;
- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type isSpecifiedKey:(id)key;
- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type maxOccurs:(unint64_t)occurs minOccurs:(unint64_t)minOccurs flattenMultiValue:(BOOL)value;
- (void)setContentPropertyName:(id)name type:(Class)type;
- (void)setIsSpecifiedKey:(id)key onElementWithName:(id)name;
@end

@implementation POXSComplexTypeDefinition

- (POXSComplexTypeDefinition)init
{
  v16.receiver = self;
  v16.super_class = POXSComplexTypeDefinition;
  v2 = [(POXSDefinition *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attributes = v2->_attributes;
    v2->_attributes = v3;

    v5 = objc_opt_new();
    elements = v2->_elements;
    v2->_elements = v5;

    v7 = objc_opt_new();
    namespaces = v2->_namespaces;
    v2->_namespaces = v7;

    v9 = objc_opt_new();
    properties = v2->_properties;
    v2->_properties = v9;

    v11 = objc_opt_new();
    elementAttributes = v2->_elementAttributes;
    v2->_elementAttributes = v11;

    v13 = objc_opt_new();
    attributeAttributes = v2->_attributeAttributes;
    v2->_attributeAttributes = v13;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = POXSComplexTypeDefinition;
  v5 = [(POXSDefinition *)&v21 copyWithZone:?];
  v6 = [(NSMutableArray *)self->_attributes mutableCopyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSMutableArray *)self->_elements mutableCopyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSMutableArray *)self->_namespaces mutableCopyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSMutableDictionary *)self->_properties mutableCopyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSMutableDictionary *)self->_elementAttributes mutableCopyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSMutableDictionary *)self->_attributeAttributes mutableCopyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_contentPropertyName copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

- (NSArray)attributes
{
  v2 = [(NSMutableArray *)self->_attributes copy];

  return v2;
}

- (NSArray)elements
{
  v2 = [(NSMutableArray *)self->_elements copy];

  return v2;
}

- (NSArray)namespaces
{
  v2 = [(NSMutableArray *)self->_namespaces copy];

  return v2;
}

- (void)addAttributeWithName:(id)name type:(Class)type isSpecifiedKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  [(NSMutableArray *)self->_attributes addObject:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if (keyCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:keyCopy forName:@"isSpecifiedKey" ofAttributeWithName:nameCopy];
  }
}

- (void)addAttributeWithName:(id)name type:(Class)type namespaceURI:(id)i
{
  nameCopy = name;
  iCopy = i;
  [(NSMutableArray *)self->_attributes addObject:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if (iCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:iCopy forName:@"namespace" ofAttributeWithName:nameCopy];
  }
}

- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type isSpecifiedKey:(id)key
{
  keyCopy = key;
  nameCopy = name;
  [(POXSComplexTypeDefinition *)self addElementWithName:nameCopy namespaceURI:i type:type maxOccurs:1 minOccurs:1];
  [(POXSComplexTypeDefinition *)self setIsSpecifiedKey:keyCopy onElementWithName:nameCopy];
}

- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type maxOccurs:(unint64_t)occurs minOccurs:(unint64_t)minOccurs flattenMultiValue:(BOOL)value
{
  valueCopy = value;
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  iCopy = i;
  v16 = [[POXSElement alloc] initWithElementName:nameCopy namespaceURI:iCopy type:type];
  [(NSMutableArray *)self->_elements addObject:v16];
  [(POXSComplexTypeDefinition *)self setProperty:nameCopy forName:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if ([(objc_class *)type isSubclassOfClass:objc_opt_class()])
  {
    minOccursCopy = minOccurs;
    v29 = v16;
    v30 = iCopy;
    v31 = valueCopy;
    [POXSDefinitions definitionForType:type];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v35 = 0u;
    elements = [v27 elements];
    v18 = [elements countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(elements);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          elementName = [v22 elementName];
          [(POXSComplexTypeDefinition *)self setProperty:nameCopy forName:elementName];

          elementName2 = [v22 elementName];
          [(POXSDefinition *)self setType:type forName:elementName2];
        }

        v19 = [elements countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    valueCopy = v31;
    v16 = v29;
    iCopy = v30;
    minOccurs = minOccursCopy;
  }

  if (occurs != 1)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:occurs];
    [(POXSComplexTypeDefinition *)self _setAttribute:v25 forName:@"maxCount" ofElementWithName:nameCopy];
  }

  if (minOccurs != 1)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:occurs];
    [(POXSComplexTypeDefinition *)self _setAttribute:v26 forName:@"minCount" ofElementWithName:nameCopy];
  }

  if (valueCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:MEMORY[0x277CBEC38] forName:@"flattenMultiValue" ofElementWithName:nameCopy];
  }
}

- (void)setContentPropertyName:(id)name type:(Class)type
{
  nameCopy = name;
  if (self->_contentPropertyName != nameCopy)
  {
    objc_storeStrong(&self->_contentPropertyName, name);
  }

  [(POXSDefinition *)self setType:type forName:nameCopy];
}

- (void)setIsSpecifiedKey:(id)key onElementWithName:(id)name
{
  if (key)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:key forName:@"isSpecifiedKey" ofElementWithName:name];
  }
}

- (unint64_t)maxCountForElementName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"maxCount" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (unint64_t)minCountForElementName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"minCount" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (BOOL)flattenMultiValueElementWithName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"flattenMultiValue" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setAttribute:(id)attribute forName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes
{
  attributeCopy = attribute;
  nameCopy = name;
  withNameCopy = withName;
  attributesCopy = attributes;
  dictionary = [attributesCopy objectForKeyedSubscript:withNameCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [attributesCopy setObject:dictionary forKeyedSubscript:withNameCopy];
  }

  [dictionary setObject:attributeCopy forKeyedSubscript:nameCopy];
}

- (id)_attributeForName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes
{
  nameCopy = name;
  v8 = [attributes objectForKeyedSubscript:withName];
  v9 = [v8 objectForKeyedSubscript:nameCopy];

  return v9;
}

+ (id)_descriptionForValue:(id)value prefix:(id)prefix
{
  v76 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  prefixCopy = prefix;
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"<%@> {\n", objc_opt_class()];
  v8 = [POXSDefinitions definitionForType:objc_opt_class()];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_53;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v48 = v8;
  attributes = [v8 attributes];
  v10 = [attributes countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v70;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v70 != v12)
        {
          objc_enumerationMutation(attributes);
        }

        v14 = *(*(&v69 + 1) + 8 * i);
        v15 = [valueCopy valueForKey:v14];
        [string appendFormat:@"%@    %@: %@;\n", prefixCopy, v14, v15];
      }

      v11 = [attributes countByEnumeratingWithState:&v69 objects:v75 count:16];
    }

    while (v11);
  }

  elements = [v48 elements];
  if ([valueCopy conformsToProtocol:&unk_2870B7158])
  {
    elementsNeedRedaction = [valueCopy elementsNeedRedaction];
    allowedElementKeys = [valueCopy allowedElementKeys];
  }

  else
  {
    allowedElementKeys = 0;
    elementsNeedRedaction = 0;
  }

  v17 = 0x279A3D000uLL;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v18 = elements;
  v19 = [v18 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v19)
  {
    goto LABEL_52;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  v54 = *v66;
  v52 = v18;
  while (2)
  {
    v23 = 0;
    v57 = v22;
    v47 = v22 + v20;
    v49 = v20;
    do
    {
      if (*v66 != v54)
      {
        v24 = v23;
        objc_enumerationMutation(v18);
        v23 = v24;
      }

      v56 = v23;
      elementName = [*(*(&v65 + 1) + 8 * v23) elementName];
      v59 = [valueCopy valueForKey:?];
      if (v59)
      {
        v55 = [*(v17 + 1648) definitionForType:objc_opt_class()];
        if (elementsNeedRedaction && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ([allowedElementKeys containsObject:elementName] & 1) == 0)
        {
          [string appendFormat:@"%@    %@ = <>;\n", prefixCopy, elementName, v46];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = v21;
              v28 = v59;
              [string appendFormat:@"%@    %@ = [\n", prefixCopy, elementName];
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v29 = v28;
              v30 = [v29 countByEnumeratingWithState:&v61 objects:v73 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = 0;
                v33 = *v62;
                while (2)
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v62 != v33)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v35 = *(*(&v61 + 1) + 8 * j);
                    v36 = [prefixCopy stringByAppendingString:@"        "];
                    v37 = [self _descriptionForValue:v35 prefix:v36];
                    [string appendFormat:@"%@        [%lu] = %@\n", prefixCopy, v32, v37];

                    if (v32 == 4)
                    {
                      v38 = [v29 count];
                      if (v38 != 5)
                      {
                        [string appendFormat:@"%@        -- %lu remaining entries in array --\n", prefixCopy, v38 - 5];
                        goto LABEL_41;
                      }
                    }

                    ++v32;
                  }

                  v31 = [v29 countByEnumeratingWithState:&v61 objects:v73 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_41:

              [string appendFormat:@"%@    ]\n", prefixCopy];
              v17 = 0x279A3D000;
              v18 = v52;
              v20 = v49;
              v21 = v50;
              goto LABEL_45;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![v59 integerValue])
              {
                goto LABEL_45;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = v59;
                calendar = [v39 calendar];
                [calendar dateFromComponents:v39];
                v42 = v41 = v21;

                [string appendFormat:@"%@    %@ = %@;\n", prefixCopy, elementName, v42];
                v21 = v41;
                v20 = v49;

                goto LABEL_45;
              }
            }

            [string appendFormat:@"%@    %@ = %@;\n", prefixCopy, elementName, v59];
            goto LABEL_45;
          }

          [prefixCopy stringByAppendingString:@"    "];
          v26 = v25 = v21;
          v27 = [self _descriptionForValue:v59 prefix:v26];
          [string appendFormat:@"%@    %@ = %@\n", prefixCopy, elementName, v27];

          v18 = v52;
          v21 = v25 + 1;
        }

LABEL_45:
      }

      v43 = v57 + 1;
      if (v21 == 5)
      {
        v44 = [v18 count];
        v43 = v57 + 1;
        if (v44 != v57 + 1)
        {
          [string appendFormat:@"%@    -- %lu remaining elements --\n", prefixCopy, v44 - (v57 + 1)];

          goto LABEL_52;
        }
      }

      v57 = v43;

      v23 = v56 + 1;
    }

    while (v56 + 1 != v20);
    v20 = [v18 countByEnumeratingWithState:&v65 objects:v74 count:16];
    v22 = v47;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v8 = v48;
LABEL_53:
  [string appendFormat:@"%@}\n", prefixCopy];

  return string;
}

@end