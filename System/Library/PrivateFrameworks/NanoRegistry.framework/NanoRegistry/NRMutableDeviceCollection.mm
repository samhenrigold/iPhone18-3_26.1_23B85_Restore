@interface NRMutableDeviceCollection
+ (id)diffFrom:(id)from to:(id)to;
+ (void)parseDiff:(id)diff forPropertyChange:(id)change withBlock:(id)block;
- (BOOL)allAltAccount;
- (BOOL)isEqual:(id)equal;
- (BOOL)paired;
- (NRMutableDevice)activeDevice;
- (NRMutableDeviceCollection)init;
- (NRMutableDeviceCollection)initWithCoder:(id)coder;
- (NRMutableDeviceCollection)initWithProtobuf:(id)protobuf;
- (NRPBMutableDeviceCollection)protobuf;
- (NSUUID)activeDeviceID;
- (id)_diffsToChangeActiveDeviceToDeviceID:(id)d;
- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)_createIndex;
- (void)child:(id)child didApplyDiff:(id)diff;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)removeDeviceForPairingID:(id)d;
- (void)setActiveDeviceID:(id)d;
- (void)setDevice:(id)device forPairingID:(id)d;
@end

@implementation NRMutableDeviceCollection

- (NRMutableDeviceCollection)init
{
  v8.receiver = self;
  v8.super_class = NRMutableDeviceCollection;
  v2 = [(NRMutableStateBase *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    deviceCollection = v2->_deviceCollection;
    v2->_deviceCollection = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    childMap = v2->_childMap;
    v2->_childMap = dictionary2;
  }

  return v2;
}

- (void)setDevice:(id)device forPairingID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  deviceCollection = self->_deviceCollection;
  deviceCopy = device;
  v9 = [(NSMutableDictionary *)deviceCollection objectForKeyedSubscript:dCopy];
  v10 = [NRMutableDevice diffFrom:v9 to:deviceCopy];

  if (v10)
  {
    v11 = [[NRDeviceDiffType alloc] initWithDiff:v10 andChangeType:1];
    v12 = [NRDeviceCollectionDiff alloc];
    v16 = dCopy;
    v17[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [(NRDeviceCollectionDiff *)v12 initWithDeviceCollectionDiffDeviceDiffs:v13];

    v15 = [(NRMutableStateBase *)self applyDiff:v14];
  }
}

- (void)removeDeviceForPairingID:(id)d
{
  v11[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
  v6 = [NRDeviceCollectionDiff alloc];
  v10 = dCopy;
  v11[0] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = [(NRDeviceCollectionDiff *)v6 initWithDeviceCollectionDiffDeviceDiffs:v7];
  v9 = [(NRMutableStateBase *)self applyDiff:v8];
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = NRMutableDeviceCollection;
  [(NRMutableStateBase *)&v13 invalidate];
  [(NSMutableDictionary *)self->_childMap removeAllObjects];
  allValues = [(NSMutableDictionary *)self->_deviceCollection allValues];
  [(NSMutableDictionary *)self->_deviceCollection removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (id)diffFrom:(id)from to:(id)to
{
  v51 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  v7 = fromCopy;
  v8 = toCopy;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = 0x1ED6EF000uLL;
  v40 = v8;
  if ([v7 count])
  {
    v11 = MEMORY[0x1E695DFD8];
    allKeys = [v7[5] allKeys];
    v13 = [v11 setWithArray:allKeys];
    v14 = [v13 mutableCopy];

    v15 = MEMORY[0x1E695DFD8];
    allKeys2 = [v8[5] allKeys];
    v17 = [v15 setWithArray:allKeys2];

    [v14 minusSet:v17];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          v24 = [[NRDeviceDiffType alloc] initWithDiff:0 andChangeType:2];
          [dictionary setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v20);
    }

    v10 = 0x1ED6EF000uLL;
  }

  if ([v8 count])
  {
    v25 = MEMORY[0x1E695DFD8];
    allKeys3 = [v8[5] allKeys];
    v27 = [v25 setWithArray:allKeys3];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v27;
    v28 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v41 + 1) + 8 * j);
          if (v7)
          {
            v33 = [*(v7 + *(v10 + 372)) objectForKeyedSubscript:*(*(&v41 + 1) + 8 * j)];
          }

          else
          {
            v33 = 0;
          }

          v34 = [*(v8 + *(v10 + 372)) objectForKeyedSubscript:v32];
          v35 = [NRMutableDevice diffFrom:v33 to:v34];
          if (v35)
          {
            v36 = [[NRDeviceDiffType alloc] initWithDiff:v35 andChangeType:v33 != 0];
            [dictionary setObject:v36 forKeyedSubscript:v32];

            v8 = v40;
          }

          v10 = 0x1ED6EF000;
        }

        v29 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v29);
    }
  }

  if ([dictionary count])
  {
    v37 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:dictionary];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)applyDiff:(id)diff upOnly:(BOOL)only notifyParent:(BOOL)parent unconditional:(BOOL)unconditional
{
  unconditionalCopy = unconditional;
  parentCopy = parent;
  onlyCopy = only;
  v49 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  if (![diffCopy count])
  {
    v32 = 0;
    v33 = diffCopy;
    goto LABEL_28;
  }

  v36 = parentCopy;
  v38 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = selfCopy;
  v13 = selfCopy;
  if (!unconditionalCopy)
  {
    v13 = [(NRMutableDeviceCollection *)selfCopy copyWithZone:0];
  }

  v37 = v13;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = diffCopy;
  v14 = diffCopy;
  v43 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v43)
  {
    v41 = v14;
    v42 = *v45;
    v40 = v12;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(v14);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = [v14 objectForKeyedSubscript:v16];
        diff = [v17 diff];
        v19 = [(NSMutableDictionary *)v12->_deviceCollection objectForKeyedSubscript:v16];
        v20 = v19;
        if (!diff)
        {
LABEL_13:
          [v20 setParentDelegate:0];
          [(NSMutableDictionary *)v12->_deviceCollection removeObjectForKey:v16];
          childMap = v12->_childMap;
          v23 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v20];
          [(NSMutableDictionary *)childMap removeObjectForKey:v23];
LABEL_16:

          v14 = v41;
          goto LABEL_17;
        }

        if (!v19)
        {
          v23 = objc_alloc_init(NRMutableDevice);
          v24 = [(NRMutableDevice *)v23 applyDiff:diff upOnly:0 notifyParent:0 unconditional:1];
          if ([(NRMutableDevice *)v23 count])
          {
            [(NSMutableDictionary *)v12->_deviceCollection setObject:v23 forKeyedSubscript:v16];
            v25 = v12->_childMap;
            [MEMORY[0x1E696B098] valueWithNonretainedObject:v23];
            v26 = onlyCopy;
            v28 = v27 = unconditionalCopy;
            [(NSMutableDictionary *)v25 setObject:v16 forKeyedSubscript:v28];

            unconditionalCopy = v27;
            onlyCopy = v26;
            v12 = v40;
            [(NRMutableStateBase *)v23 setParentDelegate:v40];
          }

          goto LABEL_16;
        }

        if (!onlyCopy)
        {
          v21 = [v19 applyDiff:diff upOnly:0 notifyParent:0 unconditional:unconditionalCopy];
          if (![v20 count])
          {
            goto LABEL_13;
          }
        }

