@interface GDKnosisAlias
- (GDKnosisAlias)initWithCoder:(id)coder;
- (GDKnosisAlias)initWithPrimary:(id)primary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisAlias

- (GDKnosisAlias)initWithCoder:(id)coder
{
  v15[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_primary);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    self = [(GDKnosisAlias *)self initWithPrimary:v7];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"GDKnosisAlias primary is nil";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v12 = [v10 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v11];
      [coderCopy failWithError:v12];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  primary = self->_primary;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_primary);
  [coderCopy encodeObject:primary forKey:v5];
}

- (GDKnosisAlias)initWithPrimary:(id)primary
{
  primaryCopy = primary;
  v9.receiver = self;
  v9.super_class = GDKnosisAlias;
  v5 = [(GDKnosisAlias *)&v9 init];
  if (v5)
  {
    v6 = [primaryCopy copy];
    primary = v5->_primary;
    v5->_primary = v6;
  }

  return v5;
}

@end