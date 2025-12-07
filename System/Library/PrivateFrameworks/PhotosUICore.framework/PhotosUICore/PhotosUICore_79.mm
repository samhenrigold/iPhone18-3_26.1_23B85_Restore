uint64_t dispatch thunk of StoryAsyncPlayer.withStoryModel<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 328) + **(*v4 + 328));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1A3D60150;

  return v12(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for StoryAsyncPlayer.StoryAsyncSession.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StoryAsyncPlayer.StoryAsyncSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_1A463A678()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);

    v1(v3);

    sub_1A3C784D4(v1, v2);
  }
}

double sub_1A463A700(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 152))
    {
      sub_1A52458E4();
    }
  }

  return result;
}

void *sub_1A463A808(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A463B040(0, &qword_1EB13F7F0, sub_1A463ACAC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C3637C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A463A954()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = (*(*Strong + 376))(Strong);
    v3 = v2;

    if (v1)
    {
      v1(v4);
      sub_1A3C784D4(v1, v3);
    }
  }
}

double sub_1A463A9FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a2 & 0x40000000000) != 0)
    {
      sub_1A4639250();
    }
  }

  return result;
}

unint64_t sub_1A463AA58()
{
  result = qword_1EB126808;
  if (!qword_1EB126808)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126808);
  }

  return result;
}

void sub_1A463AABC()
{
  v1 = *(v0 + 16);
  sub_1A463B040(0, &qword_1EB124B48, type metadata accessor for StoryAsyncPlayer, off_1E7721028);
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1A524CBF4() - 8);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A46363D8(v0 + v3, v6, v7, v8, v1);
}

uint64_t sub_1A463ABE8(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_1A524CBF4() - 8);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_1A463671C(a1, v5, v6, v7, v3);
}

unint64_t sub_1A463ACAC()
{
  result = qword_1EB13F7F8;
  if (!qword_1EB13F7F8)
  {
    type metadata accessor for StoryAsyncPlayer.StoryAsyncSession();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB13F7F8);
  }

  return result;
}

id sub_1A463AD08(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = (*(**(v1 + 16) + 280))();
  [a1 setBackgroundColor_];

  [a1 setReferenceSize_];
  [a1 setDisplayScale_];

  return [a1 setIsVisible_];
}

void sub_1A463ADE8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_traitCollection);
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    aBlock[4] = sub_1A463AF10;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A421179C;
    aBlock[3] = &block_descriptor_180;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v6 performChanges_];
    _Block_release(v5);
  }
}

double sub_1A463AF20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState;
    v6 = *(Strong + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState);
    v7 = *(Strong + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_sessionState + 8);
    *v5 = v1;
    *(v5 + 8) = v2;
    if (v6 != v1 || ((v2 ^ v7) & 1) != 0)
    {
      if (*(Strong + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_storyQueue_session))
      {

        sub_1A4638CBC(v1, v2);
      }
    }
  }

  return result;
}

id sub_1A463AFDC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4638680();
  }

  return 0;
}

void sub_1A463B040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id PXAddToBookmarksAction.init(objects:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObjects_];
  swift_unknownObjectRelease();
  return v1;
}

id PXAddToBookmarksAction.init(objects:)(void *a1)
{
  v2 = v1;
  v4 = swift_unknownObjectRetain();
  v5 = sub_1A3F9ECF0(v4);
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR___PXAddToBookmarksAction_bookmarks] = v5;
  if ([a1 firstObject])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    if (swift_dynamicCast())
    {
      v6 = v20;
      result = [v20 photoLibrary];
      if (result)
      {
        v8 = result;
        v19.receiver = v2;
        v19.super_class = PXAddToBookmarksAction;
        v9 = objc_msgSendSuper2(&v19, sel_initWithPhotoLibrary_, result);

        swift_unknownObjectRelease();
        return v9;
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    sub_1A3C35B00(v23);
  }

  if (qword_1EB1CB460 != -1)
  {
    swift_once();
  }

  v10 = sub_1A5246F24();
  __swift_project_value_buffer(v10, qword_1EB1CB468);
  v11 = sub_1A524D244();
  swift_unknownObjectRetain();
  v12 = sub_1A5246F04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *&v23[0] = swift_slowAlloc();
    *v13 = 136315138;
    v14 = [a1 description];
    v15 = sub_1A524C674();
    v17 = v16;

    sub_1A3C2EF94(v15, v17, v23);
  }

  swift_unknownObjectRelease();

  type metadata accessor for PXAddToBookmarksAction(v18);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1A463B628(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v6 + 24);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1A3C58DE8(v12, v9, type metadata accessor for LemonadeBookmark);
      v14 = v9[16];
      sub_1A3C58DE8(&v9[v11], v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark);
      sub_1A42E16DC(v14, v4);
      sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v12 += v13;
      --v10;
    }

    while (v10);
  }
}

void sub_1A463B800(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  sub_1A463B9D4(a1, v12, a4, a5, a6, a7);
}

void sub_1A463B954()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CB468);
  __swift_project_value_buffer(v0, qword_1EB1CB468);
  sub_1A5246EF4();
}

