@interface STTextProcessing
+ (id)stripDanglingPunctuationFromRecognitionText:(id)text;
- (STTextProcessing)init;
@end

@implementation STTextProcessing

+ (id)stripDanglingPunctuationFromRecognitionText:(id)text
{
  v3 = sub_26B5E13FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_26B5E199C();
  v9 = v8;
  sub_26B5E13DC();
  v14 = v7;
  v15 = v9;
  v13 = v6;
  sub_26B5DF304();
  sub_26B5E1B6C();

  MEMORY[0x26D67B130](v16, v17, v18, v19);

  (*(v4 + 8))(v6, v3);
  v10 = sub_26B5E198C();

  return v10;
}

- (STTextProcessing)init
{
  v3.receiver = self;
  v3.super_class = STTextProcessing;
  return [(STTextProcessing *)&v3 init];
}

@end