LABEL_17:
      }

      v43 = [v14 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v43);
  }

  v29 = v14;
  if (unconditionalCopy)
  {
    v30 = v38;
    diffCopy = v39;
    v31 = v37;
    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v36)
    {
      [(NRMutableStateBase *)v12 notifyParentWithDiff:v29];
    }

    [(NRMutableStateBase *)v12 notifyObserversWithDiff:v29];
    goto LABEL_27;
  }

  v31 = v37;
  v34 = [objc_opt_class() diffFrom:v37 to:v12];

  v29 = v34;
  v30 = v38;
  diffCopy = v39;
  if (v29)
  {
    goto LABEL_24;
  }

LABEL_27:

  objc_autoreleasePoolPop(v30);
  v33 = v29;
  v32 = v33;
LABEL_28:

  return v32;
}

- (void)child:(id)child didApplyDiff:(id)diff
{
  v20[1] = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  childCopy = child;
  v8 = [childCopy count];
  v9 = [NRDeviceDiffType alloc];
  if (v8)
  {
    v10 = diffCopy;
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 2;
  }

  v12 = [(NRDeviceDiffType *)v9 initWithDiff:v10 andChangeType:v11];
  childMap = self->_childMap;
  v14 = [MEMORY[0x1E696B098] valueWithNonretainedObject:childCopy];

  v15 = [(NSMutableDictionary *)childMap objectForKeyedSubscript:v14];

  v16 = [NRDeviceCollectionDiff alloc];
  v19 = v15;
  v20[0] = v12;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = [(NRDeviceCollectionDiff *)v16 initWithDeviceCollectionDiffDeviceDiffs:v17];

  if (v18)
  {
    [(NRMutableStateBase *)self notifyParentWithDiff:v18];
    [(NRMutableStateBase *)self notifyObserversWithDiff:v18];
  }
}

