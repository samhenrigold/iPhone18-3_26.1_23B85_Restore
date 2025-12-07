@interface ipp_t
- (BOOL)isEqual:(id)equal;
- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag;
- (id)_initWithAttrs:(id)attrs;
- (id)addNewEmptyAttribute:(id)attribute groupTag:(int)tag valueTag:(int)valueTag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (id)userCodableDictionary;
- (ipp_t)init;
- (ipp_t)initWithCoder:(id)coder;
- (ipp_t)initWithData:(id)data;
- (unint64_t)hash;
- (void)_addAttrToAppropriateGroup:(id)group;
- (void)_addBoolean:(int)boolean name:(id)name value:(BOOL)value;
- (void)_addCollection:(int)collection name:(id)name value:(id)value;
- (void)_addInteger:(int)integer valueTag:(int)tag name:(id)name value:(int)value;
- (void)_addIntegers:(int)integers valueTag:(int)tag name:(id)name count:(unint64_t)count adder:(id)adder;
- (void)_addOctetString:(int)string name:(id)name data:(const void *)data length:(int)length;
- (void)_addRange:(int)range name:(id)name lower:(int)lower upper:(int)upper;
- (void)_addRanges:(int)ranges name:(id)name values:(id)values;
- (void)_addResolution:(int)resolution name:(id)name unit:(int)unit xres:(int)xres yres:(int)yres;
- (void)_addString:(int)string valueTag:(int)tag name:(id)name lang:(id)lang value:(id)value;
- (void)_addStrings:(int)strings valueTag:(int)tag name:(id)name lang:(id)lang values:(id)values;
- (void)_deleteAttribute:(id)attribute;
- (void)_withGroupingBehavior:(id)behavior;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAttributes:(id)attributes;
- (void)replaceOrAddAttribute:(id)attribute withAttribute:(id)withAttribute settingGroup:(int)group;
- (void)withNewAttr:(id)attr groupTag:(int)tag valueTag:(int)valueTag apply:(id)apply;
@end

@implementation ipp_t

