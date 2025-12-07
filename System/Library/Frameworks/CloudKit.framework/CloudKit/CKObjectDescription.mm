@interface CKObjectDescription
- (CKObjectDescription)initWithObject:(id)object redact:(BOOL)redact avoidShortDescription:(BOOL)description;
- (id)_arrayDescription:(id)description shouldRedact:(BOOL)redact;
- (id)_dictionaryDescription:(id)description shouldRedact:(BOOL)redact;
- (id)_propertyDescriptionForProperty:(id)property shouldRedact:(BOOL)redact;
- (id)description;
- (void)_addProperty:(id)property value:(id)value shouldRedact:(BOOL)redact;
- (void)addBooleanProperty:(id)property value:(BOOL)value defaultValue:(int64_t)defaultValue;
- (void)addFlagsForKey:(id)key flagsAndConditions:(id)conditions;
- (void)addPropertyIfExists:(id)exists value:(id)value shouldRedact:(BOOL)redact;
@end

@implementation CKObjectDescription

- (id)description
{
  v4 = objc_msgSend_count(self->_orderedDictionary, a2, v2);
  v7 = objc_msgSend_printAsDictionary(self, v5, v6);
  if (v4)
  {
    if (v7)
    {
      v9 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v8, @"{ ");
    }

    else
    {
      v9 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v8, self->_descriptionPrefix);
      objc_msgSend_appendString_(v9, v11, @" ");
    }

    orderedDictionary = self->_orderedDictionary;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1883EE69C;
    v22[3] = &unk_1E70BED00;
    v10 = v9;
    v23 = v10;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(orderedDictionary, v13, v22);
    v16 = objc_msgSend_length(v10, v14, v15);
    objc_msgSend_deleteCharactersInRange_(v10, v17, v16 - 2, 2);
    if (objc_msgSend_printAsDictionary(self, v18, v19))
    {
      objc_msgSend_appendString_(v10, v20, @" }");
    }

    else
    {
      objc_msgSend_appendString_(v10, v20, @">");
    }
  }

  else if (v7)
  {
    v10 = @"{}";
  }

  else
  {
    v10 = objc_msgSend_stringByAppendingString_(self->_descriptionPrefix, v8, @">");
  }

  return v10;
}

- (CKObjectDescription)initWithObject:(id)object redact:(BOOL)redact avoidShortDescription:(BOOL)description
{
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = CKObjectDescription;
  v9 = [(CKObjectDescription *)&v28 init];
  v12 = v9;
  if (v9)
  {
    v9->_printAsDictionary = 0;
    v9->_redact = redact;
    v9->_avoidShortDescription = description;
    if (objectCopy)
    {
      ShouldPrintPointer = objc_msgSend_CKDescriptionShouldPrintPointer(objectCopy, v10, v11);
      v14 = MEMORY[0x1E696AEC0];
      v17 = objc_msgSend_CKDescriptionClassName(objectCopy, v15, v16);
      v19 = v17;
      if (ShouldPrintPointer)
      {
        objc_msgSend_stringWithFormat_(v14, v18, @"<%@: %p;", v17, objectCopy);
      }

      else
      {
        objc_msgSend_stringWithFormat_(v14, v18, @"<%@", v17);
      }
      v20 = ;
      descriptionPrefix = v12->_descriptionPrefix;
      v12->_descriptionPrefix = v20;
    }

    v22 = objc_msgSend_orderedDictionary(CKOrderedDictionary, v10, v11);
    orderedDictionary = v12->_orderedDictionary;
    v12->_orderedDictionary = v22;

    v24 = objc_opt_class();
    if (objc_msgSend_conformsToProtocol_(v24, v25, &unk_1EFA8A7B0))
    {
      objc_msgSend_CKDescribePropertiesUsing_(objectCopy, v26, v12);
    }
  }

  return v12;
}

- (void)addPropertyIfExists:(id)exists value:(id)value shouldRedact:(BOOL)redact
{
  if (value)
  {
    MEMORY[0x1EEE66B58](self, sel__addProperty_value_shouldRedact_, exists);
  }
}

