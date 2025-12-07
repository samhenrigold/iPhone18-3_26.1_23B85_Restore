uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F2F9108()
{
  result = qword_2810A8FF8;
  if (!qword_2810A8FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8FF8);
  }

  return result;
}

uint64_t objectdestroy_3Tm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14TripTitleError33_F4CA05ED229D6579DDED1C2A06227364LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22F2F91C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 32))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F2F9218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_22F2F926C(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void static ShazamClient.fetchPopularMusic(at:date:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v6 = sub_22F740AD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E48 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v7 + 8))(v9, v6);
  v10 = objc_opt_self();
  v11 = sub_22F73F5B0();
  v12 = swift_allocObject();
  *(v12 + 16) = "ShazamClient Fetch Popular Music";
  *(v12 + 24) = 32;
  *(v12 + 32) = 2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  aBlock[4] = sub_22F2F99AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2F99BC;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);

  [v10 affinityGroupsForLocation:v15 atDate:v11 completionHandler:v13];
  _Block_release(v13);
}

double sub_22F2F94E8(unint64_t a1, void *a2, char **a3, unint64_t a4, unint64_t a5, void (*a6)(void **), unint64_t a7)
{
  LODWORD(v9) = a5;
  v14 = sub_22F740AD0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a6;
  if (a1)
  {
    v55 = MEMORY[0x277D84FA0];
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v39 = a3;
      v40 = a4;
      v41 = v9;
      v42 = v15;
      v43 = v14;
      v44 = a7;
      v20 = 0;
      v50 = a1 + 32;
      v51 = a1 & 0xC000000000000001;
      a3 = &selRef_appleMusicID;
      v48 = v18;
      v49 = a1;
      v47 = i;
      while (v51)
      {
        v22 = MEMORY[0x2319016F0](v20, a1, v16);
        v23 = __OFADD__(v20, 1);
        v24 = v20 + 1;
        if (v23)
        {
          goto LABEL_39;
        }

LABEL_10:
        v53 = v22;
        v54 = v24;
        v25 = [v22 mediaItems];
        sub_22F120634(0, &qword_2810A91D8, 0x277CDC730);
        a1 = sub_22F741180();

        v14 = a1 & 0xFFFFFFFFFFFFFF8;
        if (a1 >> 62)
        {
          v15 = sub_22F741A00();
          if (v15)
          {
LABEL_12:
            v18 = 0;
            a4 = a1 & 0xC000000000000001;
            v21 = MEMORY[0x277D84F90];
            do
            {
              v9 = v18;
              while (1)
              {
                if (a4)
                {
                  v26 = MEMORY[0x2319016F0](v9, a1);
                }

                else
                {
                  if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_38;
                  }

                  v26 = *(a1 + 8 * v9 + 32);
                }

                v27 = v26;
                v18 = v9 + 1;
                if (__OFADD__(v9, 1))
                {
                  __break(1u);
LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

                v28 = [v26 appleMusicID];
                if (v28)
                {
                  break;
                }

                ++v9;
                if (v18 == v15)
                {
                  goto LABEL_6;
                }
              }

              v29 = v28;
              v9 = sub_22F740E20();
              v52 = v30;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_22F13E1A8(0, *(v21 + 2) + 1, 1, v21);
              }

              a7 = *(v21 + 2);
              v31 = *(v21 + 3);
              if (a7 >= v31 >> 1)
              {
                v21 = sub_22F13E1A8((v31 > 1), a7 + 1, 1, v21);
              }

              *(v21 + 2) = a7 + 1;
              v32 = &v21[16 * a7];
              v33 = v52;
              *(v32 + 4) = v9;
              *(v32 + 5) = v33;
            }

            while (v18 != v15);
            goto LABEL_6;
          }
        }

        else
        {
          v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15)
          {
            goto LABEL_12;
          }
        }

        v21 = MEMORY[0x277D84F90];
LABEL_6:

        sub_22F2F2D94(v21);

        v18 = v48;
        v20 = v54;
        a1 = v49;
        if (v54 == v47)
        {
          v36 = v55;
          v14 = v43;
          v15 = v42;
          goto LABEL_43;
        }
      }

      if (v20 >= *(v18 + 16))
      {
        goto LABEL_40;
      }

      v22 = *(v50 + 8 * v20);
      v23 = __OFADD__(v20, 1);
      v24 = v20 + 1;
      if (!v23)
      {
        goto LABEL_10;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    v36 = MEMORY[0x277D84FA0];
LABEL_43:
    sub_22F741730();
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    v37 = v45;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v15 + 8))(v37, v14);
    v55 = v36;
    v56 = 0;
  }

  else
  {
    sub_22F741730();
    if (qword_2810A8E48 != -1)
    {
      swift_once();
    }

    v34 = v45;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v15 + 8))(v34, v14);
    v55 = a2;
    v56 = 256;
    v35 = a2;
  }

  v46(&v55);
  return sub_22F2F9C14(v55, v56, SHIBYTE(v56));
}

double sub_22F2F99BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_22F120634(0, &unk_2810A9140, 0x277D54F50);
    v4 = sub_22F741180();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static ShazamClient.dateOfEarliestAvailableShazamData.getter()
{
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v0 = qword_2810A9170;
  v1 = sub_22F740DF0();
  v2 = [v0 dateFromString_];

  if (v2)
  {
    sub_22F73F640();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22F2F9B6C(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2F9BB4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_22F2F9C14(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

id sub_22F2F9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  *v11 = a1;
  v11[1] = a2;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedLocalFactoryScore) = a9;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedState) = 0;
  v12 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  *v12 = a3;
  v12[1] = a4;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated) = a5;
  v13 = (v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  *v13 = a7;
  v13[1] = a8;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_assetCount) = a6;
  *(v10 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_mcAvailabilityStatus) = a10;
  v15.super_class = PGStoryPromptSuggestionQuestion;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t PGStoryPromptSuggestionQuestion.entityIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);

  return v1;
}

uint64_t (*PGStoryPromptSuggestionQuestion.state.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedState;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_22F2F9EC0;
}

unint64_t PGStoryPromptSuggestionQuestion.additionalInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F777170;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v2;
  v4 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  v3 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText + 8);
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v6;
  v7 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated);
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v7;
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v8;
  v9 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_assetCount);
  v10 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = v9;
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v11;
  v12 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_mcAvailabilityStatus);
  *(inited + 216) = v10;
  *(inited + 192) = v12;
  *(inited + 224) = sub_22F740E20();
  *(inited + 232) = v13;
  *(inited + 264) = v5;
  *(inited + 240) = v4;
  *(inited + 248) = v3;
  *(inited + 272) = sub_22F740E20();
  *(inited + 280) = v14;
  v15 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  v16 = *(v0 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source + 8);
  *(inited + 312) = v5;
  *(inited + 288) = v15;
  *(inited + 296) = v16;
  swift_bridgeObjectRetain_n();

  v17 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v17;
}

uint64_t PGStoryPromptSuggestionQuestion.isEquivalent(toPersistedQuestion:)(void *a1)
{
  if ([a1 type] != 30 || objc_msgSend(a1, sel_entityType) != 4)
  {
    goto LABEL_19;
  }

  v3 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier);
  v4 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_storedEntityIdentifier + 8);
  v5 = [a1 entityIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  if (v3 == v6 && v4 == v8)
  {
  }

  else
  {
    v10 = sub_22F742040();

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText);
  v12 = *(v1 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_promptText + 8);
  v13 = [a1 additionalInfo];
  if (!v13)
  {
LABEL_19:
    v23 = 0;
    return v23 & 1;
  }

  v14 = v13;
  v15 = sub_22F740CA0();

  v16 = sub_22F740E20();
  if (!*(v15 + 16))
  {

    goto LABEL_18;
  }

  v18 = v1;
  v19 = sub_22F1229E8(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_22F13A100(*(v15 + 56) + 32 * v19, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v11 == v45 && v12 == v46)
  {

    v22 = v18;
  }

  else
  {
    v25 = sub_22F742040();

    v22 = v18;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v26 = *(v22 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_isValidated);
  v27 = [a1 additionalInfo];
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = v27;
  v29 = sub_22F740CA0();

  v30 = sub_22F740E20();
  if (!*(v29 + 16))
  {
    goto LABEL_34;
  }

  v32 = sub_22F1229E8(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_22F13A100(*(v29 + 56) + 32 * v32, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v26 != v45)
  {
    goto LABEL_19;
  }

  v35 = *(v18 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source);
  v36 = *(v18 + OBJC_IVAR___PGStoryPromptSuggestionQuestion_source + 8);
  v37 = [a1 additionalInfo];
  if (!v37)
  {
    goto LABEL_19;
  }

  v38 = v37;
  v39 = sub_22F740CA0();

  v40 = sub_22F740E20();
  if (!*(v39 + 16))
  {
LABEL_34:

    goto LABEL_18;
  }

  v42 = sub_22F1229E8(v40, v41);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_22F13A100(*(v39 + 56) + 32 * v42, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v35 == v45 && v36 == v46)
  {

    v23 = 1;
  }

  else
  {
    v23 = sub_22F742040();
  }

  return v23 & 1;
}

void __swiftcall PGStoryPromptSuggestionQuestion.init()(PGStoryPromptSuggestionQuestion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

unint64_t type metadata accessor for PGStoryPromptSuggestionQuestion()
{
  result = qword_2810A8F88;
  if (!qword_2810A8F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8F88);
  }

  return result;
}

uint64_t sub_22F2FA6F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id GraphUpdater.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PGGraphUpdater_graphManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id GraphUpdater.init(with:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PGGraphUpdater_graphManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GraphUpdater.applyChanges(from:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22F2FA870, 0, 0);
}

uint64_t sub_22F2FA870()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3530, &unk_22F784138);
  *v4 = v0;
  v4[1] = sub_22F2FA980;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000024, 0x800000022F799A00, sub_22F2FAE08, v2, v5);
}

uint64_t sub_22F2FA980()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22F2FAB44;
  }

  else
  {

    v2 = sub_22F2FAA9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F2FAA9C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    sub_22F2FAE14();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F2FAB44()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F2FABA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v17 = *(a2 + OBJC_IVAR___PGGraphUpdater_graphManager);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v23 = sub_22F2FB850;
  v24 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22F2FA6F0;
  v22 = &block_descriptor_28;
  v12 = _Block_copy(&aBlock);
  v13 = a4;

  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  v23 = sub_22F2FB870;
  v24 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22F2FB078;
  v22 = &block_descriptor_27;
  v16 = _Block_copy(&aBlock);

  [v17 startGraphUpdate:v18 progressBlock:v12 completionBlock:v16];
  _Block_release(v16);
  _Block_release(v12);
}

unint64_t sub_22F2FAE14()
{
  result = qword_27DAB3538;
  if (!qword_27DAB3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3538);
  }

  return result;
}

uint64_t sub_22F2FAFF4(char a1, id a2, void *a3)
{
  if (a1)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
    return sub_22F7412F0();
  }

  else
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
    return sub_22F7412E0();
  }
}

void sub_22F2FB078(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a3;
  v9 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_22F2FB29C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_22F2FB374;

  return GraphUpdater.applyChanges(from:progressReporter:)(v8, v9);
}

uint64_t sub_22F2FB374()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = sub_22F73F360();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

id GraphUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2FB670()
{
  result = qword_27DAB3540;
  if (!qword_27DAB3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3540);
  }

  return result;
}

uint64_t sub_22F2FB6C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22F12094C;

  return sub_22F2FB29C(v2, v3, v5, v4);
}

uint64_t sub_22F2FB784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F20B7C0;

  return sub_22F33C464(a1, v4, v5, v6);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2FB870(char a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);

  return sub_22F2FAFF4(a1, a2, a3);
}

void sub_22F2FB90C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2319016F0](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v6 = v4;
      sub_22F10EEDC(&v8, v6);
      v7 = v8;

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 8 * v3 + 32);
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_22F2FBA00(uint64_t a1)
{
  v1 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    sub_22F120634(0, &qword_2810A9008, off_27887B6B0);
    sub_22F11FA28(&qword_2810A9000, &qword_2810A9008, off_27887B6B0);
    sub_22F741470();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v14 = v3;
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (sub_22F120634(0, &qword_2810A9008, off_27887B6B0), swift_dynamicCast(), (v11 = v15) == 0))
    {
LABEL_22:
      sub_22F0FF590(v1);
      return;
    }

LABEL_17:
    v12 = [v11 node];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    if (v13)
    {
      MEMORY[0x231900D00]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_22F2FBCA4@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = sub_22F741CA0();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = v3 | 0x8000000000000000;
  }

  else
  {
    v7 = -1;
    v8 = -1 << *(result + 32);
    v4 = result + 64;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 64);
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = 0;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

void sub_22F2FBD28(uint64_t *a1)
{
  v2 = *(sub_22F73F690() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6440(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F30A160(v5);
  *a1 = v3;
}

uint64_t sub_22F2FBDD0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      v10 = 0;
      sub_22F741B00();
      MEMORY[0x231900B10](0x6E6F697461636F4CLL, 0xEF282065646F6E20);
      MEMORY[0x231900B10](v1, v2);
      MEMORY[0x231900B10](0xD000000000000026, 0x800000022F79A3D0);
      v6 = v4;
      v5 = v3;
    }

    else
    {
      sub_22F741B00();

      v10 = 0x6E6F697461636F4CLL;
      MEMORY[0x231900B10](v1, v2);
      v5 = 0x800000022F79A400;
      v6 = 0xD00000000000001BLL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 32) == 2)
  {
    sub_22F741B00();

    v10 = 0x646F6E2061657241;
    MEMORY[0x231900B10](v1, v2);
    v6 = 0xD000000000000025;
    v5 = 0x800000022F79A3A0;
LABEL_7:
    MEMORY[0x231900B10](v6, v5);
    return v10;
  }

  result = 0xD00000000000001BLL;
  if (!(v4 | v2 | v1 | v3))
  {
    return 0xD00000000000003ALL;
  }

  v8 = v4 | v2 | v3;
  if (v1 == 1 && v8 == 0)
  {
    return 0xD000000000000038;
  }

  if (v1 == 2 && !v8)
  {
    return 0xD000000000000043;
  }

  if (v1 != 3 || v8)
  {
    if (v1 != 4 || v8)
    {
      return 0xD00000000000002CLL;
    }

    else
    {
      return 0xD000000000000045;
    }
  }

  return result;
}

uint64_t sub_22F2FC064(uint64_t a1)
{
  v2 = sub_22F30F274();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F2FC0A0(uint64_t a1)
{
  v2 = sub_22F30F274();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F2FC0E0()
{
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      return 108;
    }

    else
    {
      v2 = *v0;
      v3 = v0[1];
      v4 = v0[2] | v0[3];
      if (v4 | *v0 | v3)
      {
        v5 = v4 | v3;
        if (v2 == 1 && v5 == 0)
        {
          return 101;
        }

        else if (v2 != 2 || v5)
        {
          if (v2 != 3 || v5)
          {
            if (v5)
            {
              v7 = 0;
            }

            else
            {
              v7 = v2 == 4;
            }

            if (v7)
            {
              return 104;
            }

            else
            {
              return 105;
            }
          }

          else
          {
            return 103;
          }
        }

        else
        {
          return 102;
        }
      }

      else
      {
        return 100;
      }
    }
  }

  else if (*(v0 + 32))
  {
    return 107;
  }

  else
  {
    return 106;
  }
}

id TripLocationScore.__allocating_init(locationNode:score:momentNodes:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGTripLocationScore_locationNode] = a1;
  *&v7[OBJC_IVAR___PGTripLocationScore__score] = a3;
  *&v7[OBJC_IVAR___PGTripLocationScore_momentNodes] = a2;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id TripLocationScore.init(locationNode:score:momentNodes:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR___PGTripLocationScore_locationNode] = a1;
  *&v3[OBJC_IVAR___PGTripLocationScore__score] = a3;
  *&v3[OBJC_IVAR___PGTripLocationScore_momentNodes] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for TripLocationScore();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_22F2FC350()
{
  v1 = *(v0 + OBJC_IVAR___PGTripLocationScore_locationNode);
  v2 = *(v0 + OBJC_IVAR___PGTripLocationScore__score);
  v3 = *(v0 + OBJC_IVAR___PGTripLocationScore_momentNodes);
  v4 = type metadata accessor for TripLocationScore();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PGTripLocationScore_locationNode] = v1;
  *&v5[OBJC_IVAR___PGTripLocationScore__score] = v2;
  *&v5[OBJC_IVAR___PGTripLocationScore_momentNodes] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_22F2FC410()
{
  v1 = [*(v0 + OBJC_IVAR___PGTripLocationScore_locationNode) description];
  v2 = sub_22F740E20();
  v4 = v3;

  MEMORY[0x231900B10](v2, v4);

  MEMORY[0x231900B10](8250, 0xE200000000000000);
  sub_22F7413B0();
  return 0;
}

id TripLocationScore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22F2FC5D0()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F2FC6A4(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

uint64_t sub_22F2FC764(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F2FC834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F30EC60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22F2FC864(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736270;
  v5 = 0xE500000000000000;
  v6 = 0x6574617453;
  v7 = 0xE700000000000000;
  v8 = 0x7972746E756F43;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000022F78E820;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2037672259;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_22F2FC8F4()
{
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI) = MEMORY[0x277D84F98];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets) = 0;
  v1 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel) = 0;
  *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet) = v1;
  v2 = (v0 + OBJC_IVAR___PGTripFeatureProcessor_currentError);
  *v2 = 0;
  v2[1] = 0;
  sub_22F741D40();
  __break(1u);
}

void *TripFeatureProcessor.init(momentNodes:graph:locationHelper:)(void *a1, void *a2, void *a3)
{
  v34 = a3;
  v32 = sub_22F73F090();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v27[0] = OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel] = 0;
  v27[1] = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI] = MEMORY[0x277D84F98];
  v27[3] = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment] = 0;
  v29 = OBJC_IVAR___PGTripFeatureProcessor_locationFrequency;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_locationFrequency] = 0;
  v31 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel] = 0;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable] = 0;
  v30 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets] = 0;
  v12 = MEMORY[0x277D84FA0];
  v27[5] = OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes] = MEMORY[0x277D84FA0];
  v28 = OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes] = 0;
  v3[OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel] = 0;
  v27[2] = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet] = v12;
  v13 = &v3[OBJC_IVAR___PGTripFeatureProcessor_currentError];
  v14 = type metadata accessor for TripFeatureProcessorHelper();
  *v13 = 0;
  v13[1] = 0;
  v27[4] = v13;
  v15 = [objc_allocWithZone(v14) init];
  v16 = OBJC_IVAR___PGTripFeatureProcessor_processorHelper;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_processorHelper] = v15;
  v17 = OBJC_IVAR___PGTripFeatureProcessor_momentNodes;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_momentNodes] = a1;
  v18 = OBJC_IVAR___PGTripFeatureProcessor_graph;
  *&v3[OBJC_IVAR___PGTripFeatureProcessor_graph] = a2;
  v19 = a1;
  v20 = a2;
  v21 = [v19 localDateInterval];
  if (v21)
  {
    v22 = v21;
    sub_22F73F020();

    v23 = v32;
    (*(v6 + 32))(v11, v8, v32);
    (*(v6 + 16))(&v3[OBJC_IVAR___PGTripFeatureProcessor_tripDateInterval], v11, v23);
    *&v3[OBJC_IVAR___PGTripFeatureProcessor_locationHelper] = v34;
    v24 = type metadata accessor for TripFeatureProcessor(0);
    v33.receiver = v3;
    v33.super_class = v24;
    v3 = objc_msgSendSuper2(&v33, sel_init);

    (*(v6 + 8))(v11, v23);
  }

  else
  {
    sub_22F2FCEA4();
    swift_allocError();
    *v25 = 4;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 3;
    swift_willThrow();

    type metadata accessor for TripFeatureProcessor(0);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_22F2FCEA4()
{
  result = qword_27DAB3580;
  if (!qword_27DAB3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3580);
  }

  return result;
}

