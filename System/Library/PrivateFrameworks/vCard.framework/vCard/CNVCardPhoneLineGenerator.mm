@interface CNVCardPhoneLineGenerator
- (id)makeLineWithName:(id)name value:(id)value;
- (id)standardLabelsForLabel:(id)label;
@end

@implementation CNVCardPhoneLineGenerator

- (id)makeLineWithName:(id)name value:(id)value
{
  valueCopy = value;
  nameCopy = name;
  objc_opt_class();
  v8 = valueCopy;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_class() sanitizeNumber:v10];
  v14.receiver = self;
  v14.super_class = CNVCardPhoneLineGenerator;
  v12 = [(CNVCardLineGenerator *)&v14 makeLineWithName:nameCopy value:v11];

  return v12;
}

- (id)standardLabelsForLabel:(id)label
{
  v19[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if ([labelCopy isEqualToString:@"_$!<Work>!$_"])
  {
    v19[0] = @"WORK";
    v19[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v19;
LABEL_9:
    v6 = 2;
LABEL_10:
    v7 = [v4 arrayWithObjects:v5 count:v6];
    goto LABEL_11;
  }

  if ([labelCopy isEqualToString:@"_$!<Home>!$_"])
  {
    v18[0] = @"HOME";
    v18[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v18;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"_$!<Other>!$_"])
  {
    v17[0] = @"OTHER";
    v17[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v17;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"_$!<Mobile>!$_"])
  {
    v16[0] = @"CELL";
    v16[1] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v16;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"iPhone"])
  {
    v15[0] = @"IPHONE";
    v15[1] = @"CELL";
    v15[2] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v15;
LABEL_18:
    v6 = 3;
    goto LABEL_10;
  }

  if ([labelCopy isEqualToString:@"Apple Watch"])
  {
    v14[0] = @"APPLEWATCH";
    v14[1] = @"CELL";
    v14[2] = @"VOICE";
    v4 = MEMORY[0x277CBEA60];
    v5 = v14;
    goto LABEL_18;
  }

  if ([labelCopy isEqualToString:@"_$!<Main>!$_"])
  {
    v13 = @"MAIN";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v13;
LABEL_21:
    v6 = 1;
    goto LABEL_10;
  }

  if ([labelCopy isEqualToString:@"_$!<WorkFAX>!$_"])
  {
    v12[0] = @"WORK";
    v12[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v12;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"_$!<HomeFAX>!$_"])
  {
    v11[0] = @"HOME";
    v11[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v11;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"_$!<OtherFAX>!$_"])
  {
    v10[0] = @"OTHER";
    v10[1] = @"FAX";
    v4 = MEMORY[0x277CBEA60];
    v5 = v10;
    goto LABEL_9;
  }

  if ([labelCopy isEqualToString:@"_$!<Pager>!$_"])
  {
    v9 = @"PAGER";
    v4 = MEMORY[0x277CBEA60];
    v5 = &v9;
    goto LABEL_21;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end