id sub_1A463BB64()
{
  v1 = (v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  if (*(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8))
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

id sub_1A463BC00()
{
  v1 = (v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  if (*(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8) != 2)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t PeopleNamingItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject);
  v2 = *(v0 + OBJC_IVAR___PXPeopleNamingItem_backingObject + 8);
  v3 = [v1 *off_1E772B290[v2]];
  v4 = sub_1A524C674();

  sub_1A463BCF4(v1, v2);
  return v4;
}

void sub_1A463BCF4(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

id PeopleNamingItem.init(person:searchString:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A524C674();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0(v9, v11, a2);
  v14 = v13;

  *&v3[OBJC_IVAR___PXPeopleNamingItem_title] = v12;
  *&v3[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = v14;
  *&v3[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v15 = &v3[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v15 = a1;
  v15[8] = 0;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id PeopleNamingItem.__allocating_init(face:)(uint64_t a1)
{
  v3 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = objc_allocWithZone(v1);
  sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
  sub_1A5240714();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_title] = sub_1A524D624();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = sub_1A52403B4();
  *&v4[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v5 = &v4[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v5 = a1;
  v5[8] = 1;
  v7.receiver = v4;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PeopleNamingItem.init(face:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
  sub_1A5240714();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_title] = sub_1A524D624();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = sub_1A52403B4();
  *&v1[OBJC_IVAR___PXPeopleNamingItem_subtitle] = 0;
  v5 = &v1[OBJC_IVAR___PXPeopleNamingItem_backingObject];
  *v5 = a1;
  v5[8] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id PeopleNamingItem.init(contact:searchString:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() stringFromContact:a1 style:0];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A524C674();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0(v9, v11, a2);
      v15 = v14;

      *&v3[OBJC_IVAR___PXPeopleNamingItem_title] = v13;
      *&v3[OBJC_IVAR___PXPeopleNamingItem_highlightLocation] = v15;
      v16 = v13;
      v17 = _s12PhotosUICore16PeopleNamingItemC8subtitle3forSo18NSAttributedStringCSgSo9CNContactC_tFZ_0();

      *&v3[OBJC_IVAR___PXPeopleNamingItem_subtitle] = v17;
      v18 = &v3[OBJC_IVAR___PXPeopleNamingItem_backingObject];
      *v18 = a1;
      v18[8] = 2;
      v20.receiver = v3;
      v20.super_class = ObjectType;
      return objc_msgSendSuper2(&v20, sel_init);
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A463C2E4()
{
  v1 = [v0 emailAddresses];
  sub_1A3C52C70(0, &qword_1EB13F838, 0x1E695CEE0);
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];
    v7 = sub_1A524C674();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A463C400()
{
  v1 = [v0 phoneNumbers];
  sub_1A3C52C70(0, &qword_1EB13F838, 0x1E695CEE0);
  v2 = sub_1A524CA34();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
LABEL_6:
    v5 = v4;

    v6 = [v5 value];
    v7 = [v6 stringValue];
    v8 = sub_1A524C674();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      return v8;
    }

    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id PeopleNamingItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeopleNamingItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40E9154(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v4 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 secondaryLabelColor];
  *(inited + 64) = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 40) = v7;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3FE17B0(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v9 = sub_1A524C634();
  type metadata accessor for Key(0);
  sub_1A3C8C10C(&unk_1EB1208B0, &unk_1A5304050);
  v10 = sub_1A524C3D4();

  v11 = [v8 initWithString:v9 attributes:v10];

  v12 = sub_1A524C634();
  v13 = sub_1A524C634();
  v14 = [v12 px:v13 rangeOfSubstringIgnoringCaseAndDiacritics:?];
  v16 = v15;

  if (v14 == sub_1A52403B4())
  {
    sub_1A52403B4();
  }

  else
  {
    v17 = [v5 labelColor];
    [v11 addAttribute:v6 value:v17 range:{v14, v16}];
  }

  [v11 copy];
  sub_1A524E0B4();

  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &qword_1EB126A40, 0x1E696AAB0);
  swift_dynamicCast();
  return v19;
}

uint64_t _s12PhotosUICore16PeopleNamingItemC8subtitle3forSo18NSAttributedStringCSgSo9CNContactC_tFZ_0()
{
  v0 = sub_1A463C2E4();
  v2 = v1;
  if (!v1 || ((v3 = v1 & 0x2000000000000000, v4 = HIBYTE(v1) & 0xF, v5 = v0 & 0xFFFFFFFFFFFFLL, (v1 & 0x2000000000000000) != 0) ? (v6 = HIBYTE(v1) & 0xF) : (v6 = v0 & 0xFFFFFFFFFFFFLL), !v6))
  {
    v7 = sub_1A463C400();
    v9 = v8;

    if (!v9)
    {
      return 0;
    }

    v3 = v9 & 0x2000000000000000;
    v4 = HIBYTE(v9) & 0xF;
    v0 = v7;
    v5 = v7 & 0xFFFFFFFFFFFFLL;
    v2 = v9;
  }

  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (v10)
  {
    v11 = _s12PhotosUICore16PeopleNamingItemC5title3for12searchStringSo012NSAttributedI0C15attributedTitle_Si17highlightLocationtSS_SStFZ_0(v0, v2, 0);

    return v11;
  }

  return 0;
}

uint64_t CNContact.requestFaceCropImage(withTargetSize:displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  v6 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  a5(0, v6);

  return 0;
}

uint64_t sub_1A463CAFC(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v8 = sub_1A524C3D4();

  v7[2](v7, 0, v8);

  _Block_release(v7);
  return 0;
}

id sub_1A463CBC4(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
    sub_1A524C674();

    v4 = sub_1A524C634();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t _sSo9CNContactC12PhotosUICoreE16px_localizedNameSSSgvg_0()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

id sub_1A463CCC0(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  if (!v2)
  {
    sub_1A524C674();
    v2 = sub_1A524C634();
  }

  return v2;
}

uint64_t CNContact.px_localIdentifier.getter()
{
  v1 = [v0 identifier];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t Array.sortedByRegrouping<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v61 = a1;
  v62 = a2;
  v54 = sub_1A524DF24();
  v50 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v45 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v45 - v16;
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  v46 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v45 - v25;
  v26 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v27 = sub_1A524CAB4();
  v63 = a5;
  v57 = a6;
  v28 = sub_1A3C3DFB4(v27, a5, v26, a6);

  v71 = v28;
  v64 = sub_1A524CB74();
  v29 = sub_1A524CAB4();
  v70 = v29;
  v55 = a3;
  if (!sub_1A524CAF4())
  {
    goto LABEL_17;
  }

  v30 = 0;
  v65 = (v17 + 16);
  v59 = (v12 + 48);
  v60 = (v17 + 32);
  v52 = (v12 + 32);
  v51 = (v12 + 8);
  v58 = (v17 + 8);
  v47 = (v12 + 16);
  ++v50;
  v31 = v55;
  v32 = v56;
  v53 = v11;
  while (1)
  {
    v35 = sub_1A524CAD4();
    sub_1A524CA64();
    if (v35)
    {
      v36 = *(v17 + 16);
      v36(v66, (v31 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v30), a4);
      v37 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    result = sub_1A524E474();
    if (v46 != 8)
    {
      break;
    }

    v67 = result;
    v36 = *v65;
    (*v65)(v66, &v67, a4);
    swift_unknownObjectRelease();
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
LABEL_15:
      __break(1u);
LABEL_16:
      v29 = v70;
LABEL_17:
      v69 = v29;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_7:
    (*v60)(v22, v66, a4);
    v61(v22);
    v38 = v63;
    if ((*v59)(v11, 1, v63) == 1)
    {
      (*v50)(v11, v54);
      sub_1A463DA5C(a4, a4);
      swift_allocObject();
      v33 = sub_1A524CA54();
      v36(v34, v22, a4);
      v67 = v33;
      sub_1A524CB74();
      sub_1A524CB14();
      (*(v17 + 8))(v22, a4);
    }

    else
    {
      (*v52)(v32, v11, v38);
      sub_1A524C484();
      if (v68)
      {
        (*v47)(v49, v32, v38);
        v67 = sub_1A524CAF4();
        v68 = 0;
        sub_1A524C454();
        v39 = v38;
        sub_1A524C494();
        sub_1A463DA5C(a4, a4);
        swift_allocObject();
        v40 = sub_1A524CA54();
        v36(v41, v22, a4);
        v67 = v40;
        sub_1A524CB74();
        sub_1A524CB14();
        v32 = v56;
        (*v51)(v56, v39);
        (*(v17 + 8))(v22, a4);
      }

      else
      {
        v42 = v67;
        v36(v48, v22, a4);
        v43 = v64;
        sub_1A524CB74();
        sub_1A524CAA4();
        sub_1A463DAC4(v42, v70, v43);
        sub_1A524CB14();
        v32 = v56;
        (*v51)(v56, v38);
        (*v58)(v22, a4);
      }

      v11 = v53;
      v31 = v55;
    }

    ++v30;
    if (v37 == sub_1A524CAF4())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void Array.sortByRegrouping<A>(by:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = Array.sortedByRegrouping<A>(by:)(a1, a2, *v5, *(a3 + 16), a4, a5);

  *v5 = v6;
}

uint64_t Array.enumerateSlices(startIndex:handler:)(uint64_t a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1A524CAF4();
  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result == a1)
  {
    return result;
  }

  v8 = result;
  if (result <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1A524CB74();
  sub_1A3FC337C();
  v9 = a1;
  do
  {
    v10 = v9 + 1;
    swift_getWitnessTable();
    sub_1A3C5F4E8(&qword_1EB120D80, sub_1A3FC337C, MEMORY[0x1E69E5FB8]);
    sub_1A524C564();
    a2();
    result = swift_unknownObjectRelease();
    v9 = v10;
  }

  while (v8 != v10);
  return result;
}

uint64_t Array<A>.containsOptional(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v16 = 0;
  }

  else
  {
    (*(v11 + 32))(v15, v10, a3);
    v18[1] = a2;
    sub_1A524CB74();
    swift_getWitnessTable();
    v16 = sub_1A524C9B4();
    (*(v11 + 8))(v15, a3);
  }

  return v16 & 1;
}

void sub_1A463DA5C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    sub_1A3CB8F68();
  }

  else
  {

    sub_1A524EA54();
  }
}

uint64_t sub_1A463DAC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A463DB18@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1A524CA94();
  *a3 = result;
  return result;
}

uint64_t sub_1A463DB54@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v47 = a4;
  v44 = a3;
  v55 = a1;
  v42 = a18;
  v43 = a19;
  v53 = a7;
  v54 = a15;
  v51 = a6;
  v52 = a14;
  v49 = a5;
  v50 = a13;
  v48 = a12;
  v45 = a10;
  v46 = a11;
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v41 - v23;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v25 = type metadata accessor for LemonadePlaceholderView(0);
  v26 = v25[5];
  sub_1A42545B4(0);
  sub_1A5247C74();
  if (a2)
  {
    v27 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
    v41 = a8;
    *(swift_allocObject() + 16) = v27;
    a8 = v41;
  }

  sub_1A5247C74();

  result = sub_1A4254A90(v24, a9 + v26);
  *(a9 + v25[6]) = a2 & 1;
  *(a9 + v25[7]) = v44 & 1;
  *(a9 + v25[8]) = v47 & 1;
  v29 = (a9 + v25[9]);
  v30 = v51;
  *v29 = v49;
  v29[1] = v30;
  v31 = (a9 + v25[10]);
  *v31 = v53;
  v31[1] = a8;
  v32 = (a9 + v25[11]);
  v33 = v46;
  *v32 = v45;
  v32[1] = v33;
  v34 = (a9 + v25[12]);
  v35 = v50;
  *v34 = v48;
  v34[1] = v35;
  v36 = (a9 + v25[13]);
  v37 = v54;
  *v36 = v52;
  v36[1] = v37;
  v38 = (a9 + v25[14]);
  *v38 = a16;
  v38[1] = a17;
  v39 = (a9 + v25[15]);
  v40 = v43;
  *v39 = v42;
  v39[1] = v40;
  return result;
}

uint64_t type metadata accessor for LemonadePlaceholderView(uint64_t a1)
{
  result = qword_1EB185D10;
  if (!qword_1EB185D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A463DE38@<X0>(uint64_t a1@<X8>)
{
  v11[3] = a1;
  sub_1A463F89C(0, &qword_1EB122BF8, sub_1A463E17C, MEMORY[0x1E697F948]);
  v11[2] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - v3;
  sub_1A463E17C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadePlaceholderView(0);
  v11[1] = v11;
  v14 = v1;
  v13 = v1;
  v12 = v1;
  sub_1A463E258(0);
  sub_1A3DF14C0(0);
  sub_1A463E2C0(0);
  sub_1A463E3C4();
  sub_1A405D614();
  sub_1A463E4D8(&qword_1EB1226C0, sub_1A463E2C0, sub_1A463E4A4);
  sub_1A52499D4();
  (*(v7 + 16))(v4, v9, v6);
  swift_storeEnumTagMultiPayload();
  sub_1A463E37C(&qword_1EB122248, sub_1A463E17C, MEMORY[0x1E697C7C8]);
  sub_1A5249744();
  return (*(v7 + 8))(v9, v6);
}

void sub_1A463E17C(uint64_t a1)
{
  if (!qword_1EB122240)
  {
    sub_1A463E258(255);
    sub_1A3DF14C0(255);
    sub_1A463E2C0(255);
    sub_1A463E3C4();
    sub_1A405D614();
    sub_1A463E4D8(&qword_1EB1226C0, sub_1A463E2C0, sub_1A463E4A4);
    v1 = sub_1A52499E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122240);
    }
  }
}

void sub_1A463E258(uint64_t a1)
{
  if (!qword_1EB123CB0)
  {
    sub_1A3E429B4();
    sub_1A3EBB1B4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123CB0);
    }
  }
}

void sub_1A463E2F4(uint64_t a1)
{
  if (!qword_1EB1226D0)
  {
    sub_1A463F89C(255, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1226D0);
    }
  }
}

uint64_t sub_1A463E37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A463E3C4()
{
  result = qword_1EB123CB8;
  if (!qword_1EB123CB8)
  {
    sub_1A463E258(255);
    sub_1A463E37C(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A463E37C(&qword_1EB1277A0, sub_1A3EBB1B4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CB8);
  }

  return result;
}

uint64_t sub_1A463E4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A463E554()
{
  result = qword_1EB1226E0;
  if (!qword_1EB1226E0)
  {
    sub_1A463F89C(255, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
    sub_1A3D93850();
    sub_1A5249E64();
    sub_1A463E37C(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A463E37C(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226E0);
  }

  return result;
}

void sub_1A463E6AC()
{
  sub_1A3E429B4();
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for LemonadePlaceholderView(0);
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A463E908()
{
  type metadata accessor for LemonadePlaceholderView(0);
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A463EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A463E2F4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadePlaceholderView(0);
  if (*(a1 + *(v9 + 56) + 8) || (v11 = v9, sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]), v12 = sub_1A5247C84(), v16) && (v13 = (*(*v16 + 144))(v12), , v13) && (v9 = v11, (*(a1 + *(v11 + 24)))) && (*(a1 + *(v9 + 28)) & 1) == 0)
  {
    sub_1A463EC70(v8);
    sub_1A3D16B34(v8, a2);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v6 + 56))(a2, v10, 1, v5);
}

uint64_t sub_1A463EC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  sub_1A463F89C(0, &qword_1EB13F840, sub_1A419A40C, MEMORY[0x1E697F948]);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v42 - v4;
  v50 = sub_1A5249E64();
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadePlaceholderView(0);
  v43 = *(v6 - 1);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3D93850();
  v47 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  sub_1A419A40C(0, v10);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  v17 = sub_1A5247C84();
  if (v54 && (v18 = (*(*v54 + 144))(v17), , v18) && *(v1 + v6[6]) == 1)
  {
    v54 = sub_1A3C38BD4(0xD000000000000028);
    v55 = v19;
    sub_1A463F904(v1, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v21 = swift_allocObject();
    sub_1A463F9CC(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    sub_1A3D5F9DC();
    sub_1A524B754();
    v22 = v45;
    sub_1A5249E54();
    v23 = sub_1A463E37C(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    v24 = sub_1A463E37C(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v25 = v47;
    v26 = v50;
    sub_1A524A934();
    (*(v46 + 8))(v22, v26);
    (*(v44 + 8))(v12, v25);
    v28 = v48;
    v27 = v49;
    (*(v48 + 16))(v52, v16, v49);
    swift_storeEnumTagMultiPayload();
    v54 = v25;
    v55 = v26;
    v56 = v23;
    v57 = v24;
    swift_getOpaqueTypeConformance2();
    v29 = v53;
    sub_1A5249744();
    (*(v28 + 8))(v16, v27);
    v39 = 0;
  }

  else
  {
    v30 = (v1 + v6[15]);
    v31 = *v30;
    if (*v30)
    {
      v32 = v30[1];
      v33 = (v1 + v6[14]);
      v34 = v33[1];
      if (v34)
      {
        v35 = *v33;
        v36 = v34;
      }

      else
      {
        v35 = 0;
        v36 = 0xE000000000000000;
      }

      v54 = v35;
      v55 = v36;
      sub_1A463F904(v2, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v37 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v31;
      *(v38 + 24) = v32;
      sub_1A463F9CC(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
      sub_1A3C66EE8(v31, v32);
      sub_1A3C66EE8(v31, v32);
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v39 = 1;
    v29 = v53;
  }

  sub_1A463F89C(0, &qword_1EB1226D8, sub_1A419A40C, MEMORY[0x1E697F960]);
  return (*(*(v40 - 8) + 56))(v29, v39, 1, v40);
}

double sub_1A463F4C4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  LOBYTE(a3) = *(a3 + 8);

  if ((a3 & 1) == 0)
  {
    v10 = sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4(v10, &dword_1A3C1C000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v13[1];
  }

  a1(v9);

  return result;
}

void sub_1A463F654(uint64_t a1)
{
  sub_1A463F968(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A463F968(319, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      sub_1A405D488(319, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1A463F968(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A463F7C4()
{
  result = qword_1EB122730;
  if (!qword_1EB122730)
  {
    sub_1A463F89C(255, &qword_1EB122728, sub_1A463E17C, MEMORY[0x1E697F960]);
    sub_1A463E37C(&qword_1EB122248, sub_1A463E17C, MEMORY[0x1E697C7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122730);
  }

  return result;
}

void sub_1A463F89C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A463F904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePlaceholderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A463F968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A463F9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePlaceholderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A463FA30()
{
  v1 = *(type metadata accessor for LemonadePlaceholderView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A463F4C4(v2, v3, v4);
}

void sub_1A463FA94()
{
  type metadata accessor for LemonadePlaceholderView(0);
  sub_1A463F968(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  if (v0)
  {
    [*(v0 + 24) setViewMode_];
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A463FBC0(void *a1)
{
  if (sub_1A4643524(a1))
  {

    sub_1A463FC08(a1);
  }
}

void sub_1A463FC08(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 allowRadarRequestAlerts];

  if (v8)
  {
    sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
    v9 = [swift_getObjCClassFromMetadata() sharedInstance];
    v10 = [v9 canShowInternalUI];

    if (!v10)
    {
      return;
    }

    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    *(v3 + 24) = v1;
    v6 = swift_allocObject();
    *(v6 + 2) = sub_1A46437C8;
    *(v6 + 3) = v3;
    aBlock[4] = sub_1A3D78DD0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D35A90;
    aBlock[3] = &block_descriptor_232;
    v12 = _Block_copy(aBlock);
    v13 = isEscapingClosureAtFileLocation;

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v14 = sub_1A3C4A780();
  (*(v4 + 16))(v6, v14, v3);
  v15 = isEscapingClosureAtFileLocation;
  v16 = sub_1A5246F04();
  v17 = sub_1A524D224();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v18 = 136315138;
    v19 = sub_1A46432AC(isEscapingClosureAtFileLocation);
    sub_1A3C2EF94(v19, v20, aBlock);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_1A463FFB4()
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v0 setAllowRadarRequestAlerts_];
}

double sub_1A4640028(void *a1)
{
  sub_1A3C56888(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1A524C634();
  v7 = [a1 beginCollectionOperationWithName:v6 timeout:100.0];

  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = a1;
  v9[6] = v7;

  swift_unknownObjectRetain();
  sub_1A3D4D930(0, 0, v5, &unk_1A5352AF8, v9);

  return result;
}

uint64_t sub_1A46401B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_1A5240CB4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = sub_1A524C6F4();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = sub_1A5240E64();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  sub_1A3C56888(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = sub_1A5246F24();
  v6[34] = v10;
  v6[35] = *(v10 - 8);
  v6[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4640488, 0, 0);
}

uint64_t sub_1A4640488()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[8];
  v8 = sub_1A3C4A780();
  (*(v2 + 16))(v1, v8, v3);
  v9 = *(v6 + 56);
  v0[37] = v9;
  v0[38] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v4, 1, 1, v5);
  v10 = *v7 + 1408;
  v0[39] = *v10;
  v0[40] = v10 & 0xFFFFFFFFFFFFLL | 0xEA03000000000000;
  v0[41] = sub_1A524CC54();
  v0[42] = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46405B8, v12, v11);
}

uint64_t sub_1A46405B8()
{
  v1 = *(v0 + 312);

  *(v0 + 344) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640638, 0, 0);
}

uint64_t sub_1A4640638(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = (*(*v4 + 280))(a1, a2, a3);

    *(v3 + 48) = v5;
    sub_1A3CB6B78(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44D617C();
    sub_1A52463B4();
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1A46409E4()
{
  v1 = *(v0 + 352);

  *(v0 + 376) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640A64, 0, 0);
}

uint64_t sub_1A4640A64(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!*(v3 + 376))
  {
    goto LABEL_4;
  }

  v5 = *(v3 + 232);
  v4 = *(v3 + 240);
  v6 = *(v3 + 136);
  v7 = *(v3 + 144);
  sub_1A5245504();

  v8 = *(v7 + 32);
  v8(v4, v5, v6);
  sub_1A5245264();
  sub_1A5245244();
  v9 = *(v3 + 256);
  v10 = *(v3 + 136);
  v11 = *(v3 + 144);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v11 + 8))(*(v3 + 240), v10);
    sub_1A4643CC8(v9, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_4:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v17 = *(v3 + 216);
  v16 = *(v3 + 224);
  v8(v16, v9, v10);
  (*(v11 + 16))(v17, v16, v10);
  v12 = sub_1A3ECD488(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = v12[2];
  v18 = v12[3];
  if (v19 >= v18 >> 1)
  {
    v12 = sub_1A3ECD488((v18 > 1), v19 + 1, 1, v12);
  }

  v26 = *(v3 + 296);
  v20 = *(v3 + 264);
  v22 = *(v3 + 216);
  v21 = *(v3 + 224);
  v24 = *(v3 + 136);
  v23 = *(v3 + 144);
  (*(v23 + 8))(*(v3 + 240), v24);
  sub_1A4643CC8(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v12[2] = v19 + 1;
  v8(v12 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v22, v24);
  v8(v20, v21, v24);
  v26(v20, 0, 1, v24);
LABEL_5:
  *(v3 + 384) = 0;
  *(v3 + 392) = v12;
  v13 = **(v3 + 64) + 1088;
  *(v3 + 400) = *v13;
  *(v3 + 408) = v13 & 0xFFFFFFFFFFFFLL | 0x472A000000000000;
  *(v3 + 416) = sub_1A524CC44();
  v15 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4640EE4, v15, v14);
}

uint64_t sub_1A4640EE4()
{
  v1 = *(v0 + 400);

  *(v0 + 424) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4640F64, 0, 0);
}

uint64_t sub_1A4640F64()
{
  v1 = *(v0 + 392);
  if (!*(v0 + 424))
  {
    goto LABEL_4;
  }

  if (*(v1 + 2))
  {

    v1 = *(v0 + 392);
LABEL_4:
    v2 = *(v0 + 384);
    goto LABEL_5;
  }

  v13 = *(v0 + 384);
  sub_1A52454B4();
  if (v13)
  {
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);

    sub_1A4643CC8(v17, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 80);
    v19 = sub_1A5240B74();
    [v18 endWithSuccess:0 error:v19];

    goto LABEL_20;
  }

  (*(*(v0 + 144) + 16))(*(v0 + 200), *(v0 + 208), *(v0 + 136));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_1A3ECD488(0, *(v1 + 2) + 1, 1, *(v0 + 392));
  }

  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_1A3ECD488((v41 > 1), v42 + 1, 1, v40);
  }

  v50 = *(v0 + 296);
  v43 = *(v0 + 264);
  v45 = *(v0 + 200);
  v44 = *(v0 + 208);
  v46 = *(v0 + 136);
  v47 = *(v0 + 144);

  sub_1A4643CC8(v43, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v40 + 2) = v42 + 1;
  v48 = *(v47 + 32);
  v48(&v40[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42], v45, v46);
  v48(v43, v44, v46);
  v50(v43, 0, 1, v46);
  v2 = 0;
  v1 = v40;
LABEL_5:
  *(v0 + 432) = v2;
  *(v0 + 440) = v1;
  v3 = *(v0 + 248);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_1A4643B24(*(v0 + 264), v3, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 192), *(v0 + 248), *(v0 + 136));
    *(v0 + 448) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v10 = v12;
    v11 = sub_1A4641598;
    goto LABEL_9;
  }

  sub_1A4643CC8(*(v0 + 248), &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v0 + 504) = v2;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 uploadVisualDiagnostics];

  if (v7)
  {
    *(v0 + 512) = sub_1A524CC44();
    v8 = sub_1A524CBC4();
    v10 = v9;
    v11 = sub_1A4642590;
LABEL_9:

    return MEMORY[0x1EEE6DFA0](v11, v8, v10);
  }

  v20 = sub_1A5246F04();
  v21 = sub_1A524D224();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1A3C1C000, v20, v21, "Skip uploading visualDiagnostics to TTR", v22, 2u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v23 = *(v0 + 440);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 144);
    v27 = *(v25 + 16);
    v26 = v25 + 16;
    v51 = v27;
    v28 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v29 = *(v26 + 56);
    do
    {
      v30 = *(v0 + 152);
      v31 = *(v0 + 136);
      v32 = *(v0 + 72);
      v51(v30, v28, v31);
      v33 = sub_1A5240D44();
      (*(v26 - 8))(v30, v31);
      [v32 addAttachment_];

      v28 += v29;
      --v24;
    }

    while (v24);
  }

  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v37, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v35 + 8))(v34, v36);
LABEL_20:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A4641598()
{
  v1 = *(v0 + 400);

  *(v0 + 456) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4641618, 0, 0);
}

uint64_t sub_1A4641618()
{
  if (*(v0 + 456))
  {
    v1 = *(v0 + 432);
    sub_1A52454A4();
    *(v0 + 464) = v1;
    if (v1)
    {
      v3 = *(v0 + 280);
      v2 = *(v0 + 288);
      v5 = *(v0 + 264);
      v4 = *(v0 + 272);
      v6 = *(v0 + 192);
      v8 = *(v0 + 136);
      v7 = *(v0 + 144);

      (*(v7 + 8))(v6, v8);
      sub_1A4643CC8(v5, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v3 + 8))(v2, v4);

      v9 = *(v0 + 80);
      v10 = sub_1A5240B74();
      [v9 endWithSuccess:0 error:v10];

LABEL_16:

      v37 = *(v0 + 8);

      return v37();
    }

    v17 = **(v0 + 64) + 1136;
    *(v0 + 472) = *v17;
    *(v0 + 480) = v17 & 0xFFFFFFFFFFFFLL | 0x349D000000000000;
    *(v0 + 488) = sub_1A524CC44();
    v13 = sub_1A524CBC4();
    v15 = v18;
    v16 = sub_1A4641ADC;
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 192), *(v0 + 136));
    *(v0 + 504) = *(v0 + 432);
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v11 = [swift_getObjCClassFromMetadata() sharedInstance];
    v12 = [v11 uploadVisualDiagnostics];

    if ((v12 & 1) == 0)
    {
      v19 = sub_1A5246F04();
      v20 = sub_1A524D224();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1A3C1C000, v19, v20, "Skip uploading visualDiagnostics to TTR", v21, 2u);
        MEMORY[0x1A590EEC0](v21, -1, -1);
      }

      v22 = *(v0 + 440);
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = *(v0 + 144);
        v26 = *(v24 + 16);
        v25 = v24 + 16;
        v39 = v26;
        v27 = v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v28 = *(v25 + 56);
        do
        {
          v29 = *(v0 + 152);
          v30 = *(v0 + 136);
          v31 = *(v0 + 72);
          v39(v29, v27, v30);
          v32 = sub_1A5240D44();
          (*(v25 - 8))(v29, v30);
          [v31 addAttachment_];

          v27 += v28;
          --v23;
        }

        while (v23);
      }

      v34 = *(v0 + 280);
      v33 = *(v0 + 288);
      v36 = *(v0 + 264);
      v35 = *(v0 + 272);
      [*(v0 + 80) endWithSuccess:1 error:0];
      sub_1A4643CC8(v36, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v34 + 8))(v33, v35);
      goto LABEL_16;
    }

    *(v0 + 512) = sub_1A524CC44();
    v13 = sub_1A524CBC4();
    v15 = v14;
    v16 = sub_1A4642590;
  }

  return MEMORY[0x1EEE6DFA0](v16, v13, v15);
}

uint64_t sub_1A4641ADC()
{
  v1 = *(v0 + 472);

  *(v0 + 496) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4641B5C, 0, 0);
}

uint64_t sub_1A4641B5C(uint64_t a1)
{
  if (*(v1 + 496))
  {
    v2 = *(v1 + 464);
    sub_1A52451D4();
    if (v2)
    {
      v3 = *(v1 + 280);
      v4 = *(v1 + 288);
      v6 = *(v1 + 264);
      v5 = *(v1 + 272);
      v7 = *(v1 + 192);
      v9 = *(v1 + 136);
      v8 = *(v1 + 144);

      (*(v8 + 8))(v7, v9);
      sub_1A4643CC8(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      (*(v3 + 8))(v4, v5);

      v10 = *(v1 + 80);
      v11 = sub_1A5240B74();
      [v10 endWithSuccess:0 error:v11];

LABEL_27:

      v76 = *(v1 + 8);

      return v76();
    }

    v19 = *(v1 + 120);
    v20 = *(v1 + 128);
    v21 = *(v1 + 112);
    sub_1A524C6D4();
    v22 = sub_1A524C684();
    v24 = v23;

    (*(v19 + 8))(v20, v21);
    v25 = *MEMORY[0x1E6968F70];
    if (v24 >> 60 == 15)
    {
      v26 = *(*(v1 + 96) + 104);
    }

    else
    {
      v28 = *(v1 + 96);
      v29 = *(v1 + 104);
      v30 = *(v1 + 88);
      *(v1 + 32) = 0x2E7363697274654DLL;
      *(v1 + 40) = 0xEB00000000747874;
      v31 = v25;
      v79 = *(v28 + 104);
      v79(v29);
      sub_1A3D5F9DC();
      sub_1A5240E44();
      (*(v28 + 8))(v29, v30);
      sub_1A5240EB4();
      v32 = v22;
      v78 = v31;
      v33 = sub_1A5246F04();
      v34 = sub_1A524D264();
      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v1 + 184);
      v37 = v1;
      v40 = v1 + 136;
      v38 = *(v1 + 136);
      v39 = *(v40 + 8);
      if (v35)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1A3C1C000, v33, v34, "Successfully saved event recorder metrics to Metrics.txt in storydiagnostics", v41, 2u);
        MEMORY[0x1A590EEC0](v41, -1, -1);
      }

      sub_1A3DB556C(v32, v24);

      (*(v39 + 8))(v36, v38);
      v1 = v37;
      v26 = v79;
      v25 = v78;
    }

    v42 = *(v1 + 96);
    v43 = *(v1 + 104);
    v44 = *(v1 + 88);
    *(v1 + 16) = 0xD000000000000016;
    *(v1 + 24) = 0x80000001A53DB140;
    v26(v43, v25, v44);
    sub_1A3D5F9DC();
    sub_1A5240E44();
    (*(v42 + 8))(v43, v44);
    sub_1A52451C4();
    v45 = sub_1A5246F04();
    v46 = sub_1A524D264();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v1 + 192);
    v49 = *(v1 + 176);
    v50 = *(v1 + 136);
    v51 = *(v1 + 144);
    if (v47)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1A3C1C000, v45, v46, "Successfully saved performance diagram to PerformanceDiagram.pdf in storydiagnostics", v52, 2u);
      MEMORY[0x1A590EEC0](v52, -1, -1);
    }

    else
    {
    }

    v53 = *(v51 + 8);
    v53(v49, v50);
    v53(v48, v50);
    v27 = 0;
  }

  else
  {
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v1 + 192);
    v16 = *(v1 + 136);
    v17 = *(v1 + 144);
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, v13, "No event recorder, skipping writing performance diagram or metrics file", v18, 2u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    (*(v17 + 8))(v15, v16);
    v27 = *(v1 + 464);
  }

  *(v1 + 504) = v27;
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v54 = [swift_getObjCClassFromMetadata() sharedInstance];
  v55 = [v54 uploadVisualDiagnostics];

  if (!v55)
  {
    v58 = sub_1A5246F04();
    v59 = sub_1A524D224();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1A3C1C000, v58, v59, "Skip uploading visualDiagnostics to TTR", v60, 2u);
      MEMORY[0x1A590EEC0](v60, -1, -1);
    }

    v61 = *(v1 + 440);
    v62 = *(v61 + 16);
    if (v62)
    {
      v63 = *(v1 + 144);
      v65 = *(v63 + 16);
      v64 = v63 + 16;
      v80 = v65;
      v66 = v61 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
      v67 = *(v64 + 56);
      do
      {
        v68 = *(v1 + 152);
        v69 = *(v1 + 136);
        v70 = *(v1 + 72);
        v80(v68, v66, v69);
        v71 = sub_1A5240D44();
        (*(v64 - 8))(v68, v69);
        [v70 addAttachment_];

        v66 += v67;
        --v62;
      }

      while (v62);
    }

    v73 = *(v1 + 280);
    v72 = *(v1 + 288);
    v75 = *(v1 + 264);
    v74 = *(v1 + 272);
    [*(v1 + 80) endWithSuccess:1 error:0];
    sub_1A4643CC8(v75, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v73 + 8))(v72, v74);
    goto LABEL_27;
  }

  *(v1 + 512) = sub_1A524CC44();
  v57 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4642590, v57, v56);
}

