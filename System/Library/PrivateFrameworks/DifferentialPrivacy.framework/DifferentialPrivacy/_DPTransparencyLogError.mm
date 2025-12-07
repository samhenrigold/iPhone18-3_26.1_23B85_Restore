@interface _DPTransparencyLogError
+ (id)errorWithCode:(int64_t)code description:(id)description;
- (_DPTransparencyLogError)initWithCode:(int64_t)code description:(id)description;
@end

@implementation _DPTransparencyLogError

- (_DPTransparencyLogError)initWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11.receiver = self;
  v11.super_class = _DPTransparencyLogError;
  v9 = [(_DPTransparencyLogError *)&v11 initWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:code userInfo:v8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithCode:code description:descriptionCopy];

  return v6;
}

@end