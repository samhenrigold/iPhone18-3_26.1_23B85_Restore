@interface MUWebContentTraits
- (id)queryItems;
@end

@implementation MUWebContentTraits

- (id)queryItems
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AF60]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MUWebContentTraits isVibrant](self, "isVibrant")}];
  stringValue = [v4 stringValue];
  v6 = [v3 initWithName:@"isVibrant" value:stringValue];

  v7 = objc_alloc(MEMORY[0x1E696AF60]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MUWebContentTraits isNativelyDrawingPlatter](self, "isNativelyDrawingPlatter")}];
  stringValue2 = [v8 stringValue];
  v10 = [v7 initWithName:@"hasPlatter" value:stringValue2];

  v13[0] = v6;
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  return v11;
}

@end