uint64_t sub_1A4642590()
{
  v1 = *(v0 + 400);

  *(v0 + 520) = v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1A4642610, 0, 0);
}

uint64_t sub_1A4642610(uint64_t a1)
{
  if (!*(v1 + 520))
  {
    v4 = sub_1A5246F04();
    v10 = sub_1A524D224();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v10, "Skip uploading visualDiagnostics to TTR", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    goto LABEL_7;
  }

  v2 = *(v1 + 504);
  sub_1A5245264();
  sub_1A5245224();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (!os_log_type_enabled(v4, v5))
    {

      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Error generating visual diagnostics. %@", v6, 0xCu);
    sub_1A3CB65E4(v7);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);

LABEL_7:
LABEL_12:
    v19 = *(v1 + 440);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v1 + 144);
      v23 = *(v21 + 16);
      v22 = v21 + 16;
      v35 = v23;
      v24 = v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v25 = *(v22 + 56);
      do
      {
        v26 = *(v1 + 152);
        v27 = *(v1 + 136);
        v28 = *(v1 + 72);
        v35(v26, v24, v27);
        v29 = sub_1A5240D44();
        (*(v22 - 8))(v26, v27);
        [v28 addAttachment_];

        v24 += v25;
        --v20;
      }

      while (v20);
    }

    v31 = *(v1 + 280);
    v30 = *(v1 + 288);
    v33 = *(v1 + 264);
    v32 = *(v1 + 272);
    [*(v1 + 80) endWithSuccess:1 error:0];
    sub_1A4643CC8(v33, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v31 + 8))(v30, v32);

    v34 = *(v1 + 8);

    return v34();
  }

  v12 = *(v1 + 64);
  v13 = sub_1A52454D4();
  *(v1 + 528) = v13;
  type metadata accessor for GenerativeStoryVisualDiagnosticsProvider(0, v14);
  v15 = *(v12 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
  v16 = swift_task_alloc();
  *(v1 + 536) = v16;
  *v16 = v1;
  v16[1] = sub_1A4642AB0;
  v17 = *(v1 + 168);

  return sub_1A3F6BDB0(v13, v17, v15);
}

uint64_t sub_1A4642AB0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_1A4642F04;
  }

  else
  {
    v2 = sub_1A4642BE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4642BE4()
{
  (*(*(v0 + 144) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 136));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 440);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A3ECD488(0, v2[2] + 1, 1, *(v0 + 440));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1A3ECD488((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);

  (*(v8 + 8))(v5, v7);
  v2[2] = v4 + 1;
  (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v6, v7);
  v9 = v2[2];
  if (v9)
  {
    v10 = *(v0 + 144);
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v25 = v12;
    v13 = v2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    do
    {
      v15 = *(v0 + 152);
      v16 = *(v0 + 136);
      v17 = *(v0 + 72);
      v25(v15, v13, v16);
      v18 = sub_1A5240D44();
      (*(v11 - 8))(v15, v16);
      [v17 addAttachment_];

      v13 += v14;
      --v9;
    }

    while (v9);
  }

  v20 = *(v0 + 280);
  v19 = *(v0 + 288);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v22, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v20 + 8))(v19, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A4642F04()
{
  (*(*(v0 + 144) + 8))(*(v0 + 168), *(v0 + 136));
  v1 = *(v0 + 544);
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "Error generating visual diagnostics. %@", v5, 0xCu);
    sub_1A3CB65E4(v6);
    MEMORY[0x1A590EEC0](v6, -1, -1);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 440);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + 144);
    v13 = *(v11 + 16);
    v12 = v11 + 16;
    v26 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v16 = *(v0 + 152);
      v17 = *(v0 + 136);
      v18 = *(v0 + 72);
      v26(v16, v14, v17);
      v19 = sub_1A5240D44();
      (*(v12 - 8))(v16, v17);
      [v18 addAttachment_];

      v14 += v15;
      --v10;
    }

    while (v10);
  }

  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  [*(v0 + 80) endWithSuccess:1 error:0];
  sub_1A4643CC8(v23, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(v21 + 8))(v20, v22);

  v24 = *(v0 + 8);

  return v24();
}

unint64_t sub_1A46432AC(void *a1)
{
  v2 = sub_1A5244B34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v6 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69C1168])
    {
      (*(v3 + 96))(v5, v2);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD00000000000001ALL, 0x80000001A53E1410);
      v14 = a1;
      v7 = a1;
      v8 = sub_1A524C714();
      MEMORY[0x1A5907B60](v8);

      MEMORY[0x1A5907B60](0xD00000000000007CLL, 0x80000001A53E1430);
      v9 = v15;
      v10 = sub_1A5244DD4();
      (*(*(v10 - 8) + 8))(v5, v10);

      return v9;
    }

    (*(v3 + 8))(v5, v2);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1A524E404();

  v15 = 0xD00000000000001ALL;
  v16 = 0x80000001A53E1410;
  v17 = a1;
  v12 = a1;
  v13 = sub_1A524C714();
  MEMORY[0x1A5907B60](v13);

  return v15;
}

uint64_t sub_1A4643524(void *a1)
{
  v2 = sub_1A5244B34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1;
  v6 = a1;
  sub_1A3DBD9A0();
  if (swift_dynamicCast())
  {
    v7 = (*(v3 + 88))(v5, v2);
    if (v7 == *MEMORY[0x1E69C1168])
    {
      (*(v3 + 96))(v5, v2);
      v8 = sub_1A5244DD4();
      (*(*(v8 - 8) + 8))(v5, v8);
LABEL_9:
      v10 = v14;
LABEL_10:

      return 1;
    }

    if (v7 == *MEMORY[0x1E69C1178])
    {
      (*(v3 + 96))(v5, v2);

      sub_1A4643C24(0);
      sub_1A4643CC8(v5 + *(v9 + 48), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      goto LABEL_9;
    }

    if (v7 == *MEMORY[0x1E69C1140] || v7 == *MEMORY[0x1E69C1148])
    {
      (*(v3 + 8))(v5, v2);
      goto LABEL_9;
    }

    if (v7 == *MEMORY[0x1E69C1180])
    {
      goto LABEL_9;
    }

    (*(v3 + 8))(v5, v2);
  }

  v16 = a1;
  v12 = a1;
  if (swift_dynamicCast())
  {
    if (!v15)
    {
      v10 = v16;
      goto LABEL_10;
    }

    sub_1A440B338(v14, v15);
  }

  return 0;
}

void sub_1A46437C8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setTitle_];

  v5 = sub_1A46432AC(v3);
  MEMORY[0x1A5907B60](v5);

  v6 = sub_1A524C634();

  [a1 setMessage_];

  v7 = sub_1A524C634();
  v8 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1A4643BA4;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3C2E0D0;
  v16 = &block_descriptor_24_3;
  v9 = _Block_copy(&v13);

  [a1 addActionWithTitle:v7 style:0 action:v9];
  _Block_release(v9);

  v10 = sub_1A524C634();
  v17 = sub_1A463FFB4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3C2E0D0;
  v16 = &block_descriptor_27_7;
  v11 = _Block_copy(&v13);
  [a1 addActionWithTitle:v10 style:0 action:v11];
  _Block_release(v11);

  v12 = sub_1A524C634();
  [a1 addActionWithTitle:v12 style:1 action:0];
}

uint64_t sub_1A4643A6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A46401B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4643B24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56888(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1A4643BA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1048))(1);
  }

  return result;
}

void sub_1A4643C24(uint64_t a1)
{
  if (!qword_1EB13F848)
  {
    sub_1A3DBD9A0();
    sub_1A3C56888(255, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13F848);
    }
  }
}

uint64_t sub_1A4643CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56888(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OverlayViewController.addOverlay(for:to:animationDuration:animations:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v16[2] = a3;
  v18 = a1;
  v17 = *(*v5 + 80);
  v16[5] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16[1] = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v16[4] = v16 - v9;
  sub_1A4644B44(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1EB186F70;
  swift_beginAccess();
  (*(v12 + 16))(v14, v6 + v15, v11);
  sub_1A52464D4();
}

void sub_1A46444B0(uint64_t a1, id a2, uint64_t a3)
{
  [a2 addSubview_];
  swift_beginAccess();
  sub_1A4644B44(0);
  sub_1A52464B4();
}

void OverlayViewController.removeOverlay(from:animationDuration:animations:)(void *a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v12[6] = a1;
  sub_1A4644B44(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EB186F70;
  swift_beginAccess();
  (*(v8 + 16))(v10, v5 + v11, v7);
  sub_1A52464D4();
}

uint64_t OverlayViewController.deinit(double a1)
{
  v2 = qword_1EB186F70;
  sub_1A4644B44(0);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_1A3C33378(*(v1 + qword_1EB16A3E0), *(v1 + qword_1EB16A3E0 + 8));
  v4 = qword_1EB16A3F0;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t OverlayViewController.__deallocating_deinit(double a1)
{
  OverlayViewController.deinit(a1);

  return swift_deallocClassInstance();
}

void sub_1A4644B44(uint64_t a1)
{
  if (!qword_1EB128C48)
  {
    sub_1A441CDE8();
    sub_1A52464F4();
  }
}

id sub_1A4644B9C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  v4 = *(v2 + qword_1EB16A3E0);
  if (v4)
  {
    return v4(v1);
  }

  return result;
}

void sub_1A4644BF8(uint64_t a1)
{
  sub_1A4644B44(319);
  if (v1 <= 0x3F)
  {
    sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

double sub_1A4644D3C()
{
  swift_beginAccess();

  return result;
}

double sub_1A4644D74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t sub_1A4644DBC()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1A4644DE4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

void *sub_1A4644E20()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PhotosDetailsTimeWidgetView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = v6;
  }

  else
  {

    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v11[1];
  }

  return v6;
}

uint64_t type metadata accessor for PhotosDetailsTimeWidgetView(uint64_t a1)
{
  result = qword_1EB173350;
  if (!qword_1EB173350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4644FCC()
{
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void sub_1A4644FF4(char a1)
{
  type metadata accessor for PhotosDetailsTimeWidgetView(0);
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v5 & 1) == 0)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
    sub_1A46507B8(&qword_1EB12AB50, v2, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState, &unk_1A5352C58);
    v3 = sub_1A5247EB4();
    (*(*v3 + 96))(0);
  }

  sub_1A524B6A4();
  if (v5 != (a1 & 1))
  {
    sub_1A524B6A4();
    if (v5 == 1 && (_UIApplicationIsExtension() & 1) == 0)
    {
      v4 = [objc_opt_self() px_sharedApplication];
      [v4 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
    }
  }
}

void sub_1A46451D4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A4650B00(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  *(a2 + v4[6]) = 0x403C000000000000;
  v6 = a2 + v4[8];
  *v6 = sub_1A4644FCC;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = (a2 + v4[7]);
  type metadata accessor for PhotosDetailsTimeWidgetViewModel(0);
  sub_1A46507B8(&qword_1EB12AA58, 255, type metadata accessor for PhotosDetailsTimeWidgetViewModel, &unk_1A533DFE8);
  v8 = a1;
  *v7 = sub_1A5248494();
  v7[1] = v9;
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x140);
  v11 = v8;
  v12 = v10();

  sub_1A4411614(v12);
  v13 = a2 + v4[9];
  sub_1A524B694();

  *v13 = v15;
  *(v13 + 1) = v16;
  v14 = a2 + v4[10];
  *v14 = 0;
  *(v14 + 1) = 0;
}

uint64_t sub_1A46453C8@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  sub_1A46465F4(0);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647F84(0);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647FC0(0);
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v89 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v93 = (&v75 - v10);
  sub_1A46510FC(0, &qword_1EB122BD8, sub_1A4647FFC, sub_1A4647FC0, MEMORY[0x1E697F948]);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v75 - v12;
  v102 = sub_1A5249764();
  v88 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v86 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1A52486A4();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A52489A4();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v19;
  v21 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464842C(0);
  v23 = v22;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46482B0(0, v24);
  v101 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v80 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46481A0(0, v28);
  v103 = v30;
  v87 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v95 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647FFC(0, v31);
  v96 = v33;
  v92 = *(v33 - 8);
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v91 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v17;
  v36 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v17 + 28) + 8)) + 0x140))(v34);
  v99 = v21;
  v98 = v20;
  if (v36 != 5)
  {
    *v4 = sub_1A5249584();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    sub_1A4651180(0, &qword_1EB124488, sub_1A46466C8, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A464A870(v1, &v4[*(v73 + 44)]);
  }

  v93 = type metadata accessor for PhotosDetailsTimeWidgetView;
  sub_1A4651348(v1, v21, type metadata accessor for PhotosDetailsTimeWidgetView);
  v90 = *(v18 + 80);
  v37 = (v90 + 16) & ~v90;
  v85 = v37;
  v38 = swift_allocObject();
  v89 = type metadata accessor for PhotosDetailsTimeWidgetView;
  v39 = sub_1A465044C(v21, v38 + v37, type metadata accessor for PhotosDetailsTimeWidgetView);
  MEMORY[0x1EEE9AC00](v39);
  v76 = v1;
  sub_1A464849C(0);
  sub_1A4648720();
  sub_1A524B704();
  v26[*(v23 + 36)] = sub_1A3E948B8() & 1;
  v40 = v77;
  sub_1A5248994();
  sub_1A4648810();
  sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v41 = v80;
  v42 = v79;
  sub_1A524A934();
  (*(v78 + 8))(v40, v42);
  sub_1A465125C(v26, sub_1A464842C);
  sub_1A46510FC(0, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
  v44 = (v41 + *(v43 + 36));
  sub_1A3E744F4(0);
  sub_1A5248AF4();
  *v44 = swift_getKeyPath();
  sub_1A4248EC0(v15);
  v45 = v82;
  sub_1A4394B64(v15, v82, &off_1EE6E6C90);
  v46 = *(v83 + 8);
  v47 = v84;
  v46(v15, v84);
  sub_1A4248EC0(v15);
  v48 = sub_1A4394B64(v15, v45, &off_1EE6E6C90);
  (v46)(v15, v47, v48);
  sub_1A524BC74();
  sub_1A52481F4();
  v49 = v101;
  v50 = (v41 + *(v101 + 36));
  v51 = v112;
  *v50 = v111;
  v50[1] = v51;
  v50[2] = v113;
  v52 = v86;
  sub_1A5248B84();
  v53 = sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
  v54 = sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v55 = v102;
  sub_1A524A974();
  (*(v88 + 8))(v52, v55);
  sub_1A465125C(v41, sub_1A46482B0);
  v56 = v76;
  v57 = v76 + *(v45 + 40);
  v58 = *v57;
  v59 = *(v57 + 8);
  v109 = v58;
  v110 = v59;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v60 = v56;
  v61 = v99;
  sub_1A4651348(v60, v99, v93);
  v62 = v85;
  v63 = swift_allocObject();
  sub_1A465044C(v61, v63 + v62, v89);
  sub_1A4648A40(0);
  v65 = v64;
  v105 = v49;
  v106 = v55;
  v107 = v53;
  v108 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4, MEMORY[0x1E6982090]);
  v67 = v91;
  v68 = v103;
  v69 = v95;
  sub_1A524B1B4();

  (*(v87 + 8))(v69, v68);
  v70 = v92;
  v71 = v96;
  (*(v92 + 16))(v100, v67, v96);
  swift_storeEnumTagMultiPayload();
  v105 = v68;
  v106 = v65;
  v107 = OpaqueTypeConformance2;
  v108 = v74;
  swift_getOpaqueTypeConformance2();
  sub_1A46501CC(&qword_1EB1232A8, sub_1A4647FC0, sub_1A464F59C);
  sub_1A5249744();
  return (*(v70 + 8))(v67, v71);
}

void sub_1A4646630(uint64_t a1)
{
  if (!qword_1EB1216C8)
  {
    sub_1A46466C8(255);
    sub_1A46507B8(&qword_1EB121010, 255, sub_1A46466C8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1216C8);
    }
  }
}

void sub_1A4646704(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4647A6C(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4646760(uint64_t a1, double a2)
{
  if (!qword_1EB121A08)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    sub_1A4647700(v2);
    v3 = sub_1A524B784();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB121A08);
    }
  }
}

void sub_1A4646808(uint64_t a1)
{
  if (!qword_1EB1219A0)
  {
    sub_1A46468A0(255);
    sub_1A46507B8(&qword_1EB1212A8, 255, sub_1A46468A0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1219A0);
    }
  }
}

void sub_1A46468D4(uint64_t a1)
{
  if (!qword_1EB121ED0)
  {
    sub_1A464694C(255);
    sub_1A4646F98(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121ED0);
    }
  }
}

void sub_1A464694C(uint64_t a1)
{
  if (!qword_1EB121ED8)
  {
    sub_1A4646A24(255);
    sub_1A4646D10(255);
    sub_1A4646D4C();
    sub_1A46507B8(&qword_1EB1270B8, 255, sub_1A4646D10, MEMORY[0x1E6981F48]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121ED8);
    }
  }
}

void sub_1A4646A24(uint64_t a1)
{
  if (!qword_1EB123388)
  {
    sub_1A4646AA4(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123388);
    }
  }
}

void sub_1A4646AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4646B4C(uint64_t a1)
{
  if (!qword_1EB123EB8)
  {
    sub_1A4646BCC(255);
    sub_1A4646CA4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123EB8);
    }
  }
}

void sub_1A4646BCC(uint64_t a1)
{
  if (!qword_1EB121E58)
  {
    sub_1A3E33788(255);
    sub_1A3EE1D04(255);
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E58);
    }
  }
}

void sub_1A4646CA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A464FE68(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4646D4C()
{
  result = qword_1EB123390;
  if (!qword_1EB123390)
  {
    sub_1A4646A24(255);
    sub_1A46501CC(&qword_1EB123788, sub_1A4646AA4, sub_1A4646E24);
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123390);
  }

  return result;
}

unint64_t sub_1A4646E24()
{
  result = qword_1EB123EC0;
  if (!qword_1EB123EC0)
  {
    sub_1A4646B4C(255);
    sub_1A3E33788(255);
    sub_1A3EE1D04(255);
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EC0);
  }

  return result;
}

uint64_t sub_1A4646F48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4646CA4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4646FCC(uint64_t a1)
{
  if (!qword_1EB123DD8)
  {
    sub_1A464704C(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123DD8);
    }
  }
}

void sub_1A464704C(uint64_t a1)
{
  if (!qword_1EB121D38)
  {
    sub_1A4647124(255);
    type metadata accessor for PhotosDetailsTimeEditView(255);
    sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124, MEMORY[0x1E697D680]);
    sub_1A46475D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D38);
    }
  }
}

