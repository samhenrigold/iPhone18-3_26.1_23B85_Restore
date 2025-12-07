uint64_t sub_22F9097E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F909818()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F909864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F9098B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F909900()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F909948()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F90998C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F909A04()
{
  v0 = sub_22F989A20();
  __swift_allocate_value_buffer(v0, qword_27DAD1918);
  __swift_project_value_buffer(v0, qword_27DAD1918);
  return sub_22F989A10();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_22F909B20@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PublicEventShazamQueryHelper.__allocating_init(with:isSimulatingTimeout:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return PublicEventShazamQueryHelper.init(with:isSimulatingTimeout:)(a1, v2);
}

id PublicEventShazamQueryHelper.init(with:isSimulatingTimeout:)(uint64_t a1, char a2)
{
  swift_defaultActor_initialize();
  sub_22F989A10();
  *&v2[OBJC_IVAR___CLSPublicEventShazamQueryHelper_timeoutInterval] = 0x4024000000000000;
  *&v2[OBJC_IVAR___CLSPublicEventShazamQueryHelper_numberOfRetries] = 7;
  v2[OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel] = 0;
  *&v2[OBJC_IVAR___CLSPublicEventShazamQueryHelper_query] = a1;
  v2[OBJC_IVAR___CLSPublicEventShazamQueryHelper_isSimulatingTimeout] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PublicEventShazamQueryHelper(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for PublicEventShazamQueryHelper(uint64_t a1)
{
  result = qword_28148AB80;
  if (!qword_28148AB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F909CFC(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84F98];
  v3[3] = v2;
  v3[2] = v6;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_22F909DB8;

  return sub_22F90AE84((v3 + 2), a1, a2);
}

uint64_t sub_22F909DB8(char a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 40) = v2;

  v7 = *(v6 + 24);
  if (v2)
  {

    v8 = sub_22F909F34;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1 & 1;

    v8 = sub_22F909F14;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22F90A0E4(const void *a1, const void *a2, uint64_t a3)
{
  v3[3] = a3;
  v6 = _Block_copy(a1);
  v3[4] = v6;
  v3[5] = _Block_copy(a2);
  _Block_copy(v6);

  v3[2] = MEMORY[0x277D84F98];
  v7 = swift_task_alloc();
  v3[6] = v7;
  *v7 = v3;
  v7[1] = sub_22F90A1DC;

  return sub_22F90EDD0((v3 + 2), a3, v6);
}

uint64_t sub_22F90A1DC(char a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 56) = v2;

  v7 = *(v6 + 32);
  v8 = *(v6 + 24);
  if (v2)
  {
    _Block_release(v7);

    v9 = sub_22F90A3FC;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1 & 1;
    _Block_release(v7);

    v9 = sub_22F90A354;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22F90A354()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  _Block_release(v4);
  v3[2](v3, v1, 0, v2);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22F90A3FC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  _Block_release(v3);
  v4 = sub_22F989420();

  (v2)[2](v2, 0, v4, 0);
  _Block_release(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22F90A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990, &qword_22F991DD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_22F989BE0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_22F90A944(0, 0, v12, &unk_22F991DE8, v14);
}

uint64_t sub_22F90A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = MEMORY[0x277D84F98];
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = v11;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_22F90A6B8;

  return sub_22F90AE84((v8 + 2), a5, a6);
}

uint64_t sub_22F90A6B8(char a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_22F90A8A0;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1 & 1;
    v7 = sub_22F90A7F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F90A7F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  swift_unknownObjectRetain();
  v3(v1, 0, v2, v4);

  swift_unknownObjectRelease_n();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22F90A8A0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  v4 = v1;
  v2(0, v1, 0, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F90A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990, &qword_22F991DD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22F910E7C(a3, v25 - v10);
  v12 = sub_22F989BE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22F910EEC(v11, &qword_27DAD1990, &qword_22F991DD0);
  }

  else
  {
    sub_22F989BD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22F989BA0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22F989AD0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22F910EEC(a3, &qword_27DAD1990, &qword_22F991DD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22F910EEC(a3, &qword_27DAD1990, &qword_22F991DD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_22F90ADC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_22F989420();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22F989AA0();
  (*(a5 + 16))(a5, a1 & 1, v8, a3, v9);
}

uint64_t sub_22F90AE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_22F989BB0();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AC0, &unk_22F991F00);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_22F989660();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v7 = sub_22F989970();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v8 = sub_22F989A20();
  v4[34] = v8;
  v4[35] = *(v8 - 8);
  v4[36] = swift_task_alloc();
  v9 = sub_22F9899A0();
  v4[37] = v9;
  v4[38] = *(v9 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F90B16C, v3, 0);
}

uint64_t sub_22F90B16C()
{
  v30 = v0;
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 136);
  v5 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  *(v0 + 320) = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  (*(v1 + 16))(v2, v4 + v5, v3);
  sub_22F989980();
  sub_22F989960();
  v6 = sub_22F989990();
  v7 = sub_22F989C60();
  if (sub_22F989CB0())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22F989950();
    _os_signpost_emit_with_name_impl(&dword_22F907000, v6, v7, v9, "PublicEventShazamQueryHelper.launchPublicEventQuery", "", v8, 2u);
    MEMORY[0x231904DE0](v8, -1, -1);
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v12 = *(v0 + 240);
  v13 = *(v0 + 248);
  v14 = *(v0 + 136);

  (*(v13 + 16))(v10, v11, v12);
  sub_22F9899E0();
  swift_allocObject();
  *(v0 + 328) = sub_22F9899D0();
  (*(v13 + 8))(v11, v12);
  v15 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel;
  *(v14 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel) = 0;
  v16 = sub_22F989A00();
  v17 = sub_22F989C40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22F907000, v16, v17, "PublicEventShazamQueryHelper.launchPublicEventQuery", v18, 2u);
    MEMORY[0x231904DE0](v18, -1, -1);
  }

  v19 = *(v0 + 120);

  *(v0 + 392) = 0;
  v19(v0 + 392);
  if (*(v0 + 392) & 1) != 0 || (*(v14 + v15))
  {

    v20 = sub_22F989A00();
    v21 = sub_22F989C20();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      swift_beginAccess();
      *(v22 + 4) = *(v0 + 392);
      *(v22 + 8) = 1024;
      *(v22 + 10) = *(v14 + v15);

      _os_log_impl(&dword_22F907000, v20, v21, "PublicEventShazamQueryHelper - cancelled, stop: %{BOOL}d, shouldCancel: %{BOOL}d", v22, 0xEu);
      MEMORY[0x231904DE0](v22, -1, -1);
    }

    else
    {
    }

    v29[3] = sub_22F910D8C();
    v29[0] = sub_22F989C80();
    sub_22F90D1F0(v29, 0x4574736575716572, 0xEC000000726F7272);
    sub_22F910E24(&qword_27DAD1AE8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_22F989A90();
    swift_willThrow();
    v23 = *(v0 + 304);
    v24 = *(v0 + 312);
    v25 = *(v0 + 296);
    sub_22F90CF54(v24, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, *(v0 + 328));

    (*(v23 + 8))(v24, v25);

    v26 = *(v0 + 8);

    return v26(0);
  }

  else
  {
    *(v0 + 336) = *(*(v0 + 136) + OBJC_IVAR___CLSPublicEventShazamQueryHelper_query);
    v28 = swift_task_alloc();
    *(v0 + 344) = v28;
    *v28 = v0;
    v28[1] = sub_22F90B6C4;

    return sub_22F91365C();
  }
}

uint64_t sub_22F90B6C4(uint64_t a1)
{
  v4 = *v2;
  v4[44] = v1;

  v5 = v4[17];
  if (v1)
  {
    v6 = sub_22F90C120;
  }

  else
  {
    v4[45] = a1;
    v6 = sub_22F90B82C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F90B82C()
{
  v22 = v0;
  v21[4] = *MEMORY[0x277D85DE8];
  v21[3] = sub_22F910D8C();
  v21[0] = sub_22F989C70();
  sub_22F90D1F0(v21, 0x6375536863746162, 0xEE00646564656563);
  v1 = v0[45];
  v0[46] = v1;
  v2 = v1;
  v3 = sub_22F989A00();
  v4 = sub_22F989C10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
    swift_beginAccess();
    *(v5 + 4) = (*(&v2->isa + v6))[2];

    _os_log_impl(&dword_22F907000, v3, v4, "updatedQuery has %ld resolved requests", v5, 0xCu);
    MEMORY[0x231904DE0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  v7 = v0[17];

  if (*(v7 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_isSimulatingTimeout) == 1)
  {
    v8 = swift_task_alloc();
    v0[47] = v8;
    *v8 = v0;
    v8[1] = sub_22F90BC14;

    return sub_22F90E7BC();
  }

  else
  {
    v10 = v0[46];
    v11 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
    swift_beginAccess();
    v12 = *(*(v10 + v11) + 16);
    if (v12)
    {
      v13 = sub_22F989A00();
      v14 = sub_22F989C20();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v12;
        _os_log_impl(&dword_22F907000, v13, v14, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v15, 0xCu);
        MEMORY[0x231904DE0](v15, -1, -1);
      }
    }

    v16 = v0[38];
    v17 = v0[39];
    v18 = v0[37];
    sub_22F90CF54(v17, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[41]);

    (*(v16 + 8))(v17, v18);

    v19 = v0[1];
    v20 = v0[46];

    return v19(1, v20);
  }
}

uint64_t sub_22F90BC14()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_22F90BF98;
  }

  else
  {
    v4 = sub_22F90BD6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F90BD6C()
{
  v1 = v0[46];
  v2 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  if (v3)
  {
    v4 = sub_22F989A00();
    v5 = sub_22F989C20();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22F907000, v4, v5, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v6, 0xCu);
      MEMORY[0x231904DE0](v6, -1, -1);
    }
  }

  v7 = v0[38];
  v8 = v0[39];
  v9 = v0[37];
  sub_22F90CF54(v8, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[41]);

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];
  v11 = v0[46];

  return v10(1, v11);
}

uint64_t sub_22F90BF98()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  sub_22F90CF54(v2, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, *(v0 + 328));

  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22F90C120()
{
  v97 = v0;
  v96 = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[24];
  v4 = sub_22F910D8C();
  v5 = v2;
  v93 = v4;
  v95 = v4;
  v94[0] = sub_22F989C70();
  sub_22F90D1F0(v94, 0x6375536863746162, 0xEE00646564656563);
  v0[11] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AD0, &qword_22F992090);
  v7 = swift_dynamicCast();
  v8 = *(v3 + 56);
  if (v7)
  {
    v10 = v0[28];
    v9 = v0[29];
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[22];
    v8(v13, 0, 1, v12);
    (*(v11 + 32))(v9, v13, v12);
    (*(v11 + 16))(v10, v9, v12);
    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D54E98])
    {
      v14 = v0[28];
      (*(v0[24] + 96))(v14, v0[23]);
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_22F989A00();
      v18 = sub_22F989C20();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v94[0] = v20;
        *v19 = 136315138;
        v21 = sub_22F916FA0(v16, v15, v94);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_22F907000, v17, v18, "PublicEventShazamQueryHelper - received recoverable error partialEventRequestFailed for request %s, abandoning this batch without throwing.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x231904DE0](v20, -1, -1);
        MEMORY[0x231904DE0](v19, -1, -1);
      }

      else
      {
      }

      v56 = v0[44];
      v57 = v0[29];
      v59 = v0[23];
      v58 = v0[24];
      v60 = sub_22F989C80();
      v95 = v93;
      v94[0] = v60;
      sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);

      (*(v58 + 8))(v57, v59);
      v61 = v0[42];
      v0[46] = v61;
      v62 = v61;
      v63 = sub_22F989A00();
      v64 = sub_22F989C10();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134217984;
        v66 = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
        swift_beginAccess();
        *(v65 + 4) = (*(&v62->isa + v66))[2];

        _os_log_impl(&dword_22F907000, v63, v64, "updatedQuery has %ld resolved requests", v65, 0xCu);
        MEMORY[0x231904DE0](v65, -1, -1);
      }

      else
      {

        v63 = v62;
      }

      v67 = v0[17];

      if (*(v67 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_isSimulatingTimeout) == 1)
      {
        v68 = swift_task_alloc();
        v0[47] = v68;
        *v68 = v0;
        v68[1] = sub_22F90BC14;

        return sub_22F90E7BC();
      }

      else
      {
        v70 = v0[46];
        v71 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
        swift_beginAccess();
        v72 = *(*(v70 + v71) + 16);
        if (v72)
        {
          v73 = sub_22F989A00();
          v74 = sub_22F989C20();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 134217984;
            *(v75 + 4) = v72;
            _os_log_impl(&dword_22F907000, v73, v74, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v75, 0xCu);
            MEMORY[0x231904DE0](v75, -1, -1);
          }
        }

        v76 = v0[38];
        v77 = v0[39];
        v78 = v0[37];
        sub_22F90CF54(v77, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[41]);

        (*(v76 + 8))(v77, v78);

        v79 = v0[1];
        v80 = v0[46];

        return v79(1, v80);
      }
    }

    v23 = v0[28];
    v24 = v0[23];
    v25 = *(v0[24] + 8);
    v25(v0[29], v24);
    v25(v23, v24);
  }

  else
  {
    v22 = v0[22];
    v8(v22, 1, 1, v0[23]);
    sub_22F910EEC(v22, &qword_27DAD1AC0, &unk_22F991F00);
  }

  v26 = v0[44];
  v0[12] = v26;
  v27 = v26;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = v0[21];
    v8(v42, 1, 1, v0[23]);
    sub_22F910EEC(v42, &qword_27DAD1AC0, &unk_22F991F00);