void *sub_22F2FCFC4()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment);
  if (!v1)
  {
    goto LABEL_36;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_22F741CA0() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v3 = ~v6;
    v2 = v1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(v1 + 64);
    v5 = v1;
  }

  v9 = 0;
  v10 = (v3 + 64) >> 6;
  v11 = MEMORY[0x277D84F98];
  v35 = v2;
  v36 = v10;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v12 = v9;
    v13 = v4;
    v14 = v9;
    if (!v4)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
          goto LABEL_32;
        }

        v13 = *(v2 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      while (1)
      {
LABEL_36:
        sub_22F741D40();
        __break(1u);
LABEL_37:
        sub_22F120634(0, &qword_2810A90E0, off_27887B100);
        sub_22F7420C0();
        __break(1u);
      }
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v5 + 56) + v16);
    v18 = *(*(v5 + 48) + v16);

    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_20:
    if (*(v17 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8) == 1)
    {
      goto LABEL_36;
    }

    v19 = v5;
    v20 = *(v17 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);
    v21 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v11;
    v24 = sub_22F1234BC(v21);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_34;
    }

    v28 = v23;
    if (v11[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22F137640();
        if (v28)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_22F12B214(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_22F1234BC(v21);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_37;
      }

      v24 = v29;
      if (v28)
      {
LABEL_9:
        *(v11[7] + 8 * v24) = v20;

        goto LABEL_10;
      }
    }

    v11[(v24 >> 6) + 8] |= 1 << v24;
    *(v11[6] + 8 * v24) = v21;
    *(v11[7] + 8 * v24) = v20;

    v31 = v11[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_35;
    }

    v11[2] = v33;
LABEL_10:
    v9 = v14;
    v4 = v15;
    v5 = v19;
    v2 = v35;
    v10 = v36;
  }

  if (sub_22F741D10())
  {
    sub_22F120634(0, &qword_2810A90E0, off_27887B100);
    swift_dynamicCast();
    v18 = v37;
    type metadata accessor for MomentRelevanceData(0);
    swift_dynamicCast();
    v17 = v37;
    v14 = v9;
    v15 = v4;
    if (v37)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_22F0FF590(v5);
  return v11;
}

void sub_22F2FD5EC(void *a1)
{
  if (*(v1 + *a1))
  {
  }

  else
  {
    sub_22F2FCEA4();
    swift_allocError();
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 3;
    swift_willThrow();
  }
}

id sub_22F2FD664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a1 + *a4))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35D0, &unk_22F784740);
    v4 = sub_22F740C80();
  }

  else
  {
    sub_22F2FCEA4();
    v6 = swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 3;
    swift_willThrow();
    if (a3)
    {
      v8 = sub_22F73F360();

      v9 = v8;
      v4 = 0;
      *a3 = v8;
    }

    else
    {

      v4 = 0;
    }
  }

  return v4;
}

void sub_22F2FD76C()
{
  v1 = objc_opt_self();
  v2 = sub_22F740DF0();
  _s11PhotosGraph24TripTitleAnalyticsHelperC16analyticsPayload3forSDySSSo8NSObjectCGAA0C16FeatureProcessorC_tFZ_0(v0);
  sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
  v3 = sub_22F740C80();

  [v1 sendEvent:v2 withPayload:v3];
}

unint64_t *sub_22F2FD92C(uint64_t a1)
{
  v3 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v5 = [v4 childProgressReporterToCheckpoint_];
  v6 = [v4 childProgressReporterToCheckpoint_];
  v7 = [v4 childProgressReporterToCheckpoint_];
  v8 = [v4 childProgressReporterToCheckpoint_];
  v39 = [v4 childProgressReporterToCheckpoint_];
  v38 = [v4 childProgressReporterToCheckpoint_];
  v37 = [v4 childProgressReporterToCheckpoint_];
  v35 = [v4 childProgressReporterToCheckpoint_];
  v36 = v5;
  v9 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes);
  v10 = sub_22F3EFA48(v9, v5);
  if (v2)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v34 = v6;
  DynamicType = v10;
  v12 = v7;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }

LABEL_9:

    sub_22F2FCEA4();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    swift_willThrow();
LABEL_10:
    v6 = v34;
LABEL_11:
    v15 = v8;
    goto LABEL_12;
  }

  if (sub_22F741A00() < 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v13 = sub_22F3084FC(v11, v34);
  *(v1 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment) = v13;

  v14 = sub_22F3015FC(v13, v12, &DynamicType);

  *(v3 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel) = v14;

  sub_22F2FE120();
  v15 = v8;
  if (*(v3 + OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable) != 0.0)
  {
    sub_22F300540(v8);
    v7 = v12;
    v33 = DynamicType;
    v17 = v34;
    *(v3 + OBJC_IVAR___PGTripFeatureProcessor_locationFrequency) = sub_22F305E00(DynamicType, v39);

    *(v3 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel) = sub_22F302DAC();

    if (sub_22F3031B4())
    {
      goto LABEL_16;
    }

    [v9 graph];
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      v28 = [v26 supersets];
      sub_22F120634(0, &qword_2810A8FE0, off_27887AD90);
      sub_22F11FA28(&qword_2810A8FD0, &qword_2810A8FE0, off_27887AD90);
      v29 = sub_22F741420();

      *(v3 + OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes) = v29;

      v30 = [v27 supersetStateNodes];
      v31 = *(v3 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes);
      *(v3 + OBJC_IVAR___PGTripFeatureProcessor_frequentStateLocationNodes) = v30;

      sub_22F303A90(v27, v37);
      swift_unknownObjectRelease();
      v17 = v34;
      v15 = v8;
LABEL_16:
      p_DynamicType = sub_22F2FE258(v33);

      return p_DynamicType;
    }

    swift_unknownObjectRelease();
    sub_22F2FCEA4();
    swift_allocError();
    *v32 = 5;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 3;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_22F2FCEA4();
  swift_allocError();
  *v16 = 3;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 3;
  swift_willThrow();
  v7 = v12;
  v6 = v34;
LABEL_12:
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3590, &unk_22F784320);
  DynamicType = sub_22F740E90();
  v42 = v19;
  MEMORY[0x231900B10](0x2065646F63203ALL, 0xE700000000000000);
  v20 = sub_22F73F360();
  [v20 code];

  v21 = sub_22F742010();
  p_DynamicType = &DynamicType;
  MEMORY[0x231900B10](v21);

  v23 = v42;
  v24 = (v3 + OBJC_IVAR___PGTripFeatureProcessor_currentError);
  *v24 = DynamicType;
  v24[1] = v23;

  swift_willThrow();

  return p_DynamicType;
}

void sub_22F2FE120()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v1)
  {
    v9 = MEMORY[0x277D84FA0];
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    if (v4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        do
        {
LABEL_10:
          v4 &= v4 - 1;

          sub_22F30F2F0(v8, &v9, v0);
        }

        while (v4);
        continue;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F2FE258(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v6 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);
  v7 = v4;
  v8 = v7;
  if (!v6)
  {
    v19 = v7;
LABEL_8:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v9 = sub_22F740E20();
  v11 = v10;
  if (!*(v6 + 16))
  {
    v20 = v8;

    goto LABEL_8;
  }

  v12 = v9;
  v13 = v8;

  sub_22F1229E8(v12, v11);
  v15 = v14;

  if (v15)
  {

    v79 = sub_22F36C468(v16);
    v17 = v13;
    sub_22F30EB94(&v79, v17);
    if (v2)
    {
      goto LABEL_115;
    }

    v18 = v79;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

LABEL_10:
  v21 = *(v4 + v5);
  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v23 = sub_22F740E20();
  v25 = v24;
  if (*(v21 + 16) && (v26 = v23, , sub_22F1229E8(v26, v25), v28 = v27, , (v28 & 1) != 0))
  {

    v79 = sub_22F36C468(v29);
    v17 = v8;
    sub_22F30EB94(&v79, v17);
    if (v3)
    {
      goto LABEL_115;
    }

    v30 = v79;
    v31 = *(v4 + v5);
    if (!v31)
    {
LABEL_15:
      v22 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v31 = *(v4 + v5);
    if (!v31)
    {
      goto LABEL_15;
    }
  }

  v32 = sub_22F740E20();
  v34 = v33;
  if (!*(v31 + 16) || (v35 = v32, , v4 = sub_22F1229E8(v35, v34), v37 = v36, , (v37 & 1) == 0))
  {

    v22 = MEMORY[0x277D84F90];
LABEL_23:
    sub_22F741690();
    if (v3)
    {
LABEL_74:

      return v4;
    }

    v4 = sub_22F2FEC74(v18, v8);
    v39 = sub_22F2FF800(v30, v18, v8);

    v40 = sub_22F2FFDF4(v22, v8);

    sub_22F741690();
    v78 = v8;
    if (v4 >> 62)
    {
      goto LABEL_50;
    }

    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
    v76 = v3;
    if (v41)
    {
      v42 = 0;
      v3 = (v4 & 0xFFFFFFFFFFFFFF8);
      v43 = 0.0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x2319016F0](v42, v4);
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
LABEL_35:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v42 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            v41 = sub_22F741A00();
            goto LABEL_26;
          }

          v44 = *(v4 + 8 * v42 + 32);
          v45 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_35;
          }
        }

        v46 = *&v44[OBJC_IVAR___PGTripLocationScore__score];

        v43 = v43 + v46;
        ++v42;
        if (v45 == v41)
        {
          goto LABEL_37;
        }
      }
    }

    v43 = 0.0;
LABEL_37:
    if (v39 >> 62)
    {
      v47 = sub_22F741A00();
      if (v47)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_39:
        v48 = 0;
        v3 = (v39 & 0xFFFFFFFFFFFFFF8);
        v49 = 0.0;
        while (1)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x2319016F0](v48, v39);
            v51 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v48 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v50 = *(v39 + 8 * v48 + 32);
            v51 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }
          }

          v52 = *&v50[OBJC_IVAR___PGTripLocationScore__score];

          v49 = v49 + v52;
          ++v48;
          if (v51 == v47)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v49 = 0.0;
LABEL_53:
    if (v40 >> 62)
    {
      goto LABEL_65;
    }

    v53 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
LABEL_55:
      v54 = 0;
      v55 = 0.0;
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v56 = MEMORY[0x2319016F0](v54, v40);
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v54 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v56 = *(v40 + 8 * v54 + 32);
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v53 = sub_22F741A00();
            if (!v53)
            {
              break;
            }

            goto LABEL_55;
          }
        }

        v58 = *&v56[OBJC_IVAR___PGTripLocationScore__score];

        v55 = v55 + v58;
        ++v54;
        if (v57 == v53)
        {
          goto LABEL_67;
        }
      }
    }

    v55 = 0.0;
LABEL_67:
    if (v43 > v49)
    {
      v59 = v43;
    }

    else
    {
      v59 = v49;
    }

    if (v59 > v55)
    {
      v55 = v59;
    }

    sub_22F741690();
    if (v76)
    {
      v8 = v78;
      goto LABEL_74;
    }

    v61 = OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel;
    *(v78 + OBJC_IVAR___PGTripFeatureProcessor_currentTripLevel) = 3;

    if (v49 == v55)
    {
      *(v78 + v61) = 2;
    }

    else
    {
      v39 = v40;
    }

    v62 = MEMORY[0x277D84F90];

    if (v43 == v55)
    {
      *(v78 + v61) = 1;
    }

    else
    {
      v4 = v39;
    }

    if (v4 >> 62)
    {
      v63 = sub_22F741A00();
      if (v63)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v63 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v63)
      {
LABEL_84:
        v79 = v62;
        sub_22F741BD0();
        if (v63 < 0)
        {
          __break(1u);
          goto LABEL_111;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v64 = 0;
          do
          {
            v65 = v64 + 1;
            v66 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
            swift_unknownObjectRelease();
            sub_22F741BA0();
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v64 = v65;
          }

          while (v63 != v65);
        }

        else
        {
          v67 = 32;
          do
          {
            v68 = *(*(v4 + v67) + OBJC_IVAR___PGTripLocationScore_locationNode);
            sub_22F741BA0();
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v67 += 8;
            --v63;
          }

          while (v63);
        }

        v4 = v79;
        v62 = v78;
LABEL_94:
        if (v62[v61] <= 1u && v62[v61])
        {
        }

        else
        {
          v69 = sub_22F742040();

          if ((v69 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        v70 = sub_22F3001E8(a1);
        v71 = v70;
        if (!(v70 >> 62))
        {
          v72 = v70 & 0xFFFFFFFFFFFFFF8;
          if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {

            sub_22F742060();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35C8, &qword_22F784738);
            if (swift_dynamicCastMetatype() || (v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
            {
LABEL_106:
            }

            else
            {
              v74 = v72 + 32;
              while (swift_dynamicCastObjCProtocolConditional())
              {
                v74 += 8;
                if (!--v73)
                {
                  goto LABEL_106;
                }
              }

              v71 = v72 | 1;
            }

            goto LABEL_109;
          }

          goto LABEL_113;
        }

LABEL_111:
        if (sub_22F741A00() >= 1)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35C8, &qword_22F784738);
          v75 = sub_22F741D50();
          swift_bridgeObjectRelease_n();
          v71 = v75;
LABEL_109:
          v62[v61] = 4;
          v4 = v71;
LABEL_114:
          sub_22F7416A0();

          return v4;
        }

LABEL_113:

        goto LABEL_114;
      }
    }

    v4 = MEMORY[0x277D84F90];
    v62 = v78;
    goto LABEL_94;
  }

  v79 = sub_22F36C468(v38);
  v17 = v8;
  sub_22F30EB94(&v79, v17);
  if (!v3)
  {

    v22 = v79;
    goto LABEL_23;
  }

LABEL_115:

  __break(1u);
  return result;
}

uint64_t sub_22F2FEC74(unint64_t p_prots, char *a2)
{
  v5 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  swift_beginAccess();
  v51 = v5;
  v52 = a2;
  v6 = *&a2[v5];
  v65[0] = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_72;
  }

  v60 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = p_prots & 0xFFFFFFFFFFFFFF8;
  v63 = p_prots & 0xC000000000000001;

  v62 = p_prots & 0xFFFFFFFFFFFFFF8;
  v53 = v6;
  if (v7)
  {
    v9 = 0;
    v58 = v6 & 0xC000000000000001;
    v56 = v6 + 32;
    v54 = MEMORY[0x277D84F90];
    v55 = v7;
    v57 = p_prots >> 62;
    v2 = 0x277D82BB8;
    while (1)
    {
      if (v58)
      {
        v10 = MEMORY[0x2319016F0](v9, v53);
      }

      else
      {
        if (v9 >= *(v60 + 16))
        {
          goto LABEL_71;
        }

        v10 = *(v56 + 8 * v9);
      }

      v11 = v10;
      if (__OFADD__(v9++, 1))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        v60 = v6 & 0xFFFFFFFFFFFFFF8;
        v7 = sub_22F741A00();
        goto LABEL_3;
      }

      if (v57)
      {
        v13 = sub_22F741A00();
        if (!v13)
        {
          goto LABEL_5;
        }

LABEL_12:
        v14 = 0;
        while (1)
        {
          if (v63)
          {
            v15 = p_prots;
            v16 = MEMORY[0x2319016F0](v14, p_prots);
          }

          else
          {
            if (v14 >= *(v8 + 16))
            {
              goto LABEL_69;
            }

            v15 = p_prots;
            v16 = *(p_prots + 8 * v14 + 32);
          }

          p_prots = v16;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v6 = sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
          if (sub_22F741810())
          {
            break;
          }

          ++v14;
          v18 = v17 == v13;
          v8 = v62;
          p_prots = v15;
          if (v18)
          {
            goto LABEL_5;
          }
        }

        MEMORY[0x231900D00]();
        if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        v6 = v65;
        sub_22F741220();
        v54 = v65[0];
        v8 = v62;
        p_prots = v15;
        if (v9 == v55)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v13 = *(v8 + 16);
        if (v13)
        {
          goto LABEL_12;
        }

LABEL_5:

        if (v9 == v55)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_30:

  v19 = v54;
  if (v54 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_42;
    }
  }

  else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_42;
  }

  v61 = p_prots;
  if (*&v52[OBJC_IVAR___PGTripFeatureProcessor_locationFrequency])
  {
    v20 = *&v52[OBJC_IVAR___PGTripFeatureProcessor_locationFrequency];
  }

  else
  {
    v20 = sub_22F14FDF8(MEMORY[0x277D84F90]);
  }

  sub_22F30BB8C(v20);
  v22 = v21;

  v2 = *(v22 + 16);
  if (v2)
  {
    v23 = sub_22F10B588(*(v22 + 16), 0);
    v59 = sub_22F11C284(v65, v23 + 4, v2, v22);
    v24 = v65[0];
    v25 = v65[4];
    v26 = v52;

    sub_22F0FF590(v24);
    if (v59 != v2)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v19 = v54;
    v2 = v52;
  }

  else
  {
    v2 = v52;
    v27 = v52;
    v23 = MEMORY[0x277D84F90];
  }

  v65[0] = v23;
  v28 = v2;
  sub_22F30DB70(v65, v28);

  v29 = v65[0];
  v30 = *&v2[v51];
  p_prots = v61;
  if (v30 >> 62)
  {
    v42 = v65[0];
    v43 = sub_22F741A00();
    v29 = v42;
    v8 = v62;
    if (v43)
    {
      goto LABEL_41;
    }
  }

  else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:

    goto LABEL_42;
  }

  if (!*(v29 + 16))
  {
    goto LABEL_41;
  }

  v44 = *(v29 + 40);
  v45 = *(v29 + 32);

  if (v44 < 0.8)
  {

    goto LABEL_42;
  }

  if (v61 >> 62)
  {
    v2 = sub_22F741A00();
    if (v2)
    {
LABEL_83:
      v46 = 0;
      v31 = &qword_2810A8EC0;
      p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
      while (1)
      {
        if (v63)
        {
          v47 = MEMORY[0x2319016F0](v46, v61);
        }

        else
        {
          if (v46 >= *(v8 + 16))
          {
            goto LABEL_95;
          }

          v47 = *(v61 + 8 * v46 + 32);
        }

        v48 = v47;
        v8 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        if (sub_22F741810())
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_22F771EB0;
          *(v19 + 32) = v48;
          swift_beginAccess();
          v49 = v48;
          sub_22F10BBDC(&v64, 0xD000000000000018, 0x800000022F79A2C0);
          swift_endAccess();

          p_prots = v61;
          v8 = v62;
          goto LABEL_42;
        }

        ++v46;
        v18 = v8 == v2;
        v8 = v62;
        if (v18)
        {
          goto LABEL_105;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }
  }

  else
  {
    v2 = *(v8 + 16);
    if (v2)
    {
      goto LABEL_83;
    }
  }

LABEL_105:

  p_prots = v61;
  v19 = v54;
LABEL_42:
  if (v19 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_67;
    }
  }

  else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_67;
  }

  v31 = (p_prots >> 62);
  if (!(p_prots >> 62))
  {
    result = *(v8 + 16);
    if (result >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = *(v8 + 16);
    }

    if (result >= v33)
    {
      goto LABEL_49;
    }

    goto LABEL_113;
  }

