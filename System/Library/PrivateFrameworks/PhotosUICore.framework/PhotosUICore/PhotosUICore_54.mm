uint64_t sub_1A42F53CC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A52479F4();
}

uint64_t sub_1A42F5438()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A42F54AC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A42F552C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A42F55A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v0 = v3;
  if (v3)
  {
    v1 = [v3 eventTitle];
    swift_unknownObjectRelease();
    v0 = sub_1A524C674();
  }

  return v0;
}

uint64_t sub_1A42F5664()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v0 = v9;
  if (v9)
  {
    v1 = [v9 eventTitle];
    swift_unknownObjectRelease();
    v2 = sub_1A524C674();
    v4 = v3;

    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    sub_1A524C674();
    sub_1A42F5808(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F8E10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1A3D710E8();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v0 = sub_1A524C644();
  }

  return v0;
}

void sub_1A42F5808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_1A42F588C()
{
  v0 = sub_1A4467CD8();
  v1 = [v0 shazamEventInfo];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_1A42F58E0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsShazamEventsWidgetViewModel__eventInfo;
  sub_1A42F5808(0, &qword_1EB1249C0, sub_1A42F5334, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel(uint64_t a1)
{
  result = qword_1EB171430;
  if (!qword_1EB171430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42F5A68(uint64_t a1)
{
  sub_1A42F5808(319, &qword_1EB1249C0, sub_1A42F5334, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A42F5B88(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v15[OBJC_IVAR___PXModifySocialGroupAction_originalTitle];
  *v17 = 0;
  v17[1] = 0;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_originalKeyAsset] = 0;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup] = a1;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_newKeyAsset] = a2;
  v18 = &v15[OBJC_IVAR___PXModifySocialGroupAction_newCustomTitle];
  *v18 = a3;
  v18[1] = a4;
  v15[OBJC_IVAR___PXModifySocialGroupAction_customTitleWasDeleted] = a5;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_peopleToBeAdded] = a6;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_peopleToBeRemoved] = a7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42F5D00(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();
  v15 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_originalTitle);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_originalKeyAsset) = 0;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup) = a1;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_newKeyAsset) = a2;
  v17 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_newCustomTitle);
  *v17 = a3;
  v17[1] = a4;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_customTitleWasDeleted) = a5;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_peopleToBeAdded) = a6;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_peopleToBeRemoved) = a7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42F5F6C()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A42F6520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  v21 = a4;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3C2E0D0;
  v20 = a5;
  v15 = _Block_copy(&v17);

  v21 = a1;
  v22 = a2;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3D6084C;
  v20 = a6;
  v16 = _Block_copy(&v17);

  [v6 performChanges:v15 completionHandler:v16];
  _Block_release(v16);
  _Block_release(v15);
}

void sub_1A42F6694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier + 8);
    if (v2)
    {
      v3 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v3 = *(Strong + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier) & 0xFFFFFFFFFFFFLL;
      }

      if (v3)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    if (*(Strong + OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = sub_1A524D244();
    v5 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136315138;
      v9 = *&v1[OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier + 8];
      v10 = *&v1[OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier];
      v11 = v9;
      v12 = v8;
      sub_1A3C37330(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

id sub_1A42F6EC0(id a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  v4 = a2;
  v6 = (a2 >> 62);
  if (!a2)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    goto LABEL_33;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
LABEL_7:
      v57 = a3;
      v7 = [a1 photoLibrary];
      if (!v7)
      {
        __break(1u);
LABEL_52:
        v59[0] = 0;
        v59[1] = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD00000000000001ALL, 0x80000001A53D1950);
        v47 = [a1 localIdentifier];
        v48 = sub_1A524C674();
        v50 = v49;

        MEMORY[0x1A5907B60](v48, v50);

        MEMORY[0x1A5907B60](0xD00000000000001ELL, 0x80000001A53D1970);
        v53 = 0;
        v52 = 121;
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      v8 = v7;
      v9 = [v7 librarySpecificFetchOptions];

      v10 = [objc_opt_self() px_defaultDetectionTypes];
      if (!v10)
      {
        sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
        sub_1A524CA34();
        v10 = sub_1A524CA14();
      }

      [v9 setIncludedDetectionTypes_];

      v11 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:v9];
      v12 = [v11 fetchedObjects];

      if (!v12)
      {
        goto LABEL_52;
      }

      v13 = sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      v14 = sub_1A524CA34();

      if (v4)
      {
        if (v6)
        {
          if (sub_1A524E2B4())
          {
LABEL_14:
            v59[0] = v14;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }
      }

      v15 = v57;
      if (!v57)
      {
        break;
      }

      if (v57 >> 62)
      {
        if (!sub_1A524E2B4())
        {
          break;
        }
      }

      else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v56 = v9;
      v59[0] = MEMORY[0x1E69E7CC0];
      v55 = a1;
      if (v14 >> 62)
      {
        v16 = sub_1A524E2B4();
        if (!v16)
        {
LABEL_42:
          v22 = MEMORY[0x1E69E7CC0];
LABEL_43:

          v14 = v22;
          a1 = v55;
          v9 = v56;
          break;
        }
      }

      else
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v16)
        {
          goto LABEL_42;
        }
      }

      v54 = v13;
      v17 = 0;
      v4 = 0;
      a1 = (v14 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1A59097F0](v17, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v18 = *(v14 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v6 = &v54;
        v58 = v18;
        v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
        v52 = &v58;
        if (sub_1A40C23C4(sub_1A40C7980, v21, &v51, v15))
        {
        }

        else
        {
          sub_1A524E514();
          v6 = *(v59[0] + 16);
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
          v15 = v57;
        }

        ++v17;
        if (v20 == v16)
        {
          v22 = v59[0];
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v23 = a3;
      v24 = sub_1A524E2B4();
      a3 = v23;
      if (!v24)
      {
        goto LABEL_4;
      }
    }

    v28 = objc_opt_self();
    sub_1A42CE93C(v14, v29);

    sub_1A42CEA7C();
    v30 = sub_1A524CF34();

    v31 = [v28 creationRequestForSocialGroupWithMembers:v30 userAction:1];

    [v31 setOrder_];
    v32 = [a1 customTitle];
    if (v32)
    {
      v33 = v32;
      [v31 setCustomTitle_];
    }

    v34 = [v28 changeRequestForSocialGroup:a1 userAction:{1, v54}];
    if (v34)
    {
      v35 = v34;
      [v34 rejectSocialGroup];
    }

    else
    {
      v36 = sub_1A524D244();
      v37 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v37, v36))
      {
        v38 = v37;
        v39 = swift_slowAlloc();
        v59[0] = swift_slowAlloc();
        *v39 = 136315138;
        v40 = [a1 localIdentifier];
        v41 = sub_1A524C674();
        v43 = v42;

        sub_1A3C2EF94(v41, v43, v59);
      }
    }

    v44 = v31;
    v45 = [v44 placeholderForCreatedSocialGroup];
    v46 = [v45 localIdentifier];

    sub_1A524C674();
    return v44;
  }

  else
  {
LABEL_4:
    if (a3)
    {
      if (a3 >> 62)
      {
        v25 = a3;
        v26 = sub_1A524E2B4();
        a3 = v25;
        if (v26)
        {
          goto LABEL_7;
        }
      }

      else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }
    }

    return [objc_opt_self() changeRequestForSocialGroup:a1 userAction:1];
  }
}

uint64_t sub_1A42F75F0()
{
  v1 = *(v0 + 80);
  v11 = *(v0 + 72);
  v12 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v3 = v1;
  v4 = v11;
  for (i = 0; i != 2; ++i)
  {
    v6 = v10[i + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1A5907D70]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v2 = v9;
    }
  }

  sub_1A42F8138(0, &qword_1EB1209E0, sub_1A4129FCC);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1A42F7700(void *a1, void *a2, char a3, uint64_t a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v14 + 32) = a3 & 1;
  *(v14 + 40) = a7;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a4;

  sub_1A42F7814();
  sub_1A52415B4();

  return v14;
}

void sub_1A42F7814()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 leadingAnchor];
      v6 = [v4 leadingAnchor];
      v7 = [v5 constraintEqualToAnchor_];

      v8 = *(v0 + 80);
      *(v0 + 80) = v7;

      if (*(v0 + 32))
      {
        v9 = &selRef_topAnchor;
      }

      else
      {
        v9 = &selRef_bottomAnchor;
      }

      v10 = [v2 *v9];
      v11 = [v4 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      v13 = *(v0 + 72);
      *(v0 + 72) = v12;
      goto LABEL_13;
    }
  }

  if (qword_1EB1B6870 != -1)
  {
    swift_once();
  }

  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB1B6878);
  oslog = sub_1A5246F04();
  v15 = sub_1A524D244();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A3C1C000, oslog, v15, "Can't create constraints: suggestion view must be in the view hierarchy.", v16, 2u);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  v13 = oslog;
LABEL_13:
}

void sub_1A42F7A34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 superview];

      if (v4)
      {
        [v27 bounds];
        [v27 convertRect:v4 toCoordinateSpace:?];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        if ([v4 effectiveUserInterfaceLayoutDirection] == 1)
        {
          [v4 bounds];
          MaxX = CGRectGetMaxX(v29);
          v30.origin.x = v6;
          v30.origin.y = v8;
          v30.size.width = v10;
          v30.size.height = v12;
          MinX = MaxX - CGRectGetMaxX(v30);
        }

        else
        {
          v31.origin.x = v6;
          v31.origin.y = v8;
          v31.size.width = v10;
          v31.size.height = v12;
          MinX = CGRectGetMinX(v31);
        }

        v15 = *(v0 + 80);
        if (v15)
        {
          v16 = MinX + *(v0 + 48);
          v17 = v15;
          sub_1A5243AD4();
          [v17 setConstant_];
        }

        v19 = *(v0 + 72);
        if (v19)
        {
          v20 = *(v0 + 32);
          v21 = v19;
          v22 = v6;
          v23 = v8;
          v24 = v10;
          v25 = v12;
          if (v20)
          {
            v26 = CGRectGetMaxY(*&v22) + *(v0 + 40) + *(v0 + 56);
          }

          else
          {
            v26 = CGRectGetMinY(*&v22) - *(v0 + 40) - *(v0 + 56);
          }

          [v21 setConstant_];
        }
      }
    }
  }
}

double (*sub_1A42F7C58())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A42F8130;
}

double sub_1A42F7CB0(uint64_t a1)
{
  sub_1A42F8138(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A532EB70, v7);

  return result;
}

uint64_t sub_1A42F7E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42F7ED8, v6, v5);
}

uint64_t sub_1A42F7ED8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A42F7A34();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42F7FD8()
{
  MEMORY[0x1A590F020](v0 + 16);
  MEMORY[0x1A590F020](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1A42F8034()
{
  result = qword_1EB137B78;
  if (!qword_1EB137B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B78);
  }

  return result;
}

void sub_1A42F80CC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6878);
  __swift_project_value_buffer(v0, qword_1EB1B6878);
  sub_1A5246EF4();
}

void sub_1A42F8138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42F818C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A42F7E40(v3, v4, v5, v2);
}

uint64_t sub_1A42F8294(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v10 = *a1;
  result = (*(a4 + 48))(&v10, a3, a4);
  if (((result ^ a2) & 1) == 0)
  {
    v9 = v7;
    return (*(a4 + 56))(&v9, a3, a4);
  }

  return result;
}

id sub_1A42F8328()
{
  result = [objc_opt_self() px_appPhotoLibraryForTesting];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A42F8364()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1A42F8398()
{
  result = qword_1EB137B80;
  if (!qword_1EB137B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B80);
  }

  return result;
}

unint64_t sub_1A42F83F0()
{
  result = qword_1EB137B88;
  if (!qword_1EB137B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B88);
  }

  return result;
}

unint64_t sub_1A42F8448()
{
  result = qword_1EB137B90;
  if (!qword_1EB137B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B90);
  }

  return result;
}

unint64_t sub_1A42F84A0()
{
  result = qword_1EB137B98;
  if (!qword_1EB137B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B98);
  }

  return result;
}

unint64_t sub_1A42F84F8()
{
  result = qword_1EB137BA0;
  if (!qword_1EB137BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BA0);
  }

  return result;
}

uint64_t sub_1A42F868C(uint64_t a1)
{
  result = sub_1A42F87AC(&qword_1EB137BA8, &unk_1A532ED8C);
  *(a1 + 8) = result;
  return result;
}

void sub_1A42F8728()
{
  type metadata accessor for LemonadeMockShelvesDataSource();
  sub_1A42F87AC(&qword_1EB137BB0, &unk_1A532ED64);

    ;
  }
}

uint64_t sub_1A42F87AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeMockShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A42F87EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A42F88C4()
{
  v9 = [objc_allocWithZone(PXHitTestTransparentView) init];
  [v0 setView_];
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

LABEL_14:
  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A59097F0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v0 addChildViewController_];
    v7 = [v5 view];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    [v9 addSubview_];

    [v5 didMoveToParentViewController_];
    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1A42F8A90()
{
  v1 = [v0 view];
  if (!v1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers];
  if (v11 >> 62)
  {
LABEL_15:
    v12 = sub_1A524E2B4();
    if (v12)
    {
LABEL_4:
      for (i = 0; ; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1A59097F0](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        v16 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        v17 = [v14 view];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        [v17 setFrame_];

        if (v16 == v12)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }
  }
}

id sub_1A42F8C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosZStackedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A42F8D6C()
{
  v1 = *(v0 + OBJC_IVAR___PXPeopleResetUserFeedbackAction_person);
  v2 = [v1 px_localizedName];
  v3 = sub_1A524C674();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_1A524C634();
    v8 = PXLocalizedStringForPersonOrPetAndVisibility(v1, 0, v7);

    sub_1A524C674();
    sub_1A3E072BC(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52F8E10;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1A3D710E8();
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
    v10 = sub_1A524C6C4();
  }

  else
  {

    v11 = sub_1A524C634();
    v12 = PXLocalizedStringForPersonOrPetAndVisibility(v1, 0, v11);

    v10 = sub_1A524C674();
  }

  return v10;
}

id sub_1A42F8F00(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXPeopleResetUserFeedbackAction_person] = a1;
  v4 = a1;
  result = [v4 photoLibrary];
  if (result)
  {
    v6 = result;
    v8.receiver = v3;
    v8.super_class = v1;
    v7 = objc_msgSendSuper2(&v8, sel_initWithPhotoLibrary_, result);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A42F90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a3;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3C2E0D0;
  v17 = a4;
  v12 = _Block_copy(&v14);

  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3D6084C;
  v17 = a5;
  v13 = _Block_copy(&v14);

  [v5 performChanges:v12 completionHandler:v13];
  _Block_release(v13);
  _Block_release(v12);
}

void sub_1A42F931C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() changeRequestForPerson_];
    [v2 setUserFeedback_];
  }
}

void sub_1A42F93B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR___PXPeopleResetUserFeedbackAction_person;
    v2 = Strong;
    [*(Strong + OBJC_IVAR___PXPeopleResetUserFeedbackAction_person) fetchPropertySetsIfNeeded];
    v3 = [objc_opt_self() changeRequestForPerson_];
    v4 = [*&v2[v1] userFeedbackProperties];
    v5 = [v4 userFeedback];

    [v3 setUserFeedback_];
  }
}

uint64_t dispatch thunk of LemonadeCurationContext.currentCurationKind.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LemonadeCurationContext.availableCurationKinds.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E64928;

  return v7(a1, a2);
}

void sub_1A42F9724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A42F9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = type metadata accessor for PhotosDetailsDiscoverableView(0, a13, a14, a4);
  v22 = v21[14];
  v23 = sub_1A524DF24();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  sub_1A42F98B0(a2, a9 + v21[9]);
  v24 = (a9 + v21[11]);
  *v24 = a3;
  v24[1] = a4;
  v24[2] = a5;
  result = sub_1A42F98B0(a6, a9 + v21[10]);
  v26 = (a9 + v21[12]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + v21[13]);
  *v27 = a10;
  v27[1] = a11;
  *(a9 + v22) = a12;
  return result;
}

