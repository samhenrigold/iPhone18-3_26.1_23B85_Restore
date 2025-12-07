@interface ICASPasswordData
- (ICASPasswordData)initWithPasswordType:(id)type hasHint:(id)hint;
- (id)toDict;
@end

@implementation ICASPasswordData

- (ICASPasswordData)initWithPasswordType:(id)type hasHint:(id)hint
{
  typeCopy = type;
  hintCopy = hint;
  v12.receiver = self;
  v12.super_class = ICASPasswordData;
  v9 = [(ICASPasswordData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_passwordType, type);
    objc_storeStrong(&v10->_hasHint, hint);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"passwordType";
  passwordType = [(ICASPasswordData *)self passwordType];
  if (passwordType)
  {
    passwordType2 = [(ICASPasswordData *)self passwordType];
  }

  else
  {
    passwordType2 = objc_opt_new();
  }

  v5 = passwordType2;
  v11[1] = @"hasHint";
  v12[0] = passwordType2;
  hasHint = [(ICASPasswordData *)self hasHint];
  if (hasHint)
  {
    hasHint2 = [(ICASPasswordData *)self hasHint];
  }

  else
  {
    hasHint2 = objc_opt_new();
  }

  v8 = hasHint2;
  v12[1] = hasHint2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end