- (ipp_t)init
{
  v6.receiver = self;
  v6.super_class = ipp_t;
  v2 = [(ipp_t *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attrs = v2->_attrs;
    v2->_attrs = v3;
  }

  return v2;
}

- (id)_initWithAttrs:(id)attrs
{
  attrsCopy = attrs;
  v5 = [(ipp_t *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = attrsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          attrs = v5->_attrs;
          v11 = [*(*(&v13 + 1) + 8 * v9) copy];
          [(NSMutableArray *)attrs addObject:v11];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)_addAttrToAppropriateGroup:(id)group
{
  groupCopy = group;
  v4 = [(NSMutableArray *)self->_attrs count];
  group_tag = [groupCopy group_tag];
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = group_tag;
  v7 = 0;
  v8 = -1;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_attrs objectAtIndexedSubscript:v7];
    if ([v9 group_tag] != v6)
    {
      break;
    }

    v8 = ++v7;
LABEL_7:

    if (v7 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v8 == -1)
  {
    ++v7;
    goto LABEL_7;
  }

LABEL_10:
  if (v8 != -1 && v8 < v4)
  {
    [(NSMutableArray *)self->_attrs insertObject:groupCopy atIndex:v8];
    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_attrs addObject:groupCopy];
LABEL_14:
}

- (void)_withGroupingBehavior:(id)behavior
{
  behaviorCopy = behavior;
  addAttributesInAppropriateGroups = self->_addAttributesInAppropriateGroups;
  self->_addAttributesInAppropriateGroups = 1;
  v6 = behaviorCopy;
  (*(behaviorCopy + 2))(behaviorCopy, self);
  self->_addAttributesInAppropriateGroups = addAttributesInAppropriateGroups;
}

- (ipp_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dataRepresentation"];
  v6 = [(ipp_t *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"_dataRepresentation"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ipp_t;
  v3 = [(ipp_t *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ { %d attrs @ %p }", v3, [(NSMutableArray *)self->_attrs count], self->_attrs];

  return v4;
}

- (id)debugDescription
{
  userCodableDictionary = [(ipp_t *)self userCodableDictionary];
  allKeys = [userCodableDictionary allKeys];
  firstObject = [allKeys firstObject];

  v5 = [userCodableDictionary objectForKeyedSubscript:firstObject];
  v6 = [NSString stringWithFormat:@"%@ { %@ }", firstObject, v5];

  return v6;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  attrs = self->_attrs;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003B2AC;
  v12[3] = &unk_1000A2CD0;
  v5 = v3;
  v13 = v5;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v12];
  v11.receiver = self;
  v11.super_class = ipp_t;
  v6 = [(ipp_t *)&v11 description];
  _descriptionLeader = [(ipp_t *)self _descriptionLeader];
  v8 = [NSString stringWithFormat:@"%@ %@", v6, _descriptionLeader];

  v14 = v8;
  v15 = v5;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  return v9;
}

- (void)enumerateAttributes:(id)attributes
{
  attributesCopy = attributes;
  attrs = self->_attrs;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B3C8;
  v7[3] = &unk_1000A2CF8;
  v8 = attributesCopy;
  v6 = attributesCopy;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v7];
}

- (void)replaceOrAddAttribute:(id)attribute withAttribute:(id)withAttribute settingGroup:(int)group
{
  v5 = *&group;
  attributeCopy = attribute;
  withAttributeCopy = withAttribute;
  attrs = self->_attrs;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003B508;
  v15[3] = &unk_1000A2D20;
  v11 = attributeCopy;
  v16 = v11;
  v12 = [(NSMutableArray *)attrs indexOfObjectPassingTest:v15];
  v13 = [withAttributeCopy _copySettingGroup:v5];
  v14 = self->_attrs;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v14 addObject:v13];
  }

  else
  {
    [(NSMutableArray *)v14 replaceObjectAtIndex:v12 withObject:v13];
  }
}

- (ipp_t)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(ipp_t *)self init];
  if (v5)
  {
    v17 = 0;
    v6 = dataCopy;
    v18 = v6;
    [(ipp_t *)v5 setState:0];
    v7 = objc_autoreleasePoolPush();
    do
    {
      IO = ippReadIO(&v17, sub_10003B6E0, v5);
      v9 = IO;
    }

    while (IO != -1 && IO != 3);
    objc_autoreleasePoolPop(v7);
    if (v9 == 3)
    {
      v11 = [v6 length];
      if (v11 - v17 < 1)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [v6 subdataWithRange:?];
      dataRemaining = v5->_dataRemaining;
      v5->_dataRemaining = v12;
    }

    else
    {
      v14 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't convert data to ipp", v16, 2u);
      }

      dataRemaining = v5;
      v5 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (id)dataRepresentation
{
  [(ipp_t *)self setState:0];
  v3 = [NSMutableData dataWithCapacity:0];
  v4 = objc_autoreleasePoolPush();
  ippWriteIO(v3, sub_10003B7E0, self);
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  dataRepresentation2 = [equalCopy dataRepresentation];
  v7 = [dataRepresentation isEqual:dataRepresentation2];

  return v7;
}

- (unint64_t)hash
{
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  v3 = [dataRepresentation hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  dataRepresentation = [(ipp_t *)self dataRepresentation];
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataRepresentation];

  return v4;
}

- (void)withNewAttr:(id)attr groupTag:(int)tag valueTag:(int)valueTag apply:(id)apply
{
  v7 = *&valueTag;
  v8 = *&tag;
  attrCopy = attr;
  applyCopy = apply;
  v11 = [[ipp_attribute_t alloc] initWithName:attrCopy group:v8 value:v7];
  applyCopy[2](applyCopy, v11);
  if (self->_addAttributesInAppropriateGroups)
  {
    [(ipp_t *)self _addAttrToAppropriateGroup:v11];
  }

  else
  {
    [(NSMutableArray *)self->_attrs addObject:v11];
  }
}

- (id)addNewEmptyAttribute:(id)attribute groupTag:(int)tag valueTag:(int)valueTag
{
  v5 = *&valueTag;
  v6 = *&tag;
  attributeCopy = attribute;
  v9 = [[ipp_attribute_t alloc] initWithName:attributeCopy group:v6 value:v5];
  if (self->_addAttributesInAppropriateGroups)
  {
    [(ipp_t *)self _addAttrToAppropriateGroup:v9];
  }

  else
  {
    [(NSMutableArray *)self->_attrs addObject:v9];
  }

  return v9;
}

- (void)_addRange:(int)range name:(id)name lower:(int)lower upper:(int)upper
{
  v8 = *&range;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003BBC8;
    v11[3] = &unk_1000A2D60;
    lowerCopy = lower;
    upperCopy = upper;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:51 apply:v11];
  }
}

