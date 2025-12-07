uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26CC73648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_26CC73690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  *&v0[OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center;
  v5 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v6 = sub_26CD3A59C();
  v7 = [v5 initWithBundleIdentifier_];

  *&v0[v4] = v7;
  *&v0[OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_cancellables] = MEMORY[0x277D84FA0];
  v8 = type metadata accessor for UNNotificationClient();
  v21.receiver = v0;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center;
  [*&v9[OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center] setWantsNotificationResponsesDelivered];
  [*&v9[v10] setPrivateDelegate_];
  [*&v9[v10] setDelegate_];
  sub_26CC73944();
  v11 = [objc_opt_self() processInfo];
  v12 = [v11 processName];

  v13 = sub_26CD3A5CC();
  v15 = v14;

  if (v13 == 0xD000000000000018 && 0x800000026CD4B660 == v15)
  {
  }

  else
  {
    v16 = sub_26CD3AFDC();

    if ((v16 & 1) == 0)
    {
      sub_26CC73AFC();
      v17 = sub_26CD3A86C();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v9;
      v19 = v9;
      sub_26CCD5E38(0, 0, v3, &unk_26CD427F8, v18);
    }
  }

  return v9;
}

void sub_26CC73944()
{
  v1 = sub_26CD3A59C();
  sub_26CC18080(0, &qword_2804BCA60, 0x277CE1F80);
  v2 = sub_26CD3A79C();
  v3 = sub_26CD3A79C();
  v4 = [objc_opt_self() categoryWithIdentifier:v1 actions:v2 intentIdentifiers:v3 options:1];

  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD42700;
  *(inited + 32) = v4;
  v7 = v4;
  sub_26CC78E5C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_26CC18080(0, &qword_2804BCA70, 0x277CE1F98);
  sub_26CC7BC28(&qword_2804BCA78, &qword_2804BCA70, 0x277CE1F98);
  v8 = sub_26CD3A8FC();

  [v5 setNotificationCategories_];
}

