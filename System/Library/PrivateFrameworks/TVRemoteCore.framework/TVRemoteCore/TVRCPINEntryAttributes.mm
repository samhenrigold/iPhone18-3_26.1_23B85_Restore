@interface TVRCPINEntryAttributes
- (TVRCPINEntryAttributes)initWithCoder:(id)coder;
- (TVRCPINEntryAttributes)initWithDigitCount:(unint64_t)count;
- (TVRCPINEntryAttributes)initWithGroupLengths:(id)lengths;
- (id)description;
- (unint64_t)numberOfDigitsInGroup:(unint64_t)group;
- (unint64_t)totalDigitCount;
@end

@implementation TVRCPINEntryAttributes

- (TVRCPINEntryAttributes)initWithDigitCount:(unint64_t)count
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [(TVRCPINEntryAttributes *)self initWithGroupLengths:v5];

  return v6;
}

- (TVRCPINEntryAttributes)initWithGroupLengths:(id)lengths
{
  lengthsCopy = lengths;
  v9.receiver = self;
  v9.super_class = TVRCPINEntryAttributes;
  v5 = [(TVRCPINEntryAttributes *)&v9 init];
  if (v5)
  {
    v6 = [lengthsCopy copy];
    groupLengths = v5->_groupLengths;
    v5->_groupLengths = v6;
  }

  return v5;
}

- (TVRCPINEntryAttributes)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"groupLengths"];

  v9 = [(TVRCPINEntryAttributes *)self initWithGroupLengths:v8];
  return v9;
}

- (unint64_t)totalDigitCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_groupLengths;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfDigitsInGroup:(unint64_t)group
{
  if ([(NSArray *)self->_groupLengths count]<= group)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_groupLengths objectAtIndex:group];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  if ([(NSArray *)self->_groupLengths count])
  {
    [v3 appendString:@"; pattern="];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_groupLengths;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ((v8 & 1) == 0)
          {
            [v3 appendString:@"-"];
          }

          for (j = [v10 unsignedIntegerValue]; j; --j)
          {
            [v3 appendString:@"X"];
          }

          v8 = 0;
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v8 = 0;
      }

      while (v6);
    }
  }

  [v3 appendString:@">"];
  v12 = [v3 copy];

  return v12;
}

@end