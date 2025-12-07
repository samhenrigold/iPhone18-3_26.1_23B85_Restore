@interface VMUObjectIdentifierDriverKitSupport
- (VMUObjectIdentifierDriverKitSupport)initWithObjectIdentifier:(id)identifier;
- (id)_fieldsFromStructureLayout:(id *)layout withOffset:(unint64_t)offset;
- (id)_fieldsOfLegacyOSObject:(id)object;
- (id)_fieldsOfLocalDriverKitOSObject:(id)object;
- (id)_fieldsOfOSObject:(id)object startOffset:(unint64_t)offset;
- (id)_fieldsOfRemoteDriverKitOSObject:(id)object;
- (id)_labelForDriverKitOSClassLoadInformation:(void *)information length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)_labelForDriverKitOSMetaClass:(void *)class length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)classInfoForDriverKitMemory:(void *)memory length:(unint64_t)length atOffset:(unint64_t)offset translatedIsa:(unint64_t)isa symbol:(_CSTypeRef)symbol remoteAddress:(unint64_t)address;
- (id)classInfoForDriverKitOSClassScan;
- (id)classInfoForDriverKitOSMetaClass;
- (id)classInfoForDriverKitOSMetaClassPrivate;
- (id)driverKitClassInfoForMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address;
- (id)labelForDriverKitMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address class:(id)class;
- (void)dealloc;
@end

@implementation VMUObjectIdentifierDriverKitSupport

- (VMUObjectIdentifierDriverKitSupport)initWithObjectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy taskIsDriverKit])
  {
    v23.receiver = self;
    v23.super_class = VMUObjectIdentifierDriverKitSupport;
    v5 = [(VMUObjectIdentifierDriverKitSupport *)&v23 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_objectIdentifier, identifierCopy);
      scanner = [identifierCopy scanner];
      v6->_task = [scanner task];

      [identifierCopy symbolicator];
      SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      v10 = v9;
      memoryReader = [identifierCopy memoryReader];
      StructureLayoutDescription = getStructureLayoutDescription(SymbolOwnerWithNameAtTime, v10, "gOSMetaClassBasePrivateLayout", memoryReader);

      memoryReader2 = [identifierCopy memoryReader];
      v14 = getStructureLayoutDescription(SymbolOwnerWithNameAtTime, v10, "gOSMetaClassBaseRemotePrivateLayout", memoryReader2);

      if (StructureLayoutDescription)
      {
        v6->_vtableOffsetOfLocalDriverKitOSObject = *(StructureLayoutDescription + 24);
        v15 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:StructureLayoutDescription withOffset:0];
        privateFieldsOfLocalDriverKitOSObject = v6->_privateFieldsOfLocalDriverKitOSObject;
        v6->_privateFieldsOfLocalDriverKitOSObject = v15;

        if (v14)
        {
          v6->_vtableOffsetOfRemoteDriverKitOSObject = *(StructureLayoutDescription + 24) + *(v14 + 24);
          v17 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:v14 withOffset:0];
          v18 = [(VMUObjectIdentifierDriverKitSupport *)v6 _fieldsFromStructureLayout:StructureLayoutDescription withOffset:*(v14 + 24)];
          [(NSArray *)v17 addObjectsFromArray:v18];

          privateFieldsOfRemoteDriverKitOSObject = v6->_privateFieldsOfRemoteDriverKitOSObject;
          v6->_privateFieldsOfRemoteDriverKitOSObject = v17;
        }
      }

      else
      {
        v6->_vtableOffsetOfLegacyOSObject = 88;
      }

      v6->_vtableOffsetsCount = 3;
      v21 = malloc_type_malloc(0x18uLL, 0x100004000313F17uLL);
      v6->_vtableOffsets = v21;
      *v21 = v6->_vtableOffsetOfRemoteDriverKitOSObject;
      v21[1] = v6->_vtableOffsetOfLocalDriverKitOSObject;
      v21[2] = v6->_vtableOffsetOfLegacyOSObject;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  vtableOffsets = self->_vtableOffsets;
  if (vtableOffsets)
  {
    free(vtableOffsets);
  }

  v4.receiver = self;
  v4.super_class = VMUObjectIdentifierDriverKitSupport;
  [(VMUObjectIdentifierDriverKitSupport *)&v4 dealloc];
}

