uint64_t sub_274186324(uint64_t a1)
{
  v4 = *(type metadata accessor for WiFiSettingsMainView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_274181C14(a1, v6, v7, v1 + v5);
}

unint64_t sub_274186470()
{
  result = qword_28093AE48;
  if (!qword_28093AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AE40, &qword_2741D6540);
    sub_274186558(&qword_28093AE50, type metadata accessor for KnownNetworksSectionTable, &unk_2741D5150);
    sub_2740A6D24(&qword_28093AE58, &qword_28093AE60, &qword_2741D6548, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE48);
  }

  return result;
}

uint64_t sub_274186558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2741865A0()
{
  result = qword_28093AE78;
  if (!qword_28093AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE78);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for WiFiSettingsMainView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938708, &qword_2741CC8B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938710, &qword_2741D5350);
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_2741C7C0C();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_2741C830C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[8];
  v12 = sub_2741C689C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v1[19];
  v15 = sub_2741C673C();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AD18, &qword_2741D62B0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_27418698C()
{
  type metadata accessor for WiFiSettingsMainView(0);

  return sub_27418028C();
}

unint64_t sub_2741869FC()
{
  result = qword_28093AE90;
  if (!qword_28093AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AE90);
  }

  return result;
}

uint64_t sub_274186B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_274186B68(uint64_t a1)
{
  v2 = type metadata accessor for KnownNetworksSectionTable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274186BC4()
{
  result = qword_28093AEA0;
  if (!qword_28093AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AEA0);
  }

  return result;
}

uint64_t sub_274186C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E10, &qword_2741D8580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_274186CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_274104E24(a1, v4, v5, v1 + 32, v6);
}

uint64_t objectdestroy_77Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

void sub_274186E08(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2741C848C())
  {
    v5 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2743E6600](v5, a1);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = v6;
      MEMORY[0x2743E6040]();
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2741C800C();
      }

      sub_2741C802C();

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(a1 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_274186F30(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2740BA268(0, &qword_280937E60, 0x277D02B58);
    **(*(v4 + 64) + 40) = sub_2741C7FEC();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_274187020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 153) = a4;
  *(v5 + 200) = a3;
  *(v5 + 208) = v4;
  *(v5 + 184) = a1;
  *(v5 + 192) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  *(v5 + 216) = swift_task_alloc();
  v6 = sub_2741C6AFC();
  *(v5 + 224) = v6;
  *(v5 + 232) = *(v6 - 8);
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274187120, 0, 0);
}

uint64_t sub_274187120()
{
  v1 = *(v0 + 208);
  v2 = swift_allocObject();
  *(v0 + 248) = v2;
  v2[16] = 0;
  if (!*(v1 + 32))
  {
    goto LABEL_4;
  }

  v3 = "directScan(for:on:)";
  if (qword_280937360 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = __swift_project_value_buffer(v6, qword_280945DD8);
    (*(v5 + 16))(v4, v7, v6);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x1000000000000035, v3 | 0x8000000000000000);
    (*(v5 + 8))(v4, v6);
    sub_27418EA94(8u);
LABEL_4:
    v8 = *(v0 + 153);
    v9 = sub_2740CE580(0);
    *(v0 + 256) = v9;
    [v9 setMinimumRSSI_];
    v10 = sub_2741C7E3C();
    [v9 setSSID_];

    if (v8)
    {
      break;
    }

    v54 = v9;
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    v15 = swift_allocObject();
    *(v0 + 264) = v15;
    *(v15 + 16) = 1;
    sub_2741C80BC();
    v16 = sub_2741C80DC();
    v50 = *(*(v16 - 8) + 56);
    v51 = v16;
    v50(v14, 0, 1);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0x403E000000000000;
    v17[5] = v2;
    v53 = v2;

    v52 = sub_2741A771C(0, 0, v14, &unk_2741D6620, v17);
    *(v0 + 272) = v52;
    v18 = [*(v13 + 16) supportedChannelsWithCountryCode_];
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v20 = v18;
      sub_2740BA268(0, &qword_280938D00, 0x277D02B00);
      v21 = sub_2741C7FEC();
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v55 = v19;
    if (v21 >> 62)
    {
      v22 = sub_2741C848C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D84F90];
    if (!v22)
    {
      v29 = MEMORY[0x277D84F90];
LABEL_26:

      if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
      {
        if (*(v29 + 16))
        {
          goto LABEL_29;
        }

LABEL_38:

LABEL_39:
        v39 = *(v0 + 208);
        v38 = *(v0 + 216);
        v40 = *(v0 + 184);
        v41 = *(v0 + 192);
        sub_2740BA268(0, &qword_280938D00, 0x277D02B00);
        v42 = sub_2741C7FCC();

        [v54 setChannels_];

        v43 = swift_allocObject();
        *(v0 + 280) = v43;
        *(v43 + 16) = v23;
        sub_2741C80BC();
        (v50)(v38, 0, 1, v51);
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v15;
        v44[5] = v40;
        v44[6] = v41;
        v44[7] = v43;
        v44[8] = v39;
        v44[9] = v54;
        v44[10] = v52;
        v44[11] = v53;
        v44[12] = 0x3FF0000000000000;

        v45 = v54;

        v46 = sub_2741A79C8(0, 0, v38, &unk_2741D6630, v44);
        *(v0 + 288) = v46;
        v47 = swift_task_alloc();
        *(v0 + 296) = v47;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AED8, &unk_2741D7EB0);
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
        *(v0 + 304) = v33;
        *v47 = v0;
        v47[1] = sub_2741878AC;
        v34 = MEMORY[0x277D84950];
        v30 = v0 + 144;
        v31 = v46;
        v32 = v48;

        return MEMORY[0x282200440](v30, v31, v32, v33, v34);
      }

      if (!sub_2741C848C())
      {
        goto LABEL_38;
      }

LABEL_29:

      if ((v29 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x2743E6600](0, v29);
      }

      else
      {
        if (!*(v29 + 16))
        {
          __break(1u);
          return MEMORY[0x282200440](v30, v31, v32, v33, v34);
        }

        v35 = *(v29 + 32);
      }

      v36 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938980, &qword_2741CCB70);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2741CCB60;
      *(v37 + 32) = v36;
      goto LABEL_39;
    }

    v24 = 0;
    v3 = v21 & 0xFFFFFFFFFFFFFF8;
    v2 = &unk_279ECC000;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2743E6600](v24, v21);
      }

      else
      {
        if (v24 >= *(v3 + 16))
        {
          goto LABEL_34;
        }

        v25 = *(v21 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = *(v0 + 200);
      if ([v25 channel] == v28)
      {
        sub_2741C859C();
        sub_2741C85BC();
        v3 = v21 & 0xFFFFFFFFFFFFFF8;
        sub_2741C85CC();
        sub_2741C85AC();
      }

      else
      {
      }

      ++v24;
      if (v27 == v22)
      {
        v29 = v55;
        v23 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v11 = *(*(v0 + 208) + 16);
  *(v0 + 312) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_274187B18;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_274186F30;
  *(v0 + 104) = &block_descriptor_28_0;
  *(v0 + 112) = v12;
  [v11 performScanWithParameters:v9 reply:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2741878AC()
{

  return MEMORY[0x2822009F8](sub_2741879A8, 0, 0);
}

uint64_t sub_2741879A8()
{
  v1 = *(v0 + 144);
  if (*(v0 + 152))
  {
    v2 = *(v0 + 256);
    *(v0 + 176) = v1;
    swift_willThrowTypedImpl();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 256);

    v6 = *(v0 + 8);

    return v6(v1);
  }
}

uint64_t sub_274187B18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_274187E0C;
  }

  else
  {
    v2 = sub_274187C28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274187C28()
{
  v1 = *(v0 + 160);

  sub_2741C856C();

  if (v1 >> 62)
  {
    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 168) = v2;
  v3 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v3);

  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E2FC0);
  sub_2740CB218(0x20646E756F46, 0xE600000000000000, 0xD000000000000013, 0x80000002741E2FE0);

  if (v1 >> 62)
  {
    result = sub_2741C848C();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v8 = *(v0 + 256);

    v6 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2743E6600](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v1 + 32);
  }

  v6 = v5;
  v7 = *(v0 + 256);

LABEL_11:

  v9 = *(v0 + 8);

  return v9(v6);
}

uint64_t sub_274187E0C(uint64_t a1)
{
  v3 = v1[39];
  v2 = v1[40];
  v4 = v1[32];
  swift_willThrow();

  sub_2740D2F60();
  swift_allocError();
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_274187EDC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEA8, &qword_2741D65C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20[-v11];
  [*(v3 + 16) activate];
  v13 = *(v3 + 16);
  type metadata accessor for TriBandInterface();
  v14 = swift_allocObject();
  v15 = sub_274178210(MEMORY[0x277D84F90]);
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = v13;
  v17 = sub_2740D5374();
  v18 = sub_2740D5BBC(v17);

  *(v14 + 24) = v18;

  v21 = v4;
  v22 = v14;
  v23 = a2;
  v24 = a3;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A6A8, &qword_2741D4638);
  (*(v9 + 104))(v12, *MEMORY[0x277D858A0], v8);
  sub_2741C81BC();
}

uint64_t sub_27418809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v42 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v39 - v19;
  v21 = sub_2741C6AFC();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 32))
  {

    return sub_2740CB218(0xD000000000000043, 0x80000002741E2D90, 0x746977286E616373, 0xEB00000000293A68);
  }

  else
  {
    v39 = v11;
    v40 = a1;
    v41 = a3;
    if (qword_280937360 != -1)
    {
      v38 = v24;
      swift_once();
      v24 = v38;
    }

    v28 = v24;
    v29 = __swift_project_value_buffer(v24, qword_280945DD8);
    (*(v22 + 16))(v26, v29, v28);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0x100000000000001BLL, 0x80000002741E2D70);
    (*(v22 + 8))(v26, v28);
    sub_2741C80BC();
    v30 = sub_2741C80DC();
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    v31 = v39;
    (*(v12 + 16))(v16, v40, v39);
    v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    (*(v12 + 32))(v35 + v32, v16, v31);
    *(v35 + v33) = a2;
    v36 = v42;
    *(v35 + v34) = v41;
    v37 = v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v37 = a5;
    *(v37 + 8) = a6;
    *(v37 + 16) = v36;

    *(a2 + 32) = sub_2740CE980(0, 0, v20, &unk_2741D65E0, v35);
  }
}

uint64_t sub_274188494(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 312) = a1;
  *(v7 + 296) = a6;
  *(v7 + 304) = a7;
  *(v7 + 288) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB8, &qword_2741D65E8);
  *(v7 + 320) = swift_task_alloc();
  v8 = sub_2741C6AFC();
  *(v7 + 328) = v8;
  *(v7 + 336) = *(v8 - 8);
  *(v7 + 344) = swift_task_alloc();
  v9 = sub_2741C85FC();
  *(v7 + 352) = v9;
  *(v7 + 360) = *(v9 - 8);
  *(v7 + 368) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEC0, &qword_2741D65F0);
  *(v7 + 376) = v10;
  *(v7 + 384) = *(v10 - 8);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418867C, 0, 0);
}

uint64_t sub_27418867C()
{
  *(v0 + 424) = sub_2741C80AC();
  *(v0 + 432) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188714, v2, v1);
}

uint64_t sub_274188714()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741887AC, 0, 0);
}

uint64_t sub_2741887AC(uint64_t a1)
{
  *(v1 + 440) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188838, v3, v2);
}

uint64_t sub_274188838()
{

  *(v0 + 448) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741888B4, 0, 0);
}

uint64_t sub_2741888B4(uint64_t a1)
{
  *(v1 + 456) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274188940, v3, v2);
}

uint64_t sub_274188940()
{

  sub_2741B8FB8(2);

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_2741889F4;
  v2 = *(v0 + 304);

  return sub_27418B81C(v0 + 16, 0, v2);
}

uint64_t sub_2741889F4()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_27418A1C4;
  }

  else
  {
    v2 = sub_274188B08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274188B08()
{
  v1 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  sub_2741C817C();
  v4 = *(v3 + 8);
  v0[61] = v4;
  v0[62] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[63] = v5;
  *v5 = v0;
  v5[1] = sub_274188C04;
  v6 = v0[38];

  return sub_27418B81C((v0 + 7), 1, v6);
}

uint64_t sub_274188C04()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_27418A758;
  }

  else
  {
    v2 = sub_274188D18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274188D18()
{
  v1 = v0[61];
  v2 = v0[51];
  v3 = v0[47];
  sub_2741C817C();
  v1(v2, v3);
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_274188DF0;
  v5 = v0[38];

  return sub_27418B81C((v0 + 12), 2, v5);
}

uint64_t sub_274188DF0()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_27418ACEC;
  }

  else
  {
    v2 = sub_274188F04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274188F04()
{
  v1 = v0[61];
  v2 = v0[50];
  v3 = v0[47];
  sub_2741C817C();
  v1(v2, v3);
  v4 = sub_2741980C8();
  v0[67] = v4;
  v5 = swift_task_alloc();
  v0[68] = v5;
  *v5 = v0;
  v5[1] = sub_274188FEC;

  return sub_27418C020((v0 + 17), v4);
}

uint64_t sub_274188FEC()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_27418B280;
  }

  else
  {

    v2 = sub_274189108;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274189108()
{
  v1 = v0[61];
  v2 = v0[49];
  v3 = v0[47];
  sub_2741C817C();
  v1(v2, v3);
  v0[70] = sub_2741C809C();
  v5 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741891D0, v5, v4);
}

uint64_t sub_2741891D0()
{

  return MEMORY[0x2822009F8](sub_274189238, 0, 0);
}

uint64_t sub_274189238(uint64_t a1)
{
  *(v1 + 568) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741892C4, v3, v2);
}

uint64_t sub_2741892C4()
{

  *(v0 + 576) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274189340, 0, 0);
}

uint64_t sub_274189340(uint64_t a1)
{
  *(v1 + 584) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_2741893CC, v3, v2);
}

uint64_t sub_2741893CC()
{

  sub_2741B8FB8(4);

  return MEMORY[0x2822009F8](sub_274189448, 0, 0);
}

uint64_t sub_274189448(uint64_t a1)
{
  v2 = sub_2741C882C();
  v4 = v3;
  sub_2741C874C();
  v5 = swift_task_alloc();
  *(v1 + 592) = v5;
  *v5 = v1;
  v5[1] = sub_274189524;

  return sub_2741B724C(v2, v4, 0, 0, 1);
}

uint64_t sub_274189524()
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  *(*v1 + 600) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2741897B8;
  }

  else
  {
    v5 = sub_274189694;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_274189694()
{
  if (sub_2741C816C())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 432) = sub_2741C809C();
    v4 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_274188714, v4, v3);
  }
}

uint64_t sub_2741897B8()
{
  v1 = *(v0 + 600);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v7, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      *(v0 + 272) = v3;
      v12 = sub_2741C808C();
      v13 = v3;
      v14 = swift_dynamicCast();
      v15 = *(*(v12 - 8) + 56);
      v16 = *(v0 + 320);
      if (v14)
      {
        v15(*(v0 + 320), 0, 1, v12);
        sub_27418F42C(v16);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 336);
        v17 = *(v0 + 344);
        v19 = *(v0 + 328);
        v20 = __swift_project_value_buffer(v19, qword_280945DD8);
        (*(v18 + 16))(v17, v20, v19);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v18 + 8))(v17, v19);
      }

      else
      {
        v15(*(v0 + 320), 1, 1, v12);
        sub_27418F42C(v16);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v21 = [v13 description];
        v22 = sub_2741C7E7C();
        v24 = v23;

        MEMORY[0x2743E5FB0](v22, v24);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 336);
        v28 = *(v0 + 344);
        v29 = *(v0 + 328);
        v30 = __swift_project_value_buffer(v29, qword_280945DD8);
        (*(v27 + 16))(v28, v30, v29);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, v26);

        (*(v27 + 8))(v28, v29);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 432) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v33;
    v11 = sub_274188714;
  }

  else
  {

    *(v0 + 624) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v9;
    v11 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_274189D4C()
{

  return MEMORY[0x2822009F8](sub_274189DB4, 0, 0);
}

uint64_t sub_274189DB4(uint64_t a1)
{
  *(v1 + 632) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274189E40, v3, v2);
}

uint64_t sub_274189E40()
{

  *(v0 + 640) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_274189EBC, 0, 0);
}

uint64_t sub_274189EBC(uint64_t a1)
{
  *(v1 + 648) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274189F48, v3, v2);
}

uint64_t sub_274189F48()
{

  sub_2741B8FB8(32);

  return MEMORY[0x2822009F8](sub_274189FC4, 0, 0);
}

uint64_t sub_274189FC4()
{
  v1 = v0[76];
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  sub_2741C856C();
  v2 = v0[25];
  v0[22] = v0[24];
  v0[23] = v2;
  MEMORY[0x2743E5FB0](0xD000000000000027, 0x80000002741E2DE0);
  v0[32] = v1;
  sub_2741C862C();
  MEMORY[0x2743E5FB0](3025191, 0xE300000000000000);
  sub_2740CB218(v0[22], v0[23], 0x746977286E616373, 0xEB00000000293A68);

  v0[33] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  sub_2741C818C();
  if (sub_2741C816C())
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[54] = sub_2741C809C();
    v6 = sub_2741C805C();

    return MEMORY[0x2822009F8](sub_274188714, v6, v5);
  }
}

