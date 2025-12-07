@interface NSData(HMFCalendarCreation)
- (id)decodeArrayOfDateComponents;
@end

@implementation NSData(HMFCalendarCreation)

- (id)decodeArrayOfDateComponents
{
  v3 = MEMORY[0x277CCAAC8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 unarchivedObjectOfClasses:v6 fromData:self error:0];

  return v7;
}

@end