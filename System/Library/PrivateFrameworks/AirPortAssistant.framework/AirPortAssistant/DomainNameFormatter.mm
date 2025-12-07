@interface DomainNameFormatter
+ (id)domainNameFormatter:(unint64_t)formatter;
+ (id)domainNameSet;
- (DomainNameFormatter)initWithMaxLength:(unint64_t)length;
@end

@implementation DomainNameFormatter

+ (id)domainNameFormatter:(unint64_t)formatter
{
  v3 = [DomainNameFormatter alloc];
  v6 = objc_msgSend_initWithMaxLength_(v3, v4, 0, v5);

  return v6;
}

- (DomainNameFormatter)initWithMaxLength:(unint64_t)length
{
  v17.receiver = self;
  v17.super_class = DomainNameFormatter;
  v6 = [(APFormatter *)&v17 initWithMaxLength:length];
  if (v6)
  {
    v7 = objc_msgSend_domainNameSet(DomainNameFormatter, v3, v4, v5);
    objc_msgSend_setCharacterSet_(v6, v8, v7, v9);
    v13 = objc_msgSend_invertedSet(v7, v10, v11, v12);
    objc_msgSend_setInvertedCharacterSet_(v6, v14, v13, v15);
  }

  return v6;
}

+ (id)domainNameSet
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB50]);
  objc_msgSend_addCharactersInString_(v2, v3, @".:-*/", v4);
  objc_msgSend_addCharactersInString_(v2, v5, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", v6);
  v10 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v7, v8, v9);
  objc_msgSend_formUnionWithCharacterSet_(v2, v11, v10, v12);

  return v2;
}

@end