uint64_t sub_27418A1C4()
{
  v1 = *(v0 + 472);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v7, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      *(v0 + 272) = v3;
      v12 = sub_2741C808C();
      v13 = v3;
      v14 = swift_dynamicCast();
      v15 = *(*(v12 - 8) + 56);
      v16 = *(v0 + 320);
      if (v14)
      {
        v15(*(v0 + 320), 0, 1, v12);
        sub_27418F42C(v16);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 336);
        v17 = *(v0 + 344);
        v19 = *(v0 + 328);
        v20 = __swift_project_value_buffer(v19, qword_280945DD8);
        (*(v18 + 16))(v17, v20, v19);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v18 + 8))(v17, v19);
      }

      else
      {
        v15(*(v0 + 320), 1, 1, v12);
        sub_27418F42C(v16);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v21 = [v13 description];
        v22 = sub_2741C7E7C();
        v24 = v23;

        MEMORY[0x2743E5FB0](v22, v24);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 336);
        v28 = *(v0 + 344);
        v29 = *(v0 + 328);
        v30 = __swift_project_value_buffer(v29, qword_280945DD8);
        (*(v27 + 16))(v28, v30, v29);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, v26);

        (*(v27 + 8))(v28, v29);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 432) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v33;
    v11 = sub_274188714;
  }

  else
  {

    *(v0 + 624) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v9;
    v11 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_27418A758()
{
  v1 = *(v0 + 512);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v7, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      *(v0 + 272) = v3;
      v12 = sub_2741C808C();
      v13 = v3;
      v14 = swift_dynamicCast();
      v15 = *(*(v12 - 8) + 56);
      v16 = *(v0 + 320);
      if (v14)
      {
        v15(*(v0 + 320), 0, 1, v12);
        sub_27418F42C(v16);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 336);
        v17 = *(v0 + 344);
        v19 = *(v0 + 328);
        v20 = __swift_project_value_buffer(v19, qword_280945DD8);
        (*(v18 + 16))(v17, v20, v19);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v18 + 8))(v17, v19);
      }

      else
      {
        v15(*(v0 + 320), 1, 1, v12);
        sub_27418F42C(v16);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v21 = [v13 description];
        v22 = sub_2741C7E7C();
        v24 = v23;

        MEMORY[0x2743E5FB0](v22, v24);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 336);
        v28 = *(v0 + 344);
        v29 = *(v0 + 328);
        v30 = __swift_project_value_buffer(v29, qword_280945DD8);
        (*(v27 + 16))(v28, v30, v29);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, v26);

        (*(v27 + 8))(v28, v29);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 432) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v33;
    v11 = sub_274188714;
  }

  else
  {

    *(v0 + 624) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v9;
    v11 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_27418ACEC()
{
  v1 = *(v0 + 528);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v7, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      *(v0 + 272) = v3;
      v12 = sub_2741C808C();
      v13 = v3;
      v14 = swift_dynamicCast();
      v15 = *(*(v12 - 8) + 56);
      v16 = *(v0 + 320);
      if (v14)
      {
        v15(*(v0 + 320), 0, 1, v12);
        sub_27418F42C(v16);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 336);
        v17 = *(v0 + 344);
        v19 = *(v0 + 328);
        v20 = __swift_project_value_buffer(v19, qword_280945DD8);
        (*(v18 + 16))(v17, v20, v19);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v18 + 8))(v17, v19);
      }

      else
      {
        v15(*(v0 + 320), 1, 1, v12);
        sub_27418F42C(v16);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v21 = [v13 description];
        v22 = sub_2741C7E7C();
        v24 = v23;

        MEMORY[0x2743E5FB0](v22, v24);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 336);
        v28 = *(v0 + 344);
        v29 = *(v0 + 328);
        v30 = __swift_project_value_buffer(v29, qword_280945DD8);
        (*(v27 + 16))(v28, v30, v29);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, v26);

        (*(v27 + 8))(v28, v29);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 432) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v33;
    v11 = sub_274188714;
  }

  else
  {

    *(v0 + 624) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v9;
    v11 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_27418B280()
{

  v1 = *(v0 + 552);
  *(v0 + 240) = v1;
  *(v0 + 608) = v1;
  v2 = v1;
  *(v0 + 616) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2740BA268(0, &qword_280939158, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 248);
    if ([v3 code] == 82)
    {
      if (qword_280937360 != -1)
      {
        swift_once();
      }

      v5 = *(v0 + 336);
      v4 = *(v0 + 344);
      v6 = *(v0 + 328);
      v7 = __swift_project_value_buffer(v6, qword_280945DD8);
      (*(v5 + 16))(v4, v7, v6);
      sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000021, 0x80000002741E2E70);
      (*(v5 + 8))(v4, v6);
      sub_27418EA94(0x10u);
    }

    else
    {
      *(v0 + 272) = v3;
      v12 = sub_2741C808C();
      v13 = v3;
      v14 = swift_dynamicCast();
      v15 = *(*(v12 - 8) + 56);
      v16 = *(v0 + 320);
      if (v14)
      {
        v15(*(v0 + 320), 0, 1, v12);
        sub_27418F42C(v16);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 336);
        v17 = *(v0 + 344);
        v19 = *(v0 + 328);
        v20 = __swift_project_value_buffer(v19, qword_280945DD8);
        (*(v18 + 16))(v17, v20, v19);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, 0xD000000000000032, 0x80000002741E2E30);

        (*(v18 + 8))(v17, v19);
      }

      else
      {
        v15(*(v0 + 320), 1, 1, v12);
        sub_27418F42C(v16);
        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        sub_2741C856C();

        *(v0 + 208) = 0xD00000000000001BLL;
        *(v0 + 216) = 0x80000002741E2E10;
        v21 = [v13 description];
        v22 = sub_2741C7E7C();
        v24 = v23;

        MEMORY[0x2743E5FB0](v22, v24);

        MEMORY[0x2743E5FB0](39, 0xE100000000000000);
        v25 = *(v0 + 208);
        v26 = *(v0 + 216);
        if (qword_280937360 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 336);
        v28 = *(v0 + 344);
        v29 = *(v0 + 328);
        v30 = __swift_project_value_buffer(v29, qword_280945DD8);
        (*(v27 + 16))(v28, v30, v29);
        sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v25, v26);

        (*(v27 + 8))(v28, v29);
        sub_27418EA94(0x40u);
        *(v0 + 280) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
        sub_2741C818C();
      }
    }

    if (sub_2741C816C())
    {

      v31 = *(v0 + 8);

      return v31();
    }

    *(v0 + 432) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v33;
    v11 = sub_274188714;
  }

  else
  {

    *(v0 + 624) = sub_2741C809C();
    v8 = sub_2741C805C();
    v10 = v9;
    v11 = sub_274189D4C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_27418B81C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  v4 = sub_2741C85DC();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_2741C85FC();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418B948, 0, 0);
}

uint64_t sub_27418B948()
{
  sub_2741C85EC();

  return MEMORY[0x2822009F8](sub_27418B9C0, 0, 0);
}

uint64_t sub_27418B9C0()
{
  *(v0 + 104) = sub_27418F9B0(&qword_28093AEC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2741C872C();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_27418BAB0;
  v2 = *(v0 + 152);

  return sub_2740D4CC4(v2);
}

uint64_t sub_27418BAB0(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    (*(v3[7] + 8))(v3[9], v3[6]);
    v4 = sub_27418BF1C;
  }

  else
  {
    v4 = sub_27418BBDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27418BBDC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  sub_2741C872C();
  sub_27418F9B0(&qword_28093AED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2741C861C();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  *(v0 + 136) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_27418BCEC, 0, 0);
}

char *sub_27418BCEC()
{
  v29 = v0;
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_274198AB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v3 = v26;
    v6 = *(v0 + 120) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E6600](v5, *(v0 + 120));
      }

      else
      {
        v7 = *(v6 + 8 * v5);
      }

      sub_27409D85C(v7, v27);
      v9 = *(v26 + 16);
      v8 = *(v26 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_274198AB0((v8 > 1), v9 + 1, 1);
      }

      ++v5;
      *(v26 + 16) = v9 + 1;
      v10 = v26 + 104 * v9;
      v11 = v27[0];
      v12 = v27[2];
      *(v10 + 48) = v27[1];
      *(v10 + 64) = v12;
      *(v10 + 32) = v11;
      v13 = v27[3];
      v14 = v27[4];
      v15 = v27[5];
      *(v10 + 128) = v28;
      *(v10 + 96) = v14;
      *(v10 + 112) = v15;
      *(v10 + 80) = v13;
    }

    while (v2 != v5);
  }

  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v0 + 80);
  v21 = *(v0 + 152);
  v22 = *(v0 + 32);
  v23 = sub_27418F5F4(v3);

  v22[3] = &type metadata for NetworkScanResult;
  v22[4] = &off_2883295C0;
  v24 = swift_allocObject();
  *v22 = v24;
  *(v24 + 16) = v17;
  *(v24 + 24) = v16;
  *(v24 + 32) = 0;
  *(v24 + 33) = v21;
  *(v24 + 40) = v23;
  (*(v19 + 8))(v18, v20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_27418BF1C()
{

  return MEMORY[0x2822009F8](sub_27418BF84, 0, 0);
}

uint64_t sub_27418BF84()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27418C020(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2741C85DC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_2741C85FC();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = *(type metadata accessor for KnownNetwork(0) - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418C1BC, 0, 0);
}

uint64_t sub_27418C1BC()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[18];
    v5 = v0[15];
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = *(v5 + 72);
    v8 = v1 + v6;
    do
    {
      sub_27409CF58(v8, v0[18]);
      v9 = v0[18];
      if (*(v4 + 64) == 1)
      {
        sub_27409D240(v9, v0[17]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27419897C(0, *(v3 + 16) + 1, 1);
        }

        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_27419897C((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[17];
        *(v3 + 16) = v11 + 1;
        sub_27409D240(v12, v3 + v6 + v11 * v7);
      }

      else
      {
        sub_27409D050(v9);
      }

      v8 += v7;
      --v2;
    }

    while (v2);
  }

  v13 = *(v3 + 16);
  if (v13)
  {
    v14 = v0[15];
    v30 = v0[16];
    v31 = MEMORY[0x277D84F90];
    sub_274198AD0(0, v13, 0);
    v15 = v31;
    v16 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v0[16];
      sub_27409CF58(v16, v18);
      v19 = *v18;
      v20 = *(v30 + 8);

      sub_27409D050(v18);
      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_274198AD0((v21 > 1), v22 + 1, 1);
      }

      *(v31 + 16) = v22 + 1;
      v23 = v31 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v0[19] = v15;
  if (*(v15 + 16))
  {
    v0[4] = MEMORY[0x277D84F90];
    v24 = sub_2740CE580(0);
    v0[20] = v24;
    [v24 setMinimumRSSI_];
    sub_2741C85EC();

    v25 = v24;

    return MEMORY[0x2822009F8](sub_27418C578, 0, 0);
  }

  else
  {
    v26 = v0[5];

    sub_2740CB660(0xD000000000000044, 0x80000002741E2EA0, 0xD000000000000070, 0x80000002741E2EF0, 0xD000000000000020, 0x80000002741E2F70);
    v26[3] = &type metadata for NetworkScanResult;
    v26[4] = &off_2883295C0;
    v27 = swift_allocObject();
    *v26 = v27;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 1025;
    *(v27 + 40) = MEMORY[0x277D84FA0];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_27418C578()
{
  v0[21] = sub_27418F9B0(&qword_28093AEC8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2741C872C();
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_27418C66C;
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[7];

  return sub_27418CC7C(v3, v2, v4, (v0 + 4));
}

uint64_t sub_27418C66C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[11], v2[8]);
    v3 = sub_27418CB1C;
  }

  else
  {
    v3 = sub_27418C798;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27418C798()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  sub_2741C872C();
  sub_27418F9B0(&qword_28093AED0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2741C861C();
  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);

  *(v0 + 192) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_27418C8CC, 0, 0);
}

char *sub_27418C8CC()
{
  v28 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = sub_2741C848C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_274198AB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v3 = v25;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2743E6600](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      sub_27409D85C(v6, v26);
      v8 = *(v25 + 16);
      v7 = *(v25 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_274198AB0((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      *(v25 + 16) = v8 + 1;
      v9 = v25 + 104 * v8;
      v10 = v26[0];
      v11 = v26[2];
      *(v9 + 48) = v26[1];
      *(v9 + 64) = v11;
      *(v9 + 32) = v10;
      v12 = v26[3];
      v13 = v26[4];
      v14 = v26[5];
      *(v9 + 128) = v27;
      *(v9 + 96) = v13;
      *(v9 + 112) = v14;
      *(v9 + 80) = v12;
    }

    while (v2 != v5);
  }

  v16 = v0[24];
  v15 = v0[25];
  v17 = v0[20];
  v18 = v0[13];
  v24 = v0[14];
  v19 = v0[12];
  v20 = v0[5];
  v21 = sub_27418F5F4(v3);

  v20[3] = &type metadata for NetworkScanResult;
  v20[4] = &off_2883295C0;
  v22 = swift_allocObject();
  *v20 = v22;

  *(v22 + 16) = v16;
  *(v22 + 24) = v15;
  *(v22 + 32) = 1024;
  *(v22 + 40) = v21;
  (*(v18 + 8))(v24, v19);

  v23 = v0[1];

  return v23();
}

uint64_t sub_27418CB1C()
{
  v1 = *(v0 + 160);

  return MEMORY[0x2822009F8](sub_27418CB9C, 0, 0);
}

uint64_t sub_27418CB9C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27418CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_2741C6AFC();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418CD40, 0, 0);
}

uint64_t sub_27418CD40()
{
  v1 = v0[23];
  v2 = v1[2];
  v0[30] = v2;
  if (v2)
  {
    v0[31] = 0;
    v0[32] = 0;
    v3 = v0[24];
    v5 = v1[4];
    v4 = v1[5];

    v6 = sub_2741C7E3C();
    [v3 setSSID_];

    v0[20] = 0;
    v0[21] = 0xE000000000000000;
    sub_2741C856C();

    v0[18] = 0xD00000000000001DLL;
    v0[19] = 0x80000002741E2FA0;
    MEMORY[0x2743E5FB0](v5, v4);

    v8 = v0[18];
    v7 = v0[19];
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v10 = v0[28];
    v9 = v0[29];
    v11 = v0[27];
    v12 = v0[25];
    v18 = v0[24];
    v13 = __swift_project_value_buffer(v11, qword_280945DD8);
    (*(v10 + 16))(v9, v13, v11);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v8, v7);

    (*(v10 + 8))(v9, v11);
    v14 = *(v12 + 16);
    v0[33] = v14;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_27418D020;
    v15 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
    v0[14] = v15;
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_274186F30;
    v0[13] = &block_descriptor_11;
    [v14 performScanWithParameters:v18 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_27418D020()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_27418D444;
  }

  else
  {
    v2 = sub_27418D130;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27418D130()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256) + 1;
  sub_274186E08(*(v0 + 176), *(v0 + 208));

  if (v4 == v3)
  {

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 256) + 1;
    *(v0 + 248) = v2;
    *(v0 + 256) = v7;
    v8 = *(v0 + 192);
    v9 = *(v0 + 184) + 16 * v7;
    v11 = *(v9 + 32);
    v10 = *(v9 + 40);

    v12 = sub_2741C7E3C();
    [v8 setSSID_];

    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    sub_2741C856C();

    *(v0 + 144) = 0xD00000000000001DLL;
    *(v0 + 152) = 0x80000002741E2FA0;
    MEMORY[0x2743E5FB0](v11, v10);

    v13 = *(v0 + 152);
    v21 = *(v0 + 144);
    if (qword_280937360 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = *(v0 + 216);
    v17 = *(v0 + 200);
    v22 = *(v0 + 192);
    v18 = __swift_project_value_buffer(v16, qword_280945DD8);
    (*(v14 + 16))(v15, v18, v16);
    sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v21, v13);

    (*(v14 + 8))(v15, v16);
    v19 = *(v17 + 16);
    *(v0 + 264) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 176;
    *(v0 + 24) = sub_27418D020;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
    *(v0 + 112) = v20;
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_274186F30;
    *(v0 + 104) = &block_descriptor_11;
    [v19 performScanWithParameters:v22 reply:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_27418D444(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_27418D4C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_2741C85FC();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418D584, 0, 0);
}

uint64_t sub_27418D584(uint64_t a1)
{
  v2 = sub_2741C882C();
  v4 = v3;
  sub_2741C874C();
  v5 = swift_task_alloc();
  *(v1 + 80) = v5;
  *v5 = v1;
  v5[1] = sub_27418D660;

  return sub_2741B724C(v2, v4, 0, 0, 1);
}

uint64_t sub_27418D660()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_27418D858;
  }

  else
  {
    v3 = sub_27418D7C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27418D7C8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 16) = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27418D858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27418D8BC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 592) = a2;
  *(v9 + 584) = v15;
  *(v9 + 568) = v14;
  *(v9 + 560) = a9;
  *(v9 + 552) = a8;
  *(v9 + 544) = a7;
  *(v9 + 536) = a6;
  *(v9 + 528) = a5;
  *(v9 + 520) = a1;
  v10 = sub_2741C85FC();
  *(v9 + 600) = v10;
  *(v9 + 608) = *(v10 - 8);
  *(v9 + 616) = swift_task_alloc();
  v11 = sub_2741C6AFC();
  *(v9 + 624) = v11;
  *(v9 + 632) = *(v11 - 8);
  *(v9 + 640) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27418DA08, 0, 0);
}

uint64_t sub_27418DA08()
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  sub_2741C856C();

  v0[48] = 0x3A74706D65747441;
  v0[49] = 0xE900000000000020;
  v0[58] = *(v3 + 16);
  v4 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v4);

  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3040);
  MEMORY[0x2743E5FB0](v2, v1);
  v5 = v0[48];
  v6 = v0[49];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[78];
  v17 = v0[71];
  v10 = v0[70];
  v11 = __swift_project_value_buffer(v9, qword_280945DD8);
  v0[81] = v11;
  v12 = *(v8 + 16);
  v0[82] = v12;
  v0[83] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v7, v11, v9);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v5, v6);

  v13 = *(v8 + 8);
  v0[84] = v13;
  v0[85] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v9);
  v14 = *(v10 + 16);
  v0[86] = v14;
  v0[2] = v0;
  v0[7] = v0 + 59;
  v0[3] = sub_27418DD44;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  v0[14] = v15;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274186F30;
  v0[13] = &block_descriptor_47;
  [v14 performScanWithParameters:v17 reply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27418DD44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 696) = v1;
  if (v1)
  {
    v2 = sub_27418E7C8;
  }

  else
  {
    v2 = sub_27418DE54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_27418DE54()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 552);
  v3 = *(v0 + 472);
  swift_beginAccess();
  *(v2 + 16) = v3;

  sub_2741C856C();

  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    v5 = sub_2741C848C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *(v0 + 552);
  *(v0 + 512) = v5;
  v7 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v7);

  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E2FC0);
  sub_2740CB218(0x20646E756F46, 0xE600000000000000, 0xD000000000000013, 0x80000002741E2FE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C814C();
  swift_beginAccess();
  v8 = *(v6 + 16);
  if (v8 >> 62)
  {
    result = sub_2741C848C();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x2743E6600](0, v8);

    result = v11;
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    result = *(v8 + 32);
  }

LABEL_8:
  **(v0 + 520) = result;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_27418E0C4()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  (*(v2[76] + 8))(v2[77], v2[75]);
  if (v0)
  {
    v3 = sub_27418E750;
  }

  else
  {
    v3 = sub_27418E22C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27418E22C()
{
  v1 = v0[87];
  v35 = v0[84];
  v34 = v0[82];
  v2 = v0[80];
  v3 = v0[78];
  v32 = v0[68];
  v33 = v0[81];
  v4 = v0[67];
  v5 = v0[66];
  v0[56] = 0;
  v0[57] = 0xE000000000000000;
  sub_2741C856C();
  v6 = v0[57];
  v0[52] = v0[56];
  v0[53] = v6;
  MEMORY[0x2743E5FB0](0xD000000000000010, 0x80000002741E3060);
  v0[60] = *(v5 + 16);
  v7 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v7);

  MEMORY[0x2743E5FB0](0x206F742065756420, 0xEE003A726F727265);
  v0[61] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3080);
  MEMORY[0x2743E5FB0](v4, v32);
  v8 = v0[52];
  v9 = v0[53];
  v34(v2, v33, v3);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v8, v9);

  v35(v2, v3);
  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_8:
    if (sub_2741C848C())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v13 = v0[69];
  *(v0[66] + 16) = v12;
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_2740D2F60();
    swift_allocError();
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

LABEL_9:
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[66];
  v0[50] = 0;
  v0[51] = 0xE000000000000000;
  sub_2741C856C();

  v0[48] = 0x3A74706D65747441;
  v0[49] = 0xE900000000000020;
  v0[58] = *(v19 + 16);
  v20 = sub_2741C86CC();
  MEMORY[0x2743E5FB0](v20);

  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3040);
  MEMORY[0x2743E5FB0](v18, v17);
  v21 = v0[48];
  v22 = v0[49];
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v23 = v0[80];
  v24 = v0[79];
  v25 = v0[78];
  v36 = v0[71];
  v26 = v0[70];
  v27 = __swift_project_value_buffer(v25, qword_280945DD8);
  v0[81] = v27;
  v28 = *(v24 + 16);
  v0[82] = v28;
  v0[83] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v23, v27, v25);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v21, v22);

  v29 = *(v24 + 8);
  v0[84] = v29;
  v0[85] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v23, v25);
  v30 = *(v26 + 16);
  v0[86] = v30;
  v0[2] = v0;
  v0[7] = v0 + 59;
  v0[3] = sub_27418DD44;
  v31 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938E88, qword_2741CE258);
  v0[14] = v31;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274186F30;
  v0[13] = &block_descriptor_47;
  [v30 performScanWithParameters:v36 reply:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27418E750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27418E7C8(uint64_t a1)
{
  v2 = v1[86];
  v3 = v1[73];
  swift_willThrow();

  if (*(v3 + 16) == 1)
  {
    v4 = v1[87];
    v5 = v1[66];
    sub_2741C856C();
    v1[54] = 0;
    v1[55] = 0xE000000000000000;
    MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E30A0);
    v1[62] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    MEMORY[0x2743E5FB0](0xD000000000000011, 0x80000002741E30C0);
    swift_beginAccess();
    v1[63] = *(v5 + 16);
    v6 = sub_2741C86CC();
    MEMORY[0x2743E5FB0](v6);

    sub_2740CB218(v1[54], v1[55], 0xD000000000000013, 0x80000002741E2FE0);

    result = swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v10 = v1[87];
      *(v1[66] + 16) = v9;
      sub_27411D4AC();
      swift_allocError();
      *v11 = v9;
      *(v11 + 8) = 0;
      swift_willThrow();

      v12 = v1[1];

      return v12();
    }
  }

  else
  {
    v13 = sub_2741C882C();
    v15 = v14;
    sub_2741C874C();
    v16 = swift_task_alloc();
    v1[88] = v16;
    *v16 = v1;
    v16[1] = sub_27418E0C4;

    return sub_2741B724C(v13, v15, 0, 0, 1);
  }

  return result;
}

