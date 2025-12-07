@interface VMUFieldInfo
- (BOOL)isEqual:(id)equal;
- (NSString)typedDescription;
- (VMUClassInfo)destinationLayout;
- (VMUFieldInfo)initWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0 swiftTyperef:(unint64_t *)self1;
- (VMUFieldInfo)initWithObjcIvar:(objc_ivar *)ivar size:(unsigned int)size offset:(unsigned int)offset ivarName:(const char *)name isARC:(BOOL)c is64Bit:(BOOL)bit;
- (VMUFieldInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version returnedDestinationLayoutClassInfoIndex:(unsigned int *)index error:(id *)error;
- (id)_fullIvarNameAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset depth:(unsigned int)depth;
- (id)description;
- (id)descriptionOfFieldValueInObjectMemory:(void *)memory scanner:(id)scanner;
- (id)fullIvarNameAtOffset:(unsigned int)offset;
- (id)getLeafFieldAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset;
- (id)initStorageEntryFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0;
- (id)initStorageInfoFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0;
- (id)initSwiftEnumPayloadFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride possibleEnumSubFieldArray:(id)self0 swiftTyperef:(unint64_t *)self1;
- (id)mutableCopy;
- (unsigned)bitfieldWidth;
- (void)_setFlags:(unsigned int)flags;
- (void)_setIvarName:(id)name;
- (void)_setSize:(unsigned int)size;
- (void)dealloc;
- (void)enumerateSublayoutsForSize:(int)size parentOffset:(unsigned int)offset remotePointerSize:(uint64_t)pointerSize withBlock:;
- (void)initializeSubFieldArray;
- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version;
- (void)setDestinationLayout:(id)layout;
- (void)setTypeName:(id)name;
@end

@implementation VMUFieldInfo

- (void)initializeSubFieldArray
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  subFieldArray = self->_subFieldArray;
  self->_subFieldArray = v3;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_offset == *(equal + 7) && self->_scanType == *(equal + 6) && self->_flags == *(equal + 11) && self->_size == *(equal + 8) && self->_scannable == *(equal + 9) && self->_stride == *(equal + 10))
    {
      ivarName = self->_ivarName;
      if (ivarName == *(equal + 1) || (v6 = [(NSString *)ivarName isEqualToString:?]) != 0)
      {
        typeName = self->_typeName;
        if (typeName == *(equal + 2) || (v6 = [(NSString *)typeName isEqualToString:?]) != 0)
        {
          destinationLayout = self->_destinationLayout;
          if (destinationLayout == *(equal + 6) || (v6 = [(VMUClassInfo *)destinationLayout isEqual:?]) != 0)
          {
            subFieldArray = self->_subFieldArray;
            if (subFieldArray == *(equal + 7) || (v6 = [(NSMutableArray *)subFieldArray isEqual:?]) != 0)
            {
              possibleEnumPayloadFieldArray = self->_possibleEnumPayloadFieldArray;
              if (possibleEnumPayloadFieldArray == *(equal + 8) || (v6 = [(NSArray *)possibleEnumPayloadFieldArray isEqual:?]) != 0)
              {
                LOBYTE(v6) = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (NSString)typedDescription
{
  typeName = self->_typeName;
  if (typeName)
  {
    v4 = descriptionForTypeEncoding([(NSString *)typeName UTF8String], [(NSString *)self->_ivarName UTF8String]);
  }

  else
  {
    v4 = self->_ivarName;
  }

  return v4;
}

- (id)mutableCopy
{
  v3 = [VMUMutableFieldInfo alloc];
  LODWORD(v6) = self->_stride;
  v4 = [(VMUFieldInfo *)v3 initWithName:self->_ivarName type:0 kind:0 scan:self->_scanType offset:self->_offset size:self->_size stride:v6 subFieldArray:self->_subFieldArray swiftTyperef:self->_swiftTyperef];
  [v4 setTypeName:self->_typeName];
  [v4 setDestinationLayout:self->_destinationLayout];
  [v4 setScannableSize:self->_scannable];
  [v4 setFlags:self->_flags];
  objc_storeStrong(v4 + 8, self->_possibleEnumPayloadFieldArray);
  return v4;
}

- (VMUFieldInfo)initWithObjcIvar:(objc_ivar *)ivar size:(unsigned int)size offset:(unsigned int)offset ivarName:(const char *)name isARC:(BOOL)c is64Bit:(BOOL)bit
{
  cCopy = c;
  v12 = *&size;
  v25.receiver = self;
  v25.super_class = VMUFieldInfo;
  v14 = [(VMUFieldInfo *)&v25 init];
  if (!v14)
  {
    return v14;
  }

  if (name)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:name];
  }

  else
  {
    v15 = 0;
  }

  ivarName = v14->_ivarName;
  v14->_ivarName = v15;

  TypeEncoding = ivar_getTypeEncoding(ivar);
  v18 = TypeEncoding;
  if (TypeEncoding)
  {
    TypeEncoding = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:TypeEncoding];
  }

  typeName = v14->_typeName;
  v14->_typeName = TypeEncoding;

  v14->_offset = offset;
  v14->_size = v12;
  v24 = 63;
  v20 = pointerScanSizeForTypeEncoding(v18, v12, bit, &v24);
  v14->_scannable = v20;
  if (!v20)
  {
    v14->_stride = v12;
LABEL_15:
    v14->_scanType = 0;
    return v14;
  }

  if (typeEncodingDescribesReferencedAllocation(v18))
  {
    v14->_flags |= 0x10u;
  }

  scannable = v14->_scannable;
  v14->_stride = v12;
  if (scannable <= 7)
  {
    goto LABEL_15;
  }

  if (cCopy && v24 == 64)
  {
    v22 = 8;
  }

  else
  {
    v22 = 1;
  }

  v14->_scanType = v22;
  return v14;
}

- (VMUFieldInfo)initWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0 swiftTyperef:(unint64_t *)self1
{
  v11 = *&size;
  v14 = *&kind;
  v47 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  arrayCopy = array;
  v45.receiver = self;
  v45.super_class = VMUFieldInfo;
  v20 = [(VMUFieldInfo *)&v45 init];
  if (v20)
  {
    typerefCopy2 = typeref;
    v22 = [nameCopy copy];
    ivarName = v20->_ivarName;
    v20->_ivarName = v22;

    v24 = [typeCopy copy];
    typeName = v20->_typeName;
    v20->_typeName = v24;

    [(VMUFieldInfo *)v20 _setKind:v14];
    v20->_scanType = scan;
    v20->_offset = offset;
    v20->_size = v11;
    if ([typeCopy length])
    {
      v44 = 63;
      uTF8String = [typeCopy UTF8String];
      v27 = pointerScanSizeForTypeEncoding(uTF8String, v11, 1, &v44);
      v20->_scannable = v27;
      if (v27 && typeEncodingDescribesReferencedAllocation(uTF8String))
      {
        v20->_flags |= 0x10u;
      }
    }

    else
    {
      if (v11 >= 8)
      {
        v28 = v11;
      }

      else
      {
        v28 = 0;
      }

      v20->_scannable = v28;
    }

    v20->_stride = stride;
    if (arrayCopy)
    {
      v29 = objc_opt_new();
      subFieldArray = v20->_subFieldArray;
      v20->_subFieldArray = v29;

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v31 = arrayCopy;
      v32 = [v31 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v41;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v41 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = v20->_subFieldArray;
            v37 = [*(*(&v40 + 1) + 8 * i) mutableCopy];
            [(NSMutableArray *)v36 addObject:v37];
          }

          v33 = [v31 countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v33);
      }

      typerefCopy2 = typeref;
    }

    if (typerefCopy2)
    {
      v38 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      v20->_swiftTyperef = v38;
      *v38 = *typerefCopy2;
    }
  }

  return v20;
}

- (void)dealloc
{
  swiftTyperef = self->_swiftTyperef;
  if (swiftTyperef)
  {
    free(swiftTyperef);
    self->_swiftTyperef = 0;
  }

  v4.receiver = self;
  v4.super_class = VMUFieldInfo;
  [(VMUFieldInfo *)&v4 dealloc];
}

- (id)initSwiftEnumPayloadFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride possibleEnumSubFieldArray:(id)self0 swiftTyperef:(unint64_t *)self1
{
  v11 = *&size;
  v12 = *&offset;
  v13 = *&scan;
  v14 = *&kind;
  arrayCopy = array;
  LODWORD(v21) = stride;
  v18 = [(VMUFieldInfo *)self initWithName:name type:type kind:v14 scan:v13 offset:v12 size:v11 stride:v21 subFieldArray:0 swiftTyperef:typeref];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_possibleEnumPayloadFieldArray, array);
  }

  return v19;
}