- (void)_addProperty:(id)property value:(id)value shouldRedact:(BOOL)redact
{
  if (value)
  {
    redactCopy = redact;
    propertyCopy = property;
    v18 = objc_msgSend__propertyDescriptionForProperty_shouldRedact_(self, v10, value, redactCopy);
    objc_msgSend_addObject_forKey_(self->_orderedDictionary, v11, v18, propertyCopy);
  }

  else
  {
    orderedDictionary = self->_orderedDictionary;
    v13 = MEMORY[0x1E695DFB0];
    propertyCopy2 = property;
    v18 = objc_msgSend_null(v13, v15, v16);
    objc_msgSend_addObject_forKey_(orderedDictionary, v17, v18, propertyCopy2);
  }
}

- (void)addBooleanProperty:(id)property value:(BOOL)value defaultValue:(int64_t)defaultValue
{
  valueCopy = value;
  propertyCopy = property;
  v9 = propertyCopy;
  if (valueCopy)
  {
    if (defaultValue == 1)
    {
      goto LABEL_7;
    }

    v10 = @"YES";
  }

  else
  {
    if (!defaultValue)
    {
      goto LABEL_7;
    }

    v10 = @"NO";
  }

  v11 = propertyCopy;
  propertyCopy = objc_msgSend_addObject_forKey_(self->_orderedDictionary, propertyCopy, v10, propertyCopy);
  v9 = v11;
LABEL_7:

  MEMORY[0x1EEE66BB8](propertyCopy, v9);
}

- (void)addFlagsForKey:(id)key flagsAndConditions:(id)conditions
{
  keyCopy = key;
  v7 = objc_msgSend_CKCompactMap_(conditions, v6, &unk_1EFA306D0);
  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = objc_msgSend_sortedArrayUsingSelector_(v7, v10, sel_compare_);
    v13 = objc_msgSend_componentsJoinedByString_(v11, v12, @"|");

    objc_msgSend_addObject_forKey_(self->_orderedDictionary, v14, v13, keyCopy);
  }
}

- (id)_propertyDescriptionForProperty:(id)property shouldRedact:(BOOL)redact
{
  redactCopy = redact;
  propertyCopy = property;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend__arrayDescription_shouldRedact_(self, v7, propertyCopy, redactCopy);
LABEL_18:
    v28 = v8;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend__dictionaryDescription_shouldRedact_(self, v9, propertyCopy, redactCopy);
    goto LABEL_18;
  }

  v10 = objc_opt_class();
  if (objc_msgSend_conformsToProtocol_(v10, v11, &unk_1EFA8A7B0))
  {
    v14 = propertyCopy;
    if ((objc_msgSend_avoidShortDescription(self, v15, v16) & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v22 = objc_msgSend_redact(self, v17, v18);
      v25 = objc_msgSend_avoidShortDescription(self, v23, v24);
      v27 = objc_msgSend_CKObjectDescriptionRedact_avoidShortDescription_(v14, v26, v22, v25);
    }

    else
    {
      if (redactCopy)
      {
        v19 = objc_msgSend_redact(self, v17, v18);
        objc_msgSend_CKShortDescriptionRedact_(v14, v20, v19);
      }

      else
      {
        objc_msgSend_CKShortDescriptionRedact_(v14, v17, 0);
      }
      v27 = ;
    }

    v28 = v27;
  }

  else
  {
    if (!redactCopy || !objc_msgSend_redact(self, v12, v13))
    {
      v8 = objc_msgSend_description(propertyCopy, v12, v13);
      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
      {
        v8 = objc_msgSend_performSelector_(propertyCopy, v21, sel_redactedDescription);
        goto LABEL_18;
      }
    }

    v28 = @"<private>";
  }

LABEL_19:

  return v28;
}

- (id)_arrayDescription:(id)description shouldRedact:(BOOL)redact
{
  descriptionCopy = description;
  if (objc_msgSend_avoidShortDescription(self, v7, v8))
  {
    v10 = objc_msgSend_orderedDictionaryWithCapacity_(CKOrderedDictionary, v9, 2);
    objc_msgSend_addObject_forKey_(v10, v11, @"array", @"type");
    objc_msgSend_addObject_forKey_(v10, v12, @"items", @"items");
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1886AD274;
    v14[3] = &unk_1E70C1C60;
    v14[4] = self;
    redactCopy = redact;
    v10 = objc_msgSend_CKMap_(descriptionCopy, v9, v14);
  }

  return v10;
}

- (id)_dictionaryDescription:(id)description shouldRedact:(BOOL)redact
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1886AD314;
  v6[3] = &unk_1E70C1C88;
  v6[4] = self;
  redactCopy = redact;
  v4 = objc_msgSend_CKMapValues_(description, a2, v6);

  return v4;
}

@end