uint64_t sub_27418EA94(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_2741C6AFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_2741C856C();

  v20 = 0xD000000000000020;
  v21 = 0x80000002741E2D40;
  v13 = sub_2740E3040(a1);
  MEMORY[0x2743E5FB0](v13);

  v14 = v20;
  v15 = v21;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280945DD8);
  (*(v9 + 16))(v12, v16, v8);
  sub_2740CA9CC(0x5D4E4143535BLL, 0xE600000000000000, v14, v15);

  (*(v9 + 8))(v12, v8);
  if (*(v2 + 32))
  {

    sub_2741C814C();
  }

  *(v2 + 32) = 0;

  v17 = sub_2741C80DC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  sub_2740CE980(0, 0, v7, &unk_2741D65C0, v18);
}

uint64_t sub_27418ED84()
{
  *(v0 + 16) = sub_2741C80AC();
  *(v0 + 24) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418EE1C, v2, v1);
}

uint64_t sub_27418EE1C()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_27418EEB4, 0, 0);
}

uint64_t sub_27418EEB4(uint64_t a1)
{
  *(v1 + 32) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418EF40, v3, v2);
}

uint64_t sub_27418EF40()
{

  *(v0 + 40) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_27418EFBC, 0, 0);
}

uint64_t sub_27418EFBC(uint64_t a1)
{
  *(v1 + 48) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27418F048, v3, v2);
}

uint64_t sub_27418F048()
{
  v1 = *(v0 + 56);

  sub_2741B8FB8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27418F0BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_27418F0F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2740A7434;

  return sub_27418ED64(a1, v4, v5, v6);
}

uint64_t sub_27418F1B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 24, v3 | 7);
}

uint64_t sub_27418F2BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB0, &qword_2741D65D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_27409D648;

  return sub_274188494(v13, a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_27418F42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AEB8, &qword_2741D65E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27418F494(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2741C848C())
  {
    v4 = type metadata accessor for WiFiNetwork(0);
    v5 = sub_27418F9B0(&qword_280939F58, type metadata accessor for WiFiNetwork, MEMORY[0x277D85378]);
    result = MEMORY[0x2743E6290](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2743E6600](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_274152768(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2741C848C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_27418F5F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_27409DC84();
  result = MEMORY[0x2743E6290](v2, &type metadata for ScannedNetwork, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_2740ACAC8(v5, v6);
      sub_2741529B4(v7, v6);
      sub_2740ACB2C(v7);
      v5 += 104;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_27418F680()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27418F6F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27418F730(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2740A7434;

  return sub_27418D4C0(v6, a1, v4, v5, v7);
}

uint64_t sub_27418F7F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27418F82C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_27418F89C(uint64_t a1)
{
  v4 = *(v1 + 3);
  v13 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = v1[12];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_27409D648;

  return sub_27418D8BC(a1, v10, v13, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27418F9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27418FA1C()
{
  swift_getKeyPath();
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_27418FAD8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = a2;
  v10 = a2 >> 8;
  swift_beginAccess();
  *(a1 + 56) = v8;
  *(a1 + 57) = v10;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  *(a1 + 81) = HIBYTE(a5) & 1;
}

uint64_t sub_27418FB74()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC15WiFiSettingsKit17UserSettingsModel___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserSettingsModel(uint64_t a1)
{
  result = qword_28093AEE8;
  if (!qword_28093AEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27418FC74(uint64_t a1)
{
  result = sub_2741C6A4C();
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

unint64_t sub_27418FD30()
{
  result = qword_28093AEF8;
  if (!qword_28093AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AEF8);
  }

  return result;
}

unint64_t sub_27418FD88()
{
  result = qword_28093AF00;
  if (!qword_28093AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF00);
  }

  return result;
}

unint64_t sub_27418FDE4()
{
  result = qword_28093AF08;
  if (!qword_28093AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF08);
  }

  return result;
}

unint64_t sub_27418FE3C()
{
  result = qword_28093AF10;
  if (!qword_28093AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF10);
  }

  return result;
}

uint64_t sub_27418FE90(uint64_t a1)
{
  if (a1 <= 31)
  {
    switch(a1)
    {
      case 1:
        if (qword_280937418 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945F68;
        return *v1;
      case 4:
        if (qword_280937448 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945FC8;
        return *v1;
      case 8:
        if (qword_280937440 != -1)
        {
          swift_once();
        }

        v1 = &qword_280945FB8;
        return *v1;
    }

LABEL_22:
    if (qword_280937408 != -1)
    {
      swift_once();
    }

    v1 = &qword_280945F48;
    return *v1;
  }

  if (a1 > 79)
  {
    if (a1 == 80)
    {
      if (qword_280937478 != -1)
      {
        swift_once();
      }

      v1 = &qword_280946028;
      return *v1;
    }

    if (a1 == 128)
    {
      if (qword_280937430 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945F98;
      return *v1;
    }

    goto LABEL_22;
  }

  if (a1 != 32)
  {
    if (a1 == 64)
    {
      if (qword_280937438 != -1)
      {
        swift_once();
      }

      v1 = &qword_280945FA8;
      return *v1;
    }

    goto LABEL_22;
  }

  if (qword_280937420 != -1)
  {
    swift_once();
  }

  v1 = &qword_280945F78;
  return *v1;
}

void EnterpriseIdentity.init(id:identity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __SecIdentity *a3@<X2>, char *a4@<X8>)
{
  certificateRef[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = certificateRef - v10;
  v12 = type metadata accessor for EnterpriseIdentity(0);
  *(a4 + 3) = 0;
  *(a4 + 4) = 0;
  v13 = *(v12 + 28);
  v14 = sub_2741C696C();
  v15 = *(*(v14 - 8) + 56);
  v15(&a4[v13], 1, 1, v14);
  *a4 = a1;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  certificateRef[0] = 0;
  v16 = SecIdentityCopyCertificate(a3, certificateRef);
  v17 = certificateRef[0];
  if (v16 || !certificateRef[0])
  {
    goto LABEL_5;
  }

  v18 = certificateRef[0];
  v19 = SecCertificateCopyIssuerSummary();
  if (v19)
  {
    v20 = v19;
    v21 = sub_2741C7E7C();
    v23 = v22;

    *(a4 + 3) = v21;
    *(a4 + 4) = v23;
    SecCertificateNotValidAfter();

    sub_2741C68DC();
    v15(v11, 0, 1, v14);
    sub_274178F00(v11, &a4[v13]);
    v17 = certificateRef[0];
LABEL_5:

    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for EnterpriseIdentity(uint64_t a1)
{
  result = qword_28093AF30;
  if (!qword_28093AF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnterpriseIdentity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EnterpriseIdentity.issuer.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t EnterpriseIdentity.issuer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EnterpriseIdentity.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EnterpriseIdentity(0) + 28);

  return sub_27419052C(v3, a1);
}

uint64_t sub_27419052C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnterpriseIdentity.expiration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnterpriseIdentity(0) + 28);

  return sub_274178F00(a1, v3);
}

uint64_t EnterpriseIdentity.expirationFormatted.getter()
{
  v23 = sub_2741C68FC();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2741C691C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - v12;
  v14 = sub_2741C696C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EnterpriseIdentity(0);
  sub_27419052C(v0 + *(v19 + 28), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_27409D420(v13, &qword_280938DE8, &qword_2741D6950);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_2741C690C();
    sub_2741C68EC();
    v21 = sub_2741C694C();
    (*(v1 + 8))(v4, v23);
    (*(v6 + 8))(v9, v5);
    (*(v15 + 8))(v18, v14);
    return v21;
  }
}

uint64_t EnterpriseIdentity.hash(into:)(uint64_t a1)
{
  v2 = sub_2741C696C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v13 - v9;
  sub_2741C7F0C();
  type metadata accessor for SecIdentity(0);
  sub_27419131C(&qword_28093AF18, type metadata accessor for SecIdentity, &unk_2741CA9A4);
  sub_2741C6AAC();
  if (*(v1 + 32))
  {
    sub_2741C87FC();
    sub_2741C7F0C();
  }

  else
  {
    sub_2741C87FC();
  }

  v11 = type metadata accessor for EnterpriseIdentity(0);
  sub_27419052C(v1 + *(v11 + 28), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_2741C87FC();
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_2741C87FC();
  sub_27419131C(&qword_28093AF20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_2741C7D9C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t EnterpriseIdentity.hashValue.getter()
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)(v1);
  return sub_2741C880C();
}

uint64_t sub_274190BE4()
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)(v1);
  return sub_2741C880C();
}

uint64_t sub_274190C28(uint64_t a1)
{
  sub_2741C87DC();
  EnterpriseIdentity.hash(into:)(v2);
  return sub_2741C880C();
}

BOOL _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_2741C696C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF48, qword_2741D6A38);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  if (*a1 != *a2 && (sub_2741C86DC() & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  type metadata accessor for SecIdentity(0);
  sub_27419131C(&qword_28093AF18, type metadata accessor for SecIdentity, &unk_2741CA9A4);
  if ((sub_2741C6A9C() & 1) == 0)
  {
    return 0;
  }

  v17 = a1[4];
  v18 = a2[4];
  if (v17)
  {
    if (!v18 || (a1[3] != a2[3] || v17 != v18) && (sub_2741C86DC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(type metadata accessor for EnterpriseIdentity(0) + 28);
  v20 = *(v13 + 48);
  sub_27419052C(a1 + v19, v16);
  sub_27419052C(a2 + v19, &v16[v20]);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v16, 1, v4) != 1)
  {
    sub_27419052C(v16, v12);
    if (v22(&v16[v20], 1, v4) == 1)
    {
      (*(v21 + 8))(v12, v4);
      goto LABEL_16;
    }

    (*(v21 + 32))(v8, &v16[v20], v4);
    sub_27419131C(&qword_28093AF50, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v24 = sub_2741C7DBC();
    v25 = *(v21 + 8);
    v25(v8, v4);
    v25(v12, v4);
    sub_27409D420(v16, &qword_280938DE8, &qword_2741D6950);
    return (v24 & 1) != 0;
  }

  if (v22(&v16[v20], 1, v4) != 1)
  {
LABEL_16:
    sub_27409D420(v16, &qword_28093AF48, qword_2741D6A38);
    return 0;
  }

  sub_27409D420(v16, &qword_280938DE8, &qword_2741D6950);
  return 1;
}

uint64_t sub_274191098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_274191168(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938DE8, &qword_2741D6950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_274191218(uint64_t a1)
{
  type metadata accessor for SecIdentity(319);
  if (v1 <= 0x3F)
  {
    sub_2740997A4();
    if (v2 <= 0x3F)
    {
      sub_2741912C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2741912C4(uint64_t a1)
{
  if (!qword_28093AF40)
  {
    sub_2741C696C();
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_28093AF40);
    }
  }
}

uint64_t sub_27419131C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CredentialsResponse.hashValue.getter()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

unint64_t sub_274191408()
{
  result = qword_28093AF58;
  if (!qword_28093AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF58);
  }

  return result;
}

void sub_27419146C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_2741C7E3C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setNetworkName_];
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_274191518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_274191560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2741915F8()
{
  v1 = sub_2741C70AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_2741C82AC();
    v8 = sub_2741C74FC();
    sub_2741C6ACC();

    sub_2741C709C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_274191738@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF68, &qword_2741D6CB0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF70, &qword_2741D6CB8);
  v35 = *(v37 - 8);
  v8 = MEMORY[0x28223BE20](v37, v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - v11;
  sub_274192BEC(a1, &v43);
  v13 = swift_allocObject();
  v14 = v52[0];
  v13[9] = v51;
  v13[10] = v14;
  *(v13 + 169) = *(v52 + 9);
  v15 = v48;
  v13[5] = v47;
  v13[6] = v15;
  v16 = v50;
  v13[7] = v49;
  v13[8] = v16;
  v17 = v44;
  v13[1] = v43;
  v13[2] = v17;
  v18 = v46;
  v13[3] = v45;
  v13[4] = v18;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF78, &unk_2741D6CC0);
  sub_2740A6D24(&qword_28093AF80, &qword_28093AF78, &unk_2741D6CC0, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  *&v6[*(v3 + 36)] = sub_2741C736C();
  v19 = *(a1 + 144);
  v20 = *(a1 + 152);
  *&v43 = *(a1 + 136);
  *(&v43 + 1) = v19;
  LOBYTE(v44) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938348, &qword_2741CBE60);
  sub_2741C7B1C();
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AA18, &qword_2741D6CD0);
  sub_274192C40();
  sub_27416C8E8();
  sub_2741C77FC();

  sub_27409D420(v6, &qword_28093AF68, &qword_2741D6CB0);
  *(&v44 + 1) = &type metadata for ScannedNetwork;
  *&v45 = sub_2740F2248();
  *&v43 = swift_allocObject();
  sub_2740ACAC8(a1 + 32, v43 + 16);
  v21 = *(a1 + 160);
  LOBYTE(a1) = *(a1 + 168);
  type metadata accessor for AssociationModel(0);
  sub_274197040(&qword_280937E70, type metadata accessor for AssociationModel, &unk_2741D3E80);
  v22 = sub_2741C6CEC();
  v24 = v23;
  type metadata accessor for NetworksListModel(0);
  sub_274197040(&qword_280939880, type metadata accessor for NetworksListModel, &unk_2741D44C8);
  v25 = sub_2741C6CEC();
  *(&v45 + 1) = v22;
  LOBYTE(v46) = v24 & 1;
  *(&v46 + 1) = v25;
  LOBYTE(v47) = v26 & 1;
  v42 = 0;
  sub_2741C7A2C();
  BYTE8(v47) = v41[0];
  *&v48 = v41[1];
  *(&v48 + 1) = v21;
  LOBYTE(v49) = a1;
  v27 = v35;
  v28 = v36;
  v29 = *(v35 + 16);
  v30 = v37;
  v29(v36, v12, v37);
  sub_274149D60(&v43, v41);
  v31 = v38;
  v29(v38, v28, v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFA0, &qword_2741D6CE0);
  sub_274149D60(v41, &v31[*(v32 + 48)]);
  sub_2740FD3E8(&v43);
  v33 = *(v27 + 8);
  v33(v12, v30);
  sub_2740FD3E8(v41);
  return (v33)(v28, v30);
}

uint64_t sub_274191CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFB8, &unk_2741D6E20);
  return sub_274191D08(a1, a2 + *(v4 + 44));
}

uint64_t sub_274191D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938388, &qword_2741CBEB0);
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v3);
  v5 = &v46 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFC0, &qword_2741D6E30);
  MEMORY[0x28223BE20](v49, v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFC8, &qword_2741D6E38);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFD0, &qword_2741D6E40);
  MEMORY[0x28223BE20](v50, v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFD8, &qword_2741D6E48);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v51 = &v46 - v21;
  v54 = a1;
  v22 = *(sub_2741915F8() + 16);

  swift_getKeyPath();
  v60 = v22;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  LODWORD(a1) = *(v22 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);

  if (a1 == 1)
  {
    v60 = sub_2741C79CC();
    v23 = MEMORY[0x277CE1088];
    v24 = MEMORY[0x277CE1078];
    sub_2741C784C();

    sub_2741C75BC();
    v60 = v23;
    v61 = v24;
    swift_getOpaqueTypeConformance2();
    sub_2741C76EC();
    (*(v47 + 8))(v12, v9);
    v25 = sub_2741C797C();
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFF0, &qword_2741D6E78) + 36)] = v25;
    v26 = &v15[*(v50 + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809381F8, &unk_2741D4350) + 28);
    v28 = *MEMORY[0x277CE1058];
    v29 = sub_2741C79EC();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    sub_2740A6D94(v15, v8, &qword_28093AFD0, &qword_2741D6E40);
    swift_storeEnumTagMultiPayload();
    sub_274196DF8();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    v30 = v51;
    sub_2741C72CC();
    sub_27409D420(v15, &qword_28093AFD0, &qword_2741D6E40);
  }

  else
  {
    sub_2741C6D3C();
    v31 = v48;
    v32 = v52;
    (*(v48 + 16))(v8, v5, v52);
    swift_storeEnumTagMultiPayload();
    sub_274196DF8();
    sub_2740A6D24(&qword_2809383B0, &qword_280938388, &qword_2741CBEB0, MEMORY[0x277CDD7F8]);
    v30 = v51;
    sub_2741C72CC();
    (*(v31 + 8))(v5, v32);
  }

  v33 = sub_2741C71BC();
  LOBYTE(v60) = 0;
  sub_274192430(v57);
  *&v56[7] = v57[0];
  *&v56[23] = v57[1];
  *&v56[39] = v57[2];
  *&v56[55] = v57[3];
  v34 = v60;
  v35 = v53;
  sub_2740A6D94(v30, v53, &qword_28093AFD8, &qword_2741D6E48);
  v36 = v55;
  sub_2740A6D94(v35, v55, &qword_28093AFD8, &qword_2741D6E48);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFF8, &qword_2741D6E90);
  v38 = v36 + *(v37 + 48);
  v58[0] = v33;
  v58[1] = 0;
  v59[0] = v34;
  *&v59[1] = *v56;
  *&v59[17] = *&v56[16];
  *&v59[33] = *&v56[32];
  *&v59[49] = *&v56[48];
  v39 = *&v56[63];
  *&v59[64] = *&v56[63];
  v40 = *v59;
  *v38 = v33;
  *(v38 + 16) = v40;
  v41 = *&v59[16];
  v42 = *&v59[32];
  v43 = *&v59[48];
  *(v38 + 80) = v39;
  *(v38 + 48) = v42;
  *(v38 + 64) = v43;
  *(v38 + 32) = v41;
  v44 = v36 + *(v37 + 64);
  *v44 = 0;
  *(v44 + 8) = 1;
  sub_2740A6D94(v58, &v60, &qword_28093B000, &qword_2741D6E98);
  sub_27409D420(v30, &qword_28093AFD8, &qword_2741D6E48);
  v60 = v33;
  v61 = 0;
  v62 = v34;
  v64 = *&v56[16];
  v65 = *&v56[32];
  *v66 = *&v56[48];
  *&v66[15] = *&v56[63];
  v63 = *v56;
  sub_27409D420(&v60, &qword_28093B000, &qword_2741D6E98);
  return sub_27409D420(v35, &qword_28093AFD8, &qword_2741D6E48);
}

uint64_t sub_274192430@<X0>(uint64_t *a2@<X8>)
{
  v2 = sub_2741C69BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_2741C7E2C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_2741C7E0C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  sub_2740A6A74();

  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  sub_2741C7DFC();
  sub_2741C7DEC();
  sub_2741C7DDC();
  sub_2741C7DEC();
  sub_2741C7E1C();
  sub_2741C69AC();
  v49 = sub_2741C7E9C();
  v50 = v13;
  v14 = sub_2741C765C();
  v46 = v15;
  v47 = v14;
  v17 = v16;
  v19 = v18;
  sub_2740A6AC8(v8, v10, v12 & 1);

  type metadata accessor for WiFiDiagnoser();
  swift_initStackObject();
  v20 = sub_2740F2E14();
  swift_beginAccess();
  v21 = *(v20 + 16);

  if (*(v21 + 16))
  {
    v44 = v17;
    v22 = *(v21 + 32);

    v48 = v22;
    sub_27410C238(&v48);
    v23 = sub_2741C76AC();
    v25 = v24;
    v27 = v26;
    sub_2741C75DC();
    v28 = sub_2741C767C();
    v30 = v29;
    v32 = v31;

    sub_2740A6AC8(v23, v25, v27 & 1);

    sub_2741C799C();
    v33 = sub_2741C763C();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v32 & 1;
    v17 = v44;
    sub_2740A6AC8(v28, v30, v40);

    v41 = v37 & 1;
    sub_27409861C(v33, v35, v41);
  }

  else
  {

    v33 = 0;
    v35 = 0;
    v41 = 0;
    v39 = 0;
  }

  v42 = v17 & 1;
  sub_27409861C(v47, v46, v42);

  sub_2740ACA00(v33, v35, v41, v39);
  sub_2740ACA44(v33, v35, v41, v39);
  *a2 = v47;
  a2[1] = v46;
  *(a2 + 16) = v42;
  a2[3] = v19;
  a2[4] = v33;
  a2[5] = v35;
  a2[6] = v41;
  a2[7] = v39;
  sub_2740ACA44(v33, v35, v41, v39);
  sub_2740A6AC8(v47, v46, v42);
}

