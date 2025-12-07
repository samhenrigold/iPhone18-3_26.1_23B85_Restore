@interface WFFilePathLocation
+ (Class)supportedClassForURL:(id)l;
+ (id)locationWithSerializedRepresentation:(id)representation;
@end

@implementation WFFilePathLocation

+ (id)locationWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [representationCopy objectForKey:@"relativeSubpath"];
    v6 = [[self alloc] initWithRelativeSubpath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (Class)supportedClassForURL:(id)l
{
  v10[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__WFFilePathLocation_supportedClassForURL___block_invoke;
  v8[3] = &unk_1E837E1B8;
  v9 = lCopy;
  v5 = lCopy;
  v6 = [v4 if_firstObjectPassingTest:v8];

  return v6;
}

@end