- (void)_createIndex
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_deviceCollection;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v7 name:@"device collection dictionary key" classes:v8 owner:self];

        v9 = [(NSMutableDictionary *)self->_deviceCollection objectForKeyedSubscript:v7];
        v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v9 name:@"device collection dictionary value" classes:v10 owner:self];

        [v9 setParentDelegate:self];
        childMap = self->_childMap;
        v12 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v9];
        [(NSMutableDictionary *)childMap setObject:v7 forKeyedSubscript:v12];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (NRMutableDeviceCollection)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(NRMutableDeviceCollection *)self init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (!v6)
  {
    v10 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:3];
    v12 = [v10 setWithArray:{v11, v16, v17}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"devices"];
    deviceCollection = v5->_deviceCollection;
    v5->_deviceCollection = v13;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_deviceCollection name:@"device collection dictionary" owner:v5];
    [(NRMutableDeviceCollection *)v5 _createIndex];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBMutableDeviceCollection alloc] initWithData:v6];
  v9 = [(NRMutableDeviceCollection *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (NRMutableDeviceCollection)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(NRMutableDeviceCollection *)self init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    pairingIDs = [protobufCopy pairingIDs];
    v8 = [pairingIDs count];

    if (v8)
    {
      v9 = 0;
      do
      {
        pairingIDs2 = [protobufCopy pairingIDs];
        v11 = [pairingIDs2 objectAtIndexedSubscript:v9];

        if ([v11 length] == 16)
        {
          v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v11, "bytes")}];
          devices = [protobufCopy devices];
          v14 = [devices objectAtIndexedSubscript:v9];

          v15 = [[NRMutableDevice alloc] initWithProtobuf:v14];
          [(NSMutableDictionary *)dictionary setObject:v15 forKeyedSubscript:v12];
        }

        ++v9;
        pairingIDs3 = [protobufCopy pairingIDs];
        v17 = [pairingIDs3 count];
      }

      while (v9 < v17);
    }

    deviceCollection = v5->_deviceCollection;
    v5->_deviceCollection = dictionary;

    [(NRMutableDeviceCollection *)v5 _createIndex];
  }

  return v5;
}

- (NRPBMutableDeviceCollection)protobuf
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  [v3 setPairingIDs:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [v3 setDevices:array2];

  v6 = [(NSMutableDictionary *)self->_deviceCollection copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v19}];
        pairingIDs = [v3 pairingIDs];
        v15 = [MEMORY[0x1E695DEF0] fromUUID:v12];
        [pairingIDs addObject:v15];

        devices = [v3 devices];
        protobuf = [v13 protobuf];
        [devices addObject:protobuf];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRMutableDeviceCollection *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (unint64_t)hash
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_deviceCollection;
  v3 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v9 + 1) + 8 * i) hash] - v6 + 32 * v6;
      }

      v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
    goto LABEL_8;
  }

  deviceCollection = self->_deviceCollection;
  if (deviceCollection == v5->_deviceCollection)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = [(NSMutableDictionary *)deviceCollection isEqual:?];
  }

LABEL_8:

  return v7;
}

- (id)description
{
  v25 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_deviceCollection allKeys];
  v3 = [allKeys sortedArrayUsingComparator:&__block_literal_global_13];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = &stru_1F5B7BE00;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v8);
        v11 = objc_autoreleasePoolPush();
        v12 = [(NSMutableDictionary *)self->_deviceCollection objectForKeyedSubscript:v10];
        uUIDString = [v10 UUIDString];
        v14 = [uUIDString stringByPaddingToLength:36 withString:@" " startingAtIndex:0];

        v15 = [v12 description];
        v16 = [NRTextFormattingUtilities prefixLinesWithString:v14 withText:v15];

        v7 = [(__CFString *)v9 stringByAppendingString:v16];

        objc_autoreleasePoolPop(v11);
        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F5B7BE00;
  }

  return v7;
}