__n128 sub_274192874@<Q0>(uint64_t a1@<X0>, id (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  sub_274192BEC(a1, v9);
  v3 = swift_allocObject();
  v4 = v10[0];
  *(v3 + 144) = v9[8];
  *(v3 + 160) = v4;
  *(v3 + 169) = *(v10 + 9);
  v5 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v5;
  v6 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v6;
  v7 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v7;
  result = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = result;
  *a2 = sub_274192DD4;
  a2[1] = v3;
  a2[2] = sub_274192AE4;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

id sub_274192914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v21 - v6);
  v8 = sub_2741915F8();
  type metadata accessor for NetworkDetailsModel(0);
  v9 = swift_allocObject();
  sub_2740ACAC8(a1 + 32, &v22);
  v10 = sub_274193D48(&v22, v8, v9);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E68, &unk_2741CB590);
  swift_storeEnumTagMultiPayload();
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v12 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    sub_274196CB0(v7, a2);
    v14 = type metadata accessor for NetworkDetailsView(0);
    v15 = (a2 + v14[5]);
    v21 = v10;
    sub_2741C7A2C();
    v16 = v23;
    *v15 = v22;
    v15[1] = v16;
    v17 = a2 + v14[6];
    LOBYTE(v21) = 1;
    sub_2741C7A2C();
    v18 = v23;
    *v17 = v22;
    *(v17 + 8) = v18;
    v19 = a2 + v14[7];
    LOBYTE(v21) = 0;
    result = sub_2741C7A2C();
    v20 = v23;
    *v19 = v22;
    *(v19 + 8) = v20;
    *(a2 + v14[8]) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274192AE4()
{
  sub_2741C856C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AFA8, &unk_2741D6CE8);
  v0 = sub_2741C7EBC();
  MEMORY[0x2743E5FB0](v0);

  MEMORY[0x2743E5FB0](0xD00000000000003DLL, 0x80000002741E3110);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_274192B98@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2741C70EC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093AF60, &qword_2741D6CA8);
  return sub_274191738(v2, (a2 + *(v4 + 44)));
}

unint64_t sub_274192C40()
{
  result = qword_28093AF88;
  if (!qword_28093AF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AF68, &qword_2741D6CB0);
    sub_2740A6D24(&qword_28093AF90, &qword_28093AF98, &qword_2741D6CD8, MEMORY[0x277CDF028]);
    sub_2740A6D24(&qword_280939308, &qword_280939310, &qword_2741D4C90, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AF88);
  }

  return result;
}

uint64_t sub_274192D24()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t objectdestroyTm_18()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_274192E00(uint64_t a1)
{
  v2 = sub_2741C79EC();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2741C6F5C();
}

uint64_t sub_274192EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WiFiInterface();
  v25[3] = v4;
  v25[4] = &off_28832A198;
  v25[0] = a1;
  type metadata accessor for WiFiNetworkConfiguration();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v25, v4);
  MEMORY[0x28223BE20](v6, v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v23 = v4;
  v24 = &off_28832A198;
  v22[0] = v10;
  *(v5 + 16) = xmmword_2741D0D80;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  sub_27409D4E4(v22, v5 + 56);
  v11 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v12 = *v11;
  v13 = [*(*v11 + 16) IPv6Addresses];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2741C7FEC();
  }

  else
  {
    v15 = 0;
  }

  v16 = [*(v12 + 16) IPv6RouterAddress];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2741C7E7C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_27409D420(a2, &qword_28093AFB0, &qword_2741D6E18);
  *(v5 + 16) = 0;
  *(v5 + 24) = v15;
  *(v5 + 32) = 0;
  *(v5 + 40) = v18;
  *(v5 + 48) = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v5;
}

void *sub_2741930B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v6, v7);
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NetworkSettings(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v6;
  v104[3] = v6;
  v104[4] = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork, &unk_2741D29C8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  sub_27409D240(a1, boxed_opaque_existential_1);
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v14 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v14 = xmmword_2741D0D80;
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  *(v14 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v15 = type metadata accessor for NetworkConfigurationState(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v18 = *(v10 + 56);
  v18(v16 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v9);
  v18(v16 + v17, 1, 1, v9);
  sub_2741C6A3C();
  *(&v98 + 1) = v15;
  *&v99 = sub_274197040(&qword_280939A90, type metadata accessor for NetworkConfigurationState, &unk_2741CFF38);
  *&v97 = v16;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v20 = sub_274192EC8(v19, &v97);
  v21 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v20;
  a3[5] = v21;
  a3[6] = &off_288327F88;
  __swift_project_boxed_opaque_existential_1(a3 + 2, v21);
  sub_2740CBF04(v104, v13);
  sub_274196D80(v13, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  sub_274196D80(v13, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  v82 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v104, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v84 = a2;
  v85 = v13;
  v83 = v16;
  if (a2)
  {

    v22 = boxed_opaque_existential_1;
    v88 = sub_2741949CC(boxed_opaque_existential_1, a2);
  }

  else
  {
    v88 = 0;
    v22 = boxed_opaque_existential_1;
  }

  v23 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v24 = __swift_project_boxed_opaque_existential_1((*v23 + 56), *(*v23 + 80));
  sub_274195A70(v22, *v24, v105);
  v25 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v26 = v105[3];
  *(v25 + 2) = v105[2];
  *(v25 + 3) = v26;
  *(v25 + 4) = v105[4];
  *(v25 + 10) = v106;
  v27 = v105[1];
  *v25 = v105[0];
  *(v25 + 1) = v27;
  v28 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v29 = *v28;
  v30 = *(*v28 + 16);
  v31 = *(*v28 + 24);
  v81 = a3 + 2;
  v33 = v29[4];
  v32 = v29[5];
  v34 = v29[6];
  v35 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v86 = a3;
  v37 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v36 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  v79 = v35[4];
  v80 = v38;
  sub_274103F80(v30, v31, v33, v32, v34);
  v40 = v37;
  v41 = v86;
  sub_2740CC5FC(v40, v36, v80, v39, v79);
  *v35 = v30;
  v35[1] = v31;
  v35[2] = v33;
  v35[3] = v32;
  v42 = boxed_opaque_existential_1;
  v35[4] = v34;
  v43 = v81;
  v44 = __swift_project_boxed_opaque_existential_1(v81, v41[5]);
  v45 = __swift_project_boxed_opaque_existential_1((*v44 + 56), *(*v44 + 80));
  sub_274196238(v42, *v45, v107);
  v46 = v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v47 = v107[1];
  *v46 = v107[0];
  *(v46 + 1) = v47;
  *(v46 + 2) = v107[2];
  *(v46 + 6) = v108;
  v48 = __swift_project_boxed_opaque_existential_1(v43, v41[5]);
  v49 = __swift_project_boxed_opaque_existential_1((*v48 + 56), *(*v48 + 80));
  *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_2741966E8(v42, *v49);
  swift_getKeyPath();
  *&v89 = v41;
  sub_274197040(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v50 = v82;
  swift_beginAccess();
  sub_27409D4E4(v41 + v50, &v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v101 = v93;
    v102 = v94;
    v103 = v95;
    v97 = v89;
    v98 = v90;
    v99 = v91;
    v100 = v92;
    if (v88)
    {
      v51 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v52 = v85;
      if (*(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v97);
        *(v41 + v51) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v57);
      *(&v76 - 2) = v41;
      *(&v76 - 8) = 1;
      *&v89 = v41;
    }

    else
    {
      v54 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v55 = *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      v52 = v85;
      if (BYTE9(v99))
      {
        if (v55 == 2)
        {
          sub_2740ACB2C(&v97);
          *(v41 + v54) = 2;
          goto LABEL_24;
        }

        v60 = swift_getKeyPath();
        MEMORY[0x28223BE20](v60, v61);
        *(&v76 - 2) = v41;
        *(&v76 - 8) = 2;
        *&v89 = v41;
      }

      else
      {
        if (v55 == 3)
        {
          sub_2740ACB2C(&v97);
          *(v41 + v54) = 3;
          goto LABEL_24;
        }

        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62, v63);
        *(&v76 - 2) = v41;
        *(&v76 - 8) = 3;
        *&v89 = v41;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v97);
  }

  else
  {
    v95 = 0;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    sub_27409D420(&v89, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v89 = v41;
    sub_2741C6A0C();

    sub_27409D4E4(v41 + v50, &v97);
    v53 = v77;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v53, type metadata accessor for KnownNetwork);
      v52 = v85;
      if (*(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v58 = swift_getKeyPath();
        MEMORY[0x28223BE20](v58, v59);
        *(&v76 - 2) = v41;
        *(&v76 - 8) = 4;
        *&v97 = v41;
        sub_2741C69FC();
      }
    }

    else
    {
      v52 = v85;
    }
  }

LABEL_24:
  v64 = v88 & 1;
  if ((v88 & 1) == *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v64;
  }

  else
  {
    v65 = swift_getKeyPath();
    MEMORY[0x28223BE20](v65, v66);
    *(&v76 - 2) = v41;
    *(&v76 - 8) = v64;
    *&v97 = v41;
    sub_2741C69FC();
  }

  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v89 = v41;
  sub_2741C6A0C();

  v67 = *(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v67 <= 1)
  {
    if (*(v41 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v68 = 0xEF6B726F7774656ELL;
      v69 = 0x20746E6572727563;
    }

    else
    {
      v68 = 0x80000002741DBD20;
      v69 = 0xD000000000000019;
    }
  }

  else if (v67 == 2)
  {
    v68 = 0x80000002741DBD00;
    v69 = 0xD00000000000001CLL;
  }

  else if (v67 == 3)
  {
    v68 = 0x80000002741DBCE0;
    v69 = 0xD00000000000001ELL;
  }

  else
  {
    v68 = 0x80000002741DBCB0;
    v69 = 0xD00000000000002ALL;
  }

  MEMORY[0x2743E5FB0](v69, v68);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  MEMORY[0x2743E5FB0](*v42, v42[1]);
  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v88)
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  if (v88)
  {
    v71 = 0xE400000000000000;
  }

  else
  {
    v71 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v70, v71);

  sub_2740CB460(v97, *(&v97 + 1));

  v72 = v83;
  swift_setDeallocating();
  sub_27409D420(v72 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v73 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v74 = sub_2741C6A4C();
  (*(*(v74 - 8) + 8))(v72 + v73, v74);
  swift_deallocClassInstance();
  sub_2741041FC(v52, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v41;
}

void *sub_274193D48(uint64_t a1, uint64_t a2, void *a3)
{
  v81 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v81, v6);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[3] = &type metadata for ScannedNetwork;
  v107[4] = sub_2740F2248();
  v13 = swift_allocObject();
  v107[0] = v13;
  v14 = *(a1 + 80);
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 96);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  v16 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v16;
  v91 = v13;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) = 0;
  v17 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config;
  *v17 = xmmword_2741D0D80;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 2) = 0;
  *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = 0;
  sub_2741C6A3C();
  v18 = type metadata accessor for NetworkConfigurationState(0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings;
  v21 = *(v9 + 56);
  v21(v19 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, 1, 1, v8);
  v21(v19 + v20, 1, 1, v8);
  sub_2741C6A3C();
  *(&v101 + 1) = v18;
  *&v102 = sub_274197040(&qword_280939A90, type metadata accessor for NetworkConfigurationState, &unk_2741CFF38);
  *&v100 = v19;
  if (qword_280937B98 != -1)
  {
    swift_once();
  }

  v23 = sub_274192EC8(v22, &v100);
  v24 = type metadata accessor for WiFiNetworkConfiguration();
  a3[2] = v23;
  a3[5] = v24;
  a3[6] = &off_288327F88;
  __swift_project_boxed_opaque_existential_1(a3 + 2, v24);
  sub_2740CBF04(v107, v12);
  sub_274196D80(v12, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__settings, type metadata accessor for NetworkSettings);
  sub_274196D80(v12, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__previousSettings, type metadata accessor for NetworkSettings);
  v85 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network;
  sub_27409D4E4(v107, a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__network);
  v87 = a2;
  v88 = v12;
  v86 = v19;
  if (a2)
  {

    v25 = v91;
    v90 = sub_274195234(v91 + 16, a2);
  }

  else
  {
    v90 = 0;
    v25 = v91;
  }

  v26 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v27 = __swift_project_boxed_opaque_existential_1((*v26 + 56), *(*v26 + 80));
  sub_274195E88(v25 + 16, *v27, v108);
  v28 = a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV4Config;
  v29 = v108[3];
  *(v28 + 2) = v108[2];
  *(v28 + 3) = v29;
  *(v28 + 4) = v108[4];
  *(v28 + 10) = v109;
  v30 = v108[1];
  *v28 = v108[0];
  *(v28 + 1) = v30;
  v31 = __swift_project_boxed_opaque_existential_1(a3 + 2, a3[5]);
  v32 = *v31;
  v33 = *(*v31 + 16);
  v34 = *(*v31 + 24);
  v35 = *(*v31 + 32);
  v36 = *(*v31 + 40);
  v84 = a3 + 2;
  v37 = *(v32 + 48);
  v38 = (a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v89 = a3;
  v39 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config);
  v40 = *(a3 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__ipV6Config + 8);
  v41 = v38[2];
  v42 = v38[3];
  v82 = v38[4];
  v83 = v41;
  sub_274103F80(v33, v34, v35, v36, v37);
  v43 = v39;
  v44 = v89;
  sub_2740CC5FC(v43, v40, v83, v42, v82);
  *v38 = v33;
  v38[1] = v34;
  v38[2] = v35;
  v38[3] = v36;
  v38[4] = v37;
  v45 = v84;
  v46 = __swift_project_boxed_opaque_existential_1(v84, v44[5]);
  v47 = __swift_project_boxed_opaque_existential_1((*v46 + 56), *(*v46 + 80));
  v48 = v91;
  sub_2741964C4(v91 + 16, *v47, v110);
  v49 = v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__dnsConfig;
  v50 = v110[1];
  *v49 = v110[0];
  *(v49 + 1) = v50;
  *(v49 + 2) = v110[2];
  *(v49 + 6) = v111;
  v51 = __swift_project_boxed_opaque_existential_1(v45, v44[5]);
  v52 = __swift_project_boxed_opaque_existential_1((*v51 + 56), *(*v51 + 80));
  *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__proxySettings) = sub_2741969E4(v48 + 16, *v52);
  swift_getKeyPath();
  *&v92 = v44;
  sub_274197040(&qword_280938760, type metadata accessor for NetworkDetailsModel, &unk_2741D0E60);
  sub_2741C6A0C();

  v53 = v85;
  swift_beginAccess();
  sub_27409D4E4(v44 + v53, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  if (swift_dynamicCast())
  {
    v104 = v96;
    v105 = v97;
    v106 = v98;
    v100 = v92;
    v101 = v93;
    v102 = v94;
    v103 = v95;
    if (v90)
    {
      v54 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) == 1)
      {
        sub_2740ACB2C(&v100);
        *(v44 + v54) = 1;
        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v59);
      *(&v79 - 2) = v44;
      *(&v79 - 8) = 1;
      *&v92 = v44;
    }

    else
    {
      v56 = OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType;
      v57 = *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
      if (BYTE9(v102))
      {
        if (v57 == 2)
        {
          sub_2740ACB2C(&v100);
          *(v44 + v56) = 2;
          goto LABEL_24;
        }

        v62 = swift_getKeyPath();
        MEMORY[0x28223BE20](v62, v63);
        *(&v79 - 2) = v44;
        *(&v79 - 8) = 2;
        *&v92 = v44;
      }

      else
      {
        if (v57 == 3)
        {
          sub_2740ACB2C(&v100);
          *(v44 + v56) = 3;
          goto LABEL_24;
        }

        v64 = swift_getKeyPath();
        MEMORY[0x28223BE20](v64, v65);
        *(&v79 - 2) = v44;
        *(&v79 - 8) = 3;
        *&v92 = v44;
      }
    }

    sub_2741C69FC();

    sub_2740ACB2C(&v100);
  }

  else
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    sub_27409D420(&v92, &qword_280938340, &qword_2741D1660);
    swift_getKeyPath();
    *&v92 = v44;
    sub_2741C6A0C();

    sub_27409D4E4(v44 + v53, &v100);
    v55 = v80;
    if (swift_dynamicCast())
    {
      sub_2741041FC(v55, type metadata accessor for KnownNetwork);
      if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType) != 4)
      {
        v60 = swift_getKeyPath();
        MEMORY[0x28223BE20](v60, v61);
        *(&v79 - 2) = v44;
        *(&v79 - 8) = 4;
        *&v100 = v44;
        sub_2741C69FC();
      }
    }
  }

LABEL_24:
  v66 = v90 & 1;
  if ((v90 & 1) == *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork))
  {
    *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__isCurrentNetwork) = v66;
  }

  else
  {
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67, v68);
    *(&v79 - 2) = v44;
    *(&v79 - 8) = v66;
    *&v100 = v44;
    sub_2741C69FC();
  }

  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000022, 0x80000002741DBC60);
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741DBC90);
  swift_getKeyPath();
  *&v92 = v44;
  sub_2741C6A0C();

  v69 = *(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType);
  if (v69 <= 1)
  {
    v70 = v88;
    if (*(v44 + OBJC_IVAR____TtC15WiFiSettingsKit19NetworkDetailsModel__networkType))
    {
      v71 = 0xEF6B726F7774656ELL;
      v72 = 0x20746E6572727563;
    }

    else
    {
      v71 = 0x80000002741DBD20;
      v72 = 0xD000000000000019;
    }
  }

  else
  {
    v70 = v88;
    if (v69 == 2)
    {
      v71 = 0x80000002741DBD00;
      v72 = 0xD00000000000001CLL;
    }

    else if (v69 == 3)
    {
      v71 = 0x80000002741DBCE0;
      v72 = 0xD00000000000001ELL;
    }

    else
    {
      v71 = 0x80000002741DBCB0;
      v72 = 0xD00000000000002ALL;
    }
  }

  MEMORY[0x2743E5FB0](v72, v71);

  MEMORY[0x2743E5FB0](0x74656E20726F6620, 0xED0000206B726F77);
  MEMORY[0x2743E5FB0](*(v91 + 16), *(v91 + 24));
  MEMORY[0x2743E5FB0](0x6572727563202D20, 0xEC000000203A746ELL);
  if (v90)
  {
    v73 = 1702195828;
  }

  else
  {
    v73 = 0x65736C6166;
  }

  if (v90)
  {
    v74 = 0xE400000000000000;
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v73, v74);

  sub_2740CB460(v100, *(&v100 + 1));

  v75 = v86;
  swift_setDeallocating();
  sub_27409D420(v75 + OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState__settings, &qword_2809395C0, qword_2741D1000);
  v76 = OBJC_IVAR____TtC15WiFiSettingsKit25NetworkConfigurationState___observationRegistrar;
  v77 = sub_2741C6A4C();
  (*(*(v77 - 8) + 8))(v75 + v76, v77);
  swift_deallocClassInstance();
  sub_2741041FC(v70, type metadata accessor for NetworkSettings);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  return v44;
}

