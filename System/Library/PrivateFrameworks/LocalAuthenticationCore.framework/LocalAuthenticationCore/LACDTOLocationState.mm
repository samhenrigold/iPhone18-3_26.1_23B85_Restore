@interface LACDTOLocationState
+ (id)nullInstance;
+ (id)strictLocationState;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id)valid;
- (LACDTOLocationState)initWithRawValue:(int64_t)value confirmed:(BOOL)confirmed;
- (LACDTOLocationState)initWithRawValue:(int64_t)value confirmed:(BOOL)confirmed createdAt:(id)at;
- (id)description;
@end

@implementation LACDTOLocationState

- (LACDTOLocationState)initWithRawValue:(int64_t)value confirmed:(BOOL)confirmed
{
  confirmedCopy = confirmed;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = [(LACDTOLocationState *)self initWithRawValue:value confirmed:confirmedCopy createdAt:v7];

  return v8;
}

- (LACDTOLocationState)initWithRawValue:(int64_t)value confirmed:(BOOL)confirmed createdAt:(id)at
{
  atCopy = at;
  v13.receiver = self;
  v13.super_class = LACDTOLocationState;
  v10 = [(LACDTOLocationState *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_rawValue = value;
    v10->_confirmed = confirmed;
    objc_storeStrong(&v10->_createdAt, at);
  }

  return v11;
}

+ (id)nullInstance
{
  v2 = [[self alloc] initWithRawValue:0 confirmed:0];

  return v2;
}

+ (id)strictLocationState
{
  v2 = [[self alloc] initWithRawValue:0 confirmed:0];

  return v2;
}

- (BOOL)isValid:(id)valid
{
  validCopy = valid;
  if ([(NSDate *)self->_createdAt compare:validCopy]== NSOrderedDescending)
  {
    v5 = 0;
  }

  else
  {
    [validCopy timeIntervalSinceDate:self->_createdAt];
    v5 = v6 <= 5.0;
  }

  return v5;
}

- (id)description
{
  v29[5] = *MEMORY[0x1E69E9840];
  v26 = MEMORY[0x1E696AEC0];
  v25 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_rawValue(self);
  v28 = NSStringFromLACDTOLocationStateRawValue(v4);
  v27 = [v3 stringWithFormat:@"DSLMode: %@", v28];
  v29[0] = v27;
  v5 = MEMORY[0x1E696AEC0];
  confirmed = [(LACDTOLocationState *)self confirmed];
  v7 = @"NO";
  if (confirmed)
  {
    v7 = @"YES";
  }

  v8 = [v5 stringWithFormat:@"confirmed: %@", v7];
  v29[1] = v8;
  v9 = MEMORY[0x1E696AEC0];
  createdAt = [(LACDTOLocationState *)self createdAt];
  v11 = [v9 stringWithFormat:@"createdAt: %@", createdAt];
  v29[2] = v11;
  v12 = MEMORY[0x1E696AEC0];
  createdAt2 = [(LACDTOLocationState *)self createdAt];
  [createdAt2 timeIntervalSince1970];
  v15 = [v12 stringWithFormat:@"createdAtTimestamp: %.2f", v14];
  v29[3] = v15;
  v16 = MEMORY[0x1E696AEC0];
  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [(LACDTOLocationState *)self isValid:v17];
  v19 = @"NO";
  if (v18)
  {
    v19 = @"YES";
  }

  v20 = [v16 stringWithFormat:@"isValid: %@", v19];
  v29[4] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
  v22 = [v21 componentsJoinedByString:@" "];;
  v23 = [v26 stringWithFormat:@"<%@ %p %@>", v25, self, v22];;

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = objc_msgSend_rawValue(self);
    if (v6 == objc_msgSend_rawValue(v5) && (v7 = -[LACDTOLocationState confirmed](self, "confirmed"), v7 == [v5 confirmed]))
    {
      createdAt = [(LACDTOLocationState *)self createdAt];
      createdAt2 = [v5 createdAt];
      if (createdAt == createdAt2)
      {
        v8 = 1;
      }

      else
      {
        createdAt3 = [(LACDTOLocationState *)self createdAt];
        createdAt4 = [v5 createdAt];
        v8 = [createdAt3 isEqual:createdAt4];
      }
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

  return v8 & 1;
}

@end