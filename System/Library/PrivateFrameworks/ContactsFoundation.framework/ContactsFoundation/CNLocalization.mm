@interface CNLocalization
+ (id)localizedStringForInteger:(int64_t)integer;
+ (id)localizedStringForString:(id)string bundle:(id)bundle table:(id)table lookupBlock:(id)block returningNilIfNotFound:(BOOL)found;
+ (id)localizedStringForString:(id)string class:(Class)class lookupBlock:(id)block returningNilIfNotFound:(BOOL)found;
@end

@implementation CNLocalization

+ (id)localizedStringForString:(id)string bundle:(id)bundle table:(id)table lookupBlock:(id)block returningNilIfNotFound:(BOOL)found
{
  stringCopy = string;
  bundleCopy = bundle;
  tableCopy = table;
  blockCopy = block;
  v15 = blockCopy;
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, bundleCopy, stringCopy, tableCopy);
  }

  else
  {
    [bundleCopy localizedStringForKey:stringCopy value:@"__ABUnlocalizedString" table:tableCopy];
  }
  v16 = ;
  if ([v16 isEqualToString:@"__ABUnlocalizedString"])
  {
    if (found)
    {
      v17 = 0;
    }

    else
    {
      v17 = stringCopy;
    }

    v16 = v17;
  }

  return v16;
}

+ (id)localizedStringForString:(id)string class:(Class)class lookupBlock:(id)block returningNilIfNotFound:(BOOL)found
{
  foundCopy = found;
  v10 = MEMORY[0x1E696AAE8];
  blockCopy = block;
  stringCopy = string;
  v13 = [v10 bundleForClass:class];
  v14 = NSStringFromClass(class);
  v15 = [self localizedStringForString:stringCopy bundle:v13 table:v14 lookupBlock:blockCopy returningNilIfNotFound:foundCopy];

  return v15;
}

+ (id)localizedStringForInteger:(int64_t)integer
{
  v3 = MEMORY[0x1E696ADA0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:1];

  return v5;
}

@end