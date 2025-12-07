@interface AAUILegacyContactsViewFactory
+ (id)createViewModelWithAccountManager:(id)manager;
+ (id)createViewModelWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier;
+ (id)createWithViewModel:(id)model;
@end

@implementation AAUILegacyContactsViewFactory

+ (id)createWithViewModel:(id)model
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](model, v3);
  swift_getObjCClassMetadata();
  v6 = sub_1C554F0A4(model);
  MEMORY[0x1E69E5920](model);

  return v6;
}

+ (id)createViewModelWithAccountManager:(id)manager
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager, v3);
  swift_getObjCClassMetadata();
  v6 = sub_1C554F6C8(manager);
  MEMORY[0x1E69E5920](manager);

  return v6;
}

+ (id)createViewModelWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager, v4);
  MEMORY[0x1E69E5928](identifier, v5);
  v8 = sub_1C5596574();
  v9 = v6;
  swift_getObjCClassMetadata();
  v12 = sub_1C554FC94(manager, v8, v9);

  MEMORY[0x1E69E5920](identifier);
  MEMORY[0x1E69E5920](manager);

  return v12;
}

@end