uint64_t sub_254213C94(uint64_t a1)
{
  v2 = type metadata accessor for CKQueryAsyncSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254213CF0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25412F724;

  return sub_25420FBDC(a1, a2, v7, v6);
}

uint64_t objectdestroy_14Tm()
{
  v1 = (type metadata accessor for CKQueryAsyncSequence(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v4 = *(v14 - 8);
  v5 = *(v4 + 80);
  v6 = (v12 + v5 + 8) & ~v5;
  v15 = v2 | v5;
  v13 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  sub_254148B1C(*v7, *(v7 + 8), *(v7 + 16));

  v8 = v1[9];
  v9 = sub_25424D948();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v10(v7 + v1[10], v9);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v6, v14);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v15 | 7);
}

void sub_254213FD8(void *a1, void *a2, char a3)
{
  v7 = *(type metadata accessor for CKQueryAsyncSequence(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v9);
  v14 = *(v3 + v12);
  v15 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_254210630(a1, a2, a3 & 1, v3 + v8, v13, (v3 + v11), v14, v15);
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for CKQueryAsyncSequence(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v17 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v4 = *(v20 - 8);
  v5 = *(v4 + 80);
  v18 = (v17 + v5 + 8) & ~v5;
  v14 = (*(v4 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 80);
  v8 = (v14 + v7 + 8) & ~v7;
  v16 = *(v6 + 64);
  v15 = v2 | v5 | v7;

  v9 = v0 + v3;
  sub_254148B1C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v10 = v1[9];
  v11 = sub_25424D948();
  v12 = *(*(v11 - 8) + 8);
  v12(v9 + v10, v11);
  v12(v9 + v1[10], v11);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v18, v20);

  (*(v6 + 8))(v0 + v8, v19);

  return MEMORY[0x2821FE8E8](v0, v8 + v16, v15 | 7);
}

void sub_2542143C4(void (*a1)(uint64_t, uint64_t), char a2)
{
  v5 = *(type metadata accessor for CKQueryAsyncSequence(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBEC0, &unk_2542617F0) - 8);
  sub_254211DA4(a1, a2 & 1, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), (v2 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80))));
}

void sub_254214570(uint64_t a1)
{
  sub_254148D7C(319, &qword_27F5BBF00, 0x277CBC5F8);
  if (v1 <= 0x3F)
  {
    sub_254148D7C(319, &unk_27F5B9010, 0x277CBC578);
    if (v2 <= 0x3F)
    {
      sub_25424D948();
      if (v3 <= 0x3F)
      {
        sub_2541E3EA0(319, &qword_27F5BBF10, &qword_27F5BBF18, "ؕ");
        if (v4 <= 0x3F)
        {
          sub_25414810C();
          if (v5 <= 0x3F)
          {
            sub_25414815C(319);
            if (v6 <= 0x3F)
            {
              sub_2541E3EA0(319, &qword_27F5BBF20, &qword_27F5BBF28, &qword_254261858);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2542146D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25424D818();
  v9 = sub_25424D8E8();
  v11[4] = sub_2542149D8;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2541ED26C;
  v11[3] = &block_descriptor_19;
  v10 = _Block_copy(v11);

  [a1 createFakeEventsWithDate:v8 homeIdentifier:v9 count:a5 reply:v10];
  _Block_release(v10);
}

uint64_t sub_2542147E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254252CB8;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_254214A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventsAsyncSequenceLogEvent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EventsAsyncSequenceLogEvent(uint64_t a1)
{
  result = qword_27F5BBF30;
  if (!qword_27F5BBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254214B50(uint64_t a1)
{
  result = sub_25424D948();
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

uint64_t getEnumTagSinglePayload for EventsAsyncSequenceLogEvent.EventsAsyncSequenceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventsAsyncSequenceLogEvent.EventsAsyncSequenceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254214D50()
{
  result = qword_27F5BBF40;
  if (!qword_27F5BBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBF40);
  }

  return result;
}

uint64_t AsyncFileOutputStream.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncFileOutputStream.init(url:)(a1);
  return v2;
}

uint64_t AsyncFileOutputStream.writeAsync(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254214E08, 0, 0);
}

uint64_t sub_254214E08()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25414C1D4;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BAD10, v4, v6);
}

uint64_t sub_254214F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_254215000;

  return MEMORY[0x282200460]();
}

uint64_t sub_254215000()
{

  return MEMORY[0x2822009F8](sub_25419D434, 0, 0);
}

uint64_t AsyncFileOutputStream.init(url:)(uint64_t a1)
{
  v46 = a1;
  v39 = *v1;
  v44 = sub_25424D418();
  v2 = *(v44 - 8);
  v38 = *(v2 + 64);
  MEMORY[0x28223BE20](v44);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF58, &qword_254261940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v11 = &v33 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948);
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v36);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = &v33 - v15;
  type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D85778], v6);
  v35 = v11;
  sub_25424E138();
  (*(v7 + 8))(v9, v6);
  v16 = *(v2 + 16);
  v17 = v45;
  v18 = v46;
  v19 = v44;
  v16(v45 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url, v46, v44);
  (*(v41 + 16))(v17 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe, v11, v43);
  v20 = sub_25424E128();
  (*(*(v20 - 8) + 56))(v42, 1, 1, v20);
  v21 = v37;
  v16(v37, v18, v19);
  v22 = v34;
  v23 = v36;
  (*(v12 + 16))(v34, v40, v36);
  v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v25 = (v38 + *(v12 + 80) + v24) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v28 = v2;
  v29 = v27 + v24;
  v30 = v44;
  (*(v2 + 32))(v29, v21, v44);
  (*(v12 + 32))(v27 + v25, v22, v23);
  *(v27 + v26) = v39;
  v31 = sub_25419CC1C(0, 0, v42, &unk_254261958, v27);
  (*(v28 + 8))(v46, v30);
  (*(v41 + 8))(v35, v43);
  (*(v12 + 8))(v40, v23);
  result = v45;
  *(v45 + OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_task) = v31;
  return result;
}

uint64_t sub_254215650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_25412F724;

  return sub_2542156F8(a4, a5);
}

uint64_t sub_2542156F8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = sub_25424D418();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = sub_25424DAA8();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFB8, &qword_254261AE0);
  v3[45] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFC0, &qword_254261AE8);
  v3[46] = v8;
  v3[47] = *(v8 - 8);
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254215AA4, 0, 0);
}

uint64_t sub_254215AA4()
{
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948);
  sub_25424E178();
  v0[49] = 0;
  v0[50] = 0;
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_254215B74;
  v2 = v0[45];
  v3 = v0[46];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_254215B74()
{

  return MEMORY[0x2822009F8](sub_254215C70, 0, 0);
}

uint64_t sub_254215C70()
{
  v242 = v0;
  v1 = *(v0 + 360);
  if ((*(*(v0 + 336) + 48))(v1, 1, *(v0 + 328)) != 1)
  {
    v5 = *(v0 + 400);
    sub_254219494(v1, *(v0 + 352));
    if (!v5)
    {
      v26 = *(v0 + 248);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 72);
      static LoggedObject.logger.getter(*(v0 + 88), &protocol witness table for AsyncFileOutputStream, *(v0 + 320));
      v6 = *(v28 + 16);
      v6(v26, v29, v27);
      v30 = sub_25424DA88();
      v240 = sub_25424E418();
      v31 = os_log_type_enabled(v30, v240);
      v32 = *(v0 + 320);
      v34 = *(v0 + 256);
      v33 = *(v0 + 264);
      v35 = *(v0 + 248);
      v37 = *(v0 + 176);
      v36 = *(v0 + 184);
      if (v31)
      {
        v233 = *(v0 + 256);
        v38 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v241[0] = v222;
        *v38 = 136315138;
        sub_25421943C();
        v39 = v6;
        v40 = sub_25424EA58();
        v226 = v32;
        v42 = v41;
        i = *(v36 + 8);
        i(v35, v37);
        v43 = v40;
        v6 = v39;
        v44 = sub_2542203C4(v43, v42, v241);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_254124000, v30, v240, "Creating '%s'", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v222);
        MEMORY[0x259C07330](v222, -1, -1);
        MEMORY[0x259C07330](v38, -1, -1);

        v45 = *(v33 + 8);
        v46 = v226;
        v47 = v233;
      }

      else
      {

        i = *(v36 + 8);
        i(v35, v37);
        v45 = *(v33 + 8);
        v46 = v32;
        v47 = v34;
      }

      v239 = v45;
      v45(v46, v47);
      v55 = [objc_opt_self() defaultManager];
      sub_25424D408();
      v56 = sub_25424DCA8();

      v57 = [v55 createFileAtPath:v56 contents:0 attributes:0];

      v58 = *(v0 + 176);
      v59 = *(v0 + 88);
      v60 = *(v0 + 72);
      if (v57)
      {
        v61 = *(v0 + 232);
        static LoggedObject.logger.getter(v59, &protocol witness table for AsyncFileOutputStream, *(v0 + 304));
        v6(v61, v60, v58);
        v25 = sub_25424DA88();
        v62 = sub_25424E418();
        v63 = os_log_type_enabled(v25, v62);
        v13 = *(v0 + 304);
        v12 = *(v0 + 256);
        v16 = *(v0 + 232);
        v11 = *(v0 + 176);
        if (v63)
        {
          v64 = swift_slowAlloc();
          v228 = v12;
          v65 = swift_slowAlloc();
          v241[0] = v65;
          *v64 = 136315138;
          sub_25421943C();
          v223 = v13;
          v66 = v6;
          v67 = sub_25424EA58();
          v69 = v68;
          i(v16, v11);
          v70 = v67;
          v6 = v66;
          v71 = sub_2542203C4(v70, v69, v241);

          *(v64 + 4) = v71;
          _os_log_impl(&dword_254124000, v25, v62, "Opening '%s'", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x259C07330](v65, -1, -1);
          MEMORY[0x259C07330](v64, -1, -1);

          v239(v223, v228);
          goto LABEL_26;
        }

        goto LABEL_25;
      }

      v72 = *(v0 + 240);
      static LoggedObject.logger.getter(v59, &protocol witness table for AsyncFileOutputStream, *(v0 + 312));
      v6(v72, v60, v58);
      v73 = sub_25424DA88();
      v74 = sub_25424E428();
      v75 = os_log_type_enabled(v73, v74);
      v76 = *(v0 + 312);
      v77 = *(v0 + 256);
      v78 = *(v0 + 240);
      v79 = *(v0 + 176);
      if (v75)
      {
        v80 = swift_slowAlloc();
        v229 = v77;
        v81 = swift_slowAlloc();
        v241[0] = v81;
        *v80 = 136446210;
        sub_25421943C();
        v82 = sub_25424EA58();
        v84 = v83;
        i(v78, v79);
        v85 = sub_2542203C4(v82, v84, v241);

        *(v80 + 4) = v85;
        _os_log_impl(&dword_254124000, v73, v74, "Failed to create '%{public}s'", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x259C07330](v81, -1, -1);
        MEMORY[0x259C07330](v80, -1, -1);

        v239(v76, v229);
      }

      else
      {

        i(v78, v79);
        v239(v76, v77);
      }

      v114 = *(v0 + 128);
      v115 = *(v0 + 136);
      v116 = *(v0 + 120);
      sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v116);
      v117 = (*(v115 + 48))(v116, 1, v114);
      v119 = *(v0 + 376);
      v118 = *(v0 + 384);
      v120 = *(v0 + 368);
      v121 = *(v0 + 352);
      if (v117 == 1)
      {
        v122 = *(v0 + 120);
        sub_2542182D4(*(v0 + 352));
        (*(v119 + 8))(v118, v120);
LABEL_57:
        sub_254132E5C(v122, &qword_27F5B8840, &qword_254252D18);
        v2 = 0;
      }

      else
      {
        v123 = *(v0 + 168);
        v124 = *(v0 + 128);
        v125 = *(v0 + 136);
        (*(v125 + 32))(v123, *(v0 + 120), v124);
        sub_254219568();
        v126 = swift_allocError();
        *v127 = 1;
        *(v0 + 40) = v126;
        sub_25424E078();
        (*(v125 + 8))(v123, v124);
        sub_2542182D4(v121);
        (*(v119 + 8))(v118, v120);
        v2 = 0;
      }

      goto LABEL_3;
    }

    v6 = *(v0 + 400);
    for (i = *(v0 + 392); ; i = 0)
    {
      v8 = *(v0 + 344);
      v7 = *(v0 + 352);
      v9 = *(v0 + 208);
      v11 = *(v0 + 176);
      v10 = *(v0 + 184);
      v12 = *(v0 + 72);
      static LoggedObject.logger.getter(*(v0 + 88), &protocol witness table for AsyncFileOutputStream, *(v0 + 288));
      sub_2542193D8(v7, v8);
      v232 = *(v10 + 16);
      v232(v9, v12, v11);
      v13 = sub_25424DA88();
      v14 = sub_25424E418();
      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 344);
      v239 = v6;
      if (!v15)
      {
        v48 = *(v0 + 288);
        v49 = *(v0 + 256);
        v50 = *(v0 + 264);
        v51 = *(v0 + 208);
        v52 = *(v0 + 176);
        v53 = *(v0 + 184);
        sub_2542182D4(v16);

        v227 = *(v53 + 8);
        v227(v51, v52);
        v54 = *(v50 + 8);
        v18 = v54(v48, v49);
        goto LABEL_37;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v221 = v18;
      *(v0 + 64) = v18;
      *v17 = 134218242;
      v22 = *v16;
      v23 = v16[1];
      v24 = v23 >> 62;
      if ((v23 >> 62) <= 1)
      {
        break;
      }

      if (v24 != 2)
      {
        v25 = 0;
LABEL_36:
        v130 = *(v0 + 264);
        v218 = *(v0 + 256);
        v219 = *(v0 + 288);
        v131 = *(v0 + 208);
        v133 = *(v0 + 176);
        v132 = *(v0 + 184);
        sub_2542182D4(*(v0 + 344));
        *(v17 + 4) = v25;
        *(v17 + 12) = 2080;
        sub_25421943C();
        v134 = sub_25424EA58();
        v136 = v135;
        v227 = *(v132 + 8);
        v227(v131, v133);
        v137 = sub_2542203C4(v134, v136, (v0 + 64));

        *(v17 + 14) = v137;
        _os_log_impl(&dword_254124000, v13, v14, "Writing %ld byte(s) to '%s'", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v221);
        MEMORY[0x259C07330](v221, -1, -1);
        MEMORY[0x259C07330](v17, -1, -1);

        v138 = *(v130 + 8);
        v18 = v138(v219, v218);
        v54 = v138;
        v6 = v239;
LABEL_37:
        if (v6)
        {
          v139 = *(v0 + 352);
          v140 = *v139;
          v141 = v139[1];
          *(v0 + 16) = *v139;
          *(v0 + 24) = v141;
          sub_254140660(v140, v141);
          sub_254219608();
          v142 = i;
          sub_25424E3F8();
          if (i)
          {
            v143 = *(v0 + 272);
            v144 = *(v0 + 192);
            v145 = *(v0 + 176);
            v146 = *(v0 + 88);
            v147 = *(v0 + 72);
            sub_254134D04(*(v0 + 16), *(v0 + 24));
            static LoggedObject.logger.getter(v146, &protocol witness table for AsyncFileOutputStream, v143);
            v232(v144, v147, v145);
            v148 = i;
            v149 = sub_25424DA88();
            v150 = sub_25424E428();

            v151 = os_log_type_enabled(v149, v150);
            v236 = *(v0 + 256);
            v238 = *(v0 + 272);
            v152 = *(v0 + 192);
            v153 = *(v0 + 176);
            if (v151)
            {
              v225 = v54;
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v220 = swift_slowAlloc();
              v241[0] = v220;
              *v154 = 136446466;
              sub_25421943C();
              v156 = sub_25424EA58();
              v158 = v157;
              v227(v152, v153);
              v159 = sub_2542203C4(v156, v158, v241);

              *(v154 + 4) = v159;
              *(v154 + 12) = 2114;
              v160 = v142;
              v161 = _swift_stdlib_bridgeErrorToNSError();
              *(v154 + 14) = v161;
              *v155 = v161;
              _os_log_impl(&dword_254124000, v149, v150, "Failed to write to '%{public}s': %{public}@", v154, 0x16u);
              sub_254132E5C(v155, &unk_27F5BBED0, &qword_254253F80);
              MEMORY[0x259C07330](v155, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v220);
              MEMORY[0x259C07330](v220, -1, -1);
              MEMORY[0x259C07330](v154, -1, -1);

              v225(v238, v236);
            }

            else
            {

              v227(v152, v153);
              v54(v238, v236);
            }

            v170 = *(v0 + 128);
            v171 = *(v0 + 136);
            v172 = *(v0 + 96);
            sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v172);
            v173 = (*(v171 + 48))(v172, 1, v170);
            v175 = *(v0 + 376);
            v174 = *(v0 + 384);
            v176 = *(v0 + 368);
            v177 = *(v0 + 352);
            if (v173 == 1)
            {
              v178 = *(v0 + 96);

              sub_2542182D4(v177);
              (*(v175 + 8))(v174, v176);
              sub_254132E5C(v178, &qword_27F5B8840, &qword_254252D18);
            }

            else
            {
              v180 = *(v0 + 136);
              v179 = *(v0 + 144);
              v181 = *(v0 + 128);
              (*(v180 + 32))(v179, *(v0 + 96), v181);
              sub_254219568();
              v182 = swift_allocError();
              *v183 = 3;
              *(v0 + 56) = v182;
              sub_25424E078();

              (*(v180 + 8))(v179, v181);
              sub_2542182D4(v177);
              (*(v175 + 8))(v174, v176);
            }

            v2 = v239;
            goto LABEL_3;
          }

          v162 = *(v0 + 352);
          v163 = *(v0 + 328);
          v164 = *(v0 + 128);
          v165 = *(v0 + 136);
          v166 = *(v0 + 112);
          sub_254134D04(*(v0 + 16), *(v0 + 24));
          sub_2542194F8(v162 + *(v163 + 20), v166);
          v167 = (*(v165 + 48))(v166, 1, v164);
          v168 = *(v0 + 352);
          if (v167 == 1)
          {
            v169 = *(v0 + 112);
            sub_2542182D4(*(v0 + 352));
            sub_254132E5C(v169, &qword_27F5B8840, &qword_254252D18);
          }

          else
          {
            v184 = *(v0 + 160);
            v185 = *(v0 + 128);
            v186 = *(v0 + 136);
            (*(v186 + 32))(v184, *(v0 + 112), v185);
            sub_25424E088();
            (*(v186 + 8))(v184, v185);
            sub_2542182D4(v168);
          }

          *(v0 + 392) = 0;
          *(v0 + 400) = v6;
          v187 = swift_task_alloc();
          *(v0 + 408) = v187;
          *v187 = v0;
          v187[1] = sub_254215B74;
          v18 = *(v0 + 360);
          v21 = *(v0 + 368);
          v19 = 0;
          v20 = 0;

          return MEMORY[0x2822003E8](v18, v19, v20, v21);
        }

LABEL_62:
        __break(1u);
        return MEMORY[0x2822003E8](v18, v19, v20, v21);
      }

      v88 = v22 + 16;
      v86 = *(v22 + 16);
      v87 = *(v88 + 8);
      v25 = v87 - v86;
      if (!__OFSUB__(v87, v86))
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_25:

      i(v16, v11);
      v239(v13, v12);