uint64_t __40__NRMutableDeviceCollection_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 UUIDString];
  v6 = [v4 UUIDString];

  v7 = [v5 compare:v6 options:0];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v6 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(NRMutableDeviceCollection *)selfCopy objectForKeyedSubscript:v10];
        v12 = [NRMutableDevice diffFrom:0 to:v11];
        v13 = [[NRDeviceDiffType alloc] initWithDiff:v12 andChangeType:0];
        [dictionary setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:dictionary];
  v15 = [v17 applyDiff:v14 upOnly:0 notifyParent:0 unconditional:1];

  return v17;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v8 = [(NSMutableDictionary *)self->_deviceCollection copy];
  v9 = [v8 countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (NRMutableDevice)activeDevice
{
  activeDeviceID = [(NRMutableDeviceCollection *)self activeDeviceID];
  v4 = [(NRMutableDeviceCollection *)self objectForKeyedSubscript:activeDeviceID];

  return v4;
}

- (NSUUID)activeDeviceID
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v3 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [(NRMutableDeviceCollection *)selfCopy objectForKeyedSubscript:v7, v13];
        v9 = [v8 objectForKeyedSubscript:@"isActive"];
        value = [v9 value];
        if ([value BOOLValue])
        {
          v11 = v7;

          goto LABEL_11;
        }
      }

      v4 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)setActiveDeviceID:(id)d
{
  v4 = [(NRMutableDeviceCollection *)self _diffsToChangeActiveDeviceToDeviceID:d];
  if (v4)
  {
    v7 = v4;
    v5 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v4];
    v6 = [(NRMutableStateBase *)self applyDiff:v5];

    v4 = v7;
  }
}

- (id)_diffsToChangeActiveDeviceToDeviceID:(id)d
{
  dCopy = d;
  activeDeviceID = [(NRMutableDeviceCollection *)self activeDeviceID];
  v6 = activeDeviceID;
  if (activeDeviceID == dCopy || ([activeDeviceID isEqual:dCopy] & 1) != 0)
  {
    dictionary = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    date = [MEMORY[0x1E695DF00] date];
    if (v6)
    {
      v9 = [NRDeviceDiff alloc];
      v10 = [NRMutableDevice diffsToActivate:0 withDate:date];
      v11 = [(NRDeviceDiff *)v9 initWithDiffPropertyDiffs:v10];

      v12 = [[NRDeviceDiffType alloc] initWithDiff:v11 andChangeType:1];
      [dictionary setObject:v12 forKeyedSubscript:v6];
    }

    if (dCopy)
    {
      v13 = [NRDeviceDiff alloc];
      v14 = [NRMutableDevice diffsToActivate:1 withDate:date];
      v15 = [(NRDeviceDiff *)v13 initWithDiffPropertyDiffs:v14];

      v16 = [[NRDeviceDiffType alloc] initWithDiff:v15 andChangeType:1];
      [dictionary setObject:v16 forKeyedSubscript:dCopy];
    }
  }

  return dictionary;
}

- (BOOL)paired
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  selfCopy = self;
  v3 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 = [(NRMutableDeviceCollection *)selfCopy objectForKeyedSubscript:*(*(&v9 + 1) + 8 * i), v9];
        isPaired = [v6 isPaired];

        if (isPaired)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)allAltAccount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v3 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = [(NRMutableDeviceCollection *)selfCopy objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i), v11];
        if ([v8 isPaired] && (objc_msgSend(v8, "isArchived") & 1) == 0)
        {
          isAltAccount = [v8 isAltAccount];
          v4 |= isAltAccount;
          v5 |= isAltAccount ^ 1;
        }
      }

      v3 = [(NRMutableDeviceCollection *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
    LOBYTE(v3) = (v5 ^ 1) & v4;
  }

  return v3 & 1;
}

+ (void)parseDiff:(id)diff forPropertyChange:(id)change withBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  changeCopy = change;
  blockCopy = block;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [diffCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = *v24;
    v19 = blockCopy + 16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(diffCopy);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [diffCopy objectForKeyedSubscript:{v11, v19}];
        diff = [v12 diff];
        v14 = [diff objectForKeyedSubscript:changeCopy];
        v15 = v14;
        if (v14)
        {
          changeType = [v14 changeType];
          diff2 = [v15 diff];
          value = [diff2 value];
          (*(blockCopy + 2))(blockCopy, v11, changeType, value);
        }
      }

      v9 = [diffCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }
}

@end