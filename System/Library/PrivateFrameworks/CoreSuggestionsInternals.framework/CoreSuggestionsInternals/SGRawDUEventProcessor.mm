@interface SGRawDUEventProcessor
- (id)getSchemaCreatorForEvent:(id)event;
- (id)getSchemaCreatorForEventString:(id)string;
@end

@implementation SGRawDUEventProcessor

- (id)getSchemaCreatorForEventString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:*MEMORY[0x277D06810]])
    {
      goto LABEL_4;
    }

    lowercaseString = [v4 lowercaseString];
    v6 = [lowercaseString containsString:@"appointment"];

    if (v6)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06818]])
    {
      goto LABEL_4;
    }

    lowercaseString2 = [v4 lowercaseString];
    v9 = [lowercaseString2 containsString:@"car"];

    if (v9)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06820]])
    {
      goto LABEL_4;
    }

    lowercaseString3 = [v4 lowercaseString];
    v11 = [lowercaseString3 containsString:@"flight"];

    if (v11)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06830]])
    {
      goto LABEL_4;
    }

    lowercaseString4 = [v4 lowercaseString];
    v13 = [lowercaseString4 containsString:@"hotel"];

    if (v13)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06840]])
    {
      goto LABEL_4;
    }

    lowercaseString5 = [v4 lowercaseString];
    v15 = [lowercaseString5 containsString:@"social"];

    if (v15)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06848]])
    {
      goto LABEL_4;
    }

    lowercaseString6 = [v4 lowercaseString];
    v17 = [lowercaseString6 containsString:@"food"];

    if (v17 & 1) != 0 || ([v4 isEqualToString:*MEMORY[0x277D06858]])
    {
      goto LABEL_4;
    }

    lowercaseString7 = [v4 lowercaseString];
    if ([lowercaseString7 isEqualToString:@"ticket"])
    {

LABEL_4:
      v7 = objc_opt_new();
      goto LABEL_29;
    }

    lowercaseString8 = [v4 lowercaseString];
    v20 = [lowercaseString8 isEqualToString:@"movie"];

    if (v20)
    {
      goto LABEL_4;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D06860]])
    {
      goto LABEL_4;
    }

    lowercaseString9 = [v4 lowercaseString];
    v22 = [&unk_28474A7B0 containsObject:lowercaseString9];

    if (v22)
    {
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_29:

  return v7;
}

- (id)getSchemaCreatorForEvent:(id)event
{
  v4 = [event objectForKeyedSubscript:*MEMORY[0x277D06608]];
  if (v4)
  {
    v5 = [(SGRawDUEventProcessor *)self getSchemaCreatorForEventString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end