void sub_1A4647158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A524B764();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A46471C8(uint64_t a1)
{
  if (!qword_1EB1237A0)
  {
    sub_1A4647248(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1237A0);
    }
  }
}

void sub_1A4647248(uint64_t a1)
{
  if (!qword_1EB123ED8)
  {
    sub_1A46472C8(255);
    sub_1A4646CA4(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123ED8);
    }
  }
}

void sub_1A46472C8(uint64_t a1)
{
  if (!qword_1EB121E68)
  {
    v1 = MEMORY[0x1E6981148];
    sub_1A4647C7C(255, &qword_1EB1286B0, MEMORY[0x1E6981148]);
    sub_1A3EE1D04(255);
    sub_1A4650D14(&qword_1EB1286B8, &qword_1EB1286B0, v1);
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E68);
    }
  }
}

unint64_t sub_1A46473D8()
{
  result = qword_1EB1237A8;
  if (!qword_1EB1237A8)
  {
    sub_1A46471C8(255);
    sub_1A4647478();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1237A8);
  }

  return result;
}

unint64_t sub_1A4647478()
{
  result = qword_1EB123EE0;
  if (!qword_1EB123EE0)
  {
    sub_1A4647248(255);
    v1 = MEMORY[0x1E6981148];
    sub_1A4647C7C(255, &qword_1EB1286B0, MEMORY[0x1E6981148]);
    sub_1A3EE1D04(255);
    sub_1A4650D14(&qword_1EB1286B8, &qword_1EB1286B0, v1);
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EE0);
  }

  return result;
}

void sub_1A4647674(uint64_t a1)
{
  if (!qword_1EB127338)
  {
    sub_1A464FE68(255, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127338);
    }
  }
}

unint64_t sub_1A4647700(double a1)
{
  result = qword_1EB122620;
  if (!qword_1EB122620)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808, MEMORY[0x1E69817F8]);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C, MEMORY[0x1E6981600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122620);
  }

  return result;
}

void sub_1A4647874(uint64_t a1)
{
  if (!qword_1EB121E80)
  {
    sub_1A46478F8(255);
    sub_1A4647ED0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E80);
    }
  }
}

void sub_1A46478F8(uint64_t a1)
{
  if (!qword_1EB123C00)
  {
    sub_1A4647998(255);
    sub_1A4599300(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123C00);
    }
  }
}

void sub_1A4647998(uint64_t a1)
{
  if (!qword_1EB1218E8)
  {
    sub_1A4647A30(255);
    sub_1A46507B8(&qword_1EB1210B0, 255, sub_1A4647A30, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1218E8);
    }
  }
}

void sub_1A4647A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4647AE8(uint64_t a1, double a2)
{
  if (!qword_1EB127D50)
  {
    sub_1A46510FC(255, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB127D50);
    }
  }
}

void sub_1A4647BEC(uint64_t a1)
{
  if (!qword_1EB1282B0)
  {
    sub_1A4647C7C(255, &qword_1EB128528, MEMORY[0x1E6981748]);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1282B0);
    }
  }
}

void sub_1A4647C7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1A5249F54();
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4647D18(uint64_t a1)
{
  if (!qword_1EB123180)
  {
    sub_1A4647D98(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123180);
    }
  }
}

void sub_1A4647D98(uint64_t a1)
{
  if (!qword_1EB1233A0)
  {
    sub_1A4646AE0(255, &qword_1EB123798, sub_1A4647E50, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A4646CA4(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1233A0);
    }
  }
}

void sub_1A4647E50(uint64_t a1)
{
  if (!qword_1EB123ED0)
  {
    sub_1A46472C8(255);
    sub_1A4646CA4(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123ED0);
    }
  }
}

unint64_t sub_1A4647ED0()
{
  result = qword_1EB123C08;
  if (!qword_1EB123C08)
  {
    sub_1A46478F8(255);
    sub_1A46507B8(&qword_1EB1218F0, 255, sub_1A4647998, MEMORY[0x1E69817F8]);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C08);
  }

  return result;
}

void sub_1A4647FFC(uint64_t a1, double a2)
{
  if (!qword_1EB121D30)
  {
    sub_1A46481A0(255, a2);
    sub_1A4648A40(255);
    sub_1A46482B0(255, v2);
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4, MEMORY[0x1E6982090]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D30);
    }
  }
}

void sub_1A46481A0(uint64_t a1, double a2)
{
  if (!qword_1EB121EA8)
  {
    sub_1A46482B0(255, a2);
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EA8);
    }
  }
}

void sub_1A46482B0(uint64_t a1, double a2)
{
  if (!qword_1EB1237E0)
  {
    sub_1A46510FC(255, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1237E0);
    }
  }
}

void sub_1A4648354(uint64_t a1, double a2)
{
  if (!qword_1EB121F40)
  {
    sub_1A464842C(255);
    sub_1A52489A4();
    sub_1A4648810();
    sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F40);
    }
  }
}

void sub_1A4648514(uint64_t a1)
{
  if (!qword_1EB121928)
  {
    sub_1A46485AC(255);
    sub_1A46507B8(&qword_1EB121130, 255, sub_1A46485AC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121928);
    }
  }
}

void sub_1A46485E0(uint64_t a1, double a2)
{
  if (!qword_1EB123308)
  {
    sub_1A44E10A0(255, a2);
    sub_1A4648658(255, v2);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123308);
    }
  }
}

void sub_1A46486A0(uint64_t a1)
{
  if (!qword_1EB123778)
  {
    sub_1A4646B4C(255);
    sub_1A4646CA4(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123778);
    }
  }
}

unint64_t sub_1A464875C()
{
  result = qword_1EB123BB0;
  if (!qword_1EB123BB0)
  {
    sub_1A46484D8(255);
    sub_1A46507B8(&qword_1EB121930, 255, sub_1A4648514, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BB0);
  }

  return result;
}

unint64_t sub_1A4648810()
{
  result = qword_1EB123C60;
  if (!qword_1EB123C60)
  {
    sub_1A464842C(255);
    sub_1A46507B8(&qword_1EB121B18, 255, sub_1A4648468, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C60);
  }

  return result;
}

unint64_t sub_1A46488C4(double a1)
{
  result = qword_1EB123F50;
  if (!qword_1EB123F50)
  {
    sub_1A46510FC(255, &qword_1EB123F48, sub_1A4648354, sub_1A3E744F4, MEMORY[0x1E697E830]);
    sub_1A464842C(255);
    sub_1A52489A4();
    sub_1A4648810();
    sub_1A46507B8(&qword_1EB122F70, 255, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1A46507B8(&qword_1EB1220F0, 255, sub_1A3E744F4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F50);
  }

  return result;
}

uint64_t sub_1A4648A74(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4648AE4()
{
  v1 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241144();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = objc_opt_self();
  v8 = sub_1A524C634();
  sub_1A4650B00(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v10;
  v11 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v33[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_1A4651348(v0, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeWidgetView);
  String.init(forType:)(v33);
  v13 = sub_1A524C634();

  *(inited + 48) = v13;
  *(inited + 56) = sub_1A524C674();
  *(inited + 64) = v14;
  v15 = *((*MEMORY[0x1E69E7D40] & **&v0[*(v11 + 28) + 8]) + 0x88);
  *(inited + 72) = v15();
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F24E98(0);
  swift_arrayDestroy();
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v16 = sub_1A524C3D4();

  [v32 sendEvent:v8 withPayload:v16];

  v32 = v0;
  v17 = v28;
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  sub_1A46507B8(&qword_1EB12AB50, v18, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState, &unk_1A5352C58);
  sub_1A5247EB4();
  v19 = v15();
  v20 = v29;
  v21 = v19;
  v22 = sub_1A3E944EC();
  v23 = *(v17 + 48);
  if ((v23)(v5, 1, v20, v22) == 1)
  {
    v24 = v30;
    sub_1A5241134();
    if (v23(v5, 1, v20) != 1)
    {
      sub_1A3C42E10(v5, sub_1A3C41108);
    }
  }

  else
  {
    v25 = v30;
    (*(v17 + 32))(v30, v5, v20);
    v24 = v25;
  }

  type metadata accessor for PhotosDetailsTimeEditViewModel(0);
  v26 = v31;
  sub_1A3E9463C();
  sub_1A4916BD4(v21, 0, v24, v26);
}

double sub_1A464902C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4651180(0, &qword_1EB13F8B8, sub_1A46485AC, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A46492B0(a1, a2 + *(v8 + 44));
  v9 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v10 = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v9 + 28) + 8)) + 0xC0))();
  [v10 contentGuideInsets];
  v12 = v11;

  LOBYTE(v10) = sub_1A524A064();
  sub_1A46484D8(0);
  v14 = a2 + *(v13 + 36);
  *v14 = v10;
  *(v14 + 8) = 0x4028000000000000;
  *(v14 + 16) = v12;
  *(v14 + 24) = xmmword_1A5352BB0;
  *(v14 + 40) = 0;
  sub_1A4248EC0(v7);
  sub_1A4394B64(v7, v9, &off_1EE6E6C90);
  v15 = *(v5 + 8);
  v15(v7, v4);
  sub_1A4248EC0(v7);
  v16 = sub_1A4394B64(v7, v9, &off_1EE6E6C90);
  (v15)(v7, v4, v16);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A464849C(0);
  v18 = (a2 + *(v17 + 36));
  v19 = v21[1];
  *v18 = v21[0];
  v18[1] = v19;
  result = *&v22;
  v18[2] = v22;
  return result;
}

uint64_t sub_1A46492B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a1;
  v146 = a2;
  sub_1A3EE1D04(0);
  v129 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v137 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v134 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v131 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v132 = v119 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v133 = v119 - v9;
  sub_1A3E33788(0);
  v135 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v136 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646BCC(0);
  v128 = v12;
  v126 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v124 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646B4C(0);
  v123 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v127 = v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46486A0(0);
  v145 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v125 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = v119 - v19;
  sub_1A46510FC(0, &qword_1EB13F8C0, sub_1A46486A0, sub_1A464760C, MEMORY[0x1E697F948]);
  v140 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v142 = (v119 - v21);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5241144();
  v147 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v138 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4648658(0, v26);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v144 = v119 - v33;
  sub_1A44E10A0(0, v32);
  v35 = v34 - 8;
  MEMORY[0x1EEE9AC00](v34);
  v143 = v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v119 - v38;
  v40 = sub_1A524B544();
  v41 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  *&v154 = v40;
  *(&v154 + 1) = KeyPath;
  *&v155 = v41;
  sub_1A429B9D8(0);
  sub_1A3E7440C();
  sub_1A524AAE4();

  v43 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v44 = v148;
  sub_1A524BC74();
  sub_1A52481F4();
  v45 = *(v35 + 44);
  v141 = v39;
  v46 = &v39[v45];
  v47 = v155;
  *v46 = v154;
  *(v46 + 1) = v47;
  *(v46 + 2) = v156;
  v48 = *(v44 + *(v43 + 28) + 8);
  v49 = sub_1A3E944EC();
  v50 = *(v147 + 48);
  v139 = v25;
  if (v50(v24, 1, v25, v49) == 1)
  {
    sub_1A3C42E10(v24, sub_1A3C41108);
    sub_1A464E964(v148, &v151);
    v51 = v152;
    v52 = v142;
    *v142 = v151;
    *(v52 + 16) = v51;
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46506BC();
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C, MEMORY[0x1E6981600]);
    v53 = v144;
    sub_1A5249744();
LABEL_8:
    v112 = v141;
    v113 = v143;
    sub_1A4651348(v141, v143, sub_1A44E10A0);
    sub_1A46511F4(v53, v30, sub_1A4648658);
    v114 = v146;
    sub_1A4651348(v113, v146, sub_1A44E10A0);
    sub_1A46485E0(0, v115);
    v117 = v116;
    sub_1A46511F4(v30, v114 + *(v116 + 48), sub_1A4648658);
    v118 = v114 + *(v117 + 64);
    *v118 = 0;
    *(v118 + 8) = 1;
    sub_1A465125C(v53, sub_1A4648658);
    sub_1A3C42E10(v112, sub_1A44E10A0);
    sub_1A465125C(v30, sub_1A4648658);
    return sub_1A3C42E10(v113, sub_1A44E10A0);
  }

  v119[0] = v30;
  v54 = *(v147 + 32);
  v122 = v43;
  v55 = v138;
  v54(v138, v24, v139);
  *&v151 = sub_1A3E96F4C(v55);
  *(&v151 + 1) = v56;
  v119[1] = sub_1A3D5F9DC();
  v57 = sub_1A524A464();
  v120 = v58;
  v121 = v59;
  *&v151 = v57;
  *(&v151 + 1) = v58;
  v61 = v60 & 1;
  v152 = v60 & 1;
  v153 = v59;
  v62 = sub_1A524C634();
  v63 = PXLocalizedString(v62);

  v64 = sub_1A524C674();
  v66 = v65;

  v149 = v64;
  v150 = v66;
  v67 = sub_1A524A464();
  v69 = v68;
  v71 = v70;
  v72 = v131;
  sub_1A524AAC4();
  sub_1A3E04DF4(v67, v69, v71 & 1);

  sub_1A3E04DF4(v57, v120, v61);

  v121 = v48;
  *&v151 = sub_1A3E97904();
  *(&v151 + 1) = v73;
  v74 = sub_1A524A464();
  v76 = v75;
  LOBYTE(v55) = v77;
  v78 = v132;
  sub_1A5248774();
  sub_1A3E04DF4(v74, v76, v55 & 1);

  v79 = MEMORY[0x1E6981148];
  sub_1A465075C(v72, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v80 = sub_1A524C634();
  v81 = PXLocalizedString(v80);

  v82 = sub_1A524C674();
  v84 = v83;

  *&v151 = v82;
  *(&v151 + 1) = v84;
  v85 = sub_1A524A464();
  v87 = v86;
  LOBYTE(v72) = v88;
  v89 = v133;
  sub_1A5248754();
  sub_1A3E04DF4(v85, v87, v72 & 1);

  sub_1A465075C(v78, &qword_1EB1286B0, v79);
  v90 = v136;
  sub_1A5248744();
  sub_1A465075C(v89, &qword_1EB1286B0, v79);
  v91 = (v148 + *(v122 + 36));
  v92 = *v91;
  v93 = *(v91 + 1);
  LOBYTE(v151) = *v91;
  *(&v151 + 1) = v93;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v94 = sub_1A47A62E4(v149);
  v95 = swift_getKeyPath();
  v96 = (v90 + *(v135 + 36));
  *v96 = v95;
  v96[1] = v94;
  v97 = *MEMORY[0x1E697E6D0];
  v98 = sub_1A52486A4();
  v99 = v137;
  (*(*(v98 - 8) + 104))(v137, v97, v98);
  sub_1A46507B8(&unk_1EB1288C0, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    v101 = v124;
    sub_1A524AB84();
    sub_1A3C42E10(v99, sub_1A3EE1D04);
    v102 = sub_1A3C42E10(v90, sub_1A3E33788);
    if ((*((*MEMORY[0x1E69E7D40] & *v121) + 0x140))(v102) == 5)
    {
      v103 = 1;
    }

    else
    {
      v103 = 2;
    }

    v104 = swift_getKeyPath();
    v105 = v127;
    (*(v126 + 32))(v127, v101, v128);
    v106 = v105 + *(v123 + 36);
    *v106 = v104;
    *(v106 + 8) = v103;
    *(v106 + 16) = 0;
    LOBYTE(v151) = v92;
    *(&v151 + 1) = v93;
    sub_1A524B6A4();
    v107 = sub_1A47A64C4(v149);
    v108 = swift_getKeyPath();
    v109 = v125;
    sub_1A46512BC(v105, v125, sub_1A4646B4C);
    v110 = (v109 + *(v145 + 36));
    *v110 = v108;
    v110[1] = v107;
    v111 = v130;
    sub_1A46512BC(v109, v130, sub_1A46486A0);
    sub_1A46511F4(v111, v142, sub_1A46486A0);
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46506BC();
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C, MEMORY[0x1E6981600]);
    v53 = v144;
    sub_1A5249744();
    sub_1A465125C(v111, sub_1A46486A0);
    (*(v147 + 8))(v138, v139);
    v30 = v119[0];
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A464A200@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosDetailsTimeEditView(0);
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsTimeWidgetView(0);
  if (sub_1A3E948B8())
  {
    sub_1A464A368(v4);
    sub_1A465044C(v4, a1, type metadata accessor for PhotosDetailsTimeEditView);
    return (*(v8 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v6 = *(v8 + 56);

    return v6(a1, 1, 1, v2);
  }
}

void sub_1A464A368(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = v3;
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5241144();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(v2 + 32) + 16);
  type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
  v13 = sub_1A46507B8(&qword_1EB12AB50, v12, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState, &unk_1A5352C58);
  v14 = sub_1A5247EB4();
  v15 = (*(*v14 + 88))(v14);

  if (!v15)
  {
    v30 = v13;
    v31 = v1;
    v29 = v11;
    v19 = v32;
    v28 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v2 + 28) + 8)) + 0x88))(v16);
    v20 = v33;
    v21 = sub_1A3E944EC();
    v22 = *(v34 + 48);
    if ((v22)(v20, 1, v35, v21) == 1)
    {
      v23 = v10;
      sub_1A5241134();
      v24 = v19;
      if (v22(v20, 1, v35) != 1)
      {
        sub_1A3C42E10(v20, sub_1A3C41108);
      }
    }

    else
    {
      v23 = v10;
      (*(v34 + 32))(v10, v20, v35);
      v24 = v19;
    }

    type metadata accessor for PhotosDetailsTimeEditViewModel(0);
    sub_1A3E9463C();
    sub_1A4916BD4(v28, 0, v23, v24);
  }

  v17 = sub_1A5247EB4();
  v18 = (*(*v17 + 88))(v17);

  if (v18)
  {

    v25 = v38;
    sub_1A4651348(v1, v38, type metadata accessor for PhotosDetailsTimeWidgetView);
    v26 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v27 = swift_allocObject();
    sub_1A465044C(v25, v27 + v26, type metadata accessor for PhotosDetailsTimeWidgetView);
    sub_1A3F1D4BC(sub_1A46504B4, v27, v39);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A464A870(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46478F8(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647874(0);
  MEMORY[0x1EEE9AC00](v8);
  v21 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  sub_1A4646760(0, v11);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  *v15 = sub_1A5249314();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_1A46509F4(0, v16);
  sub_1A464ACC4(a1, &v15[*(v17 + 44)]);
  *v7 = sub_1A52492F4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A4651180(0, &qword_1EB124500, sub_1A4647A30, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A464B2A8(a1, &v7[*(v18 + 44)]);
}

uint64_t sub_1A464ACC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1A5241534();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646808(0);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v30 - v10;
  sub_1A46510FC(0, &qword_1EB122BB0, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F948]);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5241144();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a1 + *(type metadata accessor for PhotosDetailsTimeWidgetView(0) + 28) + 8);
  v23 = sub_1A3E944EC();
  if ((*(v19 + 48))(v17, 1, v18, v23) == 1)
  {
    sub_1A3C42E10(v17, sub_1A3C41108);
    sub_1A464E964(a1, &v36);
    v24 = v37;
    *v14 = v36;
    v14[16] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808, MEMORY[0x1E69817F8]);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C, MEMORY[0x1E6981600]);
    return sub_1A5249744();
  }

  else
  {
    v30 = v12;
    (*(v19 + 32))(v21, v17, v18);
    v26.n128_f64[0] = sub_1A3E9463C();
    if ((*((*MEMORY[0x1E69E7D40] & *v22) + 0x140))(v26) == 5)
    {
      v27 = sub_1A5249314();
    }

    else
    {
      v27 = sub_1A52492F4();
    }

    *v8 = v27;
    *(v8 + 1) = 0;
    v8[16] = 1;
    sub_1A4651180(0, &qword_1EB124538, sub_1A46468A0, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A464D490(a1, v21, &v8[*(v28 + 44)]);
    (*(v31 + 8))(v5, v32);
    v29 = v33;
    sub_1A46512BC(v8, v33, sub_1A4646808);
    sub_1A46511F4(v29, v14, sub_1A4646808);
    swift_storeEnumTagMultiPayload();
    sub_1A464760C(0);
    sub_1A46507B8(&qword_1EB1219A8, 255, sub_1A4646808, MEMORY[0x1E69817F8]);
    sub_1A4648A74(&qword_1EB127518, sub_1A464760C, sub_1A464783C, MEMORY[0x1E6981600]);
    sub_1A5249744();
    sub_1A465125C(v29, sub_1A4646808);
    return (*(v19 + 8))(v21, v18);
  }
}