LABEL_13:
    v43 = v0[44];
    v0[13] = v43;
    v44 = v43;
    if (swift_dynamicCast())
    {
      (*(v0[19] + 8))(v0[20], v0[18]);
      v45 = sub_22F989C80();
      v95 = v93;
      v94[0] = v45;
      sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);
    }

    v46 = v0[44];
    v47 = v46;
    v48 = sub_22F989A00();
    v49 = sub_22F989C20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[44];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v50;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_22F907000, v48, v49, "PublicEventShazamQueryHelper - failed to submit query: %@", v51, 0xCu);
      sub_22F910EEC(v52, &qword_27DAD1AD8, &qword_22F991F10);
      MEMORY[0x231904DE0](v52, -1, -1);
      MEMORY[0x231904DE0](v51, -1, -1);
    }

    v55 = v0[42];

    swift_willThrow();
    goto LABEL_35;
  }

  v29 = v0[26];
  v28 = v0[27];
  v30 = v0[23];
  v31 = v0[24];
  v32 = v0[21];
  v8(v32, 0, 1, v30);
  (*(v31 + 32))(v28, v32, v30);
  (*(v31 + 104))(v29, *MEMORY[0x277D54EA0], v30);
  LOBYTE(v28) = MEMORY[0x2319037E0](v28, v29);
  v33 = *(v31 + 8);
  v33(v29, v30);
  if ((v28 & 1) == 0)
  {
    v33(v0[27], v0[23]);
    goto LABEL_13;
  }

  v92 = *(v0[24] + 16);
  v92(v0[25], v0[27], v0[23]);
  v34 = sub_22F989A00();
  v35 = sub_22F989C20();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[25];
  v38 = v0[23];
  if (v36)
  {
    v39 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v39 = 138412290;
    sub_22F910E24(&qword_27DAD1AE0, MEMORY[0x277D54EB0], MEMORY[0x277D54EB8]);
    swift_allocError();
    v92(v40, v37, v38);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v33(v37, v38);
    *(v39 + 4) = v41;
    *v91 = v41;
    _os_log_impl(&dword_22F907000, v34, v35, "PublicEventShazamQueryHelper - received %@, indicating should not continue with other batches.", v39, 0xCu);
    sub_22F910EEC(v91, &qword_27DAD1AD8, &qword_22F991F10);
    MEMORY[0x231904DE0](v91, -1, -1);
    MEMORY[0x231904DE0](v39, -1, -1);
  }

  else
  {

    v33(v37, v38);
  }

  v81 = v0[44];
  v82 = v0[42];
  v83 = v0[27];
  v84 = v0[23];
  v85 = sub_22F989C80();
  v95 = v93;
  v94[0] = v85;
  sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);
  sub_22F910E24(&qword_27DAD1AE0, MEMORY[0x277D54EB0], MEMORY[0x277D54EB8]);
  swift_allocError();
  v92(v86, v83, v84);
  swift_willThrow();

  v33(v83, v84);
LABEL_35:
  v87 = v0[38];
  v88 = v0[39];
  v89 = v0[37];
  sub_22F90CF54(v88, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[41]);

  (*(v87 + 8))(v88, v89);

  v90 = v0[1];

  return v90(0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22F90CE78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22F9110BC;

  return sub_22F90A5F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22F90CF54(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_22F9899B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22F989970();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22F989990();
  sub_22F9899C0();
  v21 = sub_22F989C50();
  result = sub_22F989CB0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_22F9899F0();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22F989950();
      _os_signpost_emit_with_name_impl(&dword_22F907000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x231904DE0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22F90D1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22F910E6C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22F9198E8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22F910EEC(a1, &unk_27DAD1B00, &qword_22F991F28);
    sub_22F9186E4(a2, a3, v9);

    return sub_22F910EEC(v9, &unk_27DAD1B00, &qword_22F991F28);
  }

  return result;
}

uint64_t sub_22F90D2E0(uint64_t a1)
{
  v2 = sub_22F989A00();
  v3 = sub_22F989C10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22F907000, v2, v3, "Cancelling PublicEventShazamQueryHelper", v4, 2u);
    MEMORY[0x231904DE0](v4, -1, -1);
  }

  v5 = *(v1 + 16);

  *(v5 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel) = 1;
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_22F90D3D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990, &qword_22F991DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_22F989BE0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_22F90A944(0, 0, v3, &unk_22F991E00, v5);
}

uint64_t sub_22F90D4D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F90D568;

  return sub_22F90D2C0();
}

uint64_t sub_22F90D568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void PublicEventShazamQueryHelper.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PublicEventShazamQueryHelper.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PublicEventShazamQueryHelper.deinit()
{
  v1 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  v2 = sub_22F989A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PublicEventShazamQueryHelper.__deallocating_deinit()
{
  v1 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  v2 = sub_22F989A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F90D930()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F9110BC;

  return sub_22F90D4D8();
}

uint64_t sub_22F90D9EC(uint64_t a1)
{
  result = sub_22F989A20();
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

uint64_t dispatch thunk of PublicEventShazamQueryHelper.launchQuery(cancellerBlock:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F90DC14;

  return v9(a1, a2);
}

uint64_t sub_22F90DC14(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of PublicEventShazamQueryHelper.cancel()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F9110BC;

  return v5();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F90DF54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F90D568;

  return sub_22F90A0E4(v2, v3, v4);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F90E048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F9110BC;

  return sub_22F91FB6C(a1, v4, v5, v6);
}

uint64_t sub_22F90E114(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22F90E20C;

  return v6(a1);
}

uint64_t sub_22F90E20C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F90E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22F989E00();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22F90E404, 0, 0);
}

uint64_t sub_22F90E404()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22F989E10();
  v5 = sub_22F910E24(&qword_27DAD1AF0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_22F989EA0();
  sub_22F910E24(&qword_27DAD1AF8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_22F989E20();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22F90E594;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_22F90E594()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22F90E750, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22F90E750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F90E7BC()
{
  v1[3] = v0;
  v2 = sub_22F989BB0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_22F989E10();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F90E8E4, v0, 0);
}

uint64_t sub_22F90E8E4()
{

  v1 = sub_22F989A00();
  v2 = sub_22F989C40();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 0x4024000000000000;
    _os_log_impl(&dword_22F907000, v1, v2, "Simulating timeout for %f seconds", v3, 0xCu);
    MEMORY[0x231904DE0](v3, -1, -1);
  }

  v4 = sub_22F989EF0();
  v6 = v5;
  sub_22F989EC0();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_22F90EA60;

  return sub_22F90E304(v4, v6, 0, 0, 1);
}

uint64_t sub_22F90EA60()
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = v0;

  v4 = v2[9];
  if (v0)
  {
    v5 = v2[3];
    (*(v4 + 8))(v2[10], v2[8]);

    return MEMORY[0x2822009F8](sub_22F90EC28, v5, 0);
  }

  else
  {
    (*(v4 + 8))();

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_22F90EC28()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AD0, &qword_22F992090);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);

    (*(v6 + 32))(v3, v4, v5);
    sub_22F910E24(&qword_27DAD1AE8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    (*(v6 + 16))(v7, v3, v5);
    swift_willThrow();
    (*(v6 + 8))(v3, v5);
  }

  else
  {

    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22F90EDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v5 = sub_22F989BB0();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AC0, &unk_22F991F00);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_22F989660();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v7 = sub_22F989970();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_22F989A20();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_22F9899A0();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F90F0BC, a2, 0);
}

uint64_t sub_22F90F0BC()
{
  v30 = v0;
  v29[4] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  *(v0 + 312) = OBJC_IVAR___CLSPublicEventShazamQueryHelper_logger;
  (*(v1 + 16))(v2, v4 + v5, v3);
  sub_22F989980();
  sub_22F989960();
  v6 = sub_22F989990();
  v7 = sub_22F989C60();
  if (sub_22F989CB0())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22F989950();
    _os_signpost_emit_with_name_impl(&dword_22F907000, v6, v7, v9, "PublicEventShazamQueryHelper.launchPublicEventQuery", "", v8, 2u);
    MEMORY[0x231904DE0](v8, -1, -1);
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v13 = *(v0 + 240);
  v14 = *(v0 + 120);

  (*(v13 + 16))(v10, v11, v12);
  sub_22F9899E0();
  swift_allocObject();
  *(v0 + 320) = sub_22F9899D0();
  (*(v13 + 8))(v11, v12);
  v15 = OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel;
  *(v14 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_shouldCancel) = 0;
  v16 = sub_22F989A00();
  v17 = sub_22F989C40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22F907000, v16, v17, "PublicEventShazamQueryHelper.launchPublicEventQuery", v18, 2u);
    MEMORY[0x231904DE0](v18, -1, -1);
  }

  v19 = *(v0 + 128);

  *(v0 + 384) = 0;
  (*(v19 + 16))(v19, v0 + 384);
  if ((*(v0 + 384) & 1) != 0 || *(v14 + v15) == 1)
  {

    v20 = sub_22F989A00();
    v21 = sub_22F989C20();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      swift_beginAccess();
      *(v22 + 4) = *(v0 + 384);
      *(v22 + 8) = 1024;
      *(v22 + 10) = *(v14 + v15);

      _os_log_impl(&dword_22F907000, v20, v21, "PublicEventShazamQueryHelper - cancelled, stop: %{BOOL}d, shouldCancel: %{BOOL}d", v22, 0xEu);
      MEMORY[0x231904DE0](v22, -1, -1);
    }

    else
    {
    }

    v29[3] = sub_22F910D8C();
    v29[0] = sub_22F989C80();
    sub_22F90D1F0(v29, 0x4574736575716572, 0xEC000000726F7272);
    sub_22F910E24(&qword_27DAD1AE8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_22F989A90();
    swift_willThrow();
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    sub_22F90CF54(v24, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, *(v0 + 320));

    (*(v23 + 8))(v24, v25);

    v26 = *(v0 + 8);

    return v26(0);
  }

  else
  {
    *(v0 + 328) = *(*(v0 + 120) + OBJC_IVAR___CLSPublicEventShazamQueryHelper_query);
    v28 = swift_task_alloc();
    *(v0 + 336) = v28;
    *v28 = v0;
    v28[1] = sub_22F90F620;

    return sub_22F91365C();
  }
}