LABEL_96:
  if ((p_prots & 0x8000000000000000) != 0)
  {
    v25 = p_prots;
  }

  else
  {
    v25 = v8;
  }

  v22 = sub_22F741A00();
  if (sub_22F741A00() < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (v22 >= 2)
  {
    v50 = 2;
  }

  else
  {
    v50 = v22;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v33 = v50;
  }

  else
  {
    v33 = 2;
  }

  result = sub_22F741A00();
  if (result >= v33)
  {
LABEL_49:
    if (v63 && v33)
    {
      type metadata accessor for TripLocationScore();

      sub_22F741B20();
      if (v33 != 1)
      {
        sub_22F741B20();
        if (v33 != 2)
        {
          sub_22F741B20();
        }
      }

      if (!v31)
      {
LABEL_55:
        v25 = 0;
        v34 = v8 + 32;
        v22 = (2 * v33) | 1;
        if (v22)
        {
LABEL_60:
          v38 = v8;
          v8 = v34;
          sub_22F742070();
          swift_unknownObjectRetain_n();
          v2 = v38;
          v39 = swift_dynamicCastClass();
          if (!v39)
          {
            swift_unknownObjectRelease();
            v39 = MEMORY[0x277D84F90];
          }

          v40 = *(v39 + 16);

          if (!__OFSUB__(v22 >> 1, v25))
          {
            if (v40 == (v22 >> 1) - v25)
            {
              v19 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (!v19)
              {
                v19 = MEMORY[0x277D84F90];
                goto LABEL_66;
              }

LABEL_67:
              v41 = sub_22F2FF678(v19);

              return v41;
            }

            goto LABEL_103;
          }

LABEL_102:
          __break(1u);
LABEL_103:
          swift_unknownObjectRelease();
          v34 = v8;
          v8 = v2;
        }

LABEL_59:
        sub_22F10AD88(v8, v34, v25, v22);
        v19 = v37;
LABEL_66:
        swift_unknownObjectRelease();
        goto LABEL_67;
      }
    }

    else
    {

      if (!v31)
      {
        goto LABEL_55;
      }
    }

    v8 = sub_22F741DB0();
    v25 = v35;
    v22 = v36;
    if (v36)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_113:
  __break(1u);
  return result;
}

BOOL sub_22F2FF4B4(double *a1, double *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    return v4 < v3;
  }

  v6 = *a2;
  v7 = *a1;
  v8 = objc_opt_self();
  v9 = *(a3 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:v7 locationHelper:v9];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F740E20();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = [v8 beautifiedLocationNodeStringWithPlaceNode:v6 locationHelper:v9];
  if (!v16)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    v20 = 0;
LABEL_18:

    return v20 == 0;
  }

  v17 = v16;
  v18 = sub_22F740E20();
  v20 = v19;

  if (!v14)
  {
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_16:

    return 1;
  }

  v21 = sub_22F740F10();
  v22 = sub_22F740F10();
  if (v21 == v22)
  {
    if (v12 == v18 && v14 == v20)
    {

      return 0;
    }

    else
    {
      v24 = sub_22F742040();

      return v24 & 1;
    }
  }

  else
  {
    v25 = v22;

    return v21 < v25;
  }
}

unint64_t sub_22F2FF678(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    if (sub_22F741A00() != 2)
    {
      goto LABEL_18;
    }

    result = sub_22F741A00();
    v2 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
    {
      goto LABEL_18;
    }

    v2 = 2;
  }

  if ((v1 & 0xC000000000000001) == 0)
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      v4 = v2 - 1;
      if (!__OFSUB__(v2, 1))
      {
        if (v4 < v3)
        {
          v5 = *(v1 + 32 + 8 * v4);
          v6 = *(v1 + 32);
          v7 = v5;
LABEL_9:
          v8 = v7;
          v9 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          v10 = *&v7[OBJC_IVAR___PGTripLocationScore__score];
          if (v9 > v10)
          {
            v11 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          }

          else
          {
            v11 = *&v7[OBJC_IVAR___PGTripLocationScore__score];
          }

          if (v10 >= v9)
          {
            v10 = *&v6[OBJC_IVAR___PGTripLocationScore__score];
          }

          if (v10 / v11 < 0.01)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v12 = swift_allocObject();
            v1 = v12;
            *(v12 + 16) = xmmword_22F771EB0;
            if (v9 == v11)
            {
              *(v12 + 32) = v6;
            }

            else
            {
              *(v12 + 32) = v8;
            }

            return v1;
          }

LABEL_18:

          return v1;
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = MEMORY[0x2319016F0](0, v1);
  result = v2 - 1;
  if (!__OFSUB__(v2, 1))
  {
    v7 = MEMORY[0x2319016F0](result, v1);
    goto LABEL_9;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22F2FF800(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v48 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_88:
    v6 = sub_22F741A00();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v8 = sub_22F741A00();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  LOBYTE(v10) = 0;
  if (!v8)
  {
    goto LABEL_55;
  }

  v11 = 0;
  v12 = v7;
  v41 = OBJC_IVAR___PGTripFeatureProcessor_processorHelper;
  v45 = a1 & 0xC000000000000001;
  v44 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1;
  v43 = a1 + 32;
  v39 = v8;
  v40 = a3;
  while (1)
  {
    if (v45)
    {
      v13 = MEMORY[0x2319016F0](v11, v38);
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v11 >= *(v44 + 16))
      {
        goto LABEL_87;
      }

      v13 = *(v43 + 8 * v11);
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        goto LABEL_86;
      }
    }

    v47 = v13;
    if (*&v13[OBJC_IVAR___PGTripLocationScore__score] > 0.0)
    {
      goto LABEL_11;
    }

    v42 = v11;
    a1 = *(a3 + v41);
    v15 = sub_22F3F1380(*&v13[OBJC_IVAR___PGTripLocationScore_locationNode]);
    v49 = v9;
    v46 = v15;
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        break;
      }

      goto LABEL_45;
    }

    v16 = sub_22F741A00();
    if (v16)
    {
      break;
    }

LABEL_45:
    v22 = v9;
LABEL_46:

    v11 = v42;
    if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
    {
      a1 = sub_22F741A00();
    }

    else
    {
      a1 = *(v22 + 16);
    }

    if (a1 / v12 <= 0.2)
    {

      LOBYTE(v10) = 1;
      goto LABEL_12;
    }

    LOBYTE(v10) = 1;
LABEL_11:
    a1 = &v50;
    sub_22F741BA0();
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
LABEL_12:
    if (v11 == v8)
    {
      goto LABEL_54;
    }
  }

  v17 = 0;
