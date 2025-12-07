@interface BAUtilities
+ (id)stringFromUpSellLocation:(int64_t)location;
+ (id)stringFromUpSellVariant:(int64_t)variant;
+ (int64_t)backgroundColorFromThemeIdentifier:(id)identifier;
- (BAUtilities)init;
@end

@implementation BAUtilities

+ (int64_t)backgroundColorFromThemeIdentifier:(id)identifier
{
  v3 = sub_1E1780();
  v5 = v4;
  v6 = sub_DDE50(v3, v4);
  v5, v7, v8, v9, v10, v11, v12, v13;
  return v6;
}

+ (id)stringFromUpSellLocation:(int64_t)location
{
  if (location > 1)
  {
    if (location == 2)
    {
      v3 = 0xEA0000000000676ELL;
      goto LABEL_10;
    }

    if (location == 3)
    {
      v3 = 0xEA0000000000776FLL;
      goto LABEL_10;
    }

LABEL_13:
    result = sub_1E1D50();
    __break(1u);
    return result;
  }

  if (location)
  {
    if (location == 1)
    {
      v3 = 0xE200000000000000;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v3 = 0xE700000000000000;
LABEL_10:
  v4 = sub_1E1770();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

+ (id)stringFromUpSellVariant:(int64_t)variant
{
  if (variant)
  {
    if (variant == 2)
    {
      v3 = 0xE90000000000006BLL;
    }

    else
    {
      if (variant != 1)
      {
        result = sub_1E1D50();
        __break(1u);
        return result;
      }

      v3 = 0xEC000000746E6574;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = sub_1E1770();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (BAUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Utilities();
  return [(BAUtilities *)&v3 init];
}

@end