uint64_t sub_1A42F98B0(uint64_t a1, uint64_t a2)
{
  sub_1A3F31320(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A42F9914(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v88 = a1;
  v87 = *(a1 - 8);
  v2 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1 - 8);
  v85 = v3;
  v86 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A52407E4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A5249524();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1A5249D74();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2;
  v71 = v2;
  v92 = *(v2 + 24);
  sub_1A5249F54();
  v10 = sub_1A5248804();
  sub_1A3EE1D04(255);
  v12 = v11;
  v13 = *(v9 + 32);
  v91 = v13;
  v14 = sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v105 = v13;
  v106 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
  v101 = v10;
  v102 = v12;
  v103 = WitnessTable;
  v104 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A42FA678(255);
  swift_getTupleTypeMetadata2();
  v61 = sub_1A524BE24();
  v60 = swift_getWitnessTable();
  v17 = sub_1A524B784();
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = swift_getWitnessTable();
  v101 = v17;
  v102 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v58 - v22;
  v24 = sub_1A5248804();
  v76 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v58 - v29;
  sub_1A3F330A8(255);
  v30 = sub_1A5248804();
  v78 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v75 = &v58 - v31;
  v101 = v17;
  v102 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v14;
  v32 = swift_getWitnessTable();
  v33 = sub_1A42FA630(&qword_1EB127C80, sub_1A3F330A8, MEMORY[0x1E697FD58]);
  v63 = v32;
  v97 = v32;
  v98 = v33;
  v34 = swift_getWitnessTable();
  v80 = v30;
  v101 = v30;
  v102 = v34;
  v67 = v34;
  v70 = swift_getOpaqueTypeMetadata2();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v66 = &v58 - v37;
  sub_1A5249314();
  v94 = v92;
  v95 = v91;
  v38 = v93;
  v96 = v93;
  sub_1A524B774();
  v39 = v65;
  sub_1A5249D54();
  sub_1A524ADB4();
  v40 = v39;
  v41 = v58;
  (*(v69 + 8))(v40, v72);
  (*(v62 + 8))(v19, v17);
  v42 = v74;
  sub_1A5249504();
  sub_1A524AAF4();
  (*(v77 + 8))(v42, v79);
  v43 = v23;
  v44 = v83;
  v45 = OpaqueTypeMetadata2;
  v46 = v81;
  (*(v59 + 8))(v43, v45);
  v47 = v82;
  sub_1A42FE180(v38 + *(v71 + 44), v44, sub_1A3F31320);
  v48 = *(v46 + 48);
  if (v48(v44, 1, v47) == 1)
  {
    sub_1A5240714();
    if (v48(v44, 1, v47) != 1)
    {
      sub_1A42FD6F0(v44, sub_1A3F31320);
    }
  }

  else
  {
    (*(v46 + 32))(v84, v44, v47);
  }

  v49 = sub_1A524A454();
  v51 = v50;
  v53 = v52;
  sub_1A5248764();
  sub_1A3E04DF4(v49, v51, v53 & 1);

  (*(v76 + 8))(v41, v24);
  v54 = (v93 + *(v88 + 48));
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
    v57 = v55;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  v101 = v56;
  v102 = v57;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42FA630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A42FA678(uint64_t a1)
{
  if (!qword_1EB121870)
  {
    sub_1A42FA70C(255);
    sub_1A42FA630(&qword_1EB120EF0, sub_1A42FA70C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121870);
    }
  }
}

void sub_1A42FA740(uint64_t a1)
{
  if (!qword_1EB121698)
  {
    sub_1A42FA7A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB121698);
    }
  }
}

void sub_1A42FA7A8(uint64_t a1)
{
  if (!qword_1EB1216A0)
  {
    sub_1A42FA83C(255);
    sub_1A42FA630(&qword_1EB120FD0, sub_1A42FA83C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1216A0);
    }
  }
}

void sub_1A42FA878(uint64_t a1)
{
  if (!qword_1EB1218E0)
  {
    sub_1A42FA90C(255);
    sub_1A42FA630(&qword_1EB1210A0, sub_1A42FA90C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1218E0);
    }
  }
}

void sub_1A42FA948(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A42FA9A4(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A42FA9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A42FAA20(uint64_t a1)
{
  if (!qword_1EB122750)
  {
    sub_1A42FAB04(255, &qword_1EB122758, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F960]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122750);
    }
  }
}

void sub_1A42FAB04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A42FAC10(uint64_t a1)
{
  if (!qword_1EB121E60)
  {
    sub_1A42FACE4(255);
    sub_1A3EE1D04(255);
    sub_1A42FADF4();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E60);
    }
  }
}

void sub_1A42FACE4(uint64_t a1)
{
  if (!qword_1EB123D08)
  {
    sub_1A42FDE94(255, &qword_1EB121CD8, MEMORY[0x1E6981148], MEMORY[0x1E69815F8]);
    sub_1A42FAD88(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123D08);
    }
  }
}

void sub_1A42FAD88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A42FDE94(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A42FADF4()
{
  result = qword_1EB1285D8;
  if (!qword_1EB1285D8)
  {
    sub_1A42FACE4(255);
    sub_1A42FAE94();
    sub_1A42FE1E8(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1285D8);
  }

  return result;
}

unint64_t sub_1A42FAE94()
{
  result = qword_1EB127520;
  if (!qword_1EB127520)
  {
    sub_1A42FDE94(255, &qword_1EB121CD8, MEMORY[0x1E6981148], MEMORY[0x1E69815F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127520);
  }

  return result;
}

void sub_1A42FAF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A42FAD88(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42FB034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42FB090(uint64_t a1)
{
  if (!qword_1EB121E30)
  {
    sub_1A3EE1D04(255);
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E30);
    }
  }
}

void sub_1A42FB158(uint64_t a1)
{
  if (!qword_1EB124190)
  {
    sub_1A42FDE94(255, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124190);
    }
  }
}

void sub_1A42FB1E4(uint64_t a1)
{
  if (!qword_1EB123830)
  {
    sub_1A42FAB04(255, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123830);
    }
  }
}

