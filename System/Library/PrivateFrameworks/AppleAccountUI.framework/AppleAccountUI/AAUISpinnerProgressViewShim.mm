@interface AAUISpinnerProgressViewShim
+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name;
+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name forAccount:(id)account;
@end

@implementation AAUISpinnerProgressViewShim

+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](name, v4);
  v7 = sub_1C5596574();
  v9 = v5;
  swift_getObjCClassMetadata();
  v11 = sub_1C54454C4(type, v7, v9);

  MEMORY[0x1E69E5920](name);
  return v11;
}

+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name forAccount:(id)account
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](name, v5);
  MEMORY[0x1E69E5928](account, v6);
  v9 = sub_1C5596574();
  v11 = v7;
  swift_getObjCClassMetadata();
  v14 = sub_1C54456BC(type, v9, v11, account);

  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](account);
  return v14;
}

@end