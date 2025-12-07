@interface SportsFavoriteServiceObjC
+ (uint64_t)accountDidChange;
- (SportsFavoriteServiceObjC)init;
@end

@implementation SportsFavoriteServiceObjC

- (SportsFavoriteServiceObjC)init
{
  v3.receiver = self;
  v3.super_class = SportsFavoriteServiceObjC;
  return [(SportsFavoriteServiceObjC *)&v3 init];
}

+ (uint64_t)accountDidChange
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCBD0;
  v2 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_26CC19E10();
  *(v3 + 32) = 0xD000000000000038;
  *(v3 + 40) = 0x800000026CD4E6D0;
  sub_26CD3A3DC(v2, &dword_26CC14000, v1, "%@", 2, 2, v3, 1, 2);

  if (qword_280BBB2D0 != -1)
  {
    swift_once();
  }

  sub_26CCA27A0();
  sub_26CCA27A0();

  if (qword_280BBB460 != -1)
  {
    swift_once();
  }

  return sub_26CC96AB0(2);
}

@end