uint64_t sub_26CC73AFC()
{
  v0 = sub_26CD3AA3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  if (qword_2804BB9F8 != -1)
  {
    swift_once();
  }

  sub_26CD3AA4C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26CC7BA30(&qword_280BBB780, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_26CD3A48C();

  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();

  v7 = [v4 defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  sub_26CD3AA4C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26CD3A48C();

  v6(v3, v0);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();
}

uint64_t sub_26CC73E00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CC73E90();
}

uint64_t sub_26CC73E90()
{
  *(v1 + 536) = v0;

  return MEMORY[0x2822009F8](sub_26CC73F20, 0, 0);
}

uint64_t sub_26CC73F20()
{
  type metadata accessor for CacheStorage(0);
  v1 = swift_allocObject();
  v0[68] = v1;
  v2 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + 16) = 0xD00000000000001DLL;
  *(v1 + 24) = 0x800000026CD4ED90;
  v4 = sub_26CC6EA9C();
  if (v5 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_opt_self();
  v9 = sub_26CD3A09C();
  v0[65] = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:v0 + 65];

  v11 = v0[65];
  if (!v10)
  {
    v17 = v11;
    v18 = sub_26CD39F8C();

    swift_willThrow();
    sub_26CC1D1B8(v6, v7);

LABEL_9:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v12 = v11;
  sub_26CD3AB3C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26CC1D1B8(v6, v7);
    goto LABEL_9;
  }

  v13 = v0[66];
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v36 = qword_280BBCBE0;
  sub_26CD3AC6C();

  v14 = MEMORY[0x26D6AD1A0](v13, MEMORY[0x277D837D0]);
  MEMORY[0x26D6AD060](v14);

  v15 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_26CC19E10();
  *(v16 + 32) = 0xD000000000000029;
  *(v16 + 40) = 0x800000026CD4F020;
  sub_26CD3A3DC(v15, &dword_26CC14000, v36, "%@", 2, 2, v16);

  sub_26CC1D1B8(v6, v7);
LABEL_10:
  v0[69] = v13;
  v19 = [objc_opt_self() app];
  v20 = sub_26CD3A59C();
  v21 = [v19 arrayForKey_];

  if (v21)
  {
    v22 = sub_26CD3A7AC();

    v23 = sub_26CC77EFC(v22);
    v0[70] = v23;

    if (v23)
    {
      v24 = v0 + 10;
      v25 = *(v0[67] + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
      v0[71] = v25;
      v0[10] = v0;
      v0[15] = v0 + 62;
      v0[11] = sub_26CC74668;
      v26 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA50, &qword_26CD42818);
      v0[34] = MEMORY[0x277D85DD0];
      v0[35] = 1107296256;
      v0[36] = sub_26CC76D7C;
      v0[37] = &block_descriptor_58;
      v0[38] = v26;
      [v25 getNotificationSettingsForTopicsWithCompletionHandler_];
LABEL_17:

      return MEMORY[0x282200938](v24);
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v27 = qword_280BBCBE0;
  v0[78] = qword_280BBCBE0;
  v28 = sub_26CD3A99C();
  v0[79] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26CD3C1E0;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_26CC19E10();
  *(v29 + 32) = 0xD000000000000045;
  *(v29 + 40) = 0x800000026CD4EDB0;
  sub_26CD3A3DC(v28, &dword_26CC14000, v27, "%@", 2, 2, v29);

  v30 = *(v13 + 16);

  if (v30)
  {
    v24 = v0 + 2;
    v31 = *(v0[67] + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
    sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
    sub_26CC7BC28(&qword_2804BCA40, &qword_2804BCA38, 0x277CE1FF0);
    v32 = sub_26CD3A8FC();
    v0[80] = v32;
    v0[2] = v0;
    v0[3] = sub_26CC75404;
    v33 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_26CD0EE90;
    v0[29] = &block_descriptor_55;
    v0[30] = v33;
    [v31 setNotificationTopics:v32 withCompletionHandler:v0 + 26];
    goto LABEL_17;
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_26CC74668()
{

  return MEMORY[0x2822009F8](sub_26CC74774, 0, 0);
}

uint64_t sub_26CC74774()
{
  v1 = v0[70];
  v0[72] = v0[62];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v31 = -v2;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v30 = v4;
      v5 = (v1 + 40 + 16 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
        }

        v7 = *(v5 - 1);
        v6 = *v5;
        v8 = v7 == 0x746963696C707845 && v6 == 0xE800000000000000;
        if (v8 || (sub_26CD3AFDC() & 1) != 0)
        {
          v14 = 1;
          goto LABEL_23;
        }

        if (v7 == 0x746963696C706D49 && v6 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
        {
          v14 = 2;
          goto LABEL_23;
        }

        if (v7 == 0x6E6974656B72614DLL && v6 == 0xE900000000000067 || (sub_26CD3AFDC() & 1) != 0)
        {
          break;
        }

        v9 = qword_280BB9C20;

        if (v9 != -1)
        {
          swift_once();
        }

        v10 = qword_280BBCBE0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_26CD3C1E0;
        sub_26CD3AC6C();

        MEMORY[0x26D6AD060](v7, v6);

        *(v11 + 32) = 0xD00000000000002BLL;
        *(v11 + 40) = 0x800000026CD4EE90;
        v12 = sub_26CD3A98C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_26CD3C1E0;
        *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        *(v13 + 64) = sub_26CC2E6E8();
        *(v13 + 32) = v11;
        sub_26CD3A3DC(v12, &dword_26CC14000, v10, "%@", 2, 2, v13);

        ++v3;
        v5 += 2;
        if (v31 + v3 == 1)
        {
          v4 = v30;
          goto LABEL_30;
        }
      }

      v14 = 3;
LABEL_23:
      v4 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_26CCBE6FC(0, *(v30 + 2) + 1, 1, v30);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_26CCBE6FC((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v4[v16 + 32] = v14;
    }

    while (v31 + v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_30:
  v29[73] = v4;

  v17 = *(v4 + 2);
  if (v17)
  {
    v18 = (v4 + 32);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = *v18++;
      v21 = v22;
      if (v22 > 1)
      {
        break;
      }

      v23 = 0xD00000000000001FLL;
      v24 = "com.apple.tv.bulletins.implicit";
      if (v21)
      {
        goto LABEL_43;
      }

LABEL_33:
      if (!--v17)
      {
        goto LABEL_48;
      }
    }

    if (v21 == 2)
    {
      v23 = 0xD00000000000001FLL;
    }

    else
    {
      v23 = 0xD000000000000020;
    }

    if (v21 == 2)
    {
      v24 = "letins.marketing";
    }

    else
    {
      v24 = "304 and full tv app is enabled.";
    }

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_26CCBE3BC(0, *(v19 + 2) + 1, 1, v19);
    }

    v26 = *(v19 + 2);
    v25 = *(v19 + 3);
    if (v26 >= v25 >> 1)
    {
      v19 = sub_26CCBE3BC((v25 > 1), v26 + 1, 1, v19);
    }

    *(v19 + 2) = v26 + 1;
    v20 = &v19[16 * v26];
    *(v20 + 4) = v23;
    *(v20 + 5) = v24 | 0x8000000000000000;
    goto LABEL_33;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_48:
  v29[74] = v19;
  v29[60] = v19;

  v27 = swift_task_alloc();
  v29[75] = v27;
  *v27 = v29;
  v27[1] = sub_26CC74C8C;

  return sub_26CC7914C();
}

uint64_t sub_26CC74C8C(char a1)
{
  v2 = *v1;
  *(v2 + 472) = a1;
  *(v2 + 464) = v1;

  return MEMORY[0x2822009F8](sub_26CC74DBC, 0, 0);
}

uint64_t sub_26CC74DBC()
{
  v1 = *(*(v0 + 592) + 16);

  if (v1 || (*(v0 + 472) & 1) == 0)
  {
  }

  else
  {
    v2 = MEMORY[0x277D837D0];
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 552);
    v4 = qword_280BBCBE0;
    v5 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = v2;
    *(v6 + 64) = sub_26CC19E10();
    *(v6 + 32) = 0xD00000000000006FLL;
    *(v6 + 40) = 0x800000026CD4EF40;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CC78010(v3);
  }

  sub_26CC794C0(*(v0 + 584), *(v0 + 576));

  v7 = objc_opt_self();
  v8 = sub_26CD3A79C();

  *(v0 + 504) = 0;
  v9 = [v7 dataWithJSONObject:v8 options:0 error:v0 + 504];

  v10 = *(v0 + 504);
  if (v9)
  {
    v11 = sub_26CD3A0BC();
    v13 = v12;

    sub_26CC6EE84(v11, v13);
    sub_26CC18C50(v11, v13);
  }

  else
  {
    v14 = v10;
    v15 = sub_26CD39F8C();

    swift_willThrow();
  }

  v16 = *(v0 + 568);
  sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
  sub_26CC7BC28(&qword_2804BCA40, &qword_2804BCA38, 0x277CE1FF0);
  v17 = sub_26CD3A8FC();
  *(v0 + 608) = v17;

  *(v0 + 144) = v0;
  *(v0 + 152) = sub_26CC75150;
  v18 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
  *(v0 + 336) = MEMORY[0x277D85DD0];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_26CD0EE90;
  *(v0 + 360) = &block_descriptor_62;
  *(v0 + 368) = v18;
  [v16 setNotificationTopics:v17 withCompletionHandler:v0 + 336];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_26CC75150()
{
  v1 = *(*v0 + 176);
  *(*v0 + 616) = v1;
  if (v1)
  {
    v2 = sub_26CC757C8;
  }

  else
  {
    v2 = sub_26CC7528C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7528C()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = qword_280BBCBE0;
  v2 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_26CC19E10();
  *(v3 + 32) = 0xD00000000000003CLL;
  *(v3 + 40) = 0x800000026CD4EF00;
  sub_26CD3A3DC(v2, &dword_26CC14000, v1, "%@", 2, 2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26CC75404()
{
  v1 = *(*v0 + 48);
  *(*v0 + 648) = v1;
  if (v1)
  {
    v2 = sub_26CC755D4;
  }

  else
  {
    v2 = sub_26CC75540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC75540()
{
  v1 = *(v0 + 640);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CC755D4()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  swift_willThrow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[54] = 0;
  v0[55] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000041, 0x800000026CD4EE20);
  v0[61] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v5 = v0[55];
  *(v4 + 32) = v0[54];
  *(v4 + 40) = v5;
  v6 = sub_26CD3A98C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v4;
  sub_26CD3A3DC(v6, &dword_26CC14000, v3, "%@", 2, 2, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC757C8()
{
  v1 = v0[76];
  swift_willThrow();

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = v0[77];
  v3 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[56] = 0;
  v0[57] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD4EEC0);
  v0[64] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v5 = v0[57];
  *(v4 + 32) = v0[56];
  *(v4 + 40) = v5;
  v6 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v4;
  sub_26CD3A3DC(v6, &dword_26CC14000, v3, "%@", 2, 2, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC75A20(uint64_t a1)
{
  v2[49] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v2[50] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[51] = v4;
  *v4 = v2;
  v4[1] = sub_26CC75AFC;

  return sub_26CCF76B0((v2 + 18), (v2 + 29), a1);
}

uint64_t sub_26CC75AFC()
{
  v2 = *v1;
  v3 = *v1;
  v3[52] = v0;
  v3[53] = v2[18];
  v3[54] = v2[19];
  *(v3 + 55) = *(v3 + 10);
  v3[57] = v2[22];
  *(v3 + 29) = *(v3 + 23);

  if (v0)
  {
    v4 = sub_26CC7655C;
  }

  else
  {
    v4 = sub_26CC75C6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC75C6C()
{
  *(v0 + 200) = *(v0 + 232);
  *(v0 + 216) = *(v0 + 248);
  sub_26CC1B4DC(v0 + 200, v0 + 296, &qword_2804BBDA8, &qword_26CD3D5F0);
  if (*(v0 + 320))
  {
    sub_26CC331CC((v0 + 296), (v0 + 264));
    v1 = swift_task_alloc();
    *(v0 + 480) = v1;
    *v1 = v0;
    v1[1] = sub_26CC75F1C;

    return sub_26CC3733C();
  }

  else
  {
    sub_26CC1B544(v0 + 296, &qword_2804BBDA8, &qword_26CD3D5F0);
    v3 = *(v0 + 392);
    v4 = sub_26CC79AC8(*(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472));
    *(v0 + 496) = v4;

    v5 = v4;
    v6 = sub_26CD3A59C();

    v7 = [objc_opt_self() requestWithIdentifier:v6 content:v5 trigger:0];
    *(v0 + 504) = v7;

    v8 = *(v3 + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_26CC762D8;
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26CD0EE90;
    *(v0 + 104) = &block_descriptor_84;
    *(v0 + 112) = v9;
    [v8 addNotificationRequest:v7 withCompletionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_26CC75F1C(uint64_t a1)
{
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_26CC7601C, 0, 0);
}

uint64_t sub_26CC7601C()
{
  v1 = v0;
  v2 = *(v0 + 488);
  v3 = *(v0 + 400);
  sub_26CC168C0((v1 + 33), (v1 + 41));
  v4 = sub_26CD3A86C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_26CC1B4DC((v1 + 41), (v1 + 45), &qword_2804BBDA8, &qword_26CD3D5F0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 376);
  *(v5 + 32) = *(v0 + 360);
  *(v5 + 48) = v6;
  *(v5 + 64) = v2;
  sub_26CCD5E38(0, 0, v3, &unk_26CD42860, v5);

  sub_26CC1B544(v0 + 328, &qword_2804BBDA8, &qword_26CD3D5F0);
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  v7 = *(v0 + 392);
  v8 = sub_26CC79AC8(v1[55], v1[56], v1[57], v1[58], v1[59]);
  *(v0 + 496) = v8;

  v9 = v8;
  v10 = sub_26CD3A59C();

  v11 = [objc_opt_self() requestWithIdentifier:v10 content:v9 trigger:0];
  *(v0 + 504) = v11;

  v12 = *(v7 + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_26CC762D8;
  v13 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA48, &qword_26CD42810);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26CD0EE90;
  *(v0 + 104) = &block_descriptor_84;
  *(v0 + 112) = v13;
  [v12 addNotificationRequest:v11 withCompletionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26CC762D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_26CC765C0;
  }

  else
  {
    v2 = sub_26CC763E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC763E8(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = v1[62];
  v3 = v1[63];
  v4 = qword_280BBCBE0;
  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0xD00000000000003BLL;
  *(v6 + 40) = 0x800000026CD4F2D0;
  sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

  sub_26CC1B544((v1 + 25), &qword_2804BBDA8, &qword_26CD3D5F0);

  v7 = v1[1];

  return v7();
}

uint64_t sub_26CC7655C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC765C0()
{
  v1 = v0[63];
  v2 = v0[62];
  swift_willThrow();

  sub_26CC1B544((v0 + 25), &qword_2804BBDA8, &qword_26CD3D5F0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CC76658(_BYTE *a1, _BYTE *a2)
{
  *(v3 + 152) = v2;
  *(v3 + 176) = *a1;
  *(v3 + 177) = *a2;
  return MEMORY[0x2822009F8](sub_26CC76688, 0, 0);
}

uint64_t sub_26CC76688()
{
  v1 = 0xD00000000000001FLL;
  v2 = *(v0 + 176);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v11 = "letins.marketing";
    }

    else
    {
      v1 = 0xD000000000000020;
      v11 = "304 and full tv app is enabled.";
    }
  }

  else
  {
    if (!*(v0 + 176))
    {
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v3 = qword_280BBCBE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000044, 0x800000026CD4F230);
      *(v0 + 80) = 0;
      v5 = sub_26CD3AF8C();
      MEMORY[0x26D6AD060](v5);

      MEMORY[0x26D6AD060](46, 0xE100000000000000);
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      v6 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26CD3C1E0;
      *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v7 + 64) = sub_26CC2E6E8();
      *(v7 + 32) = v4;
      sub_26CD3A3DC(v6, &dword_26CC14000, v3, "%@", 2, 2, v7);

      sub_26CC7BCA0();
      swift_allocError();
      *v8 = 5;
      swift_willThrow();
      v9 = *(v0 + 8);

      return v9(0);
    }

    v11 = "com.apple.tv.bulletins.implicit";
  }

  *(v0 + 160) = v1;
  *(v0 + 168) = v11;
  v12 = *(*(v0 + 152) + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_center);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_26CC769E4;
  v13 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA50, &qword_26CD42818);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_26CC76D7C;
  *(v0 + 104) = &block_descriptor_79;
  *(v0 + 112) = v13;
  [v12 getNotificationSettingsForTopicsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_26CC769E4()
{

  return MEMORY[0x2822009F8](sub_26CC76AC4, 0, 0);
}

uint64_t sub_26CC76AC4()
{
  v1 = *(v0 + 144);
  if (*(v1 + 16))
  {
    v2 = sub_26CC181C4(*(v0 + 160), *(v0 + 168) | 0x8000000000000000);
    v4 = v3;

    if (v4)
    {
      v5 = *(v0 + 177);
      v6 = *(*(v1 + 56) + 8 * v2);

      v7 = &selRef_badgeSetting;
      if (!v5)
      {
        v7 = &selRef_authorizationStatus;
      }

      v8 = [v6 *v7];

      v9 = v8 == 2;
      v10 = *(v0 + 8);
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 176);
  v12 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000004ALL, 0x800000026CD4F280);
  *(v0 + 80) = v11;
  v14 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v14);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  *(v13 + 32) = 0;
  *(v13 + 40) = 0xE000000000000000;
  v15 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v16 + 64) = sub_26CC2E6E8();
  *(v16 + 32) = v13;
  sub_26CD3A3DC(v15, &dword_26CC14000, v12, "%@", 2, 2, v16);

  sub_26CC7BCA0();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v10 = *(v0 + 8);
  v9 = 0;
LABEL_10:

  return v10(v9);
}

uint64_t sub_26CC76D7C(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_26CC18080(0, &qword_2804BCA58, 0x277CE1FD0);
  **(*(v2 + 64) + 40) = sub_26CD3A4FC();

  return MEMORY[0x282200948](v2);
}

id sub_26CC76E10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UNNotificationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26CC77140(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_26CC77224;

  return sub_26CC7ACB0(v9);
}

uint64_t sub_26CC77224(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_26CC773A4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26CC77600(void *a1, void *a2, void *aBlock, void *a4)
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
  v10[1] = sub_26CC776E8;

  return sub_26CC7AFB8(v9);
}

uint64_t sub_26CC776E8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26CC77858()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26CC37110;

  return sub_26CC77600(v2, v3, v5, v4);
}

void sub_26CC77918(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_26CC77974();
  }
}

double sub_26CC77974()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_26CD39DDC();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v17[1] = 0xD000000000000010;
  v17[2] = 0x800000026CD4E1D0;
  sub_26CD3ABFC();
  if (!*(v6 + 16) || (v7 = sub_26CCCA694(v18), (v8 & 1) == 0))
  {

    sub_26CC579C4(v18);
LABEL_9:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_10;
  }

  sub_26CC168C0(*(v6 + 56) + 32 * v7, &v19);
  sub_26CC579C4(v18);

  if (!*(&v20 + 1))
  {
LABEL_10:
    sub_26CC1B544(&v19, &qword_2804BBDA8, &qword_26CD3D5F0);
    goto LABEL_11;
  }

  if (swift_dynamicCast() && (v18[0] & 1) != 0)
  {
    v9 = sub_26CD3A86C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v11 = v1;
    sub_26CCD5E38(0, 0, v4, &unk_26CD42848, v10);

    return result;
  }

LABEL_11:
  v13 = MEMORY[0x277D837D0];
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v14 = qword_280BBCBE0;
  v15 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = v13;
  *(v16 + 64) = sub_26CC19E10();
  *(v16 + 32) = 0xD000000000000056;
  *(v16 + 40) = 0x800000026CD4F1B0;
  sub_26CD3A3DC(v15, &dword_26CC14000, v14, "%@", 2, 2, v16);

  return result;
}

void sub_26CC77C3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_26CC77C90();
  }
}

uint64_t sub_26CC77C90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v4 = qword_280BBCBE0;
  v5 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0xD00000000000003DLL;
  *(v6 + 40) = 0x800000026CD4F170;
  sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

  v7 = sub_26CD3A86C();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v9 = v0;
  sub_26CCD5E38(0, 0, v3, &unk_26CD42830, v8);
}

uint64_t sub_26CC77E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CC73E90();
}

uint64_t sub_26CC77EFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_26CCEB1F8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_26CC168C0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26CCEB1F8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_26CC78010(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_26CCBE3BC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_26CC78104(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_26CCBEC4C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_26CC7820C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26CC37110;

  return v6();
}

uint64_t sub_26CC782F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26CC37110;

  return sub_26CC7820C(v2, v3, v4);
}

uint64_t sub_26CC783B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26CC37110;

  return v7();
}

uint64_t sub_26CC7849C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC37110;

  return sub_26CC783B4(a1, v4, v5, v6);
}

uint64_t sub_26CC78568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26CC1B4DC(a3, v23 - v10, &qword_2804BCA00, &qword_26CD3D510);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26CC1B544(v11, &qword_2804BCA00, &qword_26CD3D510);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26CD3A85C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26CD3A80C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26CD3A61C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);

    return v21;
  }

LABEL_8:
  sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_26CC78864(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC37110;

  return sub_26CC6D5E4(a1, v4);
}

uint64_t sub_26CC7891C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC246B8;

  return sub_26CC6D5E4(a1, v4);
}

uint64_t sub_26CC789D4(uint64_t a1)
{
  v2 = sub_26CD3A25C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAC0, &qword_26CD42888);
    v9 = sub_26CD3AC4C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_26CC7BA30(&qword_2804BCAC8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_26CD3A52C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_26CC7BA30(&qword_2804BCAD0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_26CD3A56C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_26CC78CF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
    v3 = sub_26CD3AC4C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26CD3B0FC();

      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26CD3AFDC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_26CC78E5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_26CD3ABAC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA80, &qword_26CD42858);
      v3 = sub_26CD3AC4C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_26CD3ABAC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x26D6AD660](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_26CD3AA8C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_26CC18080(0, &qword_2804BCA70, 0x277CE1F98);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_26CD3AA9C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_26CD3AA8C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_26CC18080(0, &qword_2804BCA70, 0x277CE1F98);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_26CD3AA9C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_26CC7914C()
{

  return MEMORY[0x2822009F8](sub_26CC791D8, 0, 0);
}

uint64_t sub_26CC791D8()
{
  *(v0 + 16) = 0;
  v1 = sub_26CD3A59C();
  v2 = sub_26CD3A59C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 16));

  if (*(v0 + 16))
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v10 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_26CC19E10();
    *(v11 + 32) = 0xD000000000000033;
    *(v11 + 40) = 0x800000026CD4F130;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    v8 = 1;
    goto LABEL_11;
  }

  v5 = [objc_opt_self() app];
  v6 = sub_26CD3A59C();
  v7 = [v5 BOOLeanForKey_];

  if (v7)
  {
    v8 = [v7 BOOLValue];

LABEL_11:
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = sub_26CD3A7FC();
    v14 = sub_26CD3A59C();
    [v12 setObject:v13 forKey:v14];

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:
  v15 = *(v0 + 8);

  return v15(v8);
}

uint64_t sub_26CC794C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26CD3A22C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26CD3A58C();
  MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x277D84FA0];
  v48 = MEMORY[0x277D84FA0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v42 = "ap to a topic ID: ";
    v43 = "ient:: cached topic IDs: ";
    v40 = "FEATURES_SPORTS_AND_EVENTS";
    v41 = "MARKETING_PUSH_NOTIFICATIONS";
    v39 = xmmword_26CD3C1E0;
    v37 = "letins.marketing";
    v38 = "com.apple.tv.bulletins.implicit";
    v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = "304 and full tv app is enabled.";
    while (1)
    {
      v17 = *v11++;
      v16 = v17;
      if (v17 > 1)
      {
        break;
      }

      if (v16)
      {
        v44 = v11;
        sub_26CD3A57C();
        sub_26CD3A21C();
        v24 = 0xD00000000000001FLL;
        v25 = v38;
LABEL_15:
        sub_26CD3A5EC();
        if (*(a2 + 16) && (v26 = sub_26CC181C4(v24, v25 | 0x8000000000000000), (v27 & 1) != 0))
        {
          v28 = *(*(a2 + 56) + 8 * v26);
          v29 = v6;
          v30 = a2;
          v31 = [v28 alertSetting] == 2;
          v32 = ([v28 badgeSetting] == 2) | (4 * v31);
          v33 = [v28 soundSetting];

          v34 = v33 == 2;
          a2 = v30;
          v6 = v29;
          if (v34)
          {
            v12 = v32 | 2;
          }

          else
          {
            v12 = v32;
          }
        }

        else
        {
          v12 = 7;
        }

        v13 = sub_26CD3A59C();

        v14 = sub_26CD3A59C();

        v15 = [objc_opt_self() topicRequestWithIdentifier:v13 displayName:v14 options:v12];

        sub_26CCDF818(&v46, v15);
        v11 = v44;
        if (!--v10)
        {
          return v48;
        }
      }

      else
      {
        if (qword_280BB9C20 != -1)
        {
          swift_once();
        }

        v18 = qword_280BBCBE0;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_26CD3AC6C();
        MEMORY[0x26D6AD060](0xD000000000000052, v43 | 0x8000000000000000);
        v45 = 0;
        v19 = sub_26CD3AF8C();
        MEMORY[0x26D6AD060](v19);

        v20 = v46;
        v21 = v47;
        v22 = sub_26CD3A99C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
        v23 = swift_allocObject();
        *(v23 + 16) = v39;
        *(v23 + 56) = MEMORY[0x277D837D0];
        *(v23 + 64) = sub_26CC19E10();
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        sub_26CD3A3DC(v22, &dword_26CC14000, v18, "%@", 2, 2, v23);

        if (!--v10)
        {
          return v48;
        }
      }
    }

    v44 = v11;
    if (v16 == 2)
    {
      sub_26CD3A57C();
      sub_26CD3A21C();
      v24 = 0xD00000000000001FLL;
      v25 = v37;
    }

    else
    {
      sub_26CD3A57C();
      sub_26CD3A21C();
      v24 = 0xD000000000000020;
      v25 = v36;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_26CC79958(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_26CC181C4(0x654D6E6F69746361, 0xED00007363697274), (v3 & 1) != 0))
  {
    sub_26CC168C0(*(a1 + 56) + 32 * v2, v11);
    sub_26CC331CC(v11, v12);
    sub_26CC168C0(v12, v11);
    v4 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v11, 0x654D6E6F69746361, 0xED00007363697274, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = v4;
    if (!*(a1 + 16))
    {
      return v6;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
    if (!*(a1 + 16))
    {
      return v6;
    }
  }

  v7 = sub_26CC181C4(0x6E4F72656E6E6162, 0xEA0000000000796CLL);
  if (v8)
  {
    sub_26CC168C0(*(a1 + 56) + 32 * v7, v11);
    sub_26CC331CC(v11, v12);
    sub_26CC168C0(v12, v11);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_26CD38DDC(v11, 0x6E4F72656E6E6162, 0xEA0000000000796CLL, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return v6;
}

id sub_26CC79AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v57 - v7;
  v8 = sub_26CD3A07C();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v13 = sub_26CD3A1EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v18 = sub_26CD3A59C();
  [v17 setTitle_];

  v19 = sub_26CD3A59C();
  [v17 setBody_];

  if (*(a5 + 16))
  {
    v20 = sub_26CC181C4(0x4449646165726874, 0xE800000000000000);
    if (v21)
    {
      sub_26CC168C0(*(a5 + 56) + 32 * v20, v63);
      if (swift_dynamicCast())
      {
        v22 = sub_26CD3A59C();

        [v17 setThreadIdentifier_];
      }
    }
  }

  v24 = v58;
  v23 = v59;
  if (!*(a5 + 16) || (v25 = sub_26CC181C4(0x6974617269707865, 0xEE00657461446E6FLL), (v26 & 1) == 0))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_10;
  }

  sub_26CC168C0(*(a5 + 56) + 32 * v25, v63);
  v27 = swift_dynamicCast();
  (*(v14 + 56))(v12, v27 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_10:
    sub_26CC1B544(v12, &qword_2804BCA90, &qword_26CD3C200);
    goto LABEL_11;
  }

  (*(v14 + 32))(v16, v12, v13);
  v28 = sub_26CD3A17C();
  [v17 setExpirationDate_];

  (*(v14 + 8))(v16, v13);
LABEL_11:
  v29 = v60;
  if (*(a5 + 16))
  {
    v30 = sub_26CC181C4(0x6F69737365537369, 0xE90000000000006ELL);
    if (v31)
    {
      sub_26CC168C0(*(a5 + 56) + 32 * v30, v63);
      if (swift_dynamicCast())
      {
        if (v61)
        {
          v32 = sub_26CD3A59C();
          [v17 setCategoryIdentifier_];
        }
      }
    }
  }

  if (!*(a5 + 16) || (v33 = sub_26CC181C4(0x52556E6F69746361, 0xE90000000000004CLL), (v34 & 1) == 0))
  {
    (*(v23 + 56))(v24, 1, 1, v29);
    goto LABEL_21;
  }

  sub_26CC168C0(*(a5 + 56) + 32 * v33, v63);
  v35 = swift_dynamicCast();
  (*(v23 + 56))(v24, v35 ^ 1u, 1, v29);
  if ((*(v23 + 48))(v24, 1, v29) == 1)
  {
LABEL_21:
    sub_26CC1B544(v24, &qword_2804BCA30, &qword_26CD3DA70);
    goto LABEL_22;
  }

  v36 = v57;
  (*(v23 + 32))(v57, v24, v29);
  v37 = sub_26CD39FCC();
  [v17 setDefaultActionURL_];

  (*(v23 + 8))(v36, v29);
LABEL_22:
  v38 = sub_26CC79958(a5);
  sub_26CCC7DC0(v38);

  v39 = sub_26CD3A4DC();

  [v17 setUserInfo_];

  if (*(a5 + 16))
  {
    v40 = sub_26CC181C4(0x79726F6765746163, 0xE800000000000000);
    if (v41)
    {
      sub_26CC168C0(*(a5 + 56) + 32 * v40, v63);
      if (swift_dynamicCast())
      {
        v42 = 0xD00000000000001FLL;
        switch(v61)
        {
          case 1:
            v43 = "com.apple.tv.bulletins.explicit";
            goto LABEL_31;
          case 3:
            v44 = "304 and full tv app is enabled.";
            v42 = 0xD000000000000020;
LABEL_32:
            v45 = v44 | 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_26CD3C1E0;
            *(inited + 32) = v42;
            v47 = inited + 32;
            *(inited + 40) = v45;
            sub_26CC78CF4(inited);
            swift_setDeallocating();
            sub_26CC7BDB4(v47);
            v48 = sub_26CD3A8FC();

            [v17 setTopicIdentifiers_];

            break;
          case 2:
            v43 = "com.apple.tv.bulletins.implicit";
LABEL_31:
            v44 = (v43 - 32);
            goto LABEL_32;
        }
      }
    }
  }

  if (*(a5 + 16) && (v49 = sub_26CC181C4(0xD000000000000011, 0x800000026CD4E170), (v50 & 1) != 0) && (sub_26CC168C0(*(a5 + 56) + 32 * v49, v63), (swift_dynamicCast() & 1) != 0))
  {
    v51 = v61;
  }

  else
  {
    v51 = 1;
  }

  [v17 setInterruptionLevel_];
  v52 = [objc_opt_self() defaultSound];
  if (*(a5 + 16))
  {
    v53 = sub_26CC181C4(0x646E756F73, 0xE500000000000000);
    if (v54)
    {
      sub_26CC168C0(*(a5 + 56) + 32 * v53, v63);
      if (swift_dynamicCast())
      {
        if (v61 == 0x746E656C6973 && v62 == 0xE600000000000000)
        {

LABEL_46:
          v52 = 0;
          goto LABEL_47;
        }

        v55 = sub_26CD3AFDC();

        if (v55)
        {

          goto LABEL_46;
        }
      }
    }
  }

LABEL_47:
  [v17 setSound_];

  return v17;
}

uint64_t sub_26CC7A3C8(void *a1)
{
  v2 = [a1 actionIdentifier];
  v3 = sub_26CD3A5CC();
  v5 = v4;

  v7 = v3 == sub_26CD3A5CC() && v5 == v6;
  v8 = MEMORY[0x277D837D0];
  if (v7)
  {

LABEL_8:

    v44 = v8;
    *&v43 = 0x6974617669746361;
    *(&v43 + 1) = 0xEA00000000006E6FLL;
    goto LABEL_9;
  }

  v9 = sub_26CD3AFDC();

  if (v9)
  {
    goto LABEL_8;
  }

  if (v3 == sub_26CD3A5CC() && v5 == v39)
  {
  }

  else
  {
    v41 = sub_26CD3AFDC();

    if ((v41 & 1) == 0)
    {
      v10 = MEMORY[0x277D84F98];
      goto LABEL_10;
    }
  }

  v44 = v8;
  *&v43 = 0x657373696D736964;
  *(&v43 + 1) = 0xE900000000000064;
LABEL_9:
  sub_26CC331CC(&v43, v45);
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42[0] = v10;
  sub_26CD38DDC(v45, 0x6E6F73616572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
LABEL_10:
  v12 = [a1 notification];
  v13 = [v12 request];

  v14 = [v13 identifier];
  v15 = sub_26CD3A5CC();
  v17 = v16;

  v44 = v8;
  *&v43 = v15;
  *(&v43 + 1) = v17;
  sub_26CC331CC(&v43, v45);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v45, 0x696669746E656469, 0xEA00000000007265, v18);
  v19 = [v13 content];
  v20 = [v19 title];

  v21 = sub_26CD3A5CC();
  v23 = v22;

  v44 = v8;
  *&v43 = v21;
  *(&v43 + 1) = v23;
  sub_26CC331CC(&v43, v45);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v45, 0x656C746974, 0xE500000000000000, v24);
  v25 = [v13 content];
  v26 = [v25 body];

  v27 = sub_26CD3A5CC();
  v29 = v28;

  v44 = v8;
  *&v43 = v27;
  *(&v43 + 1) = v29;
  sub_26CC331CC(&v43, v45);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  *&v42[0] = v10;
  sub_26CD38DDC(v45, 2036625250, 0xE400000000000000, v30);
  v31 = v10;
  v32 = [v13 content];
  v33 = [v32 userInfo];

  v34 = sub_26CD3A4FC();
  strcpy(v45, "actionMetrics");
  HIWORD(v45[0]) = -4864;
  sub_26CD3ABFC();
  if (*(v34 + 16) && (v35 = sub_26CCCA694(&v43), (v36 & 1) != 0))
  {
    sub_26CC168C0(*(v34 + 56) + 32 * v35, v42);
    sub_26CC579C4(&v43);

    sub_26CC331CC(v42, v45);
    sub_26CC168C0(v45, &v43);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v31;
    sub_26CD38DDC(&v43, 0x654D6E6F69746361, 0xED00007363697274, v37);

    __swift_destroy_boxed_opaque_existential_1(v45);
    return *&v42[0];
  }

  else
  {

    sub_26CC579C4(&v43);
  }

  return v31;
}

double sub_26CC7A890(void *a1)
{
  v2 = v1;
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v4 = qword_280BBCBE0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000036, 0x800000026CD4ED50);
  v5 = [a1 description];
  v6 = sub_26CD3A5CC();
  v8 = v7;

  MEMORY[0x26D6AD060](v6, v8);

  v9 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26CD3C1E0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_26CC19E10();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_26CD3A3DC(v9, &dword_26CC14000, v4, "%@", 2, 2, v10);

  v11 = sub_26CC7A3C8(a1);
  v12 = v2 + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v11, ObjectType, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_26CC7AAAC(uint64_t a1, void *a2)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v4 = qword_280BBCBE0;
  sub_26CD3AC6C();

  v5 = [a2 description];
  v6 = sub_26CD3A5CC();
  v8 = v7;

  MEMORY[0x26D6AD060](v6, v8);

  v9 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26CD3C1E0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_26CC19E10();
  *(v10 + 32) = 0xD00000000000002ALL;
  *(v10 + 40) = 0x800000026CD4ED20;
  sub_26CD3A3DC(v9, &dword_26CC14000, v4, "%@", 2, 2, v10);

  v11 = objc_opt_self();
  v12 = [objc_opt_self() app];
  v13 = *&v12[OBJC_IVAR___TVAppBag_amsBag];
}

uint64_t sub_26CC7ACD0()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = qword_280BBCBE0;
  sub_26CD3AC6C();

  v3 = [v1 description];
  v4 = sub_26CD3A5CC();
  v6 = v5;

  MEMORY[0x26D6AD060](v4, v6);

  v7 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26CD3C1E0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_26CC19E10();
  *(v8 + 32) = 0xD000000000000030;
  *(v8 + 40) = 0x800000026CD4ECE0;
  sub_26CD3A3DC(v7, &dword_26CC14000, v2, "%@", 2, 2, v8);

  v9 = [v1 request];
  v10 = [v9 content];

  v11 = [v10 userInfo];
  v12 = sub_26CD3A4FC();

  v0[11] = 0x6E4F72656E6E6162;
  v0[12] = 0xEA0000000000796CLL;
  sub_26CD3ABFC();
  if (!*(v12 + 16) || (v13 = sub_26CCCA694((v0 + 2)), (v14 & 1) == 0))
  {

    sub_26CC579C4((v0 + 2));
    goto LABEL_10;
  }

  sub_26CC168C0(*(v12 + 56) + 32 * v13, (v0 + 7));
  sub_26CC579C4((v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v15 = 27;
    goto LABEL_11;
  }

  if (*(v0 + 88))
  {
    v15 = 16;
  }

  else
  {
    v15 = 27;
  }

LABEL_11:
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_26CC7AFB8(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_26CC7AFD8, 0, 0);
}

uint64_t sub_26CC7AFD8()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = qword_280BBCBE0;
  v0[21] = qword_280BBCBE0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD4EB60);
  v3 = [v1 description];
  v4 = sub_26CD3A5CC();
  v6 = v5;

  MEMORY[0x26D6AD060](v4, v6);

  v7 = sub_26CD3A99C();
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26CD3C1E0;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_26CC19E10();
  v0[23] = v10;
  *(v8 + 64) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_26CD3A3DC(v7, &dword_26CC14000, v2, "%@", 2, 2, v8);

  v11 = objc_opt_self();
  LODWORD(v1) = [v11 shouldHandleNotificationResponse_];
  v12 = sub_26CD3A99C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD3C1E0;
  *(v13 + 56) = v9;
  *(v13 + 64) = v10;
  if (v1)
  {
    v14 = v0[19];
    *(v13 + 32) = 0xD000000000000044;
    *(v13 + 40) = 0x800000026CD4EBF0;
    sub_26CD3A3DC(v12, &dword_26CC14000, v2, "%@", 2, 2, v13);

    v15 = [objc_opt_self() app];
    v16 = *&v15[OBJC_IVAR___TVAppBag_amsBag];

    v17 = [v11 handleNotificationResponse:v14 bag:v16];
    v0[24] = v17;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_26CC7B460;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA08, &unk_26CD427B8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26CC773A4;
    v0[13] = &block_descriptor_3;
    v0[14] = v18;
    [v17 resultWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v19 = v0[19];
    v20 = v0[20];
    *(v13 + 32) = 0xD000000000000049;
    *(v13 + 40) = 0x800000026CD4EBA0;
    sub_26CD3A3DC(v12, &dword_26CC14000, v2, "%@", 2, 2, v13);

    v21 = sub_26CC7A3C8(v19);
    v22 = v20 + OBJC_IVAR____TtC13TVAppServices20UNNotificationClient_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 8))(v21, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_26CC7B460()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_26CC7B664;
  }

  else
  {
    v2 = sub_26CC7B570;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7B570(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  v4 = v1[21];
  v5 = sub_26CD3A99C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = v7;
  *(v6 + 64) = v3;
  *(v6 + 32) = 0xD00000000000003CLL;
  *(v6 + 40) = 0x800000026CD4ECA0;
  sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

  v8 = v1[1];

  return v8();
}

uint64_t sub_26CC7B664()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  swift_willThrow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD4EC60);
  v0[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v5 = v0[11];
  *(v4 + 32) = v0[10];
  *(v4 + 40) = v5;
  v6 = sub_26CD3A98C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26CD3C1E0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v7 + 64) = sub_26CC2E6E8();
  *(v7 + 32) = v4;
  sub_26CD3A3DC(v6, &dword_26CC14000, v3, "%@", 2, 2, v7);

  v8 = v0[1];

  return v8();
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CC7B874()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26CC37110;

  return sub_26CC77140(v2, v3, v5, v4);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CC7B974()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CC73E00();
}

