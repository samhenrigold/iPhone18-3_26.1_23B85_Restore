uint64_t sub_2663F9690(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2663F96EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2663F9758()
{
  v0 = sub_2662C3A68(&unk_2877E13E0);
  result = swift_arrayDestroy();
  qword_280F91CF8 = v0;
  return result;
}

double sub_2663F97B8()
{
  if (qword_280F90A10 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_2663F9890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA070;
  *(inited + 32) = 0x707954616964656DLL;
  *(inited + 40) = 0xE900000000000065;
  v2 = *v0;
  if (*v0)
  {
    v3 = [*v0 mediaType];
  }

  else
  {
    v3 = 0;
  }

  v30 = v3;
  v4 = sub_2664E0D48();
  MEMORY[0x2667833B0](v4);

  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = 1701869940;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000002664F0F50;
  v6 = MEMORY[0x277D839B0];
  if (v2)
  {
    v7 = [v2 albumName];
    v8 = v7;
    if (v7)
    {
    }

    *(inited + 96) = v8 != 0;
    *(inited + 120) = v6;
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000002664F0F70;
    v9 = [v2 artistName];
    v10 = v9;
    if (v9)
    {
    }

    *(inited + 144) = v10 != 0;
    *(inited + 168) = v6;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000002664F0F90;
    v11 = [v2 genreNames];
    if (v11)
    {
      v12 = v11;
      v13 = sub_2664E04A8();

      v14 = *(v13 + 16);

      v15 = v14 != 0;
    }

    else
    {
      v15 = 0;
    }

    *(inited + 192) = v15;
    *(inited + 216) = v6;
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x80000002664F0FB0;
    v17 = [v2 mediaName];
    v18 = v17;
    if (v17)
    {
    }

    *(inited + 240) = v18 != 0;
    *(inited + 264) = v6;
    *(inited + 272) = 0xD000000000000010;
    *(inited + 280) = 0x80000002664F0FD0;
    v19 = [v2 moodNames];
    if (v19)
    {
      v20 = v19;
      v21 = sub_2664E04A8();

      v22 = *(v21 + 16);

      v16 = v22 != 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 128) = 0xD000000000000012;
    *(inited + 136) = 0x80000002664F0F70;
    *(inited + 168) = v6;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000002664F0F90;
    *(inited + 224) = 0xD000000000000010;
    *(inited + 232) = 0x80000002664F0FB0;
    *(inited + 272) = 0xD000000000000010;
    *(inited + 280) = 0x80000002664F0FD0;
    *(inited + 96) = 0;
    *(inited + 144) = 0;
    *(inited + 192) = 0;
    *(inited + 216) = v6;
    *(inited + 240) = 0;
    *(inited + 264) = v6;
  }

  *(inited + 288) = v16;
  *(inited + 312) = v6;
  *(inited + 320) = 0xD000000000000017;
  *(inited + 328) = 0x80000002664F0FF0;
  v23 = [v2 releaseDate];
  v24 = v23;
  if (v23)
  {
  }

  *(inited + 336) = v24 != 0;
  *(inited + 360) = v6;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x80000002664F1010;
  v25 = sub_2664E0D48();
  MEMORY[0x2667833B0](v25);

  *(inited + 384) = 1701869940;
  *(inited + 392) = 0xE400000000000000;
  v26 = MEMORY[0x277D837D0];
  *(inited + 408) = MEMORY[0x277D837D0];
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x80000002664F1030;
  v27 = sub_2664E0D48();
  MEMORY[0x2667833B0](v27);

  *(inited + 456) = v26;
  *(inited + 432) = 1701869940;
  *(inited + 440) = 0xE400000000000000;
  v28 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v28;
}

uint64_t sub_2663F9D4C(uint64_t a1)
{
  v2 = v1;
  result = sub_2663F9890();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_37;
  }

  v5 = result;
  result = sub_2662A3E98(0xD000000000000010, 0x80000002664F0FB0);
  if ((v6 & 1) == 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * result, v14);
  sub_266318804(v14, v15);
  result = swift_dynamicCast();
  v7 = 0.0;
  if (v13)
  {
    v7 = 1.0;
  }

  *(a1 + 192) = v7;
  if (!*(v5 + 16))
  {
    goto LABEL_38;
  }

  result = sub_2662A3E98(0xD000000000000012, 0x80000002664F0F70);
  if (v8)
  {
    sub_2662A01E8(*(v5 + 56) + 32 * result, v14);

    sub_266318804(v14, v15);
    swift_dynamicCast();
    v9 = 0.0;
    v10 = 1.0;
    if (!v13)
    {
      v10 = 0.0;
    }

    *(a1 + 200) = v10;
    result = *v2;
    if (*v2 && (result = [result mediaType]) != 0)
    {
      *(a1 + 160) = 0;
      v9 = 1.0;
      if (result != 1)
      {
        *(a1 + 256) = 0;
        v11 = 1.0;
        if (result != 2)
        {
          *(a1 + 168) = 0;
          if (result != 3)
          {
            *(a1 + 24) = 0;
            if (result != 4)
            {
              *(a1 + 240) = 0;
              if (result != 5)
              {
                *(a1 + 216) = 0;
                if (result != 6)
                {
                  *(a1 + 248) = 0;
                  if (result != 10)
                  {
                    *(a1 + 80) = 0;
                    if (result != 14)
                    {
                      *(a1 + 64) = 0;
                      if (result != 16)
                      {
                        *(a1 + 232) = 0;
                        if (result != 17)
                        {
                          *(a1 + 88) = 0;
                          v12 = 0.0;
                          if (result == 18)
                          {
                            v12 = 1.0;
                          }

                          goto LABEL_35;
                        }

LABEL_34:
                        *(a1 + 88) = v11;
                        v12 = 0.0;
LABEL_35:
                        *(a1 + 72) = v12;
                        return result;
                      }

LABEL_33:
                      *(a1 + 232) = v11;
                      v11 = 0.0;
                      goto LABEL_34;
                    }

LABEL_32:
                    *(a1 + 64) = v11;
                    v11 = 0.0;
                    goto LABEL_33;
                  }

LABEL_31:
                  *(a1 + 80) = v11;
                  v11 = 0.0;
                  goto LABEL_32;
                }

LABEL_30:
                *(a1 + 248) = v11;
                v11 = 0.0;
                goto LABEL_31;
              }

LABEL_29:
              *(a1 + 216) = v11;
              v11 = 0.0;
              goto LABEL_30;
            }

LABEL_28:
            *(a1 + 240) = v11;
            v11 = 0.0;
            goto LABEL_29;
          }

LABEL_27:
          *(a1 + 24) = v11;
          v11 = 0.0;
          goto LABEL_28;
        }

LABEL_26:
        *(a1 + 168) = v11;
        v11 = 0.0;
        goto LABEL_27;
      }
    }

    else
    {
      *(a1 + 160) = 0x3FF0000000000000;
    }

    *(a1 + 256) = v9;
    v11 = 0.0;
    goto LABEL_26;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2663F9FB8(void *a1, void (*a2)(void *), uint64_t a3)
{
  v43 = a2;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v42 = sub_2664DE438();
  v40 = *(v42 - 8);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v38 - v15;
  sub_2664DE428();
  v47[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073658, &qword_2664EB968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073660, &unk_2664EB970);
  v16 = sub_2664E0318();
  v18 = v17;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  v39 = v6;
  v20 = *(v6 + 16);
  v41 = v9;
  v44 = v5;
  v20(v9, v11, v5);
  v45 = a3;

  v21 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E36F0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2662C4094();
  *(v22 + 32) = v16;
  *(v22 + 40) = v18;
  sub_2664DFDC8(v21, &dword_26629C000, v19, "appSelectionSignalsSignal", 25, 2, v11, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v22);

  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v23 = sub_26632958C(1013);
  v24 = [a1 mediaSearch];
  v25 = [a1 parsecCategory];
  v26 = [a1 playbackQueueLocation];
  sub_2664DE428();
  sub_2664DE388();
  v28 = v27;
  v29 = *(v40 + 8);
  v30 = v14;
  v31 = v42;
  v29(v30, v42);
  if (v23)
  {

    sub_26636B8D0();
  }

  v47[3] = &type metadata for IntentMediaSignal;
  v47[4] = &off_2877EF8D8;
  v32 = swift_allocObject();
  v47[0] = v32;
  *(v32 + 16) = v24;
  *(v32 + 24) = v25;
  *(v32 + 32) = 0;
  *(v32 + 40) = v26;
  *(v32 + 48) = v28;
  sub_2664E0838();
  v33 = v41;
  sub_2664DFDD8();
  v43(v47);
  v34 = *(v39 + 8);
  v35 = v33;
  v36 = v44;
  v34(v35, v44);

  v34(v11, v36);
  v29(v46, v31);
  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

id SAStartRequest.init(utterance:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_2664E02A8();

  [v2 setUtterance_];

  return v2;
}

id SASendCommands.init(commands:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073670, &unk_2664EB998);
  v2 = sub_2664E0488();

  [v1 setCommands_];

  return v1;
}

id static SASendCommands.startRequest(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2662A320C(a1, a2, &v21);
    _os_log_impl(&dword_26629C000, v9, v10, "SASendCommands#startRequest creating start request command with machine utterance: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v13 = [objc_allocWithZone(MEMORY[0x277D47948]) init];
  v14 = sub_2664E02A8();
  [v13 setUtterance_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2664E34F0;
  *(v15 + 32) = v13;
  v16 = objc_allocWithZone(MEMORY[0x277D477C0]);
  v17 = v13;
  v18 = [v16 init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073670, &unk_2664EB998);
  v19 = sub_2664E0488();

  [v18 setCommands_];

  return v18;
}

id SAUIConfirmationView.init(denyOption:confirmOption:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [a2 commands];
  [v4 setConfirmCommands_];

  v6 = [a1 commands];
  [v4 setDenyCommands_];

  v7 = [a2 label];
  [v4 setConfirmText_];

  v8 = [a1 label];
  [v4 setDenyText_];

  [v4 setCancelTrigger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2664EB980;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_2663FADE4();
  v10 = a1;
  v11 = a2;
  v12 = sub_2664E0488();

  [v4 setAllConfirmationOptions_];

  return v4;
}

id SAUIConfirmationOption.init(label:type:iconType:commands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = sub_2664E02A8();

  [v7 setLabel_];

  v9 = sub_2664E02A8();

  [v7 setType_];

  v10 = sub_2664E02A8();

  [v7 setIconType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073688, qword_2664EB9A8);
  v11 = sub_2664E0488();

  [v7 setCommands_];

  return v7;
}

id SAPerson.init(contact:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 givenName];
  if (!v3)
  {
    sub_2664E02C8();
    v3 = sub_2664E02A8();
  }

  [v2 setFirstName_];

  v4 = [a1 phoneticGivenName];
  if (!v4)
  {
    sub_2664E02C8();
    v4 = sub_2664E02A8();
  }

  [v2 setFirstNamePhonetic_];

  v5 = [a1 middleName];
  if (!v5)
  {
    sub_2664E02C8();
    v5 = sub_2664E02A8();
  }

  [v2 setMiddleName_];

  v6 = [a1 familyName];
  if (!v6)
  {
    sub_2664E02C8();
    v6 = sub_2664E02A8();
  }

  [v2 setLastName_];

  v7 = [a1 phoneticFamilyName];
  if (!v7)
  {
    sub_2664E02C8();
    v7 = sub_2664E02A8();
  }

  [v2 setLastNamePhonetic_];

  v8 = [a1 nickname];
  if (!v8)
  {
    sub_2664E02C8();
    v8 = sub_2664E02A8();
  }

  [v2 setNickName_];

  return v2;
}

unint64_t sub_2663FADE4()
{
  result = qword_280073680;
  if (!qword_280073680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073680);
  }

  return result;
}

uint64_t HistoryStats.addInstance(date:)(uint64_t a1)
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE3C8();
  if (v5 <= 0.0)
  {

    return sub_2664DF368();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_2664DFE18();
    v8 = sub_2664E06D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26629C000, v7, v8, "HistoryStats cannot add instance from the future", v9, 2u);
      MEMORY[0x266784AD0](v9, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t HistoryStats.total1Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = *(v1 + 104);
  v7(&v19 - v5, *MEMORY[0x277D5FF88], v0);
  v8 = sub_2664DF3A8();
  v9 = *(v1 + 8);
  v9(v6, v0);
  v7(v4, *MEMORY[0x277D5FF60], v0);
  v10 = sub_2664DF3A8();
  result = (v9)(v4, v0);
  v12 = __OFADD__(v8, v10);
  v13 = v8 + v10;
  if (v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7(v6, *MEMORY[0x277D5FF80], v0);
  v14 = sub_2664DF3A8();
  result = (v9)(v6, v0);
  v12 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7(v6, *MEMORY[0x277D5FF50], v0);
  v16 = sub_2664DF3A8();
  result = (v9)(v6, v0);
  v12 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7(v6, *MEMORY[0x277D5FF70], v0);
  v18 = sub_2664DF3A8();
  v9(v6, v0);
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t HistoryStats.total7Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = HistoryStats.total1Day.getter();
  (*(v1 + 104))(v3, *MEMORY[0x277D5FF58], v0);
  v5 = sub_2664DF3A8();
  (*(v1 + 8))(v3, v0);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
  }

  return result;
}

uint64_t HistoryStats.total28Day.getter()
{
  v0 = sub_2664DF3C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = HistoryStats.total1Day.getter();
  v5 = *(v1 + 104);
  v5(v3, *MEMORY[0x277D5FF58], v0);
  v6 = sub_2664DF3A8();
  v7 = *(v1 + 8);
  result = v7(v3, v0);
  v9 = __OFADD__(v4, v6);
  v10 = v4 + v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5(v3, *MEMORY[0x277D5FF68], v0);
  v11 = sub_2664DF3A8();
  v7(v3, v0);
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2663FB4F0()
{
  v23 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v39 = v2;
  v40 = &protocol witness table for MultiUserConnectionProvider;
  *&v38 = v1;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();
  swift_retain_n();
  v22 = sub_266360778(v0, &v38, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v35 = qword_280F905C8;
  *(&v35 + 5) = *(&qword_280F905C8 + 5);
  v36 = &type metadata for FeatureFlagProvider;
  v37 = &protocol witness table for FeatureFlagProvider;
  v34 = &protocol witness table for SharedContextProvider;
  v33 = type metadata accessor for SharedContextProvider();
  v31 = &protocol witness table for SubscriptionProvider;
  *&v32 = swift_initStaticObject();
  v30 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v27 = type metadata accessor for SiriKitTaskLoggingProvider();
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = v7;
  v25[3] = &type metadata for WatchOSSupportProvider;
  v25[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v9[2] = v22;
  v9[17] = v23;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v38, (v9 + 20));
  sub_2662A8618(&v35, (v9 + 30));
  sub_2662A8618(&v32, (v9 + 35));
  sub_2662A8618(&v29, (v9 + 7));
  sub_2662A8618(&v26, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v39 = v8;
  v40 = &off_2877F3740;
  *&v38 = v9;
  v36 = &type metadata for PlaybackStarter;
  v37 = &off_2877EE098;
  v10 = swift_allocObject();
  *&v35 = v10;
  sub_2663DE730(v10 + 2);
  v11 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v33 = v2;
  v34 = &protocol witness table for MultiUserConnectionProvider;
  *&v32 = v1;
  v12 = swift_allocObject();

  v13 = sub_266360778(v11, &v32, v12);

  v10[10] = v3;
  v10[11] = &protocol witness table for AccountProvider;
  v10[7] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v33 = v2;
  v34 = &protocol witness table for MultiUserConnectionProvider;
  *&v32 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v32, v15);

  v33 = v3;
  v34 = &protocol witness table for AccountProvider;
  *&v32 = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v18 = swift_allocObject();
  v19 = sub_266360778(v17, &v29, v18);

  v30 = &type metadata for PlaybackQueueLocationProvider;
  v31 = &off_2877E8100;
  v20 = swift_allocObject();
  *&v29 = v20;
  v20[5] = v3;
  v20[6] = &protocol witness table for AccountProvider;
  v20[2] = v19;
  sub_2663DE730(v20 + 7);
  return (*(v24 + 136))(&v38, &v35, &v32, &v29);
}

uint64_t sub_2663FB9C4(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v53 = a4;
  v55 = a3;
  v49 = sub_2664DFE38();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = a2[1];
  v61 = *a2;
  v62 = v9;
  *v63 = a2[2];
  *&v63[15] = *(a2 + 47);
  v56 = a1;
  v10 = *(a1 + 49);
  do
  {
    v12 = v8;
    if (v8 == 5)
    {
      break;
    }

    v13 = byte_2877E4B00[v8 + 32];
    if (byte_2877E4B00[v12 + 32] > 3u)
    {
      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v18 = 0x62696C656C6F6877;
          v19 = 0xEC00000079726172;
          if (v10 > 3)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v19 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          if (v10 > 3)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        if (v13 == 4)
        {
          v18 = 1684630645;
        }

        else
        {
          v18 = 0x6867696C746F7073;
        }

        if (v13 == 4)
        {
          v19 = 0xE400000000000000;
        }

        else
        {
          v19 = 0xE900000000000074;
        }

        if (v10 > 3)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      v14 = 0x72657669746C756DLL;
      if (v13 != 2)
      {
        v14 = 0x65726F7473;
      }

      v15 = 0xEA00000000006573;
      if (v13 != 2)
      {
        v15 = 0xE500000000000000;
      }

      v16 = 0x636E797369726973;
      if (!v13)
      {
        v16 = 0x656369766564;
      }

      v17 = 0xE600000000000000;
      if (v13)
      {
        v17 = 0xE800000000000000;
      }

      if (v13 <= 1)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      if (v13 <= 1)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (v10 > 3)
      {
LABEL_32:
        v20 = 0x62696C656C6F6877;
        if (v10 != 6)
        {
          v20 = 0x6E776F6E6B6E75;
        }

        v21 = 0xEC00000079726172;
        if (v10 != 6)
        {
          v21 = 0xE700000000000000;
        }

        v22 = 0x6867696C746F7073;
        if (v10 == 4)
        {
          v22 = 1684630645;
        }

        v23 = 0xE900000000000074;
        if (v10 == 4)
        {
          v23 = 0xE400000000000000;
        }

        if (v10 <= 5)
        {
          v24 = v22;
        }

        else
        {
          v24 = v20;
        }

        if (v10 <= 5)
        {
          v25 = v23;
        }

        else
        {
          v25 = v21;
        }

        if (v18 != v24)
        {
          goto LABEL_2;
        }

        goto LABEL_62;
      }
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v26 = 0x72657669746C756DLL;
      }

      else
      {
        v26 = 0x65726F7473;
      }

      if (v10 == 2)
      {
        v25 = 0xEA00000000006573;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      if (v18 != v26)
      {
        goto LABEL_2;
      }
    }

    else if (v10)
    {
      v25 = 0xE800000000000000;
      if (v18 != 0x636E797369726973)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v25 = 0xE600000000000000;
      if (v18 != 0x656369766564)
      {
        goto LABEL_2;
      }
    }

LABEL_62:
    if (v19 == v25)
    {

      break;
    }

LABEL_2:
    v11 = sub_2664E0D88();

    v8 = v12 + 1;
  }

  while ((v11 & 1) == 0);
  v27 = v56;
  if (sub_2664C8564(v56))
  {
    v28 = a2[1];
    v58 = *a2;
    v59 = v28;
    *v60 = a2[2];
    *&v60[15] = *(a2 + 47);
    v29 = swift_allocObject();
    v30 = a2[1];
    *(v29 + 16) = *a2;
    *(v29 + 32) = v30;
    *(v29 + 48) = a2[2];
    *(v29 + 63) = *(a2 + 47);
    *(v29 + 72) = v53;
    v31 = v52;
    *(v29 + 80) = v54;
    *(v29 + 88) = v31;
    v32 = v55;
    *(v29 + 96) = v55;
    *(v29 + 104) = v27;
    *(v29 + 112) = v12 != 5;

    sub_2662D2A64(&v61, v57);
    v33 = v32;

    sub_2664C604C((v31 + 96), v27, &v58, 2, sub_2664016C8, v29);
  }

  else
  {
    v34 = v52;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v49;
    v36 = __swift_project_value_buffer(v49, qword_280F914F0);
    swift_beginAccess();
    (*(v51 + 16))(v50, v36, v35);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "MPCAssistantQueueHandler#warm routing gathered, fetching queue from subclass", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v40 = v12 != 5;

    (*(v51 + 8))(v50, v35);
    v58 = v61;
    v59 = v62;
    *v60 = *v63;
    *&v60[15] = *&v63[15];
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    *(v41 + 24) = v54;
    v42 = v62;
    *(v41 + 32) = v61;
    *(v41 + 48) = v42;
    *(v41 + 64) = *v63;
    *(v41 + 79) = *&v63[15];
    v43 = v55;
    *(v41 + 88) = v55;
    *(v41 + 96) = v34;
    *(v41 + 104) = v27;
    *(v41 + 112) = 0;
    *(v41 + 116) = v40;
    v44 = *(*v34 + 160);

    sub_2662D2A64(&v61, v57);
    v45 = v43;

    v44(v46, &v58, 0, sub_266401650, v41);
  }
}

void *sub_2663FC110(void *a1, void *a2, __int128 *a3, void *a4)
{
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v11;
  v8[5] = type metadata accessor for MediaPlaybackProvider();
  v8[6] = &off_2877F3740;
  v8[2] = v21;
  v8[10] = &type metadata for PlaybackStarter;
  v8[11] = &off_2877EE098;
  v22 = swift_allocObject();
  v8[7] = v22;
  v23 = v15[3];
  v22[3] = v15[2];
  v22[4] = v23;
  v22[5] = v15[4];
  v24 = v15[1];
  v22[1] = *v15;
  v22[2] = v24;
  v8[20] = &type metadata for PlaybackQueueLocationProvider;
  v8[21] = &off_2877E8100;
  v25 = swift_allocObject();
  v8[17] = v25;
  v26 = v19[3];
  v25[3] = v19[2];
  v25[4] = v26;
  v25[5] = v19[4];
  v27 = v19[1];
  v25[1] = *v19;
  v25[2] = v27;
  sub_2662A8618(a3, (v8 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

void sub_2663FC40C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8)
{
  v145 = a6;
  v147 = a4;
  v148 = a3;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v130[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](&v130[-v22]);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v130[-v25];
  v27 = MEMORY[0x28223BE20](v24);
  v34 = &v130[-v33];
  v35 = *(a1 + 16);
  if (!v35)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v34, v47, v13);
    v48 = v14;
    v49 = sub_2664DFE18();
    v50 = sub_2664E06B8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&aBlock = v52;
      *v51 = 134218498;
      *(v51 + 4) = 10;
      *(v51 + 12) = 2048;
      *(v51 + 14) = 38;
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_2662A320C(0x5164696C61766E49, 0xEC00000065756575, &aBlock);
      _os_log_impl(&dword_26629C000, v49, v50, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v51, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    (*(v48 + 8))(v34, v13);
    aBlock = xmmword_2664EBA10;
    *&v151 = 0xEC00000065756575;
    BYTE8(v151) = 1;
    v148(&aBlock);
    goto LABEL_13;
  }

  v138 = v29;
  LODWORD(v139) = a8;
  v135 = v28;
  v134 = v27;
  *&v136 = v32;
  v133 = v31;
  v132 = v30;
  v36 = v14;
  v141 = *(a1 + 24);
  v131 = *(a1 + 32);
  LODWORD(v137) = *(a1 + 36);
  v37 = qword_280F914E8;
  v142 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v39 = v36;
  v40 = *(v36 + 16);
  v143 = v38;
  v144 = v36 + 16;
  v146 = v40;
  v40(v26, v38, v13);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_26629C000, v41, v42, "MPCAssistantQueueHandler#warm using x scheme", v43, 2u);
    v44 = v43;
    v39 = v36;
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v45 = *(v39 + 8);
  v45(v26, v13);
  v46 = *(a2 + 48);
  v140 = v39 + 8;
  if (v46 <= 1 && !v46)
  {
    goto LABEL_17;
  }

  v53 = sub_2664E0D88();

  if (v53)
  {
    goto LABEL_19;
  }

  if (v46 == 3)
  {
LABEL_17:

    goto LABEL_19;
  }

  v54 = sub_2664E0D88();

  if (v54)
  {
LABEL_19:
    v138 = v13;
    v55 = __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v56 = *(a2 + 50);
    *&v57 = *(a2 + 8);
    v137 = v57;
    v58 = *(a2 + 16);
    v59 = *(a7 + 104);
    *&v57 = *(a7 + 96);
    v136 = v57;
    v155[3] = &type metadata for PlaybackAttributes;
    v155[4] = &off_2877E7D78;
    v60 = swift_allocObject();
    v155[0] = v60;
    v61 = *(a2 + 16);
    *(v60 + 16) = *a2;
    *(v60 + 32) = v61;
    *(v60 + 48) = *(a2 + 32);
    *(v60 + 63) = *(a2 + 47);
    sub_26637C7BC(v55, &aBlock);
    sub_2662A5550(v155, v149);
    v62 = swift_allocObject();
    v63 = v153;
    *(v62 + 48) = v152;
    *(v62 + 64) = v63;
    v64 = v151;
    *(v62 + 16) = aBlock;
    *(v62 + 32) = v64;
    *&v63 = v137;
    *(&v63 + 1) = v58;
    *&v65 = v136;
    *(&v65 + 1) = v59;
    v66 = v154;
    *(v62 + 96) = v63;
    *(v62 + 112) = v65;
    *(v62 + 80) = v66;
    v67 = v147;
    *(v62 + 128) = v148;
    *(v62 + 136) = v67;
    sub_2662A8618(v149, v62 + 144);
    v68 = v142;
    v69 = v145;
    *(v62 + 184) = v142;
    *(v62 + 192) = v69;
    *(v62 + 200) = v139 & 1;
    v70 = v141;
    if (v141)
    {
      v139 = v45;
      v71 = v68;
      sub_2662D2A64(a2, &aBlock);

      v72 = v69;
      v73 = v70;

      [v73 mutableCopy];
      sub_2664E09E8();
      swift_unknownObjectRelease();
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      if (swift_dynamicCast())
      {
        v74 = v149[0];
        [v149[0] setSingleGroup_];
        v75 = v71;
        v76 = v73;

        v77 = v74;
        sub_2664ADBE8(v76, v72, v76, v75, sub_26637C818, v62, v77, v56);

LABEL_43:
        __swift_destroy_boxed_opaque_existential_1Tm(v155);
        return;
      }

      v142 = v71;
      v92 = v143;
      v93 = v138;
      v146(v134, v143, v138);
      v94 = sub_2664DFE18();
      v95 = sub_2664E06D8();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_26629C000, v94, v95, "Guaranteed cast to mutable RemoteControlDestination failed", v96, 2u);
        v97 = v96;
        v92 = v143;
        MEMORY[0x266784AD0](v97, -1, -1);
      }

      v98 = v139;
      v139(v134, v93);
      v145 = 0x80000002664F5AE0;
      v99 = v132;
      v146(v132, v92, v93);
      v100 = sub_2664DFE18();
      v101 = sub_2664E06B8();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = v73;
        v104 = swift_slowAlloc();
        *&aBlock = v104;
        *v102 = 134218498;
        *(v102 + 4) = 15;
        *(v102 + 12) = 2048;
        *(v102 + 14) = 22;
        *(v102 + 22) = 2080;
        *(v102 + 24) = sub_2662A320C(0xD000000000000010, v145, &aBlock);
        _os_log_impl(&dword_26629C000, v100, v101, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v102, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        v105 = v104;
        v73 = v103;
        MEMORY[0x266784AD0](v105, -1, -1);
        MEMORY[0x266784AD0](v102, -1, -1);
      }

      v98(v99, v93);
      aBlock = xmmword_2664E8D90;
      *&v151 = v145;
      BYTE8(v151) = 1;
      v148(&aBlock);
    }

    else
    {
      v78 = v143;
      v146(v135, v143, v138);
      v142 = v68;
      sub_2662D2A64(a2, &aBlock);

      v79 = v69;

      v80 = sub_2664DFE18();
      v81 = sub_2664E06D8();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_26629C000, v80, v81, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v82, 2u);
        v78 = v143;
        MEMORY[0x266784AD0](v82, -1, -1);
      }

      v83 = v138;
      v45(v135, v138);
      v84 = v133;
      v85 = v78;
      v86 = v83;
      v146(v133, v85, v83);
      v87 = sub_2664DFE18();
      v88 = v45;
      v89 = sub_2664E06B8();
      if (os_log_type_enabled(v87, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&aBlock = v91;
        *v90 = 134218498;
        *(v90 + 4) = 15;
        *(v90 + 12) = 2048;
        *(v90 + 14) = 13;
        *(v90 + 22) = 2080;
        *(v90 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &aBlock);
        _os_log_impl(&dword_26629C000, v87, v89, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v90, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        MEMORY[0x266784AD0](v91, -1, -1);
        MEMORY[0x266784AD0](v90, -1, -1);
      }

      v88(v84, v86);
      aBlock = xmmword_2664E8DA0;
      *&v151 = 0xE900000000000074;
      BYTE8(v151) = 1;
      v148(&aBlock);
    }

    sub_2662D2F30(aBlock, *(&aBlock + 1), v151, SBYTE8(v151));
    goto LABEL_43;
  }

  v106 = v143;
  v146(v19, v143, v13);
  v107 = sub_2664DFE18();
  v108 = sub_2664E06C8();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_26629C000, v107, v108, "MPCAssistantQueueHandler#warm setting upnext via continuation and x scheme", v109, 2u);
    MEMORY[0x266784AD0](v109, -1, -1);
  }

  v45(v19, v13);
  v110 = v141;
  v111 = v137;
  if (!v141)
  {
    v111 = 1;
  }

  v112 = v147;
  if (v111)
  {
    v146(v138, v106, v13);
    v113 = sub_2664DFE18();
    v114 = sub_2664E06C8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_26629C000, v113, v114, "MPCAssistantQueueHandler#warm setting upnext via continuation and x scheme", v115, 2u);
      MEMORY[0x266784AD0](v115, -1, -1);
    }

    v45(v138, v13);
    v116 = v136;
    v146(v136, v106, v13);
    v117 = sub_2664DFE18();
    v118 = v45;
    v119 = sub_2664E06B8();
    if (os_log_type_enabled(v117, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&aBlock = v121;
      *v120 = 134218498;
      *(v120 + 4) = 10;
      *(v120 + 12) = 2048;
      *(v120 + 14) = 7;
      *(v120 + 22) = 2080;
      *(v120 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664F8000, &aBlock);
      _os_log_impl(&dword_26629C000, v117, v119, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v120, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x266784AD0](v121, -1, -1);
      MEMORY[0x266784AD0](v120, -1, -1);
    }

    v118(v116, v13);
    v122 = v142;
    aBlock = xmmword_2664EBA00;
    *&v151 = 0x80000002664F8000;
    BYTE8(v151) = 1;
    v148(&aBlock);

LABEL_13:
    sub_2662D2F30(aBlock, *(&aBlock + 1), v151, SBYTE8(v151));
    return;
  }

  v123 = objc_allocWithZone(MEMORY[0x277D27828]);
  v124 = v110;
  v125 = [v123 init];
  sub_266386350(MEMORY[0x277D84F90]);
  v126 = sub_2664E01A8();

  v127 = swift_allocObject();
  *(v127 + 16) = v148;
  *(v127 + 24) = v112;
  *&v152 = sub_2664016E0;
  *(&v152 + 1) = v127;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v151 = sub_2663A0C48;
  *(&v151 + 1) = &block_descriptor_34;
  v128 = _Block_copy(&aBlock);

  v129 = v142;
  [v125 insertPlaybackQueueWithResult:v142 atPosition:v131 onDestination:v124 withOptions:v126 completion:v128];
  _Block_release(v128);
}

uint64_t sub_2663FD67C(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v50 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = sub_2664DFD68();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = [a1 commandResult];
    v18 = [a1 error];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  sub_2664DFD98();

  v19 = sub_2664DFD48();
  v21 = v20;

  v22 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v21) & 0xF;
  }

  if (v22)
  {
    v46 = v14;
    v47 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = v15;
    v23 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v24 = *(v6 + 16);
    v24(v11, v23, v5);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "MPCAssistantQueueHandler#warm error doing queue insertion using x scheme", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v28 = *(v6 + 8);
    v28(v11, v5);
    v48 = sub_2664DFD48();
    v30 = v29;
    v31 = v49;
    v24(v49, v23, v5);

    v32 = sub_2664DFE18();
    v33 = sub_2664E06B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52 = v35;
      *v34 = 134218498;
      *(v34 + 4) = 10;
      *(v34 + 12) = 2048;
      *(v34 + 14) = 7;
      *(v34 + 22) = 2080;
      v36 = sub_2662A320C(v48, v30, &v52);

      *(v34 + 24) = v36;
      _os_log_impl(&dword_26629C000, v32, v33, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v34, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    else
    {
    }

    v28(v31, v5);
    v44 = v46;
    v52 = 2567;
    v53 = v48;
    v54 = v30;
    v55 = 1;
    v50(&v52);
    sub_2662D2F30(v52, v53, v54, v55);
    return (*(v45 + 8))(v51, v44);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v13, v37, v5);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v15;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "MPCAssistantQueueHandler#warm performed queue insertion using x scheme", v41, 2u);
      v42 = v41;
      v15 = v40;
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    (*(v6 + 8))(v13, v5);
    v52 = 0;
    v53 = 0;
    v55 = 0;
    v54 = 0;
    v50(&v52);
    return (*(v15 + 8))(v51, v14);
  }
}