uint64_t sub_1A42FB280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a4;
  sub_1A42FA678(0);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = (&v54 - v10);
  sub_1A3EE1D04(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  sub_1A5249F54();
  v18 = sub_1A5248804();
  v55 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v54 - v19;
  v20 = sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v69 = a3;
  v77 = a3;
  v78 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
  v73 = v18;
  v74 = v12;
  v62 = v12;
  v59 = WitnessTable;
  v75 = WitnessTable;
  v76 = v22;
  v58 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_1A524DF24();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v60 = &v54 - v32;
  v33 = *(v15 + 16);
  v63 = a1;
  v33(v17, a1, v14, v31);
  v34 = *(a2 - 8);
  v35 = (*(v34 + 48))(v17, 1, a2);
  v65 = a2;
  if (v35 == 1)
  {
    (*(v15 + 8))(v17, v14);
    v36 = 1;
    v37 = v62;
    v38 = v59;
    v39 = v58;
LABEL_5:
    (*(*(OpaqueTypeMetadata2 - 8) + 56))(v29, v36, 1, OpaqueTypeMetadata2);
    v73 = v18;
    v74 = v37;
    v75 = v38;
    v76 = v39;
    v72[2] = swift_getOpaqueTypeConformance2();
    v45 = swift_getWitnessTable();
    v46 = *(v25 + 16);
    v47 = v60;
    v46(v60, v29, v24);
    v48 = *(v25 + 8);
    v48(v29, v24);
    v49 = sub_1A52492E4();
    v50 = v64;
    *v64 = v49;
    *(v50 + 8) = 0x4000000000000000;
    *(v50 + 16) = 0;
    sub_1A42FE04C(0, &qword_1EB1244E0, sub_1A42FA70C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A42FBA74(v63, v65, v69, v50 + *(v51 + 44));
    v52 = v61;
    v46(v61, v47, v24);
    v73 = v52;
    v53 = v68;
    sub_1A42FE0B8(v50, v68, sub_1A42FA678);
    v74 = v53;
    v72[0] = v24;
    v72[1] = v66;
    v70 = v45;
    v71 = sub_1A42FA630(&qword_1EB121878, sub_1A42FA678, MEMORY[0x1E69817F8]);
    sub_1A3DF4988(&v73, 2uLL, v72);
    sub_1A42FE120(v50, sub_1A42FA678);
    v48(v47, v24);
    sub_1A42FE120(v53, sub_1A42FA678);
    return (v48)(v52, v24);
  }

  sub_1A524AA94();
  (*(v34 + 8))(v17, a2);
  v40 = *MEMORY[0x1E697E728];
  v41 = sub_1A52486A4();
  v42 = v56;
  (*(*(v41 - 8) + 104))(v56, v40, v41);
  sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1A524C594();
  if (result)
  {
    v37 = v62;
    v38 = v59;
    v39 = v58;
    v44 = v57;
    sub_1A524AB84();
    sub_1A42FD6F0(v42, sub_1A3EE1D04);
    (*(v55 + 8))(v44, v18);
    v36 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42FBA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A42FA7A8(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  *v13 = sub_1A5249584();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_1A42FE04C(0, &qword_1EB124478, sub_1A42FA83C, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A42FBBEC(a1, a2, a3, &v13[*(v14 + 44)]);
  sub_1A42FE0B8(v13, v10, sub_1A42FA7A8);
  sub_1A42FE0B8(v10, a4, sub_1A42FA7A8);
  sub_1A42FA740(0);
  v16 = a4 + *(v15 + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_1A42FE120(v13, sub_1A42FA7A8);
  return sub_1A42FE120(v10, sub_1A42FA7A8);
}

uint64_t sub_1A42FBBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  sub_1A42FAB04(0, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v48 - v8;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52407E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v48 - v17;
  sub_1A42FB1E4(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  sub_1A42FA878(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v57 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  *v28 = sub_1A5249314();
  *(v28 + 1) = 0x4020000000000000;
  v28[16] = 0;
  sub_1A42FE04C(0, &qword_1EB1244F8, sub_1A42FA90C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A42FC1C4(a1, a2, a3, &v28[*(v29 + 44)]);
  v31 = type metadata accessor for PhotosDetailsDiscoverableView(0, a2, a3, v30);
  sub_1A42FE180(a1 + *(v31 + 40), v11, sub_1A3F31320);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A42FD6F0(v11, sub_1A3F31320);
    v32 = 1;
  }

  else
  {
    v33 = *(v13 + 32);
    v34 = v54;
    v51 = v12;
    v33(v54, v11, v12);
    (*(v13 + 16))(v15, v34, v12);
    v35 = sub_1A524A454();
    v49 = v35;
    v50 = v36;
    v38 = v37;
    v40 = v39;
    v41 = v36;
    KeyPath = swift_getKeyPath();
    v52 = v23;
    v59 = v35;
    v60 = v38;
    v61 = v40 & 1;
    v62 = v41;
    v63 = KeyPath;
    v64 = 1;
    v65 = 0;
    sub_1A3DF14C0(0);
    sub_1A405D614();
    v43 = v53;
    sub_1A524AA94();
    sub_1A3E04DF4(v49, v38, v40 & 1);
    v23 = v52;

    (*(v13 + 8))(v54, v51);
    sub_1A42FE238(v43, v23);
    v32 = 0;
  }

  (*(v55 + 56))(v23, v32, 1, v56);
  v44 = v57;
  sub_1A42FE0B8(v28, v57, sub_1A42FA878);
  sub_1A42FE180(v23, v20, sub_1A42FB1E4);
  v45 = v58;
  sub_1A42FE0B8(v44, v58, sub_1A42FA878);
  sub_1A42FA9A4(0, &qword_1EB1218D8, sub_1A42FA878, sub_1A42FB1E4);
  sub_1A42FE180(v20, v45 + *(v46 + 48), sub_1A42FB1E4);
  sub_1A42FD6F0(v23, sub_1A42FB1E4);
  sub_1A42FE120(v28, sub_1A42FA878);
  sub_1A42FD6F0(v20, sub_1A42FB1E4);
  return sub_1A42FE120(v44, sub_1A42FA878);
}

uint64_t sub_1A42FC1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v137 = a2;
  v135 = a4;
  sub_1A42FB158(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v113 - v9;
  sub_1A42FAF70(0);
  v119 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAF28(0);
  v131 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v120 = (&v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42FAB04(0, &qword_1EB122C08, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F948]);
  v129 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v113 - v15;
  sub_1A3EE1D04(0);
  v126 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v125 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAB88(0);
  v122 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAABC(0);
  v128 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v123 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42FAB04(0, &qword_1EB122758, sub_1A42FAABC, sub_1A42FAF28, MEMORY[0x1E697F960]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v113 - v27;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A52407E4();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v113 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v113 - v38;
  sub_1A42FAA20(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v133 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v113 - v43;
  v46 = type metadata accessor for PhotosDetailsDiscoverableView(0, v137, a3, v45);
  sub_1A42FE180(a1 + v46[9], v30, sub_1A3F31320);
  if (v32[6](v30, 1, v31) == 1)
  {
    sub_1A42FD6F0(v30, sub_1A3F31320);
    (*(v26 + 56))(v44, 1, 1, v25);
LABEL_9:
    v104 = v135;
    v105 = (a1 + v46[11]);
    v107 = v105[1];
    v108 = v105[2];
    v138 = *v105;
    v106 = v138;
    v139 = v107;
    v140 = v108;
    sub_1A42F9724(v138, v107);
    sub_1A42FDE94(0, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A42FE2E0();
    v109 = v134;
    sub_1A524AA94();
    sub_1A3D37A58(v106, v107, v108);
    v110 = v133;
    sub_1A42FE0B8(v44, v133, sub_1A42FAA20);
    v111 = v136;
    sub_1A42FE180(v109, v136, sub_1A42FB158);
    sub_1A42FE0B8(v110, v104, sub_1A42FAA20);
    sub_1A42FA9A4(0, &qword_1EB122748, sub_1A42FAA20, sub_1A42FB158);
    sub_1A42FE180(v111, v104 + *(v112 + 48), sub_1A42FB158);
    sub_1A42FD6F0(v109, sub_1A42FB158);
    sub_1A42FE120(v44, sub_1A42FAA20);
    sub_1A42FD6F0(v111, sub_1A42FB158);
    return sub_1A42FE120(v110, sub_1A42FAA20);
  }

  v114 = v26;
  v115 = v25;
  v116 = v44;
  v32[4](v39, v30, v31);
  v113 = v46;
  v47 = v46[13];
  v117 = a1;
  v48 = *(a1 + v47);
  v137 = v31;
  if (v48)
  {
    sub_1A524B544();
    v49 = sub_1A524A474();
    v50 = v39;
    v52 = v51;
    v54 = v53;
    sub_1A5249414();
    sub_1A5249404();
    v55 = v124;
    sub_1A5240714();
    v119 = v50;
    sub_1A5240724();
    v120 = v32;
    v56 = v32[1];
    v57 = v55;
    v58 = v137;
    (v56)(v57, v137);
    sub_1A52493C4();
    (v56)(v36, v58);
    sub_1A5249404();
    sub_1A52493D4();
    sub_1A5249404();
    sub_1A5249444();
    v59 = sub_1A524A444();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_1A3E04DF4(v49, v52, v54 & 1);

    v66 = [objc_opt_self() tertiaryLabelColor];
    v67 = sub_1A524B284();
    KeyPath = swift_getKeyPath();
    v138 = v59;
    v139 = v61;
    v125 = v61;
    v69 = v63 & 1;
    LOBYTE(v140) = v63 & 1;
    v141 = v65;
    v142 = KeyPath;
    v143 = v67;
    v70 = *MEMORY[0x1E697E728];
    v71 = sub_1A52486A4();
    v72 = v132;
    (*(*(v71 - 8) + 104))(v132, v70, v71);
    sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1A524C594();
    if (result)
    {
      sub_1A42FACE4(0);
      sub_1A42FADF4();
      sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
      v74 = v121;
      sub_1A524AB84();
      sub_1A42FD6F0(v72, sub_1A3EE1D04);
      sub_1A3E04DF4(v59, v125, v69);

      sub_1A42FABF0(0);
      *(v74 + *(v75 + 36)) = 256;
      v46 = v113;
      a1 = v117;
      v76 = *(v117 + v113[14]);
      v77 = swift_getKeyPath();
      sub_1A42FABD0(0);
      v79 = v74 + *(v78 + 36);
      *v79 = v77;
      *(v79 + 8) = v76;
      *(v79 + 16) = 0;
      v80 = (v74 + *(v122 + 36));
      sub_1A3F32A14(0);
      v82 = *(v81 + 28);
      v83 = *MEMORY[0x1E69816C8];
      v84 = sub_1A524B5B4();
      (*(*(v84 - 8) + 104))(v80 + v82, v83, v84);
      *v80 = swift_getKeyPath();
      sub_1A42FE618();
      v85 = v123;
      sub_1A524AA94();
      sub_1A42FE120(v74, sub_1A42FAB88);
      sub_1A42FE0B8(v85, v130, sub_1A42FAABC);
      swift_storeEnumTagMultiPayload();
      sub_1A42FE568();
      sub_1A42FE7F8();
      v86 = v127;
      sub_1A5249744();
      sub_1A42FE120(v85, sub_1A42FAABC);
      v44 = v116;
      v87 = v115;
      v88 = v114;
      v32 = v120;
      v39 = v119;
LABEL_8:
      sub_1A3CF04F4(v86, v44);
      (*(v88 + 56))(v44, 0, 1, v87);
      (v32[1])(v39, v137);
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    v32[2](v36, v39, v137);
    v89 = sub_1A524A454();
    v91 = v90;
    v138 = v89;
    v139 = v90;
    v93 = v92 & 1;
    LOBYTE(v140) = v92 & 1;
    v141 = v94;
    v95 = *MEMORY[0x1E697E728];
    v96 = sub_1A52486A4();
    v97 = v132;
    (*(*(v96 - 8) + 104))(v132, v95, v96);
    sub_1A42FA630(&unk_1EB1288C0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1A524C594();
    if (result)
    {
      sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
      v98 = v118;
      sub_1A524AB84();
      sub_1A42FD6F0(v97, sub_1A3EE1D04);
      sub_1A3E04DF4(v89, v91, v93);

      sub_1A42FB014(0);
      *(v98 + *(v99 + 36)) = 256;
      v46 = v113;
      a1 = v117;
      v100 = *(v117 + v113[14]);
      v101 = swift_getKeyPath();
      v102 = v98 + *(v119 + 9);
      *v102 = v101;
      *(v102 + 8) = v100;
      *(v102 + 16) = 0;
      sub_1A42FE3D0(&qword_1EB1237B8, sub_1A42FAF70, sub_1A42FE474);
      v103 = v120;
      sub_1A524AA94();
      sub_1A42FE120(v98, sub_1A42FAF70);
      sub_1A42FE0B8(v103, v130, sub_1A42FAF28);
      swift_storeEnumTagMultiPayload();
      sub_1A42FE568();
      sub_1A42FE7F8();
      v86 = v127;
      sub_1A5249744();
      sub_1A42FE120(v103, sub_1A42FAF28);
      v44 = v116;
      v87 = v115;
      v88 = v114;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42FD19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosDetailsDiscoverableView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = (v4 + *(result + 60) + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  if (*v8)
  {
    return (*v8)();
  }

  return result;
}

uint64_t sub_1A42FD218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v47 = a3;
  sub_1A42FD4E8(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1A524C734();
  v49 = v8;
  sub_1A3D5F9DC();
  v9 = sub_1A524A464();
  v11 = v10;
  v13 = v12;
  sub_1A524A164();
  v15 = v14;
  v16 = sub_1A3FE1A88();
  sub_1A3FE1A98(v15, 12.0, v16);

  v17 = sub_1A524A3C4();
  v45 = v18;
  v46 = v17;
  v20 = v19;
  v44 = v21;

  sub_1A3E04DF4(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v23 = v20 & 1;
  v50 = v20 & 1;

  LOBYTE(v11) = sub_1A524A064();
  LOBYTE(v48) = 0;
  v24 = &v7[*(v5 + 36)];
  v25 = *(sub_1A5248A14() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1A52494A4();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #2.0 }

  *v24 = _Q0;
  v33 = sub_1A524B474();
  v34 = swift_getKeyPath();
  sub_1A42FD530(0, &qword_1EB128738, MEMORY[0x1E697EAF0]);
  v36 = &v24[*(v35 + 36)];
  *v36 = v34;
  v36[1] = v33;
  v37 = sub_1A524BC74();
  v39 = v38;
  sub_1A3E33BA0(0);
  v41 = &v24[*(v40 + 36)];
  *v41 = v37;
  v41[1] = v39;
  v42 = v45;
  *v7 = v46;
  *(v7 + 1) = v42;
  v7[16] = v23;
  *(v7 + 3) = v44;
  *(v7 + 16) = 257;
  *(v7 + 5) = KeyPath;
  *(v7 + 6) = a2;
  v7[56] = v11;
  *(v7 + 4) = xmmword_1A532EEE0;
  *(v7 + 5) = xmmword_1A532EEE0;
  v7[96] = 0;
  sub_1A42FD5C0();
  sub_1A524AA94();
  return sub_1A42FD6F0(v7, sub_1A42FD4E8);
}

void sub_1A42FD530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A42FAD88(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A42FD5C0()
{
  result = qword_1EB137BD0;
  if (!qword_1EB137BD0)
  {
    sub_1A42FD4E8(255);
    sub_1A42FD670();
    sub_1A42FA630(&qword_1EB127FC8, sub_1A3E33BA0, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BD0);
  }

  return result;
}

unint64_t sub_1A42FD670()
{
  result = qword_1EB128258;
  if (!qword_1EB128258)
  {
    sub_1A3E355F0(255);
    sub_1A3E35988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128258);
  }

  return result;
}

uint64_t sub_1A42FD6F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A42FD7B0(uint64_t a1)
{
  sub_1A524DF24();
  if (v1 <= 0x3F)
  {
    sub_1A3F31320(319);
    if (v2 <= 0x3F)
    {
      sub_1A42FDE94(319, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A42FDE94(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A42FDEE4(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A42FD900(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1A52407E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  if (v7)
  {
    v14 = *(v6 + 64);
  }

  else
  {
    v14 = *(v6 + 64) + 1;
  }

  v15 = *(v10 + 80);
  v16 = *(*(v9 - 8) + 64);
  if (!v11)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = v16 + v15;
  v19 = v16 + 7;
  if (v13 < a2)
  {
    v20 = ((((((((v19 + ((v18 + (v17 & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v13 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = *(a1 + v20);
        if (v25)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v24)
    {
      v25 = *(a1 + v20);
      if (v25)
      {
LABEL_33:
        v26 = v25 - 1;
        if (v21)
        {
          v26 = 0;
          v27 = *a1;
        }

        else
        {
          v27 = 0;
        }

        return v13 + (v27 | v26) + 1;
      }
    }
  }

  if (v8 == v13)
  {
    if (v7 >= 2)
    {
      v28 = (*(v6 + 48))(a1, v7, v5);
      goto LABEL_51;
    }

    return 0;
  }

  v29 = ~v15;
  v30 = (a1 + v17) & v29;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v28 = (*(v10 + 48))(v30);
LABEL_51:
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v32 = *(((v19 + ((v18 + v30) & v29)) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v32 >= 0xFFFFFFFF)
  {
    LODWORD(v32) = -1;
  }

  if ((v32 + 1) >= 2)
  {
    return v32;
  }

  else
  {
    return 0;
  }
}

void sub_1A42FDB84(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_1A52407E4() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v15 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v18 = 2147483646;
  }

  if (!v9)
  {
    ++v14;
  }

  v19 = v14 + v16;
  v20 = (v14 + v16) & ~v16;
  if (!v13)
  {
    ++v17;
  }

  v21 = v17 + v16;
  v22 = (v17 + v16 + v20) & ~v16;
  v23 = v17 + 7;
  v24 = ((((((((v23 + v22) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 < a3)
  {
    if (((((((((v23 + v22) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = a3 - v18 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v11 = v26;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v18)
  {
    if (v24)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v18;
    }

    if (v24)
    {
      v28 = ~v18 + a2;
      bzero(a1, v24);
      *a1 = v28;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v11)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v11)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v10 == v18)
  {
    v29 = *(v34 + 56);

    v29(a1, a2 + 1, v9, v7);
  }

  else
  {
    v30 = ~v16;
    v31 = (a1 + v19) & v30;
    if (v15 == v18)
    {
      v32 = *(v12 + 56);

      v32(v31, a2 + 1);
    }

    else
    {
      v33 = ((v23 + ((v21 + v31) & v30)) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v33 = 0;
        v33[1] = 0;
        v33[2] = 0;
        *v33 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v33[1] = a2;
      }
    }
  }
}

void sub_1A42FDE94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A42FDEE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A42FDF58()
{
  result = qword_1EB137BD8;
  if (!qword_1EB137BD8)
  {
    sub_1A42FAB04(255, &qword_1EB137BE0, sub_1A42FD4E8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A42FD5C0();
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BD8);
  }

  return result;
}

void sub_1A42FE04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_1A42FE0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42FE120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A42FE180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42FE1E8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A42FAD88(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A42FE238(uint64_t a1, uint64_t a2)
{
  sub_1A42FAB04(0, &qword_1EB123838, sub_1A3DF14C0, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A42FE2E0()
{
  result = qword_1EB1292F8;
  if (!qword_1EB1292F8)
  {
    sub_1A42FDE94(255, &qword_1EB124FE0, &type metadata for BadgeView, MEMORY[0x1E69E6720]);
    sub_1A42FE37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1292F8);
  }

  return result;
}

unint64_t sub_1A42FE37C()
{
  result = qword_1EB129300;
  if (!qword_1EB129300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129300);
  }

  return result;
}

uint64_t sub_1A42FE3D0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A42FE1E8(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A42FE474()
{
  result = qword_1EB123EF0;
  if (!qword_1EB123EF0)
  {
    sub_1A42FB014(255);
    sub_1A3EE1D04(255);
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EF0);
  }

  return result;
}

unint64_t sub_1A42FE568()
{
  result = qword_1EB128130;
  if (!qword_1EB128130)
  {
    sub_1A42FAABC(255);
    sub_1A42FE618();
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128130);
  }

  return result;
}

unint64_t sub_1A42FE618()
{
  result = qword_1EB1281F8;
  if (!qword_1EB1281F8)
  {
    sub_1A42FAB88(255);
    sub_1A42FE3D0(&qword_1EB128360, sub_1A42FABD0, sub_1A42FE6F8);
    sub_1A42FA630(&unk_1EB1277E0, sub_1A3F32A14, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281F8);
  }

  return result;
}

unint64_t sub_1A42FE6F8()
{
  result = qword_1EB128678;
  if (!qword_1EB128678)
  {
    sub_1A42FABF0(255);
    sub_1A42FACE4(255);
    sub_1A3EE1D04(255);
    sub_1A42FADF4();
    sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128678);
  }

  return result;
}

unint64_t sub_1A42FE7F8()
{
  result = qword_1EB1233B0;
  if (!qword_1EB1233B0)
  {
    sub_1A42FAF28(255);
    sub_1A42FE3D0(&qword_1EB1237B8, sub_1A42FAF70, sub_1A42FE474);
    sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1233B0);
  }

  return result;
}

uint64_t sub_1A42FE8D8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6DB8);
  __swift_project_value_buffer(v0, qword_1EB1B6DB8);
  return sub_1A5246F14();
}

uint64_t sub_1A42FE95C()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB170758);
  __swift_project_value_buffer(v4, qword_1EB170758);
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1B6DB8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t PICompositionController.squareThumbnails(for:scaledToFill:reusingRenderContext:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 24) = a1;
  *(v5 + 64) = sub_1A524CC54();
  *(v5 + 72) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v5 + 80) = v7;
  *(v5 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A42FEB3C, v7, v6);
}

uint64_t sub_1A42FEB3C(__n128 a1)
{
  v2 = v1[7];
  v3 = v1[6];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[3];
  v7 = sub_1A524CC44();
  v1[12] = v7;
  v8 = swift_task_alloc();
  v1[13] = v8;
  v8[2] = v2;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v8[6] = v3;
  v9 = swift_task_alloc();
  v1[14] = v9;
  sub_1A42FEFD8(0);
  *v9 = v1;
  v9[1] = sub_1A42FEC6C;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v1 + 2, v7, v11, 0xD000000000000038, 0x80000001A53D1D60, sub_1A42FEFC8, v8, v10);
}

uint64_t sub_1A42FEC6C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A42FEDF8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1A42FED90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A42FED90()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A42FEDF8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A42FEE70(uint64_t a1, double a2, double a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_1A4300298(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  (*(v13 + 32))(v17 + v16, &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_1A42FF058(a5, a6, v17, a2, a3);
}

void sub_1A42FEFD8(uint64_t a1)
{
  if (!qword_1EB137BE8)
  {
    type metadata accessor for CGImage(255);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137BE8);
    }
  }
}

void sub_1A42FF058(unint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v73 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_1A5246E54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  if (qword_1EB170750 != -1)
  {
LABEL_40:
    swift_once();
  }

  v16 = sub_1A5246E94();
  __swift_project_value_buffer(v16, qword_1EB170758);
  sub_1A5246E84();
  sub_1A5246E24();
  v17 = sub_1A5246E84();
  v18 = sub_1A524D654();
  v19 = sub_1A524DEC4();
  v72 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, v18, v21, "Generate Style Thumbnails", "", v20, 2u);
    v22 = v20;
    a1 = v72;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v10[2](v12, v15, v9);
  sub_1A5246ED4();
  swift_allocObject();
  v12 = sub_1A5246EC4();
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1A5246F24();
  __swift_project_value_buffer(v23, qword_1EB1B6DB8);
  v24 = sub_1A5246F04();
  v25 = sub_1A524D264();
  v26 = os_log_type_enabled(v24, v25);
  v64 = v12;
  v65 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v27 = 136315138;
    v28 = sub_1A524E444();
    sub_1A3C2EF94(v28, v29, &aBlock);
  }

  if (a2)
  {
    v71 = a2;
    if (!(a1 >> 62))
    {
      goto LABEL_10;
    }

LABEL_24:
    v30 = sub_1A524E2B4();
    v66 = v10;
    v67 = v9;
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_25:
    v45 = a2;
    v46 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v71 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

LABEL_10:
  v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v10;
  v67 = v9;
  if (!v30)
  {
    goto LABEL_25;
  }

LABEL_11:
  v79 = MEMORY[0x1E69E7CC0];
  v31 = a2;
  sub_1A524E554();
  if (v30 < 0)
  {
    goto LABEL_43;
  }

  a2 = 0;
  v9 = a1 & 0xC000000000000001;
  v68 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = *MEMORY[0x1E69BE060];
  do
  {
    v10 = (a2 + 1);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v9)
    {
      v33 = MEMORY[0x1A59097F0](a2, a1);
    }

    else
    {
      if (a2 >= *(v68 + 16))
      {
        goto LABEL_39;
      }

      v33 = *(a1 + 8 * a2 + 32);
    }

    v34 = v33;
    [v70 copyWithZone_];
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v35 = v80;
    sub_1A410FB94(v34);
    [v35 removeAdjustmentWithKey_];
    v36 = objc_opt_self();
    v37 = [v35 composition];
    v38 = [v36 imageRenderRequestWithComposition:v37 fillInSize:1 wideGamut:{a4, a5}];

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v39 = v38;
    sub_1A524E404();

    strcpy(&aBlock, "thumbnail for ");
    HIBYTE(aBlock) = -18;
    v40 = PhotoStyleElement.name.getter();
    MEMORY[0x1A5907B60](v40);

    v15 = sub_1A524C634();

    [v39 setName_];

    [v39 setRenderContext_];
    v41 = [objc_allocWithZone(MEMORY[0x1E69B3C00]) initWithLevel_];
    [v39 setPriority_];

    sub_1A524E514();
    v12 = *(v79 + 16);
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    ++a2;
    a1 = v72;
  }

  while (v10 != v30);
  v42 = v79;
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  if (v9)
  {
    v43 = 0;
    do
    {
      v44 = v43 + 1;
      MEMORY[0x1A59097F0]();
      swift_unknownObjectRelease();
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v43 = v44;
    }

    while (v30 != v44);
  }

  else
  {
    sub_1A524E514();
    sub_1A524E524();
    do
    {
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v30;
    }

    while (v30);
  }

  v46 = aBlock;
LABEL_29:
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  v48 = objc_opt_self();
  [v48 begin];
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  v70 = v48;
  if (v42 >> 62)
  {
    v72 = sub_1A524E2B4();
    if ((v72 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v72 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  if (v72)
  {
    v50 = 0;
    v51 = v42 & 0xC000000000000001;
    v52 = v42;
    do
    {
      if (v51)
      {
        v53 = MEMORY[0x1A59097F0](v50, v42);
      }

      else
      {
        v53 = *(v42 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = v50 + 1;
      v56 = swift_allocObject();
      *(v56 + 16) = v49;
      *(v56 + 24) = v47;
      *(v56 + 32) = v50;
      *(v56 + 40) = "Generate Style Thumbnails";
      *(v56 + 48) = 25;
      *(v56 + 56) = 2;
      v57 = v73;
      *(v56 + 64) = sub_1A4300308;
      *(v56 + 72) = v57;
      v77 = sub_1A43009AC;
      v78 = v56;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v75 = sub_1A3D7692C;
      v76 = &block_descriptor_15_3;
      v58 = _Block_copy(&aBlock);

      [v54 submit_];
      _Block_release(v58);

      v50 = v55;
      v42 = v52;
    }

    while (v72 != v55);
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v59 = sub_1A524D474();
  v60 = swift_allocObject();
  *(v60 + 16) = v49;
  *(v60 + 24) = "Generate Style Thumbnails";
  *(v60 + 32) = 25;
  *(v60 + 40) = 2;
  *(v60 + 48) = v64;
  *(v60 + 56) = v47;
  v61 = v73;
  *(v60 + 64) = sub_1A4300308;
  *(v60 + 72) = v61;
  v77 = sub_1A4300CF8;
  v78 = v60;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v75 = sub_1A3C2E0D0;
  v76 = &block_descriptor_21_5;
  v62 = _Block_copy(&aBlock);

  [v70 commitAndNotifyOnQueue:v59 withBlock:v62];

  _Block_release(v62);

  (v66[1])(v65, v67);
}

uint64_t PICompositionController.unstyledSquareThumbnail(scaledToFill:reusingRenderContext:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 184) = swift_getObjectType();
  sub_1A524CC54();
  *(v4 + 192) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v4 + 200) = v5;
  *(v4 + 208) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A42FFB50, v5, v6);
}

uint64_t sub_1A42FFB50()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  [*(v0 + 176) copyWithZone_];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v4 = *(v0 + 144);
  *(v0 + 216) = v4;
  [v4 removeAdjustmentWithKey_];
  [v4 removeAdjustmentWithKey_];
  v5 = objc_opt_self();
  v6 = [v4 composition];
  v7 = [v5 imageRenderRequestWithComposition:v6 fillInSize:1 wideGamut:{v3, v2}];
  *(v0 + 224) = v7;

  v8 = v7;
  v9 = sub_1A524C634();
  [v8 setName_];

  v10 = *(v0 + 168);
  if (v1)
  {
    v11 = *(v0 + 168);
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  }

  v12 = v10;
  [v8 setRenderContext_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69B3C00]) initWithLevel_];
  [v8 setPriority_];

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1A42FFE50;
  v14 = swift_continuation_init();
  sub_1A4300130(0);
  *(v0 + 136) = v15;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A43001A8;
  *(v0 + 104) = &block_descriptor_157;
  *(v0 + 112) = v14;
  [v8 submit_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A42FFE50()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1A42FFF84, v2, v1);
}

uint64_t sub_1A42FFF84()
{

  v0[10] = 0;
  v1 = v0[18];
  v2 = [v1 result_];
  v3 = v0[10];
  v5 = v0[27];
  v4 = v0[28];
  if (v2)
  {
    v6 = v2;
    v7 = v3;
    v8 = [v6 buffer];
    swift_unknownObjectRelease();
    v9 = sub_1A430020C();

    swift_unknownObjectRelease();
    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v12 = v3;
    sub_1A5240B84();

    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

void sub_1A4300130(uint64_t a1)
{
  if (!qword_1EB139BC0)
  {
    sub_1A3C52C70(255, &qword_1EB137BF0, 0x1E69B3C78);
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139BC0);
    }
  }
}

uint64_t sub_1A43001A8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

CGImageRef sub_1A430020C()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v1 = [v0 CVPixelBuffer];
  VTCreateCGImageFromCVPixelBuffer(v1, 0, v3);

  result = v3[0];
  if (!v3[0])
  {
    __break(1u);
  }

  return result;
}

void sub_1A4300298(uint64_t a1)
{
  if (!qword_1EB137C00)
  {
    sub_1A42FEFD8(255);
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137C00);
    }
  }
}

uint64_t sub_1A4300308(void *a1, void *a2)
{
  sub_1A4300298(0);
  if (a2)
  {
    v4 = a2;
    return sub_1A524CBD4();
  }

  else
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1B6DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB1B6DB8);
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, v8, "Reached an unexpected state. squareThumbnails has no images and nor errors to pass back to caller.", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A43004B0(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, void (*a7)(void (**)(char *, uint64_t), void, __n128), uint64_t a8)
{
  v38 = a8;
  v39 = a7;
  v37 = a3;
  v40 = a2;
  v11 = sub_1A5246EA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5246E54();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    return;
  }

  v36 = a4;
  v35 = a6;
  if (qword_1EB170750 != -1)
  {
    swift_once();
  }

  v19 = sub_1A5246E94();
  __swift_project_value_buffer(v19, qword_1EB170758);
  v20 = sub_1A5246E84();
  sub_1A5246EB4();
  v21 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    if ((v36 & 1) == 0)
    {
      v22 = v40;
      if (v40)
      {
LABEL_12:
        v34 = v22;

        sub_1A5246EE4();

        if ((*(v12 + 88))(v14, v11) == *MEMORY[0x1E69E93E8])
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v12 + 8))(v14, v11);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v20, v21, v25, v34, v23, v24, 2u);
        MEMORY[0x1A590EEC0](v24, -1, -1);
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_26:
        __break(1u);
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {
        v22 = &v41;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_16:

  (*(v16 + 8))(v18, v15);
  if (qword_1EB1B6DB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1A5246F24();
  __swift_project_value_buffer(v26, qword_1EB1B6DB8);
  v27 = sub_1A5246F04();
  v28 = sub_1A524D264();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v29 = 136315138;
    v30 = sub_1A524E444();
    sub_1A3C2EF94(v30, v31, v43);
  }

  v32 = v35;
  swift_beginAccess();
  if (*(*(v32 + 16) + 16))
  {
    v42 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (v39)(MEMORY[0x1E69E7CC0], 0);
}

void sub_1A43009AC(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[8];
  swift_beginAccess();
  if (*(v4 + 16))
  {
    return;
  }

  v27[0] = 0;
  v7 = [a1 result_];
  if (v7)
  {
    v8 = v7;
    v9 = v27[0];
    v10 = [v8 buffer];
    swift_unknownObjectRelease();
    v11 = sub_1A430020C();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v12 = v3[2];
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v12;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = sub_1A4300D10(v12);
      v3[2] = v12;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (*(v12 + 16) > v5)
        {
          v15 = v12 + 8 * v5;
          v16 = *(v15 + 32);
          *(v15 + 32) = v13;
          v3[2] = v12;
          swift_endAccess();

          return;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v27[0];
  v3 = sub_1A5240B84();

  swift_willThrow();
  swift_beginAccess();
  *(v4 + 16) = 1;
  if (qword_1EB1B6DB0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = sub_1A5246F24();
  __swift_project_value_buffer(v18, qword_1EB1B6DB8);
  v19 = v3;
  v20 = sub_1A5246F04();
  v21 = sub_1A524D244();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = sub_1A524E444();
    sub_1A3C2EF94(v23, v24, &v26);
  }

  v25 = v3;
  v6(0, v3);
}

double block_copy_helper_13_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1A4300D2C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return result;
}

uint64_t sub_1A4300DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

double sub_1A4300E18(uint64_t a1, __n128 a2)
{
  if (v2[3])
  {
    if (a1)
    {
      sub_1A5246BC4();
      sub_1A4308ABC(&qword_1EB137C08, MEMORY[0x1E69C1BF0], MEMORY[0x1E69C1BF8]);
      swift_retain_n();
      v4 = sub_1A524C594();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 416))(v6);

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v2[3] = a1;

  return result;
}

void *sub_1A4300FB4()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  v1 = v0[4];
  v2 = v1;
  return v1;
}

uint64_t sub_1A4301020@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

void sub_1A430106C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A430109C(v1);
}

void sub_1A430109C(void *a1)
{
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
}

void sub_1A4301214()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

float sub_1A430124C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return v0[10];
}

void sub_1A430132C(float a1)
{
  if (v1[10] == a1)
  {
    v1[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v3);
  }
}

float sub_1A430141C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

double sub_1A430142C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return result;
}

double sub_1A43014A0@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 408))();

  *a2 = v3[6];

  return result;
}

double sub_1A4301528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 416))(KeyPath, sub_1A4308BF8, v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A43015D8(void *a1)
{
  swift_allocObject();
  v2 = sub_1A43080B8(a1);

  return v2;
}

void sub_1A4301620()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v2 setDeliveryMode_];
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1A590D300]([v3 aspectRatio]);
  v6 = v5;
  [v3 size];
  if (v4 >= v7)
  {
    v4 = v7;
  }

  [v3 size];
  if (v6 >= v8)
  {
    v6 = v8;
  }

  v9 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_1A4308A4C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A3DD5B38;
  v12[3] = &block_descriptor_158;
  v10 = _Block_copy(v12);
  v11 = v2;

  [v1 requestImageForAsset:v3 targetSize:1 contentMode:v11 options:v10 resultHandler:{v4, v6}];
  _Block_release(v10);
}

void sub_1A43017DC(void *a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = v9;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v12 = a1;
    v13 = sub_1A524D474();
    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1A4308A54;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_123;
    v16 = _Block_copy(aBlock);
    v17 = v12;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4308ABC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C56640(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v11, v6, v16);
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v18);
  }
}

double sub_1A4301B30()
{
  if (qword_1EB1B6DD0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();

  sub_1A43026A4(v1, sub_1A4308140, v2, sub_1A4308148, v3);

  KeyPath = swift_getKeyPath();
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v0 + 416))(v5);

  return result;
}

void sub_1A4301CF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A52450F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == *MEMORY[0x1E69C13F8])
    {
      (*(v4 + 96))(v6, v3);
      if (v8[10] == *v6)
      {
        v8[10] = *v6;
LABEL_11:

        return;
      }

      goto LABEL_19;
    }

    if (v9 == *MEMORY[0x1E69C1400])
    {
      if (v8[10] == 0.0)
      {
        v8[10] = 0.0;
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (v9 == *MEMORY[0x1E69C13F0])
    {
      if (v8[10] == 1.0)
      {
        v8[10] = 1.0;
        goto LABEL_11;
      }

LABEL_19:
      KeyPath = swift_getKeyPath();
      v15.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v8 + 416))(v15);

      return;
    }

    if (v9 == *MEMORY[0x1E69C13E8])
    {
      if (qword_1EB1B6E00 != -1)
      {
        swift_once();
      }

      v10 = sub_1A5246F24();
      __swift_project_value_buffer(v10, qword_1EB1B6E08);
      v11 = sub_1A5246F04();
      v12 = sub_1A524D244();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "Error occurred when generating scene in AlchemistService.", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }
    }

    else
    {
      sub_1A524E6E4();
      __break(1u);
    }
  }
}

double sub_1A4302198(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A5244304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1A4300E18(v9, v10);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *(&v13 - 2) = v8;
    *(&v13 - 1) = 0;
    (*(*v8 + 416))(v12);

    sub_1A5244384();
    sub_1A5244374();
    (*(v3 + 104))(v5, *MEMORY[0x1E69C2E40], v2);
    sub_1A5244364();
  }

  return result;
}

double sub_1A4302378()
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2];
  KeyPath = swift_getKeyPath();
  (*(*v0 + 408))(KeyPath);

  v6 = v0[6];
  if (v6)
  {
    v7 = qword_1EB1B6DD0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB1B6DD8;
    v9 = sub_1A524CCB4();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v6;

    sub_1A3D4D930(0, 0, v3, &unk_1A532F168, v10);

    v11 = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
    *&v13[-16] = v0;
    *&v13[-8] = 0;
    (*(*v0 + 416))(v12);
  }

  return result;
}

unint64_t sub_1A43025FC()
{
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = MEMORY[0x1E69E7CC0];
  v0[15] = sub_1A4307EE0(v1);
  result = sub_1A4307FCC(v1);
  v0[16] = result;
  qword_1EB1B6DD8 = v0;
  return result;
}

uint64_t sub_1A430265C()
{

  return swift_deallocClassInstance();
}

void *sub_1A43026A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v13 = qword_1EB1B6DE0;
  v14 = a1;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB1B6DE8;
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v12;
  v17 = *(v15 + 16);
  MEMORY[0x1EEE9AC00](v16);

  os_unfair_lock_lock((v17 + 24));
  sub_1A4308C10((v17 + 16), &v19);
  os_unfair_lock_unlock((v17 + 24));

  return v12;
}

uint64_t sub_1A4302810(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A430297C(a2);
}

uint64_t sub_1A43028AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43028CC, a4, 0);
}

uint64_t sub_1A43028CC()
{
  v1.n128_f64[0] = sub_1A4305624(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A430297C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[13] = swift_task_alloc();
  v3 = sub_1A52450C4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_1A5245104();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_1A5246E54();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4302B60, v1, 0);
}

uint64_t sub_1A4302B60()
{
  if (qword_1EB1B6E20 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246E94();
  __swift_project_value_buffer(v1, qword_1EB1B6E28);
  sub_1A5246E44();
  v2 = sub_1A5246E84();
  v3 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v2, v3, v5, "Latency", "", v4, 2u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[20];
  v9 = v0[21];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[11];

  (*(v9 + 16))(v6, v7, v8);
  sub_1A5246ED4();
  swift_allocObject();
  v0[24] = sub_1A5246EC4();
  (*(v9 + 8))(v7, v8);
  v14 = *(v13 + 16);
  v0[25] = v14;
  (*(v11 + 104))(v10, *MEMORY[0x1E69C13D8], v12);
  sub_1A52450E4();
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1A4302DB0;

  return MEMORY[0x1EEE2A2A8](v14, 0, 0);
}

uint64_t sub_1A4302DB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {

    v6 = sub_1A43037DC;
  }

  else
  {
    v6 = sub_1A4302EF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

void sub_1A4302EF0()
{
  v79 = v0;
  v1 = *(v0 + 216);
  if (v1)
  {
    if (qword_1EB1B6E00 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 200);
    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1B6E08);
    v4 = v2;
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 200);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v78[0] = swift_slowAlloc();
      *v9 = 136446210;
      v10 = [v8 uuid];

      if (v10)
      {
        v11 = sub_1A524C674();
        v13 = v12;

        sub_1A3C2EF94(v11, v13, v78);
      }

      goto LABEL_39;
    }

    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 136);
    v31 = *(v0 + 104);
    v32 = *(v0 + 88);
    sub_1A5246BC4();
    swift_allocObject();
    v33 = v1;
    v34 = sub_1A5246BA4();
    v35 = sub_1A524CCB4();
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    sub_1A524CC54();

    v36 = sub_1A524CC44();
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v32;
    v37[5] = v34;
    sub_1A3D4D930(0, 0, v31, &unk_1A532F308, v37);

    (*(v29 + 8))(v28, v30);
    v39 = 0;
    goto LABEL_14;
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 96);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = *(v16 + 120);
  v18 = v78[0];
  *(v16 + 120) = 0x8000000000000000;
  v19 = sub_1A4307020(v15);
  v21 = v18[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (!v23)
  {
    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = v19;
        sub_1A4307A50();
        v19 = v76;
        v18 = v78[0];
        *(v16 + 120) = v78[0];
        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v26 = *(v0 + 200);
      sub_1A430739C(v24, isUniquelyReferenced_nonNull_native);
      v18 = v78[0];
      v19 = sub_1A4307020(v26);
      if ((v25 & 1) != (v27 & 1))
      {
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);

        sub_1A524EB84();
        return;
      }
    }

    *(v16 + 120) = v18;
    if (v25)
    {
      goto LABEL_21;
    }

LABEL_19:
    v41 = *(v0 + 200);
    v18[(v19 >> 6) + 8] |= 1 << v19;
    *(v18[6] + 8 * v19) = v41;
    *(v18[7] + 8 * v19) = MEMORY[0x1E69E7CC0];
    v42 = v18[2];
    v23 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v23)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v44 = v19;
    v45 = *(v0 + 200);
    v18[2] = v43;
    v46 = v45;
    v19 = v44;
LABEL_21:
    v47 = (v18[7] + 8 * v19);

    MEMORY[0x1A5907D70](v48);
    if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  sub_1A524CA74();
LABEL_22:
  v49 = *(v0 + 96);
  sub_1A524CAE4();
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v49 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 200);
  v51 = sub_1A5246F24();
  __swift_project_value_buffer(v51, qword_1EB1B6E08);
  v52 = v50;
  v53 = sub_1A5246F04();
  v54 = sub_1A524D264();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 200);
  if (v55)
  {
    v57 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v57 = 136446210;
    v58 = [v56 uuid];

    if (v58)
    {
      v59 = sub_1A524C674();
      v61 = v60;

      sub_1A3C2EF94(v59, v61, v78);
    }

    goto LABEL_40;
  }

  v62 = qword_1EB1B6DF0;
  v63 = *(v0 + 200);
  if (v62 == -1)
  {
    v64 = v63;
  }

  else
  {
    swift_once();
    v64 = *(v0 + 200);
  }

  v65 = qword_1EB1B6DF8;
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = v64;
  v68 = *(v65 + 16);
  v69 = swift_task_alloc();
  *(v69 + 16) = &unk_1A532F2F8;
  *(v69 + 24) = v67;
  v70 = v64;

  os_unfair_lock_lock((v68 + 24));
  sub_1A4308764((v68 + 16), v78);
  os_unfair_lock_unlock((v68 + 24));
  if (!v14)
  {
    v71 = *(v0 + 200);
    v72 = *(v0 + 144);
    v77 = *(v0 + 152);
    v73 = *(v0 + 136);

    v74 = v78[0];

    swift_beginAccess();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = *(v49 + 128);
    *(v49 + 128) = 0x8000000000000000;
    sub_1A4307600(v74, v71, v75);

    *(v49 + 128) = v78[0];
    swift_endAccess();
    (*(v72 + 8))(v77, v73);
    v39 = sub_1A3EBB02C;
LABEL_14:
    sub_1A4303E44();

    sub_1A3C33378(v39, 0);

    v40 = *(v0 + 8);

    v40();
  }
}

void sub_1A43037DC()
{
  v53 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = *(v2 + 120);
  v4 = v52[0];
  *(v2 + 120) = 0x8000000000000000;
  v5 = sub_1A4307020(v1);
  v7 = v4[2];
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (!v9)
  {
    v11 = v6;
    if (v4[3] >= v10)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = v5;
        sub_1A4307A50();
        v5 = v50;
        v4 = v52[0];
        *(v2 + 120) = v52[0];
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v12 = *(v0 + 200);
      sub_1A430739C(v10, isUniquelyReferenced_nonNull_native);
      v4 = v52[0];
      v5 = sub_1A4307020(v12);
      if ((v11 & 1) != (v13 & 1))
      {
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);

        sub_1A524EB84();
        return;
      }
    }

    *(v2 + 120) = v4;
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_9:
    v14 = *(v0 + 200);
    v4[(v5 >> 6) + 8] |= 1 << v5;
    *(v4[6] + 8 * v5) = v14;
    *(v4[7] + 8 * v5) = MEMORY[0x1E69E7CC0];
    v15 = v4[2];
    v9 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v9)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v17 = *(v0 + 200);
    v4[2] = v16;
    v18 = v5;
    v19 = v17;
    v5 = v18;
LABEL_11:
    v20 = (v4[7] + 8 * v5);

    MEMORY[0x1A5907D70](v21);
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  sub_1A524CA74();
LABEL_12:
  v22 = *(v0 + 96);
  sub_1A524CAE4();
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v22 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 200);
  v24 = sub_1A5246F24();
  __swift_project_value_buffer(v24, qword_1EB1B6E08);
  v25 = v23;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D264();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 200);
  if (v28)
  {
    v30 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v30 = 136446210;
    v31 = [v29 uuid];

    if (v31)
    {
      v32 = sub_1A524C674();
      v34 = v33;

      sub_1A3C2EF94(v32, v34, v52);
    }

    goto LABEL_30;
  }

  v35 = qword_1EB1B6DF0;
  v36 = *(v0 + 200);
  if (v35 == -1)
  {
    v37 = v36;
  }

  else
  {
    swift_once();
    v37 = *(v0 + 200);
  }

  v38 = qword_1EB1B6DF8;
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v37;
  v41 = *(v38 + 16);
  v42 = swift_task_alloc();
  *(v42 + 16) = &unk_1A532F2F8;
  *(v42 + 24) = v40;
  v43 = v37;

  os_unfair_lock_lock((v41 + 24));
  sub_1A4308764((v41 + 16), v52);
  os_unfair_lock_unlock((v41 + 24));
  v44 = *(v0 + 200);
  v45 = *(v0 + 144);
  v51 = *(v0 + 152);
  v46 = *(v0 + 136);

  v47 = v52[0];

  swift_beginAccess();
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = *(v22 + 128);
  *(v22 + 128) = 0x8000000000000000;
  sub_1A4307600(v47, v44, v48);

  *(v22 + 128) = v52[0];
  swift_endAccess();
  (*(v45 + 8))(v51, v46);
  sub_1A4303E44();

  sub_1A3C33378(sub_1A3EBB02C, 0);

  v49 = *(v0 + 8);

  v49();
}

