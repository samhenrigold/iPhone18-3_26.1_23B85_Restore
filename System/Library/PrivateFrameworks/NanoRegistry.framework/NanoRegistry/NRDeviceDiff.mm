@interface NRDeviceDiff
- (BOOL)isEqual:(id)equal;
- (NRDeviceDiff)initWithCoder:(id)coder;
- (NRDeviceDiff)initWithDiffPropertyDiffs:(id)diffs;
- (NRDeviceDiff)initWithProtobuf:(id)protobuf;
- (NRPBDeviceDiff)protobuf;
- (id)description;
- (unint64_t)hash;
- (void)_createIndex;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceDiff

- (NRDeviceDiff)initWithDiffPropertyDiffs:(id)diffs
{
  diffsCopy = diffs;
  v10.receiver = self;
  v10.super_class = NRDeviceDiff;
  v6 = [(NRDeviceDiff *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_diffPropertyDiffs, diffs), ![diffsCopy count]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)_createIndex
{
  v16 = *MEMORY[0x1E69E9840];
  [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:*(self + 8) name:@"device property diff type" owner:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  obj = *(self + 8);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v6 name:@"device property diff type key" classes:v7 owner:self];

        v8 = [*(self + 8) objectForKeyedSubscript:v6];
        v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        [NRUnarchivedObjectVerifier unarchivingVerifyObjectClasses:v8 name:@"device property diff type property" classes:v9 owner:self];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }
}

- (NRDeviceDiff)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(NRDeviceDiff *)self init];
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
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"properties"];
    diffPropertyDiffs = v5->_diffPropertyDiffs;
    v5->_diffPropertyDiffs = v13;

    [NRUnarchivedObjectVerifier unarchivingVerifyObjectIsNotNil:v5->_diffPropertyDiffs name:@"device property diff type" owner:v5];
    [(NRDeviceDiff *)v5 _createIndex];
LABEL_5:
    v9 = v5;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [[NRPBDeviceDiff alloc] initWithData:v6];
  v9 = [(NRDeviceDiff *)v5 initWithProtobuf:v8];

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(NRDeviceDiff *)self protobuf];
  data = [protobuf data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (NRDeviceDiff)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = NRDeviceDiff;
  v5 = [(NRDeviceDiff *)&v21 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = 0;
    if (!protobufCopy)
    {
      goto LABEL_10;
    }

LABEL_3:
    for (i = protobufCopy[2]; ; i = 0)
    {
      v9 = i;
      v10 = [v9 count];

      if (v7 >= v10)
      {
        break;
      }

      if (protobufCopy)
      {
        v11 = protobufCopy[2];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [v12 objectAtIndexedSubscript:v7];

      if (protobufCopy)
      {
        v14 = protobufCopy[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = [v15 objectAtIndexedSubscript:v7];

      v17 = [[NRDevicePropertyDiffType alloc] initWithProtobuf:v16];
      [dictionary setObject:v17 forKeyedSubscript:v13];

      ++v7;
      if (protobufCopy)
      {
        goto LABEL_3;
      }

LABEL_10:
      ;
    }

    v18 = [dictionary copy];
    diffPropertyDiffs = v5->_diffPropertyDiffs;
    v5->_diffPropertyDiffs = v18;

    [(NRDeviceDiff *)v5 _createIndex];
  }

  return v5;
}

- (NRPBDeviceDiff)protobuf
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  array = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceDiff *)v3 setNames:array];

  array2 = [MEMORY[0x1E695DF70] array];
  [(NRPBDeviceDiff *)v3 setDiffs:array2];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = 8;
  obj = self->_diffPropertyDiffs;
  v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = @"capabilities";
    v30 = @"capabilities";
    v31 = *v35;
    do
    {
      v11 = 0;
      v32 = v8;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = [*(&self->super.super.isa + v6) objectForKeyedSubscript:{v12, v30, v31}];
        if ([v12 isEqual:v10])
        {
          v14 = v6;
          selfCopy = self;
          diff = [v13 diff];
          value = [diff value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            diff2 = [v13 diff];
            value2 = [diff2 value];

            v21 = [[NRMiniUUIDSet alloc] initWithUUIDSet:value2];
            v22 = [[NRDevicePropertyDiff alloc] initWithValue:v21];
            v23 = -[NRDevicePropertyDiffType initWithDiff:andChangeType:]([NRDevicePropertyDiffType alloc], "initWithDiff:andChangeType:", v22, [v13 changeType]);

            v13 = v23;
          }

          self = selfCopy;
          v6 = v14;
          v9 = v31;
          v8 = v32;
          v10 = v30;
        }

        if (v3)
        {
          v24 = *(v3 + 16);
          [v24 addObject:v12];

          v25 = *(v3 + 8);
        }

        else
        {
          [0 addObject:v12];
          v25 = 0;
        }

        v26 = v25;
        protobuf = [v13 protobuf];
        [v26 addObject:protobuf];

        ++v11;
      }

      while (v8 != v11);
      v28 = [(NSDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v8 = v28;
    }

    while (v28);
  }

  return v3;
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_diffPropertyDiffs;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)self->_diffPropertyDiffs objectForKeyedSubscript:v9, v13];
        v11 = [v9 hash] - v7 + 32 * v7;
        v7 = [v10 hash] - v11 + 32 * v11;
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = NRDeviceDiff;
  if ([(NRDiffBase *)&v8 isEqual:equalCopy])
  {
    diffPropertyDiffs = self->_diffPropertyDiffs;
    if (diffPropertyDiffs == equalCopy[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSDictionary *)diffPropertyDiffs isEqual:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  allKeys = [(NSDictionary *)self->_diffPropertyDiffs allKeys];
  v3 = [allKeys sortedArrayUsingComparator:&__block_literal_global_20];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = &stru_1F5B7BE00;
    do
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v8);
        v11 = [(NSDictionary *)self->_diffPropertyDiffs objectForKeyedSubscript:v10];
        v12 = [v10 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
        v13 = [v11 description];
        v14 = [NRTextFormattingUtilities prefixLinesWithString:v12 withText:v13];

        v7 = [(__CFString *)v9 stringByAppendingString:v14];

        ++v8;
        v9 = v7;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = &stru_1F5B7BE00;
  }

  return v7;
}

@end