uint64_t sub_2663FDC60(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, int a8, char a9)
{
  LODWORD(v170) = a8;
  v164 = a7;
  v169 = a6;
  v160 = a5;
  v166 = a3;
  v162 = sub_2664DFE08();
  v171 = *(v162 - 8);
  v12 = MEMORY[0x28223BE20](v162);
  v161 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v145 - v14;
  v173 = sub_2664DFE38();
  v16 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v18 = MEMORY[0x28223BE20](&v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v157 = &v145 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v145 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v145 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v34 = &v145 - v33;
  v35 = *(a1 + 8);
  v172 = *a1;
  v36 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v37 = qword_280F914E8;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v173;
    v39 = __swift_project_value_buffer(v173, qword_280F914F0);
    swift_beginAccess();
    (*(v16 + 16))(v34, v39, v38);

    v40 = sub_2664DFE18();
    v41 = sub_2664E06E8();
    v42 = v172;
    sub_2664017EC(v172, v35, v36, 1);
    if (os_log_type_enabled(v40, v41))
    {
      v43 = v16;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v165 = v35;
      v46 = a2;
      v47 = v45;
      *&aBlock = v45;
      *v44 = 136315138;
      v181[0] = v42;
      v48 = PlaybackCode.rawValue.getter();
      v50 = sub_2662A320C(v48, v49, &aBlock);

      *(v44 + 4) = v50;
      v42 = v172;
      _os_log_impl(&dword_26629C000, v40, v41, "MPCAssistantQueueHandler#warm failed to build queue from subclass - code:%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v51 = v47;
      a2 = v46;
      v35 = v165;
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      (*(v43 + 8))(v34, v173);
    }

    else
    {

      (*(v16 + 8))(v34, v173);
    }

    *&aBlock = v42;
    *(&aBlock + 1) = v35;
    *&v179 = v36;
    BYTE8(v179) = 1;
    a2(&aBlock);
    return sub_2662D2F30(aBlock, *(&aBlock + 1), v179, SBYTE8(v179));
  }

  v156 = v29;
  v154 = v32;
  v147 = v31;
  v165 = v35;
  v159 = v36;
  v148 = v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v52 = v173;
  v53 = __swift_project_value_buffer(v173, qword_280F914F0);
  swift_beginAccess();
  v54 = *(v16 + 16);
  v158 = v53;
  v168 = v16 + 16;
  v167 = v54;
  v54(v28, v53, v52);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v16;
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_26629C000, v55, v56, "MPCAssistantQueueHandler#warm successfully built queue from subclass", v58, 2u);
    v59 = v58;
    v16 = v57;
    MEMORY[0x266784AD0](v59, -1, -1);
  }

  v60 = *(v16 + 8);
  v163 = v16 + 8;
  v60(v28, v173);
  v61 = *(a4 + 48);
  if (v61 <= 1 && !*(a4 + 48))
  {
    goto LABEL_17;
  }

  v63 = sub_2664E0D88();

  if (v63)
  {
LABEL_19:
    v152 = a2;
    v65 = *__swift_project_boxed_opaque_existential_1(v169 + 2, v169[5]);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v66 = qword_280F91D48;
    sub_2664DFDE8();
    v67 = sub_2664E0848();
    sub_2664DFDC8(v67, &dword_26629C000, v66, "mediaPlaybackProviderStreamingAvailability", 42, 2, v15, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v150 = v170 & 0x1010101;
    sub_26648D3D0(v150, v65, &aBlock);
    sub_2664E0838();
    v156 = v66;
    sub_2664DFDD8();
    v68 = *(v171 + 8);
    v171 += 8;
    v151 = v68;
    v68(v15, v162);
    v69 = aBlock;
    v70 = v158;
    v167(v25, v158, v173);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06E8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67240192;
      *(v73 + 4) = v69 != 3;
      _os_log_impl(&dword_26629C000, v71, v72, "MPCAssistantQueueHandler#warm localPlaybackPermitted: %{BOOL,public}d", v73, 8u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v60(v25, v173);
    v74 = v172;
    [v172 setShouldOverrideManuallyCuratedQueue_];
    v75 = v164;
    if (*(v164 + 88))
    {
      v76 = sub_2664E02A8();
    }

    else
    {
      v76 = 0;
    }

    [v74 setSiriRecommendationID_];

    swift_beginAccess();
    if (*(v75 + 24))
    {

      v77 = sub_2664E02A8();
    }

    else
    {
      v77 = 0;
    }

    v155 = v170 & 1;
    [v74 setSiriAssetInfo_];

    v78 = sub_2664E01A8();
    [v74 setSiriWHAMetricsInfo_];

    v174 = v74;
    sub_2664016F8(v74, v165, v159, 0);
    sub_2662C1744(0, &qword_280073690, 0x277D27860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073698, &qword_2664EBAB8);
    if (swift_dynamicCast())
    {
      sub_2662A8618(&aBlock, v175);
      v79 = v176;
      v80 = v177;
      __swift_project_boxed_opaque_existential_1(v175, v176);
      v81 = *(a4 + 16);
      aBlock = *a4;
      v179 = v81;
      *v180 = *(a4 + 32);
      *&v180[15] = *(a4 + 47);
      v82 = (*(*v169 + 168))(&aBlock);
      (*(v80 + 8))(v82 & 1, v79, v80);
      v167(v154, v70, v173);
      sub_2662D2A64(a4, &aBlock);
      v83 = sub_2664DFE18();
      v84 = sub_2664E06E8();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 67109120;
        *(v85 + 4) = *a4 & 1;
        sub_2662D2B88(a4);
        _os_log_impl(&dword_26629C000, v83, v84, "MPCAssistantQueueHandler: setting query attribute for shuffle: %{BOOL}d", v85, 8u);
        MEMORY[0x266784AD0](v85, -1, -1);
      }

      else
      {
        sub_2662D2B88(a4);
      }

      v60(v154, v173);
      __swift_destroy_boxed_opaque_existential_1Tm(v175);
    }

    else
    {
      *v180 = 0;
      aBlock = 0u;
      v179 = 0u;
      sub_266401708(&aBlock);
    }

    v149 = v69;
    LODWORD(v154) = (v170 >> 8) & 1;
    v153 = (v170 >> 16) & 1;
    LODWORD(v170) = (v170 >> 24) & 1;
    v86 = v157;
    v167(v157, v70, v173);
    v87 = sub_2664DFE18();
    v88 = sub_2664E06E8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_26629C000, v87, v88, "MPCAssistantQueueHandler: resolving destination and sending queue in background with continuation...", v89, 2u);
      MEMORY[0x266784AD0](v89, -1, -1);
    }

    v157 = v60;
    v60(v86, v173);
    v90 = v169;
    v91 = __swift_project_boxed_opaque_existential_1(v169 + 2, v169[5]);
    v92 = *(a4 + 24);
    v146 = *(a4 + 32);
    v93 = *(a4 + 40);
    v94 = swift_allocObject();
    v95 = v166;
    *(v94 + 16) = v152;
    *(v94 + 24) = v95;
    v96 = *(a4 + 16);
    *(v94 + 32) = *a4;
    *(v94 + 48) = v96;
    *(v94 + 64) = *(a4 + 32);
    *(v94 + 79) = *(a4 + 47);
    *(v94 + 83) = v155;
    *(v94 + 84) = v154;
    *(v94 + 85) = v153;
    *(v94 + 86) = v170;
    *(v94 + 88) = v90;
    v97 = v172;
    v98 = v160;
    *(v94 + 96) = v172;
    *(v94 + 104) = v98;
    *(v94 + 112) = v164;
    *(v94 + 120) = a9 & 1;
    v99 = *v91;
    sub_2664016F8(v97, v165, v159, 0);
    sub_2662D2A64(a4, &aBlock);

    v100 = v93;

    v101 = v98;

    v102 = v161;
    v103 = v156;
    sub_2664DFDE8();
    v104 = sub_2664E0848();
    LOBYTE(v144) = 2;
    sub_2664DFDC8(v104, &dword_26629C000, v103, "mediaPlaybackProviderDestination", 32, 2, v102, " enableTelemetry=YES ", 21, v144, MEMORY[0x277D84F90]);
    if (v93 && !*(v92 + 16))
    {
      v172 = v99;
      v122 = v147;
      v167(v147, v158, v173);

      v123 = sub_2664DFE18();
      v124 = sub_2664E06E8();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v170 = swift_slowAlloc();
        v175[0] = v170;
        *v125 = 136315138;
        v126 = v146;
        *&aBlock = v146;
        *(&aBlock + 1) = v100;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v127 = sub_2664E0318();
        v129 = sub_2662A320C(v127, v128, v175);

        *(v125 + 4) = v129;
        _os_log_impl(&dword_26629C000, v123, v124, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v125, 0xCu);
        v130 = v170;
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        MEMORY[0x266784AD0](v130, -1, -1);
        MEMORY[0x266784AD0](v125, -1, -1);

        (v157)(v122, v173);
        v131 = v149;
      }

      else
      {

        (v157)(v122, v173);
        v131 = v149;
        v126 = v146;
      }

      v141 = v131 != 3;
      v119 = [objc_opt_self() systemMediaApplicationDestination];
      v142 = swift_allocObject();
      v142[2] = sub_266401770;
      v142[3] = v94;
      v142[4] = v172;
      v142[5] = v126;
      v142[6] = v100;
      *v180 = sub_2662CDCDC;
      *&v180[8] = v142;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v179 = sub_2663A0C48;
      *(&v179 + 1) = &block_descriptor_40;
      v143 = _Block_copy(&aBlock);

      [v119 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:v141 audioRoutingInfo:v150 completion:v143];
      _Block_release(v143);
    }

    else
    {
      v105 = v148;
      v167(v148, v158, v173);

      v106 = sub_2664DFE18();
      v107 = sub_2664E06C8();

      v108 = os_log_type_enabled(v106, v107);
      v109 = v149;
      if (v108)
      {
        LODWORD(v172) = v149 != 3;
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&aBlock = v111;
        *v110 = 136446722;
        LOBYTE(v175[0]) = v155;
        BYTE1(v175[0]) = v154;
        BYTE2(v175[0]) = v153;
        BYTE3(v175[0]) = v170;
        type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
        v112 = sub_2664E0318();
        v114 = sub_2662A320C(v112, v113, &aBlock);

        *(v110 + 4) = v114;
        *(v110 + 12) = 2080;
        v175[0] = v92;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
        v115 = sub_2664E0318();
        v117 = sub_2662A320C(v115, v116, &aBlock);

        *(v110 + 14) = v117;
        v102 = v161;
        *(v110 + 22) = 1026;
        *(v110 + 24) = v172;
        _os_log_impl(&dword_26629C000, v106, v107, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v110, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v111, -1, -1);
        MEMORY[0x266784AD0](v110, -1, -1);
      }

      (v157)(v105, v173);
      v118 = [objc_opt_self() systemMediaApplicationDestination];
      v119 = sub_2664E0488();
      v120 = swift_allocObject();
      *(v120 + 16) = sub_266401770;
      *(v120 + 24) = v94;
      *v180 = sub_2662CDCD4;
      *&v180[8] = v120;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v179 = sub_2663A0C48;
      *(&v179 + 1) = &block_descriptor_34_0;
      v121 = _Block_copy(&aBlock);

      [v118 resolveWithQueue:0 hashedRouteIdentifiers:v119 localPlaybackPermitted:v109 != 3 audioRoutingInfo:v150 completion:v121];
      _Block_release(v121);
    }

    sub_2664E0838();
    sub_2664DFDD8();

    return v151(v102, v162);
  }

  if (v61 == 3)
  {
LABEL_17:

    goto LABEL_19;
  }

  v64 = sub_2664E0D88();

  if (v64)
  {
    goto LABEL_19;
  }

  v167(v156, v158, v173);
  v132 = sub_2664DFE18();
  v133 = sub_2664E06E8();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_26629C000, v132, v133, "MPCAssistantQueueHandler#warm setting upnext via continuation", v134, 2u);
    MEMORY[0x266784AD0](v134, -1, -1);
  }

  v60(v156, v173);
  v135 = swift_allocObject();
  v136 = v164;
  *(v135 + 16) = v169;
  *(v135 + 24) = v136;
  v137 = *(a4 + 16);
  *(v135 + 32) = *a4;
  *(v135 + 48) = v137;
  *(v135 + 64) = *(a4 + 32);
  *(v135 + 79) = *(a4 + 47);
  v138 = v172;
  v139 = v160;
  *(v135 + 88) = v172;
  *(v135 + 96) = v139;
  sub_2664016F8(v138, v165, v159, 0);
  sub_2662D2A64(a4, &aBlock);

  v140 = v139;

  sub_2663F4978(0xD000000000000025, 0x80000002664F8020, v140, a2, v166, 0, sub_2664016E8, v135);
}