uint64_t sub_1A4303E44()
{
  v0 = sub_1A5246EA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1B6E20 != -1)
  {
    swift_once();
  }

  v8 = sub_1A5246E94();
  __swift_project_value_buffer(v8, qword_1EB1B6E28);
  v9 = sub_1A5246E84();
  sub_1A5246EB4();
  v10 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, v10, v13, "Latency", v11, v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43040D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4304168, v7, v6);
}

uint64_t sub_1A4304168()
{
  v1 = v0[3];
  v2 = v0[2];

  (*(v2 + 40))(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A43041DC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1A524CC04();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[11] = swift_task_alloc();
  v4 = sub_1A52450C4();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1A5245104();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43043B4, 0, 0);
}

uint64_t sub_1A43043B4()
{
  v38 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    if ((sub_1A524CDC4() & 1) == 0)
    {
      if (qword_1EB1B6E00 != -1)
      {
        swift_once();
      }

      v20 = v0[7];
      v21 = sub_1A5246F24();
      v0[19] = __swift_project_value_buffer(v21, qword_1EB1B6E08);
      v22 = v20;
      v23 = sub_1A5246F04();
      v24 = sub_1A524D264();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v0[7];
      if (!v25)
      {

        v32 = v0[7];
        (*(v0[13] + 104))(v0[14], *MEMORY[0x1E69C13D8], v0[12]);
        sub_1A52450E4();
        v33 = swift_allocObject();
        v0[20] = v33;
        swift_weakInit();
        v34 = swift_allocObject();
        v0[21] = v34;
        *(v34 + 16) = v33;
        *(v34 + 24) = v32;
        v35 = v32;

        v36 = swift_task_alloc();
        v0[22] = v36;
        *v36 = v0;
        v36[1] = sub_1A4304884;
        v12 = sub_1A4308918;
        v11 = v0[7];
        v13 = v34;
        v14 = 1;

        return MEMORY[0x1EEE2A288](v11, v12, v13, v14);
      }

      v27 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v27 = 136446210;
      v28 = [v26 uuid];

      if (v28)
      {
        v29 = sub_1A524C674();
        v31 = v30;

        sub_1A3C2EF94(v29, v31, &v37);
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE2A288](v11, v12, v13, v14);
    }
  }

  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_1A5246F24();
  __swift_project_value_buffer(v3, qword_1EB1B6E08);
  v4 = v2;
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v9 = 136446210;
    v10 = [v8 uuid];

    if (v10)
    {
      v15 = sub_1A524C674();
      v17 = v16;

      sub_1A3C2EF94(v15, v17, &v37);
    }

    __break(1u);
    goto LABEL_21;
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A4304884(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_1A4304CB8;
  }

  else
  {

    v4 = sub_1A43049D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1A43049D0()
{
  v27 = v0;
  v1 = *(v0 + 56);
  v2 = sub_1A5246F04();
  v3 = sub_1A524D264();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136446210;
    v7 = [v5 uuid];

    if (v7)
    {
      v8 = sub_1A524C674();
      v10 = v9;

      sub_1A3C2EF94(v8, v10, &v26);
    }

    __break(1u);
  }

  else
  {

    v11 = *(v0 + 184);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_1A5246BC4();
    swift_allocObject();
    v18 = v11;
    v19 = sub_1A5246BA4();
    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_1A524CC54();
    swift_retain_n();
    v21 = v17;

    v22 = sub_1A524CC44();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v13;
    v23[5] = v21;
    v23[6] = v19;
    sub_1A3D4D930(0, 0, v16, &unk_1A532F328, v23);

    (*(v15 + 8))(v12, v14);

    v25 = *(v0 + 8);

    v25();
  }
}

