@interface CBMutableService
- (CBMutableService)initWithDictionary:(id)dictionary;
- (CBMutableService)initWithType:(CBUUID *)UUID primary:(BOOL)isPrimary;
- (id)description;
- (void)dealloc;
- (void)handlePowerNotOn;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CBMutableService

- (CBMutableService)initWithType:(CBUUID *)UUID primary:(BOOL)isPrimary
{
  v4 = isPrimary;
  v7 = UUID;
  data = [(CBUUID *)v7 data];
  if ([data length] != 2)
  {
    data2 = [(CBUUID *)v7 data];
    v10 = [data2 length];

    if (v10 == 16)
    {
      goto LABEL_5;
    }

    data = [MEMORY[0x1E696AAA8] currentHandler];
    [data handleFailureInMethod:a2 object:self file:@"CBService.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"UUID.data.length == 2 || UUID.data.length == 16"}];
  }

LABEL_5:
  v14.receiver = self;
  v14.super_class = CBMutableService;
  v11 = [(CBAttribute *)&v14 initWithUUID:v7];
  v12 = v11;
  if (v11)
  {
    [(CBService *)v11 setIsPrimary:v4];
    [(CBMutableService *)v12 addObserver:v12 forKeyPath:@"characteristics" options:0 context:0];
  }

  return v12;
}

- (CBMutableService)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgUUID"];
  v6 = [CBUUID UUIDWithData:v5];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgType"];
  v8 = -[CBMutableService initWithType:primary:](self, "initWithType:primary:", v6, [v7 BOOLValue]);

  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"kCBMsgArgAttributeID"];
    ID = v8->_ID;
    v8->_ID = v9;
  }

  return v8;
}

- (void)dealloc
{
  [(CBMutableService *)self removeObserver:self forKeyPath:@"characteristics"];
  v3.receiver = self;
  v3.super_class = CBMutableService;
  [(CBMutableService *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x1E69E9840];
  if ([path isEqualToString:{@"characteristics", object, change, context}])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    characteristics = [(CBService *)self characteristics];
    v8 = [characteristics countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(characteristics);
          }

          [*(*(&v12 + 1) + 8 * v11++) setService:self];
        }

        while (v9 != v11);
        v9 = [characteristics countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)handlePowerNotOn
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  characteristics = [(CBService *)self characteristics];
  v3 = [characteristics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(characteristics);
        }

        [*(*(&v7 + 1) + 8 * v6++) handlePowerNotOn];
      }

      while (v4 != v6);
      v4 = [characteristics countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if ([(CBService *)self isPrimary])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  uUID = [(CBAttribute *)self UUID];
  includedServices = [(CBService *)self includedServices];
  characteristics = [(CBService *)self characteristics];
  v9 = [v3 stringWithFormat:@"<%@: %p Primary = %s, UUID = %@, Included Services = %@, Characteristics = %@>", v4, self, v5, uUID, includedServices, characteristics];

  return v9;
}

@end