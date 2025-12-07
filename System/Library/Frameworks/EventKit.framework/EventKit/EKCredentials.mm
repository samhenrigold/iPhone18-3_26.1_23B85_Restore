@interface EKCredentials
+ (id)credentialsWithUsername:(id)username password:(id)password;
- (id)description;
@end

@implementation EKCredentials

+ (id)credentialsWithUsername:(id)username password:(id)password
{
  usernameCopy = username;
  passwordCopy = password;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = usernameCopy;
  v9 = usernameCopy;

  v10 = v7[2];
  v7[2] = passwordCopy;

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = EKCredentials;
  v4 = [(EKCredentials *)&v9 description];
  v5 = v4;
  if (self->_password)
  {
    v6 = @"******";
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 stringWithFormat:@"[%@] username: [%@], password: [%@]", v4, self->_username, v6];

  return v7;
}

@end