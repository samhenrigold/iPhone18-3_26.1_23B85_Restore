@interface FSKitUtils
+ (id)stringWithFormatString:(id)string locale:(id)locale arguments:(id)arguments;
- (FSKitUtils)init;
@end

@implementation FSKitUtils

+ (id)stringWithFormatString:(id)string locale:(id)locale arguments:(id)arguments
{
  v5 = sub_24A96B7BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A96B7DC();
  v11 = v10;
  sub_24A96B7AC();
  sub_24A95FACC(0, &qword_27EF7F370, 0x277D82BB8);
  v12 = sub_24A96B7FC();
  _sSo10FSKitUtilsC0A0E6string16withFormatString6locale9argumentsS2S_10Foundation6LocaleVSaySo8NSObjectCGtFZ_0(v9, v11, v8, v12);

  (*(v6 + 8))(v8, v5);
  v13 = sub_24A96B7CC();

  return v13;
}

- (FSKitUtils)init
{
  v3.receiver = self;
  v3.super_class = FSKitUtils;
  return [(FSKitUtils *)&v3 init];
}

@end