void sub_1A464B2A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v219 = a2;
  sub_1A3EE1D04(0);
  v215 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v226 = v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v225 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v222 = v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v223 = v193 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v224 = v193 - v10;
  sub_1A4647D18(0);
  v216 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v218 = v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v217 = v193 - v14;
  sub_1A4646AE0(0, &qword_1EB127F20, sub_1A4647BEC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v195 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v196 = v193 - v16;
  sub_1A4647CDC(0);
  v212 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v197 = v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E697F948];
  sub_1A4650B64(0, &qword_1EB127EF0, MEMORY[0x1E697F948], v18);
  v208 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v211 = v193 - v22;
  sub_1A4650BF0(0, &qword_1EB127F18, v20);
  v198 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v199 = v193 - v24;
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  v210 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v200 = v193 - v26;
  v202 = sub_1A5249524();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v28 = v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB128528, MEMORY[0x1E6981748]);
  v213 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v193 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v203 = v193 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v204 = v193 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v205 = v193 - v40;
  sub_1A4647BEC(0);
  v207 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v206 = v193 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647BCC(0, v42);
  v220 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v209 = v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46510FC(0, &qword_1EB127F28, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F948]);
  v47 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = v193 - v49;
  sub_1A4647B84(0, v48);
  v52 = v51;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647AE8(0, v53);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v214 = v193 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = v193 - v59;
  v61 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v62 = *(a1 + *(v61 + 28) + 8);
  v63 = *(v62 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isSyndicatedGuestAsset) == 1;
  v228 = a1;
  v229 = v60;
  v227 = v61;
  v221 = v62;
  if (v63)
  {
    v64 = v61;
    v65 = sub_1A524B544();
    v66 = (a1 + *(v64 + 36));
    v67 = *v66;
    v68 = *(v66 + 1);
    LOBYTE(v231) = v67;
    v232 = v68;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v69 = sub_1A4411728(v230);
    KeyPath = swift_getKeyPath();
    v231 = v65;
    v232 = KeyPath;
    v233 = v69;
    sub_1A429B9D8(0);
    sub_1A3E7440C();
    sub_1A524AAE4();

    sub_1A4651348(v55, v50, sub_1A4647B84);
    swift_storeEnumTagMultiPayload();
    sub_1A4650ED0(v71);
    sub_1A4650F84(v72);
    sub_1A5249744();
    sub_1A3C42E10(v55, sub_1A4647B84);
    sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    v74 = v73;
    v75 = *(*(v73 - 8) + 56);
    v76 = v60;
LABEL_16:
    v75(v76, 0, 1, v74);
LABEL_17:
    v192 = *(v221 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_fileName + 8);
    v231 = *(v221 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_fileName);
    v232 = v192;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v193[0] = v47;
  v193[1] = v52;
  v194 = v50;
  if (*(v62 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsTimeWidgetViewModel_isiCloudEnabled) != 1)
  {
    sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
    (*(*(v124 - 8) + 56))(v229, 1, 1, v124);
    goto LABEL_17;
  }

  v77 = sub_1A3E94388();
  if (v77 < 2)
  {
    v231 = sub_1A524B544();
    sub_1A52494F4();
    v125 = v203;
    sub_1A524AAA4();
    (*(v201 + 8))(v28, v202);

    v126 = sub_1A524C634();
    v127 = PXLocalizedString(v126);

    v128 = sub_1A524C674();
    v130 = v129;

    v231 = v128;
    v232 = v130;
    sub_1A3D5F9DC();
    v131 = sub_1A524A464();
    v133 = v132;
    v135 = v134;
    v136 = v204;
    sub_1A5248764();
    sub_1A3E04DF4(v131, v133, v135 & 1);

    sub_1A465075C(v125, &qword_1EB128528, MEMORY[0x1E6981748]);
    v137 = sub_1A524C634();
    v138 = PXLocalizedString(v137);

    v139 = sub_1A524C674();
    v141 = v140;

    v231 = v139;
    v232 = v141;
    v142 = sub_1A524A464();
    v144 = v143;
    LOBYTE(v141) = v145;
    v146 = v205;
    sub_1A5248774();
    sub_1A3E04DF4(v142, v144, v141 & 1);

    v147 = MEMORY[0x1E6981748];
    sub_1A465075C(v136, &qword_1EB128528, MEMORY[0x1E6981748]);
    v148 = v206;
    sub_1A5248744();
    sub_1A465075C(v146, &qword_1EB128528, v147);
    v149 = v228 + *(v227 + 36);
    v150 = *v149;
    v151 = *(v149 + 8);
    LOBYTE(v231) = v150;
    v232 = v151;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v152 = sub_1A4411728(v230);
    v153 = swift_getKeyPath();
    v154 = (v148 + *(v207 + 36));
    *v154 = v153;
    v154[1] = v152;
    sub_1A4651348(v148, v196, sub_1A4647BEC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650C54();
    v155 = v197;
    sub_1A5249744();
    sub_1A4651348(v155, v211, sub_1A4647CDC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650DBC();
    sub_1A4650E50();
    v122 = v209;
    sub_1A5249744();
    sub_1A3C42E10(v155, sub_1A4647CDC);
  }

  else
  {
    if (v77 - 3 < 2)
    {
      v231 = sub_1A524B544();
      sub_1A52494F4();
      v78 = MEMORY[0x1E6981748];
      sub_1A524AAA4();
      v79 = *(v201 + 8);
      v80 = v202;
      v79(v28, v202);

      sub_1A5249504();
      sub_1A5248784();
      v79(v28, v80);
      sub_1A465075C(v31, &qword_1EB128528, v78);
      v81 = sub_1A524C634();
      v82 = PXLocalizedString(v81);

      v83 = sub_1A524C674();
      v85 = v84;

      v231 = v83;
      v232 = v85;
      sub_1A3D5F9DC();
      v86 = sub_1A524A464();
      v88 = v87;
      v90 = v89;
      v91 = v203;
      sub_1A5248764();
      sub_1A3E04DF4(v86, v88, v90 & 1);

      sub_1A465075C(v34, &qword_1EB128528, MEMORY[0x1E6981748]);
      v92 = sub_1A524C634();
      v93 = PXLocalizedString(v92);

      v94 = sub_1A524C674();
      v96 = v95;

      v231 = v94;
      v232 = v96;
      v97 = sub_1A524A464();
      v99 = v98;
      LOBYTE(v86) = v100;
      v101 = v204;
      sub_1A5248754();
      sub_1A3E04DF4(v97, v99, v86 & 1);

      sub_1A465075C(v91, &qword_1EB128528, MEMORY[0x1E6981748]);
      v102 = sub_1A524C634();
      v103 = PXLocalizedString(v102);

      v104 = sub_1A524C674();
      v106 = v105;

      v231 = v104;
      v232 = v106;
      v107 = sub_1A524A464();
      v109 = v108;
      LOBYTE(v82) = v110;
      v111 = v205;
      sub_1A5248774();
      sub_1A3E04DF4(v107, v109, v82 & 1);

      v112 = MEMORY[0x1E6981748];
      sub_1A465075C(v101, &qword_1EB128528, MEMORY[0x1E6981748]);
      v113 = v206;
      sub_1A5248744();
      sub_1A465075C(v111, &qword_1EB128528, v112);
      v114 = v228 + *(v227 + 36);
      v115 = *v114;
      v116 = *(v114 + 8);
      LOBYTE(v231) = v115;
      v232 = v116;
      sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v118 = sub_1A444872C(v117);
      v119 = swift_getKeyPath();
      v120 = (v113 + *(v207 + 36));
      *v120 = v119;
      v120[1] = v118;
      sub_1A4651348(v113, v199, sub_1A4647BEC);
      swift_storeEnumTagMultiPayload();
      sub_1A4650C54();
      v121 = v200;
      sub_1A5249744();
      sub_1A4651004(v121, v211);
      swift_storeEnumTagMultiPayload();
      sub_1A4650DBC();
      sub_1A4650E50();
      v122 = v209;
      sub_1A5249744();
      sub_1A4651084(v121);
      v123 = sub_1A4647BEC;
LABEL_14:
      v186 = v123;
      v187 = v113;
      goto LABEL_15;
    }

    if (v77 != 2)
    {
      swift_storeEnumTagMultiPayload();
      sub_1A4650C54();
      v113 = v197;
      sub_1A5249744();
      sub_1A4651348(v113, v211, sub_1A4647CDC);
      swift_storeEnumTagMultiPayload();
      sub_1A4650DBC();
      sub_1A4650E50();
      v122 = v209;
      sub_1A5249744();
      v123 = sub_1A4647CDC;
      goto LABEL_14;
    }

    v231 = sub_1A524B544();
    sub_1A52494F4();
    v156 = v203;
    sub_1A524AAA4();
    (*(v201 + 8))(v28, v202);

    v157 = sub_1A524C634();
    v158 = PXLocalizedString(v157);

    v159 = sub_1A524C674();
    v161 = v160;

    v231 = v159;
    v232 = v161;
    sub_1A3D5F9DC();
    v162 = sub_1A524A464();
    v164 = v163;
    v166 = v165;
    v167 = v204;
    sub_1A5248764();
    sub_1A3E04DF4(v162, v164, v166 & 1);

    v168 = MEMORY[0x1E6981748];
    sub_1A465075C(v156, &qword_1EB128528, MEMORY[0x1E6981748]);
    v169 = sub_1A524C634();
    v170 = PXLocalizedString(v169);

    v171 = sub_1A524C674();
    v173 = v172;

    v231 = v171;
    v232 = v173;
    v174 = sub_1A524A464();
    v176 = v175;
    LOBYTE(v170) = v177;
    v178 = v205;
    sub_1A5248774();
    sub_1A3E04DF4(v174, v176, v170 & 1);

    sub_1A465075C(v167, &qword_1EB128528, v168);
    v148 = v206;
    sub_1A5248744();
    sub_1A465075C(v178, &qword_1EB128528, v168);
    v179 = v228 + *(v227 + 36);
    v180 = *v179;
    v181 = *(v179 + 8);
    LOBYTE(v231) = v180;
    v232 = v181;
    sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v182 = sub_1A4411728(v230);
    v183 = swift_getKeyPath();
    v184 = (v148 + *(v207 + 36));
    *v184 = v183;
    v184[1] = v182;
    sub_1A4651348(v148, v199, sub_1A4647BEC);
    swift_storeEnumTagMultiPayload();
    sub_1A4650C54();
    v185 = v200;
    sub_1A5249744();
    sub_1A4651004(v185, v211);
    swift_storeEnumTagMultiPayload();
    sub_1A4650DBC();
    sub_1A4650E50();
    v122 = v209;
    sub_1A5249744();
    sub_1A4651084(v185);
  }

  v186 = sub_1A4647BEC;
  v187 = v148;
LABEL_15:
  sub_1A3C42E10(v187, v186);
  v188 = v229;
  sub_1A4651348(v122, v194, sub_1A4647BCC);
  swift_storeEnumTagMultiPayload();
  sub_1A4650ED0(v189);
  sub_1A4650F84(v190);
  sub_1A5249744();
  sub_1A3C42E10(v122, sub_1A4647BCC);
  sub_1A46510FC(0, &qword_1EB127D58, sub_1A4647B84, sub_1A4647BCC, MEMORY[0x1E697F960]);
  v74 = v191;
  v75 = *(*(v191 - 8) + 56);
  v76 = v188;
  goto LABEL_16;
}

void sub_1A464D0E4()
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsTimeWidgetView(0);
  if (sub_1A3E94388() == 3 || sub_1A3E94388() == 4)
  {
    v7 = [objc_opt_self() px:216 builtInAlbumNameForSubtype:?];
    if (!v7)
    {
LABEL_6:
      v13 = sub_1A524D244();
      v14 = sub_1A475874C();
      swift_beginAccess();
      v15 = *v14;
      sub_1A5246DF4(v13, &dword_1A3C1C000, v15, "Could not construct URL for Unable to Upload smart album", 56, 2, MEMORY[0x1E69E7CC0]);

      return;
    }

    v8 = v7;
    v9 = sub_1A524C674();
    v11 = v10;

    sub_1A4650B00(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A52F8E10;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1A3D710E8();
    *(v12 + 32) = v9;
    *(v12 + 40) = v11;
    sub_1A524C6C4();
    sub_1A5240E34();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_1A3C42E10(v2, sub_1A3EE53E0);
      goto LABEL_6;
    }

    (*(v4 + 32))(v6, v2, v3);
    v16 = [objc_opt_self() defaultWorkspace];
    if (v16)
    {
      v17 = v16;

      v18 = sub_1A5240D44();
      v19 = [v17 openSensitiveURL:v18 withOptions:0];

      if ((v19 & 1) == 0)
      {
        v20 = sub_1A524D244();
        v21 = sub_1A475874C();
        swift_beginAccess();
        v22 = *v21;
        sub_1A5246DF4(v20, &dword_1A3C1C000, v22, "Failed to open URL for Unable to Upload smart album", 51, 2, MEMORY[0x1E69E7CC0]);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A464D490@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  v128 = a2;
  v135 = a1;
  v125 = a3;
  sub_1A4646FCC(0);
  v122 = v5;
  v121 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646F98(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v105 - v10;
  sub_1A3EE1D04(0);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v133 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v105 - v17;
  sub_1A3E33788(0);
  v130 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646BCC(0);
  v114 = v20;
  v113 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646B4C(0);
  v109 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646AA4(0);
  v107 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4646A24(0);
  v117 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v116 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464694C(0);
  v120 = v28;
  v119 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v105 - v31;
  v129 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v32 = *(a1 + *(v129 + 28) + 8);
  v138 = sub_1A3E96F4C(v3);
  v139 = v33;
  sub_1A3D5F9DC();
  v34 = sub_1A524A464();
  v126 = v35;
  v127 = v36;
  v138 = v34;
  v139 = v35;
  LOBYTE(v3) = v37 & 1;
  v140 = v37 & 1;
  v141 = v36;
  v38 = sub_1A524C634();
  v39 = PXLocalizedString(v38);

  v40 = sub_1A524C674();
  v42 = v41;

  v136 = v40;
  v137 = v42;
  v43 = sub_1A524A464();
  v45 = v44;
  v47 = v46;
  sub_1A524AAC4();
  sub_1A3E04DF4(v43, v45, v47 & 1);

  sub_1A3E04DF4(v34, v126, v3);

  v128 = v32;
  v138 = sub_1A3E97904();
  v139 = v48;
  v49 = v130;
  v50 = sub_1A524A464();
  v52 = v51;
  LOBYTE(v32) = v53;
  v54 = v132;
  sub_1A5248774();
  v55 = v52;
  v56 = v134;
  sub_1A3E04DF4(v50, v55, v32 & 1);
  v57 = v131;

  v58 = MEMORY[0x1E6981148];
  sub_1A465075C(v15, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  sub_1A5248744();
  sub_1A465075C(v54, &qword_1EB1286B0, v58);
  v59 = (v135 + *(v129 + 36));
  v60 = *v59;
  v61 = *(v59 + 1);
  LOBYTE(v138) = *v59;
  v139 = v61;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v62 = sub_1A47A62E4(v136);
  KeyPath = swift_getKeyPath();
  v64 = (v57 + *(v49 + 36));
  *v64 = KeyPath;
  v64[1] = v62;
  v65 = *MEMORY[0x1E697E6D0];
  v66 = sub_1A52486A4();
  (*(*(v66 - 8) + 104))(v56, v65, v66);
  sub_1A46507B8(&unk_1EB1288C0, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A3E45530();
    sub_1A46507B8(&unk_1EB1263B0, 255, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    v68 = v110;
    sub_1A524AB84();
    sub_1A3C42E10(v56, sub_1A3EE1D04);
    v69 = sub_1A3C42E10(v57, sub_1A3E33788);
    if ((*((*MEMORY[0x1E69E7D40] & *v128) + 0x140))(v69) == 5)
    {
      v70 = 1;
    }

    else
    {
      v70 = 2;
    }

    v71 = swift_getKeyPath();
    v72 = v108;
    (*(v113 + 32))(v108, v68, v114);
    v73 = v72 + *(v109 + 36);
    *v73 = v71;
    *(v73 + 8) = v70;
    *(v73 + 16) = 0;
    v74 = v111;
    sub_1A46512BC(v72, v111, sub_1A4646B4C);
    *(v74 + *(v107 + 36)) = 256;
    LODWORD(v134) = v60;
    LOBYTE(v138) = v60;
    v139 = v61;
    sub_1A524B6A4();
    v75 = sub_1A47A64C4(v136);
    v76 = swift_getKeyPath();
    v77 = v116;
    v78 = sub_1A46512BC(v74, v116, sub_1A4646AA4);
    v79 = (v77 + *(v117 + 36));
    *v79 = v76;
    v79[1] = v75;
    MEMORY[0x1EEE9AC00](v78);
    *(&v105 - 2) = v135;
    sub_1A4646D10(0);
    sub_1A4646D4C();
    sub_1A46507B8(&qword_1EB1270B8, 255, sub_1A4646D10, MEMORY[0x1E6981F48]);
    v80 = v112;
    sub_1A524A954();
    sub_1A465125C(v77, sub_1A4646A24);
    v81 = sub_1A3E948B8();
    v82 = 1;
    v83 = v123;
    v84 = v122;
    if (v81)
    {
      v85 = sub_1A524C634();
      v86 = PXLocalizedString(v85);

      v87 = sub_1A524C674();
      v89 = v88;

      v90 = v106;
      sub_1A464E60C(v87, v89, v106);

      LOBYTE(v138) = v134;
      v139 = v61;
      sub_1A524B6A4();
      v92 = sub_1A47A64B0(v136, v91);
      v93 = swift_getKeyPath();
      v94 = (v90 + *(v84 + 36));
      *v94 = v93;
      v94[1] = v92;
      sub_1A46512BC(v90, v83, sub_1A4646FCC);
      v82 = 0;
    }

    (*(v121 + 56))(v83, v82, 1, v84);
    v95 = v119;
    v96 = *(v119 + 16);
    v97 = v118;
    v98 = v120;
    v96(v118, v80, v120);
    LOBYTE(v138) = 1;
    v99 = v124;
    sub_1A46511F4(v83, v124, sub_1A4646F98);
    v100 = v125;
    v96(v125, v97, v98);
    sub_1A46468D4(0);
    v102 = &v100[*(v101 + 48)];
    v103 = v138;
    *v102 = 0;
    v102[8] = v103;
    sub_1A46511F4(v99, &v100[*(v101 + 64)], sub_1A4646F98);
    sub_1A465125C(v83, sub_1A4646F98);
    v104 = *(v95 + 8);
    v104(v80, v98);
    sub_1A465125C(v99, sub_1A4646F98);
    return (v104)(v97, v98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A464E144@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v4 = v3 - 8;
  v43[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43[1] = v5;
  v44 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41C3F80(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - v9;
  sub_1A3D93850();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  v19 = sub_1A524C634();
  v20 = PXLocalizedString(v19);

  v21 = sub_1A524C674();
  v23 = v22;

  v48 = v21;
  v49 = v23;
  v24 = *(v4 + 36);
  v45 = a1;
  v25 = *(a1 + v24 + 8);
  *(swift_allocObject() + 16) = v25;
  sub_1A3D5F9DC();
  v25;
  v26 = sub_1A524B754();
  if (sub_1A3E96EC8(v26, v27))
  {
    v28 = sub_1A524C634();
    v29 = PXLocalizedString(v28);

    v30 = sub_1A524C674();
    v32 = v31;

    v48 = v30;
    v49 = v32;
    v33 = v44;
    sub_1A4651348(v45, v44, type metadata accessor for PhotosDetailsTimeWidgetView);
    v34 = (*(v43[0] + 80) + 16) & ~*(v43[0] + 80);
    v35 = swift_allocObject();
    sub_1A465044C(v33, v35 + v34, type metadata accessor for PhotosDetailsTimeWidgetView);
    sub_1A524B754();
    (*(v13 + 32))(v10, v15, v12);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v13 + 56))(v10, v36, 1, v12);
  v37 = *(v13 + 16);
  v37(v15, v18, v12);
  v38 = v46;
  sub_1A4651348(v10, v46, sub_1A41C3F80);
  v39 = v47;
  v37(v47, v15, v12);
  sub_1A4647A6C(0, &unk_1EB127460, sub_1A3D93850, sub_1A41C3F80);
  sub_1A4651348(v38, &v39[*(v40 + 48)], sub_1A41C3F80);
  sub_1A3C42E10(v10, sub_1A41C3F80);
  v41 = *(v13 + 8);
  v41(v18, v12);
  sub_1A3C42E10(v38, sub_1A41C3F80);
  return (v41)(v15, v12);
}

uint64_t sub_1A464E60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22 = a2;
  v27 = a3;
  v6 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4647124(0);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v23 = type metadata accessor for PhotosDetailsTimeWidgetView;
  v24 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4651348(v4, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsTimeWidgetView);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  sub_1A465044C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PhotosDetailsTimeWidgetView);
  v28 = a1;
  v29 = v22;
  v30 = v4;
  sub_1A46471C8(0);
  sub_1A46473D8();
  sub_1A524B704();
  v15 = v4 + *(v7 + 48);
  v16 = *v15;
  v17 = *(v15 + 8);
  v31 = v16;
  v32 = v17;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A4651348(v4, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v18 = swift_allocObject();
  sub_1A465044C(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13, type metadata accessor for PhotosDetailsTimeWidgetView);
  type metadata accessor for PhotosDetailsTimeEditView(0);
  sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124, MEMORY[0x1E697D680]);
  sub_1A46475D4();
  v19 = v24;
  v20 = v25;
  sub_1A524B1B4();

  return (*(v26 + 8))(v19, v20);
}

uint64_t sub_1A464E964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4646FCC(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = sub_1A524C634();
  v12 = PXLocalizedString(v11);

  v13 = sub_1A524C674();
  v15 = v14;

  sub_1A464E60C(v13, v15, v10);

  v16 = (a1 + *(type metadata accessor for PhotosDetailsTimeWidgetView(0) + 36));
  v17 = *v16;
  v18 = *(v16 + 1);
  v25[16] = v17;
  v26 = v18;
  sub_1A464FE68(0, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v20 = sub_1A47A64B0(v25[15], v19);
  KeyPath = swift_getKeyPath();
  v22 = &v10[*(v5 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1A46511F4(v10, v7, sub_1A4646FCC);
  sub_1A4650800();
  v23 = sub_1A524B8E4();
  result = sub_1A465125C(v10, sub_1A4646FCC);
  *a2 = v23;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void sub_1A464EB50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12[2] = a3;
  v12[3] = a4;
  sub_1A3EE1D04(0);
  v12[1] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5249524();
  MEMORY[0x1EEE9AC00](v13);
  sub_1A4647C7C(0, &qword_1EB1286B0, MEMORY[0x1E6981148]);
  v14 = v8;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v12 - v11;
  v17 = a1;
  v18 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A464F0D0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v4 = a2;
  v45 = a2;
  v44[1] = a1;
  sub_1A464F704(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46510FC(0, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  sub_1A464F8D0(0, v11);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A464F974(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = v8;
  sub_1A5249BD4();
  v22 = sub_1A524A064();
  sub_1A5247BC4();
  v23 = &v8[*(v6 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v49 = v4;
  v50 = v47;
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v48)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = &v13[*(v10 + 44)];
  sub_1A464F740(0);
  v31 = v30;
  v32 = &v29[*(v30 + 52)];
  v33 = *(sub_1A5248A14() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_1A52494A4();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #2.0 }

  *v32 = _Q0;
  *v29 = 3;
  *(v29 + 2) = v28;
  *&v29[*(v31 + 56)] = 256;
  sub_1A465044C(v44[0], v13, sub_1A464F704);
  if (sub_1A5249BE4())
  {
    v41 = 0.5;
  }

  else
  {
    v41 = 1.0;
  }

  sub_1A464F9B0(v13, v17, 1.0);
  *&v17[*(v15 + 44)] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v45;
  *(v42 + 24) = v47;
  sub_1A465044C(v17, v21, sub_1A464F8D0);
  v43 = &v21[*(v19 + 44)];
  *v43 = sub_1A464FA58;
  v43[1] = v42;
  sub_1A465044C(v21, v46, sub_1A464F974);
}

void sub_1A464F4AC()
{
  type metadata accessor for PhotosDetailsTimeWidgetView(0);
  sub_1A464FE68(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B6B4();
  sub_1A4644FF4(v0);
}

unint64_t sub_1A464F5D8()
{
  result = qword_1EB123B08;
  if (!qword_1EB123B08)
  {
    sub_1A46465F4(255);
    sub_1A46507B8(&qword_1EB1216D0, 255, sub_1A4646630, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B08);
  }

  return result;
}

uint64_t sub_1A464F694@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosDetailsTimeWidgetView(0);

  return sub_1A464A200(a1);
}

void sub_1A464F740(uint64_t a1)
{
  if (!qword_1EB13F860)
  {
    sub_1A464F834(255);
    sub_1A5248A14();
    sub_1A46507B8(&qword_1EB13F870, 255, sub_1A464F834, MEMORY[0x1E697F5B8]);
    sub_1A46507B8(&qword_1EB128090, 255, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F860);
    }
  }
}

void sub_1A464F834(uint64_t a1)
{
  if (!qword_1EB13F868)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    sub_1A4599368();
    v1 = sub_1A52494C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13F868);
    }
  }
}

void sub_1A464F8D0(uint64_t a1, double a2)
{
  if (!qword_1EB13F878)
  {
    sub_1A46510FC(255, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13F878);
    }
  }
}

uint64_t sub_1A464F9B0(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A46510FC(0, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A464FAE8(uint64_t a1)
{
  result = sub_1A46507B8(&qword_1EB12AB48, 255, type metadata accessor for PhotosDetailsTimeWidgetView, &unk_1A5352CF4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A464FB88(uint64_t a1)
{
  sub_1A4650B00(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4650B00(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A464FD1C(319);
      if (v3 <= 0x3F)
      {
        sub_1A464FDB4(319);
        if (v4 <= 0x3F)
        {
          sub_1A464FE68(319, &qword_1EB121C70, &type metadata for PhotosDetailsTimeWidgetStyleSpec, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1A464FE68(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A464FD1C(uint64_t a1)
{
  if (!qword_1EB1243C0)
  {
    type metadata accessor for PhotosDetailsTimeWidgetViewModel(255);
    sub_1A46507B8(&qword_1EB12AA58, 255, type metadata accessor for PhotosDetailsTimeWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243C0);
    }
  }
}

void sub_1A464FDB4(uint64_t a1)
{
  if (!qword_1EB124668)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState();
    sub_1A46507B8(&qword_1EB12AB50, v1, type metadata accessor for PhotosDetailsTimeWidgetView.TimeEditPresentationState, &unk_1A5352C58);
    v2 = sub_1A5247ED4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124668);
    }
  }
}

void sub_1A464FE68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A464FEC8(double a1)
{
  result = qword_1EB122670;
  if (!qword_1EB122670)
  {
    sub_1A46510FC(255, &qword_1EB122668, sub_1A4647FFC, sub_1A4647FC0, MEMORY[0x1E697F960]);
    sub_1A46481A0(255, v2);
    sub_1A4648A40(255);
    sub_1A46482B0(255, v3);
    sub_1A5249764();
    sub_1A46501CC(&qword_1EB1237E8, sub_1A46482B0, sub_1A46488C4);
    sub_1A46507B8(&qword_1EB122360, 255, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1A4648A74(&qword_1EB125F48, sub_1A4648A40, sub_1A46475D4, MEMORY[0x1E6982090]);
    swift_getOpaqueTypeConformance2();
    sub_1A46501CC(&qword_1EB1232A8, sub_1A4647FC0, sub_1A464F59C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122670);
  }

  return result;
}

unint64_t sub_1A4650114()
{
  result = qword_1EB13F888;
  if (!qword_1EB13F888)
  {
    sub_1A464F974(255);
    sub_1A46501CC(&qword_1EB13F890, sub_1A464F8D0, sub_1A465024C);
    sub_1A46503F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F888);
  }

  return result;
}

uint64_t sub_1A46501CC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A465024C(double a1)
{
  result = qword_1EB13F898;
  if (!qword_1EB13F898)
  {
    sub_1A46510FC(255, &qword_1EB13F858, sub_1A464F704, sub_1A464F740, MEMORY[0x1E697E830]);
    sub_1A4650344();
    sub_1A46507B8(&qword_1EB13F8A8, 255, sub_1A464F740, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F898);
  }

  return result;
}

unint64_t sub_1A4650344()
{
  result = qword_1EB13F8A0;
  if (!qword_1EB13F8A0)
  {
    sub_1A464F704(255);
    sub_1A46507B8(&qword_1EB122220, 255, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8A0);
  }

  return result;
}

unint64_t sub_1A46503F8()
{
  result = qword_1EB13F8B0;
  if (!qword_1EB13F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8B0);
  }

  return result;
}

uint64_t sub_1A465044C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A46504B4(uint64_t a1, double a2)
{
  v5 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & **(v2 + *(v5 + 28) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + 8)) + 0x88))();
  v7 = [objc_opt_self() arrayWithObject_];

  v8 = objc_allocWithZone(PXChangeAssetDateAction);
  v12 = v7;
  v9 = sub_1A5241514();
  v10 = [v8 initWithAssets:v12 dateOffset:v9 timeZone:a2];

  if (v10)
  {
    aBlock[4] = PXDisplayCollectionDetailedCountsMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_234;
    v11 = _Block_copy(aBlock);
    [v10 executeWithUndoManager:a1 completionHandler:v11];

    _Block_release(v11);
  }

  else
  {
  }
}

unint64_t sub_1A46506BC()
{
  result = qword_1EB13F8C8;
  if (!qword_1EB13F8C8)
  {
    sub_1A46486A0(255);
    sub_1A4646E24();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8C8);
  }

  return result;
}

uint64_t sub_1A465075C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A4647C7C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A46507B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4650800()
{
  result = qword_1EB13F8D0;
  if (!qword_1EB13F8D0)
  {
    sub_1A4646FCC(255);
    sub_1A4647124(255);
    type metadata accessor for PhotosDetailsTimeEditView(255);
    sub_1A46507B8(&qword_1EB121B38, 255, sub_1A4647124, MEMORY[0x1E697D680]);
    sub_1A46475D4();
    swift_getOpaqueTypeConformance2();
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8D0);
  }

  return result;
}

void sub_1A46509F4(uint64_t a1, double a2)
{
  if (!qword_1EB1244D0)
  {
    sub_1A46510FC(255, &qword_1EB122618, sub_1A4646808, sub_1A464760C, MEMORY[0x1E697F960]);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1244D0);
    }
  }
}

void sub_1A4650AA0()
{
  type metadata accessor for PhotosDetailsTimeWidgetView(0);

  sub_1A464D0E4();
}

void sub_1A4650B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4650B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A4650BF0(255, &qword_1EB127D40, MEMORY[0x1E697F960]);
    v8 = v7;
    sub_1A4647CDC(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4650BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4647BEC(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4650C54()
{
  result = qword_1EB13F8D8;
  if (!qword_1EB13F8D8)
  {
    sub_1A4647BEC(255);
    sub_1A4650D14(&qword_1EB123CD0, &qword_1EB128528, MEMORY[0x1E6981748]);
    sub_1A4646F48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8D8);
  }

  return result;
}

uint64_t sub_1A4650D14(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A4647C7C(255, a2, a3);
    sub_1A46507B8(&qword_1EB127710, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4650DBC()
{
  result = qword_1EB13F8E0;
  if (!qword_1EB13F8E0)
  {
    sub_1A4650BF0(255, &qword_1EB127D40, MEMORY[0x1E697F960]);
    sub_1A4650C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8E0);
  }

  return result;
}

unint64_t sub_1A4650E50()
{
  result = qword_1EB13F8E8;
  if (!qword_1EB13F8E8)
  {
    sub_1A4647CDC(255);
    sub_1A4650C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8E8);
  }

  return result;
}

unint64_t sub_1A4650ED0(double a1)
{
  result = qword_1EB13F8F0;
  if (!qword_1EB13F8F0)
  {
    sub_1A4647B84(255, a1);
    sub_1A3E7440C();
    sub_1A46507B8(&qword_1EB127710, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8F0);
  }

  return result;
}

unint64_t sub_1A4650F84(double a1)
{
  result = qword_1EB13F8F8;
  if (!qword_1EB13F8F8)
  {
    sub_1A4647BCC(255, a1);
    sub_1A4650DBC();
    sub_1A4650E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F8F8);
  }

  return result;
}

uint64_t sub_1A4651004(uint64_t a1, uint64_t a2)
{
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4651084(uint64_t a1)
{
  sub_1A4650BF0(0, &qword_1EB127D40, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A46510FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4651180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A46511F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A465125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A46512BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4651348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A4650B00(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v3 + v1[5]), *(v3 + v1[5] + 8));

  sub_1A3C333F8(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

void sub_1A4651540()
{
  type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v0 = sub_1A4644E20();
  sub_1A3E95E58(v0);
}

void sub_1A46515D4(void *a1)
{
  sub_1A3C52C70(0, &qword_1EB120780, off_1E771EF08);
  sub_1A4651E18();
  sub_1A5245CB4();
}

unint64_t sub_1A4651E18()
{
  result = qword_1EB120788;
  if (!qword_1EB120788)
  {
    sub_1A3C52C70(255, &qword_1EB120780, off_1E771EF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120788);
  }

  return result;
}

void sub_1A4651EB4()
{
  if ([v0 viewModel])
  {
    sub_1A3C52C70(0, &qword_1EB120780, off_1E771EF08);
    sub_1A4651E18();
    sub_1A5245CB4();
  }
}

id PXPhotosAppGridViewModel.createAssociatedData()()
{
  v0 = objc_allocWithZone(type metadata accessor for PXPhotosAppGridViewModel.AssociatedData());

  return [v0 init];
}

id PXPhotosAppGridViewModel.AssociatedData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A46521D4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  return sub_1A3F1B4DC(v5 + v10, a5, a2, a3, a4);
}

uint64_t sub_1A465226C(uint64_t a1, uint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v10 = *a2;
  swift_beginAccess();
  sub_1A46522E8(a1, v5 + v10, a3, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1A46522E8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A3E792C4(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

void sub_1A4652674(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A46526C8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_1A4652778(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A46527CC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double sub_1A46528C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_availableCurationKinds;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double sub_1A46529C4(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1A4652A24(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_curationModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1A4652ABC;
}

void sub_1A4652ABC(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A4652B3C()
{
  v1 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4652B80(char a1)
{
  v3 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4652C5C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1A4652D18()
{
  v1 = (v0 + OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A4652D74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6, v7);
}

id PXPhotosAppGridViewModel.AssociatedData.init()()
{
  v1 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_bannerModel];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_bannerProvider];
  *(v2 + 4) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalLeadingNavigationBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalTrailingNavigationBarButtonItemsBeforeExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalTrailingNavigationBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_additionalCenterToolbarBarButtonItemsAfterExisting] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_searchQueryFetcher] = 0;
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_currentCurationKind] = 6;
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_defaultCurationKind] = 6;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_availableCurationKinds] = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_needsUpdateLenses] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_sortOrderPersistenceController] = 0;
  v3 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosAppGridViewModel14AssociatedData_storyConfigurationProvider];
  v4 = type metadata accessor for PXPhotosAppGridViewModel.AssociatedData();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id PXPhotosAppGridViewModel.AssociatedData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXPhotosAppGridViewModel.AssociatedData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46530AC(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_1A524EA94();
    (*(v5 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = 0;
  }

  [v1 setSwift:v9 associatedData:?];
  return swift_unknownObjectRelease();
}

void (*sub_1A46531E0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A4653250(v2);
  return sub_1A3D3D728;
}

void (*sub_1A4653250(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v2;
  if ([v2 swift_associatedData])
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5[2] = 0u;
    v5[3] = 0u;
  }

  v6 = v5[3];
  *v5 = v5[2];
  v5[1] = v6;
  return sub_1A4653308;
}

void sub_1A4653308(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3EBECA4(*a1, v2 + 64);
    v3 = *(v2 + 88);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_1((v2 + 64), *(v2 + 88));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_1A524EA94();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0((v2 + 64));
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 96) setSwift:v9 associatedData:?];
    swift_unknownObjectRelease();
    sub_1A3C35B00(v2);
  }

  else
  {
    v10 = *(v2 + 24);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_1(*a1, *(v2 + 24));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_1A524EA94();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0(v2);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 96) setSwift:v16 associatedData:?];
    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_1A4653558(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB120780, off_1E771EF08);

  sub_1A5245CB4();
}

id sub_1A46535A4()
{
  v0 = objc_allocWithZone(type metadata accessor for PXPhotosAppGridViewModel.AssociatedData());

  return [v0 init];
}

uint64_t sub_1A46535F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  return sub_1A465D390(v5 + v3, a1, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
}

uint64_t sub_1A46536FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  return sub_1A465D390(v3 + v4, a2, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
}

uint64_t sub_1A4653808(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10[-v6];
  sub_1A465D390(a1, &v10[-v6], &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4, sub_1A3C377C8);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();

  return sub_1A3C79D60(v7, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4, sub_1A3C377C8);
}

uint64_t sub_1A46539B8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  sub_1A465DFF8(a2, a1 + v4, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  return swift_endAccess();
}

uint64_t sub_1A4653A64()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_1A4653B20(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1A4653C0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4653D2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t (*sub_1A4653D84(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A4653ECC;
}

uint64_t sub_1A4653ED8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return swift_weakLoadStrong();
}

uint64_t sub_1A4653F84@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

BOOL sub_1A4654080()
{
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v2 = 3;
  return static LemonadePresentationContext.== infix(_:_:)(&v3, &v2);
}

void sub_1A46540C4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v6 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  if ((*(v1 + v6) & 1) == 0)
  {
    swift_getKeyPath();
    v13 = v1;
    sub_1A52415D4();

    if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) & 1) == 0)
    {
      swift_getKeyPath();
      v13 = v1;
      sub_1A52415D4();

      v7 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
      swift_beginAccess();
      if (*(*(v1 + v7) + 16))
      {
        swift_getKeyPath();
        v12 = v1;
        sub_1A52415D4();

        v12 = v1;
        swift_getKeyPath();
        sub_1A52415F4();

        swift_beginAccess();
        v8 = *(v1 + v7);
        if (*(v8 + 16))
        {
          sub_1A465DBD4(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v5, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
          sub_1A465DF08(0, 1);
          swift_endAccess();
          v12 = v1;
          swift_getKeyPath();
          sub_1A52415E4();

          swift_getKeyPath();
          v12 = v1;
          sub_1A52415D4();

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v10 = Strong;
            sub_1A3EE99E0(v5, v1, &v5[v2[5]], *&v5[v2[6]], v5[v2[7]], *&v5[v2[8]], *&v5[v2[8] + 8], *&v5[v2[9]], *&v5[v2[9] + 8]);
          }

          sub_1A465D330(v5, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_1A46544B0(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    sub_1A46540C4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

void sub_1A46545F8(char a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A524BFC4();
  v21 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) & 1) == 0 && (a1 & 1) != 0 && (swift_getKeyPath(), aBlock[0] = v1, sub_1A52415D4(), , swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), v16 = [Strong presentedViewController], Strong, v16))
  {

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v17 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v21 = *(v21 + 8);
    (v21)(v11, v26);
    aBlock[4] = sub_1A465DD0C;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_108_2;
    v18 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C7A328(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C377C8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v19 = v25;
    sub_1A524E224();
    MEMORY[0x1A5908790](v14, v9, v6, v18);
    _Block_release(v18);

    (*(v24 + 8))(v6, v19);
    (*(v22 + 8))(v9, v23);
    (v21)(v14, v26);
  }

  else
  {
    sub_1A46540C4();
  }
}

uint64_t sub_1A4654ADC()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void sub_1A4654B9C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = v2;

    sub_1A46545F8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

void sub_1A4654D14()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover;
  swift_beginAccess();
  if (*(v1 + v2) || (swift_getKeyPath(), sub_1A52415D4(), , v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet, swift_beginAccess(), *(v1 + v3)))
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v5 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
    swift_beginAccess();
    v4 = *(v1 + v5) != 0;
  }

  sub_1A4659618(v4);
}

BOOL sub_1A4655004()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_overrideEnableNavigationStack);
  if (v1 == 2)
  {
    return sub_1A418E5F0();
  }

  else
  {
    return v1 & 1;
  }
}

void sub_1A4655050()
{
  sub_1A46552F4();
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

double sub_1A46552F4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = 1;
      sub_1A46545F8(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }

    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);
    sub_1A52415C4();
  }

  return result;
}

double sub_1A4655504(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();

  return result;
}

double sub_1A46555E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();

  return result;
}

void sub_1A46556A8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

double sub_1A465595C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();

  return result;
}

double sub_1A4655A28@<D0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);

  return result;
}

