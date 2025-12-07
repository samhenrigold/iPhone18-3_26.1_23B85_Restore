@interface TPSTipKitContentManager
+ (void)updateContentWithMeta:(NSDictionary *)meta documents:(NSDictionary *)documents clientConditions:(NSSet *)conditions completionHandler:(id)handler;
- (TPSTipKitContentManager)init;
@end

@implementation TPSTipKitContentManager

+ (void)updateContentWithMeta:(NSDictionary *)meta documents:(NSDictionary *)documents clientConditions:(NSSet *)conditions completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = meta;
  v15[3] = documents;
  v15[4] = conditions;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_232E016B0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_232E08258;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_232E07ED0;
  v18[5] = v17;
  metaCopy = meta;
  documentsCopy = documents;
  conditionsCopy = conditions;
  sub_232DF3F0C(0, 0, v13, &unk_232E07040, v18);
}

- (TPSTipKitContentManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TPSTipKitContentManager *)&v3 init];
}

@end