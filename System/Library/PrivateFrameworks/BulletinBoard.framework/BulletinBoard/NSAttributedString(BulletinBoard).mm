@interface NSAttributedString(BulletinBoard)
+ (id)_bb_attributedStringWithRTFDData:()BulletinBoard;
- (id)_bb_RTFDData;
@end

@implementation NSAttributedString(BulletinBoard)

+ (id)_bb_attributedStringWithRTFDData:()BulletinBoard
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13[0] = @"DocumentType";
    v13[1] = @"DefaultAttributes";
    v14[0] = @"NSRTFD";
    v14[1] = MEMORY[0x277CBEC10];
    v3 = MEMORY[0x277CBEAC0];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = 0;
    v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithData:v4 options:v5 documentAttributes:0 error:&v12];

    v7 = v12;
    if (v7)
    {
      v8 = BBLogGeneral;
      if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
      {
        [NSAttributedString(BulletinBoard) _bb_attributedStringWithRTFDData:v8];
      }
    }

    v9 = [v6 length];
    [v6 removeAttribute:@"NSFont" range:{0, v9}];
    [v6 removeAttribute:@"NSParagraphStyle" range:{0, v9}];
    v10 = [v6 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_bb_RTFDData
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [self length];
  v9 = @"DocumentType";
  v10[0] = @"NSRTFD";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = 0;
  v4 = [self dataFromRange:0 documentAttributes:v2 error:{v3, &v8}];
  v5 = v8;
  if (v5)
  {
    v6 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      [(NSAttributedString(BulletinBoard) *)v6 _bb_RTFDData];
    }
  }

  return v4;
}

@end