uint64_t sub_1A4655B48(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_1A4655C10(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

void sub_1A4655DE8(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

void sub_1A4655F04(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  sub_1A3DA276C(v4, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

double sub_1A4655FFC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();
  sub_1A3C79D60(a1, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);

  return result;
}

uint64_t sub_1A4656104(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  swift_beginAccess();
  v10 = *(v4 + 8);
  v11 = *v4;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v7;
  *(v4 + 32) = *(a2 + 32);
  v8 = MEMORY[0x1E69E6720];
  sub_1A465D390(a2, v12, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);
  sub_1A465D390(a2, v12, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, v8, sub_1A3C397F8);
  sub_1A3DD2224(v11, v10, v5, v6);
  swift_getKeyPath();
  v12[0] = a1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  if (*(v4 + 8))
  {
    sub_1A46552F4();
  }

  return sub_1A3C79D60(a2, &qword_1EB129D58, &type metadata for LemonadeNavigationContext.SheetContent, MEMORY[0x1E69E6720], sub_1A3C397F8);
}

double sub_1A46562D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1A52411C4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a3;

  sub_1A52411B4();
  v17 = sub_1A5241164();
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  v25[0] = v17;
  v25[1] = v19;
  v25[2] = sub_1A465D254;
  v25[3] = v16;
  v26 = a1;
  swift_getKeyPath();
  v22 = v6;
  v23 = v25;
  v24 = v6;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();

  return result;
}

double sub_1A46564C4()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415C4();

  return result;
}

void sub_1A4656598()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    sub_1A46552F4();
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      *(v2 + v3) = 1;

      sub_1A46540C4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);

      sub_1A52415C4();
    }
  }

  swift_getKeyPath();
  sub_1A52415D4();

  if (*(v0 + v1))
  {
    v5 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v5);

    sub_1A52415C4();
  }

  sub_1A4654D14();
}