void sub_1A4304CB8()
{
  v48 = v0;
  v2 = *(v0 + 192);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  *(v0 + 40) = v2;
  v3 = v2;
  sub_1A3DBD9A0();
  v4 = swift_dynamicCast();
  v5 = *(v0 + 192);
  v6 = *(v0 + 56);
  if (v4)
  {

    v7 = v6;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v12 = 136446210;
      v13 = [v11 uuid];

      if (v13)
      {
        v14 = sub_1A524C674();
        v16 = v15;

        sub_1A3C2EF94(v14, v16, &v47);
      }

      __break(1u);
LABEL_14:

      __break(1u);
      return;
    }

    v28 = *(v0 + 144);
    v29 = *(v0 + 80);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v33 = *(v0 + 56);
    v34 = sub_1A524CCB4();
    (*(*(v34 - 8) + 56))(v30, 1, 1, v34);
    sub_1A524CC54();
    v35 = v33;

    v36 = sub_1A524CC44();
    v37 = swift_allocObject();
    v38 = MEMORY[0x1E69E85E0];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v28;
    v37[5] = v35;
    v37[6] = 0;
    sub_1A3D4D930(0, 0, v30, &unk_1A532F320, v37);

    (*(v32 + 8))(v29, v31);
    v39 = *(v0 + 40);
  }

  else
  {

    v17 = v6;
    v18 = v5;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 56);
      v22 = swift_slowAlloc();
      swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v22 = 136446466;
      v23 = [v21 uuid];
      v13 = *(v0 + 192);
      v1 = *(v0 + 56);
      if (v23)
      {
        v24 = v23;

        v25 = sub_1A524C674();
        v27 = v26;

        sub_1A3C2EF94(v25, v27, &v47);
      }

      goto LABEL_14;
    }

    v40 = *(v0 + 192);
    v41 = *(v0 + 56);

    v42 = *(v0 + 192);
    v43 = *(v0 + 56);
    v44 = sub_1A5240B74();
    v45 = v44;
    sub_1A4305FA4(v44, v43);

    v39 = v42;
  }

  v46 = *(v0 + 8);

  v46();
}

double sub_1A43051B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A52450F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    sub_1A524CC54();

    v16 = a3;
    v17 = sub_1A524CC44();
    v18 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 2) = v17;
    *(v19 + 3) = v20;
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    (*(v6 + 32))(&v19[v18], v8, v5);
    sub_1A3D4D930(0, 0, v11, &unk_1A532F338, v19);
  }

  return result;
}

void sub_1A430541C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A4307600(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
  }

  else
  {
    v6 = sub_1A4307020(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v14 = *v3;
      if (!v9)
      {
        sub_1A43078F8();
        v10 = v14;
      }

      sub_1A3FB731C(v8, v10, v11);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A4305520(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A430777C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
  }

  else
  {
    v6 = sub_1A4307020(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v14 = *v3;
      if (!v9)
      {
        sub_1A4307A50();
        v10 = v14;
      }

      sub_1A3FB731C(v8, v10, v11);

      *v3 = v10;
    }

    else
    {
    }
  }
}

double sub_1A4305624(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1A430292C(v11);
  v6 = sub_1A430586C(v10, v3);
  if (*v7)
  {
    sub_1A3C56640(0, &qword_1EB137C28, v5, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request, MEMORY[0x1E69E62F8]);
    Array.remove(where:)(sub_1A4059F98, a1, v8);
  }

  (v6)(v10, 0);
  (v4)(v11, 0);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (*(*(v1 + 128) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void (*sub_1A430586C(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1A4307BA8(v4, a2);
  return sub_1A3DB3FF0;
}

uint64_t sub_1A43058E4(void *a1)
{
  swift_beginAccess();
  if (*(*(v1 + 120) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A43059E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v6[8] = sub_1A524CC54();
  v6[9] = sub_1A524CC44();

  return MEMORY[0x1EEE6DFA0](sub_1A4305A64, a4, 0);
}

void sub_1A4305A64()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 120);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4305B0C()
{
  v1 = v0[10];

  if (*(v1 + 16))
  {
    sub_1A4307020(v0[6]);
    if (v2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v3 = v0[1];

  v3();
}

uint64_t sub_1A4305C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1A52450F4();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_1A524CC54();
  v6[9] = sub_1A524CC44();

  return MEMORY[0x1EEE6DFA0](sub_1A4305D50, a4, 0);
}

uint64_t sub_1A4305D50()
{
  *(v0 + 80) = sub_1A43058E4(*(v0 + 24));
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4305DE4, v2, v1);
}

void sub_1A4305DE4()
{
  v1 = v0[10];

  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = v0[6];
  v16 = v1 & 0xC000000000000001;
  v13 = v0[10] + 32;
  v15 = *MEMORY[0x1E69C13F0];
  v14 = (v4 + 104);
  v5 = (v4 + 8);
  do
  {
    if (v16)
    {
      v6 = MEMORY[0x1A59097F0](v3, v0[10]);
    }

    else
    {
      v6 = *(v13 + 8 * v3);
    }

    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    ++v3;
    v10 = *(v6 + 40);

    v10(v8);

    v11 = *(v6 + 24);
    (*v14)(v7, v15, v9);
    v11(v7);
    (*v5)(v7, v9);
  }

  while (v2 != v3);
LABEL_10:

  v12 = v0[1];

  v12();
}

double sub_1A4305FA4(void *a1, void *a2)
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1A524CCB4();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_1A524CC54();

  v10 = a2;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v2;
  v12[5] = v10;
  v12[6] = 0;
  sub_1A3D4D930(0, 0, v7, &unk_1A532F2D8, v12);

  v9(v7, 1, 1, v8);
  v14 = a1;
  v15 = v10;
  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  v17[5] = a1;
  sub_1A3D4D930(0, 0, v7, &unk_1A532F2E8, v17);

  return result;
}

uint64_t sub_1A4306198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1A5244304();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A430628C, v8, v7);
}

uint64_t sub_1A430628C()
{
  v1 = v0[2];

  v2 = [v1 uuid];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() defaultManager];
    v5 = [v4 willBeginLoadOperationWithItemIdentifier_];

    v6 = v5;
    v7 = v5;
    if (!v5)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();

      sub_1A524C674();
      v6 = sub_1A524C634();
    }

    v8 = v0[3];
    v9 = v5;
    [v4 didUpdateLoadOperationWithTrackingID:v7 withProgress:0.0];

    if (v8)
    {
      v10 = sub_1A5240B74();
    }

    else
    {
      v10 = 0;
    }

    [v4 didCompleteLoadOperationWithTrackingID:v6 withSuccess:0 error:v10 isFromExplicitUserAction:1];

    sub_1A5244384();
    sub_1A5244374();
    v11 = sub_1A5244334();

    if (v11)
    {
      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[4];
      sub_1A5244374();
      (*(v13 + 104))(v12, *MEMORY[0x1E69C2E48], v14);
      sub_1A5244364();
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A43064A4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.SerialTaskQueue();
  v3 = swift_allocObject();
  sub_1A40C78AC(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v3 + 16) = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1A43064FC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1A4306550@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1A3C56640(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *a1;
  sub_1A524CC74();
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a2;
  v13[6] = a3;

  v14 = sub_1A3D4D930(0, 0, v10, &unk_1A532F318, v13);
  *a1 = v14;
  *a4 = v14;

  return result;
}

uint64_t sub_1A43066B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    v8 = swift_task_alloc();
    v6[4] = v8;
    *v8 = v6;
    v8[1] = sub_1A430683C;
    v9 = MEMORY[0x1E69E73E0];
    v10 = MEMORY[0x1E69E7410];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v6 + 6, a4, v11, v9, v10);
  }

  else
  {
    v14 = (a5 + *a5);
    v12 = swift_task_alloc();
    v6[5] = v12;
    *v12 = v6;
    v12[1] = sub_1A4306A24;

    return v14();
  }
}

uint64_t sub_1A430683C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4306938, 0, 0);
}

uint64_t sub_1A4306938()
{
  v3 = (*(v0 + 16) + **(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1A4306A24;

  return v3();
}

uint64_t sub_1A4306A24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A4306C58()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore45PhotoKitSpatialPhotoPresentationContentSource___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A4306E80()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6E08);
  __swift_project_value_buffer(v0, qword_1EB1B6E08);
  sub_1A5246EF4();
}

uint64_t sub_1A4306EE4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1B6E28);
  __swift_project_value_buffer(v4, qword_1EB1B6E28);
  if (qword_1EB1B6E00 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1B6E08);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

unint64_t sub_1A4307020(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A4307064(a1, v2);
}