uint64_t sub_26CC7BA30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26CC7BA80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CC77E6C();
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC7BB74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CC73E00();
}

uint64_t sub_26CC7BC28(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26CC18080(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC7BCA0()
{
  result = qword_2804BCA88;
  if (!qword_2804BCA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCA88);
  }

  return result;
}

uint64_t sub_26CC7BCF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CD1082C(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_26CC7BE08(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26CD3ABAC();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA8, &qword_26CD42880);
      result = sub_26CD3AC4C();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26CD3ABAC();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x26D6AD660](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_26CD3A46C();
    sub_26CC7BA30(&qword_2804BCAB0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_26CD3A52C();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_26CC7BA30(&qword_2804BCAB8, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_26CD3A56C();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26CC7C09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
    v3 = sub_26CD3AC4C();
    v4 = 0;
    v32 = v3 + 56;
    v28 = v1;
    v29 = a1 + 32;
    v30 = v3;
    while (1)
    {
      v31 = v4;
      v5 = (v29 + 40 * v4);
      v6 = *v5;
      v8 = v5[1];
      v7 = v5[2];
      v10 = v5[3];
      v9 = v5[4];
      sub_26CD3B0FC();
      sub_26CD3B11C();

      sub_26CD3A54C();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v32 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v19 = (v17 + 40 * v13);
          if (v6 == *v19)
          {
            v20 = v19[3];
            v21 = v19[4];
            v22 = v19[1] == v8 && v19[2] == v7;
            if (v22 || (result = sub_26CD3AFDC(), (result & 1) != 0))
            {
              v23 = v20 == v10 && v21 == v9;
              if (v23 || (result = sub_26CD3AFDC(), (result & 1) != 0))
              {

                v1 = v28;
                v3 = v30;
                goto LABEL_4;
              }
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v32 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v18 = v30;
        v17 = *(v30 + 48);
        v1 = v28;
      }

      else
      {
        v18 = v30;
      }

      *(v32 + 8 * v14) = v15 | v16;
      v24 = v17 + 40 * v13;
      *v24 = v6;
      *(v24 + 8) = v8;
      *(v24 + 16) = v7;
      *(v24 + 24) = v10;
      *(v24 + 32) = v9;
      v25 = *(v18 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v3 = v18;
      *(v18 + 16) = v27;
LABEL_4:
      v4 = v31 + 1;
      if (v31 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26CC7C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  _s5CacheC5ValueOMa(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC7C3F8, 0, 0);
}

uint64_t sub_26CC7C3F8()
{
  v10 = v0;
  v1 = *(v0 + 32);
  (*v1)(v9);
  *(v0 + 241) = v9[0];
  *(v0 + 88) = v9[1];
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_26CC7C5D4;
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);

    return v8(v5, v4);
  }

  else
  {
    if (qword_280BBA5B0 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_26CC7C7B8;

    return sub_26CC16630();
  }
}

uint64_t sub_26CC7C5D4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26CC7DD8C;
  }

  else
  {
    v2 = sub_26CC7C6E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7C6E8()
{
  if (qword_280BBA5B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_26CC7C7B8;

  return sub_26CC16630();
}

uint64_t sub_26CC7C7B8(char a1)
{
  *(*v1 + 243) = a1;

  return MEMORY[0x2822009F8](sub_26CC7C8B8, 0, 0);
}

uint64_t sub_26CC7C8B8(uint64_t a1)
{
  if (*(v1 + 243) == 1)
  {
    v2 = *(*(v1 + 32) + 48);
    if (v2)
    {
      v12 = (v2 + *v2);
      v3 = swift_task_alloc();
      *(v1 + 120) = v3;
      *v3 = v1;
      v3[1] = sub_26CC7CB94;

      return v12();
    }

    else
    {
      v10 = *(v1 + 241);
      v11 = swift_task_alloc();
      *(v1 + 128) = v11;
      *v11 = v1;
      v11[1] = sub_26CC7CD30;

      return sub_26CC9CF58(v10);
    }
  }

  else
  {
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v5 = qword_280BBCBD0;
    v6 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v7 + 64) = sub_26CC2E6E8();
    *(v7 + 32) = &unk_287DFA7A8;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

    sub_26CC6E3DC();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = *(v1 + 8);

    return v9();
  }
}

uint64_t sub_26CC7CB94()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 241);
    v7 = swift_task_alloc();
    *(v2 + 128) = v7;
    *v7 = v3;
    v7[1] = sub_26CC7CD30;

    return sub_26CC9CF58(v6);
  }
}

uint64_t sub_26CC7CD30(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 244) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26CC7CE9C, 0, 0);
  }
}

uint64_t sub_26CC7CE9C()
{
  if (*(v0 + 244) & 1) != 0 || (*(v0 + 88))
  {
    v6 = *(*(v0 + 32) + 64);
    if (!v6)
    {
      v14 = *(v0 + 80);
      v15 = _s10NetworkingO12FetchedValueOMa(0);
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = swift_task_alloc();
      *(v0 + 152) = v16;
      *v16 = v0;
      v16[1] = sub_26CC7D388;
      v4 = *(v0 + 80);
      v5 = *(v0 + 64);
      goto LABEL_13;
    }

    v18 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_26CC7D194;
    v8 = *(v0 + 80);

    return v18(v8);
  }

  else
  {
    if (*(v0 + 242) == 1)
    {
      v1 = *(v0 + 72);
      v2 = _s10NetworkingO12FetchedValueOMa(0);
      (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
      v3 = swift_task_alloc();
      *(v0 + 184) = v3;
      *v3 = v0;
      v3[1] = sub_26CC7D7D0;
      v4 = *(v0 + 72);
      v5 = *(v0 + 56);
LABEL_13:
      v17 = *(v0 + 32);

      return sub_26CC9D930(v5, v17, v4);
    }

    v10 = *(v0 + 241);
    v11 = *(*(v0 + 40) + 48);
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_26CC7DC18;
    v13 = *(v0 + 24);

    return sub_26CC9FEE8(v13, v10, v11);
  }
}

uint64_t sub_26CC7D194()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26CC7E130;
  }

  else
  {
    v2 = sub_26CC7D2A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7D2A8()
{
  v1 = v0[10];
  v2 = _s10NetworkingO12FetchedValueOMa(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_26CC7D388;
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[4];

  return sub_26CC9D930(v5, v6, v4);
}

uint64_t sub_26CC7D388()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_26CC7E1B8;
  }

  else
  {
    v2 = sub_26CC7D49C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7D49C()
{
  v1 = *(v0[4] + 80);
  if (v1)
  {
    v9 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_26CC7D618;
    v4 = v0[5];
    v3 = v0[6];

    return v9(v4, v3);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[3];
    sub_26CC7E3FC(v0[10]);
    sub_26CC7E464(v6, v7);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_26CC7D618()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC7E248;
  }

  else
  {
    v2 = sub_26CC7D72C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7D72C()
{
  v1 = v0[8];
  v2 = v0[3];
  sub_26CC7E3FC(v0[10]);
  sub_26CC7E464(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CC7D7D0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  sub_26CC7E3FC(*(v2 + 72));
  if (v0)
  {
    v3 = sub_26CC7E2E4;
  }

  else
  {
    v3 = sub_26CC7D904;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC7D904()
{
  v1 = *(v0[4] + 80);
  if (v1)
  {
    v7 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_26CC7DA70;
    v4 = v0[5];
    v3 = v0[6];

    return v7(v4, v3);
  }

  else
  {
    sub_26CC7E464(v0[7], v0[3]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_26CC7DA70()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_26CC7E36C;
  }

  else
  {
    v2 = sub_26CC7DB84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7DB84()
{
  sub_26CC7E464(v0[7], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CC7DC18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26CC7DD8C()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  if (swift_dynamicCast() && *(v0 + 240) == 1)
  {
    v3 = *(v0 + 241);
    v4 = *(v0 + 48);

    v5 = *(v4 + 48);
    v6 = swift_task_alloc();
    *(v0 + 224) = v6;
    *v6 = v0;
    v6[1] = sub_26CC7DEFC;
    v7 = *(v0 + 24);

    return sub_26CC9FEE8(v7, v3, v5);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26CC7DEFC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_26CC7E0A0;
  }

  else
  {
    v2 = sub_26CC7E010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC7E010()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E1B8()
{
  sub_26CC7E3FC(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E248()
{
  v1 = v0[10];
  sub_26CC7E4C8(v0[8]);
  sub_26CC7E3FC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CC7E2E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E36C()
{
  sub_26CC7E4C8(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC7E3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CC7E464(uint64_t a1, uint64_t a2)
{
  v4 = _s5CacheC5ValueOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC7E4C8(uint64_t a1)
{
  v2 = _s5CacheC5ValueOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC7E538()
{
  result = qword_2804BCB40;
  if (!qword_2804BCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCB40);
  }

  return result;
}

double sub_26CC7E5B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock);

  os_unfair_lock_lock(v2 + 4);
  sub_26CC8272C(&v19);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v19;
  v3 = v20;

  v5 = *(v3 + 16);
  if (v5)
  {
    if (v4)
    {
      v6 = 0;
    }

    else
    {
      sub_26CC82770();
      v6 = swift_allocError();
      *v7 = 1;
    }

    v8 = 0;
    v9 = v3 + 40;
    while (v8 < *(v3 + 16))
    {
      ++v8;
      v10 = *(v9 - 8);
      v19 = v4;
      v18 = v6;

      v10(&v19, &v18);

      v9 += 16;
      if (v5 == v8)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

LABEL_10:

  if (qword_280BB9C20 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v11 = qword_280BBCBE0;
  v12 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD3C1E0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_26CC19E10();
  *(v13 + 32) = 0xD000000000000033;
  *(v13 + 40) = 0x800000026CD4F4E0;
  sub_26CD3A3DC(v12, &dword_26CC14000, v11, "%@", 2, 2, v13);

  v14 = *(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCC28, &qword_26CD429C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD3C1E0;
    v19 = 0x6E6F697461636F6CLL;
    v20 = 0xE800000000000000;

    sub_26CD3ABFC();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    *(inited + 72) = v14;
    v16 = sub_26CC324A8(inited);
    swift_setDeallocating();
    sub_26CC1B544(inited + 32, &qword_2804BBCF8, &qword_26CD3CFB8);
  }

  else
  {
    v16 = 0;
  }

  if (qword_2804BBA38 != -1)
  {
    swift_once();
  }

  sub_26CC811C8(qword_2804BC8F8, v16);

  return result;
}

uint64_t sub_26CC7E8F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation);
  v5 = OBJC_IVAR____TtC13TVAppServices15LocationManager_requestsWaitingLocation;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = MEMORY[0x277D84F90];
  *a2 = v4;
  a2[1] = v6;
}

void sub_26CC7E980(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices15LocationManager____lazy_storage____authorizationStatus;
  v4 = *(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager____lazy_storage____authorizationStatus);
  if (v4 == 3)
  {
    v5 = [*(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient) authorizationStatus];
    LOBYTE(v4) = v5 == 2;
    if (v5 == 4)
    {
      LOBYTE(v4) = 2;
    }

    *(v1 + v3) = v4;
  }

  *a1 = v4;
}

id sub_26CC7E9F0()
{
  v1 = v0;
  v16 = sub_26CD3A9CC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A9BC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_26CD3A4CC();
  MEMORY[0x28223BE20](v6 - 8);
  *&v0[OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation] = 0;
  v0[OBJC_IVAR____TtC13TVAppServices15LocationManager____lazy_storage____authorizationStatus] = 3;
  v15 = OBJC_IVAR____TtC13TVAppServices15LocationManager_accessQueue;
  v7 = sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v14[1] = " will skip location request.";
  v14[2] = v7;
  sub_26CD3A4AC();
  v18 = MEMORY[0x277D84F90];
  sub_26CC82890(&unk_280BBB798, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC80, &unk_26CD45D70);
  sub_26CC1DD84(&qword_280BBB7B8, &unk_2804BCC80, &unk_26CD45D70, MEMORY[0x277D83970]);
  sub_26CD3AB5C();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v16);
  *&v0[v15] = sub_26CD3AA0C();
  v8 = OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v9 = OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC90, &qword_26CD429E8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v1[v9] = v10;
  v1[OBJC_IVAR____TtC13TVAppServices15LocationManager_locationRequestInProgress] = 0;
  *&v1[OBJC_IVAR____TtC13TVAppServices15LocationManager_requestsWaitingLocation] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13TVAppServices15LocationManager_cancellables] = MEMORY[0x277D84FA0];
  v11 = type metadata accessor for LocationManager();
  v17.receiver = v1;
  v17.super_class = v11;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  sub_26CC7ED48();
  sub_26CC7F10C();

  return v12;
}

double sub_26CC7ED48()
{
  v1 = sub_26CD3A49C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A4CC();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 processName];

  v10 = sub_26CD3A5CC();
  v12 = v11;

  if (v10 == 0xD000000000000018 && 0x800000026CD4B660 == v12)
  {
  }

  else
  {
    v14 = sub_26CD3AFDC();

    if ((v14 & 1) == 0)
    {
      v18[1] = *(v0 + OBJC_IVAR____TtC13TVAppServices15LocationManager_accessQueue);
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_26CC82904;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26CC1DDD0;
      aBlock[3] = &block_descriptor_35;
      v18[0] = _Block_copy(aBlock);

      sub_26CD3A4AC();
      v20 = MEMORY[0x277D84F90];
      sub_26CC82890(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
      sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
      sub_26CD3AB5C();
      v17 = v18[0];
      MEMORY[0x26D6AD3E0](0, v7, v4, v18[0]);
      _Block_release(v17);
      (*(v2 + 8))(v4, v1);
      (*(v19 + 8))(v7, v5);
    }
  }

  return result;
}

double sub_26CC7F10C()
{
  v0 = sub_26CD3AA3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processName];

  v6 = sub_26CD3A5CC();
  v8 = v7;

  if (v6 == 0xD000000000000018 && 0x800000026CD4B660 == v8)
  {
  }

  else
  {
    v10 = sub_26CD3AFDC();

    if ((v10 & 1) == 0)
    {
      v12 = [objc_opt_self() defaultCenter];
      if (qword_2804BB9F8 != -1)
      {
        swift_once();
      }

      if (qword_2804BBA00 != -1)
      {
        swift_once();
      }

      sub_26CD3AA4C();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_26CC82890(&qword_280BBB780, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
      sub_26CD3A48C();

      (*(v1 + 8))(v3, v0);
      swift_beginAccess();
      sub_26CD3A45C();
      swift_endAccess();
    }
  }

  return result;
}

void sub_26CC7F440()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v19 = v0;
  sub_26CD3A9EC();
  v5 = v20;
  if (v20 == 1)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v10 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v11 + 32) = &unk_287DFAC40;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    sub_26CC82A54();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  else if (v20)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    v18 = xmmword_26CD3C1E0;
    *(v14 + 16) = xmmword_26CD3C1E0;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003ELL, 0x800000026CD4F930);
    v22 = v5;
    sub_26CD3AD1C();
    v15 = v21;
    *(v14 + 32) = v20;
    *(v14 + 40) = v15;
    v16 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = v18;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v17 + 32) = v14;
    sub_26CD3A3DC(v16, &dword_26CC14000, v13, "%@", 2, 2, v17);
  }

  else
  {
    v6 = sub_26CD3A86C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v1;
    v8 = v1;
    sub_26CCD5E38(0, 0, v4, &unk_26CD42A00, v7);
  }
}

uint64_t sub_26CC7F888(uint64_t a1)
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 16);
  v3 = qword_280BBCBE0;
  v4 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_26CC19E10();
  *(v5 + 32) = 0xD000000000000033;
  *(v5 + 40) = 0x800000026CD4F970;
  sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

  [*(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient) requestWhenInUseAuthorization];
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_26CC7F9FC()
{
  v1 = *(v0 + 48);
  *(swift_task_alloc() + 16) = v1;
  sub_26CD3A9EC();

  v2 = *(v0 + 80);
  if (v2 == 2)
  {
    v3 = *(v0 + 48);
    *(swift_task_alloc() + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
    sub_26CD3A9EC();

    v4 = *(v0 + 32);
    if (v4)
    {
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v5 = qword_280BBCBE0;
      v6 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_26CD3C1E0;
      *(v7 + 56) = MEMORY[0x277D837D0];
      *(v7 + 64) = sub_26CC19E10();
      *(v7 + 32) = 0xD000000000000033;
      *(v7 + 40) = 0x800000026CD4F8F0;
      sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);

      v8 = *(v0 + 8);

      return v8(v4);
    }

    else
    {
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 48);
      v18 = qword_280BBCBE0;
      v19 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26CD3C1E0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_26CC19E10();
      *(v20 + 32) = 0xD00000000000003FLL;
      *(v20 + 40) = 0x800000026CD4F890;
      sub_26CD3A3DC(v19, &dword_26CC14000, v18, "%@", 2, 2, v20);

      v21 = swift_task_alloc();
      *(v0 + 56) = v21;
      *(v21 + 16) = v17;
      v22 = swift_task_alloc();
      *(v0 + 64) = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      *v22 = v0;
      v22[1] = sub_26CC7FFA4;

      return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000012, 0x800000026CD4F8D0, sub_26CC8290C, v21, v23);
    }
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x26D6AD060](0x100000000000004BLL, 0x800000026CD4F840);
    *(v0 + 81) = v2;
    sub_26CD3AD1C();
    v12 = *(v0 + 24);
    *(v11 + 32) = *(v0 + 16);
    *(v11 + 40) = v12;
    v13 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
    *(v14 + 32) = v11;
    sub_26CD3A3DC(v13, &dword_26CC14000, v10, "%@", 2, 2, v14);

    sub_26CC82770();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26CC7FFA4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26CC800DC;
  }

  else
  {

    v2 = sub_26CC800C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC800DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC80140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCCA8, &qword_26CD429F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  (*(v5 + 16))(&v12[-v6], a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = *(a2 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock);
  v16 = sub_26CC82914;
  v17 = v9;
  v18 = a2;
  v13 = sub_26CC82AC4;
  v14 = &v15;

  os_unfair_lock_lock(v10 + 4);
  sub_26CC82AE0();
  os_unfair_lock_unlock(v10 + 4);

  [*(a2 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient) requestLocation];
}

uint64_t sub_26CC802E8(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCCA8, &qword_26CD429F0);
    return sub_26CD3A81C();
  }

  if (!a1)
  {
    sub_26CC82770();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCCA8, &qword_26CD429F0);
  return sub_26CD3A82C();
}

id sub_26CC8039C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_26CC80480(void *a1)
{
  v2 = v1;
  v3 = [a1 authorizationStatus];
  if (v3 == 4)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 2;
  }

  sub_26CC7E980(&v28);
  if (v28 == v4)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = qword_280BBCBE0;
    v6 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_26CC19E10();
    *(v7 + 32) = 0xD000000000000048;
    *(v7 + 40) = 0x800000026CD4F610;
    sub_26CD3A3DC(v6, &dword_26CC14000, v5, "%@", 2, 2, v7);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD4F570);
    sub_26CC7E980(&v27);
    sub_26CD3AD1C();
    MEMORY[0x26D6AD060](544175136, 0xE400000000000000);
    v27 = v4;
    sub_26CD3AD1C();
    MEMORY[0x26D6AD060](0x206C6C6977202D20, 0xEE00796669746F6ELL);
    v11 = v28;
    v10 = v29;
    v12 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = MEMORY[0x277D837D0];
    v14 = sub_26CC19E10();
    *(v13 + 64) = v14;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    sub_26CD3A3DC(v12, &dword_26CC14000, v9, "%@", 2, 2, v13);

    *(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager____lazy_storage____authorizationStatus) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCC68, &qword_26CD429D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26CD3C1E0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000026CD4D9C0;
    sub_26CC7E980((inited + 48));
    v16 = sub_26CC325E4(inited);
    swift_setDeallocating();
    sub_26CC1B544(inited + 32, &unk_2804BCC70, &qword_26CD429E0);
    if (qword_2804BBA30 != -1)
    {
      swift_once();
    }

    v17 = qword_2804BC8F0;
    v18 = sub_26CCC8588(v16);

    sub_26CC811C8(v17, v18);

    if (v3 == 4)
    {
      v19 = sub_26CD3A99C();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26CD3C1E0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = v14;
      *(v20 + 32) = 0xD000000000000023;
      *(v20 + 40) = 0x800000026CD4F5E0;
      sub_26CD3A3DC(v19, &dword_26CC14000, v9, "%@", 2, 2, v20);

      v22 = *(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock);
      v23 = MEMORY[0x28223BE20](v21);
      MEMORY[0x28223BE20](v23);

      os_unfair_lock_lock(v22 + 4);
      sub_26CC82AE0();
      os_unfair_lock_unlock(v22 + 4);

      [*(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient) requestLocation];
    }

    else
    {
      v24 = OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation;
      if (*(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation))
      {
        v25 = sub_26CD3A99C();
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_26CD3C1E0;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = v14;
        *(v26 + 32) = 0xD000000000000028;
        *(v26 + 40) = 0x800000026CD4F5B0;
        sub_26CD3A3DC(v25, &dword_26CC14000, v9, "%@", 2, 2, v26);

        *(v2 + v24) = 0;

        return sub_26CC7E5B8();
      }
    }
  }

  return result;
}

double sub_26CC80AB0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  [a1 coordinate];
  v4 = MEMORY[0x277D839F8];
  v5 = MEMORY[0x277D83A80];
  *(v3 + 56) = MEMORY[0x277D839F8];
  *(v3 + 64) = v5;
  *(v3 + 32) = v6;
  v7 = sub_26CD3A5DC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26CD3C1E0;
  [a1 coordinate];
  *(v10 + 56) = v4;
  *(v10 + 64) = v5;
  *(v10 + 32) = v11;
  v12 = sub_26CD3A5DC();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCC58, &qword_26CD429D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD42990;
  *(inited + 32) = 0x656475746974616CLL;
  v16 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v16;
  *(inited + 80) = 0x64757469676E6F6CLL;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  *(inited + 120) = v16;
  *(inited + 128) = 0x6D617473656D6974;
  *(inited + 136) = 0xE900000000000070;
  v17 = [a1 timestamp];
  *(inited + 168) = sub_26CD3A1EC();
  __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_26CD3A1BC();

  v18 = sub_26CC194BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCC60, &qword_26CD3CFC8);
  swift_arrayDestroy();
  *(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation) = v18;

  return sub_26CC7E5B8();
}

void sub_26CC80DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = OBJC_IVAR____TtC13TVAppServices15LocationManager_requestsWaitingLocation;
    swift_beginAccess();
    v8 = *(a3 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_26CCBE7F0(0, v8[2] + 1, 1, v8);
      *(a3 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_26CCBE7F0((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_26CC8282C;
    v12[5] = v6;
    *(a3 + v7) = v8;
    swift_endAccess();
  }

  if (*(a3 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationRequestInProgress) == 1)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCBE0;
    v14 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_26CC19E10();
    *(v15 + 32) = 0xD00000000000004CLL;
    *(v15 + 40) = 0x800000026CD4F660;
    sub_26CD3A3DC(v14, &dword_26CC14000, v13, "%@", 2, 2, v15);
  }

  else
  {
    *(a3 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationRequestInProgress) = 1;
  }
}

void sub_26CC80FF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      sub_26CD3A5CC();
    }

    v5 = *&v2[OBJC_IVAR____TtC13TVAppServices15LocationManager_accessQueue];
    v6 = objc_allocWithZone(MEMORY[0x277CBFC10]);
    v7 = v5;
    v8 = v2;
    v9 = sub_26CD3A59C();

    v10 = [v6 initWithEffectiveBundleIdentifier:v9 delegate:v8 onQueue:v7];

    if (v10)
    {
      v11 = OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient;
      v12 = *&v8[OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient];
      *&v8[OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient] = v10;
      v13 = v10;

      [v13 setDesiredAccuracy_];
      [*&v8[v11] setDistanceFilter_];
      sub_26CC7E980(&v16);
      if (v16 == 2)
      {
        v14 = [*&v8[v11] location];
        if (v14)
        {
          v15 = v14;
          sub_26CC80AB0(v14);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_26CC811C8(void *a1, uint64_t a2)
{
  v5 = sub_26CD3A49C();
  v18 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26CD3A4CC();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v11 = sub_26CD3A9DC();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v2;
  v12[4] = a2;
  aBlock[4] = sub_26CC827C4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  v14 = a1;
  v15 = v2;

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CC82890(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50, MEMORY[0x277D83970]);
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

void sub_26CC814D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() defaultCenter];
  if (a3)
  {
    v7 = sub_26CD3A4DC();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 postNotificationName:a1 object:a2 userInfo:?];
}

void sub_26CC81598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_26CC815F4();
  }
}

void sub_26CC815F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v44 - v3;
  v5 = sub_26CD3A1EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - v10;
  v45 = v0;
  sub_26CD3A9EC();
  if (v48 != 2)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v31 = qword_280BBCBE0;
    v32 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_26CC19E10();
    *(v33 + 32) = 0xD000000000000055;
    *(v33 + 40) = 0x800000026CD4F6E0;
    goto LABEL_22;
  }

  v12 = sub_26CD39DDC();
  if (!v12)
  {
LABEL_19:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v31 = qword_280BBCBE0;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000050, 0x800000026CD4F740);
    sub_26CD39DEC();
    sub_26CC82890(&qword_2804BC348, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v34 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v34);

    v35 = v48;
    v36 = v49;
    v32 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_26CC19E10();
    *(v33 + 32) = v35;
    *(v33 + 40) = v36;
LABEL_22:
    sub_26CD3A3DC(v32, &dword_26CC14000, v31, "%@", 2, 2, v33);
LABEL_23:

    return;
  }

  v13 = v12;
  v46 = 0xD000000000000010;
  v47 = 0x800000026CD4E1D0;
  sub_26CD3ABFC();
  if (!*(v13 + 16) || (v14 = sub_26CCCA694(&v48), (v15 & 1) == 0))
  {

    sub_26CC579C4(&v48);
    goto LABEL_19;
  }

  sub_26CC168C0(*(v13 + 56) + 32 * v14, v50);
  sub_26CC579C4(&v48);

  if ((swift_dynamicCast() & 1) == 0 || v46 != 1)
  {
    goto LABEL_19;
  }

  sub_26CD3A1DC();
  sub_26CD3A1AC();
  v17 = v16;
  v44[0] = *(v6 + 8);
  v44[1] = v6 + 8;
  v18 = (v44[0])(v11, v5);
  MEMORY[0x28223BE20](v18);
  v44[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
  sub_26CD3A9EC();
  v19 = v48;
  if (!v48)
  {
LABEL_26:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v37 = qword_280BBCBE0;
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_26CD3AC6C();
    v38 = MEMORY[0x26D6AD060](0xD000000000000043, 0x800000026CD4F7A0);
    MEMORY[0x28223BE20](v38);
    v44[-2] = v1;
    sub_26CD3A9EC();
    v39 = sub_26CD3A5FC();
    MEMORY[0x26D6AD060](v39);

    v40 = v48;
    v41 = v49;
    v42 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_26CD3C1E0;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 64) = sub_26CC19E10();
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;
    sub_26CD3A3DC(v42, &dword_26CC14000, v37, "%@", 2, 2, v43);
    goto LABEL_23;
  }

  if (!*(v48 + 16) || (v20 = sub_26CC181C4(0x6D617473656D6974, 0xE900000000000070), (v21 & 1) == 0))
  {

    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_25;
  }

  sub_26CC168C0(*(v19 + 56) + 32 * v20, &v48);

  v22 = swift_dynamicCast();
  (*(v6 + 56))(v4, v22 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_25:
    sub_26CC1B544(v4, &qword_2804BCA90, &qword_26CD3C200);
    goto LABEL_26;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_26CD3A1AC();
  if (v17 + -86400.0 >= v23)
  {
    (v44[0])(v9, v5);
    goto LABEL_26;
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v24 = qword_280BBCBE0;
  v25 = sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26CD3C1E0;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_26CC19E10();
  *(v26 + 32) = 0xD000000000000047;
  *(v26 + 40) = 0x800000026CD4F7F0;
  sub_26CD3A3DC(v25, &dword_26CC14000, v24, "%@", 2, 2, v26);

  v28 = *(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock);
  v29 = MEMORY[0x28223BE20](v27);
  v44[-4] = 0;
  v44[-3] = 0;
  v44[-2] = v1;
  MEMORY[0x28223BE20](v29);
  v44[-2] = sub_26CC82AC4;
  v44[-1] = v30;

  os_unfair_lock_lock(v28 + 4);
  sub_26CC82AE0();
  os_unfair_lock_unlock(v28 + 4);

  [*(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationClient) requestLocation];
  (v44[0])(v9, v5);
}

double sub_26CC81F34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v12 = a1;
    v3 = sub_26CD3ABAC();
    a1 = v12;
    if (v3)
    {
LABEL_3:
      v4 = __OFSUB__(v3, 1);
      v5 = v3 - 1;
      if (v4)
      {
        __break(1u);
      }

      else if ((a1 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(a1 + 8 * v5 + 32);
LABEL_8:
          v7 = v6;
          sub_26CC80AB0(v6);
          v8 = *(v1 + OBJC_IVAR____TtC13TVAppServices15LocationManager_locationAccessLock);
          v10 = MEMORY[0x28223BE20](v9);
          MEMORY[0x28223BE20](v10);

          os_unfair_lock_lock(v8 + 4);
          sub_26CC827E4();
          os_unfair_lock_unlock(v8 + 4);

          return result;
        }

        __break(1u);
        goto LABEL_18;
      }

      v6 = MEMORY[0x26D6AD660](v5, a1);
      goto LABEL_8;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v2 = a1;
  if (qword_280BB9C20 != -1)
  {
LABEL_18:
    swift_once();
  }

  v13 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000046, 0x800000026CD4F520);
  v15 = sub_26CC18080(0, &qword_2804BCC50, 0x277CE41F8);
  v16 = MEMORY[0x26D6AD1A0](v2, v15);
  MEMORY[0x26D6AD060](v16);

  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  v17 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26CD3C1E0;
  *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v18 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
  *(v18 + 32) = v14;
  sub_26CD3A3DC(v17, &dword_26CC14000, v13, "%@", 2, 2, v18);

  return result;
}

