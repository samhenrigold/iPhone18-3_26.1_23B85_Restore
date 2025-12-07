@interface NSTimeZone(MNExtras)
- (BOOL)_navigation_isEquivalentToTimeZone:()MNExtras forDate:;
- (uint64_t)_navigation_isEquivalentToTimeZone:()MNExtras forDates:;
@end

@implementation NSTimeZone(MNExtras)

- (uint64_t)_navigation_isEquivalentToTimeZone:()MNExtras forDates:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![self _navigation_isEquivalentToTimeZone:v6 forDate:{*(*(&v15 + 1) + 8 * v12), v15}])
          {
            v13 = 0;
            goto LABEL_12;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = [self _navigation_isEquivalentToTimeZone:v6 forDate:0];
  }

  return v13;
}

- (BOOL)_navigation_isEquivalentToTimeZone:()MNExtras forDate:
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (v7)
    {
      secondsFromGMT = [self secondsFromGMTForDate:v7];
      secondsFromGMT2 = [v6 secondsFromGMTForDate:v7];
    }

    else
    {
      secondsFromGMT = [self secondsFromGMT];
      secondsFromGMT2 = [v6 secondsFromGMT];
    }

    v10 = secondsFromGMT == secondsFromGMT2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end