LABEL_21:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2319016F0](v17, v46);
  }

  else
  {
    if (v17 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

    v18 = *(v46 + 32 + 8 * v17);
  }

  v10 = v18;
  v14 = __OFADD__(v17++, 1);
  if (v14)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v48)
  {
    v19 = sub_22F741A00();
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = 0;
  while (1)
  {
    if (v19 == a3)
    {

      if (v17 != v16)
      {
        goto LABEL_21;
      }

LABEL_40:
      v22 = v49;
      v9 = MEMORY[0x277D84F90];
      v8 = v39;
      a3 = v40;
      goto LABEL_46;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2319016F0](a3, a2);
    }

    else
    {
      if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v20 = *(a2 + 8 * a3 + 32);
    }

    v21 = v20;
    if (__OFADD__(a3, 1))
    {
      break;
    }

    sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
    a1 = sub_22F741810();

    ++a3;
    if (a1)
    {
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      a1 = &v49;
      sub_22F741BB0();
      if (v17 == v16)
      {
        goto LABEL_40;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v9 = v50;
LABEL_55:
  if (v9 < 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = (v9 >> 62) & 1;
  }

  if (v23 != 1)
  {
    v24 = *(v9 + 16);
    if (v24 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = *(v9 + 16);
    }

    if (v24 >= v25)
    {
      goto LABEL_63;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v36 = sub_22F741A00();
  result = sub_22F741A00();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v36 >= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = v36;
  }

  if (v36 >= 0)
  {
    v25 = v37;
  }

  else
  {
    v25 = 2;
  }

  if (sub_22F741A00() < v25)
  {
    goto LABEL_98;
  }

LABEL_63:
  if ((v9 & 0xC000000000000001) != 0 && v25)
  {
    type metadata accessor for TripLocationScore();

    sub_22F741B20();
    if (v25 != 1)
    {
      sub_22F741B20();
      if (v25 != 2)
      {
        sub_22F741B20();
      }
    }
  }

  else
  {
  }

  if (!v23)
  {
    a1 = 0;
    v23 = v9 + 32;
    v25 = (2 * v25) | 1;
    if (v25)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v26 = sub_22F741DB0();
  v23 = v27;
  a1 = v28;
  v25 = v29;

  v9 = v26;
  if ((v25 & 1) == 0)
  {
LABEL_73:
    sub_22F10AD88(v9, v23, a1, v25);
    v31 = v30;
    goto LABEL_82;
  }

LABEL_74:
  sub_22F742070();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (__OFSUB__(v25 >> 1, a1))
  {
    goto LABEL_99;
  }

  if (v33 != (v25 >> 1) - a1)
  {
LABEL_100:
    swift_unknownObjectRelease_n();
    goto LABEL_73;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v31)
  {
    if (v10)
    {
      return v31;
    }

LABEL_83:
    v35 = sub_22F2FF678(v31);

    return v35;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_82:
  swift_unknownObjectRelease();
  if ((v10 & 1) == 0)
  {
    goto LABEL_83;
  }

  return v31;
}

unint64_t sub_22F2FFDF4(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v6 = sub_22F741A00();
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  if ((sub_22F305458() & 1) == 0)
  {
    if (v6 < 0)
    {
      v6 = 2;
      if (!v5)
      {
LABEL_9:
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 >= 2)
      {
        v6 = 2;
      }

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      a2 = v4;
    }

    else
    {
      a2 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_22F741A00() < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v7 = sub_22F741A00();
LABEL_16:
    if (v7 >= v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        type metadata accessor for TripLocationScore();

        v8 = 0;
        do
        {
          v9 = v8 + 1;
          sub_22F741B20();
          v8 = v9;
        }

        while (v6 != v9);
        if (!v5)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (!v5)
        {
LABEL_21:
          a2 = v4 & 0xFFFFFFFFFFFFFF8;
          v10 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v6) | 1;
          goto LABEL_25;
        }
      }

      a2 = sub_22F741DB0();
      v5 = v11;
      v4 = v12;
      if ((v12 & 1) == 0)
      {
LABEL_24:
        sub_22F10AD88(a2, v10, v5, v4);
        v4 = v13;
        swift_unknownObjectRelease();
        goto LABEL_32;
      }

LABEL_25:
      v2 = v10;
      sub_22F742070();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);

      if (!__OFSUB__(v4 >> 1, v5))
      {
        if (v15 == (v4 >> 1) - v5)
        {
          v4 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v4)
          {
            goto LABEL_32;
          }

          swift_unknownObjectRelease();
LABEL_31:
          v4 = MEMORY[0x277D84F90];
          goto LABEL_32;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      swift_unknownObjectRelease();
      v10 = v2;
      goto LABEL_24;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_32:
  v16 = sub_22F2FF678(v4);

  return v16;
}

BOOL sub_22F300018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR___PGTripLocationScore__score);
  v4 = *(a2 + OBJC_IVAR___PGTripLocationScore__score);
  if (v3 != v4)
  {
    return v4 < v3;
  }

  v8 = objc_opt_self();
  v9 = *(a3 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v10 = [v8 beautifiedLocationNodeStringWithPlaceNode:*(a1 + OBJC_IVAR___PGTripLocationScore_locationNode) locationHelper:v9];
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F740E20();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v16 = [v8 beautifiedLocationNodeStringWithPlaceNode:*(a2 + OBJC_IVAR___PGTripLocationScore_locationNode) locationHelper:v9];
  if (!v16)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    v20 = 0;
LABEL_18:

    return v20 == 0;
  }

  v17 = v16;
  v18 = sub_22F740E20();
  v20 = v19;

  if (!v14)
  {
    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_16:

    return 1;
  }

  v21 = sub_22F740F10();
  v22 = sub_22F740F10();
  if (v21 == v22)
  {
    if (v12 == v18 && v14 == v20)
    {

      return 0;
    }

    else
    {
      v24 = sub_22F742040();

      return v24 & 1;
    }
  }

  else
  {
    v25 = v22;

    return v21 < v25;
  }
}

uint64_t sub_22F3001E8(uint64_t a1)
{

  v3 = sub_22F1528F4(v2);

  sub_22F10A0C4(v3);
  v4 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_graph);
  v5 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v6 = v4;
  v7 = sub_22F741410();

  v24 = [v5 initWithSet:v7 graph:v6];

  v22 = objc_opt_self();
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  sub_22F11FA28(&qword_2810A90D0, &qword_2810A90E0, off_27887B100);
  v8 = sub_22F741410();
  v23 = [v22 containsAmusementParkPOIFromMomentNodes_];

  v9 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v10 = [v9 addressNodesByMomentNodeAdjacency];
  v11 = [v24 elementIdentifiers];
  v12 = [v10 targetsForSources_];

  v13 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:v6 elementIdentifiers:v12];
  v14 = [v13 set];

  sub_22F120634(0, &qword_2810A90A8, off_27887AB90);
  sub_22F11FA28(&qword_2810A90A0, &qword_2810A90A8, off_27887AB90);
  sub_22F741420();

  v15 = sub_22F741410();

  v16 = sub_22F741410();

  v17 = [v22 commonAOIComponentsForMomentNodes:v15 addressNodes:v16 aoiDisplayType:1 containsAmusementParkPOI:v23 locationHelper:v9];

  sub_22F120634(0, &qword_2810A9008, off_27887B6B0);
  sub_22F11FA28(&qword_2810A9000, &qword_2810A9008, off_27887B6B0);
  v18 = sub_22F741420();

  sub_22F2FBA00(v18);
  v20 = v19;

  swift_unknownObjectRelease();
  return v20;
}

void sub_22F300540(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v144 = [v5 childProgressReporterToCheckpoint_];
  v140 = v5;
  v142 = [v5 childProgressReporterToCheckpoint_];
  v6 = *(v4 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v7 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache;
  swift_beginAccess();
  v146 = v6;
  v141 = v7;
  v8 = *(v6 + v7);
  v145 = *(v8 + 16);
  v9 = -1 << *(v8 + 32);
  v10 = *(v8 + 64);
  v11 = ~v9;
  v12 = -v9;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v158 = v8;
  v159 = v8 + 64;
  v160 = v11;
  v161 = 0;
  v162 = v13 & v10;
  v163 = 0;
  v152 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v143 = OBJC_IVAR___PGTripFeatureProcessor_totalNumberOfAssets;
  v149 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;

  v14 = sub_22F3D4644();
  v151 = v4;
  if (!v15)
  {
LABEL_37:
    sub_22F0FF590(v158);
    sub_22F7416A0();
    if (v3)
    {

LABEL_131:
      return;
    }

    v157 = MEMORY[0x277D84FA0];
    v40 = -1 << *(*(v146 + v141) + 32);
    v41 = *(v146 + v141);
    v44 = *(v41 + 64);
    v42 = v41 + 64;
    v43 = v44;
    v45 = ~v40;
    v46 = -v40;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v158 = *(v146 + v141);
    v159 = v42;
    v160 = v45;
    v161 = 0;
    v162 = v47 & v43;
    v163 = 0;

LABEL_44:
    v48 = sub_22F3D4720();
    v153 = v49;
    if (!v49)
    {
      sub_22F0FF590(v158);
      v136 = v142;
      sub_22F7416A0();

      goto LABEL_136;
    }

    if (__OFADD__(v48, 1))
    {
      goto LABEL_146;
    }

    sub_22F741680();
    if (v3)
    {
      goto LABEL_135;
    }

    v50 = v157;
    v150 = 0;
    if ((v157 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();

      sub_22F7419C0();
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      sub_22F11FA28(&qword_2810A90D0, &qword_2810A90E0, off_27887B100);
      sub_22F741470();
      v50 = v164;
      v152 = v165;
      v51 = v166;
      v52 = v167;
      v53 = v168;
    }

    else
    {
      v54 = -1 << *(v157 + 32);
      v55 = *(v157 + 56);
      v152 = v157 + 56;
      v51 = ~v54;
      v56 = -v54;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v53 = v57 & v55;
      swift_bridgeObjectRetain_n();

      v52 = 0;
    }

    v148 = v51;
    v58 = (v51 + 64) >> 6;
    while (1)
    {
      if (v50 < 0)
      {
        v65 = sub_22F741A40();
        if (!v65 || (v154 = v65, sub_22F120634(0, &qword_2810A90E0, off_27887B100), v59 = swift_dynamicCast(), (v60 = v155[0]) == 0))
        {
LABEL_64:
          v66 = v153;

          sub_22F0FF590(v50);

          v67 = v150;
          sub_22F2FB90C(v66);
          v150 = v67;
          v68 = *(v146 + v141);
          v69 = MEMORY[0x277D84F90];
          v155[0] = MEMORY[0x277D84F90];
          v70 = 1 << *(v68 + 32);
          if (v70 < 64)
          {
            v71 = ~(-1 << v70);
          }

          else
          {
            v71 = -1;
          }

          v72 = v71 & *(v68 + 64);
          v73 = (v70 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v74 = 0;
          if (!v72)
          {
            goto LABEL_70;
          }

          do
          {
LABEL_68:
            while (1)
            {
              v75 = __clz(__rbit64(v72));
              v72 &= v72 - 1;
              v76 = (v74 << 9) | (8 * v75);
              v77 = *(*(v68 + 56) + v76);
              v78 = *(*(v68 + 48) + v76);

              v79 = sub_22F3014BC(v78, v77, v153);

              if (v79)
              {
                break;
              }

              if (!v72)
              {
                goto LABEL_70;
              }
            }

            MEMORY[0x231900D00]();
            if (*((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22F7411C0();
            }

            sub_22F741220();
            v69 = v155[0];
          }

          while (v72);
LABEL_70:
          while (2)
          {
            v80 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if (v80 < v73)
            {
              v72 = *(v68 + 64 + 8 * v80);
              ++v74;
              if (v72)
              {
                v74 = v80;
                goto LABEL_68;
              }

              continue;
            }

            break;
          }

          if (v69 >> 62)
          {
            v135 = sub_22F741A00();
            v3 = v150;
            if (v135 > 1)
            {
              v81 = v135;
              v82 = sub_22F741A00();
              goto LABEL_81;
            }

LABEL_43:

            goto LABEL_44;
          }

          v81 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v3 = v150;
          if (v81 <= 1)
          {
            goto LABEL_43;
          }

          v82 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_81:
          v83 = 0;
          v84 = v69 & 0xC000000000000001;
          while (v82 != v83)
          {
            if (v84)
            {
              v85 = MEMORY[0x2319016F0](v83, v69);
            }

            else
            {
              if (v83 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_140;
              }

              v85 = *(v69 + 8 * v83 + 32);
            }

            v86 = v85;
            if (__OFADD__(v83, 1))
            {
              goto LABEL_139;
            }

            [v85 popularityScore];
            v88 = v87;

            ++v83;
            if (v88 <= 0.0)
            {
              goto LABEL_43;
            }
          }

          v155[0] = MEMORY[0x277D84F90];
          sub_22F146BD4(0, v81, 0);
          v89 = 0;
          v90 = v155[0];
          do
          {
            if (v84)
            {
              v91 = MEMORY[0x2319016F0](v89, v69);
            }

            else
            {
              v91 = *(v69 + 8 * v89 + 32);
            }

            v92 = v91;
            [v91 popularityScore];
            v155[0] = v90;
            v95 = *(v90 + 16);
            v94 = *(v90 + 24);
            if (v95 >= v94 >> 1)
            {
              v97 = v93;
              sub_22F146BD4((v94 > 1), v95 + 1, 1);
              v93 = v97;
              v90 = v155[0];
            }

            ++v89;
            *(v90 + 16) = v95 + 1;
            v96 = v90 + 16 * v95;
            *(v96 + 32) = v92;
            *(v96 + 40) = v93;
          }

          while (v81 != v89);

          v98 = *(v90 + 16);
          if (v98)
          {
            v99 = (v90 + 40);
            v100 = *(v90 + 40);
            v101 = *(v90 + 32);
            v102 = 1;
LABEL_99:
            v103 = &v99[2 * v102];
            while (v98 != v102)
            {
              if (v102 >= *(v90 + 16))
              {
                goto LABEL_142;
              }

              ++v102;
              v104 = v103 + 2;
              v105 = *v103;
              v106 = v100 < *v103;
              v103 += 2;
              if (v106)
              {
                v107 = v101;
                v108 = *(v104 - 3);

                v101 = v108;
                v100 = v105;
                goto LABEL_99;
              }
            }

            if (v100 != 0.0)
            {
              v153 = v101;
              swift_beginAccess();
              v109 = 0;
              while (v109 < *(v90 + 16))
              {
                v110 = *v99;
                v111 = *(v151 + v149);
                v112 = *(v111 + 16);
                v113 = *(v99 - 1);
                if (v112)
                {

                  v114 = sub_22F12350C(v113);
                  v115 = 0.0;
                  if (v116)
                  {
                    v115 = *(*(v111 + 56) + 8 * v114);
                  }
                }

                else
                {
                  v115 = 0.0;
                }

                v117 = v151;
                v118 = v149;
                swift_beginAccess();
                v119 = v113;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v154 = *(v117 + v118);
                v121 = v154;
                *(v117 + v118) = 0x8000000000000000;
                v122 = sub_22F12350C(v119);
                v124 = v121[2];
                v125 = (v123 & 1) == 0;
                v126 = __OFADD__(v124, v125);
                v127 = v124 + v125;
                if (v126)
                {
                  goto LABEL_144;
                }

                v128 = v123;
                if (v121[3] >= v127)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v134 = v122;
                    sub_22F1377B8();
                    v122 = v134;
                  }
                }

                else
                {
                  sub_22F12B498(v127, isUniquelyReferenced_nonNull_native);
                  v122 = sub_22F12350C(v119);
                  if ((v128 & 1) != (v129 & 1))
                  {
                    goto LABEL_148;
                  }
                }

                v130 = fabs(v110 / v100) * v115;
                v131 = v154;
                if (v128)
                {
                  *(v154[7] + 8 * v122) = v130;
                }

                else
                {
                  v154[(v122 >> 6) + 8] |= 1 << v122;
                  *(v131[6] + 8 * v122) = v119;
                  *(v131[7] + 8 * v122) = v130;
                  v132 = v131[2];
                  v126 = __OFADD__(v132, 1);
                  v133 = v132 + 1;
                  if (v126)
                  {
                    goto LABEL_145;
                  }

                  v131[2] = v133;
                }

                ++v109;
                *(v151 + v149) = v131;
                swift_endAccess();

                v99 += 2;
                if (v98 == v109)
                {

                  goto LABEL_127;
                }
              }

              goto LABEL_143;
            }
          }

LABEL_127:

          v3 = v150;
          goto LABEL_44;
        }
      }

      else
      {
        v63 = v52;
        for (i = v53; !i; ++v63)
        {
          v52 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_138;
          }

          if (v52 >= v58)
          {
            goto LABEL_64;
          }

          i = *(v152 + 8 * v52);
        }

        v53 = (i - 1) & i;
        v59 = *(*(v50 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(i)))));
        v60 = v59;
        if (!v59)
        {
          goto LABEL_64;
        }
      }

      v155[0] = v60;
      MEMORY[0x28223BE20](v59);
      v138 = v155;
      v61 = v150;
      v62 = sub_22F1C39A8(sub_22F30F9F0, &v137, v153);
      v150 = v61;

      if (v62)
      {
        swift_bridgeObjectRelease_n();
        sub_22F0FF590(v50);
        goto LABEL_127;
      }
    }
  }

  v17 = v16;
  while (1)
  {
    v148 = v15;
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      v39 = v14;
      v19 = sub_22F741A00();
      v14 = v39;
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v14;
    v150 = v3;
    if (v19)
    {
      break;
    }

    v21 = 0.0;
LABEL_30:

    v33 = v148;
    v34 = sub_22F3F0DEC(v148);
    v3 = v150;
    if (v150)
    {
      sub_22F0FF590(v158);

      goto LABEL_131;
    }

    if (v34 / *(v4 + v143) >= 0.2)
    {
      v35 = v149;
      swift_beginAccess();
      v36 = v148;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = *(v4 + v149);
      *(v4 + v149) = 0x8000000000000000;
      sub_22F1322B8(v36, v37, v21);

      *(v4 + v35) = v155[0];
      swift_endAccess();
    }

    if (__OFADD__(v147, 1))
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      v139 = 0;
      v138 = 1068;
      sub_22F741D40();
      __break(1u);
LABEL_148:
      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
      sub_22F7420C0();
      __break(1u);
      return;
    }

    sub_22F741680();

    v14 = sub_22F3D4644();
    v17 = v38;
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  v20 = 0;
  v153 = (v17 & 0xC000000000000001);
  v21 = 0.0;
  while (1)
  {
    if (v153)
    {
      v22 = MEMORY[0x2319016F0](v20, v17);
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_134;
      }

      v22 = *(v17 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v25 = v18;
    v26 = *(v4 + v152);
    v27 = 0.0;
    if (!v26)
    {
      goto LABEL_11;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v28 = v22;

      v29 = sub_22F741D00();

      if (!v29)
      {
        v4 = v151;
LABEL_11:
        v18 = v25;
        goto LABEL_12;
      }

      v155[0] = v29;
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      v30 = v156;
      v4 = v151;
      v18 = v25;
      if (!v156)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!*(v26 + 16))
      {
        goto LABEL_11;
      }

      v31 = sub_22F1234BC(v23);
      if ((v32 & 1) == 0)
      {

        goto LABEL_11;
      }

      v30 = *(*(v26 + 56) + 8 * v31);

      v18 = v25;
      if (!v30)
      {
        goto LABEL_12;
      }
    }

    if (*(v30 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
    {
      goto LABEL_147;
    }

    v27 = *(v30 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);

LABEL_12:

    v21 = v21 + v27;
    ++v20;
    if (v24 == v19)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  sub_22F0FF590(v158);

LABEL_136:
}

id sub_22F3014BC(void *a1, unint64_t a2, unint64_t a3)
{
  v15 = a1;
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_16:
    v6 = sub_22F741A00();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2319016F0](i, a2);
    }

    else
    {
      if (i >= *(v5 + 16))
      {
        goto LABEL_15;
      }

      v8 = *(a2 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v16 = v8;
    MEMORY[0x28223BE20](v8);
    v14[2] = &v16;
    v10 = sub_22F1C39A8(sub_22F30F9F0, v14, a3);

    if (v10)
    {
      v11 = v15;
      v12 = v15;
      return v11;
    }
  }

  return 0;
}

char *sub_22F3015FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v219 = MEMORY[0x277D84FA0];
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = *&v3[OBJC_IVAR___PGTripFeatureProcessor_processorHelper];
  v10 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v216 = v9;
  v191 = v10;
  v11 = *(v9 + v10);
  v190 = a3;
  v12 = v3;

  v14 = sub_22F1528F4(v13);

  v192 = a1;
  v194 = v12;
  v15 = sub_22F3079D4(a1, v6, v8, v11, v14);

  v16 = v15 >> 62;
  if (v15 >> 62)
  {
    goto LABEL_278;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v218[0] = MEMORY[0x277D84F90];
    sub_22F146A6C(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
      goto LABEL_290;
    }

    v19 = 0;
    v20 = v218[0];
    do
    {
      v21 = v20;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2319016F0](v19, v15);
      }

      else
      {
        v22 = *(v15 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = sub_22F3F0FF4(*&v22[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v217)
      {

        v217 = 0;
        v25 = 0.0;
      }

      else
      {
        v26 = v24;
        v217 = 0;

        v25 = v26;
      }

      v20 = v21;
      v218[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        sub_22F146A6C((v27 > 1), v28 + 1, 1);
        v20 = v218[0];
      }

      ++v19;
      *(v20 + 16) = v29;
      *(v20 + 8 * v28 + 32) = v25;
    }

    while (v17 != v19);
LABEL_18:
    if (v29 > 3)
    {
      v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = (v20 + 48);
      v31 = 0.0;
      v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v31 = v31 + *(v32 - 2) + *(v32 - 1) + *v32 + v32[1];
        v32 += 4;
        v33 -= 4;
      }

      while (v33);
      if (v29 == v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0.0;
    }

    v34 = v29 - v30;
    v35 = (v20 + 8 * v30 + 32);
    do
    {
      v36 = *v35++;
      v31 = v31 + v36;
      --v34;
    }

    while (v34);
LABEL_25:
    v37 = v29;
    goto LABEL_26;
  }

  v29 = *(MEMORY[0x277D84F90] + 16);
  if (v29)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v37 = 0.0;
  v20 = MEMORY[0x277D84F90];
  v31 = 0.0;
LABEL_26:
  v193 = v20;
  v38 = sub_22F302C84(v20);
  v218[0] = v18;
  if (v16)
  {
    v39 = sub_22F741A00();
    if (v39)
    {
      goto LABEL_28;
    }

LABEL_40:
    v49 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v39 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_40;
  }

LABEL_28:
  v40 = 0;
  v41 = v15 & 0xC000000000000001;
  v42 = v15 & 0xFFFFFFFFFFFFFF8;
  v16 = 0x277D27000uLL;
  v43 = v31 / v37;
  v212 = v15;
  do
  {
    if (v41)
    {
      v44 = MEMORY[0x2319016F0](v40, v15);
    }

    else
    {
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_266;
      }

      v44 = *(v15 + 8 * v40 + 32);
    }

    v45 = v44;
    v46 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_265;
    }

    v47 = sub_22F3F0FF4(*&v44[OBJC_IVAR___PGTripLocationScore_locationNode]);
    if (v217)
    {

      v50 = v218[0];
      goto LABEL_131;
    }

    [objc_opt_self() cumulativeNormalDistributionForX:v47 mu:v43 sigma:v38];
    if (v48 < 0.15)
    {
    }

    else
    {
      sub_22F741BA0();
      sub_22F741BE0();
      v15 = v212;
      sub_22F741BF0();
      sub_22F741BB0();
    }

    ++v40;
  }

  while (v46 != v39);
  v49 = v218[0];
LABEL_43:

  if ((v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
  {
    goto LABEL_284;
  }

  v209 = *(v49 + 16);
LABEL_46:
  v51 = MEMORY[0x277D84F90];
  v208 = v49;
  if (v209)
  {
    v15 = 0;
    v202 = v49 + 32;
    v205 = v49 & 0xC000000000000001;
    while (1)
    {
      if (v205)
      {
        v52 = MEMORY[0x2319016F0](v15, v49);
      }

      else
      {
        if (v15 >= *(v49 + 16))
        {
          goto LABEL_263;
        }

        v52 = *(v202 + 8 * v15);
      }

      v53 = v52;
      v54 = __OFADD__(v15++, 1);
      if (v54)
      {
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        v17 = sub_22F741A00();
        goto LABEL_3;
      }

      v55 = *&v52[OBJC_IVAR___PGTripLocationScore_momentNodes];
      v56 = v55 >> 62;
      v57 = v55;
      v58 = v55 >> 62 ? sub_22F741A00() : *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v51 >> 62;
      if (v51 >> 62)
      {
        v76 = sub_22F741A00();
        v61 = v76 + v58;
        if (__OFADD__(v76, v58))
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }
      }

      else
      {
        v60 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v61 = v60 + v58;
        if (__OFADD__(v60, v58))
        {
          goto LABEL_84;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v59)
      {
        goto LABEL_64;
      }

      v62 = v51 & 0xFFFFFFFFFFFFFF8;
      if (v61 <= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v63 = v58;
        goto LABEL_66;
      }

LABEL_65:
      v63 = v58;
      v51 = sub_22F741B50();
      v62 = v51 & 0xFFFFFFFFFFFFFF8;
LABEL_66:
      v16 = *(v62 + 16);
      v64 = *(v62 + 24);
      v65 = v57;
      if (v56)
      {
        v67 = v62;
        v68 = sub_22F741A00();
        v62 = v67;
        v65 = v57;
        v66 = v68;
        if (!v68)
        {
LABEL_48:

          v49 = v208;
          if (v63 > 0)
          {
            goto LABEL_264;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v66 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v66)
        {
          goto LABEL_48;
        }
      }

      if (((v64 >> 1) - v16) < v63)
      {
        goto LABEL_267;
      }

      v16 = v62 + 8 * v16 + 32;
      v213 = v62;
      if (v56)
      {
        if (v66 < 1)
        {
          goto LABEL_269;
        }

        v196 = v63;
        v199 = v51;
        v69 = v65;
        sub_22F30F98C();
        for (i = 0; i != v66; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
          v71 = sub_22F14E004(v218, i, v69);
          v73 = *v72;
          (v71)(v218, 0);
          *(v16 + 8 * i) = v73;
        }

        v49 = v208;
        v51 = v199;
        v63 = v196;
      }

      else
      {
        sub_22F120634(0, &qword_2810A90E0, off_27887B100);
        swift_arrayInitWithCopy();

        v49 = v208;
      }

      if (v63 > 0)
      {
        v74 = *(v213 + 16);
        v54 = __OFADD__(v74, v63);
        v75 = v74 + v63;
        if (v54)
        {
          goto LABEL_268;
        }

        *(v213 + 16) = v75;
      }

LABEL_49:
      if (v15 == v209)
      {
        goto LABEL_85;
      }
    }

    if (!v59)
    {
      goto LABEL_65;
    }

LABEL_64:
    sub_22F741A00();
    goto LABEL_65;
  }

LABEL_85:
  sub_22F2FB90C(v51);
  v50 = v217;

  sub_22F741690();
  if (v217)
  {

    goto LABEL_87;
  }

  v16 = @"State";
  v77 = sub_22F740E20();
  v79 = v78;
  v80 = *(v216 + v191);
  v81 = v219;

  v17 = sub_22F3079D4(v192, v77, v79, v80, v81);

  v15 = v17 >> 62;
  if (!(v17 >> 62))
  {
    v82 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_90;
  }

LABEL_290:
  v82 = sub_22F741A00();
LABEL_90:
  if (!v82)
  {
    v84 = MEMORY[0x277D84F90];
    v92 = *(MEMORY[0x277D84F90] + 16);
    if (v92)
    {
      goto LABEL_105;
    }

    v100 = 0.0;
    v94 = 0.0;
    goto LABEL_113;
  }

  v218[0] = MEMORY[0x277D84F90];
  sub_22F146A6C(0, v82 & ~(v82 >> 63), 0);
  if (v82 < 0)
  {
    __break(1u);
  }

  else
  {
    v83 = 0;
    v84 = v218[0];
    v16 = v17 & 0xC000000000000001;
    do
    {
      if (v16)
      {
        v85 = MEMORY[0x2319016F0](v83, v17);
      }

      else
      {
        v85 = *(v17 + 8 * v83 + 32);
      }

      v86 = v85;
      v87 = sub_22F3F0FF4(*&v85[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v217)
      {

        v217 = 0;
        v88 = 0.0;
      }

      else
      {
        v217 = 0;
        v89 = v87;

        v88 = v89;
      }

      v218[0] = v84;
      v91 = *(v84 + 16);
      v90 = *(v84 + 24);
      v92 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        sub_22F146A6C((v90 > 1), v91 + 1, 1);
        v84 = v218[0];
      }

      ++v83;
      *(v84 + 16) = v92;
      *(v84 + 8 * v91 + 32) = v88;
    }

    while (v82 != v83);
LABEL_105:
    if (v92 <= 3)
    {
      v93 = 0;
      v94 = 0.0;
      goto LABEL_110;
    }

    v93 = v92 & 0xFFFFFFFFFFFFFFFCLL;
    v95 = (v84 + 48);
    v94 = 0.0;
    v96 = v92 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v94 = v94 + *(v95 - 2) + *(v95 - 1) + *v95 + v95[1];
      v95 += 4;
      v96 -= 4;
    }

    while (v96);
    if (v92 != v93)
    {
LABEL_110:
      v97 = v92 - v93;
      v98 = (v84 + 8 * v93 + 32);
      do
      {
        v99 = *v98++;
        v94 = v94 + v99;
        --v97;
      }

      while (v97);
    }

    v100 = v92;
LABEL_113:
    v101 = sub_22F302C84(v84);
    v218[0] = MEMORY[0x277D84F90];
    if (v15)
    {
      v102 = sub_22F741A00();
    }

    else
    {
      v102 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = a2;
    if (v102)
    {
      v103 = 0;
      v104 = v94 / v100;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v105 = MEMORY[0x2319016F0](v103, v17);
        }

        else
        {
          if (v103 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_275;
          }

          v105 = *(v17 + 8 * v103 + 32);
        }

        v106 = v105;
        v16 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_274;
        }

        v107 = sub_22F3F0FF4(*&v105[OBJC_IVAR___PGTripLocationScore_locationNode]);
        if (v217)
        {
          break;
        }

        [objc_opt_self() cumulativeNormalDistributionForX:v107 mu:v104 sigma:v101];
        if (v108 < 0.15)
        {
        }

        else
        {
          sub_22F741BA0();
          sub_22F741BE0();
          v15 = a2;
          sub_22F741BF0();
          sub_22F741BB0();
        }

        ++v103;
        if (v16 == v102)
        {
          v109 = v218[0];
          goto LABEL_134;
        }
      }

LABEL_130:
      v50 = v218[0];

LABEL_131:

      return v50;
    }

    v109 = MEMORY[0x277D84F90];
LABEL_134:

    if ((v109 & 0x8000000000000000) != 0 || (v109 & 0x4000000000000000) != 0)
    {
LABEL_292:
      v203 = sub_22F741A00();
    }

    else
    {
      v203 = *(v109 + 16);
    }

    v111 = MEMORY[0x277D84F90];
    v193 = v109;
    if (v203)
    {
      v112 = 0;
      v197 = v109 + 32;
      v200 = v109 & 0xC000000000000001;
      while (1)
      {
        if (v200)
        {
          v113 = MEMORY[0x2319016F0](v112, v109);
        }

        else
        {
          if (v112 >= *(v109 + 16))
          {
            goto LABEL_271;
          }

          v113 = *(v197 + 8 * v112);
        }

        v114 = v113;
        v54 = __OFADD__(v112++, 1);
        if (v54)
        {
          goto LABEL_270;
        }

        v115 = *&v113[OBJC_IVAR___PGTripLocationScore_momentNodes];
        v16 = v115 >> 62;
        v116 = v115;
        if (v115 >> 62)
        {
          v117 = sub_22F741A00();
        }

        else
        {
          v117 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v118 = v111 >> 62;
        if (v111 >> 62)
        {
          v119 = sub_22F741A00();
        }

        else
        {
          v119 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v214 = v117;
        v54 = __OFADD__(v119, v117);
        v120 = v119 + v117;
        if (v54)
        {
          goto LABEL_272;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v118)
        {
          goto LABEL_156;
        }

        v121 = v111 & 0xFFFFFFFFFFFFFF8;
        if (v120 <= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v210 = v111;
          goto LABEL_158;
        }

LABEL_157:
        v210 = sub_22F741B50();
        v121 = v210 & 0xFFFFFFFFFFFFFF8;
LABEL_158:
        v15 = *(v121 + 16);
        v49 = *(v121 + 24);
        v122 = v116;
        if (v16)
        {
          v124 = v121;
          v125 = sub_22F741A00();
          v121 = v124;
          v122 = v116;
          v123 = v125;
          if (!v125)
          {
LABEL_139:

            v111 = v210;
            v15 = a2;
            if (v214 > 0)
            {
              goto LABEL_273;
            }

            goto LABEL_140;
          }
        }

        else
        {
          v123 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v123)
          {
            goto LABEL_139;
          }
        }

        if (((v49 >> 1) - v15) < v214)
        {
          goto LABEL_276;
        }

        v126 = v121 + 8 * v15 + 32;
        v206 = v121;
        if (v16)
        {
          if (v123 < 1)
          {
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            __break(1u);
LABEL_284:
            v209 = sub_22F741A00();
            goto LABEL_46;
          }

          sub_22F30F98C();
          for (j = 0; j != v123; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
            v16 = sub_22F14E004(v218, j, v122);
            v130 = *v129;
            (v16)(v218, 0);
            *(v126 + 8 * j) = v130;
          }

          v109 = v193;
          v127 = v214;
        }

        else
        {
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          v127 = v214;
          swift_arrayInitWithCopy();
        }

        v15 = a2;
        v111 = v210;
        if (v127 > 0)
        {
          v131 = *(v206 + 16);
          v54 = __OFADD__(v131, v127);
          v132 = v131 + v127;
          if (v54)
          {
            goto LABEL_277;
          }

          *(v206 + 16) = v132;
        }

LABEL_140:
        if (v112 == v203)
        {
          goto LABEL_175;
        }
      }

      if (!v118)
      {
        goto LABEL_157;
      }

LABEL_156:
      sub_22F741A00();
      goto LABEL_157;
    }

LABEL_175:
    sub_22F2FB90C(v111);
    v50 = v217;

    sub_22F741690();
    if (v217)
    {

      goto LABEL_87;
    }

    v133 = sub_22F740E20();
    v135 = v134;
    v136 = *(v216 + v191);
    v137 = v219;

    v17 = sub_22F3079D4(v192, v133, v135, v136, v137);

    v15 = v17 >> 62;
    if (!(v17 >> 62))
    {
      v138 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_179;
    }
  }

  v138 = sub_22F741A00();
LABEL_179:
  if (!v138)
  {
    v148 = *(MEMORY[0x277D84F90] + 16);
    if (!v148)
    {
      v156 = 0.0;
      v140 = MEMORY[0x277D84F90];
      v150 = 0.0;
      v157 = MEMORY[0x277D84F90];
LABEL_203:
      v158 = sub_22F302C84(v140);
      v218[0] = v157;
      if (v15)
      {
        v16 = sub_22F741A00();
      }

      else
      {
        v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = a2;
      v191 = v140;
      if (v16)
      {
        v159 = 0;
        v160 = v150 / v156;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v161 = MEMORY[0x2319016F0](v159, v17);
          }

          else
          {
            if (v159 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_287;
            }

            v161 = *(v17 + 8 * v159 + 32);
          }

          v162 = v161;
          v163 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_286;
          }

          v164 = sub_22F3F0FF4(*&v161[OBJC_IVAR___PGTripLocationScore_locationNode]);
          if (v217)
          {
            break;
          }

          [objc_opt_self() cumulativeNormalDistributionForX:v164 mu:v160 sigma:v158];
          if (v165 < 0.15)
          {
          }

          else
          {
            sub_22F741BA0();
            sub_22F741BE0();
            v15 = a2;
            sub_22F741BF0();
            sub_22F741BB0();
          }

          ++v159;
          if (v163 == v16)
          {
            v166 = v218[0];
            goto LABEL_221;
          }
        }

        goto LABEL_130;
      }

      v166 = MEMORY[0x277D84F90];
LABEL_221:

      v49 = v208;
      if (v166 < 0 || (v166 & 0x4000000000000000) != 0)
      {
        v167 = sub_22F741A00();
        if (v167)
        {
          goto LABEL_224;
        }
      }

      else
      {
        v167 = *(v166 + 16);
        if (v167)
        {
LABEL_224:
          v109 = 0;
          v201 = v166 + 32;
          v204 = v166 & 0xC000000000000001;
          v168 = MEMORY[0x277D84F90];
          v198 = v167;
          v192 = v166;
          while (1)
          {
            if (v204)
            {
              v169 = MEMORY[0x2319016F0](v109, v166);
            }

            else
            {
              if (v109 >= *(v166 + 16))
              {
                goto LABEL_281;
              }

              v169 = *(v201 + 8 * v109);
            }

            v170 = v169;
            v54 = __OFADD__(v109++, 1);
            if (v54)
            {
              goto LABEL_280;
            }

            v171 = *&v169[OBJC_IVAR___PGTripLocationScore_momentNodes];
            v16 = v171 >> 62;
            v216 = v171;
            if (v171 >> 62)
            {
              v172 = sub_22F741A00();
            }

            else
            {
              v172 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v173 = v168 >> 62;
            if (v168 >> 62)
            {
              v174 = sub_22F741A00();
            }

            else
            {
              v174 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v215 = v172;
            v54 = __OFADD__(v174, v172);
            v175 = v174 + v172;
            if (v54)
            {
              goto LABEL_282;
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
            {
              break;
            }

            if (v173)
            {
              goto LABEL_242;
            }

            v17 = v168 & 0xFFFFFFFFFFFFFF8;
            if (v175 <= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v211 = v168;
              goto LABEL_244;
            }

LABEL_243:
            v211 = sub_22F741B50();
            v17 = v211 & 0xFFFFFFFFFFFFFF8;
LABEL_244:
            v15 = *(v17 + 16);
            v176 = *(v17 + 24);
            v177 = v216;
            if (v16)
            {
              v179 = sub_22F741A00();
              v177 = v216;
              v178 = v179;
              if (!v179)
              {
LABEL_225:

                v168 = v211;
                if (v215 > 0)
                {
                  goto LABEL_283;
                }

                goto LABEL_226;
              }
            }

            else
            {
              v178 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v178)
              {
                goto LABEL_225;
              }
            }

            if (((v176 >> 1) - v15) < v215)
            {
              goto LABEL_288;
            }

            v15 = v17 + 8 * v15 + 32;
            v207 = v17;
            if (v16)
            {
              if (v178 < 1)
              {
                __break(1u);
                goto LABEL_292;
              }

              sub_22F30F98C();
              v181 = 0;
              v17 = v216;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
                v16 = sub_22F14E004(v218, v181, v216);
                v183 = *v182;
                (v16)(v218, 0);
                *(v15 + 8 * v181++) = v183;
              }

              while (v178 != v181);

              v49 = v208;
              v166 = v192;
              v180 = v215;
            }

            else
            {
              v17 = v177;
              sub_22F120634(0, &qword_2810A90E0, off_27887B100);
              v180 = v215;
              swift_arrayInitWithCopy();
            }

            v15 = a2;
            v168 = v211;
            if (v180 > 0)
            {
              v184 = *(v207 + 16);
              v54 = __OFADD__(v184, v180);
              v185 = v184 + v180;
              if (v54)
              {
                goto LABEL_289;
              }

              *(v207 + 16) = v185;
            }

LABEL_226:
            if (v109 == v198)
            {
              goto LABEL_297;
            }
          }

          if (!v173)
          {
            goto LABEL_243;
          }

LABEL_242:
          sub_22F741A00();
          goto LABEL_243;
        }
      }

      v168 = MEMORY[0x277D84F90];
LABEL_297:
      sub_22F2FB90C(v168);
      v50 = v217;

      sub_22F7416A0();
      if (!v217)
      {

        *v190 = sub_22F10AD6C(v219);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35F0, &qword_22F784758);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F7707D0;
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v187;
        *(inited + 48) = v166;
        *(inited + 56) = sub_22F740E20();
        *(inited + 64) = v188;
        *(inited + 72) = v193;
        *(inited + 80) = sub_22F740E20();
        *(inited + 88) = v189;
        *(inited + 96) = v49;
        v50 = sub_22F14FDE4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35F8, &unk_22F784760);
        swift_arrayDestroy();

        return v50;
      }

LABEL_87:

      return v50;
    }

    v140 = MEMORY[0x277D84F90];
LABEL_195:
    if (v148 > 3)
    {
      v149 = v148 & 0xFFFFFFFFFFFFFFFCLL;
      v151 = (v140 + 48);
      v150 = 0.0;
      v152 = v148 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v150 = v150 + *(v151 - 2) + *(v151 - 1) + *v151 + v151[1];
        v151 += 4;
        v152 -= 4;
      }

      while (v152);
      if (v148 == v149)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v149 = 0;
      v150 = 0.0;
    }

    v153 = v148 - v149;
    v154 = (v140 + 8 * v149 + 32);
    do
    {
      v155 = *v154++;
      v150 = v150 + v155;
      --v153;
    }

    while (v153);
LABEL_202:
    v156 = v148;
    v157 = MEMORY[0x277D84F90];
    goto LABEL_203;
  }

  v218[0] = MEMORY[0x277D84F90];
  result = sub_22F146A6C(0, v138 & ~(v138 >> 63), 0);
  if ((v138 & 0x8000000000000000) == 0)
  {
    v139 = 0;
    v140 = v218[0];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v141 = MEMORY[0x2319016F0](v139, v17);
      }

      else
      {
        v141 = *(v17 + 8 * v139 + 32);
      }

      v142 = v141;
      v143 = sub_22F3F0FF4(*&v141[OBJC_IVAR___PGTripLocationScore_locationNode]);
      if (v217)
      {

        v217 = 0;
        v144 = 0.0;
      }

      else
      {
        v145 = v143;
        v217 = 0;

        v144 = v145;
      }

      v218[0] = v140;
      v147 = *(v140 + 16);
      v146 = *(v140 + 24);
      v148 = v147 + 1;
      if (v147 >= v146 >> 1)
      {
        sub_22F146A6C((v146 > 1), v147 + 1, 1);
        v140 = v218[0];
      }

      ++v139;
      *(v140 + 16) = v148;
      *(v140 + 8 * v147 + 32) = v144;
    }

    while (v138 != v139);
    goto LABEL_195;
  }

  __break(1u);
  return result;
}