double sub_26CC82248(void *a1)
{
  v2 = v1;
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v4 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD4F430);
  swift_getErrorValue();
  v6 = sub_26CD3B08C();
  MEMORY[0x26D6AD060](v6);

  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v7 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26CD3C1E0;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v8 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0, MEMORY[0x277CC9C50]);
  *(v8 + 32) = v5;
  sub_26CD3A3DC(v7, &dword_26CC14000, v4, "%@", 2, 2, v8);

  v9 = sub_26CD39F7C();
  v10 = [v9 domain];

  v11 = sub_26CD3A5CC();
  v13 = v12;

  if (v11 == sub_26CD3A5CC() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_26CD3AFDC();

    if ((v15 & 1) == 0)
    {
LABEL_9:
      v17 = sub_26CD3A99C();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26CD3C1E0;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_26CC19E10();
      *(v18 + 32) = 0xD00000000000002ALL;
      *(v18 + 40) = 0x800000026CD4F470;
      sub_26CD3A3DC(v17, &dword_26CC14000, v4, "%@", 2, 2, v18);

      *(v2 + OBJC_IVAR____TtC13TVAppServices15LocationManager__lastKnownLocation) = 0;

      return sub_26CC7E5B8();
    }
  }

  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  type metadata accessor for CLError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  sub_26CC82890(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);
  sub_26CD39F4C();

  if (v24)
  {
    goto LABEL_9;
  }

  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000035, 0x800000026CD4F4A0);
  v20 = sub_26CD39F7C();
  [v20 code];

  v21 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v21);

  v22 = sub_26CD3A99C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26CD3C1E0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_26CC19E10();
  *(v23 + 32) = 0;
  *(v23 + 40) = 0xE000000000000000;
  sub_26CD3A3DC(v22, &dword_26CC14000, v4, "%@", 2, 2, v23);

  return result;
}

void *sub_26CC8272C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_26CC82770()
{
  result = qword_2804BCC20;
  if (!qword_2804BCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCC20);
  }

  return result;
}

uint64_t sub_26CC82890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26CC82914(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCCA8, &qword_26CD429F0);

  return sub_26CC802E8(a1, a2);
}

uint64_t sub_26CC829A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CC7F868(a1, v4, v5, v6);
}

unint64_t sub_26CC82A54()
{
  result = qword_2804BCCB8;
  if (!qword_2804BCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCCB8);
  }

  return result;
}