- (id)_fieldsFromStructureLayout:(id *)layout withOffset:(unint64_t)offset
{
  offsetCopy = offset;
  v7 = objc_opt_new();
  var4 = layout->var4;
  if (var4)
  {
    p_var3 = &layout->var5[0].var3;
    do
    {
      v10 = task_peek_string(self->_task, *(p_var3 - 3));
      v11 = task_peek_string(self->_task, *(p_var3 - 2));
      v12 = [VMUMutableFieldInfo alloc];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
      v15 = *(p_var3 - 2);
      v16 = *p_var3;
      p_var3 += 5;
      v17 = [(VMUFieldInfo *)v12 initWithName:v13 type:v14 scan:1 offset:(v15 + offsetCopy) size:v16];

      [v7 addObject:v17];
      --var4;
    }

    while (var4);
  }

  return v7;
}

- (id)_fieldsOfLegacyOSObject:(id)object
{
  v29[19] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  pointerSize = [objectCopy pointerSize];
  v28 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"server" type:@"^{IOUserServer_IVars}" scan:1 offset:0 size:pointerSize];
  v26 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRefsListEntryNext" type:@"^v" scan:4 offset:8 size:pointerSize];
  v25 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRefsListEntryPrev" type:@"^v" scan:4 offset:16 size:pointerSize];
  v27 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"objectRef" type:@"Q" scan:0 offset:24 size:8];
  v23 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"flags" type:@"Q" scan:0 offset:32 size:8];
  v22 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"sendRights" type:@"L" scan:0 offset:40 size:4];
  v24 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteQueueCount" type:@"L" scan:0 offset:44 size:4];
  v21 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteMethodsCount" type:@"L" scan:0 offset:48 size:4];
  v20 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteQueues" type:@"^Q" scan:1 offset:56 size:pointerSize];
  v19 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"remoteMethods" type:@"^Q" scan:1 offset:64 size:pointerSize];
  v18 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queueAlloc" type:@"L" scan:0 offset:72 size:4];
  v5 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queueArray" type:@"^@IODispatchQueue" scan:1 offset:80 size:pointerSize];
  v17 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"vtable" type:@"^" scan:0 offset:88 size:pointerSize];
  v16 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"refcount" type:@"l" scan:0 offset:96 size:4];
  v6 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"reserved" type:@"l" scan:0 offset:100 size:4];
  v15 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"meta" type:@"@" scan:1 offset:104 size:pointerSize];
  v7 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"metaClassPrivate" type:@"^{OSMetaClassPrivate}" scan:1 offset:112 size:pointerSize];
  v14 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"retainCount" type:@"i" scan:0 offset:120 size:4];
  v8 = MEMORY[0x1E696AEC0];
  className = [objectCopy className];

  v10 = [v8 stringWithFormat:@"^{%@_IVars}", className];

  v11 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"ivars" type:v10 scan:1 offset:128 size:pointerSize];
  v29[0] = v28;
  v29[1] = v26;
  v29[2] = v25;
  v29[3] = v27;
  v29[4] = v23;
  v29[5] = v22;
  v29[6] = v24;
  v29[7] = v21;
  v29[8] = v20;
  v29[9] = v19;
  v29[10] = v18;
  v29[11] = v5;
  v29[12] = v17;
  v29[13] = v16;
  v29[14] = v6;
  v29[15] = v15;
  v29[16] = v7;
  v29[17] = v14;
  v29[18] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:19];

  return v13;
}