long double sub_22F302C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return sqrt(-0.0);
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    goto LABEL_10;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

LABEL_10:
  v9 = v1;
  v10 = v3 / v1;
  if (v1 > 3)
  {
    v11 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    v13 = vdupq_lane_s64(*&v10, 0);
    v14 = (a1 + 48);
    v12 = 0.0;
    v15 = v1 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vsubq_f64(v14[-1], v13);
      v17 = vsubq_f64(*v14, v13);
      v18 = vmulq_f64(v16, v16);
      v19 = vmulq_f64(v17, v17);
      v12 = v12 + v18.f64[0] + v18.f64[1] + v19.f64[0] + v19.f64[1];
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v1 == v11)
    {
      return sqrt(v12 / (v9 + -1.0));
    }
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
  }

  v20 = v1 - v11;
  v21 = (a1 + 8 * v11 + 32);
  do
  {
    v22 = *v21++;
    v12 = v12 + (v22 - v10) * (v22 - v10);
    --v20;
  }

  while (v20);
  return sqrt(v12 / (v9 + -1.0));
}

void *sub_22F302DAC()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v1)
  {
    v2 = v1 + 64;
    v3 = 1 << *(v1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v0 = MEMORY[0x277D84F98];
    v46 = v1 + 64;
    v47 = v1;
    v45 = v6;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_8:
    while (1)
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return v0;
      }

      v5 = *(v2 + 8 * v10);
      ++v7;
      if (v5)
      {
        while (1)
        {
          v50 = v5;
          v51 = v0;
          v11 = __clz(__rbit64(v5)) | (v10 << 6);
          v12 = (*(v1 + 48) + 16 * v11);
          v13 = v12[1];
          v52 = *v12;
          v14 = *(*(v1 + 56) + 8 * v11);
          v49 = v10;
          if (v14 >> 62)
          {
            v27 = v12[1];
            v15 = sub_22F741A00();
            v13 = v27;
            if (!v15)
            {
LABEL_21:

              v25 = MEMORY[0x277D84F90];
              v26 = v28;
              goto LABEL_22;
            }
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v15)
            {
              goto LABEL_21;
            }
          }

          v56 = MEMORY[0x277D84F90];
          v48 = v13;

          sub_22F741BD0();
          if (v15 < 0)
          {
            goto LABEL_37;
          }

          v16 = 0;
          v53 = v14 & 0xC000000000000001;
          v54 = v14;
          do
          {
            if (v53)
            {
              v17 = MEMORY[0x2319016F0](v16, v14);
            }

            else
            {
              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            ++v16;
            v19 = *&v17[OBJC_IVAR___PGTripLocationScore_locationNode];
            v20 = *&v17[OBJC_IVAR___PGTripLocationScore__score];
            v21 = *&v17[OBJC_IVAR___PGTripLocationScore_momentNodes];
            v22 = type metadata accessor for TripLocationScore();
            v23 = objc_allocWithZone(v22);
            *&v23[OBJC_IVAR___PGTripLocationScore_locationNode] = v19;
            *&v23[OBJC_IVAR___PGTripLocationScore__score] = v20;
            *&v23[OBJC_IVAR___PGTripLocationScore_momentNodes] = v21;
            v55.receiver = v23;
            v55.super_class = v22;

            v24 = v19;
            objc_msgSendSuper2(&v55, sel_init);

            sub_22F741BA0();
            sub_22F741BE0();
            sub_22F741BF0();
            sub_22F741BB0();
            v14 = v54;
          }

          while (v15 != v16);

          v25 = v56;
          v2 = v46;
          v1 = v47;
          v6 = v45;
          v26 = v48;
LABEL_22:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v51;
          v30 = v26;
          v31 = sub_22F1229E8(v52, v26);
          v33 = v51[2];
          v34 = (v32 & 1) == 0;
          v35 = __OFADD__(v33, v34);
          v36 = v33 + v34;
          if (v35)
          {
            goto LABEL_36;
          }

          v37 = v32;
          if (v51[3] >= v36)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = v31;
              sub_22F137B84();
              v31 = v42;
            }
          }

          else
          {
            sub_22F12BA58(v36, isUniquelyReferenced_nonNull_native);
            v31 = sub_22F1229E8(v52, v26);
            if ((v37 & 1) != (v38 & 1))
            {
              goto LABEL_39;
            }
          }

          v5 = (v50 - 1) & v50;
          if (v37)
          {
            v8 = v31;

            v9 = v56;
            *(v56[7] + 8 * v8) = v25;
            v0 = v9;

            v7 = v49;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v0 = v56;
            v56[(v31 >> 6) + 8] |= 1 << v31;
            v39 = (v0[6] + 16 * v31);
            *v39 = v52;
            v39[1] = v30;
            *(v0[7] + 8 * v31) = v25;
            v40 = v0[2];
            v35 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v35)
            {
              goto LABEL_38;
            }

            v0[2] = v41;
            v7 = v49;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v10 = v7;
        }
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_22F7420C0();
    __break(1u);
  }

  else
  {
    sub_22F2FCEA4();
    swift_allocError();
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 3;
    swift_willThrow();
    return v0;
  }

  return result;
}