uint64_t sub_2663FF33C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  __swift_project_boxed_opaque_existential_1((a3 + 136), *(a3 + 160));
  v13 = *(a5 + 16);
  v15[0] = *a5;
  v15[1] = v13;
  v16[0] = *(a5 + 32);
  *(v16 + 15) = *(a5 + 47);
  return sub_2662EE198(a4, v15, [a6 createRemotePlaybackQueue], a7, a1, a2);
}

void sub_2663FF3E8(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7, void *a8, uint64_t a9, char a10)
{
  v62 = a8;
  v63 = a5;
  v65 = a3;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v60 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v60 - v23;
  if (a1)
  {
    if (*(a4 + 40) && !*(*(a4 + 24) + 16))
    {
      v51 = swift_allocObject();
      v52 = *(a4 + 16);
      *(v51 + 24) = *a4;
      *(v51 + 16) = a6;
      *(v51 + 40) = v52;
      *(v51 + 56) = *(a4 + 32);
      *(v51 + 71) = *(a4 + 47);
      v53 = a7;
      *(v51 + 80) = a7;
      v54 = v62;
      *(v51 + 88) = v62;
      *(v51 + 96) = a9;
      *(v51 + 104) = a10 & 1;
      v55 = v65;
      *(v51 + 112) = a2;
      *(v51 + 120) = v55;
      v73 = sub_266401834;
      v74 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2663A0C48;
      v72 = &block_descriptor_52;
      v56 = _Block_copy(&aBlock);
      v57 = a1;

      sub_2662D2A64(a4, &v66);
      v58 = v53;
      v59 = v54;

      [v57 resolveWithRouteIdentifiers:0 audioRoutingInfo:v63 & 0x1010101 completion:v56];
      _Block_release(v56);
    }

    else
    {
      v61 = a9;
      v64 = a2;
      v25 = qword_280F914E8;
      v60 = a1;
      if (v25 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v15, qword_280F914F0);
      swift_beginAccess();
      (*(v16 + 16))(v22, v26, v15);
      v27 = sub_2664DFE18();
      v28 = sub_2664E06C8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_26629C000, v27, v28, "MPCAssistantQueueHandler: resolved destination, applying routes...", v29, 2u);
        MEMORY[0x266784AD0](v29, -1, -1);
      }

      (*(v16 + 8))(v22, v15);
      v30 = sub_2664E0488();
      v31 = swift_allocObject();
      *(v31 + 16) = a6;
      *(v31 + 24) = a7;
      v32 = a7;
      v33 = *(a4 + 16);
      *(v31 + 32) = *a4;
      *(v31 + 48) = v33;
      *(v31 + 64) = *(a4 + 32);
      *(v31 + 79) = *(a4 + 47);
      v34 = v62;
      v35 = v61;
      *(v31 + 88) = v62;
      *(v31 + 96) = v35;
      *(v31 + 104) = a10 & 1;
      v36 = v65;
      *(v31 + 112) = v64;
      *(v31 + 120) = v36;
      v73 = sub_2664017FC;
      v74 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2663A0C48;
      v72 = &block_descriptor_46;
      v37 = _Block_copy(&aBlock);

      sub_2662D2A64(a4, &v66);
      v38 = v32;
      v39 = v34;

      v40 = v60;
      [v60 resolveWithHashedRouteIdentifiers:v30 audioRoutingInfo:v63 & 0x1010101 completion:v37];
      _Block_release(v37);
    }
  }

  else
  {
    v64 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v42 = *(v16 + 16);
    v42(v24, v41, v15);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "MPCAssistantQueueHandler#warm unexpected nil MPCAssistantRemoteControlDestination from media remote", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v46 = *(v16 + 8);
    v46(v24, v15);
    v42(v19, v41, v15);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06B8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v66 = v50;
      *v49 = 134218498;
      *(v49 + 4) = 10;
      *(v49 + 12) = 2048;
      *(v49 + 14) = 13;
      *(v49 + 22) = 2080;
      *(v49 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v66);
      _os_log_impl(&dword_26629C000, v47, v48, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v49, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v46(v19, v15);
    v66 = xmmword_2664EBA20;
    v67 = 0xE900000000000074;
    v68 = 1;
    v64(&v66);
    sub_2662D2F30(v66, *(&v66 + 1), v67, v68);
  }
}

