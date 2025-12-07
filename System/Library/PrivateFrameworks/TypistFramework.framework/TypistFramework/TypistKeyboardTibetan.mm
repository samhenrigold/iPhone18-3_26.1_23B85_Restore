@interface TypistKeyboardTibetan
- (TypistKeyboardTibetan)initWithCoder:(id)coder;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (id)tryAlternateVariationsOfKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardTibetan

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardTibetan;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"bo"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v10.receiver = self;
  v10.super_class = TypistKeyboardTibetan;
  v5 = [(TypistKeyboard *)&v10 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    v9 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\u0F90-\\u0FBC|\\u0F71]" options:1 error:&v9];
    v7 = v9;
    [(TypistKeyboardTibetan *)self setSubjoinedExpression:v6];
  }

  return v5;
}

- (id)tryAlternateVariationsOfKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = keyCopy;
  if (!keyCopy)
  {
    goto LABEL_9;
  }

  if ([keyCopy characterAtIndex:0] == 3953)
  {
    v17.receiver = self;
    v17.super_class = TypistKeyboardTibetan;
    v6 = [(TypistKeyboard *)&v17 generateKeystrokeStream:@"྄འ"];
    goto LABEL_10;
  }

  subjoinedExpression = [(TypistKeyboardTibetan *)self subjoinedExpression];
  v8 = [subjoinedExpression numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];

  if (v8)
  {
    v9 = [v5 length];
    MEMORY[0x28223BE20](v9);
    v11 = &v15 - v10;
    *(&v15 - v10) = 3972;
    if ([v5 length])
    {
      v12 = 0;
      do
      {
        *&v11[2 * v12 + 2] = [v5 characterAtIndex:v12] - 80;
        ++v12;
      }

      while (v12 < [v5 length]);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithCharacters:v11 length:{objc_msgSend(v5, "length") + 1}];
    v16.receiver = self;
    v16.super_class = TypistKeyboardTibetan;
    v6 = [(TypistKeyboard *)&v16 generateKeystrokeStream:v13];
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_10:

  return v6;
}

- (TypistKeyboardTibetan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardTibetan;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjoinedExpression"];
    subjoinedExpression = v5->_subjoinedExpression;
    v5->_subjoinedExpression = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TypistKeyboardTibetan;
  [(TypistKeyboard *)&v6 encodeWithCoder:coderCopy];
  subjoinedExpression = self->_subjoinedExpression;
  if (subjoinedExpression)
  {
    [coderCopy encodeObject:subjoinedExpression forKey:@"subjoinedExpression"];
  }
}

@end