uint64_t sub_22F3031B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F784270;
  type metadata accessor for ScoreModifier();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = xmmword_22F784280;
  *(v2 + 72) = 1;
  *(v2 + 56) = 0xD000000000000014;
  *(v2 + 64) = 0x800000022F79A300;
  *(v2 + 16) = sub_22F305458() & 1;
  *(inited + 32) = v2;
  v73 = inited + 32;
  v3 = swift_allocObject();
  *(v3 + 24) = xmmword_22F784290;
  *(v3 + 40) = xmmword_22F7842A0;
  *(v3 + 72) = 1;
  *(v3 + 56) = 0xD00000000000001DLL;
  *(v3 + 64) = 0x800000022F79A320;
  *(v3 + 16) = sub_22F3056B0();
  *(inited + 40) = v3;
  v4 = swift_allocObject();
  v81 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v4 + 24) = v81;
  *(v4 + 40) = xmmword_22F784290;
  *(v4 + 72) = 1;
  *(v4 + 56) = 0xD00000000000001DLL;
  *(v4 + 64) = 0x800000022F79A340;
  *(v4 + 16) = sub_22F304B98() & 1;
  *(inited + 48) = v4;
  v5 = swift_allocObject();
  *(v5 + 24) = xmmword_22F7842B0;
  *(v5 + 40) = v81;
  *(v5 + 72) = 1;
  *(v5 + 56) = 0xD00000000000001BLL;
  *(v5 + 64) = 0x800000022F79A360;
  *(v5 + 16) = sub_22F304E94() & 1;
  *(inited + 56) = v5;
  v6 = swift_allocObject();
  *(v6 + 24) = xmmword_22F784290;
  *(v6 + 40) = xmmword_22F7842A0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0xD00000000000001FLL;
  *(v6 + 64) = 0x800000022F79A380;
  v80 = v0;
  *(v6 + 16) = sub_22F305990();
  *(inited + 64) = v6;
  v86[0] = sub_22F740E20();
  v86[1] = v7;
  v86[2] = sub_22F740E20();
  v86[3] = v8;
  v9 = 0;
  v10 = 0;
  v86[4] = sub_22F740E20();
  v86[5] = v11;
  v67 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v84 = inited & 0xC000000000000001;
  v79 = inited;
  v74 = inited & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    v68 = v9;
    if (v10 == 3)
    {
      swift_arrayDestroy();
      v32 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
      swift_beginAccess();
      v33 = *(v80 + v32);
      v36 = *(v33 + 64);
      v35 = v33 + 64;
      v34 = v36;
      v37 = 1 << *(*(v80 + v32) + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v78 = v38 & v34;
      v39 = (v37 + 63) >> 6;
      v77 = *(v80 + v32);

      v40 = 0;
      v75 = v35;
      v72 = v39;
LABEL_38:
      v41 = v78;
      if (!v78)
      {
        do
        {
          v42 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_72;
          }

          if (v42 >= v39)
          {
            swift_setDeallocating();
            swift_arrayDestroy();

            sub_22F7416A0();
            return v9 & 1;
          }

          v41 = *(v35 + 8 * v42);
          ++v40;
        }

        while (!v41);
        v40 = v42;
      }

      v78 = (v41 - 1) & v41;
      v43 = (v40 << 9) | (8 * __clz(__rbit64(v41)));
      v44 = *(*(v77 + 56) + v43);
      v83 = *(*(v77 + 48) + v43);
      v45 = 0;
      if (v84)
      {
LABEL_44:
        v46 = MEMORY[0x2319016F0](v45, v79);
        goto LABEL_47;
      }

      while (1)
      {
        if (v45 >= *(v74 + 16))
        {
          goto LABEL_71;
        }

        v46 = *(v79 + 8 * v45 + 32);

LABEL_47:
        v47 = sub_22F740E20();
        v48 = (*(*v46 + 200))(v47);

        swift_beginAccess();
        v49 = v83;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = *(v80 + v32);
        v51 = v87;
        *(v80 + v32) = 0x8000000000000000;
        v53 = sub_22F12350C(v49);
        v54 = v51[2];
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          break;
        }

        v57 = v52;
        if (v51[3] >= v56)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F1377B8();
          }
        }

        else
        {
          sub_22F12B498(v56, isUniquelyReferenced_nonNull_native);
          v58 = sub_22F12350C(v49);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_73;
          }

          v53 = v58;
        }

        v60 = v44 * v48;
        v61 = v87;
        if (v57)
        {
          *(v87[7] + 8 * v53) = v60;
        }

        else
        {
          v87[(v53 >> 6) + 8] |= 1 << v53;
          *(v61[6] + 8 * v53) = v49;
          *(v61[7] + 8 * v53) = v60;
          v62 = v61[2];
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_70;
          }

          v61[2] = v64;
        }

        *(v80 + v32) = v61;
        swift_endAccess();
        if (v46[72] == 1)
        {
          v65 = v46[16];

          if ((v65 & 1) != 0 || v45 == 4)
          {
LABEL_37:

            v9 = v68;
            v35 = v75;
            v39 = v72;
            goto LABEL_38;
          }
        }

        else
        {

          if (v45 == 4)
          {
            goto LABEL_37;
          }
        }

        ++v45;
        if (v84)
        {
          goto LABEL_44;
        }
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    v12 = &v86[2 * v10];
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v80 + v67);
    if (!v15)
    {

      goto LABEL_10;
    }

    v16 = *(v15 + 16);

    if (!v16)
    {
LABEL_10:
      v19 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    v17 = sub_22F1229E8(v14, v13);
    if ((v18 & 1) == 0)
    {

      goto LABEL_10;
    }

    v19 = *(*(v15 + 56) + 8 * v17);

LABEL_11:
    v70 = v10;
    if (v19 >> 62)
    {
      v20 = sub_22F741A00();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = 0;
    v76 = v13;
    v71 = v70 + 1;
    do
    {
      while (1)
      {
        if (v84)
        {
          v22 = MEMORY[0x2319016F0](v21, v79);
          if (v9)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v21 >= *(v74 + 16))
          {
            goto LABEL_68;
          }

          v22 = *(v73 + 8 * v21);

          if (v9)
          {
LABEL_17:
            v9 = 1;
            goto LABEL_21;
          }
        }

        v9 = *(v22 + 16);
LABEL_21:
        (*(*v22 + 200))(v14, v13);
        if (v20)
        {
          if (v20 < 1)
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v24 = v23;
          if ((v19 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v20; ++i)
            {
              v26 = MEMORY[0x2319016F0](i, v19);
              *(v26 + OBJC_IVAR___PGTripLocationScore__score) = v24 * *(v26 + OBJC_IVAR___PGTripLocationScore__score);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v27 = (v19 + 32);
            v28 = v20;
            do
            {
              v29 = *v27++;
              *(v29 + OBJC_IVAR___PGTripLocationScore__score) = v23 * *(v29 + OBJC_IVAR___PGTripLocationScore__score);
              --v28;
            }

            while (v28);
          }
        }

        ++v21;
        if (*(v22 + 16) == 1)
        {
          break;
        }

        if (v21 == 5)
        {
          goto LABEL_2;
        }
      }

      v30 = *(v22 + 64);
      v82 = *(v22 + 56);
      swift_beginAccess();

      sub_22F10BBDC(&v85, v82, v30);
      swift_endAccess();

      v31 = *(v22 + 72);

      if (v31)
      {
        break;
      }

      v13 = v76;
    }

    while (v21 != 5);
LABEL_2:

    v10 = v71;
    sub_22F741680();
    if (!v69)
    {
      continue;
    }

    break;
  }

  swift_arrayDestroy();
  v9 = v68;
  return v9 & 1;
}

void sub_22F303A90(void *a1, uint64_t a2)
{
  v158 = a2;
  v186 = a1;
  type metadata accessor for FrequentLocationModifier();
  inited = swift_initStackObject();
  *(inited + 144) = 0;
  *(inited + 80) = xmmword_22F7842C0;
  *(inited + 96) = xmmword_22F7842D0;
  v157 = inited + 96;
  *(inited + 112) = xmmword_22F7842E0;
  *(inited + 128) = xmmword_22F7842F0;
  v156 = inited + 128;
  *(inited + 24) = xmmword_22F784300;
  *(inited + 40) = xmmword_22F784310;
  *(inited + 16) = 1;
  *(inited + 72) = 0;
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x800000022F79A2E0;
  v174 = inited;
  v4 = OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel;
  v194 = v2;
  v5 = *(v2 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v180 = MEMORY[0x277D84F90];
    v181 = MEMORY[0x277D84F90];
    v192 = MEMORY[0x277D84F90];
    v14 = v175;
    goto LABEL_20;
  }

  v7 = sub_22F740E20();
  v9 = v8;
  if (*(v5 + 16) && (v10 = v7, , v11 = sub_22F1229E8(v10, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v192 = *(*(v5 + 56) + 8 * v11);
  }

  else
  {

    v192 = MEMORY[0x277D84F90];
  }

  v15 = *(v194 + v4);
  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
    v180 = MEMORY[0x277D84F90];
LABEL_18:
    v181 = v23;
    v14 = v175;
    goto LABEL_20;
  }

  v16 = sub_22F740E20();
  v18 = v17;
  if (*(v15 + 16) && (v19 = v16, , v20 = sub_22F1229E8(v19, v18), v22 = v21, , (v22 & 1) != 0))
  {
    v180 = *(*(v15 + 56) + 8 * v20);
  }

  else
  {

    v180 = MEMORY[0x277D84F90];
  }

  v24 = *(v194 + v4);
  if (!v24)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v25 = sub_22F740E20();
  v27 = v26;
  v14 = v175;
  if (*(v24 + 16) && (v28 = v25, , v29 = sub_22F1229E8(v28, v27), v31 = v30, , (v31 & 1) != 0))
  {
    v181 = *(*(v24 + 56) + 8 * v29);
  }

  else
  {

    v181 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v32 = *(v194 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v33 = sub_22F740E20();
  v35 = v34;
  v36 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v170 = v32;
  v37 = *(v32 + v36);
  if (*(v37 + 16) && (, v38 = sub_22F1229E8(v33, v35), v40 = v39, , (v40 & 1) != 0))
  {
    isUniquelyReferenced_nonNull_native = *(*(v37 + 56) + 8 * v38);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  }

  v196 = v6;
  v42 = v192;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_223;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v191 = (v42 >> 62);
    if (!i)
    {
      break;
    }

    v44 = 0;
    v189 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v190 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v187 = i;
    v188 = isUniquelyReferenced_nonNull_native + 32;
    v45 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v42 < 0)
    {
      v46 = v42;
    }

    else
    {
      v46 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    v184 = v46;
    v185 = isUniquelyReferenced_nonNull_native;
    v47 = v42 & 0xC000000000000001;
    while (1)
    {
      if (v190)
      {
        v48 = MEMORY[0x2319016F0](v44, v185);
      }

      else
      {
        if (v44 >= *(v189 + 16))
        {
          goto LABEL_216;
        }

        v48 = *(v188 + 8 * v44);
      }

      v14 = v48;
      v49 = __OFADD__(v44, 1);
      v50 = v44 + 1;
      if (v49)
      {
        break;
      }

      v193 = v50;
      if (v191)
      {
        v51 = sub_22F741A00();
      }

      else
      {
        v51 = *(v45 + 16);
      }

      v52 = 0;
      do
      {
        if (v51 == v52)
        {

          goto LABEL_32;
        }

        if (v47)
        {
          v53 = MEMORY[0x2319016F0](v52, v192);
        }

        else
        {
          if (v52 >= *(v45 + 16))
          {
            goto LABEL_203;
          }

          v53 = *(v192 + 8 * v52 + 32);
        }

        isUniquelyReferenced_nonNull_native = v53;
        if (__OFADD__(v52, 1))
        {
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:

          v146 = v163;
LABEL_200:

          return;
        }

        sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
        v42 = sub_22F741810();

        ++v52;
      }

      while ((v42 & 1) == 0);
      sub_22F741BA0();
      isUniquelyReferenced_nonNull_native = *(v196 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      v42 = &v196;
      sub_22F741BB0();
LABEL_32:
      v44 = v193;
      v14 = v175;
      if (v193 == v187)
      {
        v54 = v196;
        isUniquelyReferenced_nonNull_native = v185;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    ;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_52:

  v55 = v54 < 0 || (v54 & 0x4000000000000000) != 0;
  v160 = v54;
  if (v55)
  {
    v154 = sub_22F741A00();
  }

  else
  {
    v154 = *(v54 + 16);
  }

  v56 = v192;
  v172 = [v186 supersetCountryNodes];
  v184 = v56 & 0xFFFFFFFFFFFFFF8;
  if (v191)
  {
    v186 = sub_22F741A00();
  }

  else
  {
    v186 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = 0;
  v185 = v56 & 0xC000000000000001;
  while (1)
  {
    v42 = v57;
    if (v186 == v57)
    {
      if (v55)
      {
        goto LABEL_197;
      }

LABEL_70:
      v63 = *(v160 + 16);
      if (!v63)
      {
        goto LABEL_198;
      }

LABEL_71:
      v64 = 0;
      v167 = OBJC_IVAR___PGTripFeatureProcessor_currentFrequentLocationNodes;
      v153 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
      v193 = OBJC_IVAR___PGTripFeatureProcessor_scoreByAOI;
      isUniquelyReferenced_nonNull_native = v160 & 0xC000000000000001;
      v155 = v160 + 32;
      v65 = v181 & 0xFFFFFFFFFFFFFF8;
      v179 = v181 & 0xFFFFFFFFFFFFFF8;
      if (v181 < 0)
      {
        v65 = v181;
      }

      v150 = v65;
      v66 = v180 & 0xFFFFFFFFFFFFFF8;
      v177 = v180 & 0xFFFFFFFFFFFFFF8;
      if (v180 < 0)
      {
        v66 = v180;
      }

      v149 = v66;
      v67 = v186 == v42;
      v42 = v160;
      if (v67)
      {
        v68 = 0.0;
      }

      else
      {
        v68 = 0.9;
      }

      v178 = v181 & 0xC000000000000001;
      v176 = v180 & 0xC000000000000001;
      v151 = v160 & 0xC000000000000001;
      v152 = v63;
      while (1)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v139 = v42;
          v69 = v64;
          v70 = MEMORY[0x2319016F0](v64, v139);
        }

        else
        {
          if (v64 >= *(v42 + 16))
          {
            goto LABEL_222;
          }

          v69 = v64;
          v70 = *(v155 + 8 * v64);
        }

        v163 = v70;
        v49 = __OFADD__(v69, 1);
        v42 = v69 + 1;
        if (v49)
        {
          goto LABEL_221;
        }

        v159 = v42;
        v71 = *&v163[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
        objc_opt_self();
        v72 = swift_dynamicCastObjCClass();
        if (v72)
        {
          v73 = v72;
          v74 = v71;
          v75 = [v73 name];
          if (!v75)
          {
            sub_22F740E20();
            v75 = sub_22F740DF0();
          }

          v171 = [objc_opt_self() isLargeCountry_];
        }

        else
        {
          v171 = 0;
        }

        v76 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
        isUniquelyReferenced_nonNull_native = v163;
        swift_beginAccess();
        v77 = *(isUniquelyReferenced_nonNull_native + v76);
        if (v77 >> 62)
        {
          v140 = *(isUniquelyReferenced_nonNull_native + v76);
          v141 = sub_22F741A00();
          v77 = v140;
          v78 = v141;
          v79 = v159;
          if (v78)
          {
LABEL_90:
            v166 = v78;
            if (v181 >> 62)
            {
              v142 = v77;
              v143 = sub_22F741A00();
              v77 = v142;
              v183 = v143;
            }

            else
            {
              v183 = *(v179 + 16);
            }

            if (v180 >> 62)
            {
              v144 = v77;
              v145 = sub_22F741A00();
              v77 = v144;
              v182 = v145;
            }

            else
            {
              v182 = *(v177 + 16);
            }

            v168 = *(v194 + v153);
            v169 = v77 & 0xC000000000000001;
            v161 = v77 + 32;
            v162 = v77 & 0xFFFFFFFFFFFFFF8;
            if (v171)
            {
              v80 = 1.15;
            }

            else
            {
              v80 = 0.0;
            }

            v81 = v157;
            if (v171)
            {
              v81 = v156;
            }

            v164 = v81;
            v165 = v77;
            if (v171)
            {
              v82 = 2.0;
            }

            else
            {
              v82 = 0.0;
            }

            v42 = 0;
            while (1)
            {
              if (v169)
              {
                v83 = MEMORY[0x2319016F0](v42, v165);
              }

              else
              {
                if (v42 >= *(v162 + 16))
                {
                  goto LABEL_220;
                }

                v83 = *(v161 + 8 * v42);
              }

              v191 = v83;
              v49 = __OFADD__(v42++, 1);
              if (v49)
              {
                goto LABEL_219;
              }

              v173 = v42;
              v84 = *(v194 + v167);

              v85 = v191;
              v86 = [v191 happensAtFrequentLocation];
              *(v174 + 144) = v86;
              sub_22F309804(v85, v84, v168);
              v88 = v87;

              if (v86 || ((v88 | ((v88 & 0x100) >> 8)) & 1) == 0)
              {
                v89 = v174;
                v90 = *(v174 + 144);
              }

              else
              {
                v89 = v174;
                *(v174 + 144) = 1;
                if ((v88 & 0x100) != 0)
                {
                  *(v89 + 32) = 0;
                }

                else
                {
                  *(v89 + 32) = 0x3FECCCCCCCCCCCCDLL;
                }

                v90 = 1;
              }

              if ((v88 & 0x10000) != 0)
              {
                v91 = v68;
              }

              else
              {
                v91 = 0.9;
              }

              v92 = 1.15;
              if ((v88 & 0x10000) != 0)
              {
                v92 = v68;
              }

              *(v89 + 40) = v91;
              *(v89 + 128) = v92;
              v93 = 2.0;
              if ((v88 & 0x10000) != 0)
              {
                v93 = v68;
              }

              *(v89 + 145) = v171;
              *(v89 + 88) = v80;
              *(v89 + 96) = v93;
              if (v90)
              {
                v95 = *(v89 + 24);
                v94 = *(v89 + 32);
                v96 = *(v89 + 48);
                if (v186)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                v91 = *v164;
                v95 = 0.85;
                v96 = 1.2;
                v94 = v82;
                if (v186)
                {
LABEL_127:
                  v97 = 0;
                  do
                  {
                    if (v185)
                    {
                      v98 = MEMORY[0x2319016F0](v97, v192);
                    }

                    else
                    {
                      if (v97 >= *(v184 + 16))
                      {
                        goto LABEL_208;
                      }

                      v98 = *(v192 + 8 * v97 + 32);
                    }

                    v99 = v98;
                    v100 = (v97 + 1);
                    if (__OFADD__(v97, 1))
                    {
                      goto LABEL_207;
                    }

                    v195[0] = v191;
                    MEMORY[0x28223BE20](v98);
                    v148 = v195;
                    if (sub_22F1C39A8(sub_22F30F9F0, v147, v101))
                    {
                      *&v99[OBJC_IVAR___PGTripLocationScore__score] = v91 * *&v99[OBJC_IVAR___PGTripLocationScore__score];

                      break;
                    }

                    ++v97;
                  }

                  while (v100 != v186);
                }
              }

              if (v183)
              {
                v102 = 0;
                do
                {
                  if (v178)
                  {
                    v103 = MEMORY[0x2319016F0](v102, v181);
                  }

                  else
                  {
                    if (v102 >= *(v179 + 16))
                    {
                      goto LABEL_210;
                    }

                    v103 = *(v181 + 8 * v102 + 32);
                  }

                  v104 = v103;
                  v105 = v102 + 1;
                  if (__OFADD__(v102, 1))
                  {
                    goto LABEL_209;
                  }

                  v195[0] = v191;
                  MEMORY[0x28223BE20](v103);
                  v148 = v195;
                  if (sub_22F1C39A8(sub_22F30F9F0, v147, v106))
                  {
                    *&v104[OBJC_IVAR___PGTripLocationScore__score] = v94 * *&v104[OBJC_IVAR___PGTripLocationScore__score];

                    break;
                  }

                  ++v102;
                }

                while (v105 != v183);
              }

              if (v182)
              {
                v107 = 0;
                do
                {
                  if (v176)
                  {
                    v108 = MEMORY[0x2319016F0](v107, v180);
                  }

                  else
                  {
                    if (v107 >= *(v177 + 16))
                    {
                      goto LABEL_212;
                    }

                    v108 = *(v180 + 8 * v107 + 32);
                  }

                  v109 = v108;
                  v110 = v107 + 1;
                  if (__OFADD__(v107, 1))
                  {
                    goto LABEL_211;
                  }

                  v195[0] = v191;
                  MEMORY[0x28223BE20](v108);
                  v148 = v195;
                  if (sub_22F1C39A8(sub_22F30F9F0, v147, v111))
                  {
                    *&v109[OBJC_IVAR___PGTripLocationScore__score] = v95 * *&v109[OBJC_IVAR___PGTripLocationScore__score];

                    break;
                  }

                  ++v107;
                }

                while (v110 != v182);
              }

              sub_22F3F0BF4(v191);
              v113 = v112;
              if (v112 >> 62)
              {
                isUniquelyReferenced_nonNull_native = sub_22F741A00();
              }

              else
              {
                isUniquelyReferenced_nonNull_native = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v175 = v14;
              swift_beginAccess();
              if (isUniquelyReferenced_nonNull_native)
              {
                v114 = 0;
                v189 = v113 & 0xFFFFFFFFFFFFFF8;
                v190 = v113 & 0xC000000000000001;
                v187 = isUniquelyReferenced_nonNull_native;
                v188 = v113;
                do
                {
                  if (v190)
                  {
                    v115 = MEMORY[0x2319016F0](v114, v113);
                  }

                  else
                  {
                    if (v114 >= *(v189 + 16))
                    {
                      goto LABEL_205;
                    }

                    v115 = *(v113 + 8 * v114 + 32);
                  }

                  v116 = v115;
                  v117 = v114 + 1;
                  if (__OFADD__(v114, 1))
                  {
                    goto LABEL_204;
                  }

                  v118 = *(v194 + v193);
                  if (*(v118 + 16))
                  {

                    v119 = sub_22F12350C(v116);
                    v120 = 0.0;
                    if (v121)
                    {
                      v120 = *(*(v118 + 56) + 8 * v119);
                    }
                  }

                  else
                  {
                    v120 = 0.0;
                  }

                  v122 = v193;
                  v123 = v194;
                  swift_beginAccess();
                  v124 = v116;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v197 = *(v123 + v122);
                  v125 = v197;
                  *(v123 + v122) = 0x8000000000000000;
                  v127 = sub_22F12350C(v124);
                  v128 = v125[2];
                  v129 = (v126 & 1) == 0;
                  v130 = v128 + v129;
                  if (__OFADD__(v128, v129))
                  {
                    goto LABEL_206;
                  }

                  v131 = v126;
                  if (v125[3] >= v130)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_22F1377B8();
                    }
                  }

                  else
                  {
                    sub_22F12B498(v130, isUniquelyReferenced_nonNull_native);
                    v132 = sub_22F12350C(v124);
                    if ((v131 & 1) != (v133 & 1))
                    {
                      sub_22F120634(0, &qword_2810A9160, off_27887ABD8);
                      sub_22F7420C0();
                      __break(1u);
                      return;
                    }

                    v127 = v132;
                  }

                  v134 = v96 * v120;
                  v135 = v197;
                  if (v131)
                  {
                    *(v197[7] + 8 * v127) = v134;
                  }

                  else
                  {
                    v197[(v127 >> 6) + 8] |= 1 << v127;
                    *(v135[6] + 8 * v127) = v124;
                    *(v135[7] + 8 * v127) = v134;
                    v136 = v135[2];
                    v49 = __OFADD__(v136, 1);
                    v137 = v136 + 1;
                    if (v49)
                    {
                      goto LABEL_213;
                    }

                    v135[2] = v137;
                  }

                  *(v194 + v193) = v135;
                  swift_endAccess();

                  ++v114;
                  v113 = v188;
                }

                while (v117 != v187);
              }

              v42 = v173;
              v14 = v175;
              if (v173 == v166)
              {

                v79 = v159;
                break;
              }
            }
          }
        }

        else
        {
          v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v79 = v159;
          if (v78)
          {
            goto LABEL_90;
          }
        }

        v138 = v79;
        sub_22F741680();
        if (v14)
        {
          goto LABEL_214;
        }

        v67 = v138 == v152;
        v42 = v160;
        v64 = v138;
        isUniquelyReferenced_nonNull_native = v151;
        if (v67)
        {
          goto LABEL_198;
        }
      }
    }

    if (v185)
    {
      v58 = MEMORY[0x2319016F0](v57, v192);
    }

    else
    {
      if (v57 >= *(v184 + 16))
      {
        goto LABEL_218;
      }

      v58 = *(v192 + 8 * v57 + 32);
    }

    v59 = v58;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_217;
    }

    v60 = *&v58[OBJC_IVAR___PGTripLocationScore_locationNode];
    objc_opt_self();
    v61 = swift_dynamicCastObjCClass();
    if (!v61)
    {
      break;
    }

    v62 = v61;
    isUniquelyReferenced_nonNull_native = v60;
    LOBYTE(v62) = [v172 containsNode_];

    v57 = v42 + 1;
    if ((v62 & 1) == 0)
    {
      goto LABEL_196;
    }
  }

LABEL_196:
  if (!v55)
  {
    goto LABEL_70;
  }

LABEL_197:
  v63 = sub_22F741A00();
  if (v63)
  {
    goto LABEL_71;
  }

LABEL_198:

  sub_22F7416A0();
  if (v14)
  {
    v146 = v172;
    goto LABEL_200;
  }
}

id sub_22F304B98()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v2)
  {
    v3 = sub_22F740E20();
    v5 = v4;
    if (*(v2 + 16) && (v6 = v3, , v7 = sub_22F1229E8(v6, v5), v9 = v8, , (v9 & 1) != 0))
    {
      v10 = *(*(v2 + 56) + 8 * v7);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_18:

    v18 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_graph);
    v19 = objc_allocWithZone(PGGraphLocationNodeCollection);
    sub_22F120634(0, &unk_2810A9060, off_27887AFF0);
    v20 = v18;
    v21 = sub_22F741160();

    v22 = [v19 initWithArray:v21 graph:v20];

    v23 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
    v24 = [v23 addressNodesFromLocationNodes_];
    v25 = [objc_opt_self() visitedLocations:v24 onlyDuringMoments:*(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes) locationHelper:v23];

    return v25;
  }

  v11 = sub_22F741A00();
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_9:
  result = sub_22F741BD0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(*(v10 + v16) + OBJC_IVAR___PGTripLocationScore_locationNode);
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v16 += 8;
        --v11;
      }

      while (v11);
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_22F304E94()
{
  v1 = v0;
  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel;
  v3 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (v3)
  {
    v4 = sub_22F740E20();
    v6 = v5;
    if (*(v3 + 16) && (v7 = v4, , v8 = sub_22F1229E8(v7, v6), v10 = v9, , (v10 & 1) != 0))
    {
      v11 = *(*(v3 + 56) + 8 * v8);
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v11 >> 62)
  {
    v12 = sub_22F741A00();
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  result = sub_22F741BD0();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      v16 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
      swift_unknownObjectRelease();
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v14 = v15;
    }

    while (v12 != v15);
  }

  else
  {
    v17 = 32;
    do
    {
      v18 = *(*(v11 + v17) + OBJC_IVAR___PGTripLocationScore_locationNode);
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v17 += 8;
      --v12;
    }

    while (v12);
  }

LABEL_18:

  v19 = *(v1 + v2);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v21 = sub_22F740E20();
    v23 = v22;
    if (*(v19 + 16) && (v24 = v21, , v25 = sub_22F1229E8(v24, v23), v27 = v26, , (v27 & 1) != 0))
    {
      v28 = *(*(v19 + 56) + 8 * v25);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_26;
    }

LABEL_35:

    v35 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v29 = sub_22F741A00();
  if (!v29)
  {
    goto LABEL_35;
  }

LABEL_26:
  result = sub_22F741BD0();
  if (v29 < 0)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      v31 = v30 + 1;
      v32 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
      swift_unknownObjectRelease();
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v30 = v31;
    }

    while (v29 != v31);
  }

  else
  {
    v33 = 32;
    do
    {
      v34 = *(*(v28 + v33) + OBJC_IVAR___PGTripLocationScore_locationNode);
      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      v33 += 8;
      --v29;
    }

    while (v29);
  }

  v35 = v20;
LABEL_36:
  if (v35 >> 62)
  {
LABEL_50:
    v36 = sub_22F741A00();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v36 != i; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x2319016F0](i, v35);
    }

    else
    {
      if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v38 = *(v35 + 8 * i + 32);
    }

    v39 = v38;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v40 = objc_opt_self();
    v41 = [v39 name];
    LOBYTE(v40) = [v40 isLargeCountry_];

    if ((v40 & 1) == 0)
    {

      return 0;
    }
  }

  v42 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_graph);
  v43 = objc_allocWithZone(PGGraphLocationNodeCollection);
  sub_22F120634(0, &unk_2810A9060, off_27887AFF0);
  v44 = v42;
  v45 = sub_22F741160();

  v46 = [v43 initWithArray:v45 graph:v44];

  v47 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_locationHelper);
  v48 = [v47 addressNodesFromLocationNodes_];
  v49 = [objc_opt_self() visitedLocations:v48 onlyDuringMoments:*(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes) locationHelper:v47];

  return v49;
}