uint64_t sub_2741949CC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  MEMORY[0x28223BE20](v54, v3);
  v55 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for KnownNetwork(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v53 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v51 - v24;
  v72[3] = v23;
  v72[4] = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork, &unk_2741D29C8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  sub_274196D80(a1, boxed_opaque_existential_1, type metadata accessor for KnownNetwork);
  sub_27409D4E4(v72, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v27 = swift_dynamicCast();
  v28 = *(v18 + 56);
  if (!v27)
  {
    v39 = v56;
    v28(v16, 1, 1, v17);
    sub_27409D420(v16, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v72, v69);
    if (swift_dynamicCast())
    {
      v70[4] = v64;
      v70[5] = v65;
      v71 = v66;
      v70[0] = v60;
      v70[1] = v61;
      v70[2] = v62;
      v70[3] = v63;
      v40 = *(v39 + 16);
      swift_getKeyPath();
      *&v60 = v40;
      sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v70, v69);
      sub_2740A6D94(v40 + 32, &v60, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v69, v67, &qword_280938340, &qword_2741D1660);
      if (*(&v60 + 1))
      {
        sub_2740A6D94(&v60, v59, &qword_280938340, &qword_2741D1660);
        if (*(&v67[0] + 1))
        {
          v57[4] = v67[4];
          v57[5] = v67[5];
          v58 = v68;
          v57[0] = v67[0];
          v57[1] = v67[1];
          v57[2] = v67[2];
          v57[3] = v67[3];
          if (v59[0] == v67[0])
          {
            v41 = 1;
          }

          else
          {
            v41 = sub_2741C86DC();
          }

          sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v70);
          sub_2740ACB2C(v57);
          sub_2740ACB2C(v59);
          v47 = &v60;
          v48 = &qword_280938340;
          v49 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v70);
        sub_2740ACB2C(v59);
      }

      else
      {
        sub_27409D420(v69, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v70);
        if (!*(&v67[0] + 1))
        {
          v36 = &qword_280938340;
          v37 = &qword_2741D1660;
          v38 = &v60;
          goto LABEL_19;
        }
      }

      v43 = &qword_280939B80;
      v44 = &qword_2741D4800;
    }

    else
    {
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v43 = &qword_280938340;
      v44 = &qword_2741D1660;
    }

    v45 = &v60;
    goto LABEL_25;
  }

  v51 = v9;
  v28(v16, 0, 1, v17);
  sub_27409D240(v16, v25);
  sub_274196D80(v25, v13, type metadata accessor for KnownNetwork);
  v28(v13, 0, 1, v17);
  v52 = v18;
  v29 = *(v56 + 16);
  swift_getKeyPath();
  *&v60 = v29;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  v30 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v31 = v55;
  v32 = *(v54 + 48);
  sub_2740A6D94(v13, v55, &qword_280938570, &qword_2741D1630);
  v33 = v29 + v30;
  v34 = v52;
  sub_2740A6D94(v33, v31 + v32, &qword_280938570, &qword_2741D1630);
  v35 = *(v34 + 48);
  if (v35(v31, 1, v17) != 1)
  {
    v42 = v51;
    sub_2740A6D94(v31, v51, &qword_280938570, &qword_2741D1630);
    if (v35(v31 + v32, 1, v17) == 1)
    {
      sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
      sub_2741041FC(v25, type metadata accessor for KnownNetwork);
      sub_2741041FC(v42, type metadata accessor for KnownNetwork);
      goto LABEL_12;
    }

    v46 = v53;
    sub_27409D240(v31 + v32, v53);
    if (*v42 == *v46 && v42[1] == v46[1])
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_2741C86DC();
    }

    sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
    sub_2741041FC(v25, type metadata accessor for KnownNetwork);
    sub_2741041FC(v46, type metadata accessor for KnownNetwork);
    sub_2741041FC(v42, type metadata accessor for KnownNetwork);
    v47 = v31;
    v48 = &qword_280938570;
    v49 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v47, v48, v49);
    goto LABEL_29;
  }

  sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
  sub_2741041FC(v25, type metadata accessor for KnownNetwork);
  if (v35(v31 + v32, 1, v17) != 1)
  {
LABEL_12:
    v43 = &qword_280939B78;
    v44 = &unk_2741D6DB0;
    v45 = v31;
LABEL_25:
    sub_27409D420(v45, v43, v44);
    v41 = 0;
    goto LABEL_29;
  }

  v36 = &qword_280938570;
  v37 = &qword_2741D1630;
  v38 = v31;
LABEL_19:
  sub_27409D420(v38, v36, v37);
  v41 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  return v41 & 1;
}

uint64_t sub_274195234(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  MEMORY[0x28223BE20](v52, v3);
  v53 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v49 - v15;
  v17 = type metadata accessor for KnownNetwork(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v51 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v49 - v23;
  v70[3] = &type metadata for ScannedNetwork;
  v70[4] = sub_2740F2248();
  v70[0] = swift_allocObject();
  sub_2740ACAC8(a1, v70[0] + 16);
  sub_27409D4E4(v70, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938578, &unk_2741D0FF0);
  v25 = swift_dynamicCast();
  v26 = *(v18 + 56);
  if (!v25)
  {
    v37 = v54;
    v26(v16, 1, 1, v17);
    sub_27409D420(v16, &qword_280938570, &qword_2741D1630);
    sub_27409D4E4(v70, v67);
    if (swift_dynamicCast())
    {
      v68[4] = v62;
      v68[5] = v63;
      v69 = v64;
      v68[0] = v58;
      v68[1] = v59;
      v68[2] = v60;
      v68[3] = v61;
      v38 = *(v37 + 16);
      swift_getKeyPath();
      *&v58 = v38;
      sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
      sub_2741C6A0C();

      swift_beginAccess();
      sub_2740ACAC8(v68, v67);
      sub_2740A6D94(v38 + 32, &v58, &qword_280938340, &qword_2741D1660);
      sub_2740A6D94(v67, v65, &qword_280938340, &qword_2741D1660);
      if (*(&v58 + 1))
      {
        sub_2740A6D94(&v58, v57, &qword_280938340, &qword_2741D1660);
        if (*(&v65[0] + 1))
        {
          v55[4] = v65[4];
          v55[5] = v65[5];
          v56 = v66;
          v55[0] = v65[0];
          v55[1] = v65[1];
          v55[2] = v65[2];
          v55[3] = v65[3];
          if (v57[0] == v65[0])
          {
            v39 = 1;
          }

          else
          {
            v39 = sub_2741C86DC();
          }

          sub_27409D420(v67, &qword_280938340, &qword_2741D1660);
          sub_2740ACB2C(v68);
          sub_2740ACB2C(v55);
          sub_2740ACB2C(v57);
          v45 = &v58;
          v46 = &qword_280938340;
          v47 = &qword_2741D1660;
          goto LABEL_28;
        }

        sub_27409D420(v67, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v68);
        sub_2740ACB2C(v57);
      }

      else
      {
        sub_27409D420(v67, &qword_280938340, &qword_2741D1660);
        sub_2740ACB2C(v68);
        if (!*(&v65[0] + 1))
        {
          v34 = &qword_280938340;
          v35 = &qword_2741D1660;
          v36 = &v58;
          goto LABEL_19;
        }
      }

      v41 = &qword_280939B80;
      v42 = &qword_2741D4800;
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v41 = &qword_280938340;
      v42 = &qword_2741D1660;
    }

    v43 = &v58;
    goto LABEL_25;
  }

  v49 = v9;
  v26(v16, 0, 1, v17);
  sub_27409D240(v16, v24);
  sub_274196D80(v24, v13, type metadata accessor for KnownNetwork);
  v26(v13, 0, 1, v17);
  v50 = v18;
  v27 = *(v54 + 16);
  swift_getKeyPath();
  *&v58 = v27;
  sub_274197040(&qword_2809382A0, type metadata accessor for CurrentNetworkState, &unk_2741D7338);
  sub_2741C6A0C();

  v28 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  v29 = v53;
  v30 = *(v52 + 48);
  sub_2740A6D94(v13, v53, &qword_280938570, &qword_2741D1630);
  v31 = v27 + v28;
  v32 = v50;
  sub_2740A6D94(v31, v29 + v30, &qword_280938570, &qword_2741D1630);
  v33 = *(v32 + 48);
  if (v33(v29, 1, v17) != 1)
  {
    v40 = v49;
    sub_2740A6D94(v29, v49, &qword_280938570, &qword_2741D1630);
    if (v33(v29 + v30, 1, v17) == 1)
    {
      sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
      sub_2741041FC(v24, type metadata accessor for KnownNetwork);
      sub_2741041FC(v40, type metadata accessor for KnownNetwork);
      goto LABEL_12;
    }

    v44 = v51;
    sub_27409D240(v29 + v30, v51);
    if (*v40 == *v44 && v40[1] == v44[1])
    {
      v39 = 1;
    }

    else
    {
      v39 = sub_2741C86DC();
    }

    sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
    sub_2741041FC(v24, type metadata accessor for KnownNetwork);
    sub_2741041FC(v44, type metadata accessor for KnownNetwork);
    sub_2741041FC(v40, type metadata accessor for KnownNetwork);
    v45 = v29;
    v46 = &qword_280938570;
    v47 = &qword_2741D1630;
LABEL_28:
    sub_27409D420(v45, v46, v47);
    goto LABEL_29;
  }

  sub_27409D420(v13, &qword_280938570, &qword_2741D1630);
  sub_2741041FC(v24, type metadata accessor for KnownNetwork);
  if (v33(v29 + v30, 1, v17) != 1)
  {
LABEL_12:
    v41 = &qword_280939B78;
    v42 = &unk_2741D6DB0;
    v43 = v29;
LABEL_25:
    sub_27409D420(v43, v41, v42);
    v39 = 0;
    goto LABEL_29;
  }

  v34 = &qword_280938570;
  v35 = &qword_2741D1630;
  v36 = v29;
LABEL_19:
  sub_27409D420(v36, v34, v35);
  v39 = 1;
LABEL_29:
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  return v39 & 1;
}

uint64_t sub_274195A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274196D80(a1, v9, type metadata accessor for KnownNetwork);
  v11 = *v9;
  v10 = v9[1];

  sub_2741041FC(v9, type metadata accessor for KnownNetwork);
  v12 = [*(a2 + 16) interfaceName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2741C7E7C();
    v16 = v15;

    v17 = [*(a2 + 16) userSettings];
    if (v17)
    {
      v18 = v17;

      sub_2740CCBEC(v18, v14, v16, v11, v10, v68);
      v19 = v74;
      if (v74)
      {
        v20 = v73;
        v51 = v71;
        v52 = v72;
        v49 = v69;
        v50 = v70;
        v21 = v68[0];

        v24 = v49;
        v23 = v50;
        v26 = v51;
        v25 = v52;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v30 = [*(a2 + 16) IPv4Addresses];
    if (v30)
    {
      v31 = v30;
      v32 = sub_2741C7FEC();
    }

    else
    {
      v32 = 0;
    }

    v33 = [*(a2 + 16) IPv4SubnetMasks];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2741C7FEC();
    }

    else
    {
      v35 = 0;
    }

    v36 = [*(a2 + 16) IPv4RouterAddress];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2741C7E7C();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v54[0] = 0;
    *&v55 = v32;
    *(&v55 + 1) = v35;
    *&v56 = v38;
    *(&v56 + 1) = v40;
    v57 = 0u;
    v58 = 0u;
    v59 = v14;
    v60 = v16;
    v61[0] = 0;
    *&v62 = v32;
    *(&v62 + 1) = v35;
    *&v63 = v38;
    *(&v63 + 1) = v40;
    v64 = 0u;
    v65 = 0u;
    v66 = v14;
    v67 = v16;
    sub_2740B2AC0(v54, &v53);
    result = sub_2740B2B1C(v61);
    v20 = v59;
    v19 = v60;
    v25 = v58;
    v26 = v57;
    v23 = v56;
    v24 = v55;
    v21 = v54[0];
  }

  else
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
    v27 = [*(a2 + 16) IPv4Addresses];
    if (v27)
    {
      v28 = v27;
      v29 = sub_2741C7FEC();
    }

    else
    {
      v29 = 0;
    }

    v41 = [*(a2 + 16) IPv4SubnetMasks];
    if (v41)
    {
      v42 = v41;
      v43 = sub_2741C7FEC();
    }

    else
    {
      v43 = 0;
    }

    v44 = [*(a2 + 16) IPv4RouterAddress];
    if (v44)
    {
      v45 = v44;
      v46 = sub_2741C7E7C();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v61[0] = 0;
    *&v62 = v29;
    *(&v62 + 1) = v43;
    *&v63 = v46;
    *(&v63 + 1) = v48;
    v64 = 0u;
    v65 = 0u;
    v66 = 0x6E776F6E6B6E75;
    v67 = 0xE700000000000000;
    v68[0] = 0;
    *&v69 = v29;
    *(&v69 + 1) = v43;
    *&v70 = v46;
    *(&v70 + 1) = v48;
    v71 = 0u;
    v72 = 0u;
    v73 = 0x6E776F6E6B6E75;
    v74 = 0xE700000000000000;
    sub_2740B2AC0(v61, v54);
    result = sub_2740B2B1C(v68);
    v20 = v66;
    v19 = v67;
    v26 = v64;
    v25 = v65;
    v24 = v62;
    v23 = v63;
    v21 = v61[0];
  }

LABEL_26:
  *a3 = v21;
  *(a3 + 8) = v24;
  *(a3 + 24) = v23;
  *(a3 + 40) = v26;
  *(a3 + 56) = v25;
  *(a3 + 72) = v20;
  *(a3 + 80) = v19;
  return result;
}

uint64_t sub_274195E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, v63);
  v6 = v63[0];
  v5 = v63[1];

  sub_2740ACB2C(v63);
  v7 = [*(a2 + 16) interfaceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2741C7E7C();
    v11 = v10;

    v12 = [*(a2 + 16) userSettings];
    if (v12)
    {
      v13 = v12;

      sub_2740CCBEC(v13, v9, v11, v6, v5, v64);
      v14 = v70;
      if (v70)
      {
        v15 = v69;
        v46 = v67;
        v47 = v68;
        v44 = v65;
        v45 = v66;
        v16 = v64[0];

        v19 = v44;
        v18 = v45;
        v21 = v46;
        v20 = v47;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v25 = [*(a2 + 16) IPv4Addresses];
    if (v25)
    {
      v26 = v25;
      v27 = sub_2741C7FEC();
    }

    else
    {
      v27 = 0;
    }

    v28 = [*(a2 + 16) IPv4SubnetMasks];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2741C7FEC();
    }

    else
    {
      v30 = 0;
    }

    v31 = [*(a2 + 16) IPv4RouterAddress];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2741C7E7C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v49[0] = 0;
    *&v50 = v27;
    *(&v50 + 1) = v30;
    *&v51 = v33;
    *(&v51 + 1) = v35;
    v52 = 0u;
    v53 = 0u;
    v54 = v9;
    v55 = v11;
    v56[0] = 0;
    *&v57 = v27;
    *(&v57 + 1) = v30;
    *&v58 = v33;
    *(&v58 + 1) = v35;
    v59 = 0u;
    v60 = 0u;
    v61 = v9;
    v62 = v11;
    sub_2740B2AC0(v49, v48);
    result = sub_2740B2B1C(v56);
    v15 = v54;
    v14 = v55;
    v20 = v53;
    v21 = v52;
    v18 = v51;
    v19 = v50;
    v16 = v49[0];
  }

  else
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000017, 0x80000002741DC1E0);
    v22 = [*(a2 + 16) IPv4Addresses];
    if (v22)
    {
      v23 = v22;
      v24 = sub_2741C7FEC();
    }

    else
    {
      v24 = 0;
    }

    v36 = [*(a2 + 16) IPv4SubnetMasks];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2741C7FEC();
    }

    else
    {
      v38 = 0;
    }

    v39 = [*(a2 + 16) IPv4RouterAddress];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2741C7E7C();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v56[0] = 0;
    *&v57 = v24;
    *(&v57 + 1) = v38;
    *&v58 = v41;
    *(&v58 + 1) = v43;
    v59 = 0u;
    v60 = 0u;
    v61 = 0x6E776F6E6B6E75;
    v62 = 0xE700000000000000;
    v64[0] = 0;
    *&v65 = v24;
    *(&v65 + 1) = v38;
    *&v66 = v41;
    *(&v66 + 1) = v43;
    v67 = 0u;
    v68 = 0u;
    v69 = 0x6E776F6E6B6E75;
    v70 = 0xE700000000000000;
    sub_2740B2AC0(v56, v49);
    result = sub_2740B2B1C(v64);
    v15 = v61;
    v14 = v62;
    v21 = v59;
    v20 = v60;
    v19 = v57;
    v18 = v58;
    v16 = v56[0];
  }

LABEL_26:
  *a3 = v16;
  *(a3 + 8) = v19;
  *(a3 + 24) = v18;
  *(a3 + 40) = v21;
  *(a3 + 56) = v20;
  *(a3 + 72) = v15;
  *(a3 + 80) = v14;
  return result;
}

void sub_274196238(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for KnownNetwork(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274196D80(a1, v9, type metadata accessor for KnownNetwork);
  v11 = *v9;
  v10 = v9[1];

  sub_2741041FC(v9, type metadata accessor for KnownNetwork);
  v12 = [*(a2 + 16) interfaceName];
  if (!v12)
  {
    v14 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v24 = [*(a2 + 16) DNSServerAddresses];
    v22 = 0uLL;
    if (v24)
    {
      v25 = v24;
      v19 = sub_2741C7FEC();

      v22 = 0uLL;
      v23 = 0;
      v16 = 0xE700000000000000;
LABEL_10:
      v21 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v23 = 0;
    v16 = 0xE700000000000000;
LABEL_13:
    v19 = MEMORY[0x277D84F90];
    v21 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v13 = v12;
  v14 = sub_2741C7E7C();
  v16 = v15;

  v17 = [*(a2 + 16) userSettings];
  if (!v17)
  {

    goto LABEL_8;
  }

  v18 = v17;

  sub_2740CDB4C(v18, v14, v16, v11, v10, &v29);
  v19 = v30;
  if (!v30)
  {
LABEL_8:
    v26 = [*(a2 + 16) DNSServerAddresses];
    v22 = 0uLL;
    if (v26)
    {
      v27 = v26;
      v19 = sub_2741C7FEC();

      v22 = 0uLL;
      v23 = 0;
      goto LABEL_10;
    }

    v23 = 0;
    goto LABEL_13;
  }

  v14 = v33;
  v20 = v34;
  v28 = v32;
  v21 = v31;
  v35 = v29;

  v22 = v28;
  v23 = v35;
  v16 = v20;
LABEL_14:
  *a3 = v23;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
}

void sub_2741964C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2740ACAC8(a1, v24);
  v6 = v24[0];
  v5 = v24[1];

  sub_2740ACB2C(v24);
  v7 = [*(a2 + 16) interfaceName];
  if (!v7)
  {
    v9 = 0x6E776F6E6B6E75;

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000016, 0x80000002741DC1C0);
    v19 = [*(a2 + 16) DNSServerAddresses];
    v17 = 0uLL;
    if (v19)
    {
      v20 = v19;
      v14 = sub_2741C7FEC();

      v17 = 0uLL;
      v18 = 0;
      v11 = 0xE700000000000000;
LABEL_10:
      v16 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v18 = 0;
    v11 = 0xE700000000000000;
LABEL_13:
    v14 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = v7;
  v9 = sub_2741C7E7C();
  v11 = v10;

  v12 = [*(a2 + 16) userSettings];
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;

  sub_2740CDB4C(v13, v9, v11, v6, v5, &v25);
  v14 = v26;
  if (!v26)
  {
LABEL_8:
    v21 = [*(a2 + 16) DNSServerAddresses];
    v17 = 0uLL;
    if (v21)
    {
      v22 = v21;
      v14 = sub_2741C7FEC();

      v17 = 0uLL;
      v18 = 0;
      goto LABEL_10;
    }

    v18 = 0;
    goto LABEL_13;
  }

  v9 = v29;
  v15 = v30;
  v23 = v28;
  v16 = v27;
  v31 = v25;

  v17 = v23;
  v18 = v31;
  v11 = v15;
LABEL_14:
  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
}

uint64_t sub_2741966E8(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for KnownNetwork(0);
  v27 = sub_274197040(qword_28093B018, type metadata accessor for KnownNetwork, &unk_2741D29C8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_274196D80(a1, boxed_opaque_existential_1, type metadata accessor for KnownNetwork);
  v5 = __swift_project_boxed_opaque_existential_1(v25, v26);
  v7 = *boxed_opaque_existential_1;
  v6 = boxed_opaque_existential_1[1];
  v8 = *(a2 + 16);

  v9 = [v8 interfaceName];
  if (!v9)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = 0x6E776F6E6B6E75;
    v21 = 0xE700000000000000;
LABEL_8:
    v19 = sub_274113B80(v20, v21);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_2741C7E7C();
  v13 = v12;

  v14 = [*(a2 + 16) userSettings];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  sub_2741C856C();

  v16 = *v5;
  v17 = v5[1];

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v18 = sub_274113658(v15, v11, v13, v7, v6);
  if (!v18)
  {
LABEL_7:
    sub_2741C856C();

    v23 = *v5;
    v22 = v5[1];

    MEMORY[0x2743E5FB0](v23, v22);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = v11;
    v21 = v13;
    goto LABEL_8;
  }

  v19 = v18;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v19;
}

uint64_t sub_2741969E4(uint64_t a1, uint64_t a2)
{
  v25[3] = &type metadata for ScannedNetwork;
  v25[4] = sub_2740F2248();
  v4 = swift_allocObject();
  v25[0] = v4;
  sub_2740ACAC8(a1, v4 + 16);
  v5 = __swift_project_boxed_opaque_existential_1(v25, &type metadata for ScannedNetwork);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(a2 + 16);

  v9 = [v8 interfaceName];
  if (!v9)
  {

    sub_2740CB218(0xD000000000000030, 0x80000002741DC110, 0xD000000000000013, 0x80000002741DC150);
    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = 0x6E776F6E6B6E75;
    v21 = 0xE700000000000000;
LABEL_8:
    v19 = sub_274113B80(v20, v21);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_2741C7E7C();
  v13 = v12;

  v14 = [*(a2 + 16) userSettings];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  sub_2741C856C();

  v16 = *v5;
  v17 = v5[1];

  MEMORY[0x2743E5FB0](v16, v17);

  sub_2740CB460(0xD00000000000001DLL, 0x80000002741DC1A0);

  type metadata accessor for ProxySettings();
  swift_allocObject();

  v18 = sub_274113658(v15, v11, v13, v7, v6);
  if (!v18)
  {
LABEL_7:
    sub_2741C856C();

    v23 = *v5;
    v22 = v5[1];

    MEMORY[0x2743E5FB0](v23, v22);

    sub_2740CB460(0xD000000000000025, 0x80000002741DC170);

    type metadata accessor for ProxySettings();
    swift_allocObject();
    v20 = v11;
    v21 = v13;
    goto LABEL_8;
  }

  v19 = v18;

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v19;
}

uint64_t sub_274196CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E88, &qword_2741CB5A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274196D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_274196DF8()
{
  result = qword_28093AFE0;
  if (!qword_28093AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFD0, &qword_2741D6E40);
    sub_274196EB0();
    sub_2740A6D24(&qword_280938228, &qword_2809381F8, &unk_2741D4350, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AFE0);
  }

  return result;
}

unint64_t sub_274196EB0()
{
  result = qword_28093AFE8;
  if (!qword_28093AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFF0, &qword_2741D6E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093AFC8, &qword_2741D6E38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2740A6D24(&qword_280938218, &qword_280938220, &unk_2741D6E80, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093AFE8);
  }

  return result;
}

uint64_t sub_274197040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2741970C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274197128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v17 - v12;
  v11();
  v14 = *(v6 + 16);
  v14(v13, v9, a3);
  v15 = *(v6 + 8);
  v15(v9, a3);
  v14(a4, v13, a3);
  return (v15)(v13, a3);
}

uint64_t sub_274197278(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_2741972D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_274197350(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0C0, &qword_2741D7040);
  sub_274197900();
  return sub_2741C7B9C();
}

uint64_t sub_2741973C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0D0, &qword_2741D7048);
  MEMORY[0x28223BE20](v4, v5);
  v8 = v11 - v7;
  if (a1)
  {
    v11[0] = v6;
    v11[1] = a1;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938430, &qword_2741CC108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0E0, &unk_2741D7050);
    sub_2740A6D24(&qword_2809388D0, &qword_280938430, &qword_2741CC108, MEMORY[0x277D83980]);
    sub_2740A6D24(&qword_28093B0D8, &qword_28093B0E0, &unk_2741D7050, MEMORY[0x277CE1138]);
    sub_2741C7B5C();
    (*(v11[0] + 32))(a2, v8, v4);
    return (*(v11[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v6 + 56);

    return v10(a2, 1, 1, v4);
  }
}

uint64_t sub_274197614@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2741C70EC();
  sub_2740A6A74();

  result = sub_2741C76AC();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6 & 1;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_274197694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0A0, &qword_2741D7030);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v7[-v4];
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B0A8, &qword_2741D7038);
  sub_274197870();
  sub_2741C761C();
  if (qword_2809377B8 != -1)
  {
    swift_once();
  }

  v9 = qword_2809466B8;
  v10 = unk_2809466C0;
  sub_2740A6D24(&qword_28093B0E8, &qword_28093B0A0, &qword_2741D7030, MEMORY[0x277CDE580]);
  sub_2740A6A74();

  sub_2741C777C();
  (*(v2 + 8))(v5, v1);
}