LABEL_26:
      v89 = *(v0 + 392);
      v90 = *(v0 + 224);
      v91 = *(v0 + 176);
      v92 = *(v0 + 72);
      sub_2542195BC();
      v6(v90, v92, v91);
      v93 = v6;
      v6 = sub_254218CB4(v90);
      v94 = *(v0 + 176);
      v95 = *(v0 + 88);
      v96 = *(v0 + 72);
      if (v89)
      {
        v97 = *(v0 + 200);
        static LoggedObject.logger.getter(v95, &protocol witness table for AsyncFileOutputStream, *(v0 + 280));
        v93(v97, v96, v94);
        v98 = v89;
        v99 = sub_25424DA88();
        v100 = sub_25424E428();

        v101 = os_log_type_enabled(v99, v100);
        v102 = *(v0 + 280);
        v103 = *(v0 + 256);
        v104 = *(v0 + 200);
        v105 = *(v0 + 176);
        if (v101)
        {
          v106 = swift_slowAlloc();
          v234 = v103;
          v107 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          v241[0] = v224;
          *v106 = 136446466;
          sub_25421943C();
          v108 = sub_25424EA58();
          v230 = v102;
          v110 = v109;
          i(v104, v105);
          v111 = sub_2542203C4(v108, v110, v241);

          *(v106 + 4) = v111;
          *(v106 + 12) = 2114;
          v112 = v89;
          v113 = _swift_stdlib_bridgeErrorToNSError();
          *(v106 + 14) = v113;
          *v107 = v113;
          _os_log_impl(&dword_254124000, v99, v100, "Failed to open file handle for '%{public}s': %{public}@", v106, 0x16u);
          sub_254132E5C(v107, &unk_27F5BBED0, &qword_254253F80);
          MEMORY[0x259C07330](v107, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v224);
          MEMORY[0x259C07330](v224, -1, -1);
          MEMORY[0x259C07330](v106, -1, -1);

          v239(v230, v234);
        }

        else
        {

          i(v104, v105);
          v239(v102, v103);
        }

        v205 = *(v0 + 128);
        v206 = *(v0 + 136);
        v207 = *(v0 + 104);
        sub_2542194F8(*(v0 + 352) + *(*(v0 + 328) + 20), v207);
        v208 = (*(v206 + 48))(v207, 1, v205);
        v210 = *(v0 + 376);
        v209 = *(v0 + 384);
        v211 = *(v0 + 368);
        v212 = *(v0 + 352);
        if (v208 == 1)
        {
          v122 = *(v0 + 104);

          sub_2542182D4(v212);
          (*(v210 + 8))(v209, v211);
          goto LABEL_57;
        }

        v213 = *(v0 + 152);
        v214 = *(v0 + 128);
        v215 = *(v0 + 136);
        (*(v215 + 32))(v213, *(v0 + 104), v214);
        sub_254219568();
        v216 = swift_allocError();
        *v217 = 2;
        *(v0 + 48) = v216;
        sub_25424E078();

        (*(v215 + 8))(v213, v214);
        sub_2542182D4(v212);
        (*(v210 + 8))(v209, v211);
        v2 = 0;
        goto LABEL_3;
      }

      v188 = *(v0 + 296);
      v189 = *(v0 + 216);
      *(v0 + 32) = v6;
      static LoggedObject.logger.getter(v95, &protocol witness table for AsyncFileOutputStream, v188);
      v93(v189, v96, v94);
      v190 = sub_25424DA88();
      v191 = sub_25424E408();
      v192 = os_log_type_enabled(v190, v191);
      v193 = *(v0 + 296);
      v194 = *(v0 + 256);
      v195 = *(v0 + 216);
      v196 = *(v0 + 176);
      if (v192)
      {
        v197 = swift_slowAlloc();
        v235 = v194;
        v198 = swift_slowAlloc();
        v241[0] = v198;
        *v197 = 136446210;
        sub_25421943C();
        v231 = v193;
        v199 = v6;
        v200 = sub_25424EA58();
        v202 = v201;
        i(v195, v196);
        v203 = v200;
        v6 = v199;
        v204 = sub_2542203C4(v203, v202, v241);

        *(v197 + 4) = v204;
        _os_log_impl(&dword_254124000, v190, v191, "Created '%{public}s'", v197, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v198);
        MEMORY[0x259C07330](v198, -1, -1);
        MEMORY[0x259C07330](v197, -1, -1);

        v239(v231, v235);
      }

      else
      {

        i(v195, v196);
        v239(v193, v194);
      }
    }

    if (!v24)
    {
      v25 = BYTE6(v23);
      goto LABEL_36;
    }

    v128 = __OFSUB__(HIDWORD(v22), v22);
    v129 = HIDWORD(v22) - v22;
    if (!v128)
    {
      v25 = v129;
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_62;
  }

  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
  v2 = *(v0 + 400);
LABEL_3:
  sub_254218330((v0 + 32), *(v0 + 72), *(v0 + 88));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AsyncFileOutputStream.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v4 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url;
  v5 = sub_25424D418();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t AsyncFileOutputStream.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_pipe;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v4 = OBJC_IVAR____TtC13HomeKitEvents21AsyncFileOutputStream_url;
  v5 = sub_25424D418();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v6, v7);
}

uint64_t AsyncFileOutputStream.WriteError.hashValue.getter()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v1);
  return sub_25424EC28();
}

BOOL AsyncFileOutputStream.write(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = *(v5 + 28);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
  *v7 = a1;
  *(v7 + 1) = a2;
  sub_254140660(a1, a2);
  sub_25421766C(v7, v11);
  sub_2542182D4(v7);
  v14 = (*(v9 + 88))(v11, v8);
  v15 = *MEMORY[0x277D85758];
  if (v14 != *MEMORY[0x277D85758])
  {
    (*(v9 + 8))(v11, v8);
  }

  return v14 == v15;
}

void *sub_25421766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = *v2;
  v5 = sub_25424DAA8();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = (&v72 - v9);
  MEMORY[0x28223BE20](v8);
  v77 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - v17;
  v19 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v73 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v72 - v23);
  MEMORY[0x28223BE20](v22);
  v80 = a1;
  sub_2542193D8(a1, &v72 - v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E148();
  v26 = *(v12 + 16);
  v26(v18, a2, v11);
  v78 = v12;
  v79 = v18;
  v28 = *(v12 + 88);
  v27 = v12 + 88;
  v84 = v11;
  result = v28(v18, v11);
  if (result != *MEMORY[0x277D85758])
  {
    if (result == *MEMORY[0x277D85750])
    {
      v27 = v77;
      static LoggedObject.logger.getter(v83, &protocol witness table for AsyncFileOutputStream, v77);
      sub_2542193D8(v80, v24);

      v30 = sub_25424DA88();
      LOBYTE(v31) = sub_25424E428();

      if (!os_log_type_enabled(v30, v31))
      {
        sub_2542182D4(v24);
LABEL_30:

        (*(v81 + 8))(v27, v82);
        return (*(v78 + 8))(v79, v84);
      }

      v32 = swift_slowAlloc();
      result = swift_slowAlloc();
      v33 = result;
      v85 = result;
      *v32 = 134218242;
      v34 = *v24;
      v35 = v24[1];
      v36 = v35 >> 62;
      if ((v35 >> 62) <= 1)
      {
        if (!v36)
        {
          v37 = BYTE6(v35);
LABEL_29:
          sub_2542182D4(v24);
          *(v32 + 4) = v37;
          *(v32 + 12) = 2080;
          sub_25424D418();
          sub_25421943C();
          v65 = sub_25424EA58();
          v67 = sub_2542203C4(v65, v66, &v85);

          *(v32 + 14) = v67;
          _os_log_impl(&dword_254124000, v30, v31, "Dropped %ld byte(s) for '%s'", v32, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x259C07330](v33, -1, -1);
          MEMORY[0x259C07330](v32, -1, -1);
          goto LABEL_30;
        }

        v60 = __OFSUB__(HIDWORD(v34), v34);
        v61 = HIDWORD(v34) - v34;
        if (!v60)
        {
          v37 = v61;
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_38;
      }

      if (v36 == 2)
      {
        v59 = v34 + 16;
        v57 = *(v34 + 16);
        v58 = *(v59 + 8);
        v37 = v58 - v57;
        if (!__OFSUB__(v58, v57))
        {
          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_28:
      v37 = 0;
      goto LABEL_29;
    }

    if (result == *MEMORY[0x277D85748])
    {
      v33 = v76;
      static LoggedObject.logger.getter(v83, &protocol witness table for AsyncFileOutputStream, v76);
      v32 = v73;
      sub_2542193D8(v80, v73);

      v30 = sub_25424DA88();
      v38 = sub_25424E428();

      if (!os_log_type_enabled(v30, v38))
      {
LABEL_19:
        sub_2542182D4(v32);
LABEL_35:

        return (*(v81 + 8))(v33, v82);
      }

      v31 = swift_slowAlloc();
      result = swift_slowAlloc();
      v24 = result;
      v85 = result;
      *v31 = 134218242;
      v39 = *v32;
      v40 = *(v32 + 8);
      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v64 = v39 + 16;
          v62 = *(v39 + 16);
          v63 = *(v64 + 8);
          v42 = v63 - v62;
          if (__OFSUB__(v63, v62))
          {
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v42 = 0;
        }
      }

      else if (v41)
      {
        v60 = __OFSUB__(HIDWORD(v39), v39);
        v68 = HIDWORD(v39) - v39;
        if (v60)
        {
LABEL_38:
          __break(1u);
          return result;
        }

        v42 = v68;
      }

      else
      {
        v42 = BYTE6(v40);
      }

      sub_2542182D4(v32);
      *(v31 + 4) = v42;
      *(v31 + 12) = 2080;
      sub_25424D418();
      sub_25421943C();
      v69 = sub_25424EA58();
      v71 = sub_2542203C4(v69, v70, &v85);

      *(v31 + 14) = v71;
      _os_log_impl(&dword_254124000, v30, v38, "Failed to write %ld byte(s) to '%s'", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x259C07330](v24, -1, -1);
      MEMORY[0x259C07330](v31, -1, -1);
      goto LABEL_35;
    }

    v43 = v75;
    static LoggedObject.logger.getter(v83, &protocol witness table for AsyncFileOutputStream, v75);
    v44 = v74;
    v45 = v84;
    v26(v74, a2, v84);
    v46 = sub_25424DA88();
    v47 = sub_25424E438();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = v83;
      *v48 = 136315138;
      v26(v72, v44, v84);
      v49 = sub_25424DD08();
      v51 = v50;
      v52 = *(v78 + 8);
      v52(v44, v84);
      v53 = sub_2542203C4(v49, v51, &v85);
      v54 = v43;
      v55 = v53;

      *(v48 + 4) = v55;
      _os_log_impl(&dword_254124000, v46, v47, "Unhandled stream result: %s", v48, 0xCu);
      v56 = v83;
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x259C07330](v56, -1, -1);
      v45 = v84;
      MEMORY[0x259C07330](v48, -1, -1);

      (*(v81 + 8))(v54, v82);
    }

    else
    {

      v52 = *(v78 + 8);
      v52(v44, v45);
      (*(v81 + 8))(v43, v82);
    }

    return (v52)(v79, v45);
  }

  return result;
}

