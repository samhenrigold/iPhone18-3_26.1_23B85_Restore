@interface HFMatterAccessoryLikeItemProvider
+ (id)itemProviderInHome:(id)home inRoom:(id)room;
- (HFMatterAccessoryLikeItemProvider)init;
@end

@implementation HFMatterAccessoryLikeItemProvider

+ (id)itemProviderInHome:(id)home inRoom:(id)room
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  if (room)
  {
    sub_20DD63714();
    v12 = sub_20DD63744();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_20DD63744();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  sub_20D9C90A8(v11, v9);
  v14 = type metadata accessor for MatterAccessoryLikeItemProvider(0);
  v15 = objc_allocWithZone(v14);
  *&v15[qword_27C84C680] = home;
  v16 = &v15[qword_27C844CB8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_20D9C90A8(v9, &v15[qword_27C84C688]);
  v20.receiver = v15;
  v20.super_class = v14;
  homeCopy = home;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_20D9C9040(v9);

  sub_20D9C9040(v11);

  return v18;
}

- (HFMatterAccessoryLikeItemProvider)init
{
  v3.receiver = self;
  v3.super_class = HFMatterAccessoryLikeItemProvider;
  return [(HFMatterAccessoryLikeItemProvider *)&v3 init];
}

@end