uint64_t sub_2663FFB04(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  v101 = a8;
  LODWORD(v95) = a7;
  v97 = a5;
  v102 = sub_2664DFE38();
  v14 = *(v102 - 8);
  v15 = MEMORY[0x28223BE20](v102);
  v91 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v86[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v86[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v86[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v86[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v96 = a4;
  v25 = a9;
  v26 = v102;
  v27 = __swift_project_value_buffer(v102, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v14 + 16);
  v100 = v27;
  v99 = v14 + 16;
  v98 = v28;
  v28(v24, v27, v26);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v14;
    v32 = a1;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "MPCAssistantQueueHandler: resolved SE Route Id, now sending queue...", v33, 2u);
    v34 = v33;
    a1 = v32;
    v14 = v31;
    v25 = a9;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = *(v14 + 8);
  v92 = v14 + 8;
  v35(v24, v102);
  v36 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v37 = __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v87 = *(a3 + 50);
  *&v38 = *(a3 + 8);
  v94 = v38;
  v39 = *(a3 + 16);
  v40 = *(a6 + 104);
  *&v38 = *(a6 + 96);
  v93 = v38;
  v109[3] = &type metadata for PlaybackAttributes;
  v109[4] = &off_2877E7D78;
  v41 = swift_allocObject();
  v109[0] = v41;
  v42 = *(a3 + 16);
  *(v41 + 16) = *a3;
  *(v41 + 32) = v42;
  *(v41 + 48) = *(a3 + 32);
  *(v41 + 63) = *(a3 + 47);
  sub_26637C7BC(v37, &v104);
  sub_2662A5550(v109, v103);
  v43 = swift_allocObject();
  v44 = v107;
  *(v43 + 48) = v106;
  *(v43 + 64) = v44;
  v45 = v105;
  *(v43 + 16) = v104;
  *(v43 + 32) = v45;
  *&v44 = v94;
  *(&v44 + 1) = v39;
  *&v46 = v93;
  *(&v46 + 1) = v40;
  v47 = v108;
  *(v43 + 96) = v44;
  *(v43 + 112) = v46;
  *(v43 + 80) = v47;
  *(v43 + 128) = v101;
  *(v43 + 136) = v25;
  sub_2662A8618(v103, v43 + 144);
  v48 = v96;
  v49 = v97;
  *(v43 + 184) = v96;
  *(v43 + 192) = v49;
  *(v43 + 200) = v95 & 1;
  if (!v36)
  {
    v56 = v89;
    v98(v89, v100, v102);
    sub_2662D2A64(a3, &v104);

    v57 = v48;
    v58 = v49;

    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v35;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v62, 2u);
      v63 = v62;
      v35 = v61;
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v64 = v102;
    v35(v56, v102);
    v65 = v91;
    v98(v91, v100, v64);
    v66 = sub_2664DFE18();
    v67 = v35;
    v68 = sub_2664E06B8();
    if (os_log_type_enabled(v66, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v104 = v70;
      *v69 = 134218498;
      *(v69 + 4) = 15;
      *(v69 + 12) = 2048;
      *(v69 + 14) = 13;
      *(v69 + 22) = 2080;
      *(v69 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v104);
      _os_log_impl(&dword_26629C000, v66, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v69, -1, -1);

      v71 = v91;
    }

    else
    {

      v71 = v65;
    }

    v67(v71, v102);
    v104 = xmmword_2664E8DA0;
    *&v105 = 0xE900000000000074;
    BYTE8(v105) = 1;
    v101(&v104);
    goto LABEL_20;
  }

  v95 = v35;
  sub_2662D2A64(a3, &v104);

  v50 = v48;
  v51 = v49;

  [v36 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v72 = v88;
    v98(v88, v100, v102);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06D8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_26629C000, v73, v74, "Guaranteed cast to mutable RemoteControlDestination failed", v75, 2u);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v76 = v102;
    v77 = v95;
    v95(v72, v102);
    v78 = v90;
    v98(v90, v100, v76);
    v79 = sub_2664DFE18();
    v80 = sub_2664E06B8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v100 = v25;
      v82 = v81;
      v83 = swift_slowAlloc();
      *&v104 = v83;
      *v82 = 134218498;
      *(v82 + 4) = 15;
      *(v82 + 12) = 2048;
      *(v82 + 14) = 22;
      *(v82 + 22) = 2080;
      *(v82 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v104);
      _os_log_impl(&dword_26629C000, v79, v80, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v82, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x266784AD0](v83, -1, -1);
      MEMORY[0x266784AD0](v82, -1, -1);

      v84 = v90;
    }

    else
    {

      v84 = v78;
    }

    v77(v84, v102);
    v104 = xmmword_2664E8D90;
    *&v105 = 0x80000002664F5AE0;
    BYTE8(v105) = 1;
    v101(&v104);

LABEL_20:

    sub_2662D2F30(v104, *(&v104 + 1), v105, SBYTE8(v105));
    return __swift_destroy_boxed_opaque_existential_1Tm(v109);
  }

  v52 = v103[0];
  [v103[0] setSingleGroup_];
  v53 = v50;
  v54 = v36;

  v55 = v52;
  sub_2664ADBE8(v54, v51, v54, v53, sub_26637F70C, v43, v55, v87);

  return __swift_destroy_boxed_opaque_existential_1Tm(v109);
}

uint64_t sub_266400550(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9)
{
  v99 = a8;
  LODWORD(v91) = a7;
  v94 = a5;
  v93 = a3;
  v92 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v83[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v85 = &v83[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v88 = &v83[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v83[-v22];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v98 = a9;
  v24 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v13 + 16);
  v97 = v24;
  v96 = v25;
  v95 = v13 + 16;
  (v25)(v23, v24, v12);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "MPCAssistantQueueHandler: resolved destination routes, now sending queue...", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v30 = v13 + 8;
  v29 = *(v13 + 8);
  v29(v23, v12);
  v31 = __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v84 = *(a4 + 50);
  *&v32 = *(a4 + 8);
  v90 = v32;
  v33 = *(a4 + 16);
  v34 = *(a6 + 104);
  *&v32 = *(a6 + 96);
  v89 = v32;
  v106[3] = &type metadata for PlaybackAttributes;
  v106[4] = &off_2877E7D78;
  v35 = swift_allocObject();
  v106[0] = v35;
  v36 = *(a4 + 16);
  *(v35 + 16) = *a4;
  *(v35 + 32) = v36;
  *(v35 + 48) = *(a4 + 32);
  *(v35 + 63) = *(a4 + 47);
  sub_26637C7BC(v31, &v101);
  sub_2662A5550(v106, v100);
  v37 = swift_allocObject();
  v38 = v104;
  *(v37 + 48) = v103;
  *(v37 + 64) = v38;
  v39 = v102;
  *(v37 + 16) = v101;
  *(v37 + 32) = v39;
  *&v38 = v90;
  *(&v38 + 1) = v33;
  *&v40 = v89;
  *(&v40 + 1) = v34;
  v41 = v105;
  *(v37 + 96) = v38;
  *(v37 + 112) = v40;
  *(v37 + 80) = v41;
  v42 = v98;
  *(v37 + 128) = v99;
  *(v37 + 136) = v42;
  sub_2662A8618(v100, v37 + 144);
  v43 = v93;
  v44 = v94;
  *(v37 + 184) = v93;
  *(v37 + 192) = v44;
  *(v37 + 200) = v91 & 1;
  if (!v92)
  {
    v92 = v12;
    v96(v88, v97);
    sub_2662D2A64(a4, &v101);

    v55 = v43;
    v56 = v44;

    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v29;
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v60, 2u);
      v61 = v60;
      v29 = v59;
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v62 = v92;
    v29(v88, v92);
    v63 = v87;
    (v96)(v87, v97, v62);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06B8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = v29;
      v68 = swift_slowAlloc();
      *&v101 = v68;
      *v66 = 134218498;
      *(v66 + 4) = 15;
      *(v66 + 12) = 2048;
      *(v66 + 14) = 13;
      *(v66 + 22) = 2080;
      *(v66 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v101);
      _os_log_impl(&dword_26629C000, v64, v65, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v66, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);

      v67(v63, v62);
    }

    else
    {

      v29(v63, v62);
    }

    v101 = xmmword_2664E8DA0;
    *&v102 = 0xE900000000000074;
    BYTE8(v102) = 1;
    v99(&v101);
    goto LABEL_19;
  }

  *&v90 = v29;
  v91 = v30;
  v45 = v92;
  sub_2662D2A64(a4, &v101);

  v46 = v43;
  v47 = v44;
  v48 = v46;
  v49 = v47;
  v50 = v45;

  [v50 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2662C1744(0, &qword_280072C48, 0x277D27850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = v85;
    (v96)(v85, v97, v12);
    v70 = sub_2664DFE18();
    v71 = sub_2664E06D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_26629C000, v70, v71, "Guaranteed cast to mutable RemoteControlDestination failed", v72, 2u);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    v73 = v90;
    (v90)(v69, v12);
    v74 = 0x80000002664F5AE0;
    v75 = v86;
    (v96)(v86, v97, v12);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v97 = 0x80000002664F5AE0;
      v79 = v78;
      v80 = swift_slowAlloc();
      *&v101 = v80;
      *v79 = 134218498;
      *(v79 + 4) = 15;
      *(v79 + 12) = 2048;
      *(v79 + 14) = 22;
      *(v79 + 22) = 2080;
      *(v79 + 24) = sub_2662A320C(0xD000000000000010, v97, &v101);
      _os_log_impl(&dword_26629C000, v76, v77, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v79, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      v81 = v79;
      v74 = v97;
      MEMORY[0x266784AD0](v81, -1, -1);
    }

    v73(v75, v12);
    v101 = xmmword_2664E8D90;
    *&v102 = v74;
    BYTE8(v102) = 1;
    v99(&v101);

LABEL_19:

    sub_2662D2F30(v101, *(&v101 + 1), v102, SBYTE8(v102));
    return __swift_destroy_boxed_opaque_existential_1Tm(v106);
  }

  v51 = v100[0];
  [v100[0] setSingleGroup_];
  v52 = v48;
  v53 = v50;

  v54 = v51;
  sub_2664ADBE8(v53, v49, v53, v52, sub_26637F70C, v37, v54, v84);

  return __swift_destroy_boxed_opaque_existential_1Tm(v106);
}

uint64_t sub_26640103C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2663FB4F0();
  *a1 = result;
  return result;
}

uint64_t sub_2664010C0(void *a1, uint64_t a2, void *a3, void (*a4)(void **, __n128), uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v58 = a3;
  v59 = a4;
  v60 = a2;
  v63 = sub_2664DFE08();
  v61 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v9;
  MEMORY[0x28223BE20](v8);
  v57 = &v50 - v10;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = a1[4];
  v55 = a1[3];
  v52 = v18;
  v53 = a1[5];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v20 = *(v12 + 16);
  v20(v17, v19, v11);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v15;
    v24 = v6;
    v25 = v23;
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "MPCAssistantQueueHandler#play starting queue", v23, 2u);
    v26 = v25;
    v6 = v24;
    v15 = v51;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = *(v12 + 8);
  v27(v17, v11);
  v51 = __swift_project_boxed_opaque_existential_1((v6 + 56), *(v6 + 80));
  v20(v15, v19, v11);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06B8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "PlaybackStarter#play Sending early completion to mark start playback request", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v27(v15, v11);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v31 = qword_280F91D48;
  v32 = v57;
  sub_2664DFDE8();
  v33 = sub_2664E0848();
  sub_2664DFDC8(v33, &dword_26629C000, v31, "playbackStarterPlayWaitOnSend", 29, 2, v32, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v50 = "playbackQueueLocation";
  v34 = v61;
  v35 = v56;
  v36 = v63;
  (*(v61 + 16))(v56, v32, v63);
  sub_26637C7BC(v51, v64);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 87) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v34 + 32))(v41 + v37, v35, v36);
  v42 = (v41 + v38);
  v43 = v64[3];
  v42[2] = v64[2];
  v42[3] = v43;
  v42[4] = v64[4];
  v44 = v64[1];
  *v42 = v64[0];
  v42[1] = v44;
  *(v41 + v39) = v55;
  v45 = (v41 + v40);
  v46 = v53;
  *v45 = v52;
  v45[1] = v46;
  v47 = v58;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v58;

  v48 = v47;

  sub_2663F4978(0xD00000000000001FLL, v50 | 0x8000000000000000, v48, v59, v62, v60, sub_2663CB454, v41);

  return (*(v34 + 8))(v32, v36);
}

uint64_t sub_266401650(uint64_t a1)
{
  if (*(v1 + 115))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 114))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 113))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_2663FDC60(a1, *(v1 + 16), *(v1 + 24), v1 + 32, *(v1 + 88), *(v1 + 96), *(v1 + 104), v4 | *(v1 + 112) | v3 | v2, *(v1 + 116));
}

void sub_2664016F8(void *a1, int a2, id a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_266401708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736A0, &unk_2664EBAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266401770(void *a1)
{
  if (*(v1 + 86))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 85))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 84))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2663FF3E8(a1, *(v1 + 16), *(v1 + 24), v1 + 32, v4 | *(v1 + 83) | v3 | v2, *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120));
}

void sub_2664017EC(void *a1, int a2, id a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_266401894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2664019C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662BD660;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_266401B18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 216) = a4;
  v7 = sub_2664DFE38();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266401C00, 0, 0);
}