unint64_t sub_274197870()
{
  result = qword_28093B0B0;
  if (!qword_28093B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0A8, &qword_2741D7038);
    sub_274197900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0B0);
  }

  return result;
}

unint64_t sub_274197900()
{
  result = qword_28093B0B8;
  if (!qword_28093B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0C0, &qword_2741D7040);
    sub_274197984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0B8);
  }

  return result;
}

unint64_t sub_274197984()
{
  result = qword_28093B0C8;
  if (!qword_28093B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0D0, &qword_2741D7048);
    sub_2740A6D24(&qword_28093B0D8, &qword_28093B0E0, &unk_2741D7050, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B0C8);
  }

  return result;
}

uint64_t sub_274197A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B0A0, &qword_2741D7030);
  sub_2740A6D24(&qword_28093B0E8, &qword_28093B0A0, &qword_2741D7030, MEMORY[0x277CDE580]);
  sub_2740A6A74();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274197AE8()
{
  v1 = [*(v0 + 16) userSettings];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2740CD860([v1 askToJoinMode]);
    if (v3 == 4)
    {
      sub_2741C856C();

      v23 = 0xD000000000000020;
      v24 = 0x80000002741E3210;
      *&v25 = [v2 askToJoinMode];
      v4 = sub_2741C86CC();
      MEMORY[0x2743E5FB0](v4);

      v5 = 0x4B5357206F7420;
      v6 = 0xE700000000000000;
LABEL_7:
      MEMORY[0x2743E5FB0](v5, v6);
      sub_2740CB218(v23, v24, 0x7474655372657375, 0xEC00000073676E69);

      goto LABEL_8;
    }

    v7 = v3;
    v8 = sub_2740CD860([v2 autoHotspotMode]);
    if (v8 == 4)
    {
      sub_2741C856C();

      v23 = 0xD000000000000022;
      v24 = 0x80000002741E3240;
      *&v25 = [v2 autoHotspotMode];
      v9 = sub_2741C86CC();
      MEMORY[0x2743E5FB0](v9);

      v5 = 0x204B5357206F7420;
      v6 = 0xE800000000000000;
      goto LABEL_7;
    }

    v11 = v8;
    v13 = [v2 OSSpecificAttributes];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2741C7D6C();

      *&v25 = 0xD000000000000018;
      *(&v25 + 1) = 0x80000002741E2510;
      sub_2741C850C();
      if (*(v15 + 16))
      {
        v16 = sub_274125164(&v23);
        if (v17)
        {
          sub_27409D308(*(v15 + 56) + 32 * v16, &v25);
          sub_27409D2A4(&v23);

          if (*(&v26 + 1))
          {
            swift_dynamicCast();
            goto LABEL_18;
          }

LABEL_17:
          sub_2740B29E8(&v25);
LABEL_18:
          v18 = [v2 OSSpecificAttributes];
          if (v18)
          {
            v19 = v18;
            v20 = sub_2741C7D6C();

            *&v25 = 0xD00000000000001ALL;
            *(&v25 + 1) = 0x80000002741E24F0;
            sub_2741C850C();
            if (*(v20 + 16))
            {
              v21 = sub_274125164(&v23);
              if (v22)
              {
                sub_27409D308(*(v20 + 56) + 32 * v21, &v25);
                sub_27409D2A4(&v23);

                if (*(&v26 + 1))
                {
                  swift_dynamicCast();
LABEL_26:
                  [objc_opt_self() getPowerModificationState];

                  v10 = v7;
                  return v10 | (v11 << 8);
                }

LABEL_25:
                sub_2740B29E8(&v25);
                goto LABEL_26;
              }
            }

            sub_27409D2A4(&v23);
          }

          v25 = 0u;
          v26 = 0u;
          goto LABEL_25;
        }
      }

      sub_27409D2A4(&v23);
    }

    v25 = 0u;
    v26 = 0u;
    goto LABEL_17;
  }

  sub_2740CB218(0xD00000000000002BLL, 0x80000002741E31E0, 0x7474655372657375, 0xEC00000073676E69);
LABEL_8:
  v10 = 1;
  v11 = 1;
  return v10 | (v11 << 8);
}

uint64_t sub_274197F84(void *a1)
{
  v2 = type metadata accessor for KnownNetwork(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2741980C8();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  while (1)
  {
    v11 = v9;
    if (v10 == v9)
    {
      goto LABEL_11;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    sub_27409CF58(v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v6);
    if (*v6 == *a1 && v6[1] == a1[1])
    {
      sub_27409D050(v6);
LABEL_11:

      return v10 != v11;
    }

    ++v9;
    v13 = sub_2741C86DC();
    result = sub_27409D050(v6);
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2741980C8()
{
  v1 = type metadata accessor for KnownNetwork(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E30, &qword_2741CDC20);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = *(v0 + 88);
  if (v10 >> 62)
  {
    v11 = sub_2741C848C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_13:
    v18 = sub_2741C80DC();
    (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v12;

    sub_2740CE980(0, 0, v9, &unk_2741D7090, v19);

    return v12;
  }

  v21 = MEMORY[0x277D84F90];

  result = sub_27419897C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v12 = v21;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2743E6600](v14, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v14 + 32);
      }

      sub_274117670(v15, v5);
      v21 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_27419897C((v16 > 1), v17 + 1, 1);
        v12 = v21;
      }

      ++v14;
      *(v12 + 16) = v17 + 1;
      sub_27409D240(v5, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17);
    }

    while (v11 != v14);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_274198388()
{
  *(v0 + 24) = sub_2741C80AC();
  *(v0 + 32) = sub_2741C809C();
  v2 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274198420, v2, v1);
}

uint64_t sub_274198420()
{

  if (qword_280937BD0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_2741984B8, 0, 0);
}

uint64_t sub_2741984B8(uint64_t a1)
{
  *(v1 + 40) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_274198544, v3, v2);
}

uint64_t sub_274198544()
{

  *(v0 + 48) = qword_280946F30;

  return MEMORY[0x2822009F8](sub_2741985C0, 0, 0);
}

uint64_t sub_2741985C0(uint64_t a1)
{
  *(v1 + 56) = sub_2741C809C();
  v3 = sub_2741C805C();

  return MEMORY[0x2822009F8](sub_27419864C, v3, v2);
}

uint64_t sub_27419864C()
{
  v1 = *(v0 + 16);

  sub_2741BBB14(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2741986C0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2741C86DC() & 1;
  }
}

void sub_274198718(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  sub_2741C856C();

  v13 = 0xD000000000000013;
  v14 = 0x80000002741E3170;
  v4 = sub_274117C50();
  MEMORY[0x2743E5FB0](v4);

  sub_2740CB460(0xD000000000000013, 0x80000002741E3170);

  sub_27409D4E4(a1 + 72, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E18, &unk_2741D1A40);
  sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
  if (swift_dynamicCast())
  {
    v5 = *(v1 + 16);
    v13 = 0;
    if (![v5 removeKnownNetworkProfile:v12 reason:2 error:&v13])
    {
      v11 = v13;
      sub_2741C681C();

      swift_willThrow();
      return;
    }

    v6 = v13;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2741C856C();

    v13 = 0xD000000000000028;
    v14 = 0x80000002741E31B0;
    v7 = sub_274117C50();
    MEMORY[0x2743E5FB0](v7);

    sub_2740CB218(v13, v14, 0xD000000000000010, 0x80000002741E3190);
  }

  v8 = [*(v1 + 16) knownNetworkProfilesWithProperties_];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2741C7FEC();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  *(v2 + 88) = v10;
}

void *sub_27419897C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2741B4140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_27419899C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2741989DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27409D648;

  return sub_274198368(a1, v4, v5, v6);
}

void *sub_274198A90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2741B4414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274198AB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2741B455C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_274198AD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2741B4680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_274198AF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = v2;
  v31 = *MEMORY[0x277D85DE8];
  v6 = sub_2741C6AFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D02B60]) init];
  [v11 setAskToJoinMode_];
  [v11 setAutoHotspotMode_];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000015, 0x80000002741E3270);
  v28 = [v11 askToJoinMode];
  type metadata accessor for CWFAskToJoinMode(0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0xD000000000000012, 0x80000002741E3290);
  v28 = [v11 autoHotspotMode];
  type metadata accessor for CWFAutoHotspotMode(0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  v12 = v29;
  v13 = v30;
  if (qword_280937360 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280945DD8);
  (*(v7 + 16))(v10, v14, v6);
  sub_2740CA9CC(0x41465245544E495BLL, 0xEB000000005D4543, v12, v13);

  (*(v7 + 8))(v10, v6);
  v15 = *(v3 + 16);
  v16 = qword_280937350;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_280945DC8;
  v19 = qword_280937358;

  if (v19 != -1)
  {
    swift_once();
  }

  sub_274149FA4(v20, v18);
  sub_2740BA268(0, &qword_280938410, 0x277CCABB0);
  sub_2740F2498();
  v21 = sub_2741C81DC();

  v29 = 0;
  v22 = [v17 applyUserSettings:v11 properties:v21 error:&v29];

  if (v22)
  {
    v23 = v29;
  }

  else
  {
    v24 = v29;
    v25 = sub_2741C681C();

    swift_willThrow();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_2741C856C();
    MEMORY[0x2743E5FB0](0xD00000000000001ELL, 0x80000002741E32B0);
    v28 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937E10, &qword_2741CB370);
    sub_2741C862C();
    sub_2740CB218(v29, v30, 0xD000000000000013, 0x80000002741E32D0);
  }

  return v22;
}

uint64_t sub_274198F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_274199018(uint64_t a1, uint64_t a2)
{
  v4 = sub_2741C689C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PortalInfoSection(uint64_t a1)
{
  result = qword_28093B0F0;
  if (!qword_28093B0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2741990D4(uint64_t a1)
{
  result = sub_2741C689C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27419915C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B110, &qword_2741D7120);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  *a2 = sub_2741C71AC();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B118, &qword_2741D7128);
  *v7 = sub_2741C71BC();
  *(v7 + 1) = 0x4034000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B120, &unk_2741D7130);
  sub_27419929C(a1, &v7[*(v8 + 44)]);
  sub_2741C6D4C();
  sub_274199D88(&qword_28093B128, &qword_28093B110, &qword_2741D7120);
  sub_2741C778C();
  return sub_27409D420(v7, &qword_28093B110, &qword_2741D7120);
}

uint64_t sub_27419929C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for PortalInfoSection(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v40 = *(v44 - 8);
  v7 = v40;
  v9 = MEMORY[0x28223BE20](v44, v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v45 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093A210, &qword_2741D7140);
  v14 = v13 - 8;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v18;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v38 - v20;
  v46 = sub_2741C71BC();
  LOBYTE(v52[0]) = 0;
  sub_274199748(v48);
  *&v47[23] = v48[1];
  *&v47[39] = v48[2];
  *&v47[55] = v48[3];
  v47[71] = v49;
  *&v47[7] = v48[0];
  v22 = v52[0];
  v41 = LOBYTE(v52[0]);
  sub_2741C7B4C();
  v23 = &v21[*(v14 + 44)];
  v23[32] = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_274199DDC(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_274199F0C(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = v45;
  sub_2741C7A7C();
  sub_2740A6D94(v21, v18, &qword_28093A210, &qword_2741D7140);
  v27 = *(v7 + 16);
  v28 = v43;
  v29 = v44;
  v27(v43, v26, v44);
  *&v50 = v46;
  *(&v50 + 1) = 0x4008000000000000;
  LOBYTE(v51[0]) = v22;
  *(v51 + 1) = *v47;
  *(&v51[1] + 1) = *&v47[16];
  *(&v51[2] + 1) = *&v47[32];
  *(&v51[3] + 1) = *&v47[48];
  *(&v51[4] + 1) = *&v47[64];
  v30 = v51[0];
  *a2 = v50;
  a2[1] = v30;
  v31 = v51[1];
  v32 = v51[2];
  v33 = v51[3];
  *(a2 + 73) = *(&v51[3] + 9);
  a2[3] = v32;
  a2[4] = v33;
  a2[2] = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B130, &qword_2741D7148);
  v35 = v39;
  sub_2740A6D94(v39, a2 + *(v34 + 48), &qword_28093A210, &qword_2741D7140);
  v27(a2 + *(v34 + 64), v28, v29);
  sub_2740A6D94(&v50, v52, &qword_28093B138, &unk_2741D7150);
  v36 = *(v40 + 8);
  v36(v45, v29);
  sub_27409D420(v21, &qword_28093A210, &qword_2741D7140);
  v36(v28, v29);
  sub_27409D420(v35, &qword_28093A210, &qword_2741D7140);
  v52[0] = v46;
  v52[1] = 0x4008000000000000;
  v53 = v41;
  v55 = *&v47[16];
  v56 = *&v47[32];
  v57 = *&v47[48];
  v58 = *&v47[64];
  v54 = *v47;
  return sub_27409D420(v52, &qword_28093B138, &unk_2741D7150);
}

uint64_t sub_274199748@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937B78 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v2 = MEMORY[0x277D837D0];
  v3 = sub_2741C76AC();
  v5 = v4;
  v7 = v6;
  sub_2741C75EC();
  v38 = sub_2741C767C();
  v39 = v8;
  v10 = v9;
  v37 = v11;

  sub_2740A6AC8(v3, v5, v7 & 1);

  v12 = sub_2741C686C();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = v2;
    if (qword_280937B80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2741CB550;
    *(v17 + 56) = v16;
    *(v17 + 64) = sub_27410D7BC();
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;

    v18 = sub_2741C7E4C() >> 32;
    v20 = v19;

    DWORD1(v40) = v18;
    *(&v40 + 1) = v20;
    v21 = sub_2741C76AC();
    v23 = v22;
    LOBYTE(v17) = v24;
    LODWORD(v40) = sub_2741C737C();
    sub_2741C764C();
    sub_2740A6AC8(v21, v23, v17 & 1);
  }

  else
  {
    if (qword_280937B80 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809385D0, qword_2741D1970);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2741CB550;

    v26 = sub_2741C683C();
    v28 = v27;
    *(v25 + 56) = v2;
    *(v25 + 64) = sub_27410D7BC();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    HIDWORD(v26) = sub_2741C7E4C() >> 32;
    v30 = v29;

    DWORD1(v40) = HIDWORD(v26);
    *(&v40 + 1) = v30;
    v31 = sub_2741C76AC();
    v33 = v32;
    v35 = v34;
    LODWORD(v40) = sub_2741C737C();
    sub_2741C764C();
    sub_2740A6AC8(v31, v33, v35 & 1);
  }

  sub_2741C72CC();
  *a1 = v38;
  *(a1 + 8) = v10;
  *(a1 + 16) = v37 & 1;
  *(a1 + 24) = v39;
  *(a1 + 32) = v40;
  *(a1 + 48) = v41;
  *(a1 + 64) = v42;
  sub_27409861C(v38, v10, v37 & 1);

  sub_274138974(v40, *(&v40 + 1), v41, *(&v41 + 1));
  sub_2741389E0(v40, *(&v40 + 1), v41, *(&v41 + 1));
  sub_2740A6AC8(v38, v10, v37 & 1);
}

void sub_274199BC0()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_2741C684C();
    [v1 openSensitiveURL:v2 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274199C4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937B88 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274199CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B100, &qword_2741D7118);
  sub_274199D88(&qword_28093B108, &qword_28093B100, &qword_2741D7118);
  return sub_2741C7B9C();
}

