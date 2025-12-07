@interface CMLError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
- (CMLError)initWithCode:(int64_t)code description:(id)description;
- (CMLError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
@end

@implementation CMLError

- (CMLError)initWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = CMLError;
  v9 = [(CMLError *)&v11 initWithDomain:@"com.apple.CipherML" code:code userInfo:v8];

  return v9;
}

- (CMLError)initWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCACA8];
  descriptionCopy = description;
  errorCopy = error;
  localizedDescription = [errorCopy localizedDescription];
  v12 = [v8 stringWithFormat:@"%@: %@", descriptionCopy, localizedDescription];

  v13 = *MEMORY[0x277CCA7E8];
  v18[0] = *MEMORY[0x277CCA450];
  v18[1] = v13;
  v19[0] = v12;
  v19[1] = errorCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v17.receiver = self;
  v17.super_class = CMLError;
  v15 = [(CMLError *)&v17 initWithDomain:@"com.apple.CipherML" code:code userInfo:v14];

  return v15;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:code description:descriptionCopy];

  return v6;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  errorCopy = error;
  descriptionCopy = description;
  v9 = objc_alloc(objc_opt_class());
  if (errorCopy)
  {
    v10 = [v9 initWithCode:code underlyingError:errorCopy description:descriptionCopy];
  }

  else
  {
    v10 = [v9 initWithCode:code description:descriptionCopy];
  }

  v11 = v10;

  return v11;
}

@end