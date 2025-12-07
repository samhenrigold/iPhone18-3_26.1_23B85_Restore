@interface MTLTag
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLTag

- (id)formattedDescription:(unint64_t)description
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLTag;
  v6 = [(MTLTag *)&v8 description];
  v9[0] = v4;
  v9[1] = @"Tag =";
  v9[2] = MTLTagTypeString(self->_tagType);
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 3), "componentsJoinedByString:", @" "];
}

@end