uint64_t sub_274199D88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_274199DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortalInfoSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274199E40()
{
  v1 = *(type metadata accessor for PortalInfoSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2741C689C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274199F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PortalInfoSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_274199F70()
{
  type metadata accessor for PortalInfoSection(0);

  sub_274199BC0();
}

unint64_t sub_274199FD4()
{
  result = qword_28093B140;
  if (!qword_28093B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B148, &unk_2741D7160);
    sub_274199D88(&qword_28093B108, &qword_28093B100, &qword_2741D7118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B140);
  }

  return result;
}

void static WiFiDeviceCapability.getWiFiDeviceCapability()(char *a1@<X8>)
{
  if (qword_280937BA8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  if (byte_28093B151)
  {
    v1 = 3;
  }

  else
  {
    if (qword_280937BA0 != -1)
    {
      v5 = a1;
      swift_once();
      a1 = v5;
    }

    if (byte_28093B150 == 1)
    {
      v2 = a1;
      _s15WiFiSettingsKit0aB16DeviceCapabilityC15isWAPIAvailableSbyFZ_0();
      a1 = v2;
      if (v3)
      {
        v1 = 2;
      }

      else
      {
        v1 = 4;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  *a1 = v1;
}

uint64_t WiFiDeviceCapability.DeviceCapability.hashValue.getter()
{
  v1 = *v0;
  sub_2741C87DC();
  MEMORY[0x2743E6870](v1);
  return sub_2741C880C();
}

uint64_t sub_27419A230()
{
  result = MGGetProductType();
  qword_28093B158 = result;
  return result;
}

void sub_27419A270(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_27419A2C8(uint64_t a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    v3 = MobileGestalt_copy_wifiChipset_obj();

    if (v3)
    {
      v4 = sub_2741C7E7C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    qword_28093B168 = v4;
    qword_28093B170 = v6;
  }

  else
  {
    __break(1u);
  }
}

void _s15WiFiSettingsKit0aB16DeviceCapabilityC15isWAPIAvailableSbyFZ_0()
{
  if (qword_280937BB0 != -1)
  {
    swift_once();
  }

  if (qword_280937BC0 != -1)
  {
    swift_once();
  }

  v0 = qword_28093B170;
  if (qword_28093B170)
  {
    v1 = qword_28093B168;
    v2 = HIBYTE(qword_28093B170) & 0xF;
    v3 = qword_28093B168 & 0xFFFFFFFFFFFFLL;
    if ((qword_28093B170 & 0x2000000000000000) != 0 ? HIBYTE(qword_28093B170) & 0xF : qword_28093B168 & 0xFFFFFFFFFFFFLL)
    {
      if ((qword_28093B170 & 0x1000000000000000) != 0)
      {

        sub_2740B1168(v1, v0, 10);
        v31 = v30;

        if (v31)
        {
          return;
        }

        goto LABEL_70;
      }

      if ((qword_28093B170 & 0x2000000000000000) != 0)
      {
        v32[0] = qword_28093B168;
        v32[1] = qword_28093B170 & 0xFFFFFFFFFFFFFFLL;
        if (qword_28093B168 == 43)
        {
          if (v2)
          {
            if (--v2)
            {
              v19 = 0;
              v20 = v32 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v2)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_66;
          }

LABEL_76:
          __break(1u);
          return;
        }

        if (qword_28093B168 != 45)
        {
          if (v2)
          {
            v26 = 0;
            v27 = v32;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                break;
              }

              ++v27;
              if (!--v2)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

        if (v2)
        {
          if (--v2)
          {
            v11 = 0;
            v12 = v32 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                break;
              }

              ++v12;
              if (!--v2)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }
      }

      else
      {
        if ((qword_28093B168 & 0x1000000000000000) != 0)
        {
          v5 = ((qword_28093B170 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v5 = sub_2741C858C();
        }

        v6 = *v5;
        if (v6 == 43)
        {
          if (v3 >= 1)
          {
            v2 = v3 - 1;
            if (v3 != 1)
            {
              v15 = 0;
              if (v5)
              {
                v16 = v5 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_66;
                  }

                  v18 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_66;
                  }

                  v15 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_66;
                  }

                  ++v16;
                  if (!--v2)
                  {
                    goto LABEL_67;
                  }
                }
              }

              goto LABEL_58;
            }

            goto LABEL_66;
          }

          goto LABEL_75;
        }

        if (v6 != 45)
        {
          if (v3)
          {
            v23 = 0;
            if (v5)
            {
              while (1)
              {
                v24 = *v5 - 48;
                if (v24 > 9)
                {
                  goto LABEL_66;
                }

                v25 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_66;
                }

                v23 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_66;
                }

                ++v5;
                if (!--v3)
                {
                  goto LABEL_58;
                }
              }
            }

            goto LABEL_58;
          }

LABEL_66:
          LOBYTE(v2) = 1;
LABEL_67:
          v33 = v2;
          if (v2)
          {
            return;
          }

LABEL_70:
          if (qword_280937BB8 != -1)
          {
            swift_once();
          }

          return;
        }

        if (v3 >= 1)
        {
          v2 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            if (v5)
            {
              v8 = v5 + 1;
              while (1)
              {
                v9 = *v8 - 48;
                if (v9 > 9)
                {
                  goto LABEL_66;
                }

                v10 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_66;
                }

                v7 = v10 - v9;
                if (__OFSUB__(v10, v9))
                {
                  goto LABEL_66;
                }

                ++v8;
                if (!--v2)
                {
                  goto LABEL_67;
                }
              }
            }

LABEL_58:
            LOBYTE(v2) = 0;
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }
}

unint64_t sub_27419A890()
{
  result = qword_28093B178;
  if (!qword_28093B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B178);
  }

  return result;
}

uint64_t sub_27419A958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B180, &qword_2741D7288);
  MEMORY[0x28223BE20](v46, v3);
  v45 = &v42 - v4;
  v5 = type metadata accessor for WFButton(0);
  v6 = v5 - 8;
  v43 = *(v5 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B188, &unk_2741D7290);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937F80, &unk_2741CB690);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v42 - v23;
  v25 = *(v6 + 28);
  v44 = a1;
  v26 = *(a1 + v25);
  if (sub_2740B31F0(v26) == 0x746567726F46 && v27 == 0xE600000000000000)
  {
  }

  else
  {
    v29 = sub_2741C86DC();

    if ((v29 & 1) == 0)
    {
      v24 = v21;
      v48 = sub_2740B2E74(v26);
      v49 = v30;
      v31 = v42;
      if (((1 << v26) & 0x5F9) != 0)
      {
        v32 = sub_2741C6C5C();
        (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      }

      else
      {
        if (((1 << v26) & 0x202) != 0)
        {
          sub_2741C6C4C();
        }

        else
        {
          sub_2741C6C3C();
        }

        v38 = sub_2741C6C5C();
        (*(*(v38 - 8) + 56))(v31, 0, 1, v38);
      }

      sub_27419B074(v44, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v40 = swift_allocObject();
      sub_27419B0DC(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v39);
      sub_2740A6A74();
      sub_2741C7A8C();
      goto LABEL_21;
    }
  }

  v48 = sub_2740B2E74(v26);
  v49 = v33;
  if (((1 << v26) & 0x5F9) != 0)
  {
    v34 = sub_2741C6C5C();
    (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  }

  else
  {
    if (((1 << v26) & 0x202) != 0)
    {
      sub_2741C6C4C();
    }

    else
    {
      sub_2741C6C3C();
    }

    v35 = sub_2741C6C5C();
    (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
  }

  sub_27419B074(v44, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v37 = swift_allocObject();
  sub_27419B0DC(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
  sub_2740A6A74();
  sub_2741C7A8C();
LABEL_21:
  (*(v17 + 16))(v45, v24, v16);
  swift_storeEnumTagMultiPayload();
  sub_2741166BC();
  sub_2741C72CC();
  return (*(v17 + 8))(v24, v16);
}

uint64_t sub_27419AEC0(uint64_t a1)
{
  strcpy(v6, "User clicked ");
  HIWORD(v6[1]) = -4864;
  v2 = type metadata accessor for WFButton(0);
  v3 = sub_2740B2E74(*(a1 + *(v2 + 20)));
  MEMORY[0x2743E5FB0](v3);

  sub_2740CB460(v6[0], v6[1]);

  return (*(a1 + *(v2 + 24)))(v4);
}

uint64_t sub_27419AF68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_2740ACA00(result, a2, a3, a4);
}

uint64_t sub_27419AF9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_2741C856C();

  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v4, v5);

  sub_2740CB460(0xD00000000000001ALL, 0x80000002741E3350);

  return a2(a1);
}

uint64_t sub_27419B074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27419B0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_19()
{
  v1 = *(type metadata accessor for WFButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2741C699C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27419B290(uint64_t a1, char a2)
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E3530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1E0, qword_2741D74C0);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419B3F8()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v0 + 16);
}

uint64_t sub_27419B46C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_27419B520(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v6)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v9);
      sub_27419DE3C();
      sub_2741C69FC();
    }
  }

  else if ((a2 & 1) != 0 || v5 != a1)
  {
    goto LABEL_9;
  }

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;

  return sub_27419B290(v5, v6);
}

uint64_t sub_27419B648(uint64_t a1)
{
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_2741C856C();

  v13 = 0xD000000000000020;
  v14 = 0x80000002741E3500;
  sub_2740A6D94(a1, &v11, &qword_280938340, &qword_2741D1660);
  v3 = v12;
  if (v12)
  {
    v4 = v11;

    sub_2740ACB2C(&v11);
  }

  else
  {
    v4 = 7104878;
    sub_27409D420(&v11, &qword_280938340, &qword_2741D1660);
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v4, v3);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  sub_2740A6D94(v1 + 32, &v11, &qword_280938340, &qword_2741D1660);
  v5 = v12;
  if (v12)
  {
    v6 = v11;

    sub_27409D420(&v11, &qword_280938340, &qword_2741D1660);
  }

  else
  {
    v6 = 7104878;
    sub_27409D420(&v11, &qword_280938340, &qword_2741D1660);
    v5 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v6, v5);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(v13, v14);

  swift_getKeyPath();
  v11 = v1;
  sub_2741C6A0C();

  sub_2740A6D94(v1 + 32, &v11, &qword_280938340, &qword_2741D1660);
  v7 = v12;
  result = sub_27409D420(&v11, &qword_280938340, &qword_2741D1660);
  if (!v7)
  {
    if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v10);
      v11 = v1;
      sub_2741C69FC();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress) = 0;
      return sub_27419D368(0);
    }
  }

  return result;
}

uint64_t sub_27419B958@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v1 + 32, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419B9F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 32, a2, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BAB0(uint64_t a1)
{
  swift_beginAccess();
  sub_2740A6D94(v1 + 32, v8, &qword_280938340, &qword_2741D1660);
  v3 = sub_27419E33C(v8, a1);
  sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    v8[0] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v8, &qword_280938340, &qword_2741D1660);
    sub_2740A6D94(v1 + 32, v7, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740FF138(v8, v1 + 32, &qword_280938340, &qword_2741D1660);
    swift_endAccess();
    sub_27419B648(v7);
    sub_27409D420(v7, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  }

  return sub_27409D420(a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BC7C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, v5, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740A6D94(a1 + 32, v4, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740FF138(v5, a1 + 32, &qword_280938340, &qword_2741D1660);
  swift_endAccess();
  sub_27419B648(v4);
  sub_27409D420(v4, &qword_280938340, &qword_2741D1660);
  return sub_27409D420(v5, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419BD64(uint64_t a1)
{
  v2 = v1;
  v4 = 7104878;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v20 - v11);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2741C856C();

  v23 = 0xD000000000000024;
  v24 = 0x80000002741E34D0;
  sub_2740A6D94(a1, v12, &qword_280938570, &qword_2741D1630);
  v13 = type metadata accessor for KnownNetwork(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    sub_27409D420(v12, &qword_280938570, &qword_2741D1630);
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    v16 = *v12;
    v15 = v12[1];

    sub_27409D050(v12);
  }

  MEMORY[0x2743E5FB0](v16, v15);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  v21 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v17 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v2 + v17, v9, &qword_280938570, &qword_2741D1630);
  if (v14(v9, 1, v13))
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v4 = *v9;
    v18 = v9[1];
  }

  sub_27409D420(v9, &qword_280938570, &qword_2741D1630);
  MEMORY[0x2743E5FB0](v4, v18);

  sub_2740CB460(v23, v24);
}

uint64_t sub_27419C014@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  return sub_2740A6D94(v5 + v3, a1, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C0BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a2, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_2740A6D94(a1, &v7 - v4, &qword_280938570, &qword_2741D1630);
  return sub_27419C210(v5);
}

uint64_t sub_27419C210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v16 - v9;
  v11 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(v1 + v11, v10, &qword_280938570, &qword_2741D1630);
  v12 = sub_27419E088(v10, a1);
  sub_27409D420(v10, &qword_280938570, &qword_2741D1630);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v14);
    v16[-2] = v1;
    v16[-1] = a1;
    v16[2] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v10, &qword_280938570, &qword_2741D1630);
    sub_2740A6D94(v1 + v11, v7, &qword_280938570, &qword_2741D1630);
    swift_beginAccess();
    sub_2740FF138(v10, v1 + v11, &qword_280938570, &qword_2741D1630);
    swift_endAccess();
    sub_27419BD64(v7);
    sub_27409D420(v7, &qword_280938570, &qword_2741D1630);
    sub_27409D420(v10, &qword_280938570, &qword_2741D1630);
  }

  return sub_27409D420(a1, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14[-v10];
  sub_2740A6D94(a2, &v14[-v10], &qword_280938570, &qword_2741D1630);
  v12 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  swift_beginAccess();
  sub_2740A6D94(a1 + v12, v8, &qword_280938570, &qword_2741D1630);
  swift_beginAccess();
  sub_2740FF138(v11, a1 + v12, &qword_280938570, &qword_2741D1630);
  swift_endAccess();
  sub_27419BD64(v8);
  sub_27409D420(v8, &qword_280938570, &qword_2741D1630);
  return sub_27409D420(v11, &qword_280938570, &qword_2741D1630);
}

uint64_t sub_27419C5A8(uint64_t a1)
{
  v2 = v1;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2741C856C();

  v12 = 0xD00000000000001DLL;
  v13 = 0x80000002741E34B0;
  sub_2740A6D94(a1, &v10, &qword_280938340, &qword_2741D1660);
  v4 = v11;
  if (v11)
  {
    v5 = v10;

    sub_2740ACB2C(&v10);
  }

  else
  {
    v5 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v4 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v6 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v2 + v6, &v10, &qword_280938340, &qword_2741D1660);
  v7 = v11;
  if (v11)
  {
    v8 = v10;

    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
  }

  else
  {
    v8 = 7104878;
    sub_27409D420(&v10, &qword_280938340, &qword_2741D1660);
    v7 = 0xE300000000000000;
  }

  MEMORY[0x2743E5FB0](v8, v7);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(v12, v13);
}

uint64_t sub_27419C7A0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_27419DE3C();
  sub_2741C6A0C();

  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v5 + v3, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419C848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a2, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419C95C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(v1 + v3, v9, &qword_280938340, &qword_2741D1660);
  v4 = sub_27419E33C(v9, a1);
  sub_27409D420(v9, &qword_280938340, &qword_2741D1660);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    v9[0] = v1;
    sub_27419DE3C();
    sub_2741C69FC();
  }

  else
  {
    sub_2740A6D94(a1, v9, &qword_280938340, &qword_2741D1660);
    sub_2740A6D94(v1 + v3, v8, &qword_280938340, &qword_2741D1660);
    swift_beginAccess();
    sub_2740FF138(v9, v1 + v3, &qword_280938340, &qword_2741D1660);
    swift_endAccess();
    sub_27419C5A8(v8);
    sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
    sub_27409D420(v9, &qword_280938340, &qword_2741D1660);
  }

  return sub_27409D420(a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419CB30(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a2, v6, &qword_280938340, &qword_2741D1660);
  v3 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  sub_2740A6D94(a1 + v3, v5, &qword_280938340, &qword_2741D1660);
  swift_beginAccess();
  sub_2740FF138(v6, a1 + v3, &qword_280938340, &qword_2741D1660);
  swift_endAccess();
  sub_27419C5A8(v5);
  sub_27409D420(v5, &qword_280938340, &qword_2741D1660);
  return sub_27409D420(v6, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419CC20(char a1)
{
  sub_2741C856C();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0xD000000000000018, 0x80000002741E3490);
}

uint64_t sub_27419CDCC(uint64_t a1)
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD00000000000001ALL, 0x80000002741E3470);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419CF18()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
}

uint64_t sub_27419CF90(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) == a1)
  {

    return sub_27419CDCC(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D098(char a1)
{
  sub_2741C856C();
  MEMORY[0x2743E5FB0](0xD000000000000019, 0x80000002741E3450);
  sub_2741C862C();
  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  sub_2741C862C();
  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0, 0xE000000000000000);
}

uint64_t sub_27419D1E4()
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
}

uint64_t sub_27419D25C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) == a1)
  {

    return sub_27419D098(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D368(char a1)
{
  sub_2741C856C();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v3, v4);

  MEMORY[0x2743E5FB0](0x27206F742027, 0xE600000000000000);
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743E5FB0](v5, v6);

  MEMORY[0x2743E5FB0](39, 0xE100000000000000);
  sub_2740CB460(0xD00000000000001DLL, 0x80000002741E3430);
}

uint64_t sub_27419D4D8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v2 + *a2);
}

uint64_t sub_27419D548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  *a2 = *(v3 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);
  return result;
}

uint64_t sub_27419D62C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_27419DE3C();
    sub_2741C69FC();
  }
}

uint64_t sub_27419D728()
{
  sub_27409D420(v0 + 32, &qword_280938340, &qword_2741D1660);
  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile, &qword_280938570, &qword_2741D1630);
  sub_27409D420(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork, &qword_280938340, &qword_2741D1660);
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState___observationRegistrar;
  v2 = sub_2741C6A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentNetworkState(uint64_t a1)
{
  result = qword_28093B1C8;
  if (!qword_28093B1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27419D878(uint64_t a1)
{
  sub_27419D978(319);
  if (v1 <= 0x3F)
  {
    sub_2741C6A4C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_27419D978(uint64_t a1)
{
  if (!qword_28093B1D8)
  {
    type metadata accessor for KnownNetwork(255);
    v1 = sub_2741C839C();
    if (!v2)
    {
      atomic_store(v1, &qword_28093B1D8);
    }
  }
}

uint64_t sub_27419D9D0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  v1 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__currentNetworkProfile;
  v2 = type metadata accessor for KnownNetwork(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__isPowerOn) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) = 0;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) = 3;
  *(v0 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress) = 0;
  sub_2741C6A3C();
  return v0;
}

uint64_t sub_27419DABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  swift_beginAccess();
  return sub_2740A6D94(v3 + 32, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419DBA4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v1 + 16);
}

uint64_t sub_27419DC40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  v4 = OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__removedNetwork;
  swift_beginAccess();
  return sub_2740A6D94(v3 + v4, a1, &qword_280938340, &qword_2741D1660);
}

uint64_t sub_27419DD78()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_27419DE3C();
  sub_2741C6A0C();

  return *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__validIPAddress);
}

unint64_t sub_27419DE14(uint64_t a1, uint64_t a2)
{
  result = sub_27419DE3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27419DE3C()
{
  result = qword_2809382A0;
  if (!qword_2809382A0)
  {
    type metadata accessor for CurrentNetworkState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809382A0);
  }

  return result;
}

uint64_t sub_27419DFC0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState);
  *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__powerState) = *(v0 + 24);
  return sub_27419D098(v2);
}

uint64_t sub_27419E00C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState);
  *(v1 + OBJC_IVAR____TtC15WiFiSettingsKit19CurrentNetworkState__wifiUIState) = *(v0 + 24);
  return sub_27419CDCC(v2);
}

uint64_t sub_27419E088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnownNetwork(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938570, &qword_2741D1630);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B78, &unk_2741D6DB0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_2740A6D94(a1, &v23 - v16, &qword_280938570, &qword_2741D1630);
  sub_2740A6D94(a2, &v17[v18], &qword_280938570, &qword_2741D1630);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
      v20 = 0;
      return v20 & 1;
    }

LABEL_6:
    sub_27409D420(v17, &qword_280939B78, &unk_2741D6DB0);
    v20 = 1;
    return v20 & 1;
  }

  sub_2740A6D94(v17, v12, &qword_280938570, &qword_2741D1630);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_27409D050(v12);
    goto LABEL_6;
  }

  sub_27409D240(&v17[v18], v8);
  if (*v12 == *v8 && v12[1] == v8[1])
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_2741C86DC() ^ 1;
  }

  sub_27409D050(v8);
  sub_27409D050(v12);
  sub_27409D420(v17, &qword_280938570, &qword_2741D1630);
  return v20 & 1;
}

uint64_t sub_27419E33C(uint64_t a1, uint64_t a2)
{
  sub_2740A6D94(a1, v8, &qword_280938340, &qword_2741D1660);
  sub_2740A6D94(a2, v10, &qword_280938340, &qword_2741D1660);
  if (!v9)
  {
    if (!*(&v10[0] + 1))
    {
      sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
      v3 = 0;
      return v3 & 1;
    }

LABEL_8:
    sub_27409D420(v8, &qword_280939B80, &qword_2741D4800);
    v3 = 1;
    return v3 & 1;
  }

  sub_2740A6D94(v8, v7, &qword_280938340, &qword_2741D1660);
  if (!*(&v10[0] + 1))
  {
    sub_2740ACB2C(v7);
    goto LABEL_8;
  }

  v5[4] = v10[4];
  v5[5] = v10[5];
  v6 = v11;
  v5[0] = v10[0];
  v5[1] = v10[1];
  v5[2] = v10[2];
  v5[3] = v10[3];
  if (v7[0] == v10[0])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2741C86DC() ^ 1;
  }

  sub_2740ACB2C(v5);
  sub_2740ACB2C(v7);
  sub_27409D420(v8, &qword_280938340, &qword_2741D1660);
  return v3 & 1;
}