unint64_t sub_1A4307064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A4307138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A430851C(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A430739C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4308610(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v23 = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4307600(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A4307138(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1A43078F8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1A430777C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A4307020(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A430739C(v13, a3 & 1);
      v8 = sub_1A4307020(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4307A50();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1A43078F8()
{
  v1 = v0;
  sub_1A430851C(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A4307A50()
{
  v1 = v0;
  sub_1A4308610(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 48) + 8 * v16);
        v18 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + 8 * v16) = v17;
        *(*(v4 + 56) + 8 * v16) = v18;
        v19 = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void (*sub_1A4307BA8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1A3DD766C(v5);
  v5[9] = sub_1A4307C4C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1A3DD735C;
}

void (*sub_1A4307C4C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1A4307020(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1A4307A50();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1A430739C(v16, a3 & 1);
    v11 = sub_1A4307020(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1A4307DA4;
}

void sub_1A4307DA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*a1)[4])
    {
LABEL_9:
      *(v6[7] + 8 * v5) = v3;
      goto LABEL_14;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];

      sub_1A3FB731C(v10, v11, v12);
    }

LABEL_14:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = v2[3];
  v6 = *v2[2];
  if (v4)
  {
    goto LABEL_9;
  }

  v13 = v2[1];
  v6[(v5 >> 6) + 8] |= 1 << v5;
  *(v6[6] + 8 * v5) = v13;
  *(v6[7] + 8 * v5) = v3;
  v14 = v6[2];
  v9 = __OFADD__(v14, 1);
  v4 = v14 + 1;
  if (!v9)
  {
LABEL_13:
    v15 = v2[1];
    v6[2] = v4;
    v16 = v15;
    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_1A4307EE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4308610(0);
    sub_1A524E794();

    v2 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A4307FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A430851C(0);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A4307020(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A43080B8(void *a1)
{
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1A5241604();
  *(v1 + 16) = a1;
  v3 = a1;
  sub_1A4301620();
  (*(*v1 + 392))();
  return v1;
}

uint64_t sub_1A4308168()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43028AC(v4, v5, v6, v2, v3);
}

uint64_t type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource(uint64_t a1)
{
  result = qword_1EB1B6F70;
  if (!qword_1EB1B6F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A430824C(uint64_t a1)
{
  result = sub_1A4308ABC(&qword_1EB137C10, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource, &unk_1A532F18C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A43082AC(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A43083DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4305C70(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A4308484()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4306198(v4, v5, v6, v2, v3);
}

void sub_1A430851C(uint64_t a1)
{
  if (!qword_1EB137C18)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    sub_1A3CB59B4();
    sub_1A43085A8();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137C18);
    }
  }
}

unint64_t sub_1A43085A8()
{
  result = qword_1EB1205D0;
  if (!qword_1EB1205D0)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1205D0);
  }

  return result;
}

void sub_1A4308610(uint64_t a1)
{
  if (!qword_1EB137C20)
  {
    sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    sub_1A3C56640(255, &qword_1EB137C28, v1, type metadata accessor for PhotoKitSpatialPhotoPresentationContentSource.RequestManager.Request, MEMORY[0x1E69E62F8]);
    sub_1A43085A8();
    v2 = sub_1A524E7A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB137C20);
    }
  }
}

uint64_t sub_1A43086CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43041DC(v2, v3);
}

uint64_t objectdestroy_9Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A43087D8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43040D0(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4308870()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A43066B8(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4308970()
{
  v2 = *(sub_1A52450F4() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A43059E0(v6, v7, v8, v4, v5, v0 + v3);
}

double sub_1A4308A54()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = v1;
    sub_1A430109C(v1);
  }

  return result;
}

uint64_t sub_1A4308ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4308B04()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4302810(v2, v3);
}

void sub_1A4308B9C()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_1A4308C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248CD4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A4308C80@<X0>(uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v35 = a3;
  v8 = sub_1A5243624();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AsyncPersonImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PersonFaceView(0);
  v16 = a5 + *(v15 + 20);
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = a5 + *(v15 + 24);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    (*(v9 + 16))(v11, a2, v8);
    swift_unknownObjectRetain();
    sub_1A46A250C(v19, 0, a4 & 1, 0, v11, v35, v14, 0.0);
    (*(v9 + 8))(a2, v8);
    *a5 = v19;
    v20 = type metadata accessor for PersonFaceView.Person(0);
    sub_1A430A9B0(v14, a5 + *(v20 + 20), type metadata accessor for AsyncPersonImageConfiguration);
    type metadata accessor for PersonFaceView.BackingObject(0);
  }

  else
  {
    v21 = a2;
    v22 = v35;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      (*(v9 + 16))(v11, v21, v8);
      swift_unknownObjectRetain();
      sub_1A46A250C(v24, 1, a4 & 1, 0, v11, v22, v14, 0.0);
      (*(v9 + 8))(v21, v8);
      *a5 = v24;
      v25 = type metadata accessor for PersonFaceView.Face(0);
      sub_1A430A9B0(v14, a5 + *(v25 + 20), type metadata accessor for AsyncPersonImageConfiguration);
      type metadata accessor for PersonFaceView.BackingObject(0);
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      v27 = v22;
      if (v26)
      {
        v28 = v26;
        swift_unknownObjectRetain_n();
        PXDisplayCollectionDetailedCountsMake();
        v30 = v29;
        v32 = v31;
        swift_unknownObjectRelease();

        (*(v9 + 8))(v21, v8);
        *a5 = v28;
        a5[1] = v30;
        a5[2] = v32;
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v9 + 8))(v21, v8);
      }

      type metadata accessor for PersonFaceView.BackingObject(0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43090F4@<X0>(uint64_t a1@<X8>)
{
  v148 = a1;
  v131 = sub_1A52420E4();
  v120 = *(v131 - 8);
  v2 = MEMORY[0x1EEE9AC00](v131);
  v119 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430A4E8(0, &qword_1EB137C30, MEMORY[0x1E697F948], v2);
  v126 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v118 - v6;
  sub_1A430A4E8(0, &qword_1EB137C38, MEMORY[0x1E697F960], v5);
  v147 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v130 = &v118 - v9;
  sub_1A430A624(0, &qword_1EB124F08, sub_1A430A494, &type metadata for AsyncContactImageProvider);
  v129 = v10;
  v122 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v118 - v11;
  v118 = type metadata accessor for PersonFaceView.Face(0);
  v12 = MEMORY[0x1EEE9AC00](v118);
  v140 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E697F948];
  sub_1A430A57C(0, &qword_1EB137C40, MEMORY[0x1E697F948], v12);
  v144 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v118 - v16;
  sub_1A430A6D8(0, &qword_1EB137C50, v14);
  v132 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v118 - v18;
  sub_1A430A6D8(0, &qword_1EB137C48, MEMORY[0x1E697F960]);
  v145 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v118 - v20;
  v21 = sub_1A52429A4();
  v141 = *(v21 - 8);
  v142 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430A624(0, &qword_1EB124F18, sub_1A430A684, &type metadata for AsyncPersonImageProvider);
  v135 = *(v23 - 8);
  v136 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v134 = &v118 - v24;
  v125 = sub_1A5243624();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A5249234();
  v138 = *(v26 - 1);
  v139 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AsyncPersonImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v128 = &v118 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v123 = &v118 - v35;
  v36 = type metadata accessor for PersonFaceView.Person(0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PersonFaceView.BackingObject(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430AA18(v1, v41, type metadata accessor for PersonFaceView.BackingObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v47 = *(v41 + 1);
      v140 = *v41;
      v48 = v1 + *(type metadata accessor for PersonFaceView(0) + 20);
      v49 = *v48;
      if (*(v48 + 8) != 1)
      {

        v85 = sub_1A524D254();
        v86 = sub_1A524A014();
        sub_1A5246DF4(v85, &dword_1A3C1C000, v86, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v49, 0);
        (*(v138 + 8))(v28, v139);
      }

      v139 = v47;
      PXDisplayCollectionDetailedCountsMake();
      v88 = v87;
      v90 = v89;
      PXDisplayCollectionDetailedCountsMake();
      v149 = *&v88;
      v150 = v90;
      (*(v141 + 104))(v143, *MEMORY[0x1E69C2050], v142);
      sub_1A430A494();
      v91 = v88;
      v92 = v121;
      sub_1A5242594();
      v93 = v122;
      v94 = v129;
      (*(v122 + 16))(v7, v92, v129);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494, &type metadata for AsyncContactImageProvider);
      sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10], MEMORY[0x1E69C1D08]);
      v95 = v130;
      sub_1A5249744();
      v96 = MEMORY[0x1E697F960];
      sub_1A430AA80(v95, v146, &qword_1EB137C38, MEMORY[0x1E697F960], sub_1A430A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8(v97);
      sub_1A5249744();

      sub_1A430AAF0(v95, &qword_1EB137C38, v96, sub_1A430A4E8);
      return (*(v93 + 8))(v92, v94);
    }

    else
    {
      v54 = v119;
      sub_1A52420D4();
      v55 = v120;
      v56 = v131;
      (*(v120 + 16))(v7, v54, v131);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494, &type metadata for AsyncContactImageProvider);
      sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10], MEMORY[0x1E69C1D08]);
      v57 = v130;
      sub_1A5249744();
      v58 = MEMORY[0x1E697F960];
      sub_1A430AA80(v57, v146, &qword_1EB137C38, MEMORY[0x1E697F960], sub_1A430A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8(v59);
      sub_1A5249744();
      sub_1A430AAF0(v57, &qword_1EB137C38, v58, sub_1A430A4E8);
      return (*(v55 + 8))(v54, v56);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A430A9B0(v41, v140, type metadata accessor for PersonFaceView.Face);
      v50 = type metadata accessor for PersonFaceView(0);
      v51 = v1 + *(v50 + 20);
      v52 = *v51;
      if (*(v51 + 8) == 1)
      {
        v53 = *v51;
      }

      else
      {

        v98 = sub_1A524D254();
        v99 = sub_1A524A014();
        sub_1A5246DF4(v98, &dword_1A3C1C000, v99, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v52, 0);
        (*(v138 + 8))(v28, v139);
        v53 = v149;
      }

      v100 = v1 + *(v50 + 24);
      v101 = *v100;
      if (*(v100 + 8) != 1)
      {

        v102 = sub_1A524D254();
        v103 = sub_1A524A014();
        sub_1A5246DF4(v102, &dword_1A3C1C000, v103, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v101, 0);
        (*(v138 + 8))(v28, v139);
        LOBYTE(v101) = LOBYTE(v149);
      }

      v104 = &v140[*(v118 + 20)];
      v105 = *v104;
      v106 = v104[8];
      v107 = v104[9];
      v108 = v127;
      (*(v124 + 16))(v127, &v104[*(v29 + 28)], v125);
      v109 = *&v104[*(v29 + 36)];
      v110 = v105;
      v111 = v109;
      sub_1A46A250C(v105, v106, v107, v101 & 1, v108, v109, v31, v53);
      PXDisplayCollectionDetailedCountsMake();
      sub_1A430AA18(v31, v128, type metadata accessor for AsyncPersonImageConfiguration);
      (*(v141 + 104))(v143, *MEMORY[0x1E69C2050], v142);
      sub_1A430A684();
      v112 = v134;
      sub_1A5242594();
      v114 = v135;
      v113 = v136;
      (*(v135 + 16))(v133, v112, v136);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684, &type metadata for AsyncPersonImageProvider);
      v115 = v137;
      sub_1A5249744();
      v116 = MEMORY[0x1E697F960];
      sub_1A430AA80(v115, v146, &qword_1EB137C48, MEMORY[0x1E697F960], sub_1A430A6D8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8(v117);
      sub_1A5249744();
      sub_1A430AAF0(v115, &qword_1EB137C48, v116, sub_1A430A6D8);
      (*(v114 + 8))(v112, v113);
      sub_1A430AB50(v31, type metadata accessor for AsyncPersonImageConfiguration);
      v83 = type metadata accessor for PersonFaceView.Face;
      v84 = v140;
    }

    else
    {
      sub_1A430A9B0(v41, v38, type metadata accessor for PersonFaceView.Person);
      v43 = type metadata accessor for PersonFaceView(0);
      v44 = v1 + *(v43 + 20);
      v45 = *v44;
      if (*(v44 + 8) == 1)
      {
        v46 = *v44;
      }

      else
      {

        v61 = sub_1A524D254();
        v62 = sub_1A524A014();
        sub_1A5246DF4(v61, &dword_1A3C1C000, v62, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v45, 0);
        (*(v138 + 8))(v28, v139);
        v46 = v149;
      }

      v63 = v1 + *(v43 + 24);
      v64 = *v63;
      if (*(v63 + 8) != 1)
      {

        v65 = sub_1A524D254();
        v66 = sub_1A524A014();
        sub_1A5246DF4(v65, &dword_1A3C1C000, v66, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v64, 0);
        (*(v138 + 8))(v28, v139);
        LOBYTE(v64) = LOBYTE(v149);
      }

      v67 = &v38[*(v36 + 20)];
      v68 = *v67;
      v69 = v67[8];
      v70 = v67[9];
      v71 = v127;
      (*(v124 + 16))(v127, &v67[*(v29 + 28)], v125);
      v72 = *&v67[*(v29 + 36)];
      v73 = v68;
      v74 = v72;
      v75 = v64 & 1;
      v76 = v123;
      sub_1A46A250C(v68, v69, v70, v75, v71, v72, v123, v46);
      PXDisplayCollectionDetailedCountsMake();
      sub_1A430AA18(v76, v128, type metadata accessor for AsyncPersonImageConfiguration);
      (*(v141 + 104))(v143, *MEMORY[0x1E69C2050], v142);
      sub_1A430A684();
      v77 = v134;
      sub_1A5242594();
      v79 = v135;
      v78 = v136;
      (*(v135 + 16))(v133, v77, v136);
      swift_storeEnumTagMultiPayload();
      sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684, &type metadata for AsyncPersonImageProvider);
      v80 = v137;
      sub_1A5249744();
      v81 = MEMORY[0x1E697F960];
      sub_1A430AA80(v80, v146, &qword_1EB137C48, MEMORY[0x1E697F960], sub_1A430A6D8);
      swift_storeEnumTagMultiPayload();
      sub_1A430A7A8();
      sub_1A430A8B8(v82);
      sub_1A5249744();
      sub_1A430AAF0(v80, &qword_1EB137C48, v81, sub_1A430A6D8);
      (*(v79 + 8))(v77, v78);
      sub_1A430AB50(v123, type metadata accessor for AsyncPersonImageConfiguration);
      v83 = type metadata accessor for PersonFaceView.Person;
      v84 = v38;
    }

    return sub_1A430AB50(v84, v83);
  }
}

unint64_t sub_1A430A494()
{
  result = qword_1EB1257D0;
  if (!qword_1EB1257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257D0);
  }

  return result;
}

void sub_1A430A4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A430A624(255, &qword_1EB124F08, sub_1A430A494, &type metadata for AsyncContactImageProvider);
    v8 = v7;
    v9 = sub_1A52420E4();
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A430A57C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A430A6D8(255, &qword_1EB137C48, MEMORY[0x1E697F960]);
    v8 = v7;
    sub_1A430A4E8(255, &qword_1EB137C38, MEMORY[0x1E697F960], v9);
    v11 = a3(a1, v8, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A430A624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1A52425B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A430A684()
{
  result = qword_1EB125838;
  if (!qword_1EB125838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125838);
  }

  return result;
}

void sub_1A430A6D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430A624(255, &qword_1EB124F18, sub_1A430A684, &type metadata for AsyncPersonImageProvider);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A430A760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A430A7A8()
{
  result = qword_1EB137C58;
  if (!qword_1EB137C58)
  {
    sub_1A430A6D8(255, &qword_1EB137C48, MEMORY[0x1E697F960]);
    sub_1A430A868(&qword_1EB124F20, &qword_1EB124F18, sub_1A430A684, &type metadata for AsyncPersonImageProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C58);
  }

  return result;
}

uint64_t sub_1A430A868(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A430A624(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A430A8B8(double a1)
{
  result = qword_1EB137C60;
  if (!qword_1EB137C60)
  {
    sub_1A430A4E8(255, &qword_1EB137C38, MEMORY[0x1E697F960], a1);
    sub_1A430A868(&qword_1EB124F10, &qword_1EB124F08, sub_1A430A494, &type metadata for AsyncContactImageProvider);
    sub_1A430A760(&qword_1EB124F88, MEMORY[0x1E69C1D10], MEMORY[0x1E69C1D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C60);
  }

  return result;
}

uint64_t sub_1A430A9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430AA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A430AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A430AB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A430ABB4(uint64_t a1)
{
  if (!qword_1EB137C68)
  {
    sub_1A430AC40(255, &qword_1EB1303E8, type metadata accessor for PersonFaceView, MEMORY[0x1E697F578]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137C68);
    }
  }
}

void sub_1A430AC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A430ACA4(uint64_t a1)
{
  if (!qword_1EB137C78)
  {
    sub_1A430AC40(255, &qword_1EB1303E8, type metadata accessor for PersonFaceView, MEMORY[0x1E697F578]);
    sub_1A4002124();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137C78);
    }
  }
}

unint64_t sub_1A430AD4C()
{
  result = qword_1EB137C80;
  if (!qword_1EB137C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C80);
  }

  return result;
}

double sub_1A430ADBC@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A430ABB4(0);
  v4 = a1 + *(v3 + 44);
  type metadata accessor for SyntheticPerson();
  v5 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v6 = type metadata accessor for PersonFaceView(0);
  v7 = v4 + *(v6 + 20);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v4 + *(v6 + 24);
  KeyPath = swift_getKeyPath();

  *v8 = KeyPath;
  *(v8 + 8) = 0;
  type metadata accessor for PersonFaceView.BackingObject(0);
  swift_storeEnumTagMultiPayload();
  sub_1A430AC40(0, &qword_1EB1303E8, type metadata accessor for PersonFaceView, MEMORY[0x1E697F578]);
  v11 = v4 + *(v10 + 36);
  *v11 = 0x3FF0000000000000;
  *(v11 + 8) = 0;
  LOBYTE(v5) = sub_1A524A064();
  sub_1A430AC40(0, &qword_1EB137C70, sub_1A430ACA4, MEMORY[0x1E697E5E0]);
  v13 = a1 + *(v12 + 36);
  *v13 = v5;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  return result;
}