void sub_26CC82B10(uint64_t a1)
{
  v3 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v28 = v1;
    v36 = MEMORY[0x277D84F90];
    sub_26CCEB27C(0, v7, 0);
    v34 = a1 + 64;
    v35 = v36;
    v8 = sub_26CD3AB6C();
    v9 = 0;
    v29 = a1 + 72;
    v30 = v7;
    v31 = a1;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v34 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v13 = *(a1 + 36);
      v32 = v9;
      v33 = v13;
      v14 = *(a1 + 56);
      v15 = *(v4 + 72);
      sub_26CC86B4C(v14 + v15 * v8, v6, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      v16 = v35;
      v36 = v35;
      v17 = v6;
      v19 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26CCEB27C((v18 > 1), v19 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v19 + 1;
      v20 = *(v4 + 80);
      v35 = v16;
      sub_26CC86C14(v17, v16 + ((v20 + 32) & ~v20) + v19 * v15, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      a1 = v31;
      v10 = 1 << *(v31 + 32);
      if (v8 >= v10)
      {
        goto LABEL_22;
      }

      v21 = *(v34 + 8 * v12);
      if ((v21 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v33 != *(v31 + 36))
      {
        goto LABEL_24;
      }

      v6 = v17;
      v22 = v21 & (-2 << (v8 & 0x3F));
      if (v22)
      {
        v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v11 = v30;
      }

      else
      {
        v23 = v12 << 6;
        v24 = v12 + 1;
        v11 = v30;
        v25 = (v29 + 8 * v12);
        while (v24 < (v10 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_26CC2FADC(v8, v33, 0);
            v10 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_26CC2FADC(v8, v33, 0);
      }

LABEL_4:
      v9 = v32 + 1;
      v8 = v10;
      if (v32 + 1 == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_26CC82E30()
{
  v0 = type metadata accessor for CacheStorage(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + 16) = 0xD000000000000012;
  *(v1 + 24) = 0x800000026CD4FBB0;
  qword_2804D14C0 = v0;
  unk_2804D14C8 = &off_282023808;
  qword_2804D14A8 = v1;
  return result;
}

uint64_t static UpNextDeltaStorage.read()@<X0>(uint64_t a1@<X8>)
{
  Delta = type metadata accessor for UpNextDelta(0);
  v4 = *(Delta - 8);
  MEMORY[0x28223BE20](Delta);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2804BBA40 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&qword_2804D14A8, v18);
  v7 = v19;
  v8 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v8 + 16))(v17, v7, v8);
  v9 = v17[0];
  v10 = v17[1];
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v10 >> 60 == 15)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = qword_280BBCBE0;
    v12 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_26CC19E10();
    *(v13 + 32) = 0xD000000000000030;
    *(v13 + 40) = 0x800000026CD4F9B0;
    sub_26CD3A3DC(v12, &dword_26CC14000, v11, "%@", 2, 2, v13);

    v14 = 1;
  }

  else
  {
    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC86B08(&qword_2804BCCC0, &protocol conformance descriptor for UpNextDelta);
    sub_26CD39D3C();
    sub_26CC1D1B8(v9, v10);

    if (v1)
    {
      return result;
    }

    sub_26CC86C14(v6, a1, type metadata accessor for UpNextDelta);
    v14 = 0;
  }

  return (*(v4 + 56))(a1, v14, 1, Delta);
}

uint64_t static UpNextDeltaStorage.clear()()
{
  if (qword_2804BBA40 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&qword_2804D14A8, v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 32))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t static UpNextDeltaStorage.invalidate()()
{
  if (qword_2804BBA40 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&qword_2804D14A8, &v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(&v3, v4);
  (*(v1 + 32))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(&v3);
}

void static UpNextDeltaStorage.process(notification:)(uint64_t a1)
{
  v28[1] = *MEMORY[0x277D85DE8];
  Delta = type metadata accessor for UpNextDelta(0);
  MEMORY[0x28223BE20](Delta - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = sub_26CD3A4DC();
  *&v25[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:0 error:v25];

  v7 = *&v25[0];
  if (v6)
  {
    v8 = sub_26CD3A0BC();
    v10 = v9;

    sub_26CD39D5C();
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC86A54();
    sub_26CD39D3C();

    v25[0] = v23[0];
    v25[1] = v23[1];
    v26 = v23[2];
    v27 = v24;
    sub_26CC83880(v25, v3);
    v23[0] = v26;
    sub_26CC1B544(v23, &qword_2804BCCD0, &qword_26CD42A10);
    v28[0] = v27;
    sub_26CC1B544(v28, &qword_2804BCCD8, &unk_26CD42A18);
    sub_26CC83FF0(v3);
    sub_26CC86BB4(v3, type metadata accessor for UpNextDelta);
    sub_26CC18C50(v8, v10);
  }

  else
  {
    v11 = v7;
    v12 = sub_26CD39F8C();

    swift_willThrow();
    v13 = v12;
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v14 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v15 = swift_allocObject();
    v19 = xmmword_26CD3C1E0;
    *(v15 + 16) = xmmword_26CD3C1E0;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000044, 0x800000026CD4FA30);
    v20 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v16 = v22;
    *(v15 + 32) = v21;
    *(v15 + 40) = v16;
    v17 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = v19;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = v15;
    sub_26CD3A3DC(v17, &dword_26CC14000, v14, "%@", 2, 2, v18);
  }
}

uint64_t sub_26CC83880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = (&v59 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v59 - v7;
  v81 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v64 = *(v81 - 1);
  v8 = MEMORY[0x28223BE20](v81);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v59 - v14;
  v15 = sub_26CD3A1EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v17(a2, 1, 1, v15);
  Delta = type metadata accessor for UpNextDelta(0);
  v60 = *(Delta + 20);
  *(a2 + v60) = 0;
  v20 = *(Delta + 24);
  v70 = v17;
  v71 = v15;
  v69 = v18;
  result = (v17)(a2 + v20, 1, 1, v15);
  if (*(a1 + 24))
  {
    if (*(a1 + 8))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = v61;
    sub_26CD3A19C();
    v70(v23, 0, 1, v71);
    result = sub_26CC86CE0(v23, a2 + v20, &qword_2804BCA90, &qword_26CD3C200);
    if (*(a1 + 8))
    {
LABEL_3:
      v22 = *(a1 + 48);
      if (!v22)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  v24 = v61;
  sub_26CD3A19C();
  v70(v24, 0, 1, v71);
  result = sub_26CC86CE0(v24, a2, &qword_2804BCA90, &qword_26CD3C200);
  v22 = *(a1 + 48);
  if (!v22)
  {
    return result;
  }

LABEL_7:
  v59 = a2;
  v25 = *(v22 + 16);
  if (v25)
  {
    v26 = (v22 + 32);
    v27 = type metadata accessor for ContentMetadata(0);
    v28 = v26;
    v29 = v27;
    v30 = *(v27 - 8);
    v31 = MEMORY[0x277D84F90];
    v32 = *(v30 + 56);
    v79 = v30 + 56;
    v80 = v32;
    v62 = v27;
    v63 = v10;
    v33 = v81;
    do
    {
      v76 = v31;
      v77 = v28;
      v78 = v25;
      memcpy(v83, v28, 0x5C9uLL);
      v67 = v83[79];
      v34 = v83[80];
      v73 = LOBYTE(v83[18]);
      v72 = v83[0];
      v35 = v83[1];
      v74 = v33[5];
      v80(&v12[v74], 1, 1, v29);
      v36 = v33[6];
      v37 = sub_26CD3A07C();
      v38 = *(*(v37 - 8) + 56);
      v68 = v36;
      v38(&v12[v36], 1, 1, v37);
      v75 = v33[7];
      v12[v75] = 13;
      v39 = v33[8];
      v12[v39] = 2;
      v40 = v33[12];
      v38(&v12[v40], 1, 1, v37);
      v41 = v33[13];
      v70(&v12[v41], 1, 1, v71);
      *v12 = v72;
      *(v12 + 1) = v35;
      v12[v39] = v73;
      sub_26CC4CF40(v83, v82);

      if (v34)
      {

        v42 = v66;
        sub_26CD3A03C();

        sub_26CC86CE0(v42, &v12[v40], &qword_2804BCA30, &qword_26CD3DA70);
      }

      v43 = v83[161];
      memcpy(v82, v83, 0x5C9uLL);
      v44 = v65;
      sub_26CC84C64(v82, v65);
      v29 = v62;
      v80(v44, 0, 1, v62);
      sub_26CC86CE0(v44, &v12[v74], &qword_2804BCCF0, &qword_26CD42A70);
      if (v43)
      {

        v45 = v66;
        sub_26CD3A03C();

        sub_26CC86CE0(v45, &v12[v68], &qword_2804BCA30, &qword_26CD3DA70);
      }

      v46 = v83[155];
      v47 = v83[57];
      v48 = v83[58];
      v49 = BYTE4(v83[56]);
      v50 = BYTE3(v83[56]);
      v51 = v81[9];
      v52 = v81[10];
      v53 = &v12[v81[11]];
      v12[v75] = BYTE1(v83[20]);
      *v53 = v47;
      *(v53 + 1) = v48;

      sub_26CC4CBF8(v83);
      v12[v51] = v49;
      v12[v52] = v50;
      if ((v46 & 1) == 0)
      {
        v54 = v61;
        sub_26CD3A19C();
        v70(v54, 0, 1, v71);
        sub_26CC86CE0(v54, &v12[v41], &qword_2804BCA90, &qword_26CD3C200);
      }

      v55 = v63;
      sub_26CC86B4C(v12, v63, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      v31 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_26CCBEA48(0, v31[2] + 1, 1, v31);
      }

      v56 = v78;
      v58 = v31[2];
      v57 = v31[3];
      if (v58 >= v57 >> 1)
      {
        v31 = sub_26CCBEA48((v57 > 1), v58 + 1, 1, v31);
      }

      v31[2] = v58 + 1;
      sub_26CC86C14(v55, v31 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v58, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      result = sub_26CC86BB4(v12, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      v28 = v77 + 1488;
      v25 = v56 - 1;
    }

    while (v25);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  *(v59 + v60) = v31;
  return result;
}

uint64_t sub_26CC83FF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCE0, &qword_26CD42A68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  Delta = type metadata accessor for UpNextDelta(0);
  v7 = *(Delta - 8);
  v8 = MEMORY[0x28223BE20](Delta);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  result = static UpNextDeltaStorage.read()(v5);
  if (!v1)
  {
    if ((*(v7 + 48))(v5, 1, Delta) == 1)
    {
      sub_26CC1B544(v5, &qword_2804BCCE0, &qword_26CD42A68);
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v14 = qword_280BBCBE0;
      v15 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26CD3C1E0;
      *(v16 + 56) = MEMORY[0x277D837D0];
      *(v16 + 64) = sub_26CC19E10();
      *(v16 + 32) = 0xD000000000000026;
      *(v16 + 40) = 0x800000026CD4FA80;
      sub_26CD3A3DC(v15, &dword_26CC14000, v14, "%@", 2, 2, v16);

      if (qword_2804BBA40 != -1)
      {
        swift_once();
      }

      sub_26CC19A84(&qword_2804D14A8, v33);
      v17 = v34;
      v18 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_26CD39D8C();
      swift_allocObject();
      sub_26CD39D7C();
      sub_26CC86B08(&qword_2804BCCE8, &protocol conformance descriptor for UpNextDelta);
      v19 = sub_26CD39D6C();
      v21 = v20;

      v31 = v19;
      v32 = v21;
      (*(v18 + 24))(&v31, v17, v18);
      sub_26CC18C50(v31, v32);
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      sub_26CC86C14(v5, v12, type metadata accessor for UpNextDelta);
      sub_26CC84574(a1, v10);
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v22 = qword_280BBCBE0;
      v23 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26CD3C1E0;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_26CC19E10();
      *(v24 + 32) = 0xD00000000000002DLL;
      *(v24 + 40) = 0x800000026CD4FAB0;
      sub_26CD3A3DC(v23, &dword_26CC14000, v22, "%@", 2, 2, v24);

      if (qword_2804BBA40 != -1)
      {
        swift_once();
      }

      sub_26CC19A84(&qword_2804D14A8, v33);
      v25 = v34;
      v26 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      sub_26CD39D8C();
      swift_allocObject();
      sub_26CD39D7C();
      sub_26CC86B08(&qword_2804BCCE8, &protocol conformance descriptor for UpNextDelta);
      v27 = sub_26CD39D6C();
      v29 = v28;

      v31 = v27;
      v32 = v29;
      (*(v26 + 24))(&v31, v25, v26);
      sub_26CC18C50(v31, v32);
      sub_26CC86BB4(v10, type metadata accessor for UpNextDelta);
      sub_26CC86BB4(v12, type metadata accessor for UpNextDelta);
      return __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }

  return result;
}

uint64_t sub_26CC84574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v56 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  Delta = type metadata accessor for UpNextDelta(0);
  MEMORY[0x28223BE20](Delta);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC86B4C(v2, v20, type metadata accessor for UpNextDelta);
  v21 = *(Delta + 20);
  v22 = *&v20[v21];
  v52 = Delta;
  v53 = v21;
  if (v22)
  {
    v61 = *(v22 + 16);
    if (v61)
    {
      v50 = v20;
      v51 = a2;
      v23 = 0;
      v63 = *(v10 + 20);
      v24 = *(v11 + 80);
      v25 = MEMORY[0x277D84F98];
      v59 = v11;
      v60 = v22 + ((v24 + 32) & ~v24);
      v58 = v22;
      while (1)
      {
        if (v23 >= *(v22 + 16))
        {
          goto LABEL_36;
        }

        v3 = *(v11 + 72);
        sub_26CC86B4C(v60 + v3 * v23, v17, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
        sub_26CC1B4DC(&v17[v63], v9, &qword_2804BCCF0, &qword_26CD42A70);
        v10 = type metadata accessor for ContentMetadata(0);
        v26 = *(*(v10 - 8) + 48);
        if (v26(v9, 1, v10) == 1)
        {
          sub_26CC1B544(v9, &qword_2804BCCF0, &qword_26CD42A70);
        }

        else
        {
          v27 = &v9[*(v10 + 96)];
          v29 = *v27;
          v28 = v27[1];

          sub_26CC86BB4(v9, type metadata accessor for ContentMetadata);
          if (v28)
          {
            goto LABEL_15;
          }
        }

        v57 = v3;
        v3 = v9;
        v30 = v56;
        sub_26CC1B4DC(&v17[v63], v56, &qword_2804BCCF0, &qword_26CD42A70);
        if (v26(v30, 1, v10) == 1)
        {
          sub_26CC1B544(v30, &qword_2804BCCF0, &qword_26CD42A70);

LABEL_20:
          sub_26CC86BB4(v17, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
          v22 = v58;
          v11 = v59;
          goto LABEL_6;
        }

        v10 = v30;
        v29 = *(v30 + 120);
        v28 = *(v30 + 128);

        sub_26CC86BB4(v10, type metadata accessor for ContentMetadata);

        if (!v28)
        {
          goto LABEL_20;
        }

        v3 = v57;
LABEL_15:
        sub_26CC86B4C(v17, v62, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v25;
        v10 = sub_26CC181C4(v29, v28);
        v33 = v25[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_37;
        }

        v36 = v32;
        if (v25[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v32 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            sub_26CD37000();
            if ((v36 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_26CD34E20(v35, isUniquelyReferenced_nonNull_native);
          v37 = sub_26CC181C4(v29, v28);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_39;
          }

          v10 = v37;
          if ((v36 & 1) == 0)
          {
LABEL_23:
            v25 = v64;
            v64[(v10 >> 6) + 8] |= 1 << v10;
            v39 = (v25[6] + 16 * v10);
            *v39 = v29;
            v39[1] = v28;
            sub_26CC86C14(v62, v25[7] + v10 * v3, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
            sub_26CC86BB4(v17, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
            v40 = v25[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_38;
            }

            v25[2] = v42;
            goto LABEL_5;
          }
        }

        v25 = v64;
        sub_26CC86C7C(v62, v64[7] + v10 * v3);
        sub_26CC86BB4(v17, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
LABEL_5:
        v22 = v58;
        v11 = v59;
LABEL_6:
        if (v61 == ++v23)
        {
          a2 = v51;
          v21 = *(v52 + 20);
          v20 = v50;
          goto LABEL_29;
        }
      }
    }
  }

  v25 = MEMORY[0x277D84F98];
LABEL_29:
  v64 = v25;
  v3 = v55;
  v43 = *(v54 + v21);
  if (v43 && (v44 = *(v43 + 16)) != 0)
  {
    v45 = 0;
    v10 = 0;
    while (v45 < *(v43 + 16))
    {
      sub_26CC86B4C(v43 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v45, v3, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      sub_26CC85CBC(v3, &v64);
      ++v45;
      sub_26CC86BB4(v3, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
      if (v44 == v45)
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

    sub_26CC86BB4(v3, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
    __break(1u);
LABEL_39:
    result = sub_26CD3B02C();
    __break(1u);
  }

  else
  {
LABEL_34:

    sub_26CC82B10(v46);
    v48 = v47;

    *&v20[v53] = v48;
    sub_26CC86B4C(v20, a2, type metadata accessor for UpNextDelta);

    return sub_26CC86BB4(v20, type metadata accessor for UpNextDelta);
  }

  return result;
}

void sub_26CC84C64(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v91 = v88 - v5;
  v6 = *(a1 + 96);
  v159 = *(a1 + 80);
  v160 = v6;
  v161 = *(a1 + 112);
  v7 = *(a1 + 128);
  v99 = *(a1 + 136);
  v162 = v7;
  v8 = *(a1 + 32);
  v155 = *(a1 + 16);
  v156 = v8;
  v9 = *(a1 + 64);
  v157 = *(a1 + 48);
  v158 = v9;
  v97 = *(a1 + 152);
  v10 = *(a1 + 160);
  v11 = *(a1 + 176);
  v94 = *(a1 + 168);
  v12 = *(a1 + 216);
  v102 = *(a1 + 224);
  v103 = v12;
  v13 = *(a1 + 232);
  v100 = *(a1 + 240);
  v101 = v13;
  v15 = *(a1 + 248);
  v14 = *(a1 + 256);
  v98 = *(a1 + 449);
  LODWORD(v7) = *(a1 + 450);
  v95 = v10;
  v96 = v7;
  v16 = *(a1 + 696);
  v165 = *(a1 + 680);
  v166 = v16;
  v167 = *(a1 + 712);
  v17 = *(a1 + 648);
  v164 = *(a1 + 664);
  v163 = v17;
  v90 = *(a1 + 976);
  v18 = *(a1 + 984);
  v19 = *(a1 + 992);
  v20 = *(a1 + 1000);
  v21 = *(a1 + 1008);
  v106 = *(a1 + 1016);
  v107 = v21;
  v22 = *(a1 + 1216);
  v108 = *(a1 + 1224);
  v109 = v22;
  v92 = *(a1 + 1248);
  v93 = v19;
  v23 = *(a1 + 1256);
  v24 = *(a1 + 1264);
  v104 = v18;
  v105 = v24;
  v25 = *(a1 + 1272);
  v26 = *(a1 + 1288);
  v88[1] = *(a1 + 1280);
  v89 = v26;
  v27 = *(a1 + 1328);
  v171 = *(a1 + 1344);
  v170 = v27;
  v28 = *(a1 + 1296);
  v169 = *(a1 + 1312);
  v168 = v28;
  v29 = *(a1 + 1392);
  v174 = *(a1 + 1408);
  v173 = v29;
  v30 = *(a1 + 1360);
  v172[1] = *(a1 + 1376);
  v172[0] = v30;
  *(v177 + 9) = *(a1 + 1465);
  v177[0] = *(a1 + 1456);
  v31 = *(a1 + 1424);
  v176 = *(a1 + 1440);
  v175 = v31;
  sub_26CC86E14(a2);
  *(a2 + 225) = v25;
  *(a2 + 15) = v15;
  *(a2 + 16) = v14;

  v32 = type metadata accessor for ContentMetadata(0);
  v33 = (a2 + v32[27]);

  *v33 = v92;
  v33[1] = v23;
  v34 = (a2 + v32[23]);

  *v34 = v93;
  v34[1] = v20;

  *(a2 + 29) = v94;
  *(a2 + 30) = v11;
  v35 = *(a1 + 584);
  v184 = *(a1 + 568);
  v185 = v35;
  v36 = *(a1 + 616);
  v186 = *(a1 + 600);
  v187 = v36;
  v37 = *(a1 + 520);
  v180 = *(a1 + 504);
  v181 = v37;
  v38 = *(a1 + 552);
  v182 = *(a1 + 536);
  v183 = v38;
  v39 = *(a1 + 488);
  v178 = *(a1 + 472);
  v179 = v39;
  if (get_enum_tag_for_layout_string_13TVAppServices5GenreVSg_0(&v178) != 1)
  {
    v154[6] = v184;
    v154[7] = v185;
    v154[8] = v186;
    v154[9] = v187;
    v154[2] = v180;
    v154[3] = v181;
    v154[4] = v182;
    v154[5] = v183;
    v154[0] = v178;
    v154[1] = v179;
    sub_26CC8549C(v154, &v133);
    nullsub_1();
    v40 = *(a2 + 440);
    v149 = *(a2 + 424);
    v150 = v40;
    v41 = *(a2 + 472);
    v151 = *(a2 + 456);
    v152 = v41;
    v42 = *(a2 + 376);
    v146 = *(a2 + 360);
    v147 = v42;
    v43 = *(a2 + 408);
    v148[0] = *(a2 + 392);
    v148[1] = v43;
    v44 = *(a2 + 344);
    v144 = *(a2 + 328);
    v145 = v44;
    sub_26CC1B544(&v144, &qword_2804BCD08, &qword_26CD42AA0);
    v45 = v140;
    *(a2 + 424) = v139;
    *(a2 + 440) = v45;
    v46 = v142;
    *(a2 + 456) = v141;
    *(a2 + 472) = v46;
    v47 = v136;
    *(a2 + 360) = v135;
    *(a2 + 376) = v47;
    v48 = v138;
    *(a2 + 392) = v137;
    *(a2 + 408) = v48;
    v49 = v134;
    *(a2 + 328) = v133;
    *(a2 + 344) = v49;
  }

  v141 = v175;
  v142 = v176;
  v143[0] = v177[0];
  *(v143 + 9) = *(v177 + 9);
  v137 = v172[0];
  v138 = v172[1];
  v139 = v173;
  v140 = v174;
  v133 = v168;
  v134 = v169;
  v135 = v170;
  v136 = v171;
  if (sub_26CC86D48(&v133) == 1)
  {
    v50 = (a1 + 264);
    v51 = v50[9];
    v151 = v50[8];
    v152 = v51;
    v153[0] = v50[10];
    *(v153 + 9) = *(v50 + 169);
    v52 = v50[5];
    v148[0] = v50[4];
    v148[1] = v52;
    v53 = v50[7];
    v149 = v50[6];
    v150 = v53;
    v54 = v50[1];
    v144 = *v50;
    v145 = v54;
    v55 = v50[3];
    v146 = v50[2];
    v147 = v55;
    if (sub_26CC86D48(&v144) == 1)
    {
      goto LABEL_8;
    }

    v56 = v50[9];
    v119 = v50[8];
    v120 = v56;
    v121[0] = v50[10];
    *(v121 + 9) = *(v50 + 169);
    v57 = v50[5];
    v116[0] = v50[4];
    v116[1] = v57;
    v58 = v50[7];
    v117 = v50[6];
    v118 = v58;
    v59 = v50[1];
    v112 = *v50;
    v113 = v59;
    v60 = v50[3];
    v114 = v50[2];
    v115 = v60;
    sub_26CC4D9BC(&v112, v110);
    v125 = v146;
    v126 = v147;
    v127[0] = v148[0];
    *(v127 + 9) = *(v148 + 9);
    v123 = v144;
    v124 = v145;
    v128 = v149;
    v129 = v150;
    *(v132 + 9) = *(v153 + 9);
    v131 = v152;
    v132[0] = v153[0];
    v130 = v151;
  }

  else
  {
    v125 = v170;
    v126 = v171;
    v127[0] = v172[0];
    *(v127 + 9) = *(v172 + 9);
    v123 = v168;
    v124 = v169;
    v130 = v175;
    v131 = v176;
    v132[0] = v177[0];
    *(v132 + 9) = *(v177 + 9);
    v128 = v173;
    v129 = v174;
  }

  v114 = v125;
  v115 = v126;
  v116[0] = v127[0];
  *(v116 + 9) = *(v127 + 9);
  v112 = v123;
  v113 = v124;
  v120 = v131;
  v121[0] = v132[0];
  *(v121 + 9) = *(v132 + 9);
  v117 = v128;
  v118 = v129;
  v119 = v130;
  v147 = v126;
  v146 = v125;
  v145 = v124;
  v144 = v123;
  v150 = v129;
  v149 = v128;
  v148[1] = v116[1];
  v148[0] = v116[0];
  *(v153 + 9) = *(v132 + 9);
  v153[0] = v121[0];
  v151 = v130;
  v152 = v131;
  sub_26CC1B4DC(&v168, v110, &qword_2804BC028, &qword_26CD3EBE8);
  v61 = sub_26CC857B0(&v144);
  sub_26CC4D938(&v112);

  *(a2 + 40) = v61;
LABEL_8:
  *(a2 + 152) = v95;
  v62 = v97;
  *(a2 + 17) = v99;
  *(a2 + 18) = v62;

  *(a2 + 312) = v96;
  *(a2 + 313) = v98;
  v63 = *(a2 + 35);
  v64 = *(a2 + 36);
  v65 = *(a2 + 37);
  v66 = *(a2 + 38);
  v68 = v102;
  v67 = v103;
  *(a2 + 35) = v103;
  *(a2 + 36) = v68;
  v70 = v100;
  v69 = v101;
  *(a2 + 37) = v101;
  *(a2 + 38) = v70;
  sub_26CC4D074(v67, v68, v69, v70);
  sub_26CC1D170(v63, v64, v65, v66);
  if (v104)
  {
LABEL_11:

    v71 = v91;
    sub_26CD3A03C();

    sub_26CC86CE0(v71, a2 + v32[29], &qword_2804BCA30, &qword_26CD3DA70);
    goto LABEL_12;
  }

  if (v89)
  {

    goto LABEL_11;
  }

LABEL_12:
  v72 = a2[5];
  v116[0] = a2[4];
  v116[1] = v72;
  v117 = a2[6];
  *&v118 = *(a2 + 14);
  v73 = a2[1];
  v112 = *a2;
  v113 = v73;
  v74 = a2[3];
  v114 = a2[2];
  v115 = v74;
  sub_26CC1B4DC(&v155, v110, &qword_2804BC000, &qword_26CD42AE0);
  sub_26CC1B544(&v112, &qword_2804BC000, &qword_26CD42AE0);
  v75 = v160;
  a2[4] = v159;
  a2[5] = v75;
  a2[6] = v161;
  *(a2 + 14) = v162;
  v76 = v156;
  *a2 = v155;
  a2[1] = v76;
  v77 = v158;
  a2[2] = v157;
  a2[3] = v77;
  v78 = v32[28];
  v79 = v105;

  *(a2 + v78) = v79;
  v80 = a2[13];
  v110[2] = a2[12];
  v110[3] = v80;
  v111 = *(a2 + 224);
  v81 = a2[11];
  v110[0] = a2[10];
  v110[1] = v81;
  sub_26CC1B4DC(&v163, &v122, &qword_2804BC048, &unk_26CD42A90);
  sub_26CC1B544(v110, &qword_2804BC048, &unk_26CD42A90);
  v82 = v166;
  a2[12] = v165;
  a2[13] = v82;
  *(a2 + 224) = v167;
  v83 = v164;
  a2[10] = v163;
  a2[11] = v83;
  v84 = (a2 + v32[24]);
  v85 = v106;

  *v84 = v107;
  v84[1] = v85;
  v86 = (a2 + v32[26]);
  v87 = v108;

  *v86 = v109;
  v86[1] = v87;
}

__n128 sub_26CC8549C@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  v32[0] = v4;
  v31 = *(a1 + 24);
  *&v18[6] = *(a1 + 104);
  v29 = *(a1 + 40);
  v30 = *&v18[6];
  v22 = v29;
  v23 = v31;
  v5 = *(a1 + 7);
  v21 = *(a1 + 64);
  v20 = v5;
  v6 = *(a1 + 122);
  if (v6 == 2)
  {
    LOBYTE(v6) = *(a1 + 120);
  }

  v7 = *(a1 + 121);
  v28 = *(a1 + 72);
  *&v19[6] = v28;
  v8 = *(a1 + 88);
  v9 = *(a1 + 123);
  v10 = *(a1 + 124);
  v11 = a1[8];
  v26 = a1[9];
  v27 = v8;
  *&v17[7] = v26;
  v24 = *a1;
  v25 = v11;
  if (*(&v24 + 1))
  {
    sub_26CC1B4DC(v32, v16, &qword_2804BCD10, &unk_26CD42AA8);
    sub_26CC1B4DC(&v31, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v30, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v29, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v28, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v27, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v26, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v25, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v24, v16, &qword_2804BCCD0, &qword_26CD42A10);
    v12 = sub_26CD3AD9C();
    sub_26CC1B544(&v24, &qword_2804BCCD0, &qword_26CD42A10);
    v13 = 3;
    if (v12 < 3)
    {
      v13 = v12;
    }
  }

  else
  {
    sub_26CC1B4DC(v32, v16, &qword_2804BCD10, &unk_26CD42AA8);
    sub_26CC1B4DC(&v31, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v30, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v29, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v28, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v27, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v26, v16, &qword_2804BCCD0, &qword_26CD42A10);
    sub_26CC1B4DC(&v25, v16, &qword_2804BCCD0, &qword_26CD42A10);
    v13 = 3;
  }

  *a2 = v13;
  *(a2 + 8) = v4;
  v14 = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = v14;
  *(a2 + 48) = v20;
  *(a2 + 56) = v21;
  *(a2 + 57) = v7;
  *(a2 + 58) = *v19;
  *(a2 + 72) = *&v19[14];
  *(a2 + 80) = *(a1 + 88);
  *(a2 + 96) = v6;
  *(a2 + 97) = v9;
  *(a2 + 112) = *&v18[14];
  *(a2 + 98) = *v18;
  *(a2 + 120) = v10;
  *(a2 + 136) = *&v17[15];
  *(a2 + 121) = *v17;
  result = a1[8];
  *(a2 + 144) = result;
  return result;
}

char *sub_26CC857B0(uint64_t *a1)
{
  v2 = a1[13];
  if (v2 == 1)
  {
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v4 = a1[12];
    v5 = *(a1 + 10);
    v35 = *(a1 + 9);
    v36[0] = v5;
    *(v36 + 9) = *(a1 + 169);
    v6 = *(a1 + 8);
    v33 = *(a1 + 7);
    v34 = v6;
    v32[0] = v4;
    v32[1] = v2;
    sub_26CC85974(v32, &v27);
    v3 = sub_26CCBE924(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_26CCBE924((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[88 * v8];
    v10 = v30;
    v11 = *v31;
    *(v9 + 4) = v29;
    *(v9 + 5) = v10;
    *(v9 + 6) = v11;
    v9[112] = v31[16];
    v12 = v28;
    *(v9 + 2) = v27;
    *(v9 + 3) = v12;
  }

  v13 = a1[1];
  if (v13 != 1)
  {
    v14 = *a1;
    v15 = *(a1 + 4);
    v30 = *(a1 + 3);
    *v31 = v15;
    *&v31[9] = *(a1 + 73);
    v16 = *(a1 + 2);
    v28 = *(a1 + 1);
    v29 = v16;
    *&v27 = v14;
    *(&v27 + 1) = v13;
    sub_26CC85974(&v27, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26CCBE924(0, *(v3 + 2) + 1, 1, v3);
    }

    v18 = *(v3 + 2);
    v17 = *(v3 + 3);
    if (v18 >= v17 >> 1)
    {
      v3 = sub_26CCBE924((v17 > 1), v18 + 1, 1, v3);
    }

    *(v3 + 2) = v18 + 1;
    v19 = &v3[88 * v18];
    v20 = v25[1];
    *(v19 + 2) = v25[0];
    *(v19 + 3) = v20;
    v21 = v25[2];
    v22 = v25[3];
    v23 = v25[4];
    v19[112] = v26;
    *(v19 + 5) = v22;
    *(v19 + 6) = v23;
    *(v19 + 4) = v21;
  }

  return v3;
}

uint64_t sub_26CC85974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = 1;
  v4 = 0.0;
  if (a1[11])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 0.0;
    if ((a1[4] & 1) == 0)
    {
      v4 = a1[10];
      v5 = a1[3];
      v24 = 0;
    }
  }

  v6 = a1[9];
  if (v6)
  {
    v7 = a1[8];
    swift_bridgeObjectRetain_n();
    if ((sub_26CD3A6FC() & 1) == 0)
    {
      v11 = v7;
      v12 = v6;
      goto LABEL_13;
    }

    v22 = v7;
    v23 = v6;
    sub_26CC86D6C();
    sub_26CD3A93C();
    v8 = [objc_opt_self() mainBundle];
    v9 = [v8 resourcePath];

    if (v9)
    {
      sub_26CD3A5CC();

      v22 = sub_26CD3A72C();
      v23 = v10;
      sub_26CC86DC0();
      sub_26CD3A66C();

      v11 = v22;
      v12 = v23;
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = 0;
  v12 = 0;
LABEL_13:
  v13 = *(a1 + 16);
  v14 = *(a1 + 56);
  v21 = *a1;
  v15 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v16 = v21;
  }

  else
  {
    if (v14 == 2 || (v14 & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_280BB9C28 != -1)
    {
      swift_once();
    }

    v17 = sub_26CD3A59C();
    MGGetSInt32Answer();

    v15 = 0xE300000000000000;
    v18 = sub_26CD3AFDC();

    if (v18)
    {
      v16 = 7496556;
    }

    else
    {
LABEL_21:
      v15 = 0xE300000000000000;
      v16 = 6778986;
    }
  }

  v19 = v24;
  *a2 = v13;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v19;
  *(a2 + 25) = 27;
  *(a2 + 32) = v7;
  *(a2 + 40) = v6;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *(a2 + 64) = v16;
  *(a2 + 72) = v15;
  *(a2 + 80) = v14;
  return sub_26CC1B4DC(&v21, &v22, &qword_2804BCCD0, &qword_26CD42A10);
}

void sub_26CC85CBC(uint64_t a1, uint64_t *a2)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF8, &unk_26CD42A78);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v90 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v100 = (&v87 - v8);
  v9 = sub_26CD3A1EC();
  v10 = *(v9 - 8);
  v94 = v9;
  v95 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v91 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v87 - v13;
  v14 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v98 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v93 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v87 - v24;
  *&v101 = v14;
  v26 = *(v14 + 20);
  v27 = a1;
  sub_26CC1B4DC(a1 + v26, &v87 - v24, &qword_2804BCCF0, &qword_26CD42A70);
  v28 = type metadata accessor for ContentMetadata(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v25, 1, v28) == 1)
  {
    sub_26CC1B544(v25, &qword_2804BCCF0, &qword_26CD42A70);
  }

  else
  {
    v30 = &v25[*(v28 + 96)];
    v32 = *v30;
    v31 = v30[1];

    sub_26CC86BB4(v25, type metadata accessor for ContentMetadata);
    if (v31)
    {
      v33 = v31;
      v34 = v27;
      v35 = v32;
      goto LABEL_8;
    }
  }

  v34 = v27;
  sub_26CC1B4DC(v27 + v26, v23, &qword_2804BCCF0, &qword_26CD42A70);
  if (v29(v23, 1, v28) == 1)
  {
    sub_26CC1B544(v23, &qword_2804BCCF0, &qword_26CD42A70);

LABEL_12:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v46 = qword_280BBCBE0;
    v47 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_26CD3C1E0;
    *(v48 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v48 + 64) = sub_26CC2E6E8();
    *(v48 + 32) = &unk_287DFB798;
    sub_26CD3A3DC(v47, &dword_26CC14000, v46, "%@", 2, 2, v48);
LABEL_15:

    return;
  }

  v35 = *(v23 + 15);
  v33 = *(v23 + 16);

  sub_26CC86BB4(v23, type metadata accessor for ContentMetadata);

  if (!v33)
  {
    goto LABEL_12;
  }

LABEL_8:
  v36 = v100;
  v37 = v101;
  v38 = *(v101 + 32);
  v39 = *(v34 + v38);
  if (v39 == 2)
  {
LABEL_9:

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v40 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v41 = swift_allocObject();
    v101 = xmmword_26CD3C1E0;
    *(v41 + 16) = xmmword_26CD3C1E0;
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_26CD3AC6C();

    v102 = 0xD00000000000002FLL;
    v103 = 0x800000026CD4FAE0;
    v104 = *(v34 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD00, &qword_26CD42A88);
    v42 = sub_26CD3A5FC();
    MEMORY[0x26D6AD060](v42);

    v43 = v103;
    *(v41 + 32) = v102;
    *(v41 + 40) = v43;
    v44 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v45 = swift_allocObject();
    *(v45 + 16) = v101;
    *(v45 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v45 + 64) = sub_26CC2E6E8();
    *(v45 + 32) = v41;
    sub_26CD3A3DC(v44, &dword_26CC14000, v40, "%@", 2, 2, v45);
    goto LABEL_15;
  }

  if ((v39 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_22;
  }

  v49 = sub_26CD3AFDC();

  if (v49)
  {
LABEL_22:
    v51 = *v99;
    if (*(*v99 + 16))
    {
      v52 = sub_26CC181C4(v35, v33);
      if (v53)
      {
        v88 = v35;
        v54 = v93;
        sub_26CC86B4C(*(v51 + 56) + *(v98 + 72) * v52, v93, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
        v55 = v96;
        sub_26CC86C14(v54, v96, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
        sub_26CC1B4DC(v55 + *(v37 + 52), v36, &qword_2804BCA90, &qword_26CD3C200);
        v57 = v94;
        v56 = v95;
        v58 = *(v95 + 48);
        if (v58(v36, 1, v94) != 1)
        {
          v93 = v33;
          v59 = v92;
          v100 = *(v56 + 32);
          (v100)(v92, v36, v57);
          v36 = v90;
          sub_26CC1B4DC(v34 + *(v37 + 52), v90, &qword_2804BCA90, &qword_26CD3C200);
          if (v58(v36, 1, v57) != 1)
          {
            (v100)(v91, v36, v57);
            v64 = v57;
            if (sub_26CD3A18C())
            {
              v65 = v89;
              sub_26CC86B4C(v34, v89, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
              v66 = *(v37 + 36);
              v67 = v96;
              v68 = *(v96 + v66);
              if (v68 != 2)
              {
                v69 = *(v34 + v66);
                if (v69 != 2 && (v68 & 1) != (v69 & 1))
                {
                  if (qword_280BB9C20 != -1)
                  {
                    swift_once();
                  }

                  v100 = qword_280BBCBE0;
                  v102 = 0;
                  v103 = 0xE000000000000000;
                  sub_26CD3AC6C();
                  MEMORY[0x26D6AD060](0xD00000000000002BLL, 0x800000026CD4FB60);
                  if (v68)
                  {
                    v70 = 1702195828;
                  }

                  else
                  {
                    v70 = 0x65736C6166;
                  }

                  if (v68)
                  {
                    v71 = 0xE400000000000000;
                  }

                  else
                  {
                    v71 = 0xE500000000000000;
                  }

                  MEMORY[0x26D6AD060](v70, v71);

                  MEMORY[0x26D6AD060](0xD000000000000015, 0x800000026CD4FB90);
                  if (v69)
                  {
                    v72 = 1702195828;
                  }

                  else
                  {
                    v72 = 0x65736C6166;
                  }

                  if (v69)
                  {
                    v73 = 0xE400000000000000;
                  }

                  else
                  {
                    v73 = 0xE500000000000000;
                  }

                  MEMORY[0x26D6AD060](v72, v73);

                  v74 = v102;
                  v75 = v103;
                  v76 = sub_26CD3A99C();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
                  v77 = swift_allocObject();
                  *(v77 + 16) = xmmword_26CD3C1E0;
                  *(v77 + 56) = MEMORY[0x277D837D0];
                  *(v77 + 64) = sub_26CC19E10();
                  *(v77 + 32) = v74;
                  *(v77 + 40) = v75;
                  sub_26CD3A3DC(v76, &dword_26CC14000, v100, "%@", 2, 2, v77);

                  v65 = v89;
                  *(v89 + *(v37 + 36)) = v68;
                  v64 = v94;
                  v67 = v96;
                }
              }

              v78 = v97;
              sub_26CC86B4C(v65, v97, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
              (*(v98 + 56))(v78, 0, 1, v37);
              sub_26CCD6544(v78, v88, v93);
              sub_26CC86BB4(v65, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
              v79 = *(v95 + 8);
              v79(v91, v64);
              v79(v92, v64);
              sub_26CC86BB4(v67, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
            }

            else
            {
              v80 = v96;
              if (qword_280BB9C20 != -1)
              {
                swift_once();
              }

              v81 = qword_280BBCBE0;
              v102 = 0;
              v103 = 0xE000000000000000;
              sub_26CD3AC6C();
              MEMORY[0x26D6AD060](0x1000000000000042, 0x800000026CD4FB10);
              MEMORY[0x26D6AD060](v88, v93);

              v82 = v102;
              v83 = v103;
              v84 = sub_26CD3A99C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
              v85 = swift_allocObject();
              *(v85 + 16) = xmmword_26CD3C1E0;
              *(v85 + 56) = MEMORY[0x277D837D0];
              *(v85 + 64) = sub_26CC19E10();
              *(v85 + 32) = v82;
              *(v85 + 40) = v83;
              sub_26CD3A3DC(v84, &dword_26CC14000, v81, "%@", 2, 2, v85);

              v86 = *(v95 + 8);
              v86(v91, v64);
              v86(v59, v64);
              sub_26CC86BB4(v80, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
            }

            return;
          }

          (*(v56 + 8))(v59, v57);
          v55 = v96;
          v33 = v93;
        }

        sub_26CC86BB4(v55, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
        sub_26CC1B544(v36, &qword_2804BCA90, &qword_26CD3C200);
        v35 = v88;
      }
    }

    v60 = v34;
    v61 = v97;
    sub_26CC86B4C(v60, v97, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
    (*(v98 + 56))(v61, 0, 1, v37);
    sub_26CCD6544(v61, v35, v33);
    return;
  }

  v50 = *(v34 + v38);
  if (v50 == 2)
  {
    goto LABEL_9;
  }

  if (v50)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v62 = sub_26CD3AFDC();

    if ((v62 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v63 = v97;
  sub_26CD2B738(v35, v33, v97);

  sub_26CC1B544(v63, &qword_2804BCCF8, &unk_26CD42A78);
}

unint64_t sub_26CC86A54()
{
  result = qword_2804BCCC8;
  if (!qword_2804BCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCCC8);
  }

  return result;
}

uint64_t sub_26CC86B08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpNextDelta(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CC86B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC86BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC86C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC86C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC86CE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26CC86D48(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26CC86D6C()
{
  result = qword_280BB9C10;
  if (!qword_280BB9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C10);
  }

  return result;
}

unint64_t sub_26CC86DC0()
{
  result = qword_280BB9C08;
  if (!qword_280BB9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BB9C08);
  }

  return result;
}

uint64_t sub_26CC86E14@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = xmmword_26CD3E690;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1280;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 264) = 0;
  *(a1 + 272) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 1;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 514;
  v2 = (a1 + 328);
  *(a1 + 320) = 0;
  sub_26CC4CB80(v22);
  v3 = v22[7];
  *(a1 + 424) = v22[6];
  *(a1 + 440) = v3;
  v4 = v22[9];
  *(a1 + 456) = v22[8];
  *(a1 + 472) = v4;
  v5 = v22[3];
  *(a1 + 360) = v22[2];
  *(a1 + 376) = v5;
  v6 = v22[5];
  *(a1 + 392) = v22[4];
  *(a1 + 408) = v6;
  v7 = v22[1];
  *v2 = v22[0];
  *(a1 + 344) = v7;
  v8 = type metadata accessor for ContentMetadata(0);
  v9 = v8[18];
  v10 = sub_26CD3A1EC();
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = (a1 + v8[19]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v8[20]) = 0;
  v12 = a1 + v8[21];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v8[22]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[23]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v8[24]);
  *v15 = 0;
  v15[1] = 0;
  *(a1 + v8[25]) = 0;
  v16 = (a1 + v8[26]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a1 + v8[27]);
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v8[28]) = 0;
  v18 = v8[29];
  v19 = sub_26CD3A07C();
  result = (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  v21 = (a1 + v8[30]);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

TVAppServices::AiringType_optional __swiftcall AiringType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UpNextDelta.items.getter()
{
  type metadata accessor for UpNextDelta(0);
}

void UpNextDelta.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UpNextDelta(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t UpNextDelta.ContinuationContentMetadata.adamId.getter()
{
  v1 = *v0;

  return v1;
}

void UpNextDelta.ContinuationContentMetadata.adamId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t UpNextDelta.ContinuationContentMetadata.context.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.context.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.deltaType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.deltaType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.isRental.setter(char a1)
{
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.isPurchase.setter(char a1)
{
  result = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UpNextDelta.ContinuationContentMetadata.localizedContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) + 44));

  return v1;
}

void UpNextDelta.ContinuationContentMetadata.localizedContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UpNextDelta.ContinuationContentMetadata(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_26CC87A0C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x6B63616279616C70;
    if (a1 != 8)
    {
      v6 = 0x6D617473656D6974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C61746E65527369;
    if (a1 != 5)
    {
      v7 = 0x6168637275507369;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64496D616461;
    v2 = 0xD000000000000017;
    v3 = 0x747865746E6F63;
    if (a1 != 3)
    {
      v3 = 0x70795461746C6564;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4D746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26CC87B7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC94D00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC87BA4(uint64_t a1)
{
  v2 = sub_26CC88010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC87BE0(uint64_t a1)
{
  v2 = sub_26CC88010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpNextDelta.ContinuationContentMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD18, &qword_26CD42AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC88010();
  sub_26CD3B16C();
  v11[31] = 0;
  sub_26CD3AECC();
  if (!v2)
  {
    v9 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
    v11[30] = 1;
    type metadata accessor for ContentMetadata(0);
    sub_26CC88084(&qword_2804BCD28, type metadata accessor for ContentMetadata, &protocol conformance descriptor for ContentMetadata);
    sub_26CD3AF1C();
    v11[29] = 2;
    sub_26CD3A07C();
    sub_26CC88084(&qword_2804BC1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26CD3AF1C();
    v11[28] = *(v3 + *(v9 + 28));
    v11[27] = 3;
    sub_26CC4D020();
    sub_26CD3AF1C();
    v11[26] = *(v3 + *(v9 + 32));
    v11[25] = 4;
    sub_26CC4CFCC();
    sub_26CD3AF1C();
    v11[24] = 5;
    sub_26CD3AEDC();
    v11[15] = 6;
    sub_26CD3AEDC();
    v11[14] = 7;
    sub_26CD3AECC();
    v11[13] = 8;
    sub_26CD3AF1C();
    v11[12] = 9;
    sub_26CD3A1EC();
    sub_26CC88084(&qword_2804BCD30, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26CD3AF1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC88010()
{
  result = qword_2804BCD20;
  if (!qword_2804BCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCD20);
  }

  return result;
}

uint64_t sub_26CC88084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UpNextDelta.ContinuationContentMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v39 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD38, &qword_26CD42AC0);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v39 - v10;
  v11 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = v12[7];
  v16 = type metadata accessor for ContentMetadata(0);
  v17 = *(*(v16 - 8) + 56);
  v49 = v15;
  v51 = v16;
  v17(&v14[v15], 1, 1);
  v18 = v12[8];
  v19 = sub_26CD3A07C();
  v20 = *(*(v19 - 8) + 56);
  v48 = v18;
  v20(&v14[v18], 1, 1, v19);
  v47 = v12[9];
  v14[v47] = 13;
  v46 = v12[10];
  v14[v46] = 2;
  v45 = v12[11];
  v14[v45] = 2;
  v44 = v12[12];
  v14[v44] = 2;
  v21 = &v14[v12[13]];
  *v21 = 0;
  v21[1] = 0;
  v22 = v12[14];
  v20(&v14[v22], 1, 1, v19);
  v23 = v12[15];
  v24 = sub_26CD3A1EC();
  v25 = *(*(v24 - 8) + 56);
  v56 = v14;
  v25(&v14[v23], 1, 1, v24);
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  sub_26CC88010();
  v26 = v55;
  sub_26CD3B15C();
  if (v26)
  {
    v27 = v56;
  }

  else
  {
    v29 = v52;
    v28 = v53;
    v39 = v23;
    v40 = v22;
    v55 = v24;
    v70 = 0;
    v30 = sub_26CD3ADDC();
    v27 = v56;
    *v56 = v30;
    *(v27 + 8) = v31;
    v69 = 1;
    sub_26CC88084(&qword_2804BCD40, type metadata accessor for ContentMetadata, &protocol conformance descriptor for ContentMetadata);
    sub_26CD3AE2C();
    v32 = v29;
    sub_26CC86CE0(v28, v27 + v49, &qword_2804BCCF0, &qword_26CD42A70);
    v68 = 2;
    sub_26CC88084(&qword_2804BC220, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v33 = v50;
    sub_26CD3AE2C();
    sub_26CC86CE0(v33, v27 + v48, &qword_2804BCA30, &qword_26CD3DA70);
    v66 = 3;
    sub_26CC4CCD0();
    sub_26CD3AE2C();
    *(v27 + v47) = v67;
    v64 = 4;
    sub_26CC4CC7C();
    sub_26CD3AE2C();
    *(v27 + v46) = v65;
    v63 = 5;
    *(v27 + v45) = sub_26CD3ADEC();
    v62[0] = 6;
    *(v27 + v44) = sub_26CD3ADEC();
    v61 = 7;
    *v21 = sub_26CD3ADDC();
    v21[1] = v34;
    v60 = 8;
    v35 = v43;
    sub_26CD3AE2C();
    sub_26CC86CE0(v35, v27 + v40, &qword_2804BCA30, &qword_26CD3DA70);
    v59 = 9;
    sub_26CC88084(&qword_280BBB698, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v37 = v54;
    v38 = v57;
    sub_26CD3AE2C();
    (*(v32 + 8))(v38, v37);
    sub_26CC86CE0(v42, v27 + v39, &qword_2804BCA90, &qword_26CD3C200);
    sub_26CC89588(v27, v41, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  return sub_26CC8948C(v27, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
}

TVAppServices::UpNextDelta::DeltaType_optional __swiftcall UpNextDelta.DeltaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t UpNextDelta.DeltaType.rawValue.getter()
{
  if (*v0)
  {
    return 0x65766F6D6552;
  }

  else
  {
    return 6579265;
  }
}

uint64_t sub_26CC88950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65766F6D6552;
  }

  else
  {
    v3 = 6579265;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x65766F6D6552;
  }

  else
  {
    v5 = 6579265;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();
  }

  return v8 & 1;
}

uint64_t sub_26CC889EC()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC88A64(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC88AC8(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC88B3C(char *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_26CC88B9C(uint64_t *a1@<X8>)
{
  v2 = 6579265;
  if (*v1)
  {
    v2 = 0x65766F6D6552;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26CC88C80()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974617269707865;
  }
}

uint64_t sub_26CC88CE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC95050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC88D10(uint64_t a1)
{
  v2 = sub_26CC88FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC88D4C(uint64_t a1)
{
  v2 = sub_26CC88FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpNextDelta.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD48, &qword_26CD42AC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC88FE8();
  sub_26CD3B16C();
  v13 = 0;
  sub_26CD3A1EC();
  sub_26CC88084(&qword_2804BCD30, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_26CD3AF1C();
  if (!v2)
  {
    v10[1] = *(v3 + *(type metadata accessor for UpNextDelta(0) + 20));
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD58, &qword_26CD42AD0);
    sub_26CC894EC(&qword_2804BCD60, &qword_2804BCD68, &protocol conformance descriptor for UpNextDelta.ContinuationContentMetadata, MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    v11 = 2;
    sub_26CD3AF1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC88FE8()
{
  result = qword_2804BCD50;
  if (!qword_2804BCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCD50);
  }

  return result;
}

uint64_t UpNextDelta.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = &v25 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD70, &qword_26CD42AD8);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v25 - v7;
  Delta = type metadata accessor for UpNextDelta(0);
  v10 = Delta - 8;
  MEMORY[0x28223BE20](Delta);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26CD3A1EC();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v15 = *(v10 + 28);
  *&v12[v15] = 0;
  v16 = *(v10 + 32);
  v14(&v12[v16], 1, 1, v13);
  v17 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26CC88FE8();
  v29 = v8;
  v18 = v32;
  sub_26CD3B15C();
  if (!v18)
  {
    v32 = v15;
    v25 = v16;
    v20 = v27;
    v19 = v28;
    v37 = 0;
    sub_26CC88084(&qword_280BBB698, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v21 = v30;
    v22 = v31;
    v23 = v29;
    sub_26CD3AE2C();
    sub_26CC86CE0(v21, v12, &qword_2804BCA90, &qword_26CD3C200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD58, &qword_26CD42AD0);
    v36 = 1;
    sub_26CC894EC(&qword_2804BCD78, &qword_2804BCD80, &protocol conformance descriptor for UpNextDelta.ContinuationContentMetadata, MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    *&v12[v32] = v34;
    v35 = 2;
    sub_26CD3AE2C();
    (*(v20 + 8))(v23, v22);
    sub_26CC86CE0(v19, &v12[v25], &qword_2804BCA90, &qword_26CD3C200);
    sub_26CC89588(v12, v26, type metadata accessor for UpNextDelta);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_26CC8948C(v12, type metadata accessor for UpNextDelta);
}

uint64_t sub_26CC8948C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC894EC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCD58, &qword_26CD42AD0);
    sub_26CC88084(a2, type metadata accessor for UpNextDelta.ContinuationContentMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CC89588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ContentMetadata.backgroundVideo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_26CC1B4DC(v11, v10, &qword_2804BC000, &qword_26CD42AE0);
}

__n128 ContentMetadata.backgroundVideo.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_26CC1B544(v10, &qword_2804BC000, &qword_26CD42AE0);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t ContentMetadata.canonicalId.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void ContentMetadata.canonicalId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t ContentMetadata.commonSenseRecommendedAge.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t ContentMetadata.contentRating.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v9 = *(v1 + 192);
  v10 = v2;
  v11 = *(v1 + 224);
  v3 = v11;
  v4 = *(v1 + 176);
  v8[0] = *(v1 + 160);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_26CC1B4DC(v8, v7, &qword_2804BC048, &unk_26CD42A90);
}

__n128 ContentMetadata.contentRating.setter(uint64_t a1)
{
  v3 = *(v1 + 208);
  v7[2] = *(v1 + 192);
  v7[3] = v3;
  v8 = *(v1 + 224);
  v4 = *(v1 + 176);
  v7[0] = *(v1 + 160);
  v7[1] = v4;
  sub_26CC1B544(v7, &qword_2804BC048, &unk_26CD42A90);
  v5 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v5;
  *(v1 + 224) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = result;
  return result;
}

uint64_t ContentMetadata.descriptiveText.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

void ContentMetadata.descriptiveText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
}

uint64_t ContentMetadata.duration.setter(uint64_t result, char a2)
{
  *(v2 + 248) = result;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t ContentMetadata.episodeNumber.setter(uint64_t result, char a2)
{
  *(v2 + 264) = result;
  *(v2 + 272) = a2 & 1;
  return result;
}

void ContentMetadata.genre.getter(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_26CC4D074(v2, v3, v4, v5);
}

__n128 ContentMetadata.genre.setter(uint64_t a1)
{
  sub_26CC1D170(v1[35], v1[36], v1[37], v1[38]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 35) = *a1;
  *(v1 + 37) = v4;
  return result;
}

uint64_t ContentMetadata.playable.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 440);
  v3 = *(v1 + 408);
  v23 = *(v1 + 424);
  v24 = v2;
  v4 = *(v1 + 440);
  v5 = *(v1 + 472);
  v25 = *(v1 + 456);
  v6 = v25;
  v26 = v5;
  v7 = *(v1 + 376);
  v9 = *(v1 + 344);
  v19 = *(v1 + 360);
  v8 = v19;
  v20 = v7;
  v10 = *(v1 + 376);
  v11 = *(v1 + 408);
  v21 = *(v1 + 392);
  v12 = v21;
  v22 = v11;
  v13 = *(v1 + 344);
  v18[0] = *(v1 + 328);
  v14 = v18[0];
  v18[1] = v13;
  a1[6] = v23;
  a1[7] = v4;
  v15 = *(v1 + 472);
  a1[8] = v6;
  a1[9] = v15;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v3;
  *a1 = v14;
  a1[1] = v9;
  return sub_26CC1B4DC(v18, &v17, &qword_2804BCD08, &qword_26CD42AA0);
}

__n128 ContentMetadata.playable.setter(uint64_t a1)
{
  v3 = (v1 + 328);
  v4 = v3[7];
  v15[6] = v3[6];
  v15[7] = v4;
  v5 = v3[9];
  v15[8] = v3[8];
  v15[9] = v5;
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v7 = v3[5];
  v15[4] = v3[4];
  v15[5] = v7;
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  sub_26CC1B544(v15, &qword_2804BCD08, &qword_26CD42AA0);
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  return result;
}

uint64_t ContentMetadata.seasonId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 76));

  return v1;
}

void ContentMetadata.seasonId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 76));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.seasonImages.getter()
{
  type metadata accessor for ContentMetadata(0);
}

void ContentMetadata.seasonImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentMetadata(0) + 80);

  *(v1 + v3) = a1;
}

uint64_t ContentMetadata.seasonNumber.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContentMetadata(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContentMetadata.seasonTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 88));

  return v1;
}

void ContentMetadata.seasonTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 88));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.shortTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 92));

  return v1;
}

void ContentMetadata.shortTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 92));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.showId.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 96));

  return v1;
}

void ContentMetadata.showId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 96));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.showImages.getter()
{
  type metadata accessor for ContentMetadata(0);
}

void ContentMetadata.showImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentMetadata(0) + 100);

  *(v1 + v3) = a1;
}

uint64_t ContentMetadata.showTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 104));

  return v1;
}

void ContentMetadata.showTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 104));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 108));

  return v1;
}

void ContentMetadata.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 108));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t ContentMetadata.trailers.getter()
{
  type metadata accessor for ContentMetadata(0);
}

void ContentMetadata.trailers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentMetadata(0) + 112);

  *(v1 + v3) = a1;
}

uint64_t ContentMetadata.urlString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ContentMetadata(0) + 120));

  return v1;
}

void ContentMetadata.urlString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContentMetadata(0) + 120));

  *v5 = a1;
  v5[1] = a2;
}