uint64_t sub_1A46568A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v7 = *a3;
  swift_beginAccess();
  *(a1 + v7) = a2;

  return a4(v8);
}

uint64_t sub_1A4656924@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1A46569EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3C7A150(v1);
}

double sub_1A4656A34(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4656B40(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

void sub_1A4656C60(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4656D64(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v32 = type metadata accessor for LemonadeDetailsContext;
  v6 = MEMORY[0x1E69E6720];
  v33 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v34 = &v31 - v8;
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a2;
  v36 = type metadata accessor for LemonadeNavigationDestination;
  sub_1A465DBD4(a1, v12, type metadata accessor for LemonadeNavigationDestination);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  v41 = v3;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  v35 = v13;
  sub_1A52415D4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  v40 = v3;
  sub_1A52415D4();

  v15 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  v16 = v9;
  v17 = v32;
  sub_1A465D390(v3 + v15, v16, &unk_1EB12A160, v32, v6, sub_1A3C377C8);
  v18 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  v21 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__dismissSignal) = 0;
  swift_weakInit();
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath) = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheet) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarVisible) = 0;
  v23 = v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedFullScreenCover) = 0;
  v24 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController;
  swift_unknownObjectWeakInit();
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = 0x3FE0000000000000;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered[0]) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests) = v22;

  sub_1A5241604();
  sub_1A3CA27C8(v12, v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v36);
  v25 = (v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  *v25 = 0;
  v25[1] = 0;
  MEMORY[0x1A590F020](v19 + v24);
  swift_unknownObjectWeakInit();

  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) = v18;
  sub_1A3C79D60(v19 + v20, &unk_1EB12A160, v17, v33, sub_1A3C377C8);
  sub_1A3C79EB8(v34, v19 + v20, &unk_1EB12A160, v17);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext) = v37;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_overrideEnableNavigationStack) = 2;
  swift_getKeyPath();
  v39 = v3;
  sub_1A52415D4();

  v26 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable;
  swift_beginAccess();
  v27 = *(v3 + v26);
  v28 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__sidebarAvailable;
  swift_beginAccess();
  if (v27 == *(v19 + v28))
  {
    *(v19 + v28) = v27;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v31 - 2) = v19;
    *(&v31 - 8) = v27;
    v38 = v19;
    sub_1A52415C4();
  }

  return v19;
}

uint64_t sub_1A4657324(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v121 = a8;
  v120 = a7;
  v112 = a6;
  v119 = a5;
  v118 = a4;
  v114 = a3;
  v116 = a2;
  v113 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  MEMORY[0x1EEE9AC00](v113);
  v117 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v127 = type metadata accessor for LemonadeDetailsContext(0);
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C377C8(0, &qword_1EB12AF30, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v103 - v19;
  sub_1A3C377C8(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v13);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v111 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v126 = &v103 - v23;
  v123 = type metadata accessor for LemonadeNavigationDestination(0);
  v107 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v108 = &v103 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v103 - v32;
  v34 = sub_1A5246F24();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *(*(v9 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v106 = v25;
  if (v122 && (swift_getKeyPath(), *&v132[0] = v9, sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext), sub_1A52415D4(), , swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v39 = Strong, v40 = [Strong navigationController], v39, v40))
  {

    v124 = 1;
  }

  else
  {
    v124 = 0;
  }

  v41 = sub_1A3C38A40();
  (*(v35 + 16))(v37, v41, v34);
  *&v128 = a1;
  sub_1A465DBD4(a1, v33, type metadata accessor for LemonadeNavigationDestination);
  v42 = sub_1A5246F04();
  v43 = sub_1A524D264();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v110 = v9;
    v45 = v44;
    *&v132[0] = swift_slowAlloc();
    *v45 = 136446210;
    sub_1A465DBD4(v33, v30, type metadata accessor for LemonadeNavigationDestination);
    v46 = sub_1A524C714();
    v48 = v47;
    sub_1A465D330(v33, type metadata accessor for LemonadeNavigationDestination);
    sub_1A3C2EF94(v46, v48, v132);
  }

  sub_1A465D330(v33, type metadata accessor for LemonadeNavigationDestination);
  (*(v35 + 8))(v37, v34);
  swift_getKeyPath();
  v49 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  *&v132[0] = v9;
  v50 = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  v125 = v49;
  sub_1A52415D4();

  v51 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext;
  swift_beginAccess();
  v52 = v126;
  sub_1A465D390(v9 + v51, v126, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  v53 = *(v129 + 48);
  v54 = v127;
  v55 = v53(v52, 1, v127);
  v56 = v128;
  if (v55)
  {
    sub_1A3C79D60(v52, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  }

  else
  {
    v61 = (v52 + *(v54 + 20));
    v63 = *v61;
    v62 = v61[1];
    sub_1A3C66EE8(*v61, v62);
    sub_1A3C79D60(v52, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
    v126 = v63;
    if (v63)
    {
      v64 = v108;
      sub_1A465DBD4(v56, v108, type metadata accessor for LemonadeNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v129 = v62;
        v65 = *(v64 + 16);
        v132[0] = *v64;
        v132[1] = v65;
        v133 = *(v64 + 32);
        v66 = *(v64 + 16);
        v130[0] = *v64;
        v130[1] = v66;
        v131 = *(v64 + 32);
        v67 = *&v132[0];
        v69 = sub_1A41DF340(v67, v68);
        v70 = [v69 dataSource];
        v71 = [v70 indexPathForDisplayAsset:v67 hintIndexPath:0];

        v110 = v9;
        v103 = v50;
        if (v71)
        {
          v72 = v104;
          sub_1A5241554();

          v73 = 0;
        }

        else
        {
          v73 = 1;
          v72 = v104;
        }

        v94 = sub_1A5241574();
        v95 = *(v94 - 8);
        (*(v95 + 56))(v72, v73, 1, v94);
        v96 = MEMORY[0x1E6969C28];
        v97 = v72;
        v98 = v109;
        sub_1A3C79EB8(v97, v109, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
        v99 = [v69 dataSource];
        [v99 identifier];

        v100 = v98;
        v101 = v105;
        sub_1A465D390(v100, v105, &qword_1EB12AF30, v96, MEMORY[0x1E69E6720], sub_1A3C377C8);
        if ((*(v95 + 48))(v101, 1, v94) != 1)
        {
          sub_1A5241544();
          (*(v95 + 8))(v101, v94);
        }

        PXSimpleIndexPathFromIndexPath();
      }

      sub_1A3C33378(v126, v62);
      sub_1A465D330(v64, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  if (((v124 & 1) != 0 || sub_1A418E244()) && sub_1A465877C())
  {
    sub_1A46552F4();
    swift_getKeyPath();
    *&v132[0] = v9;
    sub_1A52415D4();

    v57 = v9 + v51;
    v58 = v111;
    sub_1A465D390(v57, v111, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
    if (v53(v58, 1, v54) == 1)
    {
      v59 = v115;
      sub_1A486B6E8(v115);
      if (v53(v58, 1, v54) != 1)
      {
        sub_1A3C79D60(v58, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
      }
    }

    else
    {
      v59 = v115;
      sub_1A3CA27C8(v58, v115, type metadata accessor for LemonadeDetailsContext);
    }

    sub_1A465DFF8(v112, v59, &qword_1EB1290B0, MEMORY[0x1E69C24E0]);
    v83 = v117;
    sub_1A465DBD4(v56, v117, type metadata accessor for LemonadeNavigationDestination);
    v84 = v113;
    v85 = *(v113 + 20);
    sub_1A465DBD4(v59, &v83[v85], type metadata accessor for LemonadeDetailsContext);
    (*(v129 + 56))(&v83[v85], 0, 1, v54);
    v86 = v116;
    *&v83[v84[6]] = v116;
    v83[v84[7]] = v114 & 1;
    v87 = &v83[v84[8]];
    v88 = v118;
    v89 = v119;
    *v87 = v118;
    v87[1] = v89;
    v90 = &v83[v84[9]];
    v91 = v120;
    v92 = v121;
    *v90 = v120;
    v90[1] = v92;
    v93 = v86;
    sub_1A3C66EE8(v88, v89);
    sub_1A3C66EE8(v91, v92);
    LOBYTE(v92) = sub_1A4658988(v83);
    sub_1A465D330(v83, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    if (v92)
    {
      v81 = 2;
    }

    else
    {
      v81 = 0;
    }

    sub_1A465D330(v59, type metadata accessor for LemonadeDetailsContext);
  }

  else
  {
    if (v122)
    {
      v60 = 0;
    }

    else
    {
      sub_1A418E3C8(v9, v132);
      v60 = LOBYTE(v132[0]);
    }

    swift_getKeyPath();
    *&v132[0] = v9;
    sub_1A52415D4();

    v74 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedPopover;
    swift_beginAccess();
    if (v60)
    {
      LOBYTE(v130[0]) = 2 * (*(v9 + v74) != 0);
      v81 = sub_1A4656D64(v56, v130);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v103 - 2) = v9;
      *(&v103 - 1) = v81;
      *&v130[0] = v9;

      sub_1A52415C4();
    }

    else
    {
      sub_1A46552F4();
      v75 = v106;
      sub_1A465DBD4(v56, v106, type metadata accessor for LemonadeNavigationDestination);
      swift_getKeyPath();
      *&v130[0] = v9;
      sub_1A52415D4();

      *&v130[0] = v9;
      swift_getKeyPath();
      sub_1A52415F4();

      v76 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
      swift_beginAccess();
      v77 = *(v9 + v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + v76) = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = sub_1A465CA88(0, v77[2] + 1, 1, v77, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
        *(v9 + v76) = v77;
      }

      v80 = v77[2];
      v79 = v77[3];
      if (v80 >= v79 >> 1)
      {
        v77 = sub_1A465CA88((v79 > 1), v80 + 1, 1, v77, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
      }

      v77[2] = v80 + 1;
      sub_1A3CA27C8(v75, v77 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v80, type metadata accessor for LemonadeNavigationDestination);
      *(v9 + v76) = v77;
      swift_endAccess();
      sub_1A4654D14();
      *&v130[0] = v9;
      swift_getKeyPath();
      sub_1A52415E4();

      return 1;
    }
  }

  return v81;
}

BOOL sub_1A465877C()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
  }

  else
  {
    v7 = sub_1A3C38A40();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Can't perform view controller presentation because of missing host view controller.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return v6 != 0;
}

uint64_t sub_1A4658988(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v8 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  if ((*(v2 + v8) & 1) == 0)
  {
    swift_getKeyPath();
    v26 = v2;
    sub_1A52415D4();

    if ((*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) & 1) == 0)
    {
      swift_getKeyPath();
      v26 = v2;
      sub_1A52415D4();

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v17 = sub_1A3EE99E0(a1, v2, &a1[v4[5]], *&a1[v4[6]], a1[v4[7]], *&a1[v4[8]], *&a1[v4[8] + 8], *&a1[v4[9]], *&a1[v4[9] + 8]);

        return v17 & 1;
      }

LABEL_13:
      v17 = 0;
      return v17 & 1;
    }
  }

  swift_getKeyPath();
  v26 = v2;
  sub_1A52415D4();

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  if ((sub_1A3EE9714() & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_1A465DBD4(a1, v7, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
  swift_getKeyPath();
  v25 = v2;
  sub_1A52415D4();

  v25 = v2;
  swift_getKeyPath();
  sub_1A52415F4();

  v11 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
  swift_beginAccess();
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1A465CA88(0, v12[2] + 1, 1, v12, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    *(v2 + v11) = v12;
  }

  v14 = v12[2];
  v15 = v12[3];
  v16 = v14 + 1;
  if (v14 >= v15 >> 1)
  {
    v21 = v12;
    v22 = v12[2];
    v23 = sub_1A465CA88((v15 > 1), v14 + 1, 1, v21, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    v14 = v22;
    v12 = v23;
  }

  v12[2] = v16;
  sub_1A3CA27C8(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
  *(v2 + v11) = v12;
  swift_endAccess();
  v25 = v2;
  swift_getKeyPath();
  sub_1A52415E4();

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1A4658E28()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
}

void sub_1A4658ED0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
}

double sub_1A4658FA8()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
}

double sub_1A4659050@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  result = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  *a2 = result;
  return result;
}

void sub_1A4659128(char a1)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  if (a1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
  }

  else
  {
    v5 = 0.0;
  }

  if (v4 == v5)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v3) == v4)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    sub_1A52415C4();
  }
}

uint64_t sub_1A46593C4@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v10 = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v11, &v10))
  {
    v3 = *MEMORY[0x1E69C1EF0];
    v4 = sub_1A52425F4();
    v5 = *(*(v4 - 8) + 104);

    return v5(a1, v3, v4);
  }

  else
  {
    swift_getKeyPath();
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415D4();

    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime);
    v8 = sub_1A52425F4();
    if (v7 == 1)
    {
      v9 = MEMORY[0x1E69C1EE0];
    }

    else
    {
      v9 = MEMORY[0x1E69C1EE8];
    }

    return (*(*(v8 - 8) + 104))(a1, *v9, v8);
  }
}

uint64_t sub_1A4659578(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v2 + *a2);
}

void sub_1A4659618(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered[0]) != v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A52415C4();

    if (a1)
    {
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v6 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v6 inlinePlayerCoveredDurationForPause];
      v8 = v7;

      v9 = objc_opt_self();
      v10 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1A465D434;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D7692C;
      aBlock[3] = &block_descriptor_235;
      v11 = _Block_copy(aBlock);

      v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:v8];
      _Block_release(v11);
      v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = v12;
      if (v13)
      {
        if (v12)
        {
          sub_1A3C52C70(0, &unk_1EB126680, 0x1E695DFF0);
          v14 = v12;
          v15 = v13;
          v16 = sub_1A524DBF4();

          if (v16)
          {

            return;
          }
        }
      }

      else
      {
        if (!v12)
        {
          return;
        }

        v19 = v12;
      }

      [v13 invalidate];
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
      *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer) = 0;
      if (v17)
      {
        [v17 invalidate];
      }

      swift_getKeyPath();
      aBlock[0] = v2;
      sub_1A52415D4();

      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime))
      {
        v18 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v18);
        aBlock[0] = v2;
        sub_1A52415C4();
      }
    }
  }
}