uint64_t sub_266401C00()
{
  v51 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  *(v0 + 136) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47 = v5;
  v5(v1, v4, v2);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AudioMegamodelTriggeredLogger: Attempting to send triggered log", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);

  v12 = *(v11 + 8);
  *(v0 + 160) = v12;
  v48 = v12;
  v12(v9, v10);
  v13 = objc_allocWithZone(MEMORY[0x277CCAD78]);
  v14 = sub_2664E02A8();

  v15 = [v13 initWithUUIDString_];
  *(v0 + 168) = v15;

  if (v15)
  {
    v16 = *(v0 + 72);
    v17 = v16[3];
    v18 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v18 + 16))(v17, v18);
    if (v19)
    {
      v20 = objc_allocWithZone(MEMORY[0x277CCAD78]);
      v21 = sub_2664E02A8();

      v22 = [v20 initWithUUIDString_];
      *(v0 + 176) = v22;

      if (v22)
      {
        __swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
        v49 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
        v23 = swift_task_alloc();
        *(v0 + 184) = v23;
        *v23 = v0;
        v23[1] = sub_26640214C;

        return v49(v15, &unk_2877E50D0);
      }
    }

    v47(*(v0 + 120), v4, *(v0 + 88));
    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 120);
    v29 = *(v0 + 88);
    if (v27)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "AudioMegamodelTriggeredLogger: skipping triggered log because no Siri request ID available (i.e., megamodel evaluated outside of the context of a Siri request", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v31 = v28;
    v32 = v29;
  }

  else
  {
    v47(*(v0 + 112), v4, *(v0 + 88));
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 216);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315138;
      if (v35 == 1)
      {
        v38 = "2E-B087-1008D96998FA";
      }

      else
      {
        v38 = "eHandler#handleUpNext";
      }

      if (v35)
      {
        v39 = v38;
      }

      else
      {
        v39 = "9E-9E25-3F79C03A0137";
      }

      v40 = v37;
      v41 = *(v0 + 112);
      v42 = *(v0 + 88);
      v43 = sub_2662A320C(0xD000000000000024, v39 | 0x8000000000000000, &v50);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_26629C000, v33, v34, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: provided codepath [%s] doesn't parse as a UUID; this trigger will never be emitted!  Skipping.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);

      v31 = v41;
      v32 = v42;
    }

    else
    {
      v44 = *(v0 + 112);
      v45 = *(v0 + 88);

      v31 = v44;
      v32 = v45;
    }
  }

  v48(v31, v32);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_26640214C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_266402460;
  }

  else
  {
    v2 = sub_266402260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266402260()
{
  v1 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1(*(v0 + 80), *(*(v0 + 80) + 24));
  v6 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_266402334;
  v4 = *(v0 + 168);

  return v6(v4, v2);
}

uint64_t sub_266402334()
{
  v2 = *(*v1 + 176);
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_266402710;
  }

  else
  {
    v3 = sub_266402680;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266402460()
{
  v22 = v0;
  v1 = *(v0 + 192);
  (*(v0 + 144))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  v2 = v1;
  v3 = sub_2664DFE18();
  v4 = sub_2664E06D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v19 = *(v0 + 104);
    v20 = *(v0 + 160);
    v18 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2664E0DE8();
    v11 = sub_2662A320C(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26629C000, v3, v4, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: got %s while trying to emit triggered log; giving up without sending the trigger", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266784AD0](v8, -1, -1);
    MEMORY[0x266784AD0](v7, -1, -1);

    v20(v19, v18);
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 160);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_266402680()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_266402710()
{
  v22 = v0;
  v1 = *(v0 + 208);
  (*(v0 + 144))(*(v0 + 104), *(v0 + 136), *(v0 + 88));
  v2 = v1;
  v3 = sub_2664DFE18();
  v4 = sub_2664E06D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v19 = *(v0 + 104);
    v20 = *(v0 + 160);
    v18 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_2664E0DE8();
    v11 = sub_2662A320C(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26629C000, v3, v4, "AudioMegamodelTriggeredLogger#emitTriggeredLogAsync: got %s while trying to emit triggered log; giving up without sending the trigger", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266784AD0](v8, -1, -1);
    MEMORY[0x266784AD0](v7, -1, -1);

    v20(v19, v18);
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 160);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_266402930(uint64_t a1)
{
  v1 = a1;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v4);
  v2 = [objc_allocWithZone(sub_2664DFDB8()) init];
  sub_2664029E8(v1, v4, v2);

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_2664029E8(char a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v16[3] = sub_2664DFDB8();
  v16[4] = &off_2877EFCC8;
  v16[0] = a3;
  v9 = a3;
  sub_2664E05A8();
  v10 = sub_2664E05C8();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_2662A5550(a2, v15);
  sub_2662A5550(v16, v14);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  sub_2662A8618(v15, v11 + 40);
  sub_2662A8618(v14, v11 + 80);
  sub_26633E760(0, 0, v8, &unk_2664EBBA0, v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_266402B54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_266401B18(a1, v4, v5, v6, v1 + 40, v1 + 80);
}

uint64_t static Tasks.parallelizeAsync(tasks:priority:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266402C38, 0, 0);
}

uint64_t sub_266402C38()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_266402D1C;

  return MEMORY[0x282200600]();
}

uint64_t sub_266402D1C()
{

  return MEMORY[0x2822009F8](sub_266402E34, 0, 0);
}

uint64_t static Tasks.parallelizeInnerAsync(tasks:prirority:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266402E68, 0, 0);
}

uint64_t sub_266402E68()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_266402F4C;

  return MEMORY[0x282200600]();
}

uint64_t sub_266402F4C()
{

  return MEMORY[0x2822009F8](sub_266404388, 0, 0);
}

uint64_t static Tasks.parallelizeAsync(tasks:priority:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664E05C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  (*(v9 + 56))(&v18 - v12, 1, 1, v8);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a1;
  (*(v9 + 32))(&v15[v14], &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = &v15[(v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v16 = a3;
  *(v16 + 1) = a4;

  sub_26633E760(0, 0, v13, &unk_2664EBBF8, v15);
}

uint64_t sub_266403254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_266403278, 0, 0);
}

uint64_t sub_266403278()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_26640335C;

  return MEMORY[0x282200600]();
}

uint64_t sub_26640335C()
{

  return MEMORY[0x2822009F8](sub_266403474, 0, 0);
}

uint64_t sub_266403474()
{
  v3 = (*(v0 + 32) + **(v0 + 32));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_266403560;

  return v3();
}

uint64_t sub_266403560()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266403654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266403700, 0, 0);
}

uint64_t sub_266403700()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 72);
    v3 = (v1 + 32);
    do
    {
      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = *(v0 + 88);
      v9 = swift_allocObject();
      *(v9 + 16) = *v3;
      v10 = sub_2664E05C8();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v7, v8, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = &unk_2664EBC38;
      v12[5] = v9;
      sub_26633EF94(v7, v6);
      LODWORD(v7) = (*(v11 + 48))(v6, 1, v10);

      v14 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_26633F004(*(v0 + 96));
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_2664E05B8();
        (*(v11 + 8))(v14, v10);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_2664E0578();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_2664EBC40;
      *(v18 + 24) = v12;

      if (v16 | v15)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v22;
      swift_task_create();

      sub_26633F004(v5);
      ++v3;
      --v2;
    }

    while (v2);
  }

  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736A8, &unk_2664EBC50);
  *v19 = v0;
  v19[1] = sub_266403A70;

  return MEMORY[0x2822002C8](0, 0, v20);
}

uint64_t sub_266403A70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_266403B9C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2662C1890;

  return v4();
}

uint64_t sub_266403C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2662BD660;

  return v7();
}

uint64_t sub_266403DF0(void (*a1)(void (*)(), uint64_t), uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = a3;
  a1(sub_266374740, v5);
}

uint64_t sub_266403EF8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return sub_266403654(a1, a2, v7, v6);
}

uint64_t sub_266403FAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2664E05C8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2662BD660;

  return sub_266403254(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_2664040F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2662C1890;

  return sub_266403B9C(v2);
}

uint64_t sub_2664041A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662C1890;

  return sub_266403C84(a1, v4, v5, v6);
}

uint64_t sub_266404264(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662BD660;

  return sub_266396550(a1, v4);
}

Swift::Int_optional __swiftcall CommonIntentSignals.onscreenMediaItemListPosition()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2664048BC(v1);
  if (v6)
  {
    v7 = v6;
    v8 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000015, 0x80000002664F80E0, v6);
    if (v9)
    {
      v10 = HIBYTE(v9) & 0xF;
      v11 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v9) & 0xF;
      }

      else
      {
        v12 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v14 = sub_2664058E0(v8, v9, 10);
          v36 = v37;
LABEL_70:

          if (v36)
          {
            v8 = 0;
          }

          else
          {
            v8 = v14;
          }

          goto LABEL_76;
        }

        if ((v9 & 0x2000000000000000) != 0)
        {
          v40[0] = v8;
          v40[1] = v9 & 0xFFFFFFFFFFFFFFLL;
          if (v8 == 43)
          {
            if (v10)
            {
              v11 = v10 - 1;
              if (v10 != 1)
              {
                v14 = 0;
                v28 = v40 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    break;
                  }

                  v14 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v11)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_68;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          if (v8 != 45)
          {
            if (v10)
            {
              v14 = 0;
              v33 = v40;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v10)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_68;
          }

          if (v10)
          {
            v11 = v10 - 1;
            if (v10 != 1)
            {
              v14 = 0;
              v22 = v40 + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  break;
                }

                v24 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v24 - v23;
                if (__OFSUB__(v24, v23))
                {
                  break;
                }

                ++v22;
                if (!--v11)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v8 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v38 = v9;
            v8 = sub_2664E0B78();
            v11 = v9;
            LOBYTE(v9) = v38;
          }

          v13 = *v8;
          if (v13 == 43)
          {
            if (v11 >= 1)
            {
              if (--v11)
              {
                v14 = 0;
                if (v8)
                {
                  v25 = (v8 + 1);
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_68;
                    }

                    v27 = 10 * v14;
                    if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                    {
                      goto LABEL_68;
                    }

                    v14 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_68;
                    }

                    ++v25;
                    if (!--v11)
                    {
                      goto LABEL_69;
                    }
                  }
                }

                goto LABEL_67;
              }

              goto LABEL_68;
            }

            goto LABEL_81;
          }

          if (v13 != 45)
          {
            if (v11)
            {
              v14 = 0;
              if (v8)
              {
                while (1)
                {
                  v31 = *v8 - 48;
                  if (v31 > 9)
                  {
                    goto LABEL_68;
                  }

                  v32 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v14 = v32 + v31;
                  if (__OFADD__(v32, v31))
                  {
                    goto LABEL_68;
                  }

                  ++v8;
                  if (!--v11)
                  {
                    goto LABEL_69;
                  }
                }
              }

              goto LABEL_67;
            }

LABEL_68:
            v14 = 0;
            LOBYTE(v11) = 1;
            goto LABEL_69;
          }

          if (v11 >= 1)
          {
            if (--v11)
            {
              v14 = 0;
              if (v8)
              {
                v15 = (v8 + 1);
                while (1)
                {
                  v16 = *v15 - 48;
                  if (v16 > 9)
                  {
                    goto LABEL_68;
                  }

                  v17 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_68;
                  }

                  v14 = v17 - v16;
                  if (__OFSUB__(v17, v16))
                  {
                    goto LABEL_68;
                  }

                  ++v15;
                  if (!--v11)
                  {
                    goto LABEL_69;
                  }
                }
              }

LABEL_67:
              LOBYTE(v11) = 0;
LABEL_69:
              v39[0] = v11;
              v36 = v11;
              goto LABEL_70;
            }

            goto LABEL_68;
          }

          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v18, v2);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "CommonIntentSignals#onscreenMediaItemListPosition could not find intent returning nil", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  v8 = 0;
  v36 = 1;
LABEL_76:
  LOBYTE(v9) = v36 & 1;
LABEL_83:
  result.is_nil = v9;
  result.value = v8;
  return result;
}

uint64_t sub_2664048BC(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  if (swift_dynamicCast() || (sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0), swift_dynamicCast()) || (sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8), swift_dynamicCast()) || (sub_2662C1744(0, &unk_280F8F588, 0x277CD4030), swift_dynamicCast()))
  {
    v5 = v7[1];
  }

  else
  {
    v5 = 0;
  }

  (*(v2 + 8))(v4, a1);
  return v5;
}

BOOL sub_266404A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664048BC(a2);
  if (v8)
  {
    v9 = v8;
    v10 = _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v8, a1);

    return v10;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v12, v4);
    v13 = sub_2664DFE18();
    v14 = sub_2664E06D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26629C000, v13, v14, "CommonIntentSignals#isIntentInternalSignalPresent could not find intent returning false", v15, 2u);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

void sub_266404C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, void (*a6)(void, void, void), const char *a7)
{
  v33 = a7;
  v35 = a5;
  v36 = a1;
  v38 = a4;
  v37 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v34 = *(v10 + 16);
  v34(v15, v16, v9);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v10;
    v20 = a2;
    v21 = v13;
    v22 = a6;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, v35, v19, 2u);
    v24 = v23;
    a6 = v22;
    v13 = v21;
    a2 = v20;
    v10 = v32;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v10 + 8);
  v25(v15, v9);
  v26 = sub_2664048BC(v37);
  if (v26)
  {
    v27 = v26;
    a6(v36, a2, v26);
  }

  else
  {
    v34(v13, v16, v9);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, v33, v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v25(v13, v9);
  }
}

