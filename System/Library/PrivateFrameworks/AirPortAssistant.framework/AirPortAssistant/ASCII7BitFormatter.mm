@interface ASCII7BitFormatter
+ (id)ascii7BitFormatter:(unint64_t)formatter;
+ (id)ascii7BitSet;
- (ASCII7BitFormatter)initWithMaxLength:(unint64_t)length;
@end

@implementation ASCII7BitFormatter

+ (id)ascii7BitFormatter:(unint64_t)formatter
{
  v4 = [ASCII7BitFormatter alloc];
  v7 = objc_msgSend_initWithMaxLength_(v4, v5, formatter, v6);

  return v7;
}

- (ASCII7BitFormatter)initWithMaxLength:(unint64_t)length
{
  v17.receiver = self;
  v17.super_class = ASCII7BitFormatter;
  v6 = [(APFormatter *)&v17 initWithMaxLength:length];
  if (v6)
  {
    v7 = objc_msgSend_ascii7BitSet(ASCII7BitFormatter, v3, v4, v5);
    objc_msgSend_setCharacterSet_(v6, v8, v7, v9);
    v13 = objc_msgSend_invertedSet(v7, v10, v11, v12);
    objc_msgSend_setInvertedCharacterSet_(v6, v14, v13, v15);
  }

  return v6;
}

+ (id)ascii7BitSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInRange_(v2, v3, 32, 95);

  return v2;
}

@end