- (id)_fieldsOfOSObject:(id)object startOffset:(unint64_t)offset
{
  v19[7] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  pointerSize = [objectCopy pointerSize];
  v18 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"vtable" type:@"^" scan:0 offset:offset size:pointerSize];
  v17 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"refcount" type:@"l" scan:0 offset:(offset + 8) size:4];
  v7 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"reserved" type:@"l" scan:0 offset:(offset + 12) size:4];
  v8 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"meta" type:@"@" scan:1 offset:(offset + 16) size:pointerSize];
  v9 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"metaClassPrivate" type:@"^{OSMetaClassPrivate}" scan:1 offset:(offset + 24) size:pointerSize];
  v10 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"extra" type:@"i" scan:0 offset:(offset + 32) size:4];
  v11 = MEMORY[0x1E696AEC0];
  displayName = [objectCopy displayName];

  v13 = [v11 stringWithFormat:@"^{%@_IVars}", displayName];

  v14 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"ivars" type:v13 scan:1 offset:(offset + 40) size:pointerSize];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v7;
  v19[3] = v8;
  v19[4] = v9;
  v19[5] = v10;
  v19[6] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:7];

  return v15;
}

- (id)_fieldsOfRemoteDriverKitOSObject:(id)object
{
  vtableOffsetOfRemoteDriverKitOSObject = self->_vtableOffsetOfRemoteDriverKitOSObject;
  v6 = self->_privateFieldsOfRemoteDriverKitOSObject;
  v7 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfOSObject:object startOffset:vtableOffsetOfRemoteDriverKitOSObject];
  v8 = [(NSArray *)v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)_fieldsOfLocalDriverKitOSObject:(id)object
{
  vtableOffsetOfLocalDriverKitOSObject = self->_vtableOffsetOfLocalDriverKitOSObject;
  v6 = self->_privateFieldsOfLocalDriverKitOSObject;
  v7 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfOSObject:object startOffset:vtableOffsetOfLocalDriverKitOSObject];
  v8 = [(NSArray *)v6 arrayByAddingObjectsFromArray:v7];

  return v8;
}

- (id)classInfoForDriverKitOSClassScan
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"struct OSClassScan" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitOSMetaClassPrivate
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"struct OSMetaClassPrivate" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitOSMetaClass
{
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v3 = [WeakRetained classInfoWithNonobjectType:@"OSMetaClass" binaryPath:@"DriverKit"];

  return v3;
}

- (id)classInfoForDriverKitMemory:(void *)memory length:(unint64_t)length atOffset:(unint64_t)offset translatedIsa:(unint64_t)isa symbol:(_CSTypeRef)symbol remoteAddress:(unint64_t)address
{
  opaque_2 = symbol._opaque_2;
  opaque_1 = symbol._opaque_1;
  __s1 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
  v15 = [WeakRetained _isaPointerRefersToVTable:isa remoteAddress:address symbol:opaque_1 symbolNameOut:{opaque_2, &__s1}];

  if (!__s1)
  {
LABEL_6:
    classInfoForDriverKitOSMetaClass = 0;
    goto LABEL_23;
  }

  if (!v15)
  {
    if (!offset && strstr(__s1, "_Class"))
    {
      if (length < 0x28)
      {
        [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSClassScan];
      }

      else
      {
        [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSMetaClassPrivate];
      }
      classInfoForDriverKitOSMetaClass = ;
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s1 + 11];
  if ([v16 hasSuffix:@"MetaClass"])
  {
    classInfoForDriverKitOSMetaClass = [(VMUObjectIdentifierDriverKitSupport *)self classInfoForDriverKitOSMetaClass];
  }

  else
  {
    if (offset)
    {
      CSSymbolGetSymbolOwner();
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
      classInfoForDriverKitOSMetaClass = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:v16 binaryPath:v18 type:128];

      if (self->_vtableOffsetOfRemoteDriverKitOSObject == offset)
      {
        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfRemoteDriverKitOSObject:classInfoForDriverKitOSMetaClass];
      }

      else if (self->_vtableOffsetOfLocalDriverKitOSObject == offset)
      {
        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfLocalDriverKitOSObject:classInfoForDriverKitOSMetaClass];
      }

      else
      {
        if (self->_vtableOffsetOfLegacyOSObject != offset)
        {
          goto LABEL_22;
        }

        v19 = [(VMUObjectIdentifierDriverKitSupport *)self _fieldsOfLegacyOSObject:classInfoForDriverKitOSMetaClass];
      }

      v20 = v19;
      if (v19)
      {
        [classInfoForDriverKitOSMetaClass setFields:v19];
      }

      goto LABEL_22;
    }

    classInfoForDriverKitOSMetaClass = 0;
  }

