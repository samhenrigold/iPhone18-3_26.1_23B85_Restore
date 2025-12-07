@interface LWCR
+ (id)withData:(id)data withError:(id *)error;
+ (id)withVersion:(int64_t)version withConstraintCategory:(int64_t)category withRequirements:(id)requirements withError:(id *)error;
- (LWCR)init;
- (NSDictionary)dictionary;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation LWCR

- (id).cxx_construct
{
  *(self + 112) = 0;
  *(self + 89) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

- (NSDictionary)dictionary
{
  v2 = [*(self + 3) copy];

  return v2;
}

- (void)dealloc
{
  if (*(self + 2))
  {
    CEReleaseManagedContext();
  }

  v3.receiver = self;
  v3.super_class = LWCR;
  [(LWCR *)&v3 dealloc];
}

- (LWCR)init
{
  v6.receiver = self;
  v6.super_class = LWCR;
  v2 = [(LWCR *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1);
    *(v2 + 1) = 0;

    *(v3 + 2) = 0;
  }

  return v3;
}

+ (id)withVersion:(int64_t)version withConstraintCategory:(int64_t)category withRequirements:(id)requirements withError:(id *)error
{
  v20[3] = *MEMORY[0x29EDCA608];
  requirementsCopy = requirements;
  v11 = MEMORY[0x29EDB8E00];
  v19[0] = @"vers";
  v12 = [MEMORY[0x29EDBA070] numberWithLongLong:version];
  v20[0] = v12;
  v19[1] = @"comp";
  v13 = [MEMORY[0x29EDBA070] numberWithLongLong:version == 1];
  v20[1] = v13;
  v19[2] = @"ccat";
  v14 = [MEMORY[0x29EDBA070] numberWithLongLong:category];
  v20[2] = v14;
  v15 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v16 = [v11 dictionaryWithDictionary:v15];

  if (requirementsCopy)
  {
    [v16 setObject:requirementsCopy forKeyedSubscript:@"reqs"];
  }

  if (CESerializeCFDictionaryWithOptions() == *MEMORY[0x29EDC9178])
  {
    v17 = [self withData:0 withError:error];
  }

  else if (error)
  {
    [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)withData:(id)data withError:(id *)error
{
  v25[2] = *MEMORY[0x29EDCA608];
  dataCopy = data;
  v23 = 0;
  v22 = 1;
  v7 = CEManagedContextFromCFDataWithOptions();
  v8 = MEMORY[0x29EDC9178];
  if (v7 == *MEMORY[0x29EDC9178])
  {
    v10 = objc_alloc_init(LWCR);
    objc_storeStrong(v10 + 1, data);
    v11 = v23;
    *(v10 + 2) = v23;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    TLE::LWCR::loadFromCE((v10 + 32), v11, &v19);
    if (v19)
    {
      if (error)
      {
        v12 = MEMORY[0x29EDB9FA0];
        v24[0] = *MEMORY[0x29EDB9F18];
        v13 = [MEMORY[0x29EDBA070] numberWithInt:?];
        v25[0] = v13;
        v24[1] = *MEMORY[0x29EDB9E38];
        v14 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v15 = [v14 initWithBytes:v20 length:v21 encoding:4];
        v25[1] = v15;
        v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
        *error = [v12 errorWithDomain:@"LWCRError" code:1 userInfo:v16];
      }
    }

    else
    {
      if (CEQueryContextToCFDictionary() == *v8)
      {
        v18 = *(v10 + 3);
        *(v10 + 3) = 0;

        v9 = v10;
        goto LABEL_8;
      }

      if (error)
      {
        [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
        *error = v9 = 0;
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_8:

    goto LABEL_10;
  }

  if (error)
  {
    [MEMORY[0x29EDB9FA0] errorWithDomain:@"LWCRError" code:2 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:

  return v9;
}

@end