unint64_t sub_26CC8A750(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      result = 0x6163696E6F6E6163;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x52746E65746E6F63;
      break;
    case 5:
      result = 0x54746E65746E6F63;
      break;
    case 6:
      result = 0x7470697263736564;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x4E65646F73697065;
      break;
    case 9:
      result = 0x65726E6567;
      break;
    case 10:
      result = 0x444F56457369;
      break;
    case 11:
      result = 0x4F656C7070417369;
      break;
    case 12:
      result = 0x736567616D69;
      break;
    case 13:
      result = 0x656C626179616C70;
      break;
    case 14:
      result = 0x44657361656C6572;
      break;
    case 15:
      result = 0x64496E6F73616573;
      break;
    case 16:
      result = 0x6D496E6F73616573;
      break;
    case 17:
      result = 0x754E6E6F73616573;
      break;
    case 18:
      result = 0x69546E6F73616573;
      break;
    case 19:
      result = 0x74695474726F6873;
      break;
    case 20:
      result = 0x6449776F6873;
      break;
    case 21:
      result = 0x67616D49776F6873;
      break;
    case 22:
      result = 0x6C746954776F6873;
      break;
    case 23:
      result = 0x656C746974;
      break;
    case 24:
      result = 0x7372656C69617274;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0x6E697274536C7275;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC8AA88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC95174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC8AABC(uint64_t a1)
{
  v2 = sub_26CC8B670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8AAF8(uint64_t a1)
{
  v2 = sub_26CC8B670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentMetadata.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD88, &unk_26CD42AE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8B670();
  sub_26CD3B16C();
  v8 = v2[3];
  v88[4] = v2[4];
  v9 = v2[4];
  v88[5] = v2[5];
  v10 = v2[5];
  v88[6] = v2[6];
  v11 = v2[1];
  v88[0] = *v2;
  v88[1] = v11;
  v12 = v2[3];
  v14 = *v2;
  v13 = v2[1];
  v88[2] = v2[2];
  v15 = v2[2];
  v88[3] = v12;
  v84 = v9;
  v85 = v10;
  v86 = v2[6];
  v80 = v14;
  v81 = v13;
  v89 = *(v2 + 14);
  v87 = *(v2 + 14);
  v82 = v15;
  v83 = v8;
  v79 = 0;
  sub_26CC1B4DC(v88, &v52, &qword_2804BC000, &qword_26CD42AE0);
  sub_26CC4CF78();
  v16 = v90;
  sub_26CD3AF1C();
  if (v16)
  {
    v56 = v84;
    v57 = v85;
    v58 = v86;
    *&v59 = v87;
    v52 = v80;
    v53 = v81;
    v54 = v82;
    v55 = v83;
    sub_26CC1B544(&v52, &qword_2804BC000, &qword_26CD42AE0);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v77[4] = v84;
    v77[5] = v85;
    v77[6] = v86;
    v78 = v87;
    v77[0] = v80;
    v77[1] = v81;
    v77[2] = v82;
    v77[3] = v83;
    sub_26CC1B544(v77, &qword_2804BC000, &qword_26CD42AE0);
    LOBYTE(v52) = 1;
    sub_26CD3AECC();
    *&v52 = *(v2 + 17);
    LOBYTE(v42) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    v76 = 3;
    sub_26CD3AEFC();
    v18 = v2[11];
    v19 = v2[13];
    v73 = v2[12];
    v74 = v19;
    v20 = v2[11];
    v72[0] = v2[10];
    v72[1] = v20;
    v21 = v2[13];
    v69 = v73;
    v70 = v21;
    v75 = *(v2 + 224);
    v71 = *(v2 + 224);
    v67 = v72[0];
    v68 = v18;
    v66 = 4;
    sub_26CC1B4DC(v72, &v52, &qword_2804BC048, &unk_26CD42A90);
    sub_26CC4D1B8();
    sub_26CD3AF1C();
    v64[2] = v69;
    v64[3] = v70;
    v65 = v71;
    v64[0] = v67;
    v64[1] = v68;
    sub_26CC1B544(v64, &qword_2804BC048, &unk_26CD42A90);
    LOBYTE(v52) = *(v2 + 225);
    LOBYTE(v42) = 5;
    sub_26CC4D20C();
    sub_26CD3AF1C();
    LOBYTE(v52) = 6;
    sub_26CD3AECC();
    LOBYTE(v52) = 7;
    sub_26CD3AEEC();
    LOBYTE(v52) = 8;
    sub_26CD3AEFC();
    v22 = *(v2 + 36);
    v23 = *(v2 + 37);
    v24 = *(v2 + 38);
    *&v52 = *(v2 + 35);
    *(&v52 + 1) = v22;
    *&v53 = v23;
    *(&v53 + 1) = v24;
    LOBYTE(v42) = 9;
    sub_26CC4D074(v52, v22, v23, v24);
    sub_26CC4D0BC();
    sub_26CD3AF1C();
    sub_26CC1D170(v52, *(&v52 + 1), v53, *(&v53 + 1));
    LOBYTE(v52) = 10;
    sub_26CD3AEDC();
    LOBYTE(v52) = 11;
    sub_26CD3AEDC();
    v63 = *(v2 + 40);
    v62 = 12;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    sub_26CC8C5F8(&qword_2804BCDA0, sub_26CC8B6C4, MEMORY[0x277D83948]);
    v90 = v25;
    sub_26CD3AF1C();
    v26 = *(v2 + 440);
    v27 = *(v2 + 408);
    v58 = *(v2 + 424);
    v59 = v26;
    v28 = *(v2 + 440);
    v29 = *(v2 + 472);
    v60 = *(v2 + 456);
    v61 = v29;
    v30 = *(v2 + 376);
    v31 = *(v2 + 344);
    v54 = *(v2 + 360);
    v55 = v30;
    v32 = *(v2 + 376);
    v33 = *(v2 + 408);
    v56 = *(v2 + 392);
    v57 = v33;
    v34 = *(v2 + 344);
    v52 = *(v2 + 328);
    v53 = v34;
    v48 = v58;
    v49 = v28;
    v35 = *(v2 + 472);
    v50 = v60;
    v51 = v35;
    v44 = v54;
    v45 = v32;
    v46 = v56;
    v47 = v27;
    v42 = v52;
    v43 = v31;
    v41 = 13;
    sub_26CC1B4DC(&v52, v40, &qword_2804BCD08, &qword_26CD42AA0);
    sub_26CC8B718();
    sub_26CD3AF1C();
    v40[6] = v48;
    v40[7] = v49;
    v40[8] = v50;
    v40[9] = v51;
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v40[5] = v47;
    v40[0] = v42;
    v40[1] = v43;
    sub_26CC1B544(v40, &qword_2804BCD08, &qword_26CD42AA0);
    v37 = type metadata accessor for ContentMetadata(0);
    LOBYTE(v39) = 14;
    sub_26CD3A1EC();
    sub_26CC88084(&qword_2804BCD30, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26CD3AF1C();
    LOBYTE(v39) = 15;
    sub_26CD3AECC();
    v39 = *(v2 + v37[20]);
    v38 = 16;
    sub_26CD3AF1C();
    LOBYTE(v39) = 17;
    sub_26CD3AEFC();
    LOBYTE(v39) = 18;
    sub_26CD3AECC();
    LOBYTE(v39) = 19;
    sub_26CD3AECC();
    LOBYTE(v39) = 20;
    sub_26CD3AECC();
    v39 = *(v2 + v37[25]);
    v38 = 21;
    sub_26CD3AF1C();
    LOBYTE(v39) = 22;
    sub_26CD3AECC();
    LOBYTE(v39) = 23;
    sub_26CD3AECC();
    v39 = *(v2 + v37[28]);
    v38 = 24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
    sub_26CC8B76C(&qword_2804BC0A8, sub_26CC4CF78, MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    LOBYTE(v39) = 25;
    sub_26CD3A07C();
    sub_26CC88084(&qword_2804BC1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_26CD3AF1C();
    LOBYTE(v39) = 26;
    sub_26CD3AECC();
    return (*(v5 + 8))(v7, 0);
  }
}

unint64_t sub_26CC8B670()
{
  result = qword_2804BCD90;
  if (!qword_2804BCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCD90);
  }

  return result;
}

unint64_t sub_26CC8B6C4()
{
  result = qword_2804BCDA8;
  if (!qword_2804BCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDA8);
  }

  return result;
}

unint64_t sub_26CC8B718()
{
  result = qword_2804BCDB0;
  if (!qword_2804BCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDB0);
  }

  return result;
}

uint64_t sub_26CC8B76C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BC050, &qword_26CD3EC00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ContentMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v3 - 8);
  v118 = &v105 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCDB8, &qword_26CD42B08);
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7);
  v187 = &v105 - v8;
  v9 = type metadata accessor for ContentMetadata(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 8) = 0;
  *(v12 + 9) = 1;
  *(v12 + 5) = 0u;
  *(v12 + 6) = 0u;
  *(v12 + 7) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 18) = 0;
  v12[152] = 1;
  *(v12 + 10) = xmmword_26CD3E690;
  *&v124 = v12 + 160;
  *(v12 + 11) = 0u;
  *(v12 + 12) = 0u;
  *(v12 + 13) = 0u;
  *(v12 + 112) = 1280;
  *(v12 + 29) = 0;
  *(v12 + 30) = 0;
  *(v12 + 31) = 0;
  v12[256] = 1;
  *(v12 + 33) = 0;
  v12[272] = 1;
  *&v123 = v12 + 256;
  *(v12 + 280) = xmmword_26CD3E690;
  *(v12 + 37) = 0;
  *(v12 + 38) = 0;
  *(v12 + 156) = 514;
  v13 = v12 + 328;
  *(v12 + 40) = 0;
  sub_26CC4CB80(v186);
  v14 = v186[7];
  *(v12 + 424) = v186[6];
  *(v12 + 440) = v14;
  v15 = v186[9];
  *(v12 + 456) = v186[8];
  *(v12 + 472) = v15;
  v16 = v186[3];
  *(v12 + 360) = v186[2];
  *(v12 + 376) = v16;
  v17 = v186[5];
  *(v12 + 392) = v186[4];
  *(v12 + 408) = v17;
  v18 = v186[1];
  *(v12 + 328) = v186[0];
  *(v12 + 344) = v18;
  v19 = v10[20];
  v20 = sub_26CD3A1EC();
  v21 = *(*(v20 - 8) + 56);
  v120 = v19;
  v121 = v20;
  v21(&v12[v19], 1, 1);
  v22 = &v12[v10[21]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v109 = v22;
  v110 = v10[22];
  *&v12[v110] = 0;
  v23 = &v12[v10[23]];
  *v23 = 0;
  v111 = v23;
  v23[8] = 1;
  v24 = &v12[v10[24]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v112 = v24;
  v25 = &v12[v10[25]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v113 = v25;
  v26 = &v12[v10[26]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v114 = v26;
  v115 = v10[27];
  *&v12[v115] = 0;
  v27 = &v12[v10[28]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v12[v10[29]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v116 = v10[30];
  *&v12[v116] = 0;
  v29 = v10[31];
  v30 = sub_26CD3A07C();
  v31 = *(*(v30 - 8) + 56);
  v117 = v29;
  v31(&v12[v29], 1, 1, v30);
  v32 = v10[32];
  v129 = v12;
  v33 = &v12[v32];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = a1;
  v35 = a1[3];
  v128 = v34;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_26CC8B670();
  v36 = v127;
  sub_26CD3B15C();
  if (v36)
  {
    v38 = v129;
    __swift_destroy_boxed_opaque_existential_1(v128);
    v104 = v38;
  }

  else
  {
    v127 = v13;
    v105 = v27;
    v106 = v28;
    v107 = v30;
    v108 = v33;
    v37 = v125;
    v177 = 0;
    sub_26CC4CC28();
    sub_26CD3AE2C();
    v171 = v182;
    v172 = v183;
    v173 = v184;
    v174 = v185;
    v167 = v178;
    v168 = v179;
    v169 = v180;
    v170 = v181;
    v40 = v129;
    v41 = *v129;
    v42 = *(v129 + 1);
    v43 = *(v129 + 2);
    v175[3] = *(v129 + 3);
    v175[2] = v43;
    v175[1] = v42;
    v175[0] = v41;
    v44 = *(v129 + 4);
    v45 = *(v129 + 5);
    v46 = *(v129 + 6);
    v176 = *(v129 + 14);
    v175[5] = v45;
    v175[6] = v46;
    v175[4] = v44;
    sub_26CC1B544(v175, &qword_2804BC000, &qword_26CD42AE0);
    v47 = v172;
    *(v40 + 64) = v171;
    *(v40 + 80) = v47;
    *(v40 + 96) = v173;
    *(v40 + 112) = v174;
    v48 = v168;
    *v40 = v167;
    *(v40 + 16) = v48;
    v49 = v170;
    *(v40 + 32) = v169;
    *(v40 + 48) = v49;
    LOBYTE(v144) = 1;
    *(v40 + 120) = sub_26CD3ADDC();
    *(v40 + 128) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    LOBYTE(v142[0]) = 2;
    sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    *(v40 + 136) = v144;
    LOBYTE(v144) = 3;
    *(v40 + 144) = sub_26CD3AE0C();
    *(v40 + 152) = v51 & 1;
    v161 = 4;
    sub_26CC4CE20();
    sub_26CD3AE2C();
    v156 = v164;
    v157 = v165;
    v158 = v166;
    v154 = v162;
    v155 = v163;
    v52 = v124;
    v53 = *(v124 + 48);
    v159[2] = *(v124 + 32);
    v159[3] = v53;
    v160 = *(v124 + 64);
    v54 = *(v124 + 16);
    v159[0] = *v124;
    v159[1] = v54;
    sub_26CC1B544(v159, &qword_2804BC048, &unk_26CD42A90);
    v55 = v157;
    *(v52 + 32) = v156;
    *(v52 + 48) = v55;
    *(v52 + 64) = v158;
    v56 = v155;
    *v52 = v154;
    *(v52 + 16) = v56;
    LOBYTE(v142[0]) = 5;
    sub_26CC4CEEC();
    sub_26CD3AE2C();
    *(v40 + 225) = v144;
    LOBYTE(v144) = 6;
    *(v40 + 232) = sub_26CD3ADDC();
    *(v40 + 240) = v57;
    LOBYTE(v144) = 7;
    *(v40 + 248) = sub_26CD3ADFC();
    v59 = v123;
    *v123 = v58 & 1;
    LOBYTE(v144) = 8;
    *(v40 + 264) = sub_26CD3AE0C();
    *(v59 + 16) = v60 & 1;
    LOBYTE(v142[0]) = 9;
    sub_26CC4CD24();
    sub_26CD3AE2C();
    v61 = v129 + 280;
    v62 = *(v129 + 35);
    v63 = *(v129 + 36);
    v64 = *(v129 + 37);
    v65 = *(v129 + 38);
    v123 = v145;
    v124 = v144;
    sub_26CC1D170(v62, v63, v64, v65);
    v66 = v123;
    *v61 = v124;
    v61[1] = v66;
    LOBYTE(v144) = 10;
    v129[312] = sub_26CD3ADEC();
    LOBYTE(v144) = 11;
    v129[313] = sub_26CD3ADEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    LOBYTE(v142[0]) = 12;
    sub_26CC8C5F8(&qword_2804BCDC0, sub_26CC8C670, MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    *(v129 + 40) = v144;
    v143 = 13;
    sub_26CC8C6C4();
    sub_26CD3AE2C();
    v138 = v150;
    v139 = v151;
    v140 = v152;
    v141 = v153;
    v134 = v146;
    v135 = v147;
    v136 = v148;
    v137 = v149;
    v132 = v144;
    v133 = v145;
    v67 = v127;
    v68 = *(v127 + 7);
    v142[6] = *(v127 + 6);
    v142[7] = v68;
    v69 = *(v127 + 9);
    v142[8] = *(v127 + 8);
    v142[9] = v69;
    v70 = *(v127 + 3);
    v142[2] = *(v127 + 2);
    v142[3] = v70;
    v71 = *(v127 + 5);
    v142[4] = *(v127 + 4);
    v142[5] = v71;
    v72 = *(v127 + 1);
    v142[0] = *v127;
    v142[1] = v72;
    sub_26CC1B544(v142, &qword_2804BCD08, &qword_26CD42AA0);
    v73 = v139;
    *(v67 + 6) = v138;
    *(v67 + 7) = v73;
    v74 = v141;
    *(v67 + 8) = v140;
    *(v67 + 9) = v74;
    v75 = v135;
    *(v67 + 2) = v134;
    *(v67 + 3) = v75;
    v76 = v137;
    *(v67 + 4) = v136;
    *(v67 + 5) = v76;
    v77 = v133;
    *v67 = v132;
    *(v67 + 1) = v77;
    LOBYTE(v131) = 14;
    sub_26CC88084(&qword_280BBB698, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_26CD3AE2C();
    sub_26CC86CE0(v122, &v129[v120], &qword_2804BCA90, &qword_26CD3C200);
    LOBYTE(v131) = 15;
    v78 = sub_26CD3ADDC();
    v79 = v109;
    *v109 = v78;
    v79[1] = v80;
    v130 = 16;
    sub_26CD3AE2C();
    *&v129[v110] = v131;
    LOBYTE(v131) = 17;
    v81 = sub_26CD3AE0C();
    v82 = v111;
    *v111 = v81;
    *(v82 + 8) = v83 & 1;
    LOBYTE(v131) = 18;
    v84 = sub_26CD3ADDC();
    v85 = v112;
    *v112 = v84;
    v85[1] = v86;
    LOBYTE(v131) = 19;
    v87 = sub_26CD3ADDC();
    v88 = v113;
    *v113 = v87;
    v88[1] = v89;
    LOBYTE(v131) = 20;
    v90 = sub_26CD3ADDC();
    v91 = v114;
    *v114 = v90;
    v91[1] = v92;
    v130 = 21;
    sub_26CD3AE2C();
    *&v129[v115] = v131;
    LOBYTE(v131) = 22;
    v93 = sub_26CD3ADDC();
    v94 = v105;
    *v105 = v93;
    v94[1] = v95;
    LOBYTE(v131) = 23;
    v96 = sub_26CD3ADDC();
    v97 = v106;
    *v106 = v96;
    v97[1] = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC050, &qword_26CD3EC00);
    v130 = 24;
    sub_26CC8B76C(&qword_2804BC058, sub_26CC4CC28, MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    *&v129[v116] = v131;
    LOBYTE(v131) = 25;
    sub_26CC88084(&qword_2804BC220, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_26CD3AE2C();
    sub_26CC86CE0(v118, &v129[v117], &qword_2804BCA30, &qword_26CD3DA70);
    LOBYTE(v131) = 26;
    v99 = sub_26CD3ADDC();
    v101 = v100;
    (*(v37 + 8))(v187, v126);
    v102 = v108;
    *v108 = v99;
    v102[1] = v101;
    v103 = v129;
    sub_26CC89588(v129, v119, type metadata accessor for ContentMetadata);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v104 = v103;
  }

  return sub_26CC8948C(v104, type metadata accessor for ContentMetadata);
}

uint64_t sub_26CC8C5F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCD98, &unk_26CD42AF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC8C670()
{
  result = qword_2804BCDC8;
  if (!qword_2804BCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDC8);
  }

  return result;
}

unint64_t sub_26CC8C6C4()
{
  result = qword_2804BCDD0;
  if (!qword_2804BCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDD0);
  }

  return result;
}

uint64_t Playable.channelId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Playable.channelId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Playable.contentId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void Playable.contentId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Playable.duration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Playable.externalId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void Playable.externalId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t Playable.externalServiceId.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void Playable.externalServiceId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t Playable.playableId.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void Playable.playableId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t Playable.videoQuality.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

void Playable.videoQuality.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t Playable.videoColorRange.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void Playable.videoColorRange.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
}

unint64_t sub_26CC8CC88(char a1)
{
  result = 0x7954676E69726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6C616E7265747865;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x73656E755469;
      break;
    case 10:
      result = 0x656C626179616C70;
      break;
    case 11:
      result = 0x656C746974627573;
      break;
    case 12:
      result = 0x6175516F65646976;
      break;
    case 13:
      result = 0x6C6F436F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC8CE28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC959F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC8CE5C(uint64_t a1)
{
  v2 = sub_26CC8D344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8CE98(uint64_t a1)
{
  v2 = sub_26CC8D344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Playable.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCDD8, &qword_26CD42B10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v33 = *(v1 + 2);
  v34 = v8;
  v9 = *(v1 + 3);
  v31 = *(v1 + 4);
  v32 = v9;
  v10 = *(v1 + 5);
  v29 = *(v1 + 6);
  v30 = v10;
  v37 = v1[56];
  v28 = v1[57];
  v11 = *(v1 + 9);
  v26 = *(v1 + 8);
  v27 = v11;
  v12 = *(v1 + 11);
  v24 = *(v1 + 10);
  v25 = v12;
  LODWORD(v10) = v1[96];
  v22 = v1[97];
  v23 = v10;
  v13 = *(v1 + 14);
  v20 = *(v1 + 13);
  v21 = v13;
  v19 = v1[120];
  v14 = *(v1 + 17);
  v18[2] = *(v1 + 16);
  v18[3] = v14;
  v15 = *(v1 + 19);
  v18[1] = *(v1 + 18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8D344();
  sub_26CD3B16C();
  LOBYTE(v36) = v7;
  v38 = 0;
  sub_26CC8D398();
  v16 = v35;
  sub_26CD3AF1C();
  if (!v16)
  {
    v35 = v15;
    v36 = v34;
    v38 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_26CD3AF1C();
    LOBYTE(v36) = 2;
    sub_26CD3AECC();
    LOBYTE(v36) = 3;
    sub_26CD3AECC();
    LOBYTE(v36) = 4;
    sub_26CD3AEEC();
    LOBYTE(v36) = 5;
    sub_26CD3AEDC();
    LOBYTE(v36) = 6;
    sub_26CD3AECC();
    LOBYTE(v36) = 7;
    sub_26CD3AECC();
    LOBYTE(v36) = 8;
    sub_26CD3AEDC();
    LOBYTE(v36) = 9;
    sub_26CD3AEDC();
    LOBYTE(v36) = 10;
    sub_26CD3AECC();
    LOBYTE(v36) = 11;
    sub_26CD3AEDC();
    LOBYTE(v36) = 12;
    sub_26CD3AECC();
    LOBYTE(v36) = 13;
    sub_26CD3AECC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC8D344()
{
  result = qword_2804BCDE0;
  if (!qword_2804BCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDE0);
  }

  return result;
}

unint64_t sub_26CC8D398()
{
  result = qword_2804BCDE8;
  if (!qword_2804BCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDE8);
  }

  return result;
}

uint64_t Playable.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCDF0, &qword_26CD42B18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v93 = 1;
  v9 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_26CC8D344();
  sub_26CD3B15C();
  if (v2)
  {
    v95 = v2;
    v48 = 0uLL;
    v50 = 0;
    v51 = 0;
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = 0;
    v49 = 2;
    v52 = 2;
    __swift_destroy_boxed_opaque_existential_1(v44);
    LOBYTE(v64) = 3;
    *(&v64 + 1) = v94[0];
    HIDWORD(v64) = *(v94 + 3);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = v47;
    v71 = v93;
    v72 = 2;
    v73 = v91;
    v74 = v92;
    v75 = v46;
    v76 = v45;
    v77 = 2;
    v78 = v52;
    v79 = v89;
    v80 = v90;
    v81 = v50;
    v82 = v51;
    v83 = v49;
    *v84 = *v88;
    *&v84[3] = *&v88[3];
    v85 = v48;
    v86 = 0;
    v87 = 0;
  }

  else
  {
    LOBYTE(v53) = 0;
    sub_26CC8DD3C();
    sub_26CD3AE2C();
    v43 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    LOBYTE(v53) = 1;
    sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26CD3AE2C();
    v42 = v64;
    LOBYTE(v64) = 2;
    *&v41 = sub_26CD3ADDC();
    *(&v41 + 1) = v11;
    LOBYTE(v64) = 3;
    v12 = sub_26CD3ADDC();
    v39 = v13;
    v40 = v12;
    LOBYTE(v64) = 4;
    v47 = sub_26CD3ADFC();
    v93 = v14 & 1;
    LOBYTE(v64) = 5;
    v38 = sub_26CD3ADEC();
    LOBYTE(v64) = 6;
    *&v46 = sub_26CD3ADDC();
    *(&v46 + 1) = v15;
    LOBYTE(v64) = 7;
    *&v45 = sub_26CD3ADDC();
    *(&v45 + 1) = v16;
    LOBYTE(v64) = 8;
    v17 = sub_26CD3ADEC();
    v95 = 0;
    v37 = v17;
    LOBYTE(v64) = 9;
    v52 = sub_26CD3ADEC();
    v95 = 0;
    LOBYTE(v64) = 10;
    v50 = sub_26CD3ADDC();
    v51 = v18;
    v95 = 0;
    LOBYTE(v64) = 11;
    v49 = sub_26CD3ADEC();
    v95 = 0;
    LOBYTE(v64) = 12;
    *&v48 = sub_26CD3ADDC();
    *(&v48 + 1) = v19;
    v95 = 0;
    v63 = 13;
    v20 = sub_26CD3ADDC();
    v95 = 0;
    v21 = v20;
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    v24 = v43;
    LOBYTE(v53) = v43;
    v25 = *(&v41 + 1);
    v26 = v41;
    *(&v53 + 1) = v42;
    v54 = v41;
    v27 = v39;
    *&v55 = v40;
    *(&v55 + 1) = v39;
    *&v56 = v47;
    HIDWORD(v36) = v93;
    BYTE8(v56) = v93;
    v28 = v38;
    BYTE9(v56) = v38;
    v57 = v46;
    v58 = v45;
    LOBYTE(v59) = v37;
    BYTE1(v59) = v52;
    *(&v59 + 1) = v50;
    *&v60 = v51;
    BYTE8(v60) = v49;
    v61 = v48;
    *&v62 = v21;
    *(&v62 + 1) = v23;
    v29 = v55;
    v30 = v56;
    v31 = v45;
    a2[4] = v46;
    a2[5] = v31;
    a2[2] = v29;
    a2[3] = v30;
    v32 = v54;
    *a2 = v53;
    a2[1] = v32;
    v33 = v59;
    v34 = v60;
    v35 = v62;
    a2[8] = v61;
    a2[9] = v35;
    a2[6] = v33;
    a2[7] = v34;
    sub_26CC8DD90(&v53, &v64);
    __swift_destroy_boxed_opaque_existential_1(v44);
    LOBYTE(v64) = v24;
    v65 = v42;
    v66 = v26;
    v67 = v25;
    v68 = v40;
    v69 = v27;
    v70 = v47;
    v71 = BYTE4(v36);
    v72 = v28;
    v73 = v91;
    v74 = v92;
    v75 = v46;
    v76 = v45;
    v77 = v37;
    v78 = v52;
    v80 = v90;
    v79 = v89;
    v81 = v50;
    v82 = v51;
    v83 = v49;
    *&v84[3] = *&v88[3];
    *v84 = *v88;
    v85 = v48;
    v86 = v21;
    v87 = v23;
  }

  return sub_26CC8DD0C(&v64);
}

unint64_t sub_26CC8DD3C()
{
  result = qword_2804BCDF8;
  if (!qword_2804BCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDF8);
  }

  return result;
}

uint64_t AiringType.rawValue.getter()
{
  v1 = 0x646E616D65446E4FLL;
  if (*v0 != 1)
  {
    v1 = 0x79616C706552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702259020;
  }
}

uint64_t sub_26CC8DE48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x646E616D65446E4FLL;
  if (v2 != 1)
  {
    v4 = 0x79616C706552;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1702259020;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x646E616D65446E4FLL;
  if (*a2 != 1)
  {
    v8 = 0x79616C706552;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702259020;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CC8DF3C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CC8DFD4(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC8E058(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC8E0F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x646E616D65446E4FLL;
  if (v2 != 1)
  {
    v5 = 0x79616C706552;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702259020;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void Video.assets.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_26CC8E218(v2, v3, v4, v5, v6, v7);
}

void sub_26CC8E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

__n128 Video.assets.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_26CC8E2B4(*v1, v1[1], v1[2], v1[3], v1[4], v1[5]);
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v6;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

double sub_26CC8E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t Video.duration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Video.externalId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void Video.externalId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}