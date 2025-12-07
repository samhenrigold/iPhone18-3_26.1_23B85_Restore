@interface PSSGMessageRegister
+ (id)messageWithSessionName:(id)name;
+ (id)messageWithSessionName:(id)name pid:(int)pid;
- ($995AEC83619B72959345773A9004CE00)serialize;
@end

@implementation PSSGMessageRegister

+ (id)messageWithSessionName:(id)name
{
  nameCopy = name;
  v4 = [PSSGMessageRegister messageWithSessionName:nameCopy pid:getpid()];

  return v4;
}

+ (id)messageWithSessionName:(id)name pid:(int)pid
{
  v4 = *&pid;
  nameCopy = name;
  v6 = [(PSSGMessageBase *)[PSSGMessageRegister alloc] initWithType:0 string1:nameCopy];

  [(PSSGMessageRegister *)v6 setPid:v4];

  return v6;
}

- ($995AEC83619B72959345773A9004CE00)serialize
{
  v5.receiver = self;
  v5.super_class = PSSGMessageRegister;
  serialize = [(PSSGMessageBase *)&v5 serialize];
  serialize->var1 = [(PSSGMessageRegister *)self pid];
  return serialize;
}

@end