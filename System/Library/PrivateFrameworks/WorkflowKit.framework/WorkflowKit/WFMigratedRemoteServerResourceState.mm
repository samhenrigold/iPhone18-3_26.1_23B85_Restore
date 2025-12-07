@interface WFMigratedRemoteServerResourceState
- (WFMigratedRemoteServerResourceState)initWithCoder:(id)coder;
@end

@implementation WFMigratedRemoteServerResourceState

- (WFMigratedRemoteServerResourceState)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFMigratedRemoteServerResourceState;
  v5 = [(WFMigratedRemoteServerResourceState *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"entries"];
    entries = v5->entries;
    v5->entries = v9;

    v11 = v5;
  }

  return v5;
}

@end