uint64_t sub_254217ED8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22[2] = a2;
  v7 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - v13;
  v15 = *(v8 + 28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v22[1] = a1;
  v18(&v10[v15], a1, v16);
  (*(v17 + 56))(&v10[v15], 0, 1, v16);
  *v10 = a3;
  *(v10 + 1) = a4;
  sub_254140660(a3, a4);
  sub_25421766C(v10, v14);
  sub_2542182D4(v10);
  result = (*(v12 + 88))(v14, v11);
  if (result != *MEMORY[0x277D85758])
  {
    sub_254219568();
    v20 = swift_allocError();
    *v21 = 0;
    v22[3] = v20;
    sub_25424E078();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_254218140(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25424D418() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF60, &qword_254261948) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F724;

  return sub_254215650(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2542182D4(uint64_t a1)
{
  v2 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254218330(void **a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v108[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25424D418();
  v107 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v95 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v105 = &v95 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v95 - v15;
  v106 = sub_25424DAA8();
  v17 = *(v106 - 8);
  v18 = MEMORY[0x28223BE20](v106);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v27 = *a1;
  if (*a1)
  {
    v95 = v24;
    v96 = v9;
    v97 = v23;
    v28 = v27;
    v101 = a3;
    static LoggedObject.logger.getter(a3, &protocol witness table for AsyncFileOutputStream, v26);
    v29 = *(v107 + 16);
    v102 = a2;
    v98 = v29;
    v99 = v107 + 16;
    v29(v16, a2, v6);
    v30 = sub_25424DA88();
    v31 = sub_25424E418();
    v32 = os_log_type_enabled(v30, v31);
    v103 = v28;
    v104 = v17;
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v108[0] = v34;
      *v33 = 136446210;
      sub_25421943C();
      v35 = sub_25424EA58();
      v37 = v36;
      v100 = *(v107 + 8);
      v100(v16, v6);
      v38 = sub_2542203C4(v35, v37, v108);
      v39 = v104;

      *(v33 + 4) = v38;
      _os_log_impl(&dword_254124000, v30, v31, "Closing '%{public}s'", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v40 = v34;
      v41 = v106;
      MEMORY[0x259C07330](v40, -1, -1);
      v42 = v33;
      v28 = v103;
      MEMORY[0x259C07330](v42, -1, -1);

      v43 = *(v39 + 8);
      v43(v26, v41);
    }

    else
    {

      v100 = *(v107 + 8);
      v100(v16, v6);
      v43 = *(v17 + 8);
      v41 = v106;
      v43(v26, v106);
    }

    v108[0] = 0;
    v57 = [v28 closeAndReturnError_];
    v59 = v101;
    v58 = v102;
    v60 = v105;
    if (v57)
    {
      v61 = v108[0];
      v62 = v95;
      static LoggedObject.logger.getter(v59, &protocol witness table for AsyncFileOutputStream, v95);
      v98(v60, v58, v6);
      v63 = v62;
      v64 = sub_25424DA88();
      v65 = sub_25424E408();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v102 = v43;
        v68 = v67;
        v108[0] = v67;
        *v66 = 136446210;
        sub_25421943C();
        v69 = sub_25424EA58();
        v70 = v60;
        v72 = v71;
        v100(v70, v6);
        v73 = sub_2542203C4(v69, v72, v108);

        *(v66 + 4) = v73;
        _os_log_impl(&dword_254124000, v64, v65, "Finished writing '%{public}s'", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x259C07330](v68, -1, -1);
        MEMORY[0x259C07330](v66, -1, -1);

        v74 = v63;
        v75 = v41;
        return (v102)(v74, v75);
      }

      v100(v60, v6);
      v93 = v63;
      v94 = v41;
    }

    else
    {
      v76 = v108[0];
      v77 = sub_25424D3A8();

      swift_willThrow();
      v78 = v97;
      static LoggedObject.logger.getter(v59, &protocol witness table for AsyncFileOutputStream, v97);
      v79 = v96;
      v98(v96, v58, v6);
      v80 = v77;
      v81 = sub_25424DA88();
      v82 = sub_25424E428();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v102 = v43;
        v85 = v84;
        v86 = swift_slowAlloc();
        v108[0] = v86;
        *v83 = 136446466;
        sub_25421943C();
        v87 = sub_25424EA58();
        v89 = v88;
        v100(v79, v6);
        v90 = sub_2542203C4(v87, v89, v108);

        *(v83 + 4) = v90;
        *(v83 + 12) = 2114;
        v91 = v77;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 14) = v92;
        *v85 = v92;
        _os_log_impl(&dword_254124000, v81, v82, "Failed to close file handle for '%{public}s': %{public}@", v83, 0x16u);
        sub_254132E5C(v85, &unk_27F5BBED0, &qword_254253F80);
        MEMORY[0x259C07330](v85, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x259C07330](v86, -1, -1);
        MEMORY[0x259C07330](v83, -1, -1);

        v74 = v97;
        v75 = v106;
        return (v102)(v74, v75);
      }

      v100(v79, v6);
      v93 = v78;
      v94 = v106;
    }

    return (v43)(v93, v94);
  }

  else
  {
    static LoggedObject.logger.getter(a3, &protocol witness table for AsyncFileOutputStream, v21);
    (*(v107 + 16))(v12, a2, v6);
    v44 = sub_25424DA88();
    v45 = sub_25424E418();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v107;
      v48 = v17;
      v49 = v46;
      v50 = swift_slowAlloc();
      v108[0] = v50;
      *v49 = 136446210;
      sub_25421943C();
      v51 = sub_25424EA58();
      v52 = v6;
      v54 = v53;
      (*(v47 + 8))(v12, v52);
      v55 = sub_2542203C4(v51, v54, v108);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_254124000, v44, v45, "Finished without ever opening '%{public}s'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x259C07330](v50, -1, -1);
      MEMORY[0x259C07330](v49, -1, -1);

      return (*(v48 + 8))(v21, v106);
    }

    else
    {

      (*(v107 + 8))(v12, v6);
      return (*(v17 + 8))(v21, v106);
    }
  }
}

id sub_254218CB4(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25424D3E8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_25424D418();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_25424D3A8();

    swift_willThrow();
    v9 = sub_25424D418();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

Swift::Void __swiftcall AsyncFileOutputStream.write(_:)(Swift::String a1)
{
  v1 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBF70, &unk_254261960);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_25424DCF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424DCE8();
  v11 = sub_25424DCC8();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v1 + 20);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
    (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
    *v3 = v11;
    v3[1] = v13;
    sub_254140660(v11, v13);
    sub_25421766C(v3, v6);
    sub_254134CF0(v11, v13);
    sub_2542182D4(v3);
    v16 = v18;
    if ((*(v4 + 88))(v6, v18) != *MEMORY[0x277D85758])
    {
      (*(v4 + 8))(v6, v16);
    }
  }
}

unint64_t sub_2542190B8()
{
  result = qword_27F5BBF78;
  if (!qword_27F5BBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBF78);
  }

  return result;
}

void sub_254219164(uint64_t a1)
{
  sub_25424D418();
  if (v1 <= 0x3F)
  {
    sub_254219268(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_254219268(uint64_t a1)
{
  if (!qword_27F5BBF90)
  {
    type metadata accessor for AsyncFileOutputStream.InternalStreamElement(255);
    v1 = sub_25424E168();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5BBF90);
    }
  }
}

void sub_2542192F8(uint64_t a1)
{
  sub_254219374(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_254219374(uint64_t a1)
{
  if (!qword_27F5BBFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B8848, &qword_254261820);
    v1 = sub_25424E598();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5BBFA8);
    }
  }
}

uint64_t sub_2542193D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25421943C()
{
  result = qword_27F5BBFB0;
  if (!qword_27F5BBFB0)
  {
    sub_25424D418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFB0);
  }

  return result;
}

uint64_t sub_254219494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncFileOutputStream.InternalStreamElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2542194F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254219568()
{
  result = qword_27F5BBFC8;
  if (!qword_27F5BBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFC8);
  }

  return result;
}

unint64_t sub_2542195BC()
{
  result = qword_27F5BBFD0;
  if (!qword_27F5BBFD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BBFD0);
  }

  return result;
}

unint64_t sub_254219608()
{
  result = qword_27F5BBFD8;
  if (!qword_27F5BBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BBFD8);
  }

  return result;
}

uint64_t static HMVCommands.resetConfiguration()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25419EEA0;

  return sub_25412FDA0(sub_25412FDA0, sub_254219714, 0);
}

void sub_254219714(void *a1, uint64_t a2)
{
  v4[4] = sub_2542199D4;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2541ED26C;
  v4[3] = &block_descriptor_20;
  v3 = _Block_copy(v4);

  [a1 hmvutilResetConfigurationWithReply_];
  _Block_release(v3);
}

uint64_t sub_2542197DC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254254328;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2542199F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_254219A18, 0, 0);
}

uint64_t sub_254219A18()
{
  type metadata accessor for XPCPublicClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v7 = *(v0 + 24);
  sub_2541FACD0();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2541A6B88;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000024, 0x8000000254251B10, sub_254224F24, v2, v5);
}

uint64_t sub_254219B4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_254219B6C, 0, 0);
}

uint64_t sub_254219B6C()
{
  type metadata accessor for XPCPublicClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v6 = *(v0 + 24);
  sub_2541FACD0();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v6;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC028, &qword_254261BC8);
  *v3 = v0;
  v3[1] = sub_254219CAC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000024, 0x8000000254251B10, sub_254224E68, v2, v4);
}