uint64_t sub_22F305458()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = sub_22F740E20();
    v5 = v4;
    if (*(v1 + 16) && (v6 = v3, , v7 = sub_22F1229E8(v6, v5), v9 = v8, , (v9 & 1) != 0))
    {
      v10 = *(*(v1 + 56) + 8 * v7);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_20:

    v18 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_17:
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

      return v19 > 4;
    }

LABEL_21:
    v19 = sub_22F741A00();
    goto LABEL_18;
  }

  v11 = sub_22F741A00();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_9:
  result = sub_22F741BD0();
  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        v15 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGTripLocationScore_locationNode);
        swift_unknownObjectRelease();
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(*(v10 + v16) + OBJC_IVAR___PGTripLocationScore_locationNode);
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v16 += 8;
        --v11;
      }

      while (v11);
    }

    v18 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

BOOL sub_22F3056B0()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_22F740E20();
  v4 = v3;
  if (!*(v1 + 16))
  {
    goto LABEL_27;
  }

  v5 = v2;
  v24 = v0;

  v6 = sub_22F1229E8(v5, v4);
  LOBYTE(v5) = v7;

  if ((v5 & 1) == 0)
  {
    goto LABEL_27;
  }

  v8 = *(*(v1 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v24;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_21:
  v10 = v24;
  if (sub_22F741A00() <= 0)
  {
LABEL_27:

    return 0;
  }

  v9 = sub_22F741A00();
  if (v9)
  {
LABEL_6:
    v11 = 0;
    v12 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2319016F0](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (*&v13[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v12) >= 0.85)
      {
        v16 = *&v13[OBJC_IVAR___PGTripLocationScore_locationNode];
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

      ++v11;
      if (v15 == v9)
      {
        goto LABEL_23;
      }
    }

    v17 = v16;

    v18 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
    swift_beginAccess();
    v19 = v17;
    MEMORY[0x231900D00]();
    if (*((*(v24 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    v10 = v24;
    swift_endAccess();

    goto LABEL_24;
  }

LABEL_23:

LABEL_24:
  v20 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  swift_beginAccess();
  v21 = *(v10 + v20);
  if (v21 >> 62)
  {
    v22 = sub_22F741A00();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v22 != 0;
}

BOOL sub_22F305990()
{
  v1 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
  if (!v1)
  {
    return 0;
  }

  v2 = sub_22F740E20();
  v4 = v3;
  if (!*(v1 + 16))
  {
    goto LABEL_46;
  }

  v5 = v2;
  v36 = v0;

  v6 = sub_22F1229E8(v5, v4);
  LOBYTE(v5) = v7;

  if ((v5 & 1) == 0)
  {
    goto LABEL_46;
  }

  v8 = *(*(v1 + 56) + 8 * v6);

  v9 = OBJC_IVAR___PGTripFeatureProcessor_highScoreCityNodes;
  v10 = v36;
  swift_beginAccess();
  v11 = *&v9[v36];
  if (v11 >> 62)
  {
    if (sub_22F741A00())
    {
      goto LABEL_46;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_46;
  }

  if (v8 >> 62)
  {
LABEL_42:
    if (sub_22F741A00() >= 2)
    {
      v33 = sub_22F741A00();
      if (v33)
      {
        v12 = v33;
        if (v33 >= 1)
        {
          v10 = v36;
          goto LABEL_8;
        }

        __break(1u);
      }
    }

LABEL_46:

    return 0;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12 < 2)
  {
    goto LABEL_46;
  }

LABEL_8:
  v13 = 0;
  v14 = 0;
  v15 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  v16 = v8 & 0xC000000000000001;
  v17 = 0.0;
  do
  {
    if (v16)
    {
      v18 = MEMORY[0x2319016F0](v13, v8);
    }

    else
    {
      v18 = *(v8 + 8 * v13 + 32);
    }

    v19 = v18;
    v20 = *&v18[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v15);
    if (v17 >= v20)
    {
    }

    else
    {

      v17 = v20;
      v14 = v19;
    }

    ++v13;
  }

  while (v12 != v13);
  if (!v14)
  {
    goto LABEL_46;
  }

  v21 = *&v14[OBJC_IVAR___PGTripLocationScore_locationNode];
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0;
  }

  v22 = v14;
  v35 = v9;
  v34 = v21;
  v23 = 0;
  while (1)
  {
    if (v16)
    {
      v24 = MEMORY[0x2319016F0](v23, v8);
    }

    else
    {
      if (v23 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_42;
      }

      v24 = *(v8 + 8 * v23 + 32);
    }

    v9 = v24;
    if (([v24 isEqual_] & 1) == 0 && v17 + *&v9[OBJC_IVAR___PGTripLocationScore__score] / *(v10 + v15) >= 0.85)
    {
      v25 = *&v9[OBJC_IVAR___PGTripLocationScore_locationNode];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }
    }

    ++v23;

    if (v12 == v23)
    {

      v29 = v34;
      v27 = v35;
      goto LABEL_35;
    }
  }

  v26 = v25;

  v27 = v35;
  swift_beginAccess();
  v28 = v26;
  MEMORY[0x231900D00]();
  if (*((*&v27[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v27[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  v29 = v34;
  MEMORY[0x231900D00](v34);
  if (*((*&v35[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v35[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  v10 = v36;
  swift_endAccess();

LABEL_35:
  v30 = *&v27[v10];
  if (v30 >> 62)
  {
    v31 = sub_22F741A00();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v31 != 0;
}

uint64_t sub_22F305E00(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v155 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v6 - 8);
  v187 = &v149 - v7;
  v8 = sub_22F73F090();
  v190 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v183 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v149 - v11;
  MEMORY[0x28223BE20](v12);
  v173 = &v149 - v13;
  MEMORY[0x28223BE20](v14);
  v163 = &v149 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v16 - 8);
  v192 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v191 = (&v149 - v19);
  v177 = sub_22F73F690();
  v175 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v21 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v162 = &v149 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v149 - v25;
  MEMORY[0x28223BE20](v27);
  v174 = &v149 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = &v149 - v30;
  MEMORY[0x28223BE20](v31);
  v158 = &v149 - v32;
  v33 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v34 = [v33 childProgressReporterToCheckpoint_];
  v154 = v33;
  v156 = [v33 childProgressReporterToCheckpoint_];
  v153 = v2;
  sub_22F73F080();
  v36 = v35 / 86400.0;
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_123;
  }

  if (v36 <= -9.22337204e18)
  {
    goto LABEL_124;
  }

  if (v36 >= 9.22337204e18)
  {
    goto LABEL_125;
  }

  if (__OFADD__(v36, 1))
  {
    goto LABEL_126;
  }

  v152 = v36 + 1;
  v37 = v155;
  if (v155 >> 62)
  {
    goto LABEL_127;
  }

  v38 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v178 = v38;
LABEL_7:
  v39 = v177;
  v40 = v34;
  v167 = v34;
  v172 = v21;
  if (!v38)
  {
    goto LABEL_50;
  }

  v34 = 0;
  v171 = v37 & 0xC000000000000001;
  v166 = v37 & 0xFFFFFFFFFFFFFF8;
  v165 = v37 + 32;
  v188 = (v175 + 48);
  v189 = v175 + 56;
  v157 = v175 + 32;
  v160 = v175 + 16;
  v176 = MEMORY[0x277D84F98];
  v159 = (v175 + 8);
  v168 = v26;
  v164 = v38;
  while (!v171)
  {
    if (v34 >= *(v166 + 16))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      v178 = sub_22F741A00();
      v148 = sub_22F741A00();
      v37 = v155;
      v38 = v148;
      goto LABEL_7;
    }

    v41 = *(v165 + 8 * v34);
    v42 = __OFADD__(v34++, 1);
    if (v42)
    {
      goto LABEL_49;
    }

LABEL_12:
    v169 = v4;
    v185 = v41;
    v43 = [v41 dateNodes];
    v44 = sub_22F120634(0, &qword_2810A9158, off_27887AD10);
    sub_22F11FA28(&qword_2810A9150, &qword_2810A9158, off_27887AD10);
    v45 = sub_22F741420();

    v182 = v34;
    v181 = v45;
    if ((v45 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_22F7419C0();
      sub_22F741470();
      v46 = v196[3];
      v47 = v196[4];
      v48 = v196[5];
      v49 = v196[6];
      v21 = v196[7];
    }

    else
    {
      v50 = -1 << *(v45 + 32);
      v47 = v45 + 56;
      v48 = ~v50;
      v51 = -v50;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v53 = (v52 & *(v45 + 56));

      v49 = 0;
      v21 = v53;
    }

    v186 = v44;
    v180 = v48;
    v54 = (v48 + 64) >> 6;
    v184 = MEMORY[0x277D84F90];
    v55 = v47;
    v193 = v46;
    v56 = v49;
    if (v46 < 0)
    {
LABEL_19:
      v57 = sub_22F741A40();
      if (!v57)
      {
        goto LABEL_40;
      }

      v195 = v57;
      swift_dynamicCast();
      v58 = v196[0];
      v34 = v56;
      v59 = v21;
      if (!v196[0])
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v60 = v56;
      v61 = v21;
      v34 = v56;
      if (!v21)
      {
        while (1)
        {
          v34 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v34 >= v54)
          {
            v21 = 0;
            goto LABEL_41;
          }

          v61 = *(v47 + 8 * v34);
          ++v60;
          if (v61)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_112:

        v118 = v156;
        v147 = v169;
        sub_22F7416A0();
        if (v147)
        {
        }

        else
        {
LABEL_117:
        }

        return v34;
      }

LABEL_26:
      v59 = (v61 - 1) & v61;
      v58 = *(*(v46 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v58)
      {
        break;
      }

LABEL_27:
      v62 = [v58 localDate];
      if (v62)
      {
        v63 = v192;
        v64 = v62;
        sub_22F73F640();

        v65 = 0;
      }

      else
      {
        v65 = 1;
        v63 = v192;
      }

      (*v189)(v63, v65, 1, v39);
      v66 = v191;
      sub_22F168438(v63, v191);
      if ((*v188)(v66, 1, v39) == 1)
      {
        sub_22F120ADC(v66, &qword_27DAB0920, &qword_22F770B20);
        v56 = v34;
        v21 = v59;
        v47 = v55;
        v46 = v193;
        if ((v193 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v67 = *v157;
        (*v157)(v158, v66, v39);
        v68 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_22F13E15C(0, *(v68 + 2) + 1, 1, v68);
        }

        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v68 = sub_22F13E15C((v69 > 1), v70 + 1, 1, v68);
        }

        *(v68 + 2) = v70 + 1;
        v71 = (*(v175 + 80) + 32) & ~*(v175 + 80);
        v184 = v68;
        v72 = &v68[v71 + *(v175 + 72) * v70];
        v39 = v177;
        v67(v72, v158, v177);
        v47 = v55;
        v46 = v193;
        v21 = v59;
        v56 = v34;
        if ((v193 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_40:
    v46 = v193;
LABEL_41:
    sub_22F0FF590(v46);

    v196[0] = v184;

    v73 = v169;
    sub_22F2FBD28(v196);
    v4 = v73;
    if (v73)
    {
      goto LABEL_129;
    }

    v74 = *(v196[0] + 16);
    v40 = v167;
    if (v74)
    {
      v75 = v196[0] + ((*(v175 + 80) + 32) & ~*(v175 + 80));
      v76 = *(v175 + 16);
      v77 = v175;
      v193 = v196[0];
      v78 = v161;
      v79 = v177;
      v76(v161, v75, v177);
      v80 = v75 + *(v77 + 72) * (v74 - 1);
      v81 = v174;
      v76(v174, v80, v79);

      v76(v168, v78, v79);
      v76(v162, v81, v79);
      v82 = v185;
      v21 = v163;
      sub_22F73F040();
      v83 = v176;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v196[0] = v83;
      sub_22F132558(v21, v82, isUniquelyReferenced_nonNull_native);

      v85 = *(v175 + 8);
      v40 = v167;
      v85(v81, v79);
      v85(v78, v79);
      v86 = v196[0];
    }

    else
    {

      v86 = v176;
    }

    v34 = v182;
    sub_22F741680();
    v176 = v86;

    v39 = v177;
    v26 = v168;
    if (v34 == v164)
    {
      goto LABEL_51;
    }
  }

  v41 = MEMORY[0x2319016F0](v34, v155);
  v42 = __OFADD__(v34++, 1);
  if (!v42)
  {
    goto LABEL_12;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v176 = MEMORY[0x277D84F98];
LABEL_51:
  sub_22F7416A0();
  if (v4)
  {

    return v34;
  }

  v169 = 0;
  v88 = *(v153 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v89 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v90 = *(v88 + v89);
  v153 = *(v90 + 16);
  v91 = *(v90 + 64);
  v151 = v90 + 64;
  v92 = 1 << *(v90 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & v91;
  v150 = (v92 + 63) >> 6;
  v95 = v152;
  v182 = (v190 + 56);
  v4 = (v190 + 16);
  v181 = (v190 + 48);
  v180 = (v190 + 32);
  v96 = (v175 + 16);
  v21 = (v175 + 8);
  v178 = (v190 + 8);
  v157 = v90;

  v158 = 0;
  v97 = 0;
  v34 = MEMORY[0x277D84F98];
  v186 = v21;
  v179 = v8;
  v168 = v26;
  v171 = v4;
  v192 = v96;
  while (1)
  {
    if (v94)
    {
      v98 = v94;
    }

    else
    {
      do
      {
        v100 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_121;
        }

        if (v100 >= v150)
        {
          goto LABEL_112;
        }

        v98 = *(v151 + 8 * v100);
        ++v97;
      }

      while (!v98);
      v97 = v100;
    }

    v42 = __OFADD__(v158++, 1);
    if (v42)
    {
      break;
    }

    v101 = *(*(v157 + 56) + ((v97 << 9) | (8 * __clz(__rbit64(v98)))));
    v155 = v97;
    if (v101 >> 62)
    {
      v161 = v101;
      v145 = v98;
      v146 = sub_22F741A00();
      v98 = v145;
      v102 = v146;
      v101 = v161;
      if (v102)
      {
LABEL_68:
        v152 = v98;
        v163 = (v101 & 0xC000000000000001);
        v160 = v101 & 0xFFFFFFFFFFFFFF8;
        v159 = (v101 + 32);
        v161 = v101;

        v103 = 0;
        v162 = v102;
        while (1)
        {
          if (v163)
          {
            v108 = v103;
            v109 = MEMORY[0x2319016F0](v103, v161);
          }

          else
          {
            if (v103 >= *(v160 + 16))
            {
              goto LABEL_122;
            }

            v108 = v103;
            v109 = *&v159[8 * v103];
          }

          v166 = v109;
          v42 = __OFADD__(v108, 1);
          v110 = v108 + 1;
          if (v42)
          {
            goto LABEL_120;
          }

          v164 = v110;
          v197 = MEMORY[0x277D84FA0];
          v111 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
          v112 = v166;
          swift_beginAccess();
          v113 = *(v112 + v111);
          v114 = v113;
          if (v113 >> 62)
          {
            v113 = *(v112 + v111);
            v115 = sub_22F741A00();
          }

          else
          {
            v115 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v116 = v176;
          v165 = v34;

          if (v115)
          {
            break;
          }

          v191 = MEMORY[0x277D84F90];
LABEL_98:

          v185 = v191[2];
          if (v185)
          {
            v34 = 0;
            v184 = v191 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
            v118 = v173;
            v133 = v191;
            v134 = v168;
            while (v34 < v133[2])
            {
              (*(v190 + 16))(v118, &v184[*(v190 + 72) * v34], v8);
              v135 = sub_22F30731C(v118);
              v136 = v135[2];
              if (v136)
              {
                v188 = v34;
                v137 = *(v175 + 80);
                v189 = v135;
                v138 = v135 + ((v137 + 32) & ~v137);
                v193 = *(v175 + 72);
                v139 = *(v175 + 16);
                v140 = v134;
                v141 = v172;
                v142 = v177;
                v143 = v174;
                do
                {
                  v139(v141, v138, v142);
                  v139(v140, v141, v142);
                  sub_22F10C984(v143, v140);
                  v144 = *v21;
                  (*v21)(v143, v142);
                  v144(v141, v142);
                  v138 += v193;
                  --v136;
                }

                while (v136);

                v118 = v173;
                v134 = v140;
                v4 = v171;
                v133 = v191;
                v34 = v188;
              }

              else
              {
              }

              ++v34;
              v8 = v179;
              (*v178)(v118, v179);
              if (v34 == v185)
              {
                goto LABEL_69;
              }
            }

LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

LABEL_69:

          v26 = v166;
          v104 = *(v197 + 16) / v95;
          v105 = *(v166 + OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode);
          v106 = v165;
          v107 = swift_isUniquelyReferenced_nonNull_native();
          v194 = v106;
          sub_22F132408(v105, v107, v104);

          v34 = v194;
          v103 = v164;
          v21 = v186;
          if (v164 == v162)
          {

            v98 = v152;
            goto LABEL_58;
          }
        }

        v34 = 0;
        v193 = v113 & 0xC000000000000001;
        v189 = v113 & 0xFFFFFFFFFFFFFF8;
        v191 = MEMORY[0x277D84F90];
        v117 = v115;
        v118 = v187;
        while (1)
        {
          if (v193)
          {
            v119 = MEMORY[0x2319016F0](v34, v113);
          }

          else
          {
            if (v34 >= *(v189 + 16))
            {
              goto LABEL_115;
            }

            v119 = *(v113 + 8 * v34 + 32);
          }

          v120 = v119;
          v121 = (v34 + 1);
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (*(v116 + 16))
          {
            v122 = sub_22F1234BC(v119);
            if (v123)
            {
              v118 = v187;
              (*(v190 + 16))(v187, *(v116 + 56) + *(v190 + 72) * v122, v8);
              v124 = 0;
            }

            else
            {
              v124 = 1;
              v118 = v187;
            }
          }

          else
          {
            v124 = 1;
          }

          (*v182)(v118, v124, 1, v8);

          if ((*v181)(v118, 1, v8) == 1)
          {
            sub_22F120ADC(v118, &qword_27DAB40E0, &unk_22F779200);
          }

          else
          {
            v125 = *v180;
            v126 = v170;
            (*v180)(v170, v118, v8);
            v125(v183, v126, v8);
            v127 = v191;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = sub_22F13ED68(0, v127[2] + 1, 1, v127);
            }

            v128 = v127;
            v129 = v127[2];
            v191 = v128;
            v130 = v128[3];
            if (v129 >= v130 >> 1)
            {
              v191 = sub_22F13ED68((v130 > 1), v129 + 1, 1, v191);
            }

            v131 = v190;
            v132 = v191;
            v191[2] = v129 + 1;
            v125(&v132[((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v129], v183, v8);
            v116 = v176;
            v118 = v187;
          }

          ++v34;
          v21 = v186;
          v113 = v114;
          if (v121 == v117)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }
    }

    else
    {
      v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v102)
      {
        goto LABEL_68;
      }
    }

LABEL_58:
    v94 = (v98 - 1) & v98;
    v99 = v169;
    sub_22F741680();
    v169 = v99;
    v97 = v155;
    if (v99)
    {

      return v34;
    }
  }

  __break(1u);
LABEL_129:

  __break(1u);
  return result;
}

void *sub_22F30731C(uint64_t a1)
{
  v47 = sub_22F73F870();
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22F73F8D0();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F73F830();
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F73F9B0();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v13 - 8);
  v43 = &v40 - v14;
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  sub_22F73F8F0();
  v51 = a1;
  sub_22F73F060();
  v24 = *MEMORY[0x277CC9878];
  v25 = *(v8 + 104);
  v40 = v10;
  v25(v10, v24, v7);
  (*(v53 + 104))(v6, *MEMORY[0x277CC9900], v52);
  v26 = v44;
  v27 = v47;
  v28 = v48;
  (*(v44 + 104))(v48, *MEMORY[0x277CC98E8], v47);
  v29 = v43;
  sub_22F73F910();
  (*(v26 + 8))(v28, v27);
  (*(v53 + 8))(v6, v52);
  (*(v42 + 8))(v40, v41);
  v52 = *(v16 + 8);
  v53 = v16 + 8;
  v52(v20, v15);
  (*(v45 + 8))(v49, v46);
  v30 = *(v16 + 48);
  if (v30(v29, 1, v15) == 1)
  {
    sub_22F73F060();
    if (v30(v29, 1, v15) != 1)
    {
      sub_22F120ADC(v29, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v29, v15);
  }

  sub_22F73F030();
  v49 = sub_22F173D18();
  v31 = sub_22F740DB0();
  v52(v20, v15);
  if (v31)
  {
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = *(v16 + 16);
    v32 = MEMORY[0x277D84F90];
    v35 = v50;
    do
    {
      v34(v35, v23, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_22F13E15C(0, v32[2] + 1, 1, v32);
      }

      v37 = v32[2];
      v36 = v32[3];
      if (v37 >= v36 >> 1)
      {
        v32 = sub_22F13E15C((v36 > 1), v37 + 1, 1, v32);
      }

      v32[2] = v37 + 1;
      v38 = v32 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v37;
      v35 = v50;
      (*(v16 + 32))(v38, v50, v15);
      sub_22F73F580();
      sub_22F73F030();
      v39 = sub_22F740DB0();
      v52(v20, v15);
    }

    while ((v39 & 1) == 0);
  }

  v52(v23, v15);
  return v32;
}

uint64_t sub_22F3079D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  if (*(a4 + 16))
  {
    v7 = a3;
    v8 = a2;
    v9 = sub_22F1229E8(a2, a3);
    if (v10)
    {
      isUniquelyReferenced_nonNull_bridgeObject = *(*(a4 + 56) + 8 * v9);
      if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
      {
        goto LABEL_76;
      }

      v12 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v72 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
          v79 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
          v78 = OBJC_IVAR___PGTripFeatureProcessor_graph;
          v69 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
          v68 = isUniquelyReferenced_nonNull_bridgeObject + 32;
          v89 = a5 + 56;
          v70 = isUniquelyReferenced_nonNull_bridgeObject;

          v13 = 0;
          v14 = 0;
          v71 = v12;
          v80 = v7;
          while (1)
          {
            if (v72)
            {
              isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v13, v70);
            }

            else
            {
              if (v13 >= *(v69 + 16))
              {
                goto LABEL_75;
              }

              isUniquelyReferenced_nonNull_bridgeObject = *(v68 + 8 * v13);
            }

            v15 = isUniquelyReferenced_nonNull_bridgeObject;
            v16 = __OFADD__(v13, 1);
            v17 = v13 + 1;
            if (v16)
            {
              goto LABEL_72;
            }

            MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_bridgeObject);

            v19 = sub_22F30C2DC(v18, sub_22F30F2C8);
            v76 = v17;
            v75 = v14;
            v74 = v15;
            if ((v19 & 0xC000000000000001) != 0)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = sub_22F741CA0() | 0x8000000000000000;
            }

            else
            {
              v24 = -1 << *(v19 + 32);
              v21 = ~v24;
              v20 = v19 + 64;
              v25 = -v24;
              v26 = v25 < 64 ? ~(-1 << v25) : -1;
              v22 = v26 & *(v19 + 64);
              v23 = v19;
            }

            v27 = (v21 + 64) >> 6;
            v28 = 0.0;
            v77 = MEMORY[0x277D84F90];
            v82 = v20;
            v83 = v27;
            v7 = 0;
            if ((v23 & 0x8000000000000000) == 0)
            {
              break;
            }

LABEL_18:
            if (sub_22F741D10())
            {
              sub_22F120634(0, &qword_2810A90E0, off_27887B100);
              swift_dynamicCast();
              v29 = v91;
              type metadata accessor for MomentRelevanceData(0);
              swift_dynamicCast();
              v86 = v22;
              v87 = v91;
              v30 = v7;
              if (v91)
              {
                goto LABEL_26;
              }
            }

LABEL_67:
            sub_22F0FF590(v23);

            v7 = v74;
            v62 = *&v74[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
            v63 = type metadata accessor for TripLocationScore();
            v64 = objc_allocWithZone(v63);
            *&v64[OBJC_IVAR___PGTripLocationScore_locationNode] = v62;
            *&v64[OBJC_IVAR___PGTripLocationScore__score] = v28;
            *&v64[OBJC_IVAR___PGTripLocationScore_momentNodes] = v77;
            v92.receiver = v64;
            v92.super_class = v63;
            v65 = v62;
            objc_msgSendSuper2(&v92, sel_init);
            MEMORY[0x231900D00]();
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22F7411C0();
            }

            sub_22F741220();

            v13 = v76;
            v14 = v75;
            if (v76 == v71)
            {
              v66 = v93;

              return v66;
            }
          }

LABEL_21:
          v31 = v7;
          v32 = v22;
          v30 = v7;
          if (v22)
          {
            break;
          }

          while (1)
          {
            v30 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              goto LABEL_67;
            }

            v32 = *(v20 + 8 * v30);
            ++v31;
            if (v32)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          v67 = isUniquelyReferenced_nonNull_bridgeObject;
          v12 = sub_22F741A00();
          isUniquelyReferenced_nonNull_bridgeObject = v67;
          if (!v12)
          {
            return MEMORY[0x277D84F90];
          }
        }

LABEL_25:
        v86 = (v32 - 1) & v32;
        v33 = (v30 << 9) | (8 * __clz(__rbit64(v32)));
        v34 = *(*(v23 + 56) + v33);
        v29 = *(*(v23 + 48) + v33);
        v87 = v34;

        if (!v29)
        {
          goto LABEL_67;
        }

LABEL_26:
        v35 = *(v81 + v79);
        v85 = [v35 addressNodesByMomentNodeAdjacency];
        v84 = [v85 targetsForSourceIdentifier_];
        v36 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:*(v81 + v78) elementIdentifiers:v84];
        v88 = v36;
        if (sub_22F740E20() == v8 && v37 == v80)
        {

LABEL_30:
          v39 = [v35 cityNodesFromAddressNodes_];
          v40 = [v39 isEmpty];

          v41 = v40 ^ 1;
          goto LABEL_31;
        }

        v38 = sub_22F742040();

        if (v38)
        {
          goto LABEL_30;
        }

        if (sub_22F740E20() == v8 && v51 == v80)
        {

LABEL_47:
          v53 = [v35 cityNodesFromAddressNodes_];
          v54 = [v35 stateNodesFromAddressNodes_];
          if ([v53 isEmpty])
          {
            v55 = v54;
            v56 = [v55 isEmpty];

            v41 = v56 ^ 1;
          }

          else
          {

            v41 = 1;
          }

          goto LABEL_31;
        }

        v52 = sub_22F742040();

        v41 = 0;
        if (v52)
        {
          goto LABEL_47;
        }

LABEL_31:
        v42 = v23;
        v43 = v8;
        if ((a5 & 0xC000000000000001) != 0)
        {
          v44 = v29;
          v45 = sub_22F741A50();

          if (v45 & 1) != 0 || ((v41 ^ 1))
          {
            goto LABEL_50;
          }

LABEL_41:

          v7 = v30;
          v22 = v86;
          v8 = v43;
          v20 = v82;
          v23 = v42;
          v27 = v83;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (!*(a5 + 16) || (sub_22F120634(0, &qword_2810A90E0, off_27887B100), v46 = sub_22F741800(), v47 = -1 << *(a5 + 32), v8 = v46 & ~v47, ((*(v89 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0))
          {
LABEL_40:
            if ((v41 & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_41;
          }

          v48 = ~v47;
          while (1)
          {
            v49 = *(*(a5 + 48) + 8 * v8);
            v50 = sub_22F741810();

            if (v50)
            {
              break;
            }

            v8 = (v8 + 1) & v48;
            if (((*(v89 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

LABEL_50:
          if (v87[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8])
          {
            result = sub_22F741D40();
            __break(1u);
            return result;
          }

          v57 = *&v87[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F771EB0;
          *(inited + 32) = v29;
          v7 = v77 >> 62;
          if (v77 >> 62)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
            v59 = isUniquelyReferenced_nonNull_bridgeObject + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
            {
              goto LABEL_73;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_bridgeObject = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v59 = isUniquelyReferenced_nonNull_bridgeObject + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
            {
              goto LABEL_73;
            }
          }

          v8 = v43;
          v60 = v29;

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v23 = v42;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v7)
            {
LABEL_59:
              sub_22F741A00();
              v27 = v83;
            }

            else
            {
              v27 = v83;
            }

LABEL_60:
            isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
            v61 = isUniquelyReferenced_nonNull_bridgeObject;
            v7 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
            goto LABEL_61;
          }

          if (v7)
          {
            goto LABEL_59;
          }

          v7 = v77 & 0xFFFFFFFFFFFFFF8;
          v61 = v77;
          v27 = v83;
          if (v59 > *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_60;
          }

LABEL_61:
          if (*(v7 + 16) >= *(v7 + 24) >> 1)
          {
            goto LABEL_74;
          }

          v73 = v61;
          sub_22F120634(0, &qword_2810A90E0, off_27887B100);
          swift_arrayInitWithCopy();

          ++*(v7 + 16);

          v28 = v28 + v57;

          v77 = v73;
          v20 = v82;
          v22 = v86;
          v7 = v30;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_18;
      }
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}