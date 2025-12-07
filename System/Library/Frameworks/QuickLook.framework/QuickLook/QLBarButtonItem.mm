@interface QLBarButtonItem
- (BOOL)_qlIsEqual:(id)equal;
@end

@implementation QLBarButtonItem

- (BOOL)_qlIsEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      qLType = [(QLBarButtonItem *)self QLType];
      if (qLType == [(QLBarButtonItem *)v5 QLType]&& ([(QLBarButtonItem *)self QLType]!= 3 || (v7 = [(QLBarButtonItem *)self action], v7 == [(QLBarButtonItem *)v5 action])) && ([(QLBarButtonItem *)self target], v8 = objc_claimAutoreleasedReturnValue(), [(QLBarButtonItem *)v5 target], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 == v9) && (v10 = [(QLBarButtonItem *)self systemItem], v10 == [(QLBarButtonItem *)v5 systemItem]))
      {
        title = [(QLBarButtonItem *)self title];
        title2 = [(QLBarButtonItem *)v5 title];
        if (title == title2)
        {
          v15 = 1;
        }

        else
        {
          title3 = [(QLBarButtonItem *)self title];
          title4 = [(QLBarButtonItem *)v5 title];
          v15 = [title3 isEqualToString:title4];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

@end