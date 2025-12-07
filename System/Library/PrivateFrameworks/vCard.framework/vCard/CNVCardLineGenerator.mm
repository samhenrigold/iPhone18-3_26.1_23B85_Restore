@interface CNVCardLineGenerator
+ (id)generatorWithName:(id)name groupingCount:(int64_t *)count;
- (CNVCardLineGenerator)initWithName:(id)name groupingCount:(int64_t *)count;
- (id)lineWithValue:(id)value label:(id)label;
- (id)makeLineWithName:(id)name value:(id)value;
- (id)standardLabelsForLabel:(id)label;
- (void)addCustomLabel:(id)label toLine:(id)line;
@end

@implementation CNVCardLineGenerator

+ (id)generatorWithName:(id)name groupingCount:(int64_t *)count
{
  nameCopy = name;
  v7 = [[self alloc] initWithName:nameCopy groupingCount:count];

  return v7;
}

- (CNVCardLineGenerator)initWithName:(id)name groupingCount:(int64_t *)count
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CNVCardLineGenerator;
  v7 = [(CNVCardLineGenerator *)&v14 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    lineName = v7->_lineName;
    v7->_lineName = v8;

    v7->_groupingCount = count;
    v10 = +[CNVCardLineFactory version30LineFactory];
    lineFactory = v7->_lineFactory;
    v7->_lineFactory = v10;

    v12 = v7;
  }

  return v7;
}

- (id)lineWithValue:(id)value label:(id)label
{
  v19 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (value)
  {
    value = [(CNVCardLineGenerator *)self makeLineWithName:self->_lineName value:value];
    v7 = [(CNVCardLineGenerator *)self standardLabelsForLabel:labelCopy];
    if ([v7 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [(CNVCardLineGenerator *)self addStandardLabel:*(*(&v14 + 1) + 8 * i) toLine:value, v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }

    else if (labelCopy)
    {
      [(CNVCardLineGenerator *)self addCustomLabel:labelCopy toLine:value];
    }
  }

  return value;
}

- (id)makeLineWithName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:nameCopy value:valueCopy];
  }

  return v8;
}

- (id)standardLabelsForLabel:(id)label
{
  v8[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if ([labelCopy isEqualToString:@"_$!<Work>!$_"])
  {
    v8[0] = @"WORK";
    v4 = v8;
LABEL_5:
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
    goto LABEL_7;
  }

  if ([labelCopy isEqualToString:@"_$!<Home>!$_"])
  {
    v7 = @"HOME";
    v4 = &v7;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)addCustomLabel:(id)label toLine:(id)line
{
  labelCopy = label;
  lineCopy = line;
  if (lineCopy && ([labelCopy isEqualToString:&stru_288651EC0] & 1) == 0)
  {
    v7 = [(CNVCardLineFactory *)self->_lineFactory stringLineWithName:@"X-ABLabel" value:labelCopy];
    [lineCopy addGroupedLine:v7 withCounter:self->_groupingCount];
  }
}

@end