- (id)initStorageInfoFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0
{
  LODWORD(v11) = stride;
  result = [(VMUFieldInfo *)self initWithName:name type:type kind:*&kind scan:*&scan offset:*&offset size:*&size stride:v11 subFieldArray:array swiftTyperef:0];
  if (result)
  {
    *(result + 11) |= 4u;
  }

  return result;
}

- (id)initStorageEntryFieldWithName:(id)name type:(id)type kind:(unsigned int)kind scan:(unsigned int)scan offset:(unsigned int)offset size:(unsigned int)size stride:(unsigned int)stride subFieldArray:(id)self0
{
  LODWORD(v11) = stride;
  result = [(VMUFieldInfo *)self initWithName:name type:type kind:*&kind scan:*&scan offset:*&offset size:*&size stride:v11 subFieldArray:array swiftTyperef:0];
  if (result)
  {
    *(result + 11) |= 8u;
  }

  return result;
}

- (VMUFieldInfo)initWithSerializer:(id)serializer classMap:(id)map version:(unsigned int)version returnedDestinationLayoutClassInfoIndex:(unsigned int *)index error:(id *)error
{
  v34[3] = *MEMORY[0x1E69E9840];
  serializerCopy = serializer;
  mapCopy = map;
  v33.receiver = self;
  v33.super_class = VMUFieldInfo;
  v14 = [(VMUFieldInfo *)&v33 init];
  if (!v14)
  {
    goto LABEL_31;
  }

  v32 = 0;
  if (!error)
  {
    error = &v32;
  }

  v15 = [serializerCopy _deserializeValues:2 error:error];
  if (*error)
  {
    goto LABEL_9;
  }

  v14->_offset = *v15;
  v14->_size = v15[1];
  if (*error)
  {
    goto LABEL_9;
  }

  v34[0] = &v14->_scanType;
  v34[1] = &v14->_flags;
  v34[2] = &v14->_scannable;
  v16 = [serializerCopy _deserializeValues:3 error:error];
  v17 = *error;
  if (*error)
  {
    goto LABEL_9;
  }

  do
  {
    *v34[v17] = *(v16 + 4 * v17);
    v17 = v17 + 1;
  }

  while (v17 != 3);
  if (*error)
  {
    goto LABEL_9;
  }

  if (version >= 4)
  {
    v19 = [serializerCopy _deserializeValues:1 error:error];
    if (*error)
    {
      goto LABEL_9;
    }

    v14->_stride = *v19;
    if (*error)
    {
      goto LABEL_9;
    }
  }

  v20 = [serializerCopy deserialize32WithError:error];
  if (*error)
  {
    goto LABEL_9;
  }

  if (index)
  {
    *index = v20;
  }

  v21 = [serializerCopy copyDeserializedStringWithError:error];
  ivarName = v14->_ivarName;
  v14->_ivarName = v21;

  if (*error)
  {
    goto LABEL_9;
  }

  v23 = [serializerCopy copyDeserializedStringWithError:error];
  typeName = v14->_typeName;
  v14->_typeName = v23;

  if (*error)
  {
    goto LABEL_9;
  }

  if (version < 4)
  {
LABEL_31:
    v18 = v14;
    goto LABEL_32;
  }

  v25 = [serializerCopy deserialize32WithError:error];
  if (!*error)
  {
    v26 = v25;
    if (v25)
    {
      v27 = objc_opt_new();
      do
      {
        v28 = [serializerCopy deserialize32WithError:error];
        if (*error)
        {

          goto LABEL_9;
        }

        v29 = [mapCopy fieldInfoForIndex:v28];
        if (v29)
        {
          [v27 addObject:v29];
        }

        else
        {
          NSLog(&cfstr_BadFieldIndexI.isa);
        }

        --v26;
      }

      while (v26);
      if ([v27 count])
      {
        v30 = v27;
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(&v14->_subFieldArray, v30);
    }

    goto LABEL_31;
  }

LABEL_9:
  v18 = 0;
LABEL_32:

  return v18;
}

- (void)serializeWithClassMap:(id)map simpleSerializer:(id)serializer version:(unsigned int)version
{
  v22[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  serializerCopy = serializer;
  v22[0] = *&self->_offset;
  [serializerCopy _serializeValues:v22 count:2];
  flags = self->_flags;
  v21[0] = self->_scanType;
  v21[1] = flags;
  v21[2] = self->_scannable;
  [serializerCopy _serializeValues:v21 count:3];
  stride = self->_stride;
  [serializerCopy _serializeValues:&stride count:1];
  [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForClassInfo:", self->_destinationLayout)}];
  [serializerCopy serializeString:self->_ivarName];
  [serializerCopy serializeString:self->_typeName];
  [serializerCopy serialize32:{-[NSMutableArray count](self->_subFieldArray, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_subFieldArray;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [serializerCopy serialize32:{objc_msgSend(mapCopy, "indexForFieldInfo:", *(*(&v15 + 1) + 8 * v14++), v15)}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (id)getLeafFieldAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset
{
  v24 = *MEMORY[0x1E69E9840];
  subFieldArray = self->_subFieldArray;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = subFieldArray;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      offset = [v13 offset];
      if ([v13 size] + offset > offset)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (offset > offset)
    {
      goto LABEL_11;
    }

    v17 = v13;

    if (v17)
    {
      v23[0] = 0;
      selfCopy = [v17 getLeafFieldAtOffset:offset - objc_msgSend(v17 leafOffset:{"offset"), v23}];
      if (leafOffset)
      {
        offset2 = [v17 offset];
        *leafOffset = v23[0] + offset2;
      }

      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

  if (leafOffset)
  {
    *leafOffset = 0;
  }

  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)_fullIvarNameAtOffset:(unsigned int)offset leafOffset:(unsigned int *)leafOffset depth:(unsigned int)depth
{
  v7 = *&offset;
  v31 = *MEMORY[0x1E69E9840];
  if (_fullIvarNameAtOffset_leafOffset_depth__onceToken != -1)
  {
    [VMUFieldInfo _fullIvarNameAtOffset:leafOffset:depth:];
  }

  subFieldArray = self->_subFieldArray;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = subFieldArray;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      offset = [v15 offset];
      if ([v15 size] + offset > v7)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    if (offset > v7)
    {
      goto LABEL_13;
    }

    v20 = v15;

    if (v20)
    {
      v30[0] = 0;
      v21 = [v20 _fullIvarNameAtOffset:v7 - objc_msgSend(v20 leafOffset:"offset") depth:{v30, depth + 1}];
      if (leafOffset)
      {
        offset2 = [v20 offset];
        *leafOffset = v30[0] + offset2;
      }

      if (depth && [(NSString *)self->_ivarName isEqualToString:@"some"])
      {
        v23 = v21;
      }

      else if (v21 && [v21 length] && !objc_msgSend(_fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames, "containsObject:", v21))
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", self->_ivarName, v21, v26];
      }

      else
      {
        ivarName = self->_ivarName;
        if (v7)
        {
          v23 = [(NSString *)ivarName stringByAppendingFormat:@" + %u", v7];
        }

        else
        {
          v23 = ivarName;
        }
      }

      v17 = v23;

      goto LABEL_37;
    }
  }

  else
  {
LABEL_13:
  }

  if (leafOffset)
  {
    *leafOffset = 0;
  }

  if (depth && ([_fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames containsObject:self->_ivarName] & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v18 = self->_ivarName;
    if (v7)
    {
      v19 = [(NSString *)v18 stringByAppendingFormat:@" + %u", v7];
    }

    else
    {
      v19 = v18;
    }

    v17 = v19;
  }

LABEL_37:

  return v17;
}

void __55__VMUFieldInfo__fullIvarNameAtOffset_leafOffset_depth___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"_guts", @"_object", @"_otherBits", @"_rawValue", @"rawValue", @"_value", @"_variantBuffer", @"_storage", @"_buffer", @"object", @"some", @"native", 0}];
  v1 = _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames;
  _fullIvarNameAtOffset_leafOffset_depth__internalPartialIvarNames = v0;
}

- (id)fullIvarNameAtOffset:(unsigned int)offset
{
  v5 = 0;
  v3 = [(VMUFieldInfo *)self _fullIvarNameAtOffset:*&offset leafOffset:&v5 depth:0];

  return v3;
}

- (void)_setIvarName:(id)name
{
  if (self->_ivarName != name)
  {
    v5 = [name copy];
    ivarName = self->_ivarName;
    self->_ivarName = v5;
  }
}

- (void)setTypeName:(id)name
{
  if (self->_typeName != name)
  {
    v5 = [name copy];
    typeName = self->_typeName;
    self->_typeName = v5;
  }
}

- (void)_setSize:(unsigned int)size
{
  scannable = self->_scannable;
  if (scannable >= size)
  {
    scannable = size;
  }

  self->_size = size;
  self->_scannable = scannable;
}

- (void)_setFlags:(unsigned int)flags
{
  self->_flags = flags;
  if ((flags & 2) != 0)
  {
    v5 = +[VMUClassInfo _genericBlockByrefInfo];
    destinationLayout = self->_destinationLayout;
    self->_destinationLayout = v5;
  }
}

- (unsigned)bitfieldWidth
{
  typeName = self->_typeName;
  if (typeName)
  {
    uTF8String = [(NSString *)typeName UTF8String];
    if (*uTF8String == 98)
    {
      LODWORD(typeName) = strtol((uTF8String + 1), 0, 10);
    }

    else
    {
      LODWORD(typeName) = 0;
    }
  }

  return typeName;
}

- (void)setDestinationLayout:(id)layout
{
  layoutCopy = layout;
  destinationLayout = self->_destinationLayout;
  p_destinationLayout = &self->_destinationLayout;
  if (destinationLayout != layoutCopy)
  {
    v8 = layoutCopy;
    objc_storeStrong(p_destinationLayout, layout);
    layoutCopy = v8;
  }
}

- (VMUClassInfo)destinationLayout
{
  if ((self->_flags & 2) != 0)
  {
    v2 = +[VMUClassInfo _genericBlockByrefInfo];
  }

  else
  {
    v2 = self->_destinationLayout;
  }

  return v2;
}

- (id)descriptionOfFieldValueInObjectMemory:(void *)memory scanner:(id)scanner
{
  offset = self->_offset;
  typeName = self->_typeName;
  scannerCopy = scanner;
  v9 = descriptionOfValueAtAddressWithTypeEncoding(memory + offset, [(NSString *)typeName UTF8String], self->_size, scannerCopy);

  return v9;
}

- (id)description
{
  destinationLayout = self->_destinationLayout;
  if (destinationLayout)
  {
    className = [(VMUClassInfo *)destinationLayout className];
  }

  else
  {
    className = &stru_1F461F9C8;
  }

  v10.receiver = self;
  v10.super_class = VMUFieldInfo;
  v5 = [(VMUFieldInfo *)&v10 description];
  offset = [(VMUFieldInfo *)self offset];
  typedDescription = [(VMUFieldInfo *)self typedDescription];
  v8 = [v5 stringByAppendingFormat:@"%+3d %@ size %u (%s)  %@", offset, typedDescription, -[VMUFieldInfo size](self, "size"), VMUScanTypeScanDescription(-[VMUFieldInfo scanType](self, "scanType")), className];

  return v8;
}

- (void)enumerateSublayoutsForSize:(int)size parentOffset:(unsigned int)offset remotePointerSize:(uint64_t)pointerSize withBlock:
{
  v35 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((v7 = *(self + 56)) != 0 && [v7 count] || *(self + 48))
    {
      v8 = *(self + 28) + size;
      v24 = offset + v8 - 1;
      v9 = v24 & -offset;
      v26 = v8;
      v10 = v8 + *(self + 36);
      if (v10 >= a2)
      {
        v10 = a2;
      }

      v11 = v9 + offset;
      for (i = v10; v11 <= i; v11 = v11 + offset)
      {
        v12 = *(self + 56);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = v9 - v26;
          v17 = *v31;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v30 + 1) + 8 * v18);
            offset = [v19 offset];
            if ([v19 size] + offset > v16)
            {
              break;
            }

            if (v15 == ++v18)
            {
              v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
              if (v15)
              {
                goto LABEL_11;
              }

              goto LABEL_19;
            }
          }

          if (offset > v16)
          {
            goto LABEL_19;
          }

          v21 = v19;

          if (v21)
          {
            [(VMUFieldInfo *)v21 enumerateSublayoutsForSize:a2 parentOffset:v26 remotePointerSize:offset withBlock:pointerSize];
            offset2 = [v21 offset];
            v11 = (v24 + offset2 + [v21 size]) & -offset;

            goto LABEL_23;
          }
        }

        else
        {
LABEL_19:
        }

        v22 = *(self + 48);
        if (v22)
        {
          (*(pointerSize + 16))(pointerSize, v22, v9, *(self + 24));
        }

LABEL_23:
        v9 = v11;
      }
    }
  }
}

@end