uint64_t sub_254219CAC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2541A6D28;
  }

  else
  {

    v2 = sub_254219DC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254219DC8()
{
  v1 = v0[5];
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_254219E50@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = &v30 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v38 = &type metadata for HMVCommands;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEB0, &unk_254261538);
  v18 = sub_25424EB18();
  v34 = inited;
  v19 = objc_getAssociatedObject(v18, inited);
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  v35 = v9;
  if (*(&v39 + 1))
  {
    v20 = swift_dynamicCast();
    v21 = *(v2 + 56);
    v21(v16, v20 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v21 = *(v2 + 56);
    v21(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v22 = *(v2 + 48);
  v23 = v22(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v23 == 1)
  {
    off_28663AAD8(&type metadata for HMVCommands, &protocol witness table for HMVCommands);
    v24 = v33;
    sub_25424DA98();
    v21(v24, 0, 1, v1);
    sub_254132C3C(v24, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = &type metadata for HMVCommands;
    v25 = sub_25424EB18();
    v26 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v22(v26, 1, v1) == 1)
    {
      v27 = 0;
    }

    else
    {
      (*(v2 + 16))(v31, v26, v1);
      v27 = sub_25424EB18();
      (*(v2 + 8))(v26, v1);
    }

    objc_setAssociatedObject(v25, v34, v27, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v28 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v22(v28, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v28, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421A334@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31[0] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = type metadata accessor for EncryptionKeyQuery(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v32 = v17;
  *&v38 = v17;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
  v19 = sub_25424EB18();
  v34 = inited;
  v20 = objc_getAssociatedObject(v19, inited);
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v35 = v9;
  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    v21 = swift_dynamicCast();
    v22 = *(v2 + 56);
    v22(v16, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v22 = *(v2 + 56);
    v22(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v23 = *(v2 + 48);
  v24 = v23(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v24 == 1)
  {
    v25 = v33;
    sub_25424DA98();
    v22(v25, 0, 1, v1);
    sub_254132C3C(v25, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = v32;
    v26 = sub_25424EB18();
    v27 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v23(v27, 1, v1) == 1)
    {
      v28 = 0;
    }

    else
    {
      (*(v2 + 16))(v31[0], v27, v1);
      v28 = sub_25424EB18();
      (*(v2 + 8))(v27, v1);
    }

    objc_setAssociatedObject(v26, v34, v28, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v29 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v23(v29, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v29, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421A804@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = &v30 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v38 = &type metadata for SharedZoneLookup;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEB8, &qword_254261548);
  v18 = sub_25424EB18();
  v34 = inited;
  v19 = objc_getAssociatedObject(v18, inited);
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  v35 = v9;
  if (*(&v39 + 1))
  {
    v20 = swift_dynamicCast();
    v21 = *(v2 + 56);
    v21(v16, v20 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v21 = *(v2 + 56);
    v21(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v22 = *(v2 + 48);
  v23 = v22(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v23 == 1)
  {
    off_286636BC8(&type metadata for SharedZoneLookup, &protocol witness table for SharedZoneLookup);
    v24 = v33;
    sub_25424DA98();
    v21(v24, 0, 1, v1);
    sub_254132C3C(v24, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = &type metadata for SharedZoneLookup;
    v25 = sub_25424EB18();
    v26 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v22(v26, 1, v1) == 1)
    {
      v27 = 0;
    }

    else
    {
      (*(v2 + 16))(v31, v26, v1);
      v27 = sub_25424EB18();
      (*(v2 + 8))(v26, v1);
    }

    objc_setAssociatedObject(v25, v34, v27, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v28 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v22(v28, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v28, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421ACE8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31[0] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = type metadata accessor for EventQuery(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v32 = v17;
  *&v38 = v17;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9290, &qword_2542545E8);
  v19 = sub_25424EB18();
  v34 = inited;
  v20 = objc_getAssociatedObject(v19, inited);
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v35 = v9;
  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    v21 = swift_dynamicCast();
    v22 = *(v2 + 56);
    v22(v16, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v22 = *(v2 + 56);
    v22(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v23 = *(v2 + 48);
  v24 = v23(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v24 == 1)
  {
    v25 = v33;
    sub_25424DA98();
    v22(v25, 0, 1, v1);
    sub_254132C3C(v25, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = v32;
    v26 = sub_25424EB18();
    v27 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v23(v27, 1, v1) == 1)
    {
      v28 = 0;
    }

    else
    {
      (*(v2 + 16))(v31[0], v27, v1);
      v28 = sub_25424EB18();
      (*(v2 + 8))(v27, v1);
    }

    objc_setAssociatedObject(v26, v34, v28, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v29 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v23(v29, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v29, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421B1A8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = &v30 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v38 = &type metadata for EventManager;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEA0, &qword_254261528);
  v18 = sub_25424EB18();
  v34 = inited;
  v19 = objc_getAssociatedObject(v18, inited);
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  v35 = v9;
  if (*(&v39 + 1))
  {
    v20 = swift_dynamicCast();
    v21 = *(v2 + 56);
    v21(v16, v20 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v21 = *(v2 + 56);
    v21(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v22 = *(v2 + 48);
  v23 = v22(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v23 == 1)
  {
    sub_25420C72C(&type metadata for EventManager, &protocol witness table for EventManager);
    v24 = v33;
    sub_25424DA98();
    v21(v24, 0, 1, v1);
    sub_254132C3C(v24, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = &type metadata for EventManager;
    v25 = sub_25424EB18();
    v26 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v22(v26, 1, v1) == 1)
    {
      v27 = 0;
    }

    else
    {
      (*(v2 + 16))(v31, v26, v1);
      v27 = sub_25424EB18();
      (*(v2 + 8))(v26, v1);
    }

    objc_setAssociatedObject(v25, v34, v27, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v28 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v22(v28, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v28, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421B67C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = &v30 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v38 = &type metadata for CloudKitExporter;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF98, &qword_25425CEE0);
  v18 = sub_25424EB18();
  v34 = inited;
  v19 = objc_getAssociatedObject(v18, inited);
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  v35 = v9;
  if (*(&v39 + 1))
  {
    v20 = swift_dynamicCast();
    v21 = *(v2 + 56);
    v21(v16, v20 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v21 = *(v2 + 56);
    v21(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v22 = *(v2 + 48);
  v23 = v22(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v23 == 1)
  {
    off_286639070(&type metadata for CloudKitExporter, &protocol witness table for CloudKitExporter);
    v24 = v33;
    sub_25424DA98();
    v21(v24, 0, 1, v1);
    sub_254132C3C(v24, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = &type metadata for CloudKitExporter;
    v25 = sub_25424EB18();
    v26 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v22(v26, 1, v1) == 1)
    {
      v27 = 0;
    }

    else
    {
      (*(v2 + 16))(v31, v26, v1);
      v27 = sub_25424EB18();
      (*(v2 + 8))(v26, v1);
    }

    objc_setAssociatedObject(v25, v34, v27, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v28 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v22(v28, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v28, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421BB60@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31[0] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = type metadata accessor for CKQueryAsyncSequence(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v32 = v17;
  *&v38 = v17;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFE8, &qword_254261B88);
  v19 = sub_25424EB18();
  v34 = inited;
  v20 = objc_getAssociatedObject(v19, inited);
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v35 = v9;
  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    v21 = swift_dynamicCast();
    v22 = *(v2 + 56);
    v22(v16, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v22 = *(v2 + 56);
    v22(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v23 = *(v2 + 48);
  v24 = v23(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v24 == 1)
  {
    v25 = v33;
    sub_25424DA98();
    v22(v25, 0, 1, v1);
    sub_254132C3C(v25, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = v32;
    v26 = sub_25424EB18();
    v27 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v23(v27, 1, v1) == 1)
    {
      v28 = 0;
    }

    else
    {
      (*(v2 + 16))(v31[0], v27, v1);
      v28 = sub_25424EB18();
      (*(v2 + 8))(v27, v1);
    }

    objc_setAssociatedObject(v26, v34, v28, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v29 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v23(v29, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v29, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C024@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v32[0] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v32 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v32 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = type metadata accessor for AsyncFileOutputStream(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  *&v39 = v17;
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBEA8, &qword_254261530);
  v19 = sub_25424EB18();
  v34 = inited;
  v20 = objc_getAssociatedObject(v19, inited);
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v35 = v9;
  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    v21 = swift_dynamicCast();
    v22 = *(v2 + 56);
    v22(v16, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v41, &qword_27F5BA568, &qword_254259B88);
    v22 = *(v2 + 56);
    v22(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v38 = v2;
  v23 = *(v2 + 48);
  v24 = v23(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v24 == 1)
  {
    off_28663BDC8(v17, &protocol witness table for AsyncFileOutputStream);
    v25 = v33;
    sub_25424DA98();
    v26 = v38;
    v22(v25, 0, 1, v1);
    sub_254132C3C(v25, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v41[0] = v17;
    v27 = sub_25424EB18();
    v28 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v23(v28, 1, v1) == 1)
    {
      v29 = 0;
    }

    else
    {
      (*(v26 + 16))(v32[0], v28, v1);
      v29 = sub_25424EB18();
      (*(v26 + 8))(v28, v1);
    }

    objc_setAssociatedObject(v27, v34, v29, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v30 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v23(v30, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v38 + 32))(v36, v30, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C508@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25424DAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v31[0] = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBE98, &unk_2542614D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v33 = v31 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  v17 = type metadata accessor for EventDigestQuery(0);
  type metadata accessor for LoggedObjectPropertyKey();
  inited = swift_initStaticObject();
  v32 = v17;
  *&v38 = v17;
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC000, &qword_254261BA0);
  v19 = sub_25424EB18();
  v34 = inited;
  v20 = objc_getAssociatedObject(v19, inited);
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_25424E5D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v35 = v9;
  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    v21 = swift_dynamicCast();
    v22 = *(v2 + 56);
    v22(v16, v21 ^ 1u, 1, v1);
  }

  else
  {
    sub_254132E5C(v40, &qword_27F5BA568, &qword_254259B88);
    v22 = *(v2 + 56);
    v22(v16, 1, 1, v1);
  }

  sub_254132DF4(v16, v14, &qword_27F5BBE98, &unk_2542614D0);
  v23 = *(v2 + 48);
  v24 = v23(v14, 1, v1);
  sub_254132E5C(v14, &qword_27F5BBE98, &unk_2542614D0);
  if (v24 == 1)
  {
    v25 = v33;
    sub_25424DA98();
    v22(v25, 0, 1, v1);
    sub_254132C3C(v25, v16, &qword_27F5BBE98, &unk_2542614D0);
    *&v40[0] = v32;
    v26 = sub_25424EB18();
    v27 = v35;
    sub_254132DF4(v16, v35, &qword_27F5BBE98, &unk_2542614D0);
    if (v23(v27, 1, v1) == 1)
    {
      v28 = 0;
    }

    else
    {
      (*(v2 + 16))(v31[0], v27, v1);
      v28 = sub_25424EB18();
      (*(v2 + 8))(v27, v1);
    }

    objc_setAssociatedObject(v26, v34, v28, 0x301);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v29 = v37;
  sub_254132DF4(v16, v37, &qword_27F5BBE98, &unk_2542614D0);
  result = v23(v29, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v36, v29, v1);
    return sub_254132E5C(v16, &qword_27F5BBE98, &unk_2542614D0);
  }

  return result;
}

uint64_t sub_25421C9C8(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v21[1] = a4;
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8840, &qword_254252D18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  (*(v10 + 16))(v21 - v11, a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B8888, &qword_254252D88);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = *(*v13 + 112);
  v15 = *(v10 + 56);
  v15(v13 + v14, 1, 1, v9);
  (*(v10 + 32))(v8, v12, v9);
  v15(v8, 0, 1, v9);
  swift_beginAccess();
  sub_254132C3C(v8, v13 + v14, &qword_27F5B8840, &qword_254252D18);
  swift_endAccess();
  v16 = a2[5];
  v17 = a2[6];
  a2[5] = sub_254224F30;
  a2[6] = v13;

  sub_25412DC98(v16, v17);
  v18 = a2[3];
  v19 = a2[4];
  a2[3] = sub_254224F84;
  a2[4] = v13;

  sub_25412DC98(v18, v19);
  sub_2541FAFB4();
  v22();

  return swift_unknownObjectRelease();
}

uint64_t sub_25421CC54(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v21[1] = a4;
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8850, &qword_254252D28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - v11;
  (*(v10 + 16))(v21 - v11, a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC030, &qword_254261BD0);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = *(*v13 + 112);
  v15 = *(v10 + 56);
  v15(v13 + v14, 1, 1, v9);
  (*(v10 + 32))(v8, v12, v9);
  v15(v8, 0, 1, v9);
  swift_beginAccess();
  sub_254132C3C(v8, v13 + v14, &qword_27F5B8850, &qword_254252D28);
  swift_endAccess();
  v16 = a2[5];
  v17 = a2[6];
  a2[5] = sub_254224E74;
  a2[6] = v13;

  sub_25412DC98(v16, v17);
  v18 = a2[3];
  v19 = a2[4];
  a2[3] = sub_254224EC8;
  a2[4] = v13;

  sub_25412DC98(v18, v19);
  sub_2541FAFB4();
  v22();

  return swift_unknownObjectRelease();
}

void sub_25421CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_254132998();
  v11 = swift_allocError();
  *v12 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_25424E128();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a4;
  v15[6] = v13;
  v16 = v11;

  sub_25419CC1C(0, 0, v10, a5, v15);
}

void sub_25421D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_254132998();
  v11 = swift_allocError();
  *v12 = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_25424E128();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a4;
  v15[6] = v13;
  v16 = v11;

  sub_25419CC1C(0, 0, v10, a5, v15);
}

uint64_t static EventManager.writeEvents(_:scope:)(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return sub_254223BC0(a1, a2);
}

uint64_t static EventManager.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254224488(a1, a2, a3);
}

uint64_t static EventManager.writeEvents(_:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4A28;

  return sub_254223BC0(a1, (v1 + 32));
}

uint64_t sub_25421D3E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a2;
  v81 = a3;
  v87 = type metadata accessor for SomeEvent(0);
  v4 = MEMORY[0x28223BE20](v87);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v79 - v6;
  v89 = sub_25424DAA8();
  v8 = *(v89 - 8);
  v9 = MEMORY[0x28223BE20](v89);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v90 = a1;
  sub_2541DA834(&v95);
  v18 = *(&v96 + 1);
  v19 = v97;
  v20 = __swift_project_boxed_opaque_existential_1(&v95, *(&v96 + 1));
  v99 = v18;
  v100 = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  __swift_project_boxed_opaque_existential_1(v98, v99);
  DynamicType = swift_getDynamicType();
  v23 = v100;
  __swift_destroy_boxed_opaque_existential_1(v98);
  *&v95 = DynamicType;
  *(&v95 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9128, &qword_254254540);
  v24 = sub_25424DD08();
  v26 = v25;
  sub_25421B1A8(v17);

  v27 = sub_25424DA88();
  v28 = sub_25424E448();
  v92 = v26;

  v29 = os_log_type_enabled(v27, v28);
  v88 = v8;
  v80 = v24;
  if (v29)
  {
    v30 = v15;
    v31 = v7;
    v32 = v24;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v98[0] = v34;
    *v33 = 136446210;
    v35 = v32;
    v7 = v31;
    v15 = v30;
    *(v33 + 4) = sub_2542203C4(v35, v92, v98);
    _os_log_impl(&dword_254124000, v27, v28, "Writing %{public}s event", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v36 = v34;
    v8 = v88;
    MEMORY[0x259C07330](v36, -1, -1);
    MEMORY[0x259C07330](v33, -1, -1);
  }

  v37 = v89;
  v91 = *(v8 + 8);
  v91(v17, v89);
  sub_25421B1A8(v15);
  sub_254224FF0(v90, v7);
  v38 = sub_25424DA88();
  v39 = sub_25424E408();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v98[0] = v41;
    *v40 = 136315138;
    sub_254224FF0(v7, v82);
    v42 = sub_25424DD08();
    v44 = v43;
    sub_254225054(v7);
    v45 = sub_2542203C4(v42, v44, v98);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_254124000, v38, v39, "%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x259C07330](v41, -1, -1);
    v46 = v40;
    v37 = v89;
    MEMORY[0x259C07330](v46, -1, -1);
  }

  else
  {

    sub_254225054(v7);
  }

  v91(v15, v37);
  sub_25424D1C8();
  swift_allocObject();
  sub_25424D1B8();
  sub_2542250B0(&qword_27F5BC040, type metadata accessor for SomeEvent, &protocol conformance descriptor for SomeEvent);
  v47 = v86;
  v48 = sub_25424D1A8();
  if (!v47)
  {
    v63 = v48;
    v64 = v49;

    v65 = v83;
    sub_25421B1A8(v83);
    sub_254140660(v63, v64);
    v66 = sub_25424DA88();
    v67 = sub_25424E418();
    sub_254134D04(v63, v64);
    if (!os_log_type_enabled(v66, v67))
    {

      v75 = v65;
      v76 = v37;
LABEL_22:
      result = (v91)(v75, v76);
      v78 = v81;
      *v81 = v63;
      v78[1] = v64;
      return result;
    }

    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v101 = v69;
    *v68 = 136315138;
    sub_254140660(v63, v64);
    v70 = sub_2542239C0(v63, v64);
    if (!v71)
    {
      v93 = v63;
      v94 = v64;
      sub_254140660(v63, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC048, &qword_254261BF0);
      if (swift_dynamicCast())
      {
        sub_25412DC4C(&v95, v98);
        v92 = v100;
        __swift_project_boxed_opaque_existential_1(v98, v99);
        if (sub_25424E8C8())
        {
          sub_254134D04(v63, v64);
          v92 = v100;
          __swift_project_boxed_opaque_existential_1(v98, v99);
          sub_25424E8B8();
          v72 = *(&v95 + 1);
          v73 = v95;
          __swift_destroy_boxed_opaque_existential_1(v98);
LABEL_21:
          v77 = sub_2542203C4(v73, v72, &v101);

          *(v68 + 4) = v77;
          _os_log_impl(&dword_254124000, v66, v67, "JSON: '%s'", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          MEMORY[0x259C07330](v69, -1, -1);
          MEMORY[0x259C07330](v68, -1, -1);

          v76 = v89;
          v75 = v83;
          goto LABEL_22;
        }

        __swift_destroy_boxed_opaque_existential_1(v98);
      }

      else
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        sub_254132E5C(&v95, &qword_27F5BC050, &qword_254261BF8);
      }

      v70 = sub_254223918(v63, v64);
    }

    v73 = v70;
    v72 = v71;
    sub_254134D04(v63, v64);
    goto LABEL_21;
  }

  v50 = v85;
  sub_25421B1A8(v85);

  v51 = v47;
  v52 = sub_25424DA88();
  v53 = sub_25424E438();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v98[0] = v56;
    *v54 = 136446466;
    v57 = v37;
    v58 = sub_2542203C4(v80, v92, v98);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2112;
    v59 = v47;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 14) = v60;
    *v55 = v60;
    _os_log_impl(&dword_254124000, v52, v53, "Failed to encode %{public}s event: %@", v54, 0x16u);
    sub_254132E5C(v55, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x259C07330](v56, -1, -1);
    MEMORY[0x259C07330](v54, -1, -1);

    v61 = v85;
    v62 = v57;
  }

  else
  {

    v61 = v50;
    v62 = v37;
  }

  v91(v61, v62);
  result = swift_willThrow();
  *v84 = v47;
  return result;
}

uint64_t static EventManager.clearEvents(homeIdentifier:deleteCloudZone:)(uint64_t a1, char a2)
{
  *(v2 + 168) = a2;
  *(v2 + 16) = a1;
  v3 = sub_25424D948();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_25424DAA8();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421DED8, 0, 0);
}

uint64_t sub_25421DED8()
{
  v39 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_25421B1A8(*(v0 + 96));
  v5 = *(v3 + 16);
  *(v0 + 104) = v5;
  *(v0 + 112) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_25424DA88();
  v37 = sub_25424E448();
  v7 = os_log_type_enabled(v6, v37);
  v8 = *(v0 + 96);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  if (v7)
  {
    v35 = *(v0 + 168);
    v36 = *(v0 + 64);
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v14 = 136315394;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v33 = v9;
    v15 = v5;
    v16 = sub_25424EA58();
    v18 = v17;
    log = v6;
    v19 = *(v12 + 8);
    v19(v11, v13);
    v20 = v16;
    v5 = v15;
    v21 = sub_2542203C4(v20, v18, &v38);

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v35;
    _os_log_impl(&dword_254124000, log, v37, "Clearing events for home %s (delete cloud zone: %{BOOL}d)", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x259C07330](v34, -1, -1);
    MEMORY[0x259C07330](v14, -1, -1);

    v22 = *(v33 + 8);
    v22(v8, v36);
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v11, v13);
    v22 = *(v9 + 8);
    v22(v8, v10);
  }

  *(v0 + 120) = v22;
  *(v0 + 128) = v19;
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = *(v0 + 168);
  v26 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFE0, &qword_254261B38);
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v0 + 136) = v28;
  *(v28 + 16) = xmmword_254254360;
  v5(v28 + v27, v26, v23);
  v29 = swift_task_alloc();
  *(v0 + 144) = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v25;
  v30 = swift_task_alloc();
  *(v0 + 152) = v30;
  *v30 = v0;
  v30[1] = sub_25421E234;

  return sub_2542199F4(sub_2542199F4, sub_254224B0C, v29);
}

uint64_t sub_25421E234()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25421E5D4;
  }

  else
  {

    v2 = sub_25421E358;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25421E358()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  sub_25421B1A8(v0[11]);
  v1(v2, v4, v3);
  v5 = sub_25424DA88();
  v6 = sub_25424E448();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  v24 = v0[16];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[6];
  v12 = v0[3];
  if (v7)
  {
    v23 = v0[11];
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v8;
    v15 = sub_25424EA58();
    v17 = v16;
    v24(v11, v12);
    v18 = sub_2542203C4(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_254124000, v5, v6, "Successfully cleared events for home %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259C07330](v14, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v21(v23, v22);
  }

  else
  {

    v24(v11, v12);
    v8(v9, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25421E5D4()
{
  v35 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_25421B1A8(v3);
  v2(v4, v6, v5);
  v7 = v1;
  v8 = sub_25424DA88();
  v9 = sub_25424E428();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v0[16];
    v30 = v0[20];
    v32 = v0[10];
    v33 = v0[15];
    v31 = v0[8];
    v10 = v0[5];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v12 = 136315394;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_25424EA58();
    v17 = v16;
    v29(v10, v11);
    v18 = sub_2542203C4(v15, v17, &v34);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v30;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_254124000, v8, v9, "Failed to clear events for home %s: %@", v12, 0x16u);
    sub_254132E5C(v13, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259C07330](v14, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[10];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[3];

    v21(v25, v26);
    v22(v23, v24);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

uint64_t static EventManager.clearEnergyKitData(privateHomeIdentifiers:sharedHomeIdentifiers:deletePrivateCloudZones:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_25424D948();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_25424DAA8();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421EA50, 0, 0);
}

uint64_t sub_25421EA50()
{
  v25 = v0;
  if (*(*(v0 + 16) + 16) || *(*(v0 + 24) + 16))
  {
    sub_25421B1A8(*(v0 + 112));

    v1 = sub_25424DA88();
    v2 = sub_25424E448();

    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 112);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    if (v3)
    {
      v23 = *(v0 + 80);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315394;
      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v9 = sub_25424E2C8();
      v22 = v4;
      v11 = sub_2542203C4(v9, v10, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = sub_25424E2C8();
      v14 = sub_2542203C4(v12, v13, &v24);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_254124000, v1, v2, "Clearing EnergyKit data for private homes %s, shared homes %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v8, -1, -1);
      MEMORY[0x259C07330](v7, -1, -1);

      v15 = *(v5 + 8);
      v15(v22, v23);
    }

    else
    {

      v15 = *(v5 + 8);
      v15(v4, v6);
    }

    *(v0 + 120) = v15;
    v16 = *(v0 + 160);
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *(v17 + 16) = *(v0 + 16);
    *(v17 + 32) = v16;
    v18 = swift_task_alloc();
    *(v0 + 136) = v18;
    *v18 = v0;
    v18[1] = sub_25421EDB0;

    return sub_254219B4C(sub_254224B18, v17);
  }

  else
  {
    v20 = sub_254224C58(MEMORY[0x277D84F90]);

    v21 = *(v0 + 8);

    return v21(v20);
  }
}

uint64_t sub_25421EDB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_25421F130;
  }

  else
  {

    v4 = sub_25421EECC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25421EECC()
{
  v19 = v0;
  sub_25421B1A8(v0[13]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v16 = v0[13];
    v17 = v0[15];
    v3 = v0[10];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v6 = sub_25424DB88();
    v8 = v7;

    v9 = sub_2542203C4(v6, v8, &v18);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully cleared EnergyKit data for homes: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x259C07330](v5, -1, -1);
    MEMORY[0x259C07330](v4, -1, -1);

    v17(v16, v3);
  }

  else
  {
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[10];

    v10(v11, v12);
  }

  v13 = v0[18];

  v14 = v0[1];

  return v14(v13);
}

unint64_t sub_25421F130()
{
  v1 = v0[19];
  v2 = v0[12];

  sub_25421B1A8(v2);
  v3 = v1;
  v4 = sub_25424DA88();
  v5 = sub_25424E428();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_254124000, v4, v5, "Failed to clear EnergyKit data: %@", v7, 0xCu);
    sub_254132E5C(v8, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v8, -1, -1);
    MEMORY[0x259C07330](v7, -1, -1);
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[10];
  v15 = v0[2];
  v14 = v0[3];

  result = v11(v12, v13);
  v17 = *(v15 + 16);
  v18 = *(v14 + 16);
  v19 = v17 + v18;
  if (!__OFADD__(v17, v18))
  {
    v100 = v0[19];
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[2];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA10, &qword_25425FF00);
    v24 = sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v25 = MEMORY[0x259C05A50](v19, v21, v23, v24);
    v26 = v22 + 56;
    v27 = -1;
    v28 = -1 << *(v22 + 32);
    if (-v28 < 64)
    {
      v27 = ~(-1 << -v28);
    }

    v29 = v27 & *(v22 + 56);
    v30 = (63 - v28) >> 6;
    v102 = v20;
    v97 = v22;
    v99 = (v20 + 8);

    v31 = 0;
    v32 = v0;
    v101 = v0;
    v95 = v30;
    v96 = v22 + 56;
    v33 = v20;
    while (v29)
    {
      v37 = v31;
LABEL_14:
      v38 = v32[19];
      v40 = v32[8];
      v39 = v32[9];
      v41 = v32[4];
      v42 = *(v33 + 72);
      v43 = *(v33 + 16);
      v43(v39, *(v97 + 48) + v42 * (__clz(__rbit64(v29)) | (v37 << 6)), v41);
      (*(v33 + 32))(v40, v39, v41);
      v44 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_2542209D4(v40);
      v47 = v25[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_50;
      }

      v51 = v46;
      if (v25[3] >= v50)
      {
        v32 = v101;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = result;
          sub_254223284();
          result = v61;
        }
      }

      else
      {
        v32 = v101;
        v52 = v101[8];
        sub_254221E34(v50, isUniquelyReferenced_nonNull_native);
        result = sub_2542209D4(v52);
        if ((v51 & 1) != (v53 & 1))
        {
LABEL_45:

          return sub_25424EB38();
        }
      }

      v29 &= v29 - 1;
      v54 = v32[8];
      v55 = v32[4];
      if (v51)
      {
        v34 = v25[7] + 16 * result;
        v35 = *v34;
        v36 = *(v34 + 8);
        *v34 = v100;
        *(v34 + 8) = 1;
        sub_2541A1114(v35, v36);
        result = (*v99)(v54, v55);
      }

      else
      {
        v25[(result >> 6) + 8] |= 1 << result;
        v56 = v25[6] + result * v42;
        v57 = result;
        v43(v56, v54, v55);
        v58 = v25[7] + 16 * v57;
        *v58 = v100;
        *(v58 + 8) = 1;
        result = (*v99)(v54, v55);
        v59 = v25[2];
        v49 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v49)
        {
          goto LABEL_52;
        }

        v25[2] = v60;
      }

      v31 = v37;
      v30 = v95;
      v26 = v96;
    }

    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v37 >= v30)
      {
        break;
      }

      v29 = *(v26 + 8 * v37);
      ++v31;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    v62 = v32[3];

    v63 = v62 + 56;
    v64 = -1;
    v65 = -1 << *(v62 + 32);
    if (-v65 < 64)
    {
      v64 = ~(-1 << -v65);
    }

    v66 = v64 & *(v62 + 56);
    v67 = (63 - v65) >> 6;

    v68 = 0;
    while (v66)
    {
      v72 = v68;
LABEL_33:
      v73 = v32[19];
      v75 = v32[6];
      v74 = v32[7];
      v76 = v32[4];
      v77 = *(v102 + 72);
      v98 = *(v102 + 16);
      v98(v74, *(v62 + 48) + v77 * (__clz(__rbit64(v66)) | (v72 << 6)), v76);
      (*(v102 + 32))(v75, v74, v76);
      v78 = v73;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_2542209D4(v75);
      v81 = v25[2];
      v82 = (v80 & 1) == 0;
      v49 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v49)
      {
        goto LABEL_51;
      }

      v84 = v80;
      if (v25[3] >= v83)
      {
        v32 = v101;
        if ((v79 & 1) == 0)
        {
          v93 = result;
          sub_254223284();
          result = v93;
        }
      }

      else
      {
        v32 = v101;
        v85 = v101[6];
        sub_254221E34(v83, v79);
        result = sub_2542209D4(v85);
        if ((v84 & 1) != (v86 & 1))
        {
          goto LABEL_45;
        }
      }

      v66 &= v66 - 1;
      v87 = v32[6];
      v88 = v32[4];
      if (v84)
      {
        v69 = v25[7] + 16 * result;
        v70 = *v69;
        v71 = *(v69 + 8);
        *v69 = v100;
        *(v69 + 8) = 1;
        sub_2541A1114(v70, v71);
        result = (*v99)(v87, v88);
      }

      else
      {
        v25[(result >> 6) + 8] |= 1 << result;
        v89 = result;
        v98(v25[6] + result * v77, v87, v88);
        v90 = v25[7] + 16 * v89;
        *v90 = v100;
        *(v90 + 8) = 1;
        result = (*v99)(v87, v88);
        v91 = v25[2];
        v49 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v49)
        {
          goto LABEL_53;
        }

        v25[2] = v92;
      }

      v68 = v72;
      v63 = v62 + 56;
    }

    while (1)
    {
      v72 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v72 >= v67)
      {

        v94 = v32[1];

        return v94(v25);
      }

      v66 = *(v63 + 8 * v72);
      ++v68;
      if (v66)
      {
        goto LABEL_33;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static EventManager.ensureDigests(homeIdentifier:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25424D948();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_25424DAA8();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25421FA20, 0, 0);
}

uint64_t sub_25421FA20()
{
  v31 = v0;
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_25421B1A8(v0[12]);
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_25424DA88();
  v7 = sub_25424E448();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v14 = v0[3];
  v13 = v0[4];
  if (v8)
  {
    v29 = v0[8];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_25424EA58();
    v27 = v9;
    v18 = v17;
    v26 = v7;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_2542203C4(v16, v18, &v30);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_254124000, v6, v26, "Ensuring digests for home %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x259C07330](v28, -1, -1);
    MEMORY[0x259C07330](v15, -1, -1);

    v21 = *(v10 + 8);
    v21(v27, v29);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v21 = *(v10 + 8);
    v21(v9, v11);
  }

  v0[15] = v21;
  v0[16] = v19;
  v22 = v0[2];
  v23 = swift_task_alloc();
  v0[17] = v23;
  *(v23 + 16) = v22;
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_25421FCF0;

  return sub_2542199F4(sub_2542199F4, sub_254224E50, v23);
}

uint64_t sub_25421FCF0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_25422009C;
  }

  else
  {

    v2 = sub_25421FE0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25421FE0C()
{
  v26 = v0;
  v1 = v0[13];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  sub_25421B1A8(v0[11]);
  v1(v2, v4, v3);
  v5 = sub_25424DA88();
  v6 = sub_25424E448();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[15];
  v24 = v0[16];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[6];
  v12 = v0[3];
  if (v7)
  {
    v23 = v0[11];
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = v8;
    v15 = sub_25424EA58();
    v17 = v16;
    v24(v11, v12);
    v18 = sub_2542203C4(v15, v17, &v25);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_254124000, v5, v6, "Successfully ensured digests for home %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259C07330](v14, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v21(v23, v22);
  }

  else
  {

    v24(v11, v12);
    v8(v9, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_25422009C()
{
  v35 = v0;
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  sub_25421B1A8(v3);
  v2(v4, v6, v5);
  v7 = v1;
  v8 = sub_25424DA88();
  v9 = sub_25424E428();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v0[16];
    v30 = v0[19];
    v32 = v0[10];
    v33 = v0[15];
    v31 = v0[8];
    v10 = v0[5];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_2542250B0(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_25424EA58();
    v17 = v16;
    v29(v10, v11);
    v18 = sub_2542203C4(v15, v17, &v34);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2112;
    v19 = v30;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v20;
    *v13 = v20;
    _os_log_impl(&dword_254124000, v8, v9, "Failed to ensure digests for home %{mask.hash}s: %@", v12, 0x20u);
    sub_254132E5C(v13, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x259C07330](v14, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[10];
    v24 = v0[8];
    v25 = v0[5];
    v26 = v0[3];

    v21(v25, v26);
    v22(v23, v24);
  }

  swift_willThrow();

  v27 = v0[1];

  return v27();
}

unint64_t sub_2542203C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_254220490(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25414076C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_254220490(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25422059C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25424E708();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25422059C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2542205E8(a1, a2);
  sub_254220718(&unk_286632E48);
  return v3;
}

void *sub_2542205E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2541826A4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25424E708();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25424DDF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2541826A4(v10, 0);
        result = sub_25424E658();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254220718(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_254220804(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_254220804(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2542208F8(uint64_t a1)
{
  sub_25424E848();
  v2 = sub_25424DC18();

  return sub_254220A6C(a1, v2);
}

unint64_t sub_25422095C(uint64_t a1, uint64_t a2)
{
  sub_25424EBD8();
  sub_25424DD88();
  v4 = sub_25424EC28();

  return sub_254220C04(a1, a2, v4);
}

unint64_t sub_2542209D4(uint64_t a1)
{
  sub_25424D948();
  sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_25424DC18();

  return sub_254220CBC(a1, v2);
}

unint64_t sub_254220A6C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_25424E848();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_25424DC98();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_254220C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25424EAB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_254220CBC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2542250B0(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_25424DC98();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_254220E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25424E848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC058, &qword_254261C00);
  v39 = v4;
  result = sub_25424E888();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_25412DCA8((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_25414076C(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_25424DC18();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_25412DCA8(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25422121C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC060, &qword_254261C08);
  v37 = v4;
  result = sub_25424E888();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2542214DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25424D948();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF8, &qword_254261B98);
  v39 = v4;
  result = sub_25424E888();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25424DC18();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2542218B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
  v33 = v4;
  result = sub_25424E888();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_25412DC4C(v24, v34);
      }

      else
      {
        sub_254140708(v24, v34);
      }

      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25412DC4C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_254221B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC038, &qword_254261BE8);
  v33 = v4;
  result = sub_25424E888();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25412DCA8(v24, v34);
      }

      else
      {
        sub_25414076C(v24, v34);
      }

      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25412DCA8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_254221E34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25424D948();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
  v44 = v4;
  result = sub_25424E888();
  v10 = result;
  if (*(v8 + 16))
  {
    v49 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = v2;
    v41 = (v6 + 16);
    v42 = v8;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = result + 64;
    v18 = v45;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v43 + 72) * v25;
      v27 = 16 * v25;
      v47 = *(v43 + 72);
      v48 = v22;
      if (v44)
      {
        (*v46)(v18, v26, v49);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v30 = *(v28 + 8);
      }

      else
      {
        (*v41)(v18, v26, v49);
        v31 = *(v8 + 56) + v27;
        v29 = *v31;
        v30 = *(v31 + 8);
        sub_2541A1CE0(*v31, v30);
      }

      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25424DC18();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v45;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v46)(*(v10 + 48) + v47 * v19, v18, v49);
      v20 = *(v10 + 56) + 16 * v19;
      *v20 = v29;
      *(v20 + 8) = v30;
      ++*(v10 + 16);
      v8 = v42;
      v15 = v48;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_25422222C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25424D948();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC008, &qword_254261BA8);
  v47 = v4;
  result = sub_25424E888();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v46 = v9;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v9 + 48);
      v49 = *(v6 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v51);
        v30 = (*(v9 + 56) + (v27 << 6));
        v32 = *v30;
        v31 = v30[1];
        v33 = v30[3];
        v54 = v30[2];
        v55 = v33;
        v52 = v32;
        v53 = v31;
      }

      else
      {
        (*v44)(v50, v29, v51);
        sub_254132DF4(*(v9 + 56) + (v27 << 6), &v52, &qword_27F5BC010, &qword_254261BB0);
      }

      sub_2542250B0(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_25424DC18();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v9 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v11 + 48) + v49 * v19, v50, v51);
      v20 = (*(v11 + 56) + (v19 << 6));
      v22 = v54;
      v21 = v55;
      v23 = v53;
      *v20 = v52;
      v20[1] = v23;
      v20[2] = v22;
      v20[3] = v21;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_254222624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF0, &qword_254261B90);
  v35 = v4;
  result = sub_25424E888();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_25424EBD8();
      sub_25424DD88();
      result = sub_25424EC28();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_2542228C8()
{
  v1 = v0;
  v26 = sub_25424E848();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC058, &qword_254261C00);
  v3 = *v0;
  v4 = sub_25424E878();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_25414076C(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_25412DCA8(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_254222B4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC060, &qword_254261C08);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

char *sub_254222CC4()
{
  v1 = v0;
  v31 = sub_25424D948();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF8, &qword_254261B98);
  v3 = *v0;
  v4 = sub_25424E878();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_254222F38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_254140708(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25412DC4C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_2542230E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC038, &qword_254261BE8);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25414076C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25412DCA8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_254223284()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
  v5 = *v0;
  v6 = sub_25424E878();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = v25 + 16 * v20;
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = *(v30 + 56) + v26;
        v5 = v36;
        *v31 = v28;
        *(v31 + 8) = v29;
        result = sub_2541A1CE0(v28, v29);
        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_254223518()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  MEMORY[0x28223BE20](v2);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC008, &qword_254261BA8);
  v5 = *v0;
  v6 = sub_25424E878();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30[1] = v33 + 32;
    v30[2] = v33 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v32;
        v21 = v33;
        v23 = *(v33 + 72) * v20;
        v24 = v31;
        (*(v33 + 16))(v31, *(v5 + 48) + v23, v32);
        v20 <<= 6;
        sub_254132DF4(*(v5 + 56) + v20, v36, &qword_27F5BC010, &qword_254261BB0);
        v25 = v34;
        result = (*(v21 + 32))(*(v34 + 48) + v23, v24, v22);
        v26 = (*(v25 + 56) + v20);
        v28 = v36[2];
        v27 = v36[3];
        v29 = v36[1];
        *v26 = v36[0];
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    v7 = v34;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30[0];
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_2542237AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBFF0, &qword_254261B90);
  v2 = *v0;
  v3 = sub_25424E878();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

uint64_t sub_254223918(uint64_t a1, unint64_t a2)
{
  sub_254140660(a1, a2);
  sub_25420BFC8(a1, a2);
  v4 = sub_25424DD68();

  return v4;
}

uint64_t sub_254223984@<X0>(uint64_t *a3@<X8>)
{
  result = sub_25424DD68();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2542239C0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_25424DD68();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_25424DD68();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_25424D268();
  if (a1)
  {
    a1 = sub_25424D298();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_25424D268() || !__OFSUB__(v5, sub_25424D298()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_25424D288();
  return sub_25424DD68();
}

uint64_t sub_254223B6C(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8858, &qword_254252D30);
  return sub_25424E078();
}

uint64_t sub_254223BC0(uint64_t a1, _BYTE *a2)
{
  *(v2 + 24) = a1;
  v4 = sub_25424DAA8();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 112) = *a2;

  return MEMORY[0x2822009F8](sub_254223CA4, 0, 0);
}

void sub_254223CA4()
{
  v30 = v0;
  v1 = *(*(v0 + 24) + 16);
  if (v1)
  {
    sub_25421B1A8(*(v0 + 64));

    v2 = sub_25424DA88();
    v3 = sub_25424E448();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 112);
      v26 = *(v0 + 64);
      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29[0] = v8;
      *v7 = 134218242;
      *(v7 + 4) = v1;

      *(v7 + 12) = 2080;
      if (v4)
      {
        v9 = 0x646572616873;
      }

      else
      {
        v9 = 0x64656E776FLL;
      }

      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      v11 = sub_2542203C4(v9, v10, v29);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_254124000, v2, v3, "Writing %ld event(s) for %s scope", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x259C07330](v8, -1, -1);
      MEMORY[0x259C07330](v7, -1, -1);

      v12 = *(v5 + 8);
      v12(v26, v6);
    }

    else
    {
      v13 = *(v0 + 64);
      v14 = *(v0 + 32);
      v15 = *(v0 + 40);

      v12 = *(v15 + 8);
      v12(v13, v14);
    }

    *(v0 + 72) = v12;
    v16 = *(v0 + 24);
    v28 = MEMORY[0x277D84F90];
    sub_254148258(0, v1, 0);
    v17 = *(type metadata accessor for SomeEvent(0) - 8);
    v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v19 = *(v17 + 72);
    do
    {
      sub_25421D3E0(v18, (v0 + 16), v29);
      v20 = *v29;
      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        v27 = *v29;
        sub_254148258((v21 > 1), v22 + 1, 1);
        v20 = v27;
      }

      *(v0 + 80) = v28;
      *(v28 + 16) = v22 + 1;
      *(v28 + 16 * v22 + 32) = v20;
      v18 += v19;
      --v1;
    }

    while (v1);
    v23 = *(v0 + 112);
    v24 = swift_task_alloc();
    *(v0 + 88) = v24;
    *(v24 + 16) = v28;
    *(v24 + 24) = v23;
    v25 = swift_task_alloc();
    *(v0 + 96) = v25;
    *v25 = v0;
    v25[1] = sub_254224084;

    sub_2542199F4(sub_2542199F4, sub_254224FE4, v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254224084()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2542242D0;
  }

  else
  {

    v2 = sub_2542241A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2542241A8()
{
  sub_25421B1A8(v0[7]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully wrote event(s)", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[4];

  v4(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2542242D0()
{
  v1 = v0[13];
  v2 = v0[6];

  sub_25421B1A8(v2);
  v3 = v1;
  v4 = sub_25424DA88();
  v5 = sub_25424E428();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_254124000, v4, v5, "Failed to write event(s): %{public}@", v7, 0xCu);
    sub_254132E5C(v8, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v8, -1, -1);
    MEMORY[0x259C07330](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[6];
  v13 = v0[4];

  v11(v12, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_254224488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25424DAA8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254224564, 0, 0);
}

void sub_254224564()
{
  if (*(v0 + 32) < 1)
  {
    __break(1u);
  }

  else
  {
    sub_25421B1A8(*(v0 + 72));
    v2 = sub_25424DA88();
    v3 = sub_25424E448();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 32);
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_254124000, v2, v3, "Writing %ld fake event(s)", v5, 0xCu);
      MEMORY[0x259C07330](v5, -1, -1);
    }

    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 32);
    v13 = *(v0 + 16);

    v10 = *(v8 + 8);
    *(v0 + 80) = v10;
    *(v0 + 88) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *(v11 + 16) = v13;
    *(v11 + 32) = v9;
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_254224718;

    sub_2542199F4(sub_2542199F4, sub_254224FD8, v11);
  }
}

uint64_t sub_254224718()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_254224964;
  }

  else
  {

    v2 = sub_254224834;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_254224834()
{
  sub_25421B1A8(v0[8]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_254124000, v1, v2, "Successfully wrote %ld fake events", v4, 0xCu);
    MEMORY[0x259C07330](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[5];

  v5(v6, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_254224964()
{
  v1 = v0[14];
  v2 = v0[7];

  sub_25421B1A8(v2);
  v3 = v1;
  v4 = sub_25424DA88();
  v5 = sub_25424E428();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_254124000, v4, v5, "Failed to write fake event(s): %{public}@", v7, 0xCu);
    sub_254132E5C(v8, &unk_27F5BBED0, &qword_254253F80);
    MEMORY[0x259C07330](v8, -1, -1);
    MEMORY[0x259C07330](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[5];

  v11(v12, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

unint64_t sub_254224B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF88, &qword_25425CED8);
    v3 = sub_25424E898();
    v4 = a1 + 32;

    while (1)
    {
      sub_254132DF4(v4, &v13, &qword_27F5BAF48, &qword_25425CEA0);
      v5 = v13;
      v6 = v14;
      result = sub_25422095C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25412DC4C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_254224C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC018, &qword_254261BB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC020, &qword_254261BC0);
    v7 = sub_25424E898();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_254132DF4(v9, v5, &qword_27F5BC018, &qword_254261BB8);
      result = sub_2542209D4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25424D948();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_254224FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SomeEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254225054(uint64_t a1)
{
  v2 = type metadata accessor for SomeEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2542250B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2542250FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006CLL;
  v3 = 0x6C756E2F7665642FLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73746E657645;
    }

    else
    {
      v5 = 0x6C756E2F7665642FLL;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE90000000000006CLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1684893549;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000032;
    }

    else
    {
      v5 = 0xD00000000000001BLL;
    }

    if (v4 == 3)
    {
      v6 = 0x800000025424FC90;
    }

    else
    {
      v6 = 0x800000025424FCD0;
    }
  }

  if (a2 <= 1u)
  {
    v8 = 0xE600000000000000;
    v7 = 0x73746E657645;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v3;
    }

    else
    {
      v10 = v7;
    }

    if (v9)
    {
      v11 = v2;
    }

    else
    {
      v11 = v8;
    }

    if (v5 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0x800000025424FC90;
    v3 = 0xD000000000000032;
    v7 = 0xD00000000000001BLL;
    v8 = 0x800000025424FCD0;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE400000000000000;
  if (v5 != 1684893549)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v6 != v11)
  {
LABEL_30:
    v12 = sub_25424EAB8();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_25422527C(char a1, char a2)
{
  if (*&aD_2[8 * a1] == *&aD_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2542252E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7472617473;
    }

    else
    {
      v3 = 1701670760;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE300000000000000;
    v3 = 6581861;
  }

  else if (a1 == 3)
  {
    v3 = 0x69726F6765746163;
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x746E756F63;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7472617473;
    }

    else
    {
      v9 = 1701670760;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x69726F6765746163;
    v6 = 0xEA00000000007365;
    if (a2 != 3)
    {
      v5 = 0x746E756F63;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6581861;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25424EAB8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_254225450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7472617473;
  v6 = 0xE300000000000000;
  v7 = 6581861;
  if (a1 != 4)
  {
    v7 = 1936154996;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x617461646174656DLL;
  if (a1 != 1)
  {
    v9 = 1701869940;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x73746E657665;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7472617473)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6581861)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1936154996)
      {
LABEL_34:
        v13 = sub_25424EAB8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x617461646174656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x73746E657665)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2542255F8(char a1, char a2)
{
  if (*&aData_4[8 * a1] == *&aData_4[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254225660(char a1, char a2)
{
  if (*&aD_1[8 * a1] == *&aD_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2542256C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x74706D75736E6F63;
  v5 = 0xEB000000006E6F69;
  if (a1 != 5)
  {
    v4 = 0x69746375646F7270;
    v5 = 0xEA00000000006E6FLL;
  }

  v6 = 0xE800000000000000;
  v7 = 0x65636E6164697567;
  if (a1 != 3)
  {
    v7 = 0x6E6F6973736573;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x6574617473;
  if (a1 != 1)
  {
    v8 = 0x6C6576656CLL;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE500000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x6574617473)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6C6576656CLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701869940)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xEB000000006E6F69;
      if (v9 != 0x74706D75736E6F63)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEA00000000006E6FLL;
      if (v9 != 0x69746375646F7270)
      {
LABEL_39:
        v12 = sub_25424EAB8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x65636E6164697567)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E6F6973736573)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2542258F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6710895;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x656767756C706E75;
    }

    else
    {
      v6 = 0x64656767756C70;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE200000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 28271;
    }

    else
    {
      v6 = 6710895;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE300000000000000;
  v9 = 0x656767756C706E75;
  v10 = 0xE900000000000064;
  if (a2 != 2)
  {
    v9 = 0x64656767756C70;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 28271;
    v8 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25424EAB8();
  }

  return v13 & 1;
}

uint64_t sub_254225A1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x6E6F697461727564;
    if (a1 != 1)
    {
      v10 = 0x7942666669726174;
      v9 = 0xEE00796772656E45;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0x796772656E65;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0x800000025424FC20;
    v4 = 0xD000000000000015;
    if (a1 != 5)
    {
      v4 = 0x65636E6164697567;
      v3 = 0xE800000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025424FBE0;
    if (a1 != 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000025424FC00;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE800000000000000;
        if (v7 != 0x6E6F697461727564)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v11 = 0xEE00796772656E45;
        if (v7 != 0x7942666669726174)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v7 != 0x796772656E65)
      {
        goto LABEL_41;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x800000025424FC20;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v7 != 0x65636E6164697567)
      {
LABEL_41:
        v12 = sub_25424EAB8();
        goto LABEL_42;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0x800000025424FBE0;
    if (v7 != 0xD000000000000010)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v11 = 0x800000025424FC00;
    if (v7 != 0xD000000000000013)
    {
      goto LABEL_41;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_42:

  return v12 & 1;
}

uint64_t sub_254225C88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472617473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x74706D75736E6F63;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x74706D75736E6F63;
  v8 = 0xEB000000006E6F69;
  if (a2 != 2)
  {
    v7 = 0x69746375646F7270;
    v8 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 1701869940;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

uint64_t sub_254225DD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E6F6973736573;
    }

    else
    {
      v3 = 0x7472617473;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  else if (a1 == 3)
  {
    v3 = 0x74706D75736E6F63;
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v3 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E6F6973736573;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x74706D75736E6F63;
    v6 = 0xEB000000006E6F69;
    if (a2 != 3)
    {
      v5 = 0x69746375646F7270;
      v6 = 0xEA00000000006E6FLL;
    }

    if (a2 == 2)
    {
      v7 = 1701869940;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25424EAB8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_254225F60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74657366666FLL;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6E6F697461727564;
    if (a1 != 2)
    {
      v13 = 0x7942666669726174;
      v12 = 0xEE00796772656E45;
    }

    v14 = 0x796772656E65;
    if (!a1)
    {
      v14 = 0x74657366666FLL;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x800000025424FC20;
    v5 = 0xD000000000000015;
    v6 = 0xE500000000000000;
    v7 = 0x6C6576656CLL;
    if (a1 != 7)
    {
      v7 = 0x65636E6164697567;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xD000000000000010;
    v9 = 0x800000025424FBE0;
    if (a1 != 4)
    {
      v8 = 0xD000000000000013;
      v9 = 0x800000025424FC00;
    }

    if (a1 <= 5u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE800000000000000;
        if (v10 != 0x6E6F697461727564)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xEE00796772656E45;
        if (v10 != 0x7942666669726174)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    v15 = 0xE600000000000000;
    if (a2)
    {
      if (v10 != 0x796772656E65)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x800000025424FBE0;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0x800000025424FC00;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v15 = 0x800000025424FC20;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v15 = 0xE500000000000000;
      if (v10 != 0x6C6576656CLL)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v15 = 0xE800000000000000;
    v2 = 0x65636E6164697567;
  }

  if (v10 != v2)
  {
LABEL_49:
    v16 = sub_25424EAB8();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_254226238(uint64_t a1, unsigned __int8 a2)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226374(uint64_t a1, unsigned __int8 a2)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226494(uint64_t a1, unsigned __int8 a2)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254226574(uint64_t a1, char a2)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2542265D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      return 1;
    }
  }

  else if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254226694(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 1) != 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 72))
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 1) != 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      return 1;
    }
  }

  else if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return 0;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.tariffByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 73) = *(v1 + 89);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.tariffByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 73) = *(v1 + 185);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.cleanlinessByEnergy.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  *a1 = *(v1 + 208);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 240);
  result = *(v1 + 249);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.cleanlinessByDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = *(v1 + 272);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 304);
  result = *(v1 + 313);
  *(a1 + 41) = result;
  return result;
}

__n128 EnergyKit.LoadDailyDigestEvent.Value.init(energy:duration:tariffByEnergy:tariffByDuration:cleanlinessByEnergy:cleanlinessByDuration:didFollowGuidance:)@<Q0>(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  *&v16[39] = a4[2];
  *&v16[55] = a4[3];
  *&v16[71] = a4[4];
  *&v16[80] = *(a4 + 73);
  *&v16[7] = *a4;
  *&v16[23] = a4[1];
  *&v15[48] = *(a5 + 41);
  *&v15[39] = a5[2];
  *&v15[23] = a5[1];
  *&v15[7] = *a5;
  *&v14[48] = *(a6 + 41);
  *&v14[39] = a6[2];
  *&v14[23] = a6[1];
  *&v14[7] = *a6;
  *a8 = *a1;
  *(a8 + 8) = v8;
  v9 = a3[1];
  *(a8 + 16) = *a3;
  *(a8 + 32) = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[4];
  *(a8 + 89) = *(a3 + 73);
  *(a8 + 64) = v11;
  *(a8 + 80) = v12;
  *(a8 + 48) = v10;
  *(a8 + 121) = *&v16[16];
  *(a8 + 105) = *v16;
  *(a8 + 185) = *&v16[80];
  *(a8 + 169) = *&v16[64];
  *(a8 + 153) = *&v16[48];
  *(a8 + 137) = *&v16[32];
  *(a8 + 249) = *&v15[48];
  *(a8 + 233) = *&v15[32];
  *(a8 + 217) = *&v15[16];
  *(a8 + 201) = *v15;
  result = *v14;
  *(a8 + 297) = *&v14[32];
  *(a8 + 313) = *&v14[48];
  *(a8 + 265) = *v14;
  *(a8 + 281) = *&v14[16];
  *(a8 + 329) = a7;
  return result;
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  MEMORY[0x259C06AA0](v1);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v2);
  MEMORY[0x259C06AA0](v1);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  sub_25424EBF8();
  return sub_25424EC28();
}

uint64_t sub_254226B6C()
{
  v1 = v0[1];
  MEMORY[0x259C06AA0](*v0);
  MEMORY[0x259C06AA0](v1);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  return sub_25424EBF8();
}

uint64_t sub_254226C70(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_25424EBD8();
  MEMORY[0x259C06AA0](v3);
  MEMORY[0x259C06AA0](v2);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  sub_25424EBF8();
  return sub_25424EC28();
}

void *EnergyKit.LoadDailyDigestEvent.init(dateInterval:homeIdentifier:siteIdentifier:sourceIdentifier:deviceIdentifier:loadType:consumption:production:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, const void *a10, const void *a11)
{
  v34 = *a8;
  sub_25424D1D8();
  v15 = type metadata accessor for EventBase(0);
  v16 = v15[5];
  v17 = sub_25424D948();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(a9 + v16, a2, v17);
  v20 = type metadata accessor for EnergyKit.EventBase(0);
  v19(a9 + v20[5], a3, v17);
  *(a9 + v15[6]) = 5;
  v21 = (a9 + v15[7]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 15;
  v22 = (a9 + v20[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + v20[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = a9 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  sub_25424D1F8();
  v25 = *(v18 + 8);
  v25(a3, v17);
  v25(a2, v17);
  v26 = sub_25424D218();
  (*(*(v26 - 8) + 8))(a1, v26);
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  *(v24 + DailyDigestEventV5StateVMa[5]) = v34;
  memcpy((v24 + DailyDigestEventV5StateVMa[6]), a10, 0x14AuLL);
  v28 = (v24 + DailyDigestEventV5StateVMa[7]);

  return memcpy(v28, a11, 0x14AuLL);
}

uint64_t EnergyKit.LoadDailyDigestEvent.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  sub_254229BBC(v1 + *(DailyDigestEvent + 20), v5);
  v7 = sub_25424D8B8();
  return (*(*(v7 - 8) + 32))(a1, v5, v7);
}

uint64_t EnergyKit.LoadDailyDigestEvent.loadType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  result = _s20LoadDailyDigestEventV5StateVMa(0);
  *a1 = *(v3 + *(result + 20));
  return result;
}

void *EnergyKit.LoadDailyDigestEvent.consumption.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v4 = (v3 + *(_s20LoadDailyDigestEventV5StateVMa(0) + 24));

  return memcpy(a1, v4, 0x14AuLL);
}

void *EnergyKit.LoadDailyDigestEvent.production.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v4 = (v3 + *(_s20LoadDailyDigestEventV5StateVMa(0) + 28));

  return memcpy(a1, v4, 0x14AuLL);
}

uint64_t EnergyKit.LoadDailyDigestEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v6 = MEMORY[0x28223BE20](DailyDigestEventV5StateVMa - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = type metadata accessor for EnergyKit.EventBase(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  sub_254137EE4(v14, v8, a1);
  if (!v2)
  {
    sub_254229C20(v14, v16, type metadata accessor for EnergyKit.EventBase);
    sub_254229C20(v8, v10, _s20LoadDailyDigestEventV5StateVMa);
    v17 = *(type metadata accessor for EventBase(0) + 24);
    if (v16[v17] == 5)
    {
      sub_254229C20(v16, a2, type metadata accessor for EnergyKit.EventBase);
      DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
      sub_254229C20(v10, a2 + *(DailyDigestEvent + 20), _s20LoadDailyDigestEventV5StateVMa);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_25424E688();
      MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
      MEMORY[0x259C05CA0](0xD000000000000014, 0x8000000254261BF0);
      MEMORY[0x259C05CA0](0xD000000000000020, 0x80000002542503C0);
      v22 = v16[v17];
      sub_25424E7D8();
      sub_25424E6F8();
      swift_allocError();
      static DecodingError.dataCorruptedError<A>(_:_:)(v19);

      swift_willThrow();
      sub_254229C88(v10, _s20LoadDailyDigestEventV5StateVMa);
      sub_254229C88(v16, type metadata accessor for EnergyKit.EventBase);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EnergyKit.LoadDailyDigestEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v23 = *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  v7 = sub_25424D8B8();
  (*(*(v7 - 8) + 16))(v6, v1, v7);
  v8 = type metadata accessor for EventBase(0);
  v9 = *(v8 + 20);
  v10 = v4[13];
  v11 = sub_25424D948();
  v12 = *(*(v11 - 8) + 16);
  v12(&v6[v10], v2 + v9, v11);
  LOBYTE(v10) = *(v2 + *(v8 + 24));
  v13 = type metadata accessor for EnergyKit.EventBase(0);
  v12(&v6[v4[15]], v2 + v13[5], v11);
  v14 = v13[7];
  v15 = (v2 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  v19 = *(v2 + v14);
  v18 = *(v2 + v14 + 8);
  sub_254229BBC(v2 + v23, &v6[v4[18]]);
  v6[v4[14]] = v10;
  v20 = &v6[v4[16]];
  *v20 = v16;
  *(v20 + 1) = v17;
  v21 = &v6[v4[17]];
  *v21 = v19;
  *(v21 + 1) = v18;

  sub_25413C688(v24);
  return sub_254229CE8(v6);
}

uint64_t sub_25422767C(void *a1, uint64_t a2)
{
  v4 = v2;
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v25 = *(a2 + 20);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v6[13];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v8[v12], v4 + v11, v13);
  LOBYTE(v12) = *(v4 + *(v10 + 24));
  v15 = type metadata accessor for EnergyKit.EventBase(0);
  v14(&v8[v6[15]], v4 + v15[5], v13);
  v16 = v15[7];
  v17 = (v4 + v15[6]);
  v18 = *v17;
  v19 = v17[1];
  v21 = *(v4 + v16);
  v20 = *(v4 + v16 + 8);
  sub_254229BBC(v4 + v25, &v8[v6[18]]);
  v8[v6[14]] = v12;
  v22 = &v8[v6[16]];
  *v22 = v18;
  *(v22 + 1) = v19;
  v23 = &v8[v6[17]];
  *v23 = v21;
  *(v23 + 1) = v20;

  sub_25413C688(v26);
  return sub_254229CE8(v8);
}

uint64_t EnergyKit.LoadDailyDigestEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t EnergyKit.LoadDailyDigestEvent.hash(into:)(uint64_t a1)
{
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v2 = type metadata accessor for EventBase(0);
  sub_25424D948();
  sub_25422A050(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254262248[*(v1 + *(v2 + 24))]);
  type metadata accessor for EnergyKit.EventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DD88();
  v3 = v1 + *(type metadata accessor for EnergyKit.LoadDailyDigestEvent(0) + 20);
  sub_25424DC28();
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  sub_25424DD88();

  v5 = (v3 + *(DailyDigestEventV5StateVMa + 24));
  v6 = v5[1];
  MEMORY[0x259C06AA0](*v5);
  MEMORY[0x259C06AA0](v6);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  sub_25424EBF8();
  v7 = (v3 + *(DailyDigestEventV5StateVMa + 28));
  v8 = v7[1];
  MEMORY[0x259C06AA0](*v7);
  MEMORY[0x259C06AA0](v8);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  return sub_25424EBF8();
}

uint64_t EnergyKit.LoadDailyDigestEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.LoadDailyDigestEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.LoadDailyDigestEvent.sourceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyKit.EventBase(0) + 24));

  return v1;
}

uint64_t EnergyKit.LoadDailyDigestEvent.deviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for EnergyKit.EventBase(0) + 28));

  return v1;
}

uint64_t sub_254227D78(uint64_t a1)
{
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  sub_25424DD88();

  v3 = (v1 + *(DailyDigestEventV5StateVMa + 24));
  v4 = v3[1];
  MEMORY[0x259C06AA0](*v3);
  MEMORY[0x259C06AA0](v4);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  sub_25424EBF8();
  v5 = (v1 + *(DailyDigestEventV5StateVMa + 28));
  v6 = v5[1];
  MEMORY[0x259C06AA0](*v5);
  MEMORY[0x259C06AA0](v6);
  sub_254205DD4();
  sub_254205DD4();
  sub_254205DD0();
  sub_254205DD0();
  return sub_25424EBF8();
}

uint64_t sub_254228028(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC108, &qword_254262070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A710();
  sub_25424EC78();
  v13[0] = 0;
  sub_25424D8B8();
  sub_25422A050(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
    v13[359] = *(v3 + DailyDigestEventV5StateVMa[5]);
    v13[358] = 1;
    sub_25413EF3C();
    sub_25424EA18();
    memcpy(v13, (v3 + DailyDigestEventV5StateVMa[6]), 0x14AuLL);
    v13[357] = 2;
    sub_25422A7B8();
    sub_25424EA18();
    memcpy(v12, (v3 + DailyDigestEventV5StateVMa[7]), sizeof(v12));
    v13[356] = 3;
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2542282A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_25424D8B8();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC0F0, &qword_254262068);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v18 - v5;
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A710();
  v25 = v6;
  v10 = v26;
  sub_25424EC68();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v21;
  v12 = v22;
  v26 = a1;
  v13 = v9;
  v28[0] = 0;
  sub_25422A050(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v14 = v23;
  sub_25424E978();
  v15 = *(v12 + 32);
  v19 = v13;
  v15(v13, v24, v3);
  v27[0] = 1;
  sub_25413F0F8();
  sub_25424E978();
  *(v19 + DailyDigestEventV5StateVMa[5]) = v28[0];
  v28[359] = 2;
  sub_25422A764();
  sub_25424E978();
  memcpy((v19 + DailyDigestEventV5StateVMa[6]), v28, 0x14AuLL);
  v28[358] = 3;
  sub_25424E978();
  (*(v11 + 8))(v25, v14);
  v16 = v19;
  memcpy((v19 + DailyDigestEventV5StateVMa[7]), v27, 0x14AuLL);
  sub_254229BBC(v16, v20);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_254229C88(v16, _s20LoadDailyDigestEventV5StateVMa);
}

uint64_t sub_254228700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254228764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t sub_2542287B8()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_25422887C(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_25422892C(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_2542289EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25422A678(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_254228A1C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472617473;
  v4 = 0xEB000000006E6F69;
  v5 = 0x74706D75736E6F63;
  if (*v1 != 2)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_254228A9C()
{
  v1 = 0x7472617473;
  v2 = 0x74706D75736E6F63;
  if (*v0 != 2)
  {
    v2 = 0x69746375646F7270;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_254228B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25422A678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254228B40(uint64_t a1)
{
  v2 = sub_25422A710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254228B7C(uint64_t a1)
{
  v2 = sub_25422A710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254228C00(uint64_t a1)
{
  sub_25424DD88();
}

unint64_t sub_254228D30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25422A6C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_254228D60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE600000000000000;
    v9 = 0xE800000000000000;
    v10 = 0x6E6F697461727564;
    if (v2 != 1)
    {
      v10 = 0x7942666669726174;
      v9 = 0xEE00796772656E45;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x796772656E65;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000025424FC20;
    v4 = 0xD000000000000015;
    if (v2 != 5)
    {
      v4 = 0x65636E6164697567;
      v3 = 0xE800000000000000;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000025424FBE0;
    if (v2 != 3)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000025424FC00;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_254228E5C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E6F697461727564;
    if (v1 != 1)
    {
      v5 = 0x7942666669726174;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x796772656E65;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x65636E6164697567;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_254228F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25422A6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254228F78(uint64_t a1)
{
  v2 = sub_25422A098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254228FB4(uint64_t a1)
{
  v2 = sub_25422A098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC068, &qword_254261C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *v3;
  v18 = v3[1];
  v23 = *(v3 + 329);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25422A098();
  sub_25424EC78();
  *&v19 = v9;
  v24 = 0;
  sub_25413ECF0();
  sub_25424EA18();
  if (!v2)
  {
    *&v19 = v18;
    v24 = 1;
    sub_2541F7C5C();
    sub_25424EA18();
    v10 = *(v3 + 4);
    *v21 = *(v3 + 3);
    *&v21[16] = v10;
    v22[0] = *(v3 + 5);
    *(v22 + 9) = *(v3 + 89);
    v11 = *(v3 + 2);
    v19 = *(v3 + 1);
    v20 = v11;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    sub_25414081C(&qword_27F5BBA38, &qword_27F5BBA30, &qword_254260088, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424EA18();
    v12 = *(v3 + 10);
    *v21 = *(v3 + 9);
    *&v21[16] = v12;
    v22[0] = *(v3 + 11);
    *(v22 + 9) = *(v3 + 185);
    v13 = *(v3 + 8);
    v19 = *(v3 + 7);
    v20 = v13;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    sub_25414081C(&qword_27F5BBA48, &qword_27F5BBA40, &qword_254260090, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424EA18();
    v14 = *(v3 + 14);
    v19 = *(v3 + 13);
    v20 = v14;
    *v21 = *(v3 + 15);
    *&v21[9] = *(v3 + 249);
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    sub_25414081C(&qword_27F5BBA58, &qword_27F5BBA50, &qword_254260098, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424EA18();
    v15 = *(v3 + 18);
    v19 = *(v3 + 17);
    v20 = v15;
    *v21 = *(v3 + 19);
    *&v21[9] = *(v3 + 313);
    v24 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    sub_25414081C(&qword_27F5BBA68, &qword_27F5BBA60, &qword_2542600A0, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424EA18();
    LOBYTE(v19) = 6;
    sub_25424E9E8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t EnergyKit.LoadDailyDigestEvent.Value.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BC078, &qword_254261C38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_25422A098();
  sub_25424EC68();
  if (!v2)
  {
    v28 = a2;
    LOBYTE(v39) = 0;
    sub_25413EE40();
    sub_25424E978();
    v10 = v45;
    LOBYTE(v39) = 1;
    sub_2541F7C08();
    sub_25424E978();
    v26 = v45;
    v27 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA30, &qword_254260088);
    v44 = 2;
    sub_25414081C(&qword_27F5BBA80, &qword_27F5BBA30, &qword_254260088, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424E978();
    v55 = v47;
    v56 = v48;
    v57[0] = v49[0];
    *(v57 + 9) = *(v49 + 9);
    v53 = v45;
    v54 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA40, &qword_254260090);
    v38 = 3;
    sub_25414081C(&qword_27F5BBA88, &qword_27F5BBA40, &qword_254260090, &protocol conformance descriptor for EnergyKit.TariffPeak<A>);
    sub_25424E978();
    *(&v52[2] + 7) = v41;
    *(&v52[3] + 7) = v42;
    *(&v52[4] + 7) = *v43;
    v52[5] = *&v43[9];
    *(v52 + 7) = v39;
    *(&v52[1] + 7) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA50, &qword_254260098);
    v34 = 4;
    sub_25414081C(&qword_27F5BBA90, &qword_27F5BBA50, &qword_254260098, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424E978();
    *(v51 + 7) = v35;
    *(&v51[1] + 7) = v36;
    *(&v51[2] + 7) = *v37;
    v51[3] = *&v37[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BBA60, &qword_2542600A0);
    v30 = 5;
    sub_25414081C(&qword_27F5BBA98, &qword_27F5BBA60, &qword_2542600A0, &protocol conformance descriptor for EnergyKit.GridCleanliness<A>);
    sub_25424E978();
    *(v50 + 7) = v31;
    *(&v50[1] + 7) = v32;
    *(&v50[2] + 7) = *v33;
    v50[3] = *&v33[9];
    v29 = 6;
    v12 = sub_25424E948();
    (*(v6 + 8))(v8, v5);
    v13 = v28;
    v14 = v26;
    *v28 = v27;
    v13[1] = v14;
    v15 = v56;
    *(v13 + 3) = v55;
    *(v13 + 4) = v15;
    *(v13 + 5) = v57[0];
    *(v13 + 89) = *(v57 + 9);
    v16 = v54;
    *(v13 + 1) = v53;
    *(v13 + 2) = v16;
    v17 = v52[1];
    *(v13 + 105) = v52[0];
    *(v13 + 121) = v17;
    v18 = v52[2];
    v19 = v52[3];
    v20 = v52[4];
    *(v13 + 185) = v52[5];
    *(v13 + 169) = v20;
    *(v13 + 153) = v19;
    *(v13 + 137) = v18;
    v21 = v51[2];
    *(v13 + 249) = v51[3];
    v22 = v51[1];
    *(v13 + 201) = v51[0];
    *(v13 + 217) = v22;
    *(v13 + 233) = v21;
    v23 = v50[0];
    v24 = v50[1];
    v25 = v50[3];
    *(v13 + 297) = v50[2];
    *(v13 + 313) = v25;
    *(v13 + 265) = v23;
    *(v13 + 281) = v24;
    *(v13 + 329) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}