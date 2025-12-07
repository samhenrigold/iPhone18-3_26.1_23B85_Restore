@interface PNPartOfDayCalculator
+ (void)partOfDayLocalizedStringsForLocalDate:(id)date result:(id)result;
@end

@implementation PNPartOfDayCalculator

+ (void)partOfDayLocalizedStringsForLocalDate:(id)date result:(id)result
{
  v5 = sub_25E635570();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(result);
  sub_25E635550();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_25E5F74C4(v8, ObjCClassMetadata, v9);
  (*(v6 + 8))(v8, v5);
}

@end