uint64_t sub_27419E508(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + *a1);
  *(v3 + v4) = *(v2 + 24);
  return a2(v5);
}

uint64_t sub_27419E54C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
  return sub_27419B290(v3, v4);
}

uint64_t sub_27419E5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27409D648;

  return v9(a1, a2, a3);
}

uint64_t sub_27419E770(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2740A7434;

  return v17(a1, a2, a3, a4 & 0x101, a5, a6, a7);
}

uint64_t sub_27419E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27409D648;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_27419E9FC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2740A7434;

  return v15(a1, a2, a3 & 0x101, a4, a5, a6);
}

uint64_t sub_27419EB84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_27419ECCC;

  return v15(a1, a2, a3, a4 & 1, a5, a6);
}

uint64_t sub_27419ECCC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_27419EDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27419EED4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27419EE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27419EED4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27419EEAC(uint64_t a1)
{
  sub_27419EED4();
  sub_2741C74CC();
  __break(1u);
}

unint64_t sub_27419EED4()
{
  result = qword_28093B1E8;
  if (!qword_28093B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28093B1E8);
  }

  return result;
}

uint64_t sub_27419EF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v23 = a4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280938370, &qword_2741CE9B0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v7);
  v9 = &v19 - v8;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30[0] = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F0, &qword_2741D7700);
  sub_2741C7B1C();
  v11 = v26;
  v12 = *&v27[0];
  swift_getKeyPath();
  v27[2] = v11;
  v28 = v12;
  sub_2741C7B0C();

  v29 = v26;
  v30[0] = v27[0];
  *(v30 + 10) = *(v27 + 10);

  swift_getKeyPath();
  v24 = v29;
  v25[0] = v30[0];
  *(v25 + 10) = *(v30 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F8, qword_2741D7758);
  sub_2741C7B0C();

  sub_27419F4CC(&v29);
  sub_2741C7ACC();
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v13 = v20;
  *&v27[0] = v20;
  MEMORY[0x2743E5B70](&v24, v10);
  v14 = v24;
  swift_getKeyPath();
  *&v26 = v14;
  sub_2740E2AE4();
  sub_2741C6A0C();

  swift_beginAccess();
  v15 = *(v14 + 80);

  LOBYTE(v24) = v15 != 2;
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v13;
  sub_27419F588();

  v17 = v21;
  sub_2741C78CC();

  return (*(v22 + 8))(v9, v17);
}

uint64_t sub_27419F2C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_280937728 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  result = sub_2741C76AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27419F368(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F0, &qword_2741D7700);
  MEMORY[0x2743E5B70](&v9, v6);
  v7 = v9;
  swift_getKeyPath();
  v10 = v7;
  sub_2740E2AE4();
  sub_2741C6A0C();

  v10 = v7;
  swift_getKeyPath();
  sub_2741C6A2C();

  swift_beginAccess();
  *(v7 + 80) = (v5 & 1) == 0;
  v9 = v7;
  swift_getKeyPath();
  sub_2741C6A1C();
}

uint64_t sub_27419F4CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B1F8, qword_2741D7758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27419F534()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_27419F588()
{
  result = qword_2809383A8;
  if (!qword_2809383A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938370, &qword_2741CE9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809383A8);
  }

  return result;
}

uint64_t sub_27419F5EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280938370, &qword_2741CE9B0);
  sub_27419F588();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27419F664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_27409D648;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_27419F794(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2740A7434;

  return v15(a1, a2, a3 & 0x101, a4, a5, a6);
}

uint64_t sub_27419F8E0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2740A7434;

  return v17(a1, a2, a3, a4 & 0x101, a5, a6, a7);
}

uint64_t sub_27419FA78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_27419ECCC;

  return v15(a1, a2, a3, a4 & 1, a5, a6);
}

uint64_t sub_27419FBD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27419FCA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for IdentitySelectionView(uint64_t a1)
{
  result = qword_28093B208;
  if (!qword_28093B208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27419FDA0(uint64_t a1)
{
  sub_27419FE24(319);
  if (v1 <= 0x3F)
  {
    sub_27419FE7C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27419FE24(uint64_t a1)
{
  if (!qword_28093B218)
  {
    type metadata accessor for EnterpriseIdentity(255);
    v1 = sub_2741C803C();
    if (!v2)
    {
      atomic_store(v1, &qword_28093B218);
    }
  }
}

void sub_27419FE7C(uint64_t a1)
{
  if (!qword_28093B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280937DA0, &qword_2741CB190);
    v1 = sub_2741C7B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_28093B220);
    }
  }
}

uint64_t sub_27419FEFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B238, &qword_2741D7848);
  sub_2741A173C();
  return sub_2741C762C();
}

uint64_t sub_27419FF6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = type metadata accessor for IdentitySelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v14[5] = *a1;
  swift_getKeyPath();
  sub_2741A1B00(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IdentitySelectionView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2741A1DF8(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for IdentitySelectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B258, &qword_2741D7878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B260, &qword_2741D7880);
  sub_2740A6D24(&qword_28093B268, &qword_28093B258, &qword_2741D7878, MEMORY[0x277D83980]);
  sub_2741A1AB8(&qword_28093B270, type metadata accessor for EnterpriseIdentity, &protocol conformance descriptor for EnterpriseIdentity);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28093B248, &unk_2741D7850);
  v10 = sub_2741C6EDC();
  v11 = sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850, MEMORY[0x277CDF028]);
  v12 = sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_2741C7B5C();
}

uint64_t sub_2741A0230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v36 = a3;
  v5 = sub_2741C6EDC();
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnterpriseIdentity(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = type metadata accessor for IdentitySelectionView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8, v15);
  v16 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B248, &unk_2741D7850);
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - v20;
  sub_2741A1B00(a2, v16, type metadata accessor for IdentitySelectionView);
  sub_2741A1B00(a1, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EnterpriseIdentity);
  v22 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v23 = (v14 + *(v30 + 80) + v22) & ~*(v30 + 80);
  v24 = swift_allocObject();
  sub_2741A1DF8(v16, v24 + v22, type metadata accessor for IdentitySelectionView);
  sub_2741A1DF8(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for EnterpriseIdentity);
  v37 = a1;
  v38 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B278, &qword_2741D7888);
  sub_2740A6D24(&qword_28093B280, &qword_28093B278, &qword_2741D7888, MEMORY[0x277CE1138]);
  sub_2741C7A7C();
  v25 = v33;
  sub_2741C6ECC();
  sub_2740A6D24(&qword_28093B250, &qword_28093B248, &unk_2741D7850, MEMORY[0x277CDF028]);
  sub_2741A1AB8(&qword_280938890, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v26 = v31;
  v27 = v34;
  sub_2741C76FC();
  (*(v35 + 8))(v25, v27);
  return (*(v32 + 8))(v21, v26);
}

uint64_t sub_2741A0660(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  sub_2741A1B00(a2, &v13 - v9, type metadata accessor for EnterpriseIdentity);
  v11 = type metadata accessor for EnterpriseIdentity(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for IdentitySelectionView(0);
  sub_2740A6D94(v10, v7, &qword_280937DA0, &qword_2741CB190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
  sub_2741C7AFC();
  return sub_27409D420(v10, &qword_280937DA0, &qword_2741CB190);
}

void *sub_2741A07C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2741C70EC();
  v12 = 1;
  sub_2741A08A8(a1, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_2740A6D94(__dst, v9, &qword_28093B288, &unk_2741D7890);
  sub_27409D420(v14, &qword_28093B288, &unk_2741D7890);
  memcpy(&v11[7], __dst, 0x178uLL);
  v7 = v12;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  return memcpy((a3 + 17), v11, 0x17FuLL);
}

uint64_t sub_2741A08A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38[1] = a2;
  v43 = a3;
  v4 = type metadata accessor for EnterpriseIdentity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v38[0] = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280939B58, &unk_2741D15B0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280937DA0, &qword_2741CB190);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v39 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v38 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v38 - v22;
  v42 = sub_2741C71BC();
  LOBYTE(v45[0]) = 1;
  sub_2741A0E50(a1, v47);
  memcpy(v50, v47, 0x13CuLL);
  memcpy(v51, v47, 0x13CuLL);
  sub_2740A6D94(v50, v46, &qword_28093B290, &qword_2741D78A0);
  sub_27409D420(v51, &qword_28093B290, &qword_2741D78A0);
  memcpy(&v49[7], v50, 0x13CuLL);
  v40 = LOBYTE(v45[0]);
  v41 = sub_2741C736C();
  type metadata accessor for IdentitySelectionView(0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28093B200, qword_2741D77B0);
  MEMORY[0x2743E5B70](v24);
  sub_2741A1B00(a1, v20, type metadata accessor for EnterpriseIdentity);
  (*(v5 + 56))(v20, 0, 1, v4);
  v25 = *(v9 + 56);
  sub_2740A6D94(v23, v12, &qword_280937DA0, &qword_2741CB190);
  sub_2740A6D94(v20, &v12[v25], &qword_280937DA0, &qword_2741CB190);
  v26 = *(v5 + 48);
  if (v26(v12, 1, v4) == 1)
  {
    sub_27409D420(v20, &qword_280937DA0, &qword_2741CB190);
    sub_27409D420(v23, &qword_280937DA0, &qword_2741CB190);
    if (v26(&v12[v25], 1, v4) == 1)
    {
      sub_27409D420(v12, &qword_280937DA0, &qword_2741CB190);
LABEL_9:
      v27 = sub_2741C79CC();
      v28 = sub_2741C797C();

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2740A6D94(v12, v39, &qword_280937DA0, &qword_2741CB190);
  if (v26(&v12[v25], 1, v4) == 1)
  {
    sub_27409D420(v20, &qword_280937DA0, &qword_2741CB190);
    sub_27409D420(v23, &qword_280937DA0, &qword_2741CB190);
    sub_2740FBC6C(v39);
LABEL_6:
    sub_27409D420(v12, &qword_280939B58, &unk_2741D15B0);
    goto LABEL_7;
  }

  v29 = v38[0];
  sub_2741A1DF8(&v12[v25], v38[0], type metadata accessor for EnterpriseIdentity);
  v30 = v39;
  v31 = _s15WiFiSettingsKit18EnterpriseIdentityV2eeoiySbAC_ACtFZ_0(v39, v29);
  sub_2740FBC6C(v29);
  sub_27409D420(v20, &qword_280937DA0, &qword_2741CB190);
  sub_27409D420(v23, &qword_280937DA0, &qword_2741CB190);
  sub_2740FBC6C(v30);
  sub_27409D420(v12, &qword_280937DA0, &qword_2741CB190);
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_7:
  v27 = 0;
  v28 = 0;
LABEL_10:
  v32 = v42;
  v45[0] = v42;
  v45[1] = 0;
  v33 = v40;
  LOBYTE(v45[2]) = v40;
  memcpy(&v45[2] + 1, v49, 0x143uLL);
  v34 = v41;
  HIDWORD(v45[42]) = v41;
  memcpy(v46, v45, sizeof(v46));
  v44 = 1;
  sub_2740A6D94(v45, v47, &qword_28093B298, &qword_2741D78A8);
  sub_274104BD8(v27, v28);
  sub_274104C18(v27, v28);
  v35 = v44;
  v36 = v43;
  memcpy(v43, v46, 0x158uLL);
  v36[43] = 0;
  *(v36 + 352) = v35;
  v36[45] = v27;
  v36[46] = v28;
  sub_274104C18(v27, v28);
  *v47 = v32;
  *&v47[8] = 0;
  v47[16] = v33;
  memcpy(&v47[17], v49, 0x143uLL);
  v48 = v34;
  return sub_27409D420(v47, &qword_28093B298, &qword_2741D78A8);
}

uint64_t sub_2741A0E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  *&v59 = *a1;
  *(&v59 + 1) = v4;
  sub_2740A6A74();

  v5 = sub_2741C76AC();
  v23 = v6;
  v24 = v5;
  v22 = v7;
  v25 = v8;
  if (a1[4])
  {
    v9 = sub_2741C70EC();
    sub_2741A145C(&qword_280937490, &v59);
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v55 = v59;
    *v56 = v60;
    *&v56[16] = v61;
    *&v56[32] = v62;
    *&v56[48] = v63;
    *&v56[64] = v64;
    *&v56[80] = v65;
    sub_2740A6D94(&v47, &v57, &qword_28093B2A8, &qword_2741D78B8);
    sub_27409D420(&v55, &qword_28093B2A8, &qword_2741D78B8);
    *&v26[55] = v50;
    *&v26[71] = v51;
    *&v26[87] = v52;
    *&v26[103] = v53;
    *&v26[7] = v47;
    *&v26[23] = v48;
    *&v26[39] = v49;
    v10 = sub_2741C737C();
    *&v58[65] = *&v26[64];
    *&v58[81] = *&v26[80];
    *&v58[97] = *&v26[96];
    *&v58[1] = *v26;
    *&v58[17] = *&v26[16];
    *&v58[33] = *&v26[32];
    v57 = v9;
    v58[0] = 1;
    *&v58[112] = *&v26[111];
    *&v58[49] = *&v26[48];
    *&v58[120] = v10;
    nullsub_1();
    v64 = *&v58[64];
    v65 = *&v58[80];
    v66[0] = *&v58[96];
    *(v66 + 12) = *&v58[108];
    v61 = *&v58[16];
    v62 = *&v58[32];
    v63 = *&v58[48];
    v59 = v57;
    v60 = *v58;
  }

  else
  {
    sub_2741A1F34(&v59);
  }

  EnterpriseIdentity.expirationFormatted.getter();
  if (v11)
  {
    v12 = sub_2741C70EC();
    sub_2741A145C(&qword_280937498, &v57);
    v43 = *&v58[48];
    v44 = *&v58[64];
    v45 = *&v58[80];
    v39 = v57;
    v40 = *v58;
    v41 = *&v58[16];
    v42 = *&v58[32];
    v47 = v57;
    v48 = *v58;
    v49 = *&v58[16];
    v50 = *&v58[32];
    v51 = *&v58[48];
    v52 = *&v58[64];
    v53 = *&v58[80];
    sub_2740A6D94(&v39, &v55, &qword_28093B2A8, &qword_2741D78B8);
    sub_27409D420(&v47, &qword_28093B2A8, &qword_2741D78B8);

    *&v27[55] = v42;
    *&v27[71] = v43;
    *&v27[87] = v44;
    *&v27[103] = v45;
    *&v27[7] = v39;
    *&v27[23] = v40;
    *&v27[39] = v41;
    v13 = sub_2741C737C();
    *&v56[65] = *&v27[64];
    *&v56[81] = *&v27[80];
    *&v56[97] = *&v27[96];
    *&v56[1] = *v27;
    *&v56[17] = *&v27[16];
    *&v56[33] = *&v27[32];
    v55 = v12;
    v56[0] = 1;
    *&v56[112] = *&v27[111];
    *&v56[49] = *&v27[48];
    *&v56[120] = v13;
    nullsub_1();
    *&v58[80] = *&v56[80];
    *&v58[96] = *&v56[96];
    *&v58[108] = *&v56[108];
    *&v58[16] = *&v56[16];
    *&v58[32] = *&v56[32];
    *&v58[48] = *&v56[48];
    *&v58[64] = *&v56[64];
    v57 = v55;
    *v58 = *v56;
  }

  else
  {
    sub_2741A1F34(&v57);
  }

  v14 = v64;
  v15 = v63;
  v34 = v64;
  v35 = v65;
  *v36 = v66[0];
  *&v36[12] = *(v66 + 12);
  v16 = v60;
  v31 = v61;
  v17 = v61;
  v32 = v62;
  v18 = v62;
  v33 = v63;
  v29 = v59;
  v19 = v59;
  v30 = v60;
  v52 = *&v58[64];
  v53 = *&v58[80];
  v54[0] = *&v58[96];
  *(v54 + 12) = *&v58[108];
  v49 = *&v58[16];
  v50 = *&v58[32];
  v51 = *&v58[48];
  v47 = v57;
  v48 = *v58;
  v37[5] = v64;
  v37[6] = v65;
  v38[0] = v66[0];
  *(v38 + 12) = *(v66 + 12);
  v37[2] = v61;
  v37[3] = v62;
  v37[4] = v63;
  v37[0] = v59;
  v37[1] = v60;
  v44 = *&v58[64];
  v45 = *&v58[80];
  v46[0] = *&v58[96];
  *(v46 + 12) = *&v58[108];
  v41 = *&v58[16];
  v42 = *&v58[32];
  v43 = *&v58[48];
  v39 = v57;
  v40 = *v58;
  *&v28[84] = *&v58[64];
  *&v28[100] = *&v58[80];
  *&v28[116] = *&v58[96];
  *&v28[128] = *&v58[108];
  *&v28[20] = *v58;
  *&v28[36] = *&v58[16];
  *&v28[52] = *&v58[32];
  *&v28[68] = *&v58[48];
  *&v28[4] = v57;
  v20 = v66[0];
  *(a2 + 128) = v65;
  *(a2 + 144) = v20;
  *(a2 + 156) = *(v66 + 12);
  *(a2 + 64) = v17;
  *(a2 + 80) = v18;
  *(a2 + 96) = v15;
  *(a2 + 112) = v14;
  *(a2 + 32) = v19;
  *(a2 + 48) = v16;
  *(a2 + 252) = *&v28[80];
  *(a2 + 268) = *&v28[96];
  *(a2 + 284) = *&v28[112];
  *(a2 + 300) = *&v28[128];
  *(a2 + 188) = *&v28[16];
  *(a2 + 204) = *&v28[32];
  *(a2 + 220) = *&v28[48];
  *(a2 + 236) = *&v28[64];
  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v25;
  *(a2 + 172) = *v28;
  sub_27409861C(v24, v23, v22 & 1);

  sub_2740A6D94(v37, &v55, &qword_28093B2A0, &qword_2741D78B0);
  sub_2740A6D94(&v39, &v55, &qword_28093B2A0, &qword_2741D78B0);
  sub_27409D420(&v47, &qword_28093B2A0, &qword_2741D78B0);
  *&v56[80] = v35;
  *&v56[96] = *v36;
  *&v56[108] = *&v36[12];
  *&v56[16] = v31;
  *&v56[32] = v32;
  *&v56[48] = v33;
  *&v56[64] = v34;
  v55 = v29;
  *v56 = v30;
  sub_27409D420(&v55, &qword_28093B2A0, &qword_2741D78B0);
  sub_2740A6AC8(v24, v23, v22 & 1);
}

uint64_t sub_2741A145C@<X0>(void *a3@<X2>, uint64_t a7@<X8>)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_2740A6A74();

  v8 = sub_2741C76AC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_2741C756C();
  sub_2741C6C6C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v12 &= 1u;
  LOBYTE(v45[0]) = 0;

  v24 = sub_2741C76AC();
  v26 = v25;
  *&v37 = v8;
  *(&v37 + 1) = v10;
  LOBYTE(v38) = v12;
  *(&v38 + 1) = v14;
  LOBYTE(v39) = v15;
  *(&v39 + 1) = v17;
  *v40 = v19;
  *&v40[8] = v21;
  *&v40[16] = v23;
  v40[24] = 0;
  v27 = v37;
  v28 = v38;
  *&v44[9] = *&v40[9];
  v43 = v39;
  *v44 = *v40;
  v41 = v37;
  v42 = v38;
  v30 = v29 & 1;
  v31 = *&v44[16];
  *(a7 + 48) = *v40;
  *(a7 + 64) = v31;
  v32 = v43;
  *(a7 + 16) = v28;
  *(a7 + 32) = v32;
  *a7 = v27;
  *(a7 + 80) = v24;
  *(a7 + 88) = v25;
  *(a7 + 96) = v29 & 1;
  *(a7 + 104) = v33;
  sub_2740A6D94(&v37, v45, &qword_28093B2B0, &qword_2741D78C0);
  sub_27409861C(v24, v26, v30);

  sub_2740A6AC8(v24, v26, v30);

  v45[0] = v8;
  v45[1] = v10;
  v46 = v12;
  *v47 = *v36;
  *&v47[3] = *&v36[3];
  v48 = v14;
  v49 = v15;
  *v50 = *v35;
  *&v50[3] = *&v35[3];
  v51 = v17;
  v52 = v19;
  v53 = v21;
  v54 = v23;
  v55 = 0;
  return sub_27409D420(v45, &qword_28093B2B0, &qword_2741D78C0);
}