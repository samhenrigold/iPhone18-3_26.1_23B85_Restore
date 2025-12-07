@interface NSTimeZone(ReminderKitAdditions)
- (uint64_t)rem_isEquivalentTo:()ReminderKitAdditions;
@end

@implementation NSTimeZone(ReminderKitAdditions)

- (uint64_t)rem_isEquivalentTo:()ReminderKitAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  selfCopy = self;
  v6 = v4;
  v7 = v6;
  v8 = 0;
  if (selfCopy && v6)
  {
    if ([selfCopy isEqualToTimeZone:v6])
    {
      v8 = 1;
    }

    else
    {
      name = [selfCopy name];
      v10 = [name length];
      if (v10 >= 0x3F)
      {
        v11 = 63;
      }

      else
      {
        v11 = v10;
      }

      [name getCharacters:v18 range:{0, v11}];
      v18[v11] = 0;

      name2 = [v7 name];
      v13 = [name2 length];
      if (v13 >= 0x3F)
      {
        v14 = 63;
      }

      else
      {
        v14 = v13;
      }

      [name2 getCharacters:v17 range:{0, v14}];
      v17[v14] = 0;

      *s2 = 0;
      ucal_getCanonicalTimeZoneID();
      ucal_getCanonicalTimeZoneID();
      v8 = 0;
    }
  }

  return v8;
}

@end