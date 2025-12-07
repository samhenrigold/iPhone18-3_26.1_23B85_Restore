@interface LACDTOLostModeState
+ (id)nullInstance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id)valid;
- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode;
- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode confirmed:(BOOL)confirmed;
- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode confirmed:(BOOL)confirmed createdAt:(id)at;
- (id)description;
@end

@implementation LACDTOLostModeState

- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode
{
  modeCopy = mode;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [(LACDTOLostModeState *)self initWithIsInLostMode:modeCopy confirmed:0 createdAt:v5];

  return v6;
}

- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode confirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  modeCopy = mode;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [(LACDTOLostModeState *)self initWithIsInLostMode:modeCopy confirmed:confirmedCopy createdAt:v7];

  return v8;
}

- (LACDTOLostModeState)initWithIsInLostMode:(BOOL)mode confirmed:(BOOL)confirmed createdAt:(id)at
{
  atCopy = at;
  v13.receiver = self;
  v13.super_class = LACDTOLostModeState;
  v10 = [(LACDTOLostModeState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_isInLostMode = mode;
    objc_storeStrong(&v10->_createdAt, at);
    v11->_confirmed = confirmed;
  }

  return v11;
}

+ (id)nullInstance
{
  v2 = [[LACDTOLostModeState alloc] initWithIsInLostMode:1];

  return v2;
}

- (BOOL)isValid:(id)valid
{
  validCopy = valid;
  if (self->_confirmed && [(NSDate *)self->_createdAt compare:validCopy]!= NSOrderedDescending)
  {
    v6 = [validCopy timeIntervalSinceDate:self->_createdAt];
    v5 = v7 <= LACDTOLostModeStateMaxAgeSeconds(v6);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isInLostMode = [v5 isInLostMode];
    if (isInLostMode == -[LACDTOLostModeState isInLostMode](self, "isInLostMode") && (v7 = [v5 confirmed], v7 == -[LACDTOLostModeState confirmed](self, "confirmed")))
    {
      createdAt = [v5 createdAt];
      createdAt2 = [(LACDTOLostModeState *)self createdAt];
      v8 = createdAt == createdAt2;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v29[6] = *MEMORY[0x1E69E9840];
  v3 = os_variant_allows_internal_security_policies();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v7 = MEMORY[0x1E696AEC0];
    if ([(LACDTOLostModeState *)self isInLostMode])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v28 = [v7 stringWithFormat:@"isInLostMode: %@", v8];
    v29[0] = v28;
    v9 = MEMORY[0x1E696AEC0];
    if ([(LACDTOLostModeState *)self confirmed])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v27 = [v9 stringWithFormat:@"confirmed: %@", v10];
    v29[1] = v27;
    v11 = MEMORY[0x1E696AEC0];
    createdAt = [(LACDTOLostModeState *)self createdAt];
    v25 = [v11 stringWithFormat:@"createdAt: %@", createdAt];
    v29[2] = v25;
    v12 = MEMORY[0x1E696AEC0];
    createdAt2 = [(LACDTOLostModeState *)self createdAt];
    [createdAt2 timeIntervalSince1970];
    v15 = [v12 stringWithFormat:@"createdAtTimestamp: %.2f", v14];
    v29[3] = v15;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E695DF00] now];
    if ([(LACDTOLostModeState *)self isValid:v17])
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = [v16 stringWithFormat:@"isValid: %@", v18];
    v29[4] = v19;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maxAge: %.2f", LACDTOLostModeStateMaxAgeSeconds(v19)];
    v29[5] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
    v22 = [v21 componentsJoinedByString:@" "];;
    v23 = [v4 stringWithFormat:@"<%@ %p %@>", v6, self, v22];;
  }

  else
  {
    v23 = [v4 stringWithFormat:@"<%@ %p>", v5, self];
  }

  return v23;
}

@end