uint64_t sub_1A430AF1C(uint64_t a1)
{
  v2 = sub_1A430B544();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A430AF68(uint64_t a1)
{
  v2 = sub_1A430B544();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A430AFDC(uint64_t a1)
{
  type metadata accessor for PersonFaceView.BackingObject(319);
  if (v1 <= 0x3F)
  {
    sub_1A430B098(319, &qword_1EB124830, MEMORY[0x1E69E7DE0]);
    if (v2 <= 0x3F)
    {
      sub_1A430B098(319, &qword_1EB1246E0, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A430B098(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1A5247E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A430B0F4(double a1)
{
  result = qword_1EB137C88;
  if (!qword_1EB137C88)
  {
    sub_1A430A57C(255, &qword_1EB137C90, MEMORY[0x1E697F960], a1);
    sub_1A430A7A8();
    sub_1A430A8B8(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C88);
  }

  return result;
}

unint64_t sub_1A430B190()
{
  result = qword_1EB137C98;
  if (!qword_1EB137C98)
  {
    sub_1A430AC40(255, &qword_1EB137C70, sub_1A430ACA4, MEMORY[0x1E697E5E0]);
    sub_1A430A760(&qword_1EB137CA0, sub_1A430ACA4, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137C98);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(unint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for AsyncPersonImageConfiguration(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_index_13Tm(void *result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AsyncPersonImageConfiguration(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A430B42C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  result = sub_1A3C52C70(319, a4, a5);
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for AsyncPersonImageConfiguration(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A430B4B8(uint64_t a1)
{
  result = type metadata accessor for PersonFaceView.Person(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PersonFaceView.Face(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A430B544()
{
  result = qword_1EB137CA8;
  if (!qword_1EB137CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137CA8);
  }

  return result;
}

void PXPhotosUIViewController.viewportDisplayingMedia(_:for:)(uint64_t *a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  if (v3)
  {
    v16 = v3;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = type metadata accessor for PhotosDynamicHeaderLayout(0, v12);
    sub_1A41FB558(v13);
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    CGRectGetWidth(v18);
    sub_1A430B700(0, v14);
    a1[3] = v15;
    a1[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1A524DB04();
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A430B700(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB120600)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB120600);
    }
  }
}

id PXPhotosUIViewController.coordinateSpace.getter()
{
  result = [v0 viewIfLoaded];
  if (!result)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A430B7EC(uint64_t *a1@<X8>)
{
  v3 = [*v1 viewIfLoaded];
  if (v3)
  {
    v16 = v3;
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = type metadata accessor for PhotosDynamicHeaderLayout(0, v12);
    sub_1A41FB558(v13);
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    CGRectGetWidth(v18);
    sub_1A430B700(0, v14);
    a1[3] = v15;
    a1[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_1A524DB04();
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

id sub_1A430B954()
{
  result = [*v0 viewIfLoaded];
  if (!result)
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A430B9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1A5243934();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1A430BEA0(0);
  v27 = *(v17 - 8);
  v28 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4189B78(v9);
  v20 = v9[65];
  sub_1A430E0B4(v9, type metadata accessor for TestNotificationPhotosItem);
  v29 = a2;
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1A5243904();
    }

    else
    {
      sub_1A52438D4();
    }
  }

  else
  {
    sub_1A5243914();
  }

  (*(v11 + 32))(v16, v13, v10);
  LOBYTE(v30) = 1;
  swift_retain_n();
  sub_1A524B954();
  sub_1A430DE98(0, &qword_1EB137CB8, MEMORY[0x1E697F960]);
  sub_1A5243544();
  sub_1A430C550();
  sub_1A430C748(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  sub_1A5242914();
  sub_1A4189B78(v6);
  v21 = v6[64];
  sub_1A430E0B4(v6, type metadata accessor for TestNotificationPhotosItem);
  v33 = v21;
  v32 = 2;
  sub_1A42971A0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v34 == v30 && v35 == v31)
  {
  }

  else
  {
    v22 = sub_1A524EAB4();

    if ((v22 & 1) == 0)
    {
      v23 = 0;
      a1 = 0;
      goto LABEL_12;
    }
  }

  v23 = sub_1A430D624;
LABEL_12:
  sub_1A430C748(&qword_1EB137D80, sub_1A430BEA0, MEMORY[0x1E69C1FF8]);
  v24 = v28;
  sub_1A524A714();
  sub_1A3C784D4(v23, a1);
  return (*(v27 + 8))(v19, v24);
}

void sub_1A430BEA0(uint64_t a1)
{
  if (!qword_1EB137CB0)
  {
    sub_1A430DE98(255, &qword_1EB137CB8, MEMORY[0x1E697F960]);
    sub_1A5243544();
    sub_1A430C550();
    sub_1A430C748(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
    v1 = sub_1A5242904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137CB0);
    }
  }
}

void sub_1A430BFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430C0A4(255, &qword_1EB137CC8, MEMORY[0x1E69817E8]);
    v7 = v6;
    sub_1A430C02C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430C02C(uint64_t a1)
{
  if (!qword_1EB137CD0)
  {
    sub_1A430C0A4(255, &qword_1EB137CD8, MEMORY[0x1E6981EF8]);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137CD0);
    }
  }
}

void sub_1A430C0A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1A3F980B8();
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A430C104(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A430DE34(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A430C3D0(a5, a3, a4);
    v9 = sub_1A524B8B4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A430C1A4(uint64_t a1)
{
  if (!qword_1EB137CF0)
  {
    sub_1A430C214(255);
    sub_1A430C434(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137CF0);
    }
  }
}

void sub_1A430C264(uint64_t a1)
{
  if (!qword_1EB137D08)
  {
    sub_1A430C104(255, &qword_1EB137D10, &qword_1EB137D18, sub_1A430C2F8, &qword_1EB137D28);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137D08);
    }
  }
}

void sub_1A430C2F8(uint64_t a1)
{
  if (!qword_1EB137D20)
  {
    sub_1A42057E4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137D20);
    }
  }
}

void sub_1A430C35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A430C3D0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A430DE34(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A430C45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A430C4C0(uint64_t a1)
{
  if (!qword_1EB137D38)
  {
    sub_1A430C35C(255, &qword_1EB137D40, sub_1A42057E4, sub_1A3E42C88);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137D38);
    }
  }
}

unint64_t sub_1A430C550()
{
  result = qword_1EB137D50;
  if (!qword_1EB137D50)
  {
    sub_1A430DE98(255, &qword_1EB137CB8, MEMORY[0x1E697F960]);
    sub_1A430C5EC();
    sub_1A430C86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D50);
  }

  return result;
}

unint64_t sub_1A430C5EC()
{
  result = qword_1EB137D58;
  if (!qword_1EB137D58)
  {
    sub_1A430BF8C(255);
    sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, MEMORY[0x1E69817E8], sub_1A3DC8F24);
    sub_1A430C790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D58);
  }

  return result;
}

uint64_t sub_1A430C698(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A430C0A4(255, a2, a3);
    a4();
    sub_1A430C748(&qword_1EB127AD8, sub_1A3F980B8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A430C748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A430C790()
{
  result = qword_1EB137D68;
  if (!qword_1EB137D68)
  {
    sub_1A430C02C(255);
    sub_1A430C698(&qword_1EB137D70, &qword_1EB137CD8, MEMORY[0x1E6981EF8], sub_1A3E43880);
    sub_1A430C748(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D68);
  }

  return result;
}

unint64_t sub_1A430C86C()
{
  result = qword_1EB137D78;
  if (!qword_1EB137D78)
  {
    sub_1A430C104(255, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137D78);
  }

  return result;
}

uint64_t sub_1A430C8F8@<X0>(uint64_t a1@<X8>)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  v39[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v39 - v3);
  sub_1A430C02C(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A430DE98(0, &qword_1EB137D88, MEMORY[0x1E697F948]);
  v39[2] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  sub_1A430BFAC(0, &qword_1EB137D90, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v39 - v13);
  sub_1A430BF8C(0);
  v39[1] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4189B78(v20);
  v21 = v20[65];
  sub_1A430E0B4(v20, type metadata accessor for TestNotificationPhotosItem);
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = sub_1A524B3B4();
      v23 = v8 + *(v6 + 36);
      v24 = sub_1A5248A14();
      v39[0] = a1;
      v25 = *(v24 + 20);
      v26 = *MEMORY[0x1E697F468];
      v27 = sub_1A52494A4();
      (*(*(v27 - 8) + 104))(&v23[v25], v26, v27);
      __asm { FMOV            V0.2D, #8.0 }

      *v23 = _Q0;
      sub_1A3E42C88(0);
      *&v23[*(v33 + 36)] = 256;
      *v8 = v22;
      sub_1A430E04C(v8, v14, sub_1A430C02C);
      swift_storeEnumTagMultiPayload();
      v34 = MEMORY[0x1E69817E8];
      sub_1A430C0A4(0, &qword_1EB137CC8, MEMORY[0x1E69817E8]);
      sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, v34, sub_1A3DC8F24);
      sub_1A430C790();
      sub_1A5249744();
      sub_1A430E04C(v17, v11, sub_1A430BF8C);
      swift_storeEnumTagMultiPayload();
      sub_1A430C5EC();
      sub_1A430C86C();
      sub_1A5249744();
      sub_1A430E0B4(v17, sub_1A430BF8C);
      return sub_1A430E0B4(v8, sub_1A430C02C);
    }

    else
    {
      *v4 = sub_1A524BC54();
      v4[1] = v37;
      sub_1A430E114(0, &qword_1EB137D98, &qword_1EB137CE8, sub_1A430C1A4);
      sub_1A430D644(v4 + *(v38 + 44));
      sub_1A430DF34(v4, v11);
      swift_storeEnumTagMultiPayload();
      sub_1A430C5EC();
      sub_1A430C86C();
      sub_1A5249744();
      return sub_1A430DFC4(v4);
    }
  }

  else
  {
    *v14 = sub_1A524B3B4();
    swift_storeEnumTagMultiPayload();
    v36 = MEMORY[0x1E69817E8];
    sub_1A430C0A4(0, &qword_1EB137CC8, MEMORY[0x1E69817E8]);
    sub_1A430C698(&qword_1EB137D60, &qword_1EB137CC8, v36, sub_1A3DC8F24);
    sub_1A430C790();

    sub_1A5249744();
    sub_1A430E04C(v17, v11, sub_1A430BF8C);
    swift_storeEnumTagMultiPayload();
    sub_1A430C5EC();
    sub_1A430C86C();
    sub_1A5249744();

    return sub_1A430E0B4(v17, sub_1A430BF8C);
  }
}

void sub_1A430CEEC(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24[1] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A5240744();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5240754();
  v24[3] = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24[4] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1A430DE34(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = v24 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  sub_1A430DE34(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], v9);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1A52407E4();
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v28 = v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24[2] = v24 - v23;
  sub_1A4189B78(v18);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A430D644@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  sub_1A430C434(0);
  v44 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - v4;
  sub_1A430C214(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v43 - v10);
  *v11 = sub_1A524BC74();
  v11[1] = v12;
  sub_1A430E114(0, &qword_1EB137DA0, &qword_1EB137D18, sub_1A430C2F8);
  sub_1A430DA68(v11 + *(v13 + 44));
  sub_1A430C264(0);
  v15 = v11 + *(v14 + 36);
  v16 = sub_1A5248A14();
  v17 = *(v16 + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  v20 = *(*(v19 - 8) + 104);
  v20(&v15[v17], v18, v19);
  __asm { FMOV            V0.2D, #8.0 }

  v47 = _Q0;
  *v15 = _Q0;
  sub_1A3E42C88(0);
  v27 = v26;
  *&v15[*(v26 + 36)] = 256;
  sub_1A524BC64();
  sub_1A52481F4();
  sub_1A430C23C(0);
  v29 = (v11 + *(v28 + 36));
  v30 = v49;
  *v29 = v48;
  v29[1] = v30;
  v29[2] = v50;
  *(v11 + *(v7 + 44)) = xmmword_1A532F580;
  v20(&v5[*(v16 + 20)], v18, v19);
  *v5 = v47;
  v31 = sub_1A524B3B4();
  sub_1A42057E4(0);
  *&v5[*(v32 + 36)] = v31;
  sub_1A430C35C(0, &qword_1EB137D40, sub_1A42057E4, sub_1A3E42C88);
  v34 = &v5[*(v33 + 36)];
  v20(&v34[*(v16 + 20)], v18, v19);
  *v34 = v47;
  *&v34[*(v27 + 36)] = 256;
  sub_1A524BC64();
  sub_1A52481F4();
  sub_1A430C4C0(0);
  v36 = &v5[*(v35 + 36)];
  v37 = v52;
  *v36 = v51;
  *(v36 + 1) = v37;
  *(v36 + 2) = v53;
  v38 = v43;
  *&v5[*(v44 + 44)] = xmmword_1A532F590;
  sub_1A430E04C(v11, v38, sub_1A430C214);
  v39 = v45;
  sub_1A430E04C(v5, v45, sub_1A430C434);
  v40 = v46;
  sub_1A430E04C(v38, v46, sub_1A430C214);
  sub_1A430C1A4(0);
  sub_1A430E04C(v39, v40 + *(v41 + 48), sub_1A430C434);
  sub_1A430E0B4(v5, sub_1A430C434);
  sub_1A430E0B4(v11, sub_1A430C214);
  sub_1A430E0B4(v39, sub_1A430C434);
  return sub_1A430E0B4(v38, sub_1A430C214);
}

uint64_t sub_1A430DA68@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_1A42057E4(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1A5248A14();
  v14 = *(v13 + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1A52494A4();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #8.0 }

  v28 = _Q0;
  *v12 = _Q0;
  *&v12[*(v2 + 44)] = sub_1A524B3B4();
  v17(&v9[*(v13 + 20)], v15, v16);
  *v9 = v28;
  sub_1A524B404();
  v23 = sub_1A524B474();

  *&v9[*(v2 + 44)] = v23;
  sub_1A430E04C(v12, v6, sub_1A42057E4);
  v24 = v29;
  sub_1A430E04C(v9, v29, sub_1A42057E4);
  v25 = v30;
  sub_1A430E04C(v6, v30, sub_1A42057E4);
  sub_1A430C2F8(0);
  sub_1A430E04C(v24, v25 + *(v26 + 48), sub_1A42057E4);
  sub_1A430E0B4(v9, sub_1A42057E4);
  sub_1A430E0B4(v12, sub_1A42057E4);
  sub_1A430E0B4(v24, sub_1A42057E4);
  return sub_1A430E0B4(v6, sub_1A42057E4);
}

uint64_t sub_1A430DCE4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A45350E8();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Test Notification Subtitle Action", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A430DE34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A430DE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A430BF8C(255);
    v7 = v6;
    sub_1A430C104(255, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A430DF34(uint64_t a1, uint64_t a2)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A430DFC4(uint64_t a1)
{
  sub_1A430C104(0, &qword_1EB137CE0, &qword_1EB137CE8, sub_1A430C1A4, &qword_1EB137D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A430E04C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430E0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A430E114(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A430DE34(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A430E190()
{
  if (!qword_1EB1261E0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261E0);
    }
  }
}

double sub_1A430E218(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

void sub_1A430E26C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A3F46F64();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *(a1 + *(type metadata accessor for TimelineEngineCellFrame(0) + 24));
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(*v3 + 88);
  v12 = *(v11() + 16);

  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v10 % v12;
  v15 = (v11)(v13);
  v16 = type metadata accessor for TimelineEngineMockData(0);
  a2[3] = v16;
  a2[4] = sub_1A430E944();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 >= *(v15 + 16))
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_1A430E99C(v15 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v14, boxed_opaque_existential_1);
}

uint64_t sub_1A430E408()
{
  v0 = swift_allocObject();
  sub_1A430E440();
  return v0;
}

uint64_t sub_1A430E440()
{
  v1 = v0;
  v2 = type metadata accessor for TimelineEngineMockData(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430E190();
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  v8 = v7 - 32;
  if (v7 < 32)
  {
    v8 = v7 - 25;
  }

  v6[2] = 21;
  v6[3] = 2 * (v8 >> 3);
  v6[4] = 0;
  v6[5] = 1;
  v6[6] = 2;
  v6[7] = 3;
  v6[8] = 4;
  v6[9] = 5;
  v6[10] = 6;
  v6[11] = 7;
  v6[12] = 8;
  v6[13] = 9;
  v6[14] = 10;
  v6[15] = 11;
  v6[16] = 12;
  v6[17] = 13;
  v6[18] = 14;
  v6[19] = 15;
  v6[20] = 16;
  v6[21] = 17;
  v6[22] = 18;
  v6[23] = 19;
  v6[24] = 20;
  v9 = v6[2];
  if (v9)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A430E6F4(0, v9, 0);
    v10 = v15;
    do
    {
      sub_1A4429424(v5);
      v15 = v10;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A430E6F4((v11 > 1), v12 + 1, 1);
        v10 = v15;
      }

      *(v10 + 16) = v12 + 1;
      sub_1A430E8E0(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v10;
  return v1;
}

void *sub_1A430E6F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A430E714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A430E714(void *result, int64_t a2, char a3, void *a4)
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

  sub_1A430EA24(0);
  v10 = *(type metadata accessor for TimelineEngineMockData(0) - 8);
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
  v15 = *(type metadata accessor for TimelineEngineMockData(0) - 8);
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

uint64_t sub_1A430E8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineMockData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A430E944()
{
  result = qword_1EB137DA8;
  if (!qword_1EB137DA8)
  {
    type metadata accessor for TimelineEngineMockData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137DA8);
  }

  return result;
}

uint64_t sub_1A430E99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineEngineMockData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A430EA24(uint64_t a1)
{
  if (!qword_1EB137DB0)
  {
    type metadata accessor for TimelineEngineMockData(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137DB0);
    }
  }
}

uint64_t sub_1A430EA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  sub_1A430F16C(0);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A430F254(0);
  v6 = v5;
  v68 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  MEMORY[0x1EEE9AC00](v63);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A430F288(0);
  v67 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v20;
  if (*v2)
  {
    v60 = &v55 - v20;
    v23 = *(v2 + 16);
    v59 = *(v2 + 24);
    v24 = v23(v21);
    v61 = v6;
    v25 = v24;
    v26 = *(v2 + 8);
    v27 = *(v2 + 40);
    v57 = *(v2 + 48);
    v58 = v27;
    v29 = *(v2 + 56);
    v28 = *(v2 + 64);
    v55 = v26;
    v56 = v29;
    v71 = v28;
    v72 = *(v2 + 72);
    v30 = swift_allocObject();
    v31 = *(v2 + 48);
    v30[3] = *(v2 + 32);
    v30[4] = v31;
    *(v30 + 73) = *(v2 + 57);
    v32 = *(v2 + 16);
    v30[1] = *v2;
    v30[2] = v32;
    *v15 = v25;
    v15[1] = v26;
    v15[2] = sub_1A4312ECC;
    v15[3] = v30;
    v33 = *(v13 + 28);
    *(v15 + v33) = swift_getKeyPath();
    sub_1A4312B18(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v62 = v12;
    *v12 = v25;
    v34 = *(v10 + 20);
    *(v12 + v34) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v35 = swift_allocObject();
    v36 = *(v2 + 48);
    v35[3] = *(v2 + 32);
    v35[4] = v36;
    *(v35 + 73) = *(v2 + 57);
    v37 = *(v2 + 16);
    v35[1] = *v2;
    v35[2] = v37;
    v39 = v55;
    v38 = v56;
    *v9 = v25;
    v9[1] = v39;
    v9[2] = sub_1A430FE0C;
    v9[3] = v35;
    v9[4] = v57;
    v9[5] = v38;
    v40 = *(v63 + 32);
    *(v9 + v40) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v41 = v64;
    v42 = *(v65 + 48);
    v43 = *(v65 + 64);
    sub_1A430FE28(v15, v64, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
    sub_1A430FE28(v62, v41 + v42, type metadata accessor for LemonadePeopleHomeToolbar.SelectionText);
    sub_1A430FE28(v9, v41 + v43, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
    v63 = v15;
    swift_retain_n();
    swift_retain_n();
    v44 = v25;

    sub_1A430FE28(&v71, v70, sub_1A430FE90);

    v45 = v44;

    v22 = v60;

    sub_1A430FE28(&v71, v70, sub_1A430FE90);
    v46 = v66;
    sub_1A52495D4();
    v47 = v68;
    v48 = v61;
    (*(v68 + 16))(v18, v46, v61);
    (*(v47 + 56))(v18, 0, 1, v48);
    v49 = sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254, MEMORY[0x1E697C5E0]);
    MEMORY[0x1A5904D00](v18, v48, v49);
    sub_1A4312C4C(v18, sub_1A430F288);
    (*(v47 + 8))(v46, v48);
    sub_1A4312C4C(v9, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
    sub_1A4312C4C(v62, type metadata accessor for LemonadePeopleHomeToolbar.SelectionText);
    v50 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton;
    v51 = v63;
  }

  else
  {
    (*(v68 + 56))(v18, 1, 1, v6, v21);
    v52 = sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254, MEMORY[0x1E697C5E0]);
    MEMORY[0x1A5904D00](v18, v6, v52);
    v50 = sub_1A430F288;
    v51 = v18;
  }

  sub_1A4312C4C(v51, v50);
  v53 = sub_1A430F2BC();
  MEMORY[0x1A5904CD0](v22, v67, v53);
  return sub_1A4312C4C(v22, sub_1A430F288);
}

void sub_1A430F16C(uint64_t a1)
{
  if (!qword_1EB137DB8)
  {
    type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(255);
    type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(255);
    type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137DB8);
    }
  }
}

unint64_t sub_1A430F2BC()
{
  result = qword_1EB137DD8;
  if (!qword_1EB137DD8)
  {
    sub_1A430F288(255);
    sub_1A4312E84(&qword_1EB137DD0, sub_1A430F254, MEMORY[0x1E697C5E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137DD8);
  }

  return result;
}

uint64_t sub_1A430F364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 72);
  v14 = *(a3 + 64);
  v8 = v15;

  if ((v8 & 1) == 0)
  {
    v9 = sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A4312C4C(&v14, sub_1A430FE90);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A52422A4();

  return (*(a3 + 32))(v11);
}

uint64_t sub_1A430F500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for LemonadePeopleHomeToolbar.HeartButton(0);
  v68 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v69 = v4;
  v70 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E42920(0);
  v76 = v5;
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4312058(0);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v65[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v65[-v12];
  v13 = sub_1A5249A94();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DD0DCC(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65[-v27];
  v77 = a1;
  sub_1A3DC7F98(&v65[-v27]);
  (*(v14 + 104))(v25, *MEMORY[0x1E697FF40], v13);
  (*(v14 + 56))(v25, 0, 1, v13);
  v29 = *(v17 + 56);
  sub_1A430FE28(v28, v19, sub_1A3DC7D88);
  sub_1A430FE28(v25, &v19[v29], sub_1A3DC7D88);
  v30 = *(v14 + 48);
  if (v30(v19, 1, v13) == 1)
  {
    sub_1A4312C4C(v25, sub_1A3DC7D88);
    sub_1A4312C4C(v28, sub_1A3DC7D88);
    v31 = v30(&v19[v29], 1, v13);
    if (v31 == 1)
    {
      v32 = sub_1A3DC7D88;
    }

    else
    {
      v32 = sub_1A3DD0DCC;
    }

    if (v31 == 1)
    {
      v33 = -1;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v19, v22, sub_1A3DC7D88);
    if (v30(&v19[v29], 1, v13) == 1)
    {
      sub_1A4312C4C(v25, sub_1A3DC7D88);
      sub_1A4312C4C(v28, sub_1A3DC7D88);
      (*(v14 + 8))(v22, v13);
      v33 = 0;
      v32 = sub_1A3DD0DCC;
    }

    else
    {
      v34 = v67;
      (*(v14 + 32))(v67, &v19[v29], v13);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v35 = sub_1A524C594();
      v36 = *(v14 + 8);
      v36(v34, v13);
      sub_1A4312C4C(v25, sub_1A3DC7D88);
      sub_1A4312C4C(v28, sub_1A3DC7D88);
      v37 = v13;
      v33 = v35;
      v36(v22, v37);
      v32 = sub_1A3DC7D88;
    }
  }

  v66 = v33;
  sub_1A4312C4C(v19, v32);
  v38 = sub_1A5249434();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  type metadata accessor for PeopleChangeTypeActionPerformer();
  v45 = v77;
  v46 = static PeopleChangeTypeActionPerformer.changeType(for:)(*v77);
  if (v46 == 1)
  {
    v47 = 0x7472616568;
  }

  else
  {
    v47 = 0x6C732E7472616568;
  }

  if (v46 == 1)
  {
    v48 = 0xE500000000000000;
  }

  else
  {
    v48 = 0xEB00000000687361;
  }

  LODWORD(v67) = v33 & 1;
  v49 = v70;
  sub_1A430FE28(v45, v70, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
  v50 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v51 = swift_allocObject();
  v52 = sub_1A431231C(v49, v51 + v50, type metadata accessor for LemonadePeopleHomeToolbar.HeartButton);
  MEMORY[0x1EEE9AC00](v52);
  *&v65[-48] = v38;
  *&v65[-40] = v40;
  v65[-32] = v42 & 1;
  *&v65[-24] = v44;
  *&v65[-16] = v47;
  *&v65[-8] = v48;
  sub_1A3E429B4();
  sub_1A4312E84(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
  v53 = v73;
  sub_1A524B704();

  v54 = sub_1A49AD158();
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = (v54 & 1) == 0;
  v57 = v71;
  (*(v74 + 32))(v71, v53, v76);
  v58 = (v57 + *(v72 + 36));
  *v58 = KeyPath;
  v58[1] = sub_1A4312ED8;
  v58[2] = v56;
  v59 = v75;
  sub_1A431231C(v57, v75, sub_1A4312058);
  v60 = v78;
  sub_1A430FE28(v59, v78, sub_1A4312058);
  v61 = v79;
  *v79 = 0;
  v62 = v66;
  *(v61 + 8) = v67;
  *(v61 + 9) = (v62 & 1) == 0;
  sub_1A4312B7C(0);
  sub_1A430FE28(v60, v61 + *(v63 + 48), sub_1A4312058);
  sub_1A4312C4C(v59, sub_1A4312058);
  return sub_1A4312C4C(v60, sub_1A4312058);
}

uint64_t objectdestroyTm_44()
{

  return swift_deallocObject();
}

uint64_t sub_1A430FE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A430FEC4()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4312AA8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v10 = v0;
  sub_1A4312AE4(0);
  sub_1A4312E84(&qword_1EB137E90, sub_1A4312AE4, MEMORY[0x1E6981F48]);
  sub_1A5248A74();
  v7 = sub_1A4312E84(&qword_1EB137E98, sub_1A4312AA8, MEMORY[0x1E697C288]);
  MEMORY[0x1A5904CD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_1A4310098(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  type metadata accessor for LemonadePeopleHomeToolbar.SelectionText(0);
  v40 = a1;
  sub_1A3DC7F98(v18);
  (*(v5 + 104))(v15, *MEMORY[0x1E697FF40], v4);
  (*(v5 + 56))(v15, 0, 1, v4);
  v19 = *(v8 + 56);
  sub_1A430FE28(v18, v10, sub_1A3DC7D88);
  sub_1A430FE28(v15, &v10[v19], sub_1A3DC7D88);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    sub_1A4312C4C(v15, sub_1A3DC7D88);
    sub_1A4312C4C(v18, sub_1A3DC7D88);
    v21 = v20(&v10[v19], 1, v4);
    if (v21 == 1)
    {
      v22 = sub_1A3DC7D88;
    }

    else
    {
      v22 = sub_1A3DD0DCC;
    }

    if (v21 == 1)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v10, v39, sub_1A3DC7D88);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      sub_1A4312C4C(v15, sub_1A3DC7D88);
      sub_1A4312C4C(v18, sub_1A3DC7D88);
      (*(v5 + 8))(v39, v4);
      v23 = 0;
      v22 = sub_1A3DD0DCC;
    }

    else
    {
      v24 = v38;
      (*(v5 + 32))(v38, &v10[v19], v4);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v25 = v39;
      v23 = sub_1A524C594();
      v26 = *(v5 + 8);
      v26(v24, v4);
      sub_1A4312C4C(v15, sub_1A3DC7D88);
      sub_1A4312C4C(v18, sub_1A3DC7D88);
      v26(v25, v4);
      v22 = sub_1A3DC7D88;
    }
  }

  sub_1A4312C4C(v10, v22);
  v27 = *v40;
  if ([*v40 count])
  {
    v28 = objc_opt_self();
    v29 = sub_1A524C634();
    v30 = [v28 locKeyForPeople:v27 key:v29];

    if (!v30)
    {
      sub_1A524C674();
      v30 = sub_1A524C634();
    }

    PXLocalizedStringWithCount(v30);
  }

  v31 = (v23 & 1) == 0;
  v43 = sub_1A3C38BD4(0xD00000000000001CLL);
  v44 = v32;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  LOBYTE(v43) = v23 & 1;
  v42 = v34 & 1;
  v41 = v23 & 1;
  *a2 = 0;
  *(a2 + 8) = v31;
  *(a2 + 9) = v23 & 1;
  *(a2 + 16) = v33;
  *(a2 + 24) = v35;
  *(a2 + 32) = v34 & 1;
  *(a2 + 40) = v36;
  *(a2 + 48) = 257;
  *(a2 + 56) = 0;
  *(a2 + 64) = v31;
  *(a2 + 65) = v23 & 1;
  sub_1A3E75E68(v33, v35, v34 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A431066C()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4312850(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A43129EC(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v16 = v0;
  sub_1A4312920(0);
  sub_1A4312E84(&qword_1EB137E60, sub_1A4312920, MEMORY[0x1E6981F48]);
  sub_1A5248A74();
  v12 = sub_1A4312E84(&qword_1EB137E70, sub_1A4312850, MEMORY[0x1E697C288]);
  sub_1A5248584();
  (*(v4 + 8))(v6, v3);
  v17 = v3;
  v18 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A5904CD0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A4310918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1A5249A94();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  sub_1A4311EE0(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v49 = a1;
  sub_1A4311FB0(0);
  sub_1A4312E84(&qword_1EB137E30, sub_1A4311FB0, MEMORY[0x1E6981F48]);
  sub_1A524A2E4();
  v23 = sub_1A49ACFC0();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v23 & 1) == 0;
  v26 = *(v18 + 44);
  v27 = v22;
  v28 = v45;
  v29 = (v27 + v26);
  *v29 = KeyPath;
  v29[1] = sub_1A3E07024;
  v29[2] = v25;
  type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  sub_1A3DC7F98(v16);
  (*(v28 + 104))(v13, *MEMORY[0x1E697FF40], v3);
  (*(v28 + 56))(v13, 0, 1, v3);
  v30 = *(v6 + 56);
  sub_1A430FE28(v16, v8, sub_1A3DC7D88);
  sub_1A430FE28(v13, &v8[v30], sub_1A3DC7D88);
  v31 = *(v28 + 48);
  if (v31(v8, 1, v3) == 1)
  {
    sub_1A4312C4C(v13, sub_1A3DC7D88);
    sub_1A4312C4C(v16, sub_1A3DC7D88);
    v32 = v31(&v8[v30], 1, v3);
    if (v32 == 1)
    {
      v33 = sub_1A3DC7D88;
    }

    else
    {
      v33 = sub_1A3DD0DCC;
    }

    if (v32 == 1)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    sub_1A430FE28(v8, v48, sub_1A3DC7D88);
    if (v31(&v8[v30], 1, v3) == 1)
    {
      sub_1A4312C4C(v13, sub_1A3DC7D88);
      sub_1A4312C4C(v16, sub_1A3DC7D88);
      (*(v28 + 8))(v48, v3);
      v34 = 0;
      v33 = sub_1A3DD0DCC;
    }

    else
    {
      v35 = v44;
      (*(v28 + 32))(v44, &v8[v30], v3);
      sub_1A4312E84(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v34 = sub_1A524C594();
      v36 = *(v28 + 8);
      v36(v35, v3);
      sub_1A4312C4C(v13, sub_1A3DC7D88);
      sub_1A4312C4C(v16, sub_1A3DC7D88);
      v36(v48, v3);
      v33 = sub_1A3DC7D88;
    }
  }

  sub_1A4312C4C(v8, v33);
  v37 = v46;
  sub_1A430FE28(v27, v46, sub_1A4311EE0);
  v38 = v47;
  sub_1A430FE28(v37, v47, sub_1A4311EE0);
  sub_1A4311E4C(0, v39);
  v41 = v38 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = v34 & 1;
  *(v41 + 9) = (v34 & 1) == 0;
  sub_1A4312C4C(v27, sub_1A4311EE0);
  return sub_1A4312C4C(v37, sub_1A4311EE0);
}

uint64_t sub_1A4310F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1A4312078(0);
  v62 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = v56 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v64 = v56 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v61 = v56 - v10;
  v11 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = v13;
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4312058(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v63 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  v68 = a1;
  v21 = LemonadeLocalizedStringForPeople(_:key:)(*a1, 0xD00000000000001BLL);
  v23 = v22;
  v57 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton;
  sub_1A430FE28(a1, v14, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  v58 = type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton;
  sub_1A431231C(v14, v25 + v24, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v73[0] = v21;
  v73[1] = v23;
  v70 = v73;
  v71 = 0x73616C732E657965;
  v72 = 0xE900000000000068;
  sub_1A3E429B4();
  sub_1A4312E84(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
  v60 = v20;
  sub_1A524B704();

  v26 = v68;
  v27 = sub_1A49ACFC0();
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = &v20[*(v16 + 44)];
  *v30 = KeyPath;
  v30[1] = sub_1A4312ED8;
  v30[2] = v29;
  sub_1A430FE28(v26, v14, type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton);
  v31 = swift_allocObject();
  v32 = v58;
  sub_1A431231C(v14, v31 + v24, v58);
  sub_1A41CC66C(0);
  v56[1] = v33;
  sub_1A4312E84(&qword_1EB134918, sub_1A41CC66C, MEMORY[0x1E6981F48]);
  v34 = v61;
  sub_1A524B704();
  LOBYTE(KeyPath) = sub_1A49AD488();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = (KeyPath & 1) == 0;
  v37 = v62;
  v38 = (v34 + *(v62 + 44));
  *v38 = v35;
  v38[1] = sub_1A4312ED8;
  v38[2] = v36;
  v39 = v68;
  sub_1A430FE28(v68, v14, v57);
  v40 = swift_allocObject();
  sub_1A431231C(v14, v40 + v24, v32);
  v69 = v39;
  v41 = v64;
  sub_1A524B704();
  LOBYTE(v26) = sub_1A49AD2F0();
  v42 = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = (v26 & 1) == 0;
  v44 = &v41[*(v37 + 44)];
  v45 = v41;
  *v44 = v42;
  v44[1] = sub_1A4312ED8;
  v44[2] = v43;
  v46 = v60;
  v47 = v63;
  sub_1A430FE28(v60, v63, sub_1A4312058);
  v48 = v65;
  sub_1A430FE28(v34, v65, sub_1A4312078);
  v49 = v41;
  v50 = v66;
  sub_1A430FE28(v49, v66, sub_1A4312078);
  v51 = v67;
  sub_1A430FE28(v47, v67, sub_1A4312058);
  sub_1A4311FE4(0, v52);
  v54 = v53;
  sub_1A430FE28(v48, v51 + *(v53 + 48), sub_1A4312078);
  sub_1A430FE28(v50, v51 + *(v54 + 64), sub_1A4312078);
  sub_1A4312C4C(v45, sub_1A4312078);
  sub_1A4312C4C(v34, sub_1A4312078);
  sub_1A4312C4C(v46, sub_1A4312058);
  sub_1A4312C4C(v50, sub_1A4312078);
  sub_1A4312C4C(v48, sub_1A4312078);
  return sub_1A4312C4C(v47, sub_1A4312058);
}

void sub_1A4311620(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000024);
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1A524B544();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_1A3E75E68(v2, v4, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4311700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A431173C()
{
  v1 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4311DDC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249894();
  v10 = v0;
  sub_1A4311E18(0);
  sub_1A4312E84(&qword_1EB137E38, sub_1A4311E18, MEMORY[0x1E6981F48]);
  sub_1A5248A74();
  v7 = sub_1A4312E84(&qword_1EB137E40, sub_1A4311DDC, MEMORY[0x1E697C288]);
  MEMORY[0x1A5904CD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4311908@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = swift_getKeyPath();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = result;
  *(a9 + 72) = 0;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A43119E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4311A30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A4311ABC(uint64_t a1, uint64_t a2)
{
  sub_1A3F63918(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for LemonadePeopleHomeView.SelectionState(319);
    if (v3 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v4 <= 0x3F)
      {
        sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}