- (void)_addRanges:(int)ranges name:(id)name values:(id)values
{
  v6 = *&ranges;
  nameCopy = name;
  valuesCopy = values;
  v10 = valuesCopy;
  if (nameCopy && v6 <= 5 && v6 != 3 && [valuesCopy count])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003BD6C;
    v11[3] = &unk_1000A2DE0;
    v12 = v10;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:51 apply:v11];
  }
}

- (void)_addBoolean:(int)boolean name:(id)name value:(BOOL)value
{
  v6 = *&boolean;
  nameCopy = name;
  if (nameCopy && v6 <= 5 && v6 != 3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003BFBC;
    v9[3] = &unk_1000A2E20;
    valueCopy = value;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:34 apply:v9];
  }
}

- (void)_addInteger:(int)integer valueTag:(int)tag name:(id)name value:(int)value
{
  v7 = *&tag;
  v8 = *&integer;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003C110;
    v11[3] = &unk_1000A2E60;
    valueCopy = value;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:v7 apply:v11];
  }
}

- (void)_addString:(int)string valueTag:(int)tag name:(id)name lang:(id)lang value:(id)value
{
  v9 = *&tag;
  v10 = *&string;
  nameCopy = name;
  langCopy = lang;
  valueCopy = value;
  v15 = valueCopy;
  if (valueCopy && v10 <= 5 && v10 != 3)
  {
    v17 = valueCopy;
    v16 = [NSArray arrayWithObjects:&v17 count:1];
    [(ipp_t *)self _addStrings:v10 valueTag:v9 name:nameCopy lang:langCopy values:v16];
  }
}

- (void)_addStrings:(int)strings valueTag:(int)tag name:(id)name lang:(id)lang values:(id)values
{
  v9 = *&tag;
  v10 = *&strings;
  nameCopy = name;
  langCopy = lang;
  valuesCopy = values;
  v15 = valuesCopy;
  if (nameCopy && v10 <= 5 && v10 != 3 && [valuesCopy count])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003C3EC;
    v16[3] = &unk_1000A2EB8;
    v17 = v15;
    v18 = langCopy;
    v19 = v9;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:v9 apply:v16];
  }
}

- (void)_addCollection:(int)collection name:(id)name value:(id)value
{
  v6 = *&collection;
  nameCopy = name;
  valueCopy = value;
  v10 = valueCopy;
  if (nameCopy && v6 <= 5 && v6 != 3)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003C8B8;
    v11[3] = &unk_1000A2DE0;
    v12 = valueCopy;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:52 apply:v11];
  }
}

- (void)_addResolution:(int)resolution name:(id)name unit:(int)unit xres:(int)xres yres:(int)yres
{
  v10 = *&resolution;
  nameCopy = name;
  if (nameCopy && v10 <= 5 && v10 != 3 && ((yres | xres) & 0x80000000) == 0 && (unit - 3) < 2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003CA54;
    v13[3] = &unk_1000A2F20;
    xresCopy = xres;
    yresCopy = yres;
    unitCopy = unit;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:50 apply:v13];
  }
}

- (void)_addOctetString:(int)string name:(id)name data:(const void *)data length:(int)length
{
  v8 = *&string;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3 && !(length >> 15))
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003CBC0;
    v11[3] = &unk_1000A2F20;
    v11[4] = data;
    lengthCopy = length;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:48 apply:v11];
  }
}

- (void)_deleteAttribute:(id)attribute
{
  attributeCopy = attribute;
  v4 = [(NSMutableArray *)self->_attrs indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_attrs removeObjectAtIndex:v4];
  }
}

- (void)_addIntegers:(int)integers valueTag:(int)tag name:(id)name count:(unint64_t)count adder:(id)adder
{
  v9 = *&tag;
  v10 = *&integers;
  nameCopy = name;
  adderCopy = adder;
  v14 = adderCopy;
  if (nameCopy && v10 <= 5 && v10 != 3 && count)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003CE54;
    v15[3] = &unk_1000A2F70;
    v16 = adderCopy;
    countCopy = count;
    [(ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:v9 apply:v15];
  }
}

- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag
{
  attribute0Copy = attribute0;
  v7 = attribute0Copy;
  if (attribute0Copy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_10003D134;
    v19 = sub_10003D144;
    v20 = 0;
    [attribute0Copy lowercaseString];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D14C;
    v12 = v11[3] = &unk_1000A2F98;
    v13 = &v15;
    tagCopy = tag;
    v8 = v12;
    [(ipp_t *)self enumerateAttributes:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end