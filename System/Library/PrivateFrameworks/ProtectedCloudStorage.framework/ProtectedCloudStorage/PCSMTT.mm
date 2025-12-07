@interface PCSMTT
- (PCSMTT)init;
- (PCSMTT)initWithCoder:(id)coder;
- (PCSMTT)initWithMTT:(id)t;
- (id)description;
- (id)jsonDict;
- (id)measurePoint:(id)point;
- (void)completePoint:(id)point;
- (void)encodeWithCoder:(id)coder;
- (void)measure:(id)measure block:(id)block;
- (void)measure:(id)measure success:(BOOL)success time:(double)time;
- (void)start;
- (void)stop;
@end

@implementation PCSMTT

- (PCSMTT)init
{
  v9.receiver = self;
  v9.super_class = PCSMTT;
  v2 = [(PCSMTT *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;

    objc_storeStrong(&v2->_parentUUID, v2->_UUID);
    v5 = objc_opt_new();
    completedPoints = v2->_completedPoints;
    v2->_completedPoints = v5;

    [(PCSMTT *)v2 start];
    v7 = v2;
  }

  return v2;
}

- (PCSMTT)initWithMTT:(id)t
{
  tCopy = t;
  v5 = [(PCSMTT *)self init];
  if (v5)
  {
    uUID = [tCopy UUID];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = uUID;
  }

  return v5;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"[MTT:%@:%lf", self->_UUID, *&self->_time];
  if ([(NSMutableArray *)self->_completedPoints count])
  {
    [v3 appendString:@"<"];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_completedPoints;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 appendFormat:@"%@", *(*(&v10 + 1) + 8 * i)];
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [v3 appendString:@">"];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (id)jsonDict
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  completedPoints = [(PCSMTT *)self completedPoints];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(completedPoints, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  completedPoints2 = [(PCSMTT *)self completedPoints];
  v7 = [completedPoints2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(completedPoints2);
        }

        jsonDict = [*(*(&v19 + 1) + 8 * i) jsonDict];
        [v5 addObject:jsonDict];
      }

      v8 = [completedPoints2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v23[0] = @"uuid";
  uUID = [(PCSMTT *)self UUID];
  uUIDString = [uUID UUIDString];
  v24[0] = uUIDString;
  v23[1] = @"time";
  v14 = MEMORY[0x1E696AD98];
  [(PCSMTT *)self time];
  v15 = [v14 numberWithDouble:?];
  v24[1] = v15;
  v24[2] = v5;
  v23[2] = @"completedPoints";
  v23[3] = @"returnedExistingIdentity";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PCSMTT returnedExistingIdentity](self, "returnedExistingIdentity")}];
  v24[3] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];

  return v17;
}

- (void)start
{
  self->_startTime = [MEMORY[0x1E695DF00] date];

  MEMORY[0x1EEE66BB8]();
}

- (void)stop
{
  if (self->_startTime)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:self->_startTime];
    self->_time = v4 + self->_time;

    startTime = self->_startTime;
    self->_startTime = 0;
  }
}

- (void)measure:(id)measure block:(id)block
{
  blockCopy = block;
  v8 = [(PCSMTT *)self measurePoint:measure];
  v7 = blockCopy[2](blockCopy);

  [v8 complete:v7];
}

- (void)measure:(id)measure success:(BOOL)success time:(double)time
{
  successCopy = success;
  v8 = [(PCSMTT *)self measurePoint:measure];
  [v8 complete:successCopy time:time];
  [(PCSMTT *)self completePoint:v8];
}

- (id)measurePoint:(id)point
{
  pointCopy = point;
  v5 = [[PCSMTTPoint alloc] initWithMTT:self name:pointCopy];

  return v5;
}

- (void)completePoint:(id)point
{
  v21 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  if (completePoint__onceToken != -1)
  {
    [PCSMTT completePoint:];
  }

  v5 = completePoint__log;
  if (os_log_type_enabled(completePoint__log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUID = [(PCSMTT *)self UUID];
    parentUUID = [(PCSMTT *)self parentUUID];
    name = [pointCopy name];
    [pointCopy time];
    v11 = 138413314;
    v12 = uUID;
    v13 = 2112;
    v14 = parentUUID;
    v15 = 2112;
    v16 = name;
    v17 = 2048;
    v18 = v10;
    v19 = 1024;
    success = [pointCopy success];
    _os_log_impl(&dword_1B229C000, v6, OS_LOG_TYPE_DEFAULT, "measure:%@:%@:%@:%f:%d", &v11, 0x30u);
  }

  [(NSMutableArray *)self->_completedPoints addObject:pointCopy];
}

uint64_t __24__PCSMTT_completePoint___block_invoke()
{
  completePoint__log = os_log_create("PCSMTT", "PCSMTT");

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_parentUUID forKey:@"parentUUID"];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_time];
  [coderCopy encodeObject:v6 forKey:@"time"];

  [coderCopy encodeObject:self->_completedPoints forKey:@"points"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PCSMTT returnedExistingIdentity](self, "returnedExistingIdentity")}];
  [coderCopy encodeObject:v7 forKey:@"returnedExistingIdentity"];
}

- (PCSMTT)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PCSMTT *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentUUID"];
    parentUUID = v5->_parentUUID;
    v5->_parentUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    [v10 doubleValue];
    v5->_time = v11;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"points"];
    completedPoints = v5->_completedPoints;
    v5->_completedPoints = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"returnedExistingIdentity"];
    -[PCSMTT setReturnedExistingIdentity:](v5, "setReturnedExistingIdentity:", [v17 BOOLValue]);

    v18 = v5;
  }

  return v5;
}

@end