uint64_t sub_22F90F620(uint64_t a1)
{
  v4 = *v2;
  v4[43] = v1;

  v5 = v4[15];
  if (v1)
  {
    v6 = sub_22F90FB70;
  }

  else
  {
    v4[44] = a1;
    v6 = sub_22F90F788;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F90F788()
{
  v22 = v0;
  v21[4] = *MEMORY[0x277D85DE8];
  v21[3] = sub_22F910D8C();
  v21[0] = sub_22F989C70();
  sub_22F90D1F0(v21, 0x6375536863746162, 0xEE00646564656563);
  v1 = v0[44];
  v0[45] = v1;
  v2 = v1;
  v3 = sub_22F989A00();
  v4 = sub_22F989C10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
    swift_beginAccess();
    *(v5 + 4) = (*(&v2->isa + v6))[2];

    _os_log_impl(&dword_22F907000, v3, v4, "updatedQuery has %ld resolved requests", v5, 0xCu);
    MEMORY[0x231904DE0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  v7 = v0[15];

  if (*(v7 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_isSimulatingTimeout) == 1)
  {
    v8 = swift_task_alloc();
    v0[46] = v8;
    *v8 = v0;
    v8[1] = sub_22F910880;

    return sub_22F90E7BC();
  }

  else
  {
    v10 = v0[45];
    v11 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
    swift_beginAccess();
    v12 = *(*(v10 + v11) + 16);
    if (v12)
    {
      v13 = sub_22F989A00();
      v14 = sub_22F989C20();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v12;
        _os_log_impl(&dword_22F907000, v13, v14, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v15, 0xCu);
        MEMORY[0x231904DE0](v15, -1, -1);
      }
    }

    v16 = v0[37];
    v17 = v0[38];
    v18 = v0[36];
    sub_22F90CF54(v17, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[40]);

    (*(v16 + 8))(v17, v18);

    v19 = v0[1];
    v20 = v0[45];

    return v19(1, v20);
  }
}

uint64_t sub_22F90FB70()
{
  v97 = v0;
  v96 = *MEMORY[0x277D85DE8];
  v1 = v0[43];
  v2 = v0[41];
  v3 = v0[23];
  v4 = sub_22F910D8C();
  v5 = v2;
  v93 = v4;
  v95 = v4;
  v94[0] = sub_22F989C70();
  sub_22F90D1F0(v94, 0x6375536863746162, 0xEE00646564656563);
  v0[11] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AD0, &qword_22F992090);
  v7 = swift_dynamicCast();
  v8 = *(v3 + 56);
  if (v7)
  {
    v10 = v0[27];
    v9 = v0[28];
    v12 = v0[22];
    v11 = v0[23];
    v13 = v0[21];
    v8(v13, 0, 1, v12);
    (*(v11 + 32))(v9, v13, v12);
    (*(v11 + 16))(v10, v9, v12);
    if ((*(v11 + 88))(v10, v12) == *MEMORY[0x277D54E98])
    {
      v14 = v0[27];
      (*(v0[23] + 96))(v14, v0[22]);
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_22F989A00();
      v18 = sub_22F989C20();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v94[0] = v20;
        *v19 = 136315138;
        v21 = sub_22F916FA0(v16, v15, v94);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_22F907000, v17, v18, "PublicEventShazamQueryHelper - received recoverable error partialEventRequestFailed for request %s, abandoning this batch without throwing.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x231904DE0](v20, -1, -1);
        MEMORY[0x231904DE0](v19, -1, -1);
      }

      else
      {
      }

      v56 = v0[43];
      v57 = v0[28];
      v59 = v0[22];
      v58 = v0[23];
      v60 = sub_22F989C80();
      v95 = v93;
      v94[0] = v60;
      sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);

      (*(v58 + 8))(v57, v59);
      v61 = v0[41];
      v0[45] = v61;
      v62 = v61;
      v63 = sub_22F989A00();
      v64 = sub_22F989C10();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134217984;
        v66 = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
        swift_beginAccess();
        *(v65 + 4) = (*(&v62->isa + v66))[2];

        _os_log_impl(&dword_22F907000, v63, v64, "updatedQuery has %ld resolved requests", v65, 0xCu);
        MEMORY[0x231904DE0](v65, -1, -1);
      }

      else
      {

        v63 = v62;
      }

      v67 = v0[15];

      if (*(v67 + OBJC_IVAR___CLSPublicEventShazamQueryHelper_isSimulatingTimeout) == 1)
      {
        v68 = swift_task_alloc();
        v0[46] = v68;
        *v68 = v0;
        v68[1] = sub_22F910880;

        return sub_22F90E7BC();
      }

      else
      {
        v70 = v0[45];
        v71 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
        swift_beginAccess();
        v72 = *(*(v70 + v71) + 16);
        if (v72)
        {
          v73 = sub_22F989A00();
          v74 = sub_22F989C20();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 134217984;
            *(v75 + 4) = v72;
            _os_log_impl(&dword_22F907000, v73, v74, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v75, 0xCu);
            MEMORY[0x231904DE0](v75, -1, -1);
          }
        }

        v76 = v0[37];
        v77 = v0[38];
        v78 = v0[36];
        sub_22F90CF54(v77, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[40]);

        (*(v76 + 8))(v77, v78);

        v79 = v0[1];
        v80 = v0[45];

        return v79(1, v80);
      }
    }

    v23 = v0[27];
    v24 = v0[22];
    v25 = *(v0[23] + 8);
    v25(v0[28], v24);
    v25(v23, v24);
  }

  else
  {
    v22 = v0[21];
    v8(v22, 1, 1, v0[22]);
    sub_22F910EEC(v22, &qword_27DAD1AC0, &unk_22F991F00);
  }

  v26 = v0[43];
  v0[12] = v26;
  v27 = v26;
  if (!swift_dynamicCast())
  {
    v42 = v0[20];
    v8(v42, 1, 1, v0[22]);
    sub_22F910EEC(v42, &qword_27DAD1AC0, &unk_22F991F00);
LABEL_13:
    v43 = v0[43];
    v0[13] = v43;
    v44 = v43;
    if (swift_dynamicCast())
    {
      (*(v0[18] + 8))(v0[19], v0[17]);
      v45 = sub_22F989C80();
      v95 = v93;
      v94[0] = v45;
      sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);
    }

    v46 = v0[43];
    v47 = v46;
    v48 = sub_22F989A00();
    v49 = sub_22F989C20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[43];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v50;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_22F907000, v48, v49, "PublicEventShazamQueryHelper - failed to submit query: %@", v51, 0xCu);
      sub_22F910EEC(v52, &qword_27DAD1AD8, &qword_22F991F10);
      MEMORY[0x231904DE0](v52, -1, -1);
      MEMORY[0x231904DE0](v51, -1, -1);
    }

    v55 = v0[41];

    swift_willThrow();
    goto LABEL_35;
  }

  v29 = v0[25];
  v28 = v0[26];
  v30 = v0[22];
  v31 = v0[23];
  v32 = v0[20];
  v8(v32, 0, 1, v30);
  (*(v31 + 32))(v28, v32, v30);
  (*(v31 + 104))(v29, *MEMORY[0x277D54EA0], v30);
  LOBYTE(v28) = MEMORY[0x2319037E0](v28, v29);
  v33 = *(v31 + 8);
  v33(v29, v30);
  if ((v28 & 1) == 0)
  {
    v33(v0[26], v0[22]);
    goto LABEL_13;
  }

  v92 = *(v0[23] + 16);
  v92(v0[24], v0[26], v0[22]);
  v34 = sub_22F989A00();
  v35 = sub_22F989C20();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v0[24];
  v38 = v0[22];
  if (v36)
  {
    v39 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v39 = 138412290;
    sub_22F910E24(&qword_27DAD1AE0, MEMORY[0x277D54EB0], MEMORY[0x277D54EB8]);
    swift_allocError();
    v92(v40, v37, v38);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v33(v37, v38);
    *(v39 + 4) = v41;
    *v91 = v41;
    _os_log_impl(&dword_22F907000, v34, v35, "PublicEventShazamQueryHelper - received %@, indicating should not continue with other batches.", v39, 0xCu);
    sub_22F910EEC(v91, &qword_27DAD1AD8, &qword_22F991F10);
    MEMORY[0x231904DE0](v91, -1, -1);
    MEMORY[0x231904DE0](v39, -1, -1);
  }

  else
  {

    v33(v37, v38);
  }

  v81 = v0[43];
  v82 = v0[41];
  v83 = v0[26];
  v84 = v0[22];
  v85 = sub_22F989C80();
  v95 = v93;
  v94[0] = v85;
  sub_22F90D1F0(v94, 0x4574736575716572, 0xEC000000726F7272);
  sub_22F910E24(&qword_27DAD1AE0, MEMORY[0x277D54EB0], MEMORY[0x277D54EB8]);
  swift_allocError();
  v92(v86, v83, v84);
  swift_willThrow();

  v33(v83, v84);
LABEL_35:
  v87 = v0[37];
  v88 = v0[38];
  v89 = v0[36];
  sub_22F90CF54(v88, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[40]);

  (*(v87 + 8))(v88, v89);

  v90 = v0[1];

  return v90(0);
}

uint64_t sub_22F910880()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_22F910C04;
  }

  else
  {
    v4 = sub_22F9109D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F9109D8()
{
  v1 = v0[45];
  v2 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  if (v3)
  {
    v4 = sub_22F989A00();
    v5 = sub_22F989C20();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v3;
      _os_log_impl(&dword_22F907000, v4, v5, "PublicEventShazamQueryHelper - query has %ld unresolved requests.", v6, 0xCu);
      MEMORY[0x231904DE0](v6, -1, -1);
    }
  }

  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[36];
  sub_22F90CF54(v8, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, v0[40]);

  (*(v7 + 8))(v8, v9);

  v10 = v0[1];
  v11 = v0[45];

  return v10(1, v11);
}

uint64_t sub_22F910C04()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  sub_22F90CF54(v2, "PublicEventShazamQueryHelper.launchPublicEventQuery", 51, 2, *(v0 + 320));

  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

unint64_t sub_22F910D8C()
{
  result = qword_27DAD1AC8;
  if (!qword_27DAD1AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAD1AC8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22F910E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_22F910E6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22F910E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990, &qword_22F991DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F910EEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22F910F4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F9110BC;

  return sub_22F90E114(a1, v4);
}

uint64_t sub_22F911004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22F90D568;

  return sub_22F90E114(a1, v4);
}

id PublicEventShazamQueryContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventShazamQueryContext.init()()
{
  ObjectType = swift_getObjectType();
  sub_22F9896B0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id PublicEventShazamQueryContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PublicEventShazamQueryContext(uint64_t a1)
{
  result = qword_28148AB68;
  if (!qword_28148AB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F911294(uint64_t a1, uint64_t a2)
{
  result = sub_22F9896C0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_22F911324(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v100 = a1;
  v101 = a2;
  v8 = sub_22F989870();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v94[0] = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = v94 - v11;
  v104 = sub_22F989520();
  v99 = *(v104 - 1);
  MEMORY[0x28223BE20](v104);
  v97 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22F989790();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v14 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22F989390();
  v15 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(CLSPublicEvent) init];
  [v18 setMuid_];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22F9896F0();
  v20 = sub_22F989AB0();

  [v18 setIdentifier_];

  sub_22F989700();
  v21 = sub_22F989AB0();

  [v18 setName_];

  sub_22F91251C(a3, a4, v17);
  v22 = sub_22F989350();
  (*(v15 + 8))(v17, v95);
  [v18 setLocalDateInterval_];

  [v18 setLocalStartTime_];
  [v18 setLocalEndTime_];
  sub_22F989710();
  v23 = v97;
  sub_22F989780();
  (*(v96 + 8))(v14, v98);
  v24 = sub_22F989510();
  (*(v99 + 8))(v23, v104);
  v104 = v18;
  v25 = v18;
  v26 = v19;
  [v25 setTimeZone_];

  sub_22F989730();
  v28 = v27;
  v30 = v29;

  if (v30)
  {
    if (sub_22F989B00() < 1)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CE8, &qword_22F992158);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_22F991F90;
      *(v31 + 32) = v28;
      *(v31 + 40) = v30;
    }
  }

  sub_22F9896E0();
  v32 = objc_allocWithZone(CLSPublicEventCategory);
  v33 = sub_22F989AB0();
  v34 = sub_22F989AB0();

  v35 = sub_22F989B80();

  v36 = [v32 initWithCategory:v33 localizedName:v34 localizedSubcategories:v35];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CD8, &qword_22F992150);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_22F991FA0;
  *(v37 + 32) = v36;
  sub_22F91CE74(0, &qword_27DAD1CE0, off_2788A61A8);
  v101 = v36;
  v38 = sub_22F989B80();

  v39 = v104;
  [v104 setCategories_];

  v40 = v105;
  sub_22F989720();
  v41 = sub_22F989840();
  v43 = v42;
  v44 = v103;
  v45 = *(v102 + 8);
  v45(v40, v103);
  v46 = sub_22F989AB0();
  [v39 setBusinessItemPlaceID_];

  v47 = objc_allocWithZone(MEMORY[0x277D0EBA8]);
  v48 = sub_22F989AB0();
  v49 = [v47 initWithMapsIdentifierString_];

  v94[1] = v26;
  v94[2] = v7;
  if (v49)
  {

    v50 = [v49 muid];
LABEL_7:

LABEL_80:
    v80 = v104;
    [v104 setBusinessItemMuid_];
    v81 = v105;
    sub_22F989720();
    v82 = sub_22F989860();
    v45(v81, v44);
    [v82 coordinate];
    v84 = v83;
    v86 = v85;

    [v80 setBusinessItemCoordinates_];
    [v80 setSourceService_];
    [v80 setSupportsEventExperience_];
    [v80 setExpectedAttendance_];

    return v80;
  }

  v51 = v94[0];
  sub_22F989720();
  v52 = sub_22F989850();
  v54 = v53;
  result = (v45)(v51, v44);
  if (!v54)
  {
LABEL_74:
    if (qword_27DAD1910 != -1)
    {
      swift_once();
    }

    v73 = sub_22F989A20();
    __swift_project_value_buffer(v73, qword_27DAD1918);

    v74 = sub_22F989A00();
    v75 = sub_22F989C20();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v106[0] = v77;
      *v76 = 136315138;
      v78 = sub_22F916FA0(v41, v43, v106);

      *(v76 + 4) = v78;
      _os_log_impl(&dword_22F907000, v74, v75, "Failed to convert business placeID %s to muid, setting to default value.", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v79 = v77;
      v44 = v103;
      MEMORY[0x231904DE0](v79, -1, -1);
      MEMORY[0x231904DE0](v76, -1, -1);
    }

    else
    {
    }

    v50 = 0;
    goto LABEL_80;
  }

  v56 = HIBYTE(v54) & 0xF;
  v57 = v52 & 0xFFFFFFFFFFFFLL;
  if ((v54 & 0x2000000000000000) != 0)
  {
    v58 = HIBYTE(v54) & 0xF;
  }

  else
  {
    v58 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {

    goto LABEL_74;
  }

  if ((v54 & 0x1000000000000000) != 0)
  {
    v50 = sub_22F917548(v52, v54, 10);
    v72 = v93;
LABEL_73:

    if ((v72 & 1) == 0)
    {
      if (qword_27DAD1910 != -1)
      {
        swift_once();
      }

      v87 = sub_22F989A20();
      __swift_project_value_buffer(v87, qword_27DAD1918);

      v49 = sub_22F989A00();
      v88 = sub_22F989C20();

      if (os_log_type_enabled(v49, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v106[0] = v90;
        *v89 = 136315138;
        v91 = sub_22F916FA0(v41, v43, v106);

        *(v89 + 4) = v91;
        _os_log_impl(&dword_22F907000, v49, v88, "Failed to convert business placeID %s to muid, using muid provided by Shazam.", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        v92 = v90;
        v44 = v103;
        MEMORY[0x231904DE0](v92, -1, -1);
        MEMORY[0x231904DE0](v89, -1, -1);
      }

      else
      {
      }

      goto LABEL_7;
    }

    goto LABEL_74;
  }

  if ((v54 & 0x2000000000000000) == 0)
  {
    if ((v52 & 0x1000000000000000) != 0)
    {
      result = ((v54 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_22F989DA0();
    }

    v59 = *result;
    if (v59 == 43)
    {
      if (v57 >= 1)
      {
        v56 = v57 - 1;
        if (v57 != 1)
        {
          v50 = 0;
          if (result)
          {
            v65 = result + 1;
            while (1)
            {
              v66 = *v65 - 48;
              if (v66 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v50, 0xAuLL))
              {
                goto LABEL_71;
              }

              v62 = __CFADD__(10 * v50, v66);
              v50 = 10 * v50 + v66;
              if (v62)
              {
                goto LABEL_71;
              }

              ++v65;
              if (!--v56)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_91;
    }

    if (v59 != 45)
    {
      if (v57)
      {
        v50 = 0;
        if (result)
        {
          while (1)
          {
            v69 = *result - 48;
            if (v69 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v50, 0xAuLL))
            {
              goto LABEL_71;
            }

            v62 = __CFADD__(10 * v50, v69);
            v50 = 10 * v50 + v69;
            if (v62)
            {
              goto LABEL_71;
            }

            ++result;
            if (!--v57)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      v50 = 0;
      LOBYTE(v56) = 1;
      goto LABEL_72;
    }

    if (v57 >= 1)
    {
      v56 = v57 - 1;
      if (v57 != 1)
      {
        v50 = 0;
        if (result)
        {
          v60 = result + 1;
          while (1)
          {
            v61 = *v60 - 48;
            if (v61 > 9)
            {
              goto LABEL_71;
            }

            if (!is_mul_ok(v50, 0xAuLL))
            {
              goto LABEL_71;
            }

            v62 = 10 * v50 >= v61;
            v50 = 10 * v50 - v61;
            if (!v62)
            {
              goto LABEL_71;
            }

            ++v60;
            if (!--v56)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v56) = 0;
LABEL_72:
        v107 = v56;
        v72 = v56;
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v106[0] = v52;
  v106[1] = v54 & 0xFFFFFFFFFFFFFFLL;
  if (v52 != 43)
  {
    if (v52 != 45)
    {
      if (v56)
      {
        v50 = 0;
        v70 = v106;
        while (1)
        {
          v71 = *v70 - 48;
          if (v71 > 9)
          {
            break;
          }

          if (!is_mul_ok(v50, 0xAuLL))
          {
            break;
          }

          v62 = __CFADD__(10 * v50, v71);
          v50 = 10 * v50 + v71;
          if (v62)
          {
            break;
          }

          v70 = (v70 + 1);
          if (!--v56)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v56)
    {
      if (--v56)
      {
        v50 = 0;
        v63 = v106 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          if (!is_mul_ok(v50, 0xAuLL))
          {
            break;
          }

          v62 = 10 * v50 >= v64;
          v50 = 10 * v50 - v64;
          if (!v62)
          {
            break;
          }

          ++v63;
          if (!--v56)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_90;
  }

  if (v56)
  {
    if (--v56)
    {
      v50 = 0;
      v67 = v106 + 1;
      while (1)
      {
        v68 = *v67 - 48;
        if (v68 > 9)
        {
          break;
        }

        if (!is_mul_ok(v50, 0xAuLL))
        {
          break;
        }

        v62 = __CFADD__(10 * v50, v68);
        v50 = 10 * v50 + v68;
        if (v62)
        {
          break;
        }

        ++v67;
        if (!--v56)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t sub_22F911FE4(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_22F989A80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F989A70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_22F9896F0();
  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  v41 = v5;
  if (!v16)
  {

    goto LABEL_65;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v43 = 0;
    v18 = sub_22F917548(result, v13, 10);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      return v18;
    }

    goto LABEL_65;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_22F989DA0();
      v15 = v39;
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        if (--v15)
        {
          v18 = 0;
          if (result)
          {
            v24 = (result + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v18, 0xAuLL))
              {
                goto LABEL_63;
              }

              v21 = __CFADD__(10 * v18, v25);
              v18 = 10 * v18 + v25;
              if (v21)
              {
                goto LABEL_63;
              }

              ++v24;
              if (!--v15)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v17 != 45)
    {
      if (v15)
      {
        v18 = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v18, 0xAuLL))
            {
              goto LABEL_63;
            }

            v21 = __CFADD__(10 * v18, v28);
            v18 = 10 * v18 + v28;
            if (v21)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_63:
      v18 = 0;
      LOBYTE(v15) = 1;
LABEL_64:
      v43 = v15;
      v31 = v15;

      if ((v31 & 1) == 0)
      {
        return v18;
      }

LABEL_65:
      v32 = sub_22F9896F0();
      v34 = sub_22F912960(v32, v33);
      v36 = v35;
      sub_22F91C648(&qword_27DAD1CF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_22F989A50();
      sub_22F91CEBC(v34, v36);
      sub_22F91B278(v34, v36, v7);
      sub_22F91CF10(v34, v36);
      sub_22F989A40();
      (*(v41 + 8))(v7, v4);
      sub_22F989A60();
      sub_22F91CF10(v34, v36);
      (*(v9 + 8))(v11, v8);
      return v42[0];
    }

    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v18, 0xAuLL))
            {
              goto LABEL_63;
            }

            v21 = 10 * v18 >= v20;
            v18 = 10 * v18 - v20;
            if (!v21)
            {
              goto LABEL_63;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_62:
        LOBYTE(v15) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v42[0] = result;
  v42[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v29 = v42;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v21 = __CFADD__(10 * v18, v30);
          v18 = 10 * v18 + v30;
          if (v21)
          {
            break;
          }

          ++v29;
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_63;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v42 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v21 = 10 * v18 >= v23;
          v18 = 10 * v18 - v23;
          if (!v21)
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v14)
  {
    v15 = v14 - 1;
    if (v14 != 1)
    {
      v18 = 0;
      v26 = v42 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        if (!is_mul_ok(v18, 0xAuLL))
        {
          break;
        }

        v21 = __CFADD__(10 * v18, v27);
        v18 = 10 * v18 + v27;
        if (v21)
        {
          break;
        }

        ++v26;
        if (!--v15)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_22F91251C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v31 = sub_22F9894D0();
  v33 = *(v31 - 8);
  v5 = MEMORY[0x28223BE20](v31);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v29 = &v29 - v13;
  v14 = sub_22F989390();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F989790();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22F989520();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_22F989710();
  sub_22F989780();
  v22 = *(v17 + 8);
  v22(v19, v16);
  sub_22F989710();
  sub_22F989770();
  v22(v19, v16);
  sub_22F989380();
  sub_22F989500();
  v23 = v29;
  sub_22F9894A0();
  v24 = v33;
  v25 = *(v33 + 8);
  v26 = v31;
  v25(v12, v31);
  sub_22F989360();
  sub_22F989500();
  sub_22F9894A0();
  v25(v9, v26);
  v27 = *(v24 + 16);
  v27(v9, v23, v26);
  v27(v36, v12, v26);
  sub_22F989370();
  v25(v12, v26);
  v25(v23, v26);
  (*(v34 + 8))(v38, v35);
  return (*(v30 + 8))(v21, v32);
}

uint64_t sub_22F912960(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CF8, &qword_22F992160);
  if (swift_dynamicCast())
  {
    sub_22F91CFE0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_22F989410();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22F910EEC(__src, &qword_27DAD1D00, &qword_22F992168);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22F989DA0();
  }

  sub_22F917F40(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22F91B640(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_22F918008(sub_22F91CF64, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22F989480();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22F917EC4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22F989B10();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22F989B40();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22F989DA0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22F917EC4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22F989B20();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_22F989490();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_22F989490();
    sub_22F91CFCC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_22F91CFCC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22F91CEBC(*&__src[0], *(&__src[0] + 1));

  sub_22F91CF10(v32, *(&v32 + 1));
  return v32;
}

id PublicEventShazamQuery.__allocating_init(timeLocationTuples:radius:queryContext:)(unint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_22F91BCD8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id PublicEventShazamQuery.init(timeLocationTuples:radius:queryContext:)(unint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_22F91BCD8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_22F913114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F9131A0;

  return sub_22F91365C();
}

uint64_t sub_22F9131A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22F913414(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22F9134BC;

  return sub_22F91365C();
}

uint64_t sub_22F9134BC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22F989420();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22F91365C()
{
  v1[92] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1BD8, &qword_22F991FF0);
  v1[93] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1BE0, &qword_22F991FF8);
  v1[94] = v2;
  v1[95] = *(v2 - 8);
  v1[96] = swift_task_alloc();
  v3 = sub_22F989820();
  v1[97] = v3;
  v1[98] = *(v3 - 8);
  v1[99] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1BE8, &qword_22F992000);
  v1[100] = v4;
  v1[101] = *(v4 - 8);
  v1[102] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1BF0, &qword_22F992008);
  v1[103] = v5;
  v1[104] = *(v5 - 8);
  v1[105] = swift_task_alloc();
  v6 = sub_22F9897E0();
  v1[106] = v6;
  v1[107] = *(v6 - 8);
  v1[108] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1BF8, &qword_22F992010);
  v1[109] = v7;
  v1[110] = *(v7 - 8);
  v1[111] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C00, &qword_22F992018);
  v1[112] = v8;
  v1[113] = *(v8 - 8);
  v1[114] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C08, &qword_22F992020);
  v1[115] = v9;
  v1[116] = *(v9 - 8);
  v1[117] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C10, &qword_22F992028);
  v1[118] = v10;
  v1[119] = *(v10 - 8);
  v1[120] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C18, &qword_22F992030);
  v1[121] = v11;
  v1[122] = *(v11 - 8);
  v1[123] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C20, &qword_22F992038);
  v1[124] = v12;
  v1[125] = *(v12 - 8);
  v1[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C28, &qword_22F992040);
  v1[127] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C30, &qword_22F992048);
  v1[128] = v13;
  v1[129] = *(v13 - 8);
  v1[130] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C38, &qword_22F992050);
  v1[131] = v14;
  v1[132] = *(v14 - 8);
  v1[133] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C40, &qword_22F992058);
  v1[134] = v15;
  v1[135] = *(v15 - 8);
  v1[136] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C48, &qword_22F992060);
  v1[137] = v16;
  v1[138] = *(v16 - 8);
  v1[139] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C50, &qword_22F992068);
  v1[140] = v17;
  v1[141] = *(v17 - 8);
  v1[142] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C58, &qword_22F992070);
  v1[143] = v18;
  v1[144] = *(v18 - 8);
  v1[145] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C60, &qword_22F992078);
  v1[146] = v19;
  v1[147] = *(v19 - 8);
  v1[148] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C68, &qword_22F992080);
  v1[149] = v20;
  v1[150] = *(v20 - 8);
  v1[151] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD1C70, &qword_22F992088);
  v1[152] = v21;
  v1[153] = *(v21 - 8);
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v22 = sub_22F989970();
  v1[156] = v22;
  v1[157] = *(v22 - 8);
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v23 = sub_22F989A20();
  v1[160] = v23;
  v1[161] = *(v23 - 8);
  v1[162] = swift_task_alloc();
  v24 = sub_22F9899A0();
  v1[163] = v24;
  v1[164] = *(v24 - 8);
  v1[165] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F914064, 0, 0);
}

uint64_t sub_22F914064()
{
  v79 = v0;
  v1 = v0[162];
  v2 = v0[161];
  v3 = v0[160];
  v4 = v0[92];
  v5 = OBJC_IVAR___CLSPublicEventShazamQuery_logger;
  v0[166] = OBJC_IVAR___CLSPublicEventShazamQuery_logger;
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_22F989980();
  sub_22F989960();
  v6 = sub_22F989990();
  v7 = sub_22F989C60();
  if (sub_22F989CB0())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_22F989950();
    _os_signpost_emit_with_name_impl(&dword_22F907000, v6, v7, v9, "PublicEventShazamQuery.submitQuery", "", v8, 2u);
    MEMORY[0x231904DE0](v8, -1, -1);
  }

  v10 = v0[159];
  v11 = v0[158];
  v12 = v0[157];
  v13 = v0[156];
  v14 = v0[92];

  (*(v12 + 16))(v11, v10, v13);
  sub_22F9899E0();
  swift_allocObject();
  v0[167] = sub_22F9899D0();
  (*(v12 + 8))(v10, v13);
  v15 = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
  v0[168] = OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_22F916EA4(v17, 0);
    v19 = *(sub_22F9895B0() - 8);
    v20 = v18;
    v21 = sub_22F91AFD4(v78, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v17, v16);
    v22 = v78[0];

    v23 = sub_22F9098B0(v22);
    if (v21 != v17)
    {
      __break(1u);
      return MEMORY[0x282200308](v23, v24, v25);
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v26 = sub_22F989A00();
  v27 = sub_22F989C40();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v20 + 2);

    _os_log_impl(&dword_22F907000, v26, v27, "PublicEventShazamQuery.submitQuery with %ld request(s)", v28, 0xCu);
    MEMORY[0x231904DE0](v28, -1, -1);
  }

  else
  {
  }

  v59 = v0[154];
  v76 = v0[153];
  v75 = v0[152];
  v56 = v0[151];
  v63 = v0[150];
  v64 = v0[149];
  v29 = v0[148];
  v57 = v29;
  v73 = v0[147];
  v74 = v0[146];
  v30 = v0[145];
  v71 = v0[144];
  v72 = v0[143];
  v31 = v0[142];
  v69 = v0[141];
  v70 = v0[140];
  v32 = v0[139];
  v67 = v0[138];
  v68 = v0[137];
  v33 = v0[136];
  v65 = v0[135];
  v66 = v0[134];
  v34 = v0[133];
  v61 = v0[132];
  v62 = v0[131];
  v77 = v0[130];
  v58 = v0[129];
  v60 = v0[128];
  sub_22F9897A0();
  sub_22F91C648(&qword_28148AC90, MEMORY[0x277D54ED8], MEMORY[0x277D54ED0]);
  sub_22F9895D0();
  v51 = sub_22F989760();
  v52 = sub_22F91C648(&qword_28148AC98, MEMORY[0x277D54EC8], MEMORY[0x277D54EC0]);
  sub_22F9895C0();
  v0[2] = v29;
  v49 = sub_22F9897B0();
  v50 = sub_22F91C648(&unk_28148AC80, MEMORY[0x277D54EE8], MEMORY[0x277D54EE0]);
  v55 = v30;
  sub_22F9895E0();
  v0[3] = v30;
  v46 = sub_22F989890();
  v48 = sub_22F91C648(&unk_28148AC38, MEMORY[0x277D54F38], MEMORY[0x277D54F30]);
  v54 = v31;
  sub_22F989600();
  v0[4] = v31;
  v35 = sub_22F9897F0();
  v47 = MEMORY[0x277D54F00];
  sub_22F91C648(&unk_28148AC70, MEMORY[0x277D54F00], MEMORY[0x277D54EF0]);
  v53 = v32;
  sub_22F989620();
  v0[5] = v32;
  v36 = sub_22F9898A0();
  v37 = sub_22F91C648(&unk_28148AC28, MEMORY[0x277D54F48], MEMORY[0x277D54F40]);
  sub_22F989610();
  v0[6] = v33;
  v38 = sub_22F989830();
  v39 = MEMORY[0x277D54F18];
  sub_22F91C648(&qword_28148AC60, MEMORY[0x277D54F18], MEMORY[0x277D54F08]);
  sub_22F989630();
  v0[7] = v34;
  v40 = sub_22F989880();
  v41 = sub_22F91C648(&qword_28148AC48, MEMORY[0x277D54F28], MEMORY[0x277D54F20]);
  sub_22F9895F0();
  v0[8] = v77;
  sub_22F9895B0();
  v0[9] = v51;
  v0[10] = v49;
  v0[11] = v46;
  v0[12] = v35;
  v0[13] = v36;
  v0[14] = v38;
  v0[15] = v40;
  sub_22F91C648(&unk_28148ACA0, MEMORY[0x277D54E88], MEMORY[0x277D54E80]);
  v0[16] = v52;
  v0[17] = v50;
  v0[18] = v48;
  v0[19] = sub_22F91C648(&qword_28148AC68, v47, MEMORY[0x277D54EF8]);
  v0[20] = v37;
  v0[21] = sub_22F91C648(&unk_28148AC50, v39, MEMORY[0x277D54F10]);
  v0[22] = v41;
  sub_22F9896A0();

  (*(v63 + 8))(v56, v64);
  (*(v58 + 8))(v77, v60);
  (*(v61 + 8))(v34, v62);
  (*(v65 + 8))(v33, v66);
  (*(v67 + 8))(v53, v68);
  (*(v69 + 8))(v54, v70);
  (*(v71 + 8))(v55, v72);
  (*(v73 + 8))(v57, v74);
  sub_22F989560();
  v42 = *(v76 + 8);
  v0[169] = v42;
  v0[170] = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v59, v75);
  v0[171] = OBJC_IVAR___CLSPublicEventShazamQuery_timeLocationTupleByRequestIdentifier;
  v0[172] = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
  swift_beginAccess();
  v43 = sub_22F91C690();
  v44 = swift_task_alloc();
  v0[173] = v44;
  *v44 = v0;
  v44[1] = sub_22F9149E4;
  v24 = v0[152];
  v23 = v0[127];
  v25 = v43;

  return MEMORY[0x282200308](v23, v24, v25);
}

uint64_t sub_22F9149E4()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_22F916574;
  }

  else
  {
    v2 = sub_22F914AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F914AF8()
{
  v263 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0 + 1352))(*(v0 + 1240), *(v0 + 1216));
    v4 = sub_22F989A00();
    v5 = sub_22F989C40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22F907000, v4, v5, "PublicEventShazamQuery.submitQuery - finished iterating over query result stream", v6, 2u);
      MEMORY[0x231904DE0](v6, -1, -1);
    }

    v7 = *(v0 + 1336);
    v8 = *(v0 + 1320);
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1304);
    v11 = *(v0 + 736);

    v12 = v11;
    sub_22F91684C(v8, "PublicEventShazamQuery.submitQuery", 34, 2, v7);

    (*(v9 + 8))(v8, v10);

    v13 = *(v0 + 8);
    v14 = *(v0 + 736);

    return v13(v14);
  }

  else
  {
    v220 = (v0 + 592);
    v261 = v0;
    (*(v2 + 32))(*(v0 + 1008), v1, v3);
    *(v0 + 184) = v0 + 704;
    *(v0 + 192) = v0 + 696;
    v16 = v0;
    *(v0 + 200) = v0 + 688;
    *(v0 + 208) = v0 + 672;
    *(v0 + 216) = v0 + 648;
    *(v0 + 224) = v0 + 632;
    *(v0 + 232) = v0 + 608;
    v17 = sub_22F989530();
    v18 = *(v0 + 704);
    v19 = *(v0 + 696);
    v237 = *(v0 + 688);
    v216 = *(v0 + 672);
    v217 = *(v0 + 648);
    v218 = *(v0 + 632);
    v219 = *(v0 + 608);
    *(v0 + 592) = MEMORY[0x277D84FA0];
    v20 = *(v17 + 16);
    v21 = MEMORY[0x277D84F90];
    v241 = v19;
    v235 = v18;
    if (v20)
    {
      v22 = (v0 + 584);
      v23 = *(v0 + 976);
      *(v0 + 584) = MEMORY[0x277D84F90];
      sub_22F989DD0();
      v252 = objc_opt_self();
      v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v243 = *(v23 + 72);
      v25 = *(v23 + 16);
      do
      {
        v26 = v16[123];
        v27 = v16[122];
        v28 = v261[121];
        v25(v26, v24, v28);
        v29 = [v252 appleEvents];
        v30 = sub_22F989AC0();
        v32 = v31;

        sub_22F911324(v30, v32, &qword_27DAD1C18, &qword_22F992030);

        v33 = v28;
        v16 = v261;
        (*(v27 + 8))(v26, v33);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v24 += v243;
        --v20;
      }

      while (v20);

      v34 = *v22;
      v21 = MEMORY[0x277D84F90];
      v19 = v241;
      v18 = v235;
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v34);
    swift_endAccess();

    v35 = *(v18 + 16);
    if (v35)
    {
      v36 = v16 + 72;
      v37 = v16[119];
      v16[72] = v21;
      sub_22F989DD0();
      v38 = objc_opt_self();
      v39 = v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v244 = *(v37 + 72);
      v253 = v38;
      v40 = *(v37 + 16);
      do
      {
        v41 = v16[120];
        v42 = v16[119];
        v43 = v16[118];
        v40(v41, v39, v43);
        v44 = [v253 artsAndMuseums];
        v45 = sub_22F989AC0();
        v47 = v46;

        v16 = v261;
        sub_22F911324(v45, v47, &qword_27DAD1C10, &qword_22F992028);

        (*(v42 + 8))(v41, v43);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v39 += v244;
        --v35;
      }

      while (v35);

      v48 = *v36;
      v21 = MEMORY[0x277D84F90];
      v19 = v241;
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v48);
    swift_endAccess();

    v49 = *(v19 + 16);
    if (v49)
    {
      v50 = v16 + 71;
      v51 = v16[116];
      v16[71] = v21;
      sub_22F989DD0();
      v52 = objc_opt_self();
      v53 = v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v245 = *(v51 + 72);
      v254 = v52;
      v54 = *(v51 + 16);
      do
      {
        v55 = v16[117];
        v56 = v16[116];
        v57 = v16[115];
        v54(v55, v53, v57);
        v58 = [v254 dance];
        v59 = sub_22F989AC0();
        v61 = v60;

        v16 = v261;
        sub_22F911324(v59, v61, &qword_27DAD1C08, &qword_22F992020);

        (*(v56 + 8))(v55, v57);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v53 += v245;
        --v49;
      }

      while (v49);

      v62 = *v50;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {

      v62 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v62);
    swift_endAccess();

    v63 = *(v237 + 16);
    if (v63)
    {
      v64 = v16 + 75;
      v65 = v16[113];
      v16[75] = v21;
      sub_22F989DD0();
      v66 = objc_opt_self();
      v67 = v237 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v246 = *(v65 + 72);
      v255 = v66;
      v68 = *(v65 + 16);
      do
      {
        v69 = v16[114];
        v70 = v16[113];
        v71 = v16[112];
        v68(v69, v67, v71);
        v72 = [v255 festivalsAndFairs];
        v73 = sub_22F989AC0();
        v75 = v74;

        v16 = v261;
        sub_22F911324(v73, v75, &qword_27DAD1C00, &qword_22F992018);

        (*(v70 + 8))(v69, v71);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v67 += v246;
        --v63;
      }

      while (v63);

      v76 = *v64;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {

      v76 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v76);
    swift_endAccess();

    v77 = *(v216 + 16);
    if (v77)
    {
      v78 = v16[110];
      v16[77] = v21;
      v231 = v16 + 77;
      sub_22F989DD0();
      v79 = objc_opt_self();
      v80 = 0;
      v227 = v216 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v229 = v79;
      v223 = *(v78 + 16);
      v225 = *(v78 + 72);
      v221 = v77;
      v223(v16[111], v227, v16[109]);
      while (1)
      {
        v85 = [v229 musicConcerts];
        v86 = sub_22F989AC0();
        v88 = v87;

        v238 = sub_22F911324(v86, v88, &qword_27DAD1BF8, &qword_22F992010);
        v89 = sub_22F989740();
        v90 = *(v89 + 16);
        if (v90)
        {
          v233 = v80;
          v91 = v16[107];
          v16[78] = v21;
          sub_22F989DD0();
          v92 = v89 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
          v247 = *(v91 + 16);
          v256 = *(v91 + 72);
          do
          {
            v93 = v16[108];
            v94 = v16[107];
            v95 = v16[106];
            v247(v93, v92, v95);
            sub_22F9897D0();
            sub_22F9897C0();
            v96 = objc_allocWithZone(CLSPublicEventPerformer);
            v97 = sub_22F989AB0();

            v98 = sub_22F989AB0();

            v99 = v96;
            v16 = v261;
            [v99 initWithLocalizedName:v97 iTunesIdentifier:v98];

            (*(v94 + 8))(v93, v95);
            sub_22F989DB0();
            sub_22F989DE0();
            sub_22F989DF0();
            sub_22F989DC0();
            v92 += v256;
            --v90;
          }

          while (v90);

          v77 = v221;
          v80 = v233;
        }

        else
        {
        }

        v81 = v16[111];
        v82 = v16[110];
        ++v80;
        v83 = v16[109];
        sub_22F91CE74(0, &unk_27DAD1C80, off_2788A61D0);
        v84 = sub_22F989B80();

        [v238 setPerformers_];

        (*(v82 + 8))(v81, v83);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v21 = MEMORY[0x277D84F90];
        if (v80 == v77)
        {
          break;
        }

        v223(v16[111], v227 + v80 * v225, v16[109]);
      }

      v100 = *v231;
    }

    else
    {

      v100 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v100);
    swift_endAccess();

    v101 = *(v217 + 16);
    if (v101)
    {
      v102 = v16 + 80;
      v103 = v16[104];
      v16[80] = v21;
      sub_22F989DD0();
      v104 = objc_opt_self();
      v105 = v217 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v248 = *(v103 + 72);
      v257 = v104;
      v106 = *(v103 + 16);
      do
      {
        v107 = v16[105];
        v108 = v16[104];
        v109 = v16[103];
        v106(v107, v105, v109);
        v110 = [v257 nightLife];
        v111 = sub_22F989AC0();
        v113 = v112;

        v114 = v111;
        v16 = v261;
        sub_22F911324(v114, v113, &qword_27DAD1BF0, &qword_22F992008);

        (*(v108 + 8))(v107, v109);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v105 += v248;
        --v101;
      }

      while (v101);

      v115 = *v102;
      v21 = MEMORY[0x277D84F90];
    }

    else
    {

      v115 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v115);
    swift_endAccess();

    v116 = *(v218 + 16);
    if (v116)
    {
      v117 = v16[101];
      v16[82] = v21;
      v232 = v16 + 82;
      sub_22F989DD0();
      v118 = objc_opt_self();
      v119 = 0;
      v228 = v218 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
      v230 = v118;
      v224 = *(v117 + 16);
      v226 = *(v117 + 72);
      v222 = v116;
      v224(v16[102], v228, v16[100]);
      while (1)
      {
        v124 = [v230 sports];
        v125 = sub_22F989AC0();
        v127 = v126;

        v239 = sub_22F911324(v125, v127, &qword_27DAD1BE8, &qword_22F992000);
        v128 = sub_22F989750();
        v129 = *(v128 + 16);
        if (v129)
        {
          v130 = v16[98];
          v16[83] = v21;
          sub_22F989DD0();
          v131 = v128 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
          v249 = *(v130 + 16);
          v258 = *(v130 + 72);
          do
          {
            v132 = v16[99];
            v133 = v16[98];
            v134 = v16[97];
            v249(v132, v131, v134);
            sub_22F989810();
            sub_22F989800();
            v135 = objc_allocWithZone(CLSPublicEventPerformer);
            v136 = sub_22F989AB0();

            v137 = sub_22F989AB0();

            v138 = v135;
            v16 = v261;
            [v138 initWithLocalizedName:v136 iTunesIdentifier:v137];

            (*(v133 + 8))(v132, v134);
            sub_22F989DB0();
            sub_22F989DE0();
            sub_22F989DF0();
            sub_22F989DC0();
            v131 += v258;
            --v129;
          }

          while (v129);

          v116 = v222;
        }

        else
        {
        }

        v120 = v16[102];
        v121 = v16[101];
        ++v119;
        v122 = v16[100];
        sub_22F91CE74(0, &unk_27DAD1C80, off_2788A61D0);
        v123 = sub_22F989B80();

        [v239 setPerformers_];

        (*(v121 + 8))(v120, v122);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v21 = MEMORY[0x277D84F90];
        if (v119 == v116)
        {
          break;
        }

        v224(v16[102], v228 + v119 * v226, v16[100]);
      }

      v139 = *v232;
    }

    else
    {

      v139 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v139);
    swift_endAccess();

    v140 = *(v219 + 16);
    if (v140)
    {
      v141 = v16 + 85;
      v142 = v16[95];
      v16[85] = v21;
      sub_22F989DD0();
      v143 = objc_opt_self();
      v144 = v219 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v250 = *(v142 + 72);
      v259 = v143;
      v145 = *(v142 + 16);
      do
      {
        v146 = v16[96];
        v147 = v16[95];
        v148 = v16[94];
        v145(v146, v144, v148);
        v149 = [v259 theater];
        v150 = sub_22F989AC0();
        v152 = v151;

        v153 = v150;
        v16 = v261;
        sub_22F911324(v153, v152, &qword_27DAD1BE0, &qword_22F991FF8);

        (*(v147 + 8))(v146, v148);
        sub_22F989DB0();
        sub_22F989DE0();
        sub_22F989DF0();
        sub_22F989DC0();
        v144 += v250;
        --v140;
      }

      while (v140);

      v154 = *v141;
    }

    else
    {

      v154 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    sub_22F91B7E0(v154);
    swift_endAccess();

    sub_22F989540();
    __swift_project_boxed_opaque_existential_1(v16 + 30, v16[33]);
    v155 = sub_22F989550();
    v157 = v156;
    __swift_destroy_boxed_opaque_existential_0(v16 + 30);

    v158 = sub_22F989A00();
    v159 = sub_22F989C00();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v16[91] = v161;
      *v160 = 136315394;

      v162 = sub_22F916FA0(v155, v157, v16 + 91);

      *(v160 + 4) = v162;
      *(v160 + 12) = 2048;
      v163 = v155;
      if ((*v220 & 0xC000000000000001) != 0)
      {

        v164 = sub_22F989D10();
      }

      else
      {
        v164 = *(*v220 + 2);
      }

      *(v160 + 14) = v164;
      _os_log_impl(&dword_22F907000, v158, v159, "PublicEventShazamQuery.submitQuery queryResult %s - produced %ld public events", v160, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v161);
      MEMORY[0x231904DE0](v161, -1, -1);
      MEMORY[0x231904DE0](v160, -1, -1);
    }

    else
    {

      v163 = v155;
    }

    v165 = *(v16[92] + v16[171]);
    if (*(v165 + 16) && (v166 = sub_22F91879C(v163, v157, sub_22F919C70), v167 = v16[92], (v168 & 1) != 0))
    {
      v251 = v163;
      v169 = v16[172];
      v170 = *(*(v165 + 56) + 8 * v166);
      v171 = [swift_unknownObjectRetain() timeLocationIdentifier];
      v172 = sub_22F989AC0();
      v174 = v173;

      v175 = *(v167 + v169);
      v260 = v170;
      if (*(v175 + 16) && (, v176 = sub_22F91879C(v172, v174, sub_22F919C70), v178 = v177, , (v178 & 1) != 0))
      {
        v179 = *(*(v175 + 56) + 8 * v176);
        swift_bridgeObjectRetain_n();

        swift_unknownObjectRetain();
        v180 = sub_22F989A00();
        v181 = sub_22F989C30();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = v16 + 90;
          v183 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          v16[90] = v242;
          *v183 = 136643331;
          v184 = [v170 timeLocationIdentifier];
          v185 = sub_22F989AC0();
          v187 = v186;

          v188 = sub_22F916FA0(v185, v187, v182);

          *(v183 + 4) = v188;
          *(v183 + 12) = 2048;
          if ((v179 & 0xC000000000000001) != 0)
          {
            v189 = sub_22F989D10();
          }

          else
          {
            v189 = *(v179 + 16);
          }

          v200 = v220;

          *(v183 + 14) = v189;

          *(v183 + 22) = 2048;
          if ((*v220 & 0xC000000000000001) != 0)
          {

            v200 = v220;
            v201 = sub_22F989D10();
          }

          else
          {
            v201 = *(*v220 + 2);
          }

          *(v183 + 24) = v201;
          _os_log_impl(&dword_22F907000, v180, v181, "Received more than one result for tuple %{sensitive}s. Number of events in previous result: %ld, Number of events in current result: %ld", v183, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v242);
          MEMORY[0x231904DE0](v242, -1, -1);
          MEMORY[0x231904DE0](v183, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();

          v200 = v220;
        }

        v202 = *v200;

        sub_22F916AE8(v179, v202);
        v199 = v203;
      }

      else
      {

        v199 = *v220;
      }

      v16 = v261;
      v204 = v261[172];
      v240 = v261[126];
      v205 = v261[125];
      v234 = v261[93];
      v236 = v261[124];
      v206 = v261[92];
      v207 = [v260 timeLocationIdentifier];
      v208 = sub_22F989AC0();
      v210 = v209;

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v262 = *(v206 + v204);
      *(v206 + v204) = 0x8000000000000000;
      sub_22F919744(v199, v208, v210, isUniquelyReferenced_nonNull_native);

      *(v206 + v204) = v262;
      swift_endAccess();
      swift_beginAccess();
      sub_22F918560(v251, v157, v234);
      sub_22F910EEC(v234, &qword_27DAD1BD8, &qword_22F991FF0);
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v205 + 8))(v240, v236);
    }

    else
    {

      v190 = sub_22F989A00();
      v191 = sub_22F989C20();

      v192 = os_log_type_enabled(v190, v191);
      v193 = v16[126];
      v194 = v16[125];
      v195 = v16[124];
      if (v192)
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v262 = v197;
        *v196 = 136315138;
        v198 = sub_22F916FA0(v163, v157, &v262);

        *(v196 + 4) = v198;
        _os_log_impl(&dword_22F907000, v190, v191, "PublicEventShazamQuery.submitQuery - unexpectedly could not find timeLocationTuple for request %s", v196, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v197);
        MEMORY[0x231904DE0](v197, -1, -1);
        MEMORY[0x231904DE0](v196, -1, -1);
      }

      else
      {
      }

      (*(v194 + 8))(v193, v195);
    }

    v212 = sub_22F91C690();
    v213 = swift_task_alloc();
    v16[173] = v213;
    *v213 = v16;
    v213[1] = sub_22F9149E4;
    v214 = v16[152];
    v215 = v16[127];

    return MEMORY[0x282200308](v215, v214, v212);
  }
}