Swift::Void __swiftcall CommonIntentSignals.addSFACompanionAssistantID(assistantId:)(Swift::String assistantId)
{
  v3 = v2;
  v4 = v1;
  object = assistantId._object;
  countAndFlagsBits = assistantId._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0xD000000000000018, 0x80000002664F8100, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::Void __swiftcall CommonIntentSignals.addSFAAssistantID(assistantId:)(Swift::String assistantId)
{
  v3 = v2;
  v4 = v1;
  object = assistantId._object;
  countAndFlagsBits = assistantId._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0x7369737341414653, 0xEF3A6449746E6174, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::String_optional __swiftcall CommonIntentSignals.getSFACompanionAssistantID()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000018, 0x80000002664F8100, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall CommonIntentSignals.getSFAAssistantID()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0x7369737341414653, 0xEF3A6449746E6174, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall CommonIntentSignals.addSiriLocaleOverride(locale:)(Swift::String locale)
{
  v3 = v2;
  v4 = v1;
  object = locale._object;
  countAndFlagsBits = locale._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0xD000000000000013, 0x80000002664F8120, v4, v3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::Void __swiftcall CommonIntentSignals.addPreResolvedApp(bundleID:resolutionResultType:)(Swift::String bundleID, SiriAudioSupport::ResolutionResultType resolutionResultType)
{
  v4 = v3;
  v5 = v2;
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  sub_2664E0B28();

  MEMORY[0x2667833B0](countAndFlagsBits, object);
  sub_266404C5C(0xD000000000000014, 0x80000002664F8140, v5, v4, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");

  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000018, 0x80000002664F8160);
  sub_2664E0C28();
  sub_266404C5C(0, 0xE000000000000000, v5, v4, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");

  sub_266404C5C(0xD000000000000017, 0x80000002664F8180, v5, v4, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
}

Swift::tuple_String_SiriAudioSupport_ResolutionResultType_optional __swiftcall CommonIntentSignals.getPreResolvedApp()()
{
  v2 = v1;
  v3 = sub_2664048BC(v0);
  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = v3;
  v7 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000014, 0x80000002664F8140, v3);
  if (!v8)
  {

LABEL_9:
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  v11 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000018, 0x80000002664F8160, v6);
  if (!v12)
  {

    goto LABEL_9;
  }

  ResolutionResultType.init(rawValue:)(*&v11);

  v13 = v14;
  if (v14 == 12)
  {
    v13 = 1;
  }

  *v2 = v9;
  *(v2 + 8) = v10;
  *(v2 + 16) = v13;
LABEL_10:
  result.value._0._object = v4;
  result.value._0._countAndFlagsBits = v3;
  result.value._1 = v5;
  return result;
}

Swift::String_optional __swiftcall CommonIntentSignals.getLocaleOverride()()
{
  v1 = sub_2664048BC(v0);
  if (v1)
  {
    v2 = v1;
    v3 = _s16SiriAudioSupport22InternalSignalsManagerC9getSignal4with4fromSSSgSS_So8INIntentCtFZ_0(0xD000000000000013, 0x80000002664F8120, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t *CommonIntentSignals.addOnscreenMediaItemListPosition(for:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = *result;
  if (result[1])
  {
    v6 = __OFSUB__(0, v5);
    v5 = -v5;
    if (!v6)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!__OFSUB__(v5, 1))
  {
LABEL_6:
    v7 = sub_2664E0D48();
    MEMORY[0x2667833B0](v7);

    sub_266404C5C(0xD000000000000015, 0x80000002664F80E0, a2, a3, "CommonIntentSignals#addInternalSignal...", _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0, "CommonIntentSignals#addInternalSignal Could not find an intent");
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_2664058E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2664E0418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2664063F0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2664E0B78();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_266405E6C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_2664E0418();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2664063F0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2664E0B78();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2664063F0(uint64_t a1, unint64_t a2)
{
  v2 = sub_2664E0428();
  v6 = sub_266406470(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_266406470(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2664E0958();
    if (!v9 || (v10 = v9, v11 = sub_2662A3A54(v9, 0), v12 = sub_2664065C8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2664E0358();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2664E0358();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2664E0B78();
LABEL_4:

  return sub_2664E0358();
}

unint64_t sub_2664065C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2664067E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2664E03D8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2664E0B78();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2664067E8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2664E03B8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2664067E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2664E03E8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2667833E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_266406880(uint64_t a1@<X8>)
{
  v2 = sub_2664E02A8();
  v3 = MGGetSInt32Answer();

  v4 = v3 == 3;
  v5 = sub_2664E02A8();
  v6 = MGGetSInt32Answer();

  v7 = v6 == 1;
  v8 = [objc_opt_self() currentDeviceInfo];
  LOBYTE(v6) = [v8 isInternalBuild];

  *a1 = 0;
  *(a1 + 2) = v4;
  *(a1 + 3) = v7;
  *(a1 + 4) = v6;
}

uint64_t DeviceProvider.open(uri:carPlay:completion:)(void (*a1)(void, void), unint64_t a2, int a3, uint64_t (*a4)(id), uint64_t a5)
{
  v123 = a5;
  v124 = a4;
  LODWORD(v117) = a3;
  v122 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v113 - v7;
  v131 = sub_2664DE268();
  v129 = *(v131 - 8);
  v9 = MEMORY[0x28223BE20](v131);
  v119 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v118 = v113 - v12;
  MEMORY[0x28223BE20](v11);
  v130 = v113 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v121 = v113 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v120 = v113 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v113 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v114 = v113 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = v113 - v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v15 + 16);
  v127 = v29;
  v126 = v15 + 16;
  v125 = v30;
  v30(v28, v29, v14);

  v31 = v15;
  v32 = sub_2664DFE18();
  v33 = sub_2664E06B8();

  v34 = os_log_type_enabled(v32, v33);
  v115 = v24;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v133 = v36;
    *v35 = 136315138;
    v37 = v122;
    *(v35 + 4) = sub_2662A320C(v122, a2, &v133);
    _os_log_impl(&dword_26629C000, v32, v33, "DeviceProvider#open Request to open URI:%s  ...", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);

    v38 = v14;
    v128 = *(v31 + 8);
    v128(v28, v14);
    v39 = v31;
    v40 = v131;
  }

  else
  {

    v38 = v14;
    v128 = *(v15 + 8);
    v128(v28, v14);
    v39 = v15;
    v40 = v131;
    v37 = v122;
  }

  sub_2664DE258();
  v41 = v129;
  if ((*(v129 + 48))(v8, 1, v40) == 1)
  {
    sub_2662A9238(v8, &qword_280072BC0, &qword_2664E6030);
    v42 = v116;
    v43 = v38;
    v125(v116, v127, v38);

    v44 = sub_2664DFE18();
    v45 = sub_2664E06D8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v133 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_2662A320C(v37, a2, &v133);
      _os_log_impl(&dword_26629C000, v44, v45, "DeviceProvider#open Could not coerce input:%s to URL type", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v128(v42, v43);
    return v124(0);
  }

  else
  {
    (*(v41 + 32))(v130, v8, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E36F0;
    *(inited + 32) = 0xD000000000000014;
    v50 = inited + 32;
    *(inited + 40) = 0x80000002664F81A0;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    v51 = sub_2663854AC(inited);
    swift_setDeallocating();
    sub_2662A9238(v50, &unk_2800734F0, &unk_2664E3660);
    v136 = v51;
    v52 = v38;
    if (v117)
    {
      v53 = v114;
      v125(v114, v127, v52);
      v54 = sub_2664DFE18();
      v55 = sub_2664E06E8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_26629C000, v54, v55, "DeviceProvider#open Getting endpoint for CarPlay service...", v56, 2u);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      v128(v53, v52);
      v57 = [objc_opt_self() serviceName];
      if (!v57)
      {
        sub_2664E02C8();
        v57 = sub_2664E02A8();
      }

      v58 = sub_2664E02A8();
      v59 = [objc_opt_self() endpointForMachName:v58 service:v57 instance:0];

      v60 = sub_2664E02C8();
      v62 = v61;
      if (v59)
      {
        *(&v134 + 1) = sub_266407E20();
        *&v133 = v59;
        sub_266318804(&v133, v132);
        v63 = v59;
        v64 = v136;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v64;
        sub_26634EEE0(v132, v60, v62, isUniquelyReferenced_nonNull_native);

        v136 = v135;
      }

      else
      {
        v133 = 0u;
        v134 = 0u;
        sub_2662A9238(&v133, &unk_280074250, &unk_2664E3680);
        sub_2664079EC(v60, v62, v132);

        sub_2662A9238(v132, &unk_280074250, &unk_2664E3680);
      }

      v66 = v115;
      v125(v115, v127, v52);
      v67 = sub_2664DFE18();
      v68 = sub_2664E06E8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_26629C000, v67, v68, "DeviceProvider#open Retrieved carplay endpoint.", v69, 2u);
        MEMORY[0x266784AD0](v69, -1, -1);
        v70 = v59;
      }

      else
      {
        v70 = v67;
        v67 = v59;
      }

      v128(v66, v52);
    }

    v71 = v120;
    v125(v120, v127, v52);
    v72 = v129;
    v73 = v118;
    v74 = v131;
    v117 = *(v129 + 16);
    v117(v118, v130, v131);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06E8();
    v77 = os_log_type_enabled(v75, v76);
    v113[1] = v39;
    v113[0] = v52;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v133 = v79;
      *v78 = 136315394;
      sub_2663C12D0();
      v80 = sub_2664E0D48();
      v81 = v74;
      v82 = v80;
      v84 = v83;
      v122 = *(v72 + 8);
      v122(v73, v81);
      v85 = sub_2662A320C(v82, v84, &v133);

      *(v78 + 4) = v85;
      *(v78 + 12) = 2080;
      swift_beginAccess();

      v86 = sub_2664E01D8();
      v88 = v87;

      v89 = sub_2662A320C(v86, v88, &v133);

      *(v78 + 14) = v89;
      _os_log_impl(&dword_26629C000, v75, v76, "DeviceProvider#open Opening URL:%s with options: %s", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v79, -1, -1);
      v90 = v78;
      v52 = v113[0];
      MEMORY[0x266784AD0](v90, -1, -1);

      v128(v120, v52);
    }

    else
    {

      v122 = *(v72 + 8);
      v122(v73, v74);
      v128(v71, v52);
    }

    v91 = [objc_opt_self() defaultWorkspace];
    v92 = v130;
    if (v91)
    {
      v93 = v91;
      v94 = sub_2664DE208();
      swift_beginAccess();

      v95 = sub_2664E01A8();

      v96 = [v93 openSensitiveURL:v94 withOptions:v95];
    }

    else
    {
      v96 = 0;
    }

    v97 = v121;
    v125(v121, v127, v52);
    v98 = v119;
    v99 = v131;
    v117(v119, v92, v131);
    v100 = sub_2664DFE18();
    v101 = sub_2664E06B8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v135 = v103;
      *v102 = 136315394;
      sub_2663C12D0();
      v104 = sub_2664E0D48();
      v106 = v105;
      v107 = v98;
      v108 = v122;
      v122(v107, v99);
      v109 = sub_2662A320C(v104, v106, &v135);

      *(v102 + 4) = v109;
      *(v102 + 12) = 1024;
      *(v102 + 14) = v96;
      _os_log_impl(&dword_26629C000, v100, v101, "DeviceProvider#open Opened URL:%s with result: %{BOOL}d", v102, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      MEMORY[0x266784AD0](v103, -1, -1);
      MEMORY[0x266784AD0](v102, -1, -1);

      v110 = v121;
      v111 = v113[0];
    }

    else
    {

      v112 = v98;
      v108 = v122;
      v122(v112, v99);
      v110 = v97;
      v111 = v52;
    }

    v128(v110, v111);
    v124(v96);
    v108(v130, v99);
  }
}

double sub_26640793C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2664538FC();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + (v8 << 6));
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    v13 = v11[3];
    a3[2] = v11[2];
    a3[3] = v13;
    sub_266452ABC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2664079EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2662A3E98(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_266453AC4();
      v10 = v12;
    }

    sub_266318804((*(v10 + 56) + 32 * v8), a3);
    sub_266452C74(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_266407AFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = sub_2662A3E98(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

double sub_266407BAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_26634DAA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_266454598();
      v9 = v11;
    }

    sub_266318804((*(v9 + 56) + 32 * v7), a2);
    sub_26645319C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_266407C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_2662A3E98(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

unint64_t sub_266407E20()
{
  result = qword_2800736B0;
  if (!qword_2800736B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800736B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_266407F4C()
{
  type metadata accessor for NearDeviceProvider();
  v0 = swift_allocObject();
  result = NearDeviceProvider.init()();
  qword_2800736B8 = v0;
  return result;
}

uint64_t NearDeviceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  NearDeviceProvider.init()();
  return v0;
}

double static NearDeviceProvider.shared.getter()
{
  if (qword_280071C10 != -1)
  {
    swift_once();
  }

  return result;
}

void *NearDeviceProvider.init()()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E0788();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v12 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000020, 0x80000002664F8220, v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v13 = v20;
  v20[2] = v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v14, v0);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "NearDeviceProvider#init: Starting up RPCompanionLinkClient...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v13[3] = dispatch_group_create();
  v18 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  v13[4] = v18;
  [v18 setDispatchQueue_];
  return v13;
}

void sub_26640837C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "NearDeviceProvider#startDiscovering...", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  dispatch_group_enter(*(v1 + 24));
  v10 = *(v1 + 32);
  v21 = sub_266408794;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2662A3F90;
  v20 = &block_descriptor_36;
  v11 = _Block_copy(&aBlock);
  [v10 setInvalidationHandler_];
  _Block_release(v11);
  v21 = sub_2664087A0;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2662A3F90;
  v20 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  [v10 setInterruptionHandler_];
  _Block_release(v12);
  v21 = sub_266408958;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_26637AA0C;
  v20 = &block_descriptor_6;
  v13 = _Block_copy(&aBlock);
  [v10 setDeviceLostHandler_];
  _Block_release(v13);
  v21 = sub_266408964;
  v22 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_26637AA0C;
  v20 = &block_descriptor_9_0;
  v14 = _Block_copy(&aBlock);
  [v10 setDeviceFoundHandler_];
  _Block_release(v14);
  v21 = sub_2664097EC;
  v22 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2663CE9D8;
  v20 = &block_descriptor_12_3;
  v15 = _Block_copy(&aBlock);

  [v10 activateWithCompletion_];
  _Block_release(v15);
}

uint64_t sub_2664087AC(const char *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, a1, v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_266408970(void *a1, const char *a2, ...)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_26629C000, v10, v11, a2, v12, 0xCu);
    sub_2662E4324(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_266408B70(void *a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  if (a1)
  {
    v11 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = a1;
    v14 = sub_2664DFE18();
    v15 = sub_2664E06D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v29 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_2664E0DE8();
      v21 = sub_2662A320C(v19, v20, &v30);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_26629C000, v14, v15, "NearDeviceProvider#startDiscovering: Failed to activate RPCompanionLinkClient with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      v22 = v17;
      a2 = v29;
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    dispatch_group_leave(*(a2 + 24));
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v23, v4);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "NearDeviceProvider#startDiscovering: Successfully activated RPCompanionLinkClient", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    dispatch_group_leave(*(a2 + 24));
  }

  return sub_2664E0748();
}

uint64_t sub_266408F00()
{
  v0 = sub_2664E0018();
  v57 = *(v0 - 8);
  v58 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = (&v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_2664E00E8();
  v3 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v53 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = (&v53 - v17);
  if (qword_280F914E8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v20 = v10;
  v21 = *(v10 + 16);
  v60 = v10 + 16;
  v61 = v19;
  v64 = v9;
  v59 = v21;
  v21(v18, v19, v9);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "NearDeviceProvider#hasNearbyPhone...", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v20 + 8);
  v26 = v64;
  v62 = v20 + 8;
  v25(v18, v64);
  v27 = v25;
  v28 = v63;
  sub_2664E00C8();
  *v2 = 5001;
  v30 = v57;
  v29 = v58;
  (*(v57 + 104))(v2, *MEMORY[0x277D85178], v58);
  MEMORY[0x266783140](v6, v2);
  (*(v30 + 8))(v2, v29);
  v31 = *(v3 + 1);
  v32 = v6;
  v6 = v56;
  v31(v32, v56);
  sub_2664E0738();
  v31(v8, v6);
  if ((sub_2664E0028() & 1) == 0)
  {
    v37 = v54;
    v59(v54, v61, v26);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "NearDeviceProvider#hasNearbyPhone rapport timed out", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v27(v37, v26);
    return 0;
  }

  v3 = v55;
  v59(v55, v61, v26);

  v18 = sub_2664DFE18();
  v33 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v33))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v34 = [*(v28 + 32) activeDevices];
    sub_2664097F4();
    v35 = sub_2664E04A8();

    if (v35 >> 62)
    {
      v36 = sub_2664E0A68();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v36;

    _os_log_impl(&dword_26629C000, v18, v33, "NearDeviceProvider#hasNearbyPhone wait complete. Found %ld devices", v6, 0xCu);
    MEMORY[0x266784AD0](v6, -1, -1);
  }

  else
  {
  }

  v27(v3, v64);
  v9 = [*(v28 + 32) activeDevices];
  sub_2664097F4();
  v8 = sub_2664E04A8();

  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

  v10 = sub_2664E0A68();
  if (!v10)
  {
LABEL_32:

    return 0;
  }

LABEL_15:
  v58 = v27;
  v41 = 0;
  v63 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x266783B70](v41, v8);
    }

    else
    {
      if (v41 >= *(v63 + 16))
      {
        goto LABEL_29;
      }

      v42 = *(v8 + 8 * v41 + 32);
    }

    v6 = v42;
    v2 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v43 = [v42 model];
    if (v43)
    {
      v44 = v43;
      v45 = sub_2664E02C8();
      v3 = v46;

      v67[0] = v45;
      v67[1] = v3;
      v65 = 0x656E6F685069;
      v66 = 0xE600000000000000;
      sub_2662C178C();
      sub_2662C17E0();
      v18 = v67;
      v9 = sub_2664E0278();

      if (v9)
      {
        break;
      }
    }

    ++v41;
    if (v2 == v10)
    {
      goto LABEL_32;
    }
  }

  v47 = v53;
  v48 = v64;
  v59(v53, v61, v64);
  v49 = sub_2664DFE18();
  v50 = sub_2664E06C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_26629C000, v49, v50, "NearDeviceProvider#hasNearbyPhone found iphone", v51, 2u);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  else
  {
  }

  v58(v47, v48);
  return 1;
}

uint64_t NearDeviceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2664097F4()
{
  result = qword_2800736C0;
  if (!qword_2800736C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800736C0);
  }

  return result;
}

void *sub_266409920(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v51 = v7;
  v52 = v11;
  while (v10)
  {
    v58 = a1;
    v13 = v12;
LABEL_12:
    v14 = (*(a2 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v14;
    v15 = v14[1];
    swift_beginAccess();
    v17 = *a3;
    v18 = *(*a3 + 16);

    if (v18 && (v19 = sub_2662A3E98(v16, v15), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }

    else
    {
      v21 = 0;
    }

    swift_endAccess();
    swift_beginAccess();
    v22 = *a4;
    if (*(*a4 + 16) && (v23 = sub_2662A3E98(v16, v15), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }

    swift_endAccess();
    v26 = __OFADD__(v21, v25);
    v27 = v21 + v25;
    if (v26)
    {
      goto LABEL_42;
    }

    swift_beginAccess();
    v28 = *a5;
    if (*(*a5 + 16) && (v29 = sub_2662A3E98(v16, v15), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v31 = 0;
    }

    swift_endAccess();
    v26 = __OFADD__(v27, v31);
    v32 = v27 + v31;
    if (v26)
    {
      goto LABEL_43;
    }

    swift_beginAccess();
    v33 = *a6;
    if (*(*a6 + 16) && (v34 = sub_2662A3E98(v16, v15), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
    }

    swift_endAccess();
    v37 = v32 + v36;
    if (__OFADD__(v32, v36))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = sub_2662A3E98(v16, v15);
    v41 = v58[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_45;
    }

    v44 = v39;
    if (v58[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26645410C();
      }
    }

    else
    {
      sub_266450E14(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_2662A3E98(v16, v15);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_47;
      }

      v40 = v45;
    }

    v10 &= v10 - 1;
    a1 = v58;
    if (v44)
    {
      *(v58[7] + 8 * v40) = v37;
    }

    else
    {
      v58[(v40 >> 6) + 8] |= 1 << v40;
      v47 = (v58[6] + 16 * v40);
      *v47 = v16;
      v47[1] = v15;
      *(v58[7] + 8 * v40) = v37;
      v48 = v58[2];
      v26 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v26)
      {
        goto LABEL_46;
      }

      v58[2] = v49;
    }

    v12 = v13;
    v7 = v51;
    v11 = v52;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return a1;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v58 = a1;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_266409C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736C8, &qword_2664EBFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736D0, &unk_2664EBFC0);
  v11 = sub_2664E0318();
  v23 = v12;
  v24 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v25;
  v17[1] = a3;

  v18 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2664E36F0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2662C4094();
  v20 = v23;
  *(v19 + 32) = v24;
  *(v19 + 40) = v20;
  sub_2664DFDC8(v18, &dword_26629C000, v13, "appSelectionSignalsSignal", 25, 2, v10, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_266352A18;
  *(v21 + 24) = v16;

  sub_266409FB4(sub_266352AC0, v21, v27, v26);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_266409FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v12 = sub_26632958C(1017);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = v12;
    v17 = a2;
    v18 = a1;
    v19 = a4;
    v20 = a3;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "NowPlayingUsageSignal#signal", v16, 2u);
    v22 = v21;
    a3 = v20;
    a4 = v19;
    a1 = v18;
    a2 = v17;
    v12 = v25;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_280F912D0 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = a1;
  v23[4] = a2;

  sub_26640D27C(a4, &qword_280F91D20, sub_266352BC8, v23, a3);
}

void sub_26640A278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  v15 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  v16 = a5;
  a9(v15, a6, a7, a8, a3, a4, v16);
}

void sub_26640A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, const char *a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(a3 + 16) = a1;

  swift_beginAccess();
  *(a4 + 16) = a2;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);

  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = sub_2664E01D8();
    v23 = sub_2662A320C(v21, v22, &v30);
    v29 = v12;
    v24 = a5;
    v25 = a6;
    v26 = v23;

    *(v19 + 4) = v26;
    v27 = v25;
    a5 = v24;
    _os_log_impl(&dword_26629C000, v17, v18, v27, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v13 + 8))(v15, v29);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  dispatch_group_leave(a5);
}

void sub_26640A60C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  v9 = a5;
  sub_2664100C0(v8, &unk_2877E5078, 0xD000000000000011, 0x80000002664F8420, a3, a4, v9);
}

uint64_t sub_26640A6CC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v83 = a8;
  v78 = a6;
  v85 = a4;
  v86 = a3;
  v87 = a2;
  v16 = sub_2664DE438();
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x28223BE20](v16);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v79 = a1;
  v18 = *(a1 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v84 = sub_26640C820(*(v18 + 16), 0);
    v20 = sub_26640D024(v88, v84 + 4, v19, v18);
    v21 = v88[0];

    sub_2662B793C(v21);
    if (v20 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v84 = MEMORY[0x277D84F90];
LABEL_5:
  v77 = a7;
  v22 = v87;
  swift_beginAccess();
  v23 = *(v22 + 16);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_26640C820(*(v23 + 16), 0);
    v26 = sub_26640D024(v88, v25 + 4, v24, v23);
    v27 = v88[0];

    sub_2662B793C(v27);
    if (v26 == v24)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_9:
  v88[0] = v84;
  sub_2662F9CB0(v25);
  v28 = v88[0];
  v29 = v86;
  swift_beginAccess();
  v30 = v29[2];
  v31 = *(v30 + 16);
  if (v31)
  {
    v84 = v28;
    v32 = sub_26640C820(v31, 0);
    v33 = sub_26640D024(v88, v32 + 4, v31, v30);
    v34 = v88[0];

    result = sub_2662B793C(v34);
    if (v33 != v31)
    {
      __break(1u);
      goto LABEL_19;
    }

    v28 = v84;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v88[0] = v28;
  sub_2662F9CB0(v32);
  v36 = v88[0];
  v37 = v85;
  swift_beginAccess();
  v38 = v37[2];
  v39 = *(v38 + 16);
  if (!v39)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v84 = v36;
  v40 = sub_26640C820(v39, 0);
  v41 = sub_26640D024(v88, v40 + 4, v39, v38);
  v42 = v88[0];

  result = sub_2662B793C(v42);
  if (v41 == v39)
  {
    v36 = v84;
LABEL_17:
    v84 = a14;
    v76 = a13;
    v75 = a12;
    v74 = a11;
    v88[0] = v36;
    sub_2662F9CB0(v40);
    v43 = sub_26639EB98(v88[0]);

    v44 = v86;
    v45 = v87;
    v46 = v79;
    v47 = v85;
    v48 = sub_266409920(MEMORY[0x277D84F98], v43, (v87 + 16), v86 + 2, (v79 + 16), v85 + 2);
    v49 = v78;
    swift_beginAccess();
    v50 = v49[2];

    v78 = sub_26641080C(v43, v50, v48);

    swift_beginAccess();
    v51 = v44[2];

    v52 = sub_26641080C(v43, v51, v48);

    swift_beginAccess();
    v53 = *(v46 + 16);

    v86 = sub_26641080C(v43, v53, v48);

    swift_beginAccess();
    v54 = v47[2];

    v85 = sub_26641080C(v43, v54, v48);

    swift_beginAccess();
    v55 = *(v45 + 16);

    v56 = sub_26641080C(v43, v55, v48);

    swift_beginAccess();
    v57 = *(a9 + 16);
    swift_beginAccess();
    v58 = *(a10 + 16);
    v59 = v74;
    swift_beginAccess();
    v60 = *(v59 + 16);
    v61 = v75;
    swift_beginAccess();
    v62 = *(v61 + 16);
    v63 = v76;
    swift_beginAccess();
    v64 = *(v63 + 16);

    v65 = v80;
    sub_2664DE428();
    sub_2664DE388();
    v67 = v66;
    (*(v81 + 8))(v65, v82);
    v68 = type metadata accessor for NowPlayingUsageSignal();
    v69 = swift_allocObject();
    v69[12] = v67;
    v69[2] = v57;
    v69[3] = v58;
    v69[4] = v60;
    v69[5] = v62;
    v70 = v78;
    v69[6] = v64;
    v69[7] = v70;
    v71 = v85;
    v72 = v86;
    v69[8] = v52;
    v69[9] = v72;
    v69[10] = v71;
    v69[11] = v56;
    v88[3] = v68;
    v88[4] = &off_2877F0170;
    v88[0] = v69;
    v77(v88);
    return __swift_destroy_boxed_opaque_existential_1Tm(v88);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_26640AD28(uint64_t a1)
{
  v3 = sub_2664DFE38();
  v169 = *(v3 - 8);
  v170 = v3;
  MEMORY[0x28223BE20](v3);
  v168 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[2];

  sub_266449428(a1, v5);
  v7 = v6;

  v1[2] = v7;

  v8 = v1[3];

  sub_266449428(a1, v8);
  v10 = v9;

  v1[3] = v10;

  v11 = v1[4];

  sub_266449428(a1, v11);
  v13 = v12;

  v1[4] = v13;

  v14 = v1[5];

  sub_266449428(a1, v14);
  v16 = v15;

  v1[5] = v16;

  v17 = v1[6];

  sub_266449428(a1, v17);
  v19 = v18;

  v1[6] = v19;

  v20 = sub_26639F100();
  v174 = v1;

  v172 = v20;
  v22 = sub_2663D8A24(v21, v20);

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v23 = sub_2664E0C78();
  v24 = v23;
  v25 = 0;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 64);
  v29 = (v26 + 63) >> 6;
  for (i = v23 + 64; v28; v24[2] = v41)
  {
    v30 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
LABEL_10:
    v33 = v30 | (v25 << 6);
    v34 = (*(v22 + 48) + 16 * v33);
    v36 = *v34;
    v35 = v34[1];

    v37 = Double.rounded(to:)(3);
    *(i + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (v24[6] + 16 * v33);
    *v38 = v36;
    v38[1] = v35;
    *(v24[7] + 8 * v33) = v37;
    v39 = v24[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }
  }

  v31 = v25;
  while (1)
  {
    v25 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v25 >= v29)
    {
      break;
    }

    v32 = *(v22 + 64 + 8 * v25);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v28 = (v32 - 1) & v32;
      goto LABEL_10;
    }
  }

  v174[2] = v24;

  v43 = sub_2663D8A24(v42, v172);

  v44 = sub_2664E0C78();
  v45 = v44;
  v46 = 0;
  v47 = 1 << *(v43 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v43 + 64);
  v50 = (v47 + 63) >> 6;
  i = v44 + 64;
  if (!v49)
  {
LABEL_17:
    v52 = v46;
    while (1)
    {
      v46 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_66;
      }

      if (v46 >= v50)
      {

        v174[3] = v45;

        v63 = sub_2663D8A24(v62, v172);

        v64 = sub_2664E0C78();
        v65 = v64;
        v66 = 0;
        v67 = 1 << *(v63 + 32);
        v68 = -1;
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        v69 = v68 & *(v63 + 64);
        v70 = (v67 + 63) >> 6;
        i = v64 + 64;
        if (!v69)
        {
LABEL_29:
          v72 = v66;
          while (1)
          {
            v66 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_67;
            }

            if (v66 >= v70)
            {

              v174[4] = v65;

              v83 = sub_2663D8A24(v82, v172);

              v84 = sub_2664E0C78();
              v85 = v84;
              v86 = 0;
              v87 = 1 << *(v83 + 32);
              v88 = -1;
              if (v87 < 64)
              {
                v88 = ~(-1 << v87);
              }

              v89 = v88 & *(v83 + 64);
              v90 = (v87 + 63) >> 6;
              i = v84 + 64;
              if (!v89)
              {
LABEL_41:
                v92 = v86;
                while (1)
                {
                  v86 = v92 + 1;
                  if (__OFADD__(v92, 1))
                  {
                    goto LABEL_68;
                  }

                  if (v86 >= v90)
                  {

                    v174[5] = v85;

                    v103 = sub_2663D8A24(v102, v172);

                    v104 = sub_2664E0C78();
                    v105 = v104;
                    v106 = 0;
                    v107 = 1 << *(v103 + 32);
                    v108 = -1;
                    if (v107 < 64)
                    {
                      v108 = ~(-1 << v107);
                    }

                    v109 = v108 & *(v103 + 64);
                    v110 = (v107 + 63) >> 6;
                    i = v104 + 64;
                    if (!v109)
                    {
LABEL_53:
                      v112 = v106;
                      while (1)
                      {
                        v106 = v112 + 1;
                        if (__OFADD__(v112, 1))
                        {
                          goto LABEL_69;
                        }

                        if (v106 >= v110)
                        {

                          v174[6] = v105;

                          if (qword_280F914E8 != -1)
                          {
                            goto LABEL_75;
                          }

                          goto LABEL_62;
                        }

                        v113 = *(v103 + 64 + 8 * v106);
                        ++v112;
                        if (v113)
                        {
                          v111 = __clz(__rbit64(v113));
                          v109 = (v113 - 1) & v113;
                          goto LABEL_58;
                        }
                      }
                    }

                    while (1)
                    {
                      v111 = __clz(__rbit64(v109));
                      v109 &= v109 - 1;
LABEL_58:
                      v114 = v111 | (v106 << 6);
                      v115 = (*(v103 + 48) + 16 * v114);
                      v117 = *v115;
                      v116 = v115[1];

                      v118 = Double.rounded(to:)(3);
                      *(i + ((v114 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v114;
                      v119 = (v105[6] + 16 * v114);
                      *v119 = v117;
                      v119[1] = v116;
                      *(v105[7] + 8 * v114) = v118;
                      v120 = v105[2];
                      v40 = __OFADD__(v120, 1);
                      v121 = v120 + 1;
                      if (v40)
                      {
                        goto LABEL_74;
                      }

                      v105[2] = v121;
                      if (!v109)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  v93 = *(v83 + 64 + 8 * v86);
                  ++v92;
                  if (v93)
                  {
                    v91 = __clz(__rbit64(v93));
                    v89 = (v93 - 1) & v93;
                    goto LABEL_46;
                  }
                }
              }

              while (1)
              {
                v91 = __clz(__rbit64(v89));
                v89 &= v89 - 1;
LABEL_46:
                v94 = v91 | (v86 << 6);
                v95 = (*(v83 + 48) + 16 * v94);
                v96 = *v95;
                v97 = v95[1];

                v98 = Double.rounded(to:)(3);
                *(i + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                v99 = (v85[6] + 16 * v94);
                *v99 = v96;
                v99[1] = v97;
                *(v85[7] + 8 * v94) = v98;
                v100 = v85[2];
                v40 = __OFADD__(v100, 1);
                v101 = v100 + 1;
                if (v40)
                {
                  goto LABEL_73;
                }

                v85[2] = v101;
                if (!v89)
                {
                  goto LABEL_41;
                }
              }
            }

            v73 = *(v63 + 64 + 8 * v66);
            ++v72;
            if (v73)
            {
              v71 = __clz(__rbit64(v73));
              v69 = (v73 - 1) & v73;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
          v71 = __clz(__rbit64(v69));
          v69 &= v69 - 1;
LABEL_34:
          v74 = v71 | (v66 << 6);
          v75 = (*(v63 + 48) + 16 * v74);
          v76 = *v75;
          v77 = v75[1];

          v78 = Double.rounded(to:)(3);
          *(i + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
          v79 = (v65[6] + 16 * v74);
          *v79 = v76;
          v79[1] = v77;
          *(v65[7] + 8 * v74) = v78;
          v80 = v65[2];
          v40 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v40)
          {
            goto LABEL_72;
          }

          v65[2] = v81;
          if (!v69)
          {
            goto LABEL_29;
          }
        }
      }

      v53 = *(v43 + 64 + 8 * v46);
      ++v52;
      if (v53)
      {
        v51 = __clz(__rbit64(v53));
        v49 = (v53 - 1) & v53;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v51 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
LABEL_22:
    v54 = v51 | (v46 << 6);
    v55 = (*(v43 + 48) + 16 * v54);
    v56 = *v55;
    v57 = v55[1];

    v58 = Double.rounded(to:)(3);
    *(i + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    v59 = (v45[6] + 16 * v54);
    *v59 = v56;
    v59[1] = v57;
    *(v45[7] + 8 * v54) = v58;
    v60 = v45[2];
    v40 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v40)
    {
      break;
    }

    v45[2] = v61;
    if (!v49)
    {
      goto LABEL_17;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_62:
  v122 = v170;
  v123 = __swift_project_value_buffer(v170, qword_280F914F0);
  swift_beginAccess();
  v125 = v168;
  v124 = v169;
  (*(v169 + 16))(v168, v123, v122);

  v126 = sub_2664DFE18();
  v127 = sub_2664E06C8();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    LODWORD(v172) = v127;
    v129 = v128;
    i = swift_slowAlloc();
    v175 = i;
    *v129 = 136317442;

    v130 = sub_2664E01D8();
    v132 = v131;

    v133 = sub_2662A320C(v130, v132, &v175);

    *(v129 + 4) = v133;
    *(v129 + 12) = 2080;

    v134 = sub_2664E01D8();
    v136 = v135;

    v137 = sub_2662A320C(v134, v136, &v175);

    *(v129 + 14) = v137;
    *(v129 + 22) = 2080;

    v138 = sub_2664E01D8();
    v140 = v139;

    v141 = sub_2662A320C(v138, v140, &v175);

    *(v129 + 24) = v141;
    *(v129 + 32) = 2080;

    v142 = sub_2664E01D8();
    v144 = v143;

    v145 = sub_2662A320C(v142, v144, &v175);

    *(v129 + 34) = v145;
    *(v129 + 42) = 2080;

    v146 = sub_2664E01D8();
    v148 = v147;

    v149 = sub_2662A320C(v146, v148, &v175);

    *(v129 + 44) = v149;
    *(v129 + 52) = 2080;
    v150 = sub_2664E01D8();
    v152 = sub_2662A320C(v150, v151, &v175);

    *(v129 + 54) = v152;
    *(v129 + 62) = 2080;
    v153 = sub_2664E01D8();
    v155 = sub_2662A320C(v153, v154, &v175);

    *(v129 + 64) = v155;
    *(v129 + 72) = 2080;
    v156 = sub_2664E01D8();
    v158 = sub_2662A320C(v156, v157, &v175);

    *(v129 + 74) = v158;
    *(v129 + 82) = 2080;
    v159 = sub_2664E01D8();
    v161 = sub_2662A320C(v159, v160, &v175);

    *(v129 + 84) = v161;
    *(v129 + 92) = 2080;
    v162 = sub_2664E01D8();
    v164 = sub_2662A320C(v162, v163, &v175);

    *(v129 + 94) = v164;
    _os_log_impl(&dword_26629C000, v126, v172, "NowPlayingUsage#applyCandidates musicScore:%s, podcastsScore:%s, booksScore:%s, radioScore:%s, musicScoreWithoutRadio:%s, musicUsagePercentage: %s, podcastUsagePercentage: %s, booksUsagePercentage: %s, radioPercentage:%s, musicWithoutRadioPrecentage %s ", v129, 0x66u);
    v165 = i;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v165, -1, -1);
    MEMORY[0x266784AD0](v129, -1, -1);

    return (*(v169 + 8))(v168, v170);
  }

  else
  {

    return (*(v124 + 8))(v125, v122);
  }
}

uint64_t sub_26640B9D0()
{
  v0 = sub_2662C3A68(&unk_2877E1810);
  result = swift_arrayDestroy();
  qword_280F91C60 = v0;
  return result;
}

unint64_t sub_26640BA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EBEE0;
  *(inited + 32) = 0x6F63536567617375;
  *(inited + 40) = 0xEF636973754D6572;
  v7 = v2[2];
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {

    v10 = sub_2662A3E98(a1, a2);
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002664F13E0;
  v13 = v3[3];
  if (*(v13 + 16))
  {

    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v8 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0x6F63536567617375;
  *(inited + 136) = 0xEF736B6F6F426572;
  v16 = v3[4];
  if (*(v16 + 16))
  {

    v17 = sub_2662A3E98(a1, a2);
    v18 = 0;
    if (v19)
    {
      v18 = *(*(v16 + 56) + 8 * v17);
    }
  }

  else
  {
    v18 = 0;
  }

  *(inited + 144) = v18;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000002664F1420;
  v20 = v3[7];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = sub_2662A3E98(a1, a2);
    if (v23)
    {
      v21 = *(*(v20 + 56) + 8 * v22);
    }

    else
    {
      v21 = 0;
    }
  }

  v24 = MEMORY[0x277D83B88];
  *(inited + 192) = v21;
  *(inited + 216) = v24;
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = 0x80000002664F1440;
  v25 = v3[8];
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_2662A3E98(a1, a2);
    if (v28)
    {
      v26 = *(*(v25 + 56) + 8 * v27);
    }

    else
    {
      v26 = 0;
    }
  }

  *(inited + 240) = v26;
  *(inited + 264) = v24;
  *(inited + 272) = 0xD00000000000001CLL;
  *(inited + 280) = 0x80000002664F1460;
  v29 = v3[9];
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = sub_2662A3E98(a1, a2);
    if (v32)
    {
      v30 = *(*(v29 + 56) + 8 * v31);
    }

    else
    {
      v30 = 0;
    }
  }

  *(inited + 288) = v30;
  *(inited + 312) = v24;
  *(inited + 320) = 0x6F63536567617375;
  *(inited + 328) = 0xEF6F696461526572;
  v33 = v3[5];
  v34 = 0;
  v35 = 0;
  if (*(v33 + 16))
  {

    v36 = sub_2662A3E98(a1, a2);
    if (v37)
    {
      v35 = *(*(v33 + 56) + 8 * v36);
    }
  }

  *(inited + 336) = v35;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD00000000000001BLL;
  *(inited + 376) = 0x80000002664F1400;
  v38 = v3[6];
  if (*(v38 + 16))
  {

    v39 = sub_2662A3E98(a1, a2);
    if (v40)
    {
      v34 = *(*(v38 + 56) + 8 * v39);
    }
  }

  *(inited + 384) = v34;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD00000000000001DLL;
  *(inited + 424) = 0x80000002664F14A0;
  v41 = v3[10];
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = sub_2662A3E98(a1, a2);
    if (v44)
    {
      v42 = *(*(v41 + 56) + 8 * v43);
    }

    else
    {
      v42 = 0;
    }
  }

  *(inited + 432) = v42;
  *(inited + 456) = v24;
  *(inited + 464) = 0xD000000000000029;
  *(inited + 472) = 0x80000002664F14C0;
  v45 = v3[11];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = sub_2662A3E98(a1, a2);
    if (v48)
    {
      v46 = *(*(v45 + 56) + 8 * v47);
    }

    else
    {
      v46 = 0;
    }
  }

  *(inited + 480) = v46;
  *(inited + 504) = v24;
  *(inited + 512) = 0xD00000000000001DLL;
  *(inited + 520) = 0x80000002664F1480;
  *(inited + 552) = v24;
  *(inited + 528) = -1;
  v49 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v49;
}

uint64_t sub_26640BE54(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, __n128), uint64_t a5)
{
  v41 = a5;
  v42 = a4;
  v43 = a3;
  v39 = a2;
  v44 = sub_2664DFE38();
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x277D84F98];
  v49 = MEMORY[0x277D84F98];
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v13 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_2662A5550(*(a1 + 56) + 40 * v15, v47);
      v46[0] = v17;
      v46[1] = v18;

      sub_26640C328(v17, v18, v47, &v49, &v48);
      sub_26634CD00(v46);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  if (qword_280F914E8 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  swift_once();
LABEL_12:
  v19 = v44;
  v20 = __swift_project_value_buffer(v44, qword_280F914F0);
  swift_beginAccess();
  v21 = v40;
  (*(v40 + 16))(v7, v20, v19);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45[0] = v25;
    *v24 = 136315650;
    swift_beginAccess();

    v26 = v21;
    v27 = sub_2664E01D8();
    v29 = v28;

    v30 = sub_2662A320C(v27, v29, v45);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    swift_beginAccess();

    v31 = sub_2664E01D8();
    v33 = v32;

    v34 = sub_2662A320C(v31, v33, v45);

    *(v24 + 14) = v34;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_2662A320C(v39, v43, v45);
    _os_log_impl(&dword_26629C000, v22, v23, "NowPlayingUsage#signal View for bundle counts: %s and scores %s for input %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);

    (*(v26 + 8))(v7, v44);
  }

  else
  {

    (*(v21 + 8))(v7, v19);
  }

  v35 = v42;
  swift_beginAccess();
  v36 = v48;
  swift_beginAccess();
  v37 = v49;

  (v35)(v36, v37);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_26640C328(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v42 = a4;
  v9 = sub_2664DF3C8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v38 = a1;
    v39 = a2;
    v40 = a5;
    v43 = MEMORY[0x277D84F90];
    v41 = v15;
    sub_2662FD0FC(0, v16, 0);
    v17 = v41;
    v18 = v43;
    v19 = *(v43 + 16);
    v20 = 32;
    do
    {
      v21 = *(v17 + v20);
      v43 = v18;
      v22 = *(v18 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_2662FD0FC((v22 > 1), v19 + 1, 1);
        v17 = v41;
        v18 = v43;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v21;
      v20 += 2;
      ++v19;
      --v16;
    }

    while (v16);

    a2 = v39;
    a5 = v40;
    a1 = v38;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D5FF78], v9);

  v23 = sub_2664DF3B8();
  (*(v10 + 8))(v12, v9);
  result = sub_2662F2640(v23, v18);
  v28 = (v27 >> 1) - v26;
  if (v27 >> 1 == v26)
  {
    v29 = 0;
LABEL_14:
    swift_unknownObjectRelease();
    v33 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v33;
    *v33 = 0x8000000000000000;
    sub_26634F1AC(v29, a1, a2, isUniquelyReferenced_nonNull_native);
    *v33 = v43;

    sub_2663D8E90(v18, 604800.0);
    v36 = v35;

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *a5;
    *a5 = 0x8000000000000000;
    sub_26634F084(a1, a2, v37, v36);
    *a5 = v43;
  }

  else
  {
    if ((v27 >> 1) > v26)
    {
      v29 = 0;
      v30 = (v25 + 8 * v26);
      while (1)
      {
        v31 = *v30++;
        v32 = __OFADD__(v29, v31);
        v29 += v31;
        if (v32)
        {
          break;
        }

        if (!--v28)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_26640C628()
{

  return v0;
}

uint64_t sub_26640C690()
{
  sub_26640C628();

  return swift_deallocClassInstance();
}

double sub_26640C6F8()
{
  if (qword_280F8FD78 != -1)
  {
    swift_once();
  }

  return result;
}

void *sub_26640C79C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_26640C820(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_26640C8A4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072918, &unk_2664E4F90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_26640C934(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_26640C9BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26640CB14(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_2662C0AE0(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_2662C0AE0(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26640CC9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26640CDF8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2664E0A58();
  sub_2663E9D9C();
  sub_2662A3DC0(&qword_280072EF0, sub_2663E9D9C, MEMORY[0x277D85378]);
  result = sub_2664E0638();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2664E0A88())
      {
        goto LABEL_30;
      }

      sub_2663E9D9C();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_26640D024(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26640D17C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26640D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a4;
  v78 = a3;
  v100 = a1;
  v7 = sub_2664E0038();
  v106 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2664E00B8();
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2664DE438();
  v84 = *(v85 - 8);
  v77 = *(v84 + 64);
  v12 = MEMORY[0x28223BE20](v85);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v75 - v14;
  v115[3] = &type metadata for SiriRemembersEntityProvider;
  v115[4] = &off_2877EB680;
  v115[0] = swift_allocObject();
  sub_26634CBCC(a2, v115[0] + 16);
  sub_2664DE428();
  v15 = dispatch_group_create();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F98];
  *(v16 + 16) = MEMORY[0x277D84F98];
  v18 = v16;
  v93 = swift_allocObject();
  *(v93 + 16) = v17;
  v90 = swift_allocObject();
  *(v90 + 16) = v17;
  v94 = swift_allocObject();
  *(v94 + 16) = v17;
  v95 = swift_allocObject();
  *(v95 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = v19;
  v91 = swift_allocObject();
  *(v91 + 16) = v17;
  v89 = swift_allocObject();
  *(v89 + 16) = v17;
  v92 = swift_allocObject();
  *(v92 + 16) = v17;
  v80 = swift_allocObject();
  *(v80 + 16) = v17;
  dispatch_group_enter(v15);
  sub_2662A5550(v115, &v114);
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  v88 = a5;
  sub_2662A8618(&v114, (v21 + 24));
  v82 = v18;
  *(v21 + 8) = v18;
  *(v21 + 9) = v20;
  v81 = v20;
  *(v21 + 10) = v15;
  v112 = sub_26640E1AC;
  v113 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v99 = &v110;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_37;
  v22 = _Block_copy(&aBlock);

  v23 = v15;
  v24 = v11;
  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  v105 = sub_2662A3DC0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v102 = sub_2662A5AC8();
  v25 = v9;
  sub_2664E0A08();
  v26 = v24;
  MEMORY[0x266783800](0, v24, v25, v22);
  _Block_release(v22);
  v27 = *(v106 + 8);
  v106 += 8;
  v101 = v27;
  v27(v25, v7);
  v28 = *(v104 + 8);
  v104 += 8;
  v28(v24, v103);
  v29 = v28;
  v87 = v28;

  dispatch_group_enter(v23);
  sub_2662A5550(v115, &v114);
  v30 = swift_allocObject();
  *(v30 + 2) = a5;
  sub_2662A8618(&v114, (v30 + 24));
  v31 = v91;
  *(v30 + 8) = v93;
  *(v30 + 9) = v31;
  *(v30 + 10) = v23;
  v112 = sub_26640E22C;
  v113 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_49;
  v32 = _Block_copy(&aBlock);
  v33 = v23;

  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  v96 = v25;
  v97 = v7;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v26, v25, v32);
  _Block_release(v32);
  v101(v25, v7);
  v34 = v103;
  v29(v26, v103);

  dispatch_group_enter(v33);
  sub_2662A5550(v115, &v114);
  v35 = swift_allocObject();
  v36 = v88;
  *(v35 + 2) = v88;
  sub_2662A8618(&v114, (v35 + 24));
  v37 = v89;
  *(v35 + 8) = v90;
  *(v35 + 9) = v37;
  *(v35 + 10) = v33;
  v112 = sub_26640E260;
  v113 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_55;
  v38 = _Block_copy(&aBlock);
  v39 = v33;

  v40 = v26;
  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  v41 = v96;
  v42 = v97;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v26, v41, v38);
  _Block_release(v38);
  v101(v41, v42);
  v87(v26, v34);

  dispatch_group_enter(v39);
  sub_2662A5550(v115, &v114);
  v43 = swift_allocObject();
  *(v43 + 2) = v36;
  sub_2662A8618(&v114, (v43 + 24));
  v44 = v92;
  *(v43 + 8) = v94;
  *(v43 + 9) = v44;
  *(v43 + 10) = v39;
  v112 = sub_26640E28C;
  v113 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_61;
  v45 = _Block_copy(&aBlock);
  v46 = v39;

  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  v47 = v96;
  v48 = v97;
  sub_2664E0A08();
  v79 = v26;
  MEMORY[0x266783800](0, v26, v47, v45);
  _Block_release(v45);
  v49 = v101;
  v101(v47, v48);
  v50 = v103;
  v51 = v87;
  v87(v40, v103);

  dispatch_group_enter(v46);
  sub_2662A5550(v115, &v114);
  v52 = swift_allocObject();
  *(v52 + 2) = v88;
  sub_2662A8618(&v114, (v52 + 24));
  v53 = v80;
  *(v52 + 8) = v95;
  *(v52 + 9) = v53;
  *(v52 + 10) = v46;
  v112 = sub_26640E300;
  v113 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_67;
  v54 = _Block_copy(&aBlock);
  v75 = v46;

  v55 = v53;

  v56 = v79;
  sub_2664E0068();
  v107 = MEMORY[0x277D84F90];
  v57 = v96;
  v58 = v97;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v56, v57, v54);
  _Block_release(v54);
  v49(v57, v58);
  v51(v56, v50);

  v59 = v84;
  v60 = v76;
  v61 = v85;
  (*(v84 + 16))(v76, v83, v85);
  v62 = (*(v59 + 80) + 120) & ~*(v59 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = v89;
  *(v63 + 3) = v55;
  v64 = v92;
  *(v63 + 4) = v91;
  *(v63 + 5) = v64;
  v65 = v81;
  *(v63 + 6) = v88;
  *(v63 + 7) = v65;
  v66 = v86;
  *(v63 + 8) = v78;
  *(v63 + 9) = v66;
  v67 = v93;
  *(v63 + 10) = v82;
  *(v63 + 11) = v67;
  v68 = v94;
  *(v63 + 12) = v90;
  *(v63 + 13) = v68;
  *(v63 + 14) = v95;
  (*(v59 + 32))(&v63[v62], v60, v61);
  v112 = sub_26640E314;
  v113 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v109 = 1107296256;
  v110 = sub_2662A3F90;
  v111 = &block_descriptor_73;
  v69 = _Block_copy(&aBlock);

  v70 = v79;
  sub_2664E0068();
  *&v114 = MEMORY[0x277D84F90];
  v71 = v96;
  v72 = v97;
  sub_2664E0A08();
  v73 = v75;
  sub_2664E0758();
  _Block_release(v69);

  v101(v71, v72);
  v87(v70, v103);
  (*(v84 + 8))(v83, v85);

  return __swift_destroy_boxed_opaque_existential_1Tm(v115);
}

uint64_t objectdestroy_42Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26640E390(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v68 = a3;
  v69 = a4;
  v11 = sub_2664DFE38();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DE438();
  v71 = *(v20 - 8);
  v72 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;

  v24 = a7;
  v70 = v22;
  sub_2664DE428();
  v25 = sub_2663742F8(a2);
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = swift_allocObject();
    v29[2] = v68;
    v29[3] = v69;
    v29[4] = sub_266410D38;
    v29[5] = v23;

    v30 = sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v31 = qword_280F91D48;
    sub_2664DFDF8();
    sub_2664DFDC8(v30, &dword_26629C000, v31, "initalizeIPStoreEntity", 22, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (v66[1].isa)(v19, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_266410DD8;
    *(v32 + 24) = v29;
    *(v32 + 32) = v28;
    *(v32 + 40) = v27;
    *(v32 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v32);
  }

  else
  {
    v33 = v69;
    v62 = a6;
    v63 = a5;
    v66 = v24;
    v67 = v23;
    v64 = v14;
    v34 = v65;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v11;
    v36 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v37 = *(v34 + 16);
    v38 = v16;
    v61 = v36;
    v60 = v37;
    v37(v16, v36, v11);
    v39 = v33;

    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2662A320C(v68, v39, v74);
      _os_log_impl(&dword_26629C000, v40, v41, "NowPlayingUsage#signal received unexpected empty item query for %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x266784AD0](v43, -1, -1);
      MEMORY[0x266784AD0](v42, -1, -1);
    }

    v44 = *(v34 + 8);
    v44(v38, v35);
    v46 = v62;
    v45 = v63;
    v47 = MEMORY[0x277D84F90];
    v48 = sub_266386140(MEMORY[0x277D84F90]);
    v49 = sub_266385CA8(v47);
    swift_beginAccess();
    *(v45 + 16) = v48;

    swift_beginAccess();
    *(v46 + 16) = v49;

    v50 = v64;
    v60(v64, v61, v35);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69 = v44;
      v55 = v54;
      v73 = v54;
      *v53 = 136315138;
      v56 = sub_2664E01D8();
      v58 = sub_2662A320C(v56, v57, &v73);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_26629C000, v51, v52, "NowPlayingUsageSignal#signal usage music complete with counts %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      v69(v64, v35);
    }

    else
    {

      v44(v50, v35);
    }

    dispatch_group_leave(v66);
  }

  (*(v71 + 8))(v70, v72);
}