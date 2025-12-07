@interface LACEnvironmentState
+ (id)companionsForUser:(unsigned int)user;
+ (id)environmentStateForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentState)initWithBiometry:(id)biometry userPassword:(id)password companions:(id)companions;
- (LACEnvironmentState)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentState

- (LACEnvironmentState)initWithBiometry:(id)biometry userPassword:(id)password companions:(id)companions
{
  biometryCopy = biometry;
  passwordCopy = password;
  companionsCopy = companions;
  v15.receiver = self;
  v15.super_class = LACEnvironmentState;
  v12 = [(LACEnvironmentState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_biometry, biometry);
    objc_storeStrong(&v13->_userPassword, password);
    objc_storeStrong(&v13->_companions, companions);
  }

  return v13;
}

+ (id)environmentStateForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error
{
  v7 = *&user;
  dependenciesCopy = dependencies;
  v10 = [LACEnvironmentState alloc];
  v11 = *&token->var0[4];
  v18 = *token->var0;
  v19 = v11;
  v12 = [LACEnvironmentMechanismBiometry environmentMechanismForUser:v7 auditToken:&v18 dependencies:dependenciesCopy error:0];
  v13 = *&token->var0[4];
  v18 = *token->var0;
  v19 = v13;
  v14 = [LACEnvironmentMechanismUserPassword environmentMechanismForUser:v7 auditToken:&v18 dependencies:dependenciesCopy error:0];

  v15 = [self companionsForUser:v7];
  v16 = [(LACEnvironmentState *)v10 initWithBiometry:v12 userPassword:v14 companions:v15];

  return v16;
}

+ (id)companionsForUser:(unsigned int)user
{
  v3 = *&user;
  v4 = objc_opt_new();
  v5 = [LACEnvironmentMechanismCompanion companionForUser:v3 type:1 error:0];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [LACEnvironmentMechanismCompanion companionForUser:v3 type:2 error:0];
  if (v6)
  {
    [v4 addObject:v6];
  }

  v7 = [LACEnvironmentMechanismCompanion companionForUser:v3 type:4 error:0];
  if (v7)
  {
    [v4 addObject:v7];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  biometry = [(LACEnvironmentState *)self biometry];
  v6 = NSStringFromSelector(sel_biometry);
  [coderCopy encodeObject:biometry forKey:v6];

  userPassword = [(LACEnvironmentState *)self userPassword];
  v8 = NSStringFromSelector(sel_userPassword);
  [coderCopy encodeObject:userPassword forKey:v8];

  companions = [(LACEnvironmentState *)self companions];
  v9 = NSStringFromSelector(sel_companions);
  [coderCopy encodeObject:companions forKey:v9];
}

- (LACEnvironmentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_biometry);
  v6 = [coderCopy decodeObjectForKey:v5];
  v7 = NSStringFromSelector(sel_userPassword);
  v8 = [coderCopy decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_companions);
  v10 = [coderCopy decodeObjectForKey:v9];

  v11 = [(LACEnvironmentState *)self initWithBiometry:v6 userPassword:v8 companions:v10];
  return v11;
}

- (id)description
{
  v18[3] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E696AEC0];
  biometry = [(LACEnvironmentState *)self biometry];
  v6 = [v4 stringWithFormat:@"biometry: %@", biometry];
  v18[0] = v6;
  v7 = MEMORY[0x1E696AEC0];
  userPassword = [(LACEnvironmentState *)self userPassword];
  v9 = [v7 stringWithFormat:@"userPassword: %@", userPassword];
  v18[1] = v9;
  v10 = MEMORY[0x1E696AEC0];
  companions = [(LACEnvironmentState *)self companions];
  v12 = [v10 stringWithFormat:@"companions: %@", companions];
  v18[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v14 = [v13 componentsJoinedByString:@" "];;
  v15 = [v17 stringWithFormat:@"<%@ %p %@>", v3, self, v14];;

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      biometry = [(LACEnvironmentState *)self biometry];
      biometry2 = [(LACEnvironmentState *)v5 biometry];
      v8 = biometry2;
      if (biometry == biometry2)
      {
      }

      else
      {
        biometry3 = [(LACEnvironmentState *)self biometry];
        biometry4 = [(LACEnvironmentState *)v5 biometry];
        v11 = [biometry3 isEqual:biometry4];

        if (!v11)
        {
          goto LABEL_11;
        }
      }

      userPassword = [(LACEnvironmentState *)self userPassword];
      userPassword2 = [(LACEnvironmentState *)v5 userPassword];
      v15 = userPassword2;
      if (userPassword == userPassword2)
      {
      }

      else
      {
        userPassword3 = [(LACEnvironmentState *)self userPassword];
        userPassword4 = [(LACEnvironmentState *)v5 userPassword];
        v18 = [userPassword3 isEqual:userPassword4];

        if (!v18)
        {
LABEL_11:
          v12 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      companions = [(LACEnvironmentState *)self companions];
      companions2 = [(LACEnvironmentState *)v5 companions];
      if (companions == companions2)
      {
        v12 = 1;
      }

      else
      {
        companions3 = [(LACEnvironmentState *)self companions];
        companions4 = [(LACEnvironmentState *)v5 companions];
        v12 = [companions3 isEqualToArray:companions4];
      }

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_18:

  return v12 & 1;
}

@end