double sub_1A46599FC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_isCoveredTimer);
  if (v4)
  {
    sub_1A3C52C70(0, &unk_1EB126680, 0x1E695DFF0);
    v6 = a1;
    v7 = v4;
    LOBYTE(a1) = sub_1A524DBF4();

    if (a1)
    {
      v9 = *(v2 + v3);
      *(v2 + v3) = 0;
      if (v9)
      {
        [v9 invalidate];
      }

      swift_getKeyPath();
      sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
      sub_1A52415D4();

      if (*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCovered[0]))
      {
        swift_getKeyPath();
        sub_1A52415D4();

        if ((*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___isCoveredForSomeTime) & 1) == 0)
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_1A52415C4();
        }
      }
    }
  }

  return result;
}

void sub_1A4659C24(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  *a4 = *(v6 + *a3);
}

void sub_1A4659D98(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4659E64(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t LemonadeNavigationContext.deinit()
{
  sub_1A465D330(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, type metadata accessor for LemonadeNavigationDestination);
  swift_unknownObjectRelease();

  sub_1A3C79D60(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__detailsContext, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C377C8);
  swift_weakDestroy();

  sub_1A3DD2224(*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent + 8), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent + 16), *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__presentedSheetContent + 24));

  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController);

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeNavigationContext.__deallocating_deinit()
{
  LemonadeNavigationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A465A13C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1A524E434();
  *a3 = result;
  return result;
}

uint64_t sub_1A465A168()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollToTopSignal);
}

double sub_1A465A210()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  return *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration);
}

uint64_t sub_1A465A2B8(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a1, ObjectType, v3) & 1;
}

uint64_t sub_1A465A32C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1A524CC54();
  v3[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A465A3C8, v5, v4);
}

void sub_1A465A3C8()
{
  v1 = (v0[4] + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    sub_1A465D490(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F8E10;
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = 1;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v0[8] = v5;
  v0[9] = v4;
  v0[10] = 0;
  swift_unknownObjectRetain();
  if (v5)
  {
    if (*(v4 + 16))
    {
      v0[11] = *(v4 + 32);
      v6 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v13 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *v9 = v0;
      v9[1] = sub_1A465A5D8;
      v11 = v0[2];
      v10 = v0[3];

      v13(v11, v10, ObjectType, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = v0[1];

    v12(1);
  }
}

uint64_t sub_1A465A5D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A42CB0C0;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A465A704;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A465A704()
{
  v1 = v0[14];
  result = swift_unknownObjectRelease();
  if (v1 != 1)
  {
    v4 = v0[14];
    goto LABEL_5;
  }

  v3 = v0[10] + 1;
  v0[10] = v3;
  if (v3 == v0[8])
  {
    v4 = 1;
LABEL_5:

    v5 = v0[1];

    return v5(v4);
  }

  v6 = v0[9];
  if (v3 >= *(v6 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = v6 + 16 * v3;
    v0[11] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 40);
    swift_unknownObjectRetain();
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_1A465A5D8;
    v13 = v0[2];
    v12 = v0[3];

    return v14(v13, v12, ObjectType, v8);
  }

  return result;
}

uint64_t sub_1A465A8EC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = sub_1A524CC54();
  v3[17] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[18] = v6;
  v3[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A465AA00, v6, v5);
}

uint64_t sub_1A465AA00()
{
  v1 = *(v0 + 80);
  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  *(v0 + 160) = v3;
  if (!v3)
  {

    v7 = 2;
LABEL_10:

    v12 = *(v0 + 8);

    return v12(v7);
  }

  v4 = (v0 + 324);
  v5 = *(v0 + 72);
  v6 = *(v2 + 8);
  *(v0 + 168) = v6;
  *(v0 + 324) = 0;
  swift_unknownObjectRetain();
  if ((v5 & 2) != 0)
  {
    sub_1A524BD24();
    v1 = *(v0 + 80);
  }

  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  *(v8 + 24) = v1;
  sub_1A52483D4();

  if ((*v4 & 1) == 0)
  {
    v9 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    v11 = (*(v6 + 16))(ObjectType, v6);
    LODWORD(v9) = [v9 isEquivalentToNavigationDestination_];

    if (v9)
    {
      sub_1A4659128((v5 & 2) != 0);
    }
  }

  if ([*(v0 + 64) isCollectionsHome])
  {

    swift_unknownObjectRelease();
    v7 = 1;
    goto LABEL_10;
  }

  v14 = swift_getObjectType();
  *(v0 + 176) = v14;
  v18 = (*(v6 + 48) + **(v6 + 48));
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_1A465ACD4;
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);

  return v18(v17, v16, v14, v6);
}

uint64_t sub_1A465ACD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_1A465BD40;
  }

  else
  {
    v7 = sub_1A465AE18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A465AE18()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);
  *(v0 + 208) = *(*(v0 + 80) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  v3 = (*(v1 + 56))(v2);
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  *(v0 + 216) = v3;
  v5 = *(v3 + 16);
  *(v0 + 224) = v5;
  if (v5)
  {
    v6 = *(v0 + 96);
    v7 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__hostViewController;
    *(v0 + 232) = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext___observationRegistrar;
    *(v0 + 240) = v7;
    *(v0 + 320) = *(v6 + 80);
    swift_beginAccess();
    v8 = *(v6 + 72);
    *(v0 + 256) = 0;
    *(v0 + 264) = v4;
    *(v0 + 248) = v8;
    sub_1A465DBD4(*(v0 + 216) + ((*(v0 + 320) + 32) & ~*(v0 + 320)), *(v0 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }

  else
  {

    if (*(v4 + 16))
    {
      v10 = *(v0 + 72);
      v9 = *(v0 + 80);
      v11 = *(v0 + 64);
      v12 = sub_1A524CC44();
      *(v0 + 288) = v12;
      v13 = swift_task_alloc();
      *(v0 + 296) = v13;
      v13[2] = v10;
      v13[3] = v9;
      v13[4] = v0 + 40;
      v13[5] = v11;
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v14 = v0;
      v14[1] = sub_1A465BB7C;
      v16 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v0 + 48, v12, v16, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v13, v15);
    }

    else
    {

      swift_unknownObjectRelease();
      v17 = *(v0 + 192);

      v18 = *(v0 + 8);

      return v18(v17);
    }
  }
}

uint64_t sub_1A465B0DC(__n128 a1)
{
  sub_1A465DBD4(v1[15], v1[14], type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload() == 26)
  {
    v2 = v1[10];
    v3 = *(v1[26] + 16);
    swift_getKeyPath();
    v1[7] = v2;
    sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
    sub_1A52415D4();

    Strong = swift_unknownObjectWeakLoadStrong();
    v1[34] = Strong;
    v5 = swift_task_alloc();
    v1[35] = v5;
    *v5 = v1;
    v5[1] = sub_1A465B29C;

    return static LemonadeMemoriesCreationAvailabilityUtils.canProceedWithNavigationOrShowErrorAlert(photoLibrary:viewController:)(v3, Strong);
  }

  else
  {
    sub_1A465D330(v1[14], type metadata accessor for LemonadeNavigationDestination);
    v7 = v1[18];
    v8 = v1[19];

    return MEMORY[0x1EEE6DFA0](sub_1A465B7EC, v7, v8);
  }
}

uint64_t sub_1A465B29C(char a1)
{
  v2 = *(*v1 + 272);
  *(*v1 + 325) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A465B3B8, 0, 0);
}

uint64_t sub_1A465B3B8()
{
  sub_1A465D330(v0[14], type metadata accessor for LemonadeNavigationDestination);
  v1 = v0[18];
  v2 = v0[19];

  return MEMORY[0x1EEE6DFA0](sub_1A465B430, v1, v2);
}

uint64_t sub_1A465B430(__n128 a1)
{
  if (*(v1 + 325))
  {
    sub_1A465DBD4(*(v1 + 120), *(v1 + 104), type metadata accessor for LemonadeNavigationDestination);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v1 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1A465CA88(0, v3[2] + 1, 1, *(v1 + 264), &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1A465CA88((v4 > 1), v5 + 1, 1, v3, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
    }

    v6 = *(v1 + 248);
    v7 = *(v1 + 104);
    v8 = (*(v1 + 320) + 32) & ~*(v1 + 320);
    sub_1A465D330(*(v1 + 120), type metadata accessor for LemonadeNavigationDestination);
    v3[2] = v5 + 1;
    sub_1A3CA27C8(v7, v3 + v8 + v6 * v5, type metadata accessor for LemonadeNavigationDestination);
    *(v1 + 40) = v3;
  }

  else
  {
    sub_1A465D330(*(v1 + 120), type metadata accessor for LemonadeNavigationDestination);
    v3 = *(v1 + 264);
  }

  v9 = *(v1 + 256) + 1;
  if (v9 == *(v1 + 224))
  {

    if (v3[2])
    {
      v11 = *(v1 + 72);
      v10 = *(v1 + 80);
      v12 = *(v1 + 64);
      v13 = sub_1A524CC44();
      *(v1 + 288) = v13;
      v14 = swift_task_alloc();
      *(v1 + 296) = v14;
      v14[2] = v11;
      v14[3] = v10;
      v14[4] = v1 + 40;
      v14[5] = v12;
      v15 = swift_task_alloc();
      *(v1 + 304) = v15;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v15 = v1;
      v15[1] = sub_1A465BB7C;
      v17 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v1 + 48, v13, v17, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v14, v16);
    }

    else
    {

      swift_unknownObjectRelease();
      v18 = *(v1 + 192);

      v19 = *(v1 + 8);

      return v19(v18);
    }
  }

  else
  {
    *(v1 + 256) = v9;
    *(v1 + 264) = v3;
    sub_1A465DBD4(*(v1 + 216) + ((*(v1 + 320) + 32) & ~*(v1 + 320)) + *(v1 + 248) * v9, *(v1 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }
}

uint64_t sub_1A465B7EC(__n128 a1)
{
  sub_1A465DBD4(*(v1 + 120), *(v1 + 104), type metadata accessor for LemonadeNavigationDestination);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1A465CA88(0, v3[2] + 1, 1, *(v1 + 264), &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1A465CA88((v4 > 1), v5 + 1, 1, v3, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, type metadata accessor for LemonadeNavigationDestination);
  }

  v6 = *(v1 + 248);
  v7 = *(v1 + 104);
  v8 = (*(v1 + 320) + 32) & ~*(v1 + 320);
  sub_1A465D330(*(v1 + 120), type metadata accessor for LemonadeNavigationDestination);
  v3[2] = v5 + 1;
  sub_1A3CA27C8(v7, v3 + v8 + v6 * v5, type metadata accessor for LemonadeNavigationDestination);
  *(v1 + 40) = v3;
  v9 = *(v1 + 256) + 1;
  if (v9 == *(v1 + 224))
  {

    if (v3[2])
    {
      v11 = *(v1 + 72);
      v10 = *(v1 + 80);
      v12 = *(v1 + 64);
      v13 = sub_1A524CC44();
      *(v1 + 288) = v13;
      v14 = swift_task_alloc();
      *(v1 + 296) = v14;
      v14[2] = v11;
      v14[3] = v10;
      v14[4] = v1 + 40;
      v14[5] = v12;
      v15 = swift_task_alloc();
      *(v1 + 304) = v15;
      type metadata accessor for PXProgrammaticNavigationResult(0);
      *v15 = v1;
      v15[1] = sub_1A465BB7C;
      v17 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE38](v1 + 48, v13, v17, 0xD000000000000015, 0x80000001A53E1C60, sub_1A465D690, v14, v16);
    }

    else
    {

      swift_unknownObjectRelease();
      v18 = *(v1 + 192);

      v19 = *(v1 + 8);

      return v19(v18);
    }
  }

  else
  {
    *(v1 + 256) = v9;
    *(v1 + 264) = v3;
    sub_1A465DBD4(*(v1 + 216) + ((*(v1 + 320) + 32) & ~*(v1 + 320)) + *(v1 + 248) * v9, *(v1 + 120), type metadata accessor for LemonadeNavigationDestination);

    return MEMORY[0x1EEE6DFA0](sub_1A465B0DC, 0, 0);
  }
}

uint64_t sub_1A465BB7C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1A465BDD4;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1A465BCA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A465BCA0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A465BD40()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A465BDD4()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A465BE84(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v13[12] = a5;
  v13[8] = a3;
  v13[9] = a4;
  sub_1A465DA2C(0);
  v13[11] = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v13[6] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[7] = v8;
  sub_1A3C377C8(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13[3] = v13 - v10;
  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  v13[5] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13[14] = v13 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[10] = *(*a2 + 16);
  v13[4] = v7;
  v13[1] = v7 + 32;
  v13[2] = v7 + 16;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465C2B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A465DA2C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  if ([a1 routingOptionsForDestination_])
  {
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v11 = swift_allocObject();
    (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    aBlock[4] = sub_1A465DB24;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A465C49C;
    aBlock[3] = &block_descriptor_85_1;
    v12 = _Block_copy(aBlock);

    [a1 navigateToDestination:a2 options:0 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    aBlock[0] = 1;
    sub_1A524CBE4();
  }
}

void sub_1A465C49C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1A465C514(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for LemonadeNavigationDestination(0);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v24 = *a3;
  v26 = v3;
  if (*(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    v13 = *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 56))(a1, a2, ObjectType, v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v15 + 16);
  if (v23)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v16 < *(v15 + 16))
    {
      v18 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v19 = *(v25 + 72);
      sub_1A465DBD4(v15 + v18 + v19 * v16, v12, type metadata accessor for LemonadeNavigationDestination);
      sub_1A418E3C8(v26, &v28);
      v27 = v24;
      if (!static LemonadeDetailsNavigationType.== infix(_:_:)(&v28, &v27))
      {
        sub_1A465D330(v12, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_16;
      }

      sub_1A3CA27C8(v12, v9, type metadata accessor for LemonadeNavigationDestination);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A465CC7C(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A465CC7C((v21 > 1), v22 + 1, 1);
        v17 = v29;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      sub_1A3CA27C8(v9, v17 + v18 + v22 * v19, type metadata accessor for LemonadeNavigationDestination);
      if (v23 == v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

uint64_t sub_1A465C7CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
    sub_1A465D490(0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F8E10;
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_1A465C848(uint64_t a1)
{
  if (!*(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

uint64_t sub_1A465C8B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A465A32C(a1, a2);
}

uint64_t sub_1A465C95C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A465A8EC(a1, a2);
}

uint64_t sub_1A465CA00(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootParticipant + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(a1, a2, ObjectType, v5);
}

void *sub_1A465CA88(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C377C8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1A465CC7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A465CC9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A465CC9C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C377C8(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A465CE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A465DBD4(v13, v10, type metadata accessor for LemonadeNavigationDestination);
        sub_1A465DBD4(v14, v6, type metadata accessor for LemonadeNavigationDestination);
        sub_1A3C7A328(&qword_1EB129898, type metadata accessor for LemonadeNavigationDestination, &unk_1A5321238);
        v16 = sub_1A524C594();
        sub_1A465D330(v6, type metadata accessor for LemonadeNavigationDestination);
        sub_1A465D330(v10, type metadata accessor for LemonadeNavigationDestination);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_1A465D0A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465D114()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = *(v0 + 24);
  sub_1A46545F8(v2);
}

uint64_t sub_1A465D254@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *(a1 + 24) = *(v1 + 16);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v2();
}

double sub_1A465D2F8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__scrollAnimationDuration) = result;
  return result;
}

uint64_t sub_1A465D330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A465D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double sub_1A465D434(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A46599FC(a1);
  }

  return result;
}

void sub_1A465D490(uint64_t a1)
{
  if (!qword_1EB126238)
  {
    sub_1A3C652C8(255, &qword_1EB1293F0, &protocol descriptor for LemonadeProgrammaticNavigationParticipant, 0);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126238);
    }
  }
}

double sub_1A465D4FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationPath;
  swift_beginAccess();
  *v2 = *(*(v1 + v3) + 16) != 0;
  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();
  sub_1A52415F4();

  *(v1 + v3) = MEMORY[0x1E69E7CC0];

  sub_1A4654D14();
  swift_getKeyPath();
  sub_1A52415E4();

  return result;
}

double sub_1A465D690()
{
  sub_1A5247F84();

  sub_1A5248914();

  return result;
}

uint64_t sub_1A465D740(uint64_t a1)
{
  result = sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore25LemonadeNavigationContextC0D6ResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A465D7D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1A465D874(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationDestination(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C377C8(319, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A465D990(319);
      if (v3 <= 0x3F)
      {
        sub_1A3C377C8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A465D990(uint64_t a1)
{
  if (!qword_1EB120988)
  {
    sub_1A3C52C70(255, &unk_1EB120990, &off_1E7721860);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120988);
    }
  }
}

void sub_1A465DA2C(uint64_t a1)
{
  if (!qword_1EB126DD0)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3C652C8(255, &qword_1EB126160, MEMORY[0x1E69E7280], 1);
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126DD0);
    }
  }
}

void sub_1A465DAB0(void *a1)
{
  sub_1A465DA2C(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  sub_1A465C2B8(a1, v4, v5);
}

uint64_t sub_1A465DB24(void *a1, void *a2)
{
  sub_1A465DA2C(0);
  if (!a2)
  {
    return sub_1A524CBE4();
  }

  v3 = a2;
  return sub_1A524CBD4();
}

uint64_t sub_1A465DBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A465DC3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__navigationRequests;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A465DCA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isPresentationScheduled;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_1A46540C4();
}

void sub_1A465DD0C()
{
  swift_getKeyPath();
  sub_1A3C7A328(&qword_1EB129D50, type metadata accessor for LemonadeNavigationContext, &protocol conformance descriptor for LemonadeNavigationContext);
  sub_1A52415D4();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext__isDismissalScheduled) = v1;
  sub_1A46545F8(v1);
}

unint64_t sub_1A465DDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A465DF08(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A465CA88(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EB120348, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest, type metadata accessor for LemonadeNavigationContext.ViewControllerNavigationRequest);
    *v2 = v4;
  }

  result = sub_1A465DDC0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A465DFF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C377C8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

id sub_1A465E1AC(uint64_t a1)
{
  sub_1A4185584(a1, v4);
  if (v5)
  {
    sub_1A3DB7F50();
    sub_1A3C52C70(0, &qword_1EB126CD0, 0x1E6978758);
    if (swift_dynamicCast())
    {
      v1 = [v3 px_isMomentShare];

      return v1;
    }
  }

  else
  {
    sub_1A465E250(v4);
  }

  return 0;
}

uint64_t sub_1A465E250(uint64_t a1)
{
  sub_1A3C4C3FC(0, &qword_1EB126138, sub_1A3DB7F50, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1A465E2DC(uint64_t *a1, char a2)
{
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - v11);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {

    PXDisplayCollectionDetailedCountsMake();
    *v12 = v13;
    swift_storeEnumTagMultiPayload();
    sub_1A465EB84(v12, v9, type metadata accessor for LemonadeNavigationDestination);
    v14 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v14[2];
    v15 = v14[3];
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1A4249320((v15 > 1), v16 + 1, 1, v14);
    }

    sub_1A457EF10(v12);
    v14[2] = v16 + 1;
    sub_1A40B671C(v9, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = swift_unknownObjectRetain();
  sub_1A3D96070(v17, &v22);
  *v6 = v22;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1A4249320(0, v14[2] + 1, 1, v14);
  }

  v19 = v14[2];
  v18 = v14[3];
  if (v19 >= v18 >> 1)
  {
    v14 = sub_1A4249320((v18 > 1), v19 + 1, 1, v14);
  }

  v14[2] = v19 + 1;
  sub_1A40B671C(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19);
  return v14;
}