uint64_t sub_22F916574()
{
  *(v0 + 712) = *(v0 + 1392);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1AD0, &qword_22F992090);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_22F916604, 0, 0);
}

uint64_t sub_22F916604()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  (*(v0 + 1352))(*(v0 + 1240), *(v0 + 1216));
  sub_22F91684C(v2, "PublicEventShazamQuery.submitQuery", 34, 2, v1);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22F91684C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_22F9899B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22F989970();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22F989990();
  sub_22F9899C0();
  v21 = sub_22F989C50();
  result = sub_22F989CB0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_22F9899F0();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_22F989950();
      _os_signpost_emit_with_name_impl(&dword_22F907000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x231904DE0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_22F916AE8(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22F989D00();
    sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
    sub_22F91CE08();
    sub_22F989BF0();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_22F9098B0(v2);
      return;
    }

    while (1)
    {
      sub_22F91A42C(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22F989D30())
      {
        sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id PublicEventShazamQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventShazamQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublicEventShazamQuery(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22F916EA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D08, &qword_22F992170);
  v4 = *(sub_22F9895B0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22F916FA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22F91706C(v11, 0, 0, 1, a1, a2);
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
    sub_22F91CDAC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22F91706C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22F917178(a5, a6);
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
    result = sub_22F989DA0();
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

void *sub_22F917178(uint64_t a1, unint64_t a2)
{
  v3 = sub_22F9171C4(a1, a2);
  sub_22F9172F4(&unk_284488220);
  return v3;
}

void *sub_22F9171C4(uint64_t a1, unint64_t a2)
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

  v6 = sub_22F9173E0(v5, 0);
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

  result = sub_22F989DA0();
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
        v10 = sub_22F989B10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22F9173E0(v10, 0);
        result = sub_22F989D70();
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

uint64_t sub_22F9172F4(uint64_t result)
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

  result = sub_22F917454(result, v11, 1, v3);
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

void *sub_22F9173E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CD0, &qword_22F992148);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22F917454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CD0, &qword_22F992148);
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

unsigned __int8 *sub_22F917548(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_22F989B60();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22F917ACC(result, v5);
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
      result = sub_22F989DA0();
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

uint64_t sub_22F917ACC(uint64_t a1, unint64_t a2)
{
  v2 = sub_22F989B70();
  v6 = sub_22F917B4C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22F917B4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22F989CD0();
    if (!v9 || (v10 = v9, v11 = sub_22F9173E0(v9, 0), v12 = sub_22F917CA4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22F989AE0();

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
      return sub_22F989AE0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22F989DA0();
LABEL_4:

  return sub_22F989AE0();
}

unint64_t sub_22F917CA4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22F917EC4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22F989B40();
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
          result = sub_22F989DA0();
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

    result = sub_22F917EC4(v12, a6, a7);
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

    result = sub_22F989B20();
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

unint64_t sub_22F917EC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22F989B50();
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
    v5 = MEMORY[0x231903CC0](15, a1 >> 16);
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

uint64_t *sub_22F917F40@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_22F91B588(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22F989400();
      swift_allocObject();
      v8 = sub_22F9893B0();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_22F989470();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_22F918008(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_22F91CF10(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22F91CF10(v7, v6);
    *v4 = xmmword_22F991FB0;
    sub_22F91CF10(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22F9893C0() && __OFSUB__(v7, sub_22F9893F0()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22F989400();
      swift_allocObject();
      v14 = sub_22F9893A0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22F9184AC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_22F91CF10(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22F991FB0;
    sub_22F91CF10(0, 0xC000000000000000);
    sub_22F989460();
    result = sub_22F9184AC(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_22F9183AC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22F91B588(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22F91B6E0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22F91B75C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22F918440(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22F9184AC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22F9893C0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22F9893F0();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22F9893E0();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22F918560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22F91879C(a1, a2, sub_22F919C70);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F919D28();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_22F9895B0();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_22F9193A8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_22F9895B0();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_22F9186E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22F91879C(a1, a2, sub_22F919C70);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22F91A118();
      v10 = v12;
    }

    sub_22F910E6C((*(v10 + 56) + 32 * v8), a3);
    sub_22F919594(v8, v10);
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

uint64_t sub_22F91879C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_22F989ED0();
  sub_22F989AF0();
  v5 = sub_22F989EE0();

  return a3(a1, a2, v5);
}

uint64_t sub_22F918820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_22F9895B0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC0, &qword_22F992138);
  v42 = v4;
  result = sub_22F989E50();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_22F989ED0();
      sub_22F989AF0();
      result = sub_22F989EE0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22F918BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC8, &qword_22F992140);
  v34 = v4;
  result = sub_22F989E50();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_22F989ED0();
      sub_22F989AF0();
      result = sub_22F989EE0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22F918E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CA0, &qword_22F992128);
  v33 = v4;
  result = sub_22F989E50();
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
        sub_22F910E6C(v24, v34);
      }

      else
      {
        sub_22F91CDAC(v24, v34);
      }

      sub_22F989ED0();
      sub_22F989AF0();
      result = sub_22F989EE0();
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
      result = sub_22F910E6C(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_22F919100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D10, &qword_22F992178);
  v34 = v4;
  result = sub_22F989E50();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22F989ED0();
      sub_22F989AF0();
      result = sub_22F989EE0();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_22F9193A8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F989CE0() + 1) & ~v5;
    while (1)
    {
      sub_22F989ED0();

      sub_22F989AF0();
      v9 = sub_22F989EE0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_22F9895B0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22F919594(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22F989CE0() + 1) & ~v5;
    do
    {
      sub_22F989ED0();

      sub_22F989AF0();
      v10 = sub_22F989EE0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22F919744(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22F91879C(a2, a3, sub_22F919C70);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22F918BA0(v16, a4 & 1);
      v11 = sub_22F91879C(a2, a3, sub_22F919C70);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22F989E90();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22F919FA8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_22F9198E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22F91879C(a2, a3, sub_22F919C70);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22F91A118();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22F918E48(v16, a4 & 1);
    v11 = sub_22F91879C(a2, a3, sub_22F919C70);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22F989E90();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_22F910E6C(a1, v22);
  }

  else
  {
    sub_22F919C04(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_22F919A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22F91879C(a2, a3, sub_22F919C70);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22F919100(v16, a4 & 1);
      v11 = sub_22F91879C(a2, a3, sub_22F919C70);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22F989E90();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22F91A2BC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_22F919C04(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F910E6C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_22F919C70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22F989E70())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_22F919D28()
{
  v1 = v0;
  v35 = sub_22F9895B0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC0, &qword_22F992138);
  v3 = *v0;
  v4 = sub_22F989E40();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

void *sub_22F919FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC8, &qword_22F992140);
  v2 = *v0;
  v3 = sub_22F989E40();
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

void *sub_22F91A118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CA0, &qword_22F992128);
  v2 = *v0;
  v3 = sub_22F989E40();
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
        sub_22F91CDAC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22F910E6C(v25, (*(v4 + 56) + v22));
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

void *sub_22F91A2BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D10, &qword_22F992178);
  v2 = *v0;
  v3 = sub_22F989E40();
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

        result = swift_unknownObjectRetain();
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

uint64_t sub_22F91A42C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22F989D20();

    if (v9)
    {

      sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22F989D10();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_22F91A664(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_22F91A854(v20 + 1);
    }

    v18 = v8;
    sub_22F91AA7C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
  v11 = sub_22F989C90();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_22F91AB00(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22F989CA0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22F91A664(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CB8, &qword_22F992130);
    v2 = sub_22F989D60();
    v15 = v2;
    sub_22F989D00();
    if (sub_22F989D30())
    {
      sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_22F91A854(v9 + 1);
        }

        v2 = v15;
        result = sub_22F989C90();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_22F989D30());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22F91A854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CB8, &qword_22F992130);
  result = sub_22F989D50();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22F989C90();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22F91AA7C(uint64_t a1, uint64_t a2)
{
  sub_22F989C90();
  result = sub_22F989CF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_22F91AB00(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F91A854(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22F91AC70();
      goto LABEL_12;
    }

    sub_22F91ADC0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_22F989C90();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_22F91CE74(0, &qword_27DAD1CA8, off_2788A6188);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_22F989CA0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F989E80();
  __break(1u);
}

id sub_22F91AC70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CB8, &qword_22F992130);
  v2 = *v0;
  v3 = sub_22F989D40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_22F91ADC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CB8, &qword_22F992130);
  result = sub_22F989D50();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22F989C90();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22F91AFD4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22F9895B0();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22F91B278(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22F989A80();
      sub_22F91C648(&qword_27DAD1CF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22F989A30();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22F91B458(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22F91B458(v5, v6);
  }

  sub_22F989A80();
  sub_22F91C648(&qword_27DAD1CF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22F989A30();
}

uint64_t sub_22F91B458(uint64_t a1, uint64_t a2)
{
  result = sub_22F9893C0();
  if (!result || (result = sub_22F9893F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22F9893E0();
      sub_22F989A80();
      sub_22F91C648(&qword_27DAD1CF0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22F989A30();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F91B538@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22F989D80();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F91B588(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22F91B640(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_22F989400();
      swift_allocObject();
      sub_22F9893D0();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22F989470();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22F91B6E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22F989400();
  swift_allocObject();
  result = sub_22F9893B0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22F989470();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22F91B75C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22F989400();
  swift_allocObject();
  result = sub_22F9893B0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_22F91B7E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F989D10())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x231903F20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_22F91A42C(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

unint64_t sub_22F91B8B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC8, &qword_22F992140);
    v3 = sub_22F989E60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22F91879C(v5, v6, sub_22F919C70);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22F91B9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D18, qword_22F992180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1CC0, &qword_22F992138);
    v7 = sub_22F989E60();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22F91D018(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22F91879C(*v5, v12, sub_22F919C70);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_22F9895B0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_22F91BBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D10, &qword_22F992178);
    v3 = sub_22F989E60();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_22F91879C(v5, v6, sub_22F919C70);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_22F91BCD8(unint64_t a1, uint64_t a2, double a3)
{
  v73 = sub_22F989A20();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F9894D0();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v69 - v11;
  v12 = sub_22F989390();
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F989590();
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F9895B0();
  v88 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v91 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v69 - v19;
  v20 = sub_22F9896C0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = OBJC_IVAR___CLSPublicEventShazamQuery_logger;
  sub_22F989A10();
  *&v3[OBJC_IVAR___CLSPublicEventShazamQuery_invalidationTokens] = 0;
  v24 = OBJC_IVAR___CLSPublicEventShazamQuery_internalResolvedPublicEventsByTimeLocationTupleIdentifier;
  *&v3[v24] = sub_22F91B8B8(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR___CLSPublicEventShazamQuery_radius] = a3;
  type metadata accessor for PublicEventShazamQueryContext(0);
  v25 = swift_dynamicCastClass();
  v72 = v6;
  if (v25)
  {
    (*(v21 + 16))(&v3[OBJC_IVAR___CLSPublicEventShazamQuery_service], v25 + OBJC_IVAR___CLSPublicEventShazamQueryContext_service, v20);
  }

  else
  {
    sub_22F9896B0();
    (*(v21 + 32))(&v3[OBJC_IVAR___CLSPublicEventShazamQuery_service], v23, v20);
  }

  v26 = MEMORY[0x277D84F90];
  v27 = sub_22F91B9D0(MEMORY[0x277D84F90]);
  v92 = sub_22F91BBC0(v26);
  v70 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_38:
    v28 = sub_22F989D10();
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v3;
  if (v28)
  {
    v29 = 0;
    v83 = a1 & 0xC000000000000001;
    v76 = a1 & 0xFFFFFFFFFFFFFF8;
    v81 = v88 + 8;
    v82 = (v88 + 16);
    v77 = v88 + 40;
    v78 = v88 + 32;
    v79 = v28;
    v80 = a1;
    do
    {
      if (v83)
      {
        v32 = MEMORY[0x231903F20](v29, a1);
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v29 >= *(v76 + 16))
        {
          goto LABEL_37;
        }

        v32 = *(a1 + 8 * v29 + 32);
        swift_unknownObjectRetain();
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      v89 = v33;
      [v32 coordinates];
      [v32 coordinates];
      sub_22F989580();
      v34 = [v32 expandedStartDate];
      sub_22F9894C0();

      v35 = [v32 expandedEndDate];
      sub_22F9894C0();

      sub_22F989370();
      v36 = v90;
      sub_22F9895A0();
      v37 = sub_22F989570();
      v39 = v38;
      swift_unknownObjectRetain();
      v40 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v40;
      sub_22F919A60(v32, v37, v39, isUniquelyReferenced_nonNull_native);

      v92 = v94;
      v42 = sub_22F989570();
      a1 = v43;
      v44 = v36;
      v45 = v16;
      (*v82)(v91, v44, v16);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v27;
      v3 = v27;
      v16 = sub_22F91879C(v42, a1, sub_22F919C70);
      v48 = *(v27 + 2);
      v49 = (v47 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_35;
      }

      v51 = v47;
      if (*(v27 + 3) >= v50)
      {
        if (v46)
        {
          if (v47)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v3 = &v94;
          sub_22F919D28();
          if (v51)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_22F918820(v50, v46);
        v3 = v94;
        v52 = sub_22F91879C(v42, a1, sub_22F919C70);
        if ((v51 & 1) != (v53 & 1))
        {
          result = sub_22F989E90();
          __break(1u);
          return result;
        }

        v16 = v52;
        if (v51)
        {
LABEL_8:

          v27 = v94;
          v30 = v88;
          v31 = *(v94 + 7) + *(v88 + 72) * v16;
          v16 = v45;
          (*(v88 + 40))(v31, v91, v45);
          swift_unknownObjectRelease();
          (*(v30 + 8))(v90, v45);
          goto LABEL_9;
        }
      }

      v27 = v94;
      *&v94[8 * (v16 >> 6) + 64] |= 1 << v16;
      v54 = (*(v27 + 6) + 16 * v16);
      *v54 = v42;
      v54[1] = a1;
      v55 = v88;
      v56 = *(v27 + 7) + *(v88 + 72) * v16;
      v16 = v45;
      (*(v88 + 32))(v56, v91, v45);
      swift_unknownObjectRelease();
      (*(v55 + 8))(v90, v45);
      v57 = *(v27 + 2);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_36;
      }

      *(v27 + 2) = v59;
LABEL_9:
      ++v29;
      a1 = v80;
    }

    while (v89 != v79);
  }

  v60 = v74;
  *&v74[OBJC_IVAR___CLSPublicEventShazamQuery_unresolvedRequestByRequestIdentifier] = v27;
  *&v60[OBJC_IVAR___CLSPublicEventShazamQuery_timeLocationTupleByRequestIdentifier] = v92;
  v61 = v72;
  v62 = v73;
  (*(v72 + 16))(v75, &v60[v71], v73);

  v63 = sub_22F989A00();
  v64 = sub_22F989C40();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 134218240;
    if (v70)
    {
      v66 = sub_22F989D10();
    }

    else
    {
      v66 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v65 + 4) = v66;

    *(v65 + 12) = 2048;
    *(v65 + 14) = a3;
    _os_log_impl(&dword_22F907000, v63, v64, "PublicEventShazamQuery initialized with %ld tuple(s) and radius: %f", v65, 0x16u);
    MEMORY[0x231904DE0](v65, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v61 + 8))(v75, v62);
  v67 = type metadata accessor for PublicEventShazamQuery(0);
  v93.receiver = v60;
  v93.super_class = v67;
  return objc_msgSendSuper2(&v93, sel_init);
}

uint64_t sub_22F91C648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22F91C690()
{
  result = qword_28148ACB0;
  if (!qword_28148ACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAD1C70, &qword_22F992088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148ACB0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for PublicEventShazamQuery(uint64_t a1)
{
  result = qword_28148ABC8;
  if (!qword_28148ABC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F91C7D4(uint64_t a1)
{
  result = sub_22F989A20();
  if (v2 <= 0x3F)
  {
    result = sub_22F9896C0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of PublicEventShazamQuery.submit()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F91D088;

  return v5();
}

uint64_t dispatch thunk of PublicEventShazamQuery.submitQuery()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F91CB68;

  return v5();
}

uint64_t sub_22F91CB68(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22F91CD00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22F90D568;

  return sub_22F913414(v2, v3);
}

uint64_t sub_22F91CDAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22F91CE08()
{
  result = qword_27DAD1CB0;
  if (!qword_27DAD1CB0)
  {
    sub_22F91CE74(255, &qword_27DAD1CA8, off_2788A6188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD1CB0);
  }

  return result;
}

uint64_t sub_22F91CE74(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22F91CEBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22F91CF10(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_22F91CF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22F918440(sub_22F91CFF8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22F91CFCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F91CF10(result, a2);
  }

  return result;
}

uint64_t sub_22F91CFE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22F91D018(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1D18, qword_22F992180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22F91D0E8()
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v1 = result;
    v2 = [result maxParametersCountForSpatialEventLookup];

    return v2;
  }

  return result;
}

id sub_22F91D144(uint64_t a1, double a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(CLSPublicEventGeoServiceQuery);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C90, &qword_22F992320);
  v7 = sub_22F989B80();
  v8 = [v6 initWithTimeLocationTuples:v7 radius:a2];

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_allocWithZone(CLSQueueBasedGeoMapQueryHelper) initWithQueryObject_];
  [v9 setSimulatesTimeout_];

  return v9;
}

id sub_22F91D350()
{
  v0 = objc_allocWithZone(CLSPublicEventGEOQueryContext);

  return [v0 init];
}

uint64_t sub_22F91D3C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22F9131A0;

  return sub_22F91D8DC();
}

uint64_t sub_22F91D5D8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22F91D680;

  return sub_22F91D8DC();
}

uint64_t sub_22F91D680(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_22F989420();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

id PublicEventGeoServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PublicEventGeoServiceClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PublicEventGeoServiceClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PublicEventGeoServiceClient.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PublicEventGeoServiceClient();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22F91D8DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1E00, &qword_22F992210);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F91D974, 0, 0);
}

uint64_t sub_22F91D974()
{
  v1 = *(v0 + 16);
  v2 = sub_22F9894D0();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = sub_22F989AB0();
  v5 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v5 != 1)
  {
    v7 = *(v0 + 16);
    v6 = sub_22F9894B0();
    (*(v3 + 8))(v7, v2);
  }

  v8 = [objc_allocWithZone(CLSPublicEventServerVersion) initWithVersionString:v4 dateOfServerUpdate:v6];

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t dispatch thunk of PublicEventGeoServiceClient.serverVersion()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F91CB68;

  return v5();
}

uint64_t sub_22F91DCFC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F90D568;

  return sub_22F91D5D8(v2);
}

uint64_t sub_22F91DDA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F9110BC;

  return sub_22F91FA84(v2, v3, v4);
}

uint64_t sub_22F91DE68()
{
  sub_22F91E91C();
  result = sub_22F989CC0();
  qword_28148AB38 = result;
  return result;
}

char *CLSVisualUnderstandingServiceClient.init(visionCacheURL:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22F989920();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F9898C0();
  MEMORY[0x28223BE20](v9 - 8);
  sub_22F9898B0();
  v10 = sub_22F989450();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  (*(v6 + 104))(v8, *MEMORY[0x277D1F3D8], v5);
  sub_22F989930();
  swift_allocObject();
  v12 = sub_22F989910();
  if (v2)
  {
    (*(v11 + 8))(a1, v10);
    type metadata accessor for CLSVisualUnderstandingServiceClient();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___CLSVisualUnderstandingServiceClient_vuService] = v12;
    v13 = type metadata accessor for CLSVisualUnderstandingServiceClient();
    v15.receiver = v3;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v11 + 8))(a1, v10);
  }

  return v3;
}

uint64_t sub_22F91E270@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1DE8, &qword_22F992220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD1DF0, &qword_22F992228);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_22F9898E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_22F9898F0();
  }

  else
  {
    sub_22F989900();
  }

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22F910EEC(v9, &unk_27DAD1DF0, &qword_22F992228);
    v14 = sub_22F989C00();
    if (qword_28148AB30 != -1)
    {
      swift_once();
    }

    v15 = qword_28148AB38;
    if (os_log_type_enabled(qword_28148AB38, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = a1 & 1;
      _os_log_impl(&dword_22F907000, v15, v14, "VU Device Owner is nil. Did ignore contact linking: %{BOOL}d", v16, 8u);
      MEMORY[0x231904DE0](v16, -1, -1);
    }

    v17 = sub_22F9894F0();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_22F9898D0();
    v19 = sub_22F9894F0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v6, 1, v19) == 1)
    {
      sub_22F910EEC(v6, &qword_27DAD1DE8, &qword_22F992220);
      sub_22F989C00();
      if (qword_28148AB30 != -1)
      {
        swift_once();
      }

      sub_22F989940();
      (*(v11 + 8))(v13, v10);
      return (*(v20 + 56))(a2, 1, 1, v19);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v20 + 32))(a2, v6, v19);
      return (*(v20 + 56))(a2, 0, 1, v19);
    }
  }
}

id CLSVisualUnderstandingServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CLSVisualUnderstandingServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLSVisualUnderstandingServiceClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F91E91C()
{
  result = qword_28148AB28;
  if (!qword_28148AB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28148AB28);
  }

  return result;
}

id CLSPublicEventManager.cachedServiceVersion(for:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 0;
  v2 = [v1 getCachedServiceVersion:v10 forEventSourceService:a1 error:&v9];
  v4 = v9;
  v3 = v10[0];
  if (v2)
  {
    if (v10[0])
    {
      v3 = sub_22F989AC0();
      v5 = v4;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v6 = v9;
    v3 = v3;
    sub_22F989430();

    swift_willThrow();
  }

  return v3;
}

void CLSPublicEventManager.scheduledCacheInvalidationDate(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1E00, &qword_22F992210);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v18 = 0;
  v19[0] = 0;
  v9 = [v3 getScheduledCacheInvalidationDate:v19 forEventSourceService:a1 error:&v18];
  v10 = v18;
  v11 = v19[0];
  if (v9)
  {
    if (v19[0])
    {
      sub_22F9894C0();
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v15 = sub_22F9894D0();
    (*(*(v15 - 8) + 56))(v8, v12, 1, v15);
    sub_22F91EBD0(v8, a2);
    v16 = v10;
  }

  else
  {
    v13 = v18;
    v14 = v11;
    sub_22F989430();

    swift_willThrow();
  }
}

uint64_t sub_22F91EBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1E00, &qword_22F992210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22F91EC50(unint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = objc_allocWithZone(type metadata accessor for PublicEventShazamQuery(0));

  swift_unknownObjectRetain();
  v9 = sub_22F91BCD8(a1, a2, a4);
  swift_unknownObjectRelease();
  type metadata accessor for PublicEventShazamQueryHelper(0);
  swift_allocObject();
  return PublicEventShazamQueryHelper.init(with:isSimulatingTimeout:)(v9, a3);
}

id sub_22F91EDCC()
{
  v0 = objc_allocWithZone(type metadata accessor for PublicEventShazamQueryContext(0));

  return [v0 init];
}

uint64_t sub_22F91EE40()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1E00, &qword_22F992210);
  v1[3] = swift_task_alloc();
  v2 = sub_22F9894D0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_22F989690();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_22F9896C0();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F91EFFC, 0, 0);
}

uint64_t sub_22F91EFFC()
{
  sub_22F9896B0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22F91F0A0;
  v2 = *(v0 + 80);

  return MEMORY[0x2821B6438](v2);
}