@interface LAPasscodeRemovalServiceOptions
- (id)description;
@end

@implementation LAPasscodeRemovalServiceOptions

- (id)description
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v12[0] = @"title";
  title = [(LAPasscodeRemovalServiceOptions *)self title];
  null = title;
  if (!title)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v12[1] = @"passcodePrompt";
  v13[0] = null;
  passcodePrompt = [(LAPasscodeRemovalServiceOptions *)self passcodePrompt];
  null2 = passcodePrompt;
  if (!passcodePrompt)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  if (!passcodePrompt)
  {
  }

  if (!title)
  {
  }

  return v10;
}

@end