LABEL_22:

LABEL_23:

  return classInfoForDriverKitOSMetaClass;
}

- (id)driverKitClassInfoForMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address
{
  vtableOffsetsCount = self->_vtableOffsetsCount;
  if (vtableOffsetsCount)
  {
    for (i = 0; i < vtableOffsetsCount; ++i)
    {
      v11 = self->_vtableOffsets[i];
      if (v11 + 8 <= length)
      {
        WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
        v13 = [WeakRetained _classInfoForMemory:memory length:length atOffset:v11 remoteAddress:address];

        if (v13)
        {
          goto LABEL_8;
        }

        vtableOffsetsCount = self->_vtableOffsetsCount;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)_labelForDriverKitOSClassLoadInformation:(void *)information length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (HIDWORD(*information))
  {
    v5 = (*information & 7) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && (WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier), [WeakRetained symbolicator], CSSymbolicatorGetSymbolWithAddressAtTime(), WeakRetained, (CSIsNull() & 1) == 0))
  {
    Name = CSSymbolGetName();
    if (Name)
    {
      Name = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
    }
  }

  else
  {
    Name = 0;
  }

  return Name;
}

- (id)_labelForDriverKitOSMetaClass:(void *)class length:(unint64_t)length remoteAddress:(unint64_t)address
{
  if (self->_vtableOffsetsCount)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(class + self->_vtableOffsets[v9]);
      WeakRetained = objc_loadWeakRetained(&self->_objectIdentifier);
      v12 = [WeakRetained translateIsaPointer:v10];

      if (HIDWORD(v12) && (v12 & 7) == 0)
      {
        v14 = objc_loadWeakRetained(&self->_objectIdentifier);
        [v14 symbolicator];
        SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime();
        v17 = v16;

        if ((CSIsNull() & 1) == 0)
        {
          v22 = 0;
          v18 = objc_loadWeakRetained(&self->_objectIdentifier);
          v19 = [v18 _isaPointerRefersToVTable:v12 remoteAddress:address symbol:SymbolWithAddressAtTime symbolNameOut:{v17, &v22}];

          if (v19)
          {
            break;
          }
        }
      }

      if (++v9 >= self->_vtableOffsetsCount)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22 + 11];
LABEL_16:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)labelForDriverKitMemory:(void *)memory length:(unint64_t)length remoteAddress:(unint64_t)address class:(id)class
{
  classCopy = class;
  className = [classCopy className];
  if ([className isEqualToString:@"struct OSClassScan"])
  {

LABEL_4:
    v14 = [(VMUObjectIdentifierDriverKitSupport *)self _labelForDriverKitOSClassLoadInformation:memory length:length remoteAddress:address];
LABEL_5:
    v15 = v14;
    goto LABEL_6;
  }

  className2 = [classCopy className];
  v13 = [className2 isEqualToString:@"struct OSMetaClassPrivate"];

  if (v13)
  {
    goto LABEL_4;
  }

  className3 = [classCopy className];
  v18 = [className3 isEqualToString:@"OSMetaClass"];

  if (v18)
  {
    v14 = [(VMUObjectIdentifierDriverKitSupport *)self _labelForDriverKitOSMetaClass:memory length:length remoteAddress:address];
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

@end