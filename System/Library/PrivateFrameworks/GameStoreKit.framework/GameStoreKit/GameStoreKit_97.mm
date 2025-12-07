double sub_24EFE3E84(int a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    state64 = 0;
    if (notify_get_state(a1, &state64))
    {
LABEL_3:

      return result;
    }

    if (state64 == 1)
    {
      if (*(v5 + 17))
      {
        *(v5 + 17) = 1;
        goto LABEL_3;
      }
    }

    else if ((*(v5 + 17) & 1) == 0)
    {
      *(v5 + 17) = 0;
      goto LABEL_3;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE48FC();
    sub_24F91FD78();
  }

  return result;
}

void sub_24EFE4068()
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  swift_getKeyPath();
  v10 = v0;
  sub_24EFE48FC();
  sub_24F91FD88();

  swift_beginAccess();
  if (!notify_get_state(*(v0 + 40), &state64))
  {
    if (state64 == 1)
    {
      if (*(v0 + 16))
      {
        *(v0 + 16) = 1;
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    if (*(v0 + 16))
    {
LABEL_6:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v9 = v0;
      sub_24F91FD78();

      goto LABEL_8;
    }

    *(v0 + 16) = 0;
  }

LABEL_8:
  v6 = 0;
  swift_getKeyPath();
  v9 = v0;
  sub_24F91FD88();

  swift_beginAccess();
  if (notify_get_state(*(v0 + 64), &v6))
  {
    goto LABEL_17;
  }

  v2 = *(v0 + 18);
  if (v6 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_17;
    }
  }

  else if (v6 == 1)
  {
    if (v2 == 1)
    {
      goto LABEL_17;
    }
  }

  else if (!*(v0 + 18))
  {
    goto LABEL_17;
  }

  v3 = swift_getKeyPath();
  MEMORY[0x28223BE20](v3);
  v8 = v0;
  sub_24F91FD78();

LABEL_17:
  v5 = 0;
  swift_getKeyPath();
  v8 = v0;
  sub_24F91FD88();

  swift_beginAccess();
  if (notify_get_state(*(v0 + 88), &v5))
  {
    return;
  }

  if (v5 == 1)
  {
    if (*(v0 + 17))
    {
      *(v0 + 17) = 1;
      return;
    }

    goto LABEL_22;
  }

  if (*(v0 + 17))
  {
LABEL_22:
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_24F91FD78();

    return;
  }

  *(v0 + 17) = 0;
}

uint64_t sub_24EFE4574()
{
  v1 = sub_24F92B138();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  v9[0] = *(v0 + 96);
  v9[1] = v5;

  sub_24F92B128();
  sub_24E600AEC();
  v6 = sub_24F92C5D8();
  (*(v2 + 8))(v4, v1);

  if (v6)
  {
    v7 = (v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  notify_post(v7);
}

uint64_t sub_24EFE4690()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32OverlayControlsGameModeViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayControlsGameModeViewModel(uint64_t a1)
{
  result = qword_27F236758;
  if (!qword_27F236758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFE47A0(uint64_t a1)
{
  result = sub_24F91FDC8();
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

unint64_t sub_24EFE487C()
{
  result = qword_27F236768;
  if (!qword_27F236768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236768);
  }

  return result;
}

unint64_t sub_24EFE48FC()
{
  result = qword_27F2365E8;
  if (!qword_27F2365E8)
  {
    type metadata accessor for OverlayControlsGameModeViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2365E8);
  }

  return result;
}

void sub_24EFE4A30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 88) = v2;
}

void sub_24EFE4A84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 64) = v2;
}

void sub_24EFE4AD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 40) = v2;
}

uint64_t sub_24EFE4B2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24EFE4BA4()
{
  type metadata accessor for OverlayControlsBrightnessViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0x3FF0000000000000;
  *(v0 + 32) = 1;
  sub_24F91FDB8();
  result = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  *(v0 + 16) = result;
  qword_27F39D338 = v0;
  return result;
}

id sub_24EFE4C1C()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v1 = *(v0 + 16);

  return v1;
}

id sub_24EFE4CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_24EFE4D84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_24E69A5C4(0, &qword_27F2367A0, 0x277CFD390);
  v5 = v4;
  v6 = sub_24F92C408();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
    sub_24F91FD78();
  }
}

double sub_24EFE4EF0()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  return *(v0 + 24);
}

double sub_24EFE4F90@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_24EFE5060(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
    sub_24F91FD78();
  }
}

uint64_t sub_24EFE5180()
{
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  return *(v0 + 32);
}

void sub_24EFE5220(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
}

void sub_24EFE52F0(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
    sub_24F91FD78();
  }
}

void sub_24EFE5400()
{
  v1 = v0;
  swift_getKeyPath();
  *&v14 = v0;
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v2 = *(v0 + 16);
  v3 = sub_24F92B098();
  v4 = [v2 copyPropertyForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v16 = 0u;
  }

  v17 = v14;
  v18 = v16;
  if (*(&v16 + 1))
  {
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    if (swift_dynamicCast())
    {
LABEL_6:
      v5 = v13;
      sub_24F91FE38();
      v7 = v6;

      if (*(v1 + 24) == v7)
      {

        *(v1 + 24) = v7;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *&v17 = v1;
        sub_24F91FD78();
      }

      return;
    }
  }

  else
  {
    sub_24E857CC8(&v17);
  }

  swift_getKeyPath();
  *&v14 = v1;
  sub_24F91FD88();

  v8 = *(v1 + 16);
  v9 = sub_24F92B098();
  v10 = [v8 copyPropertyForKey_];

  if (v10)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v16 = 0u;
  }

  v17 = v14;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_21;
  }

  sub_24E69A5C4(0, &qword_27F236798, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  *&v15 = 0x656E746867697242;
  *(&v15 + 1) = 0xEA00000000007373;
  v11 = [v13 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_24F92C648();

    swift_unknownObjectRelease();
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
LABEL_21:
    sub_24E857CC8(&v17);
    return;
  }

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    goto LABEL_6;
  }
}

void sub_24EFE57EC(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v4 = *(v1 + 24);
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E7D8);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v4;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Sync Brightness to %f, commit=%{BOOL}d", v8, 0x12u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236788, &qword_24F9BB1C8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E746867697242;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 56) = 0x74696D6D6F43;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_24E60F6C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236790, &qword_24F9BB1D0);
  swift_arrayDestroy();
  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v10 = sub_24F92AE28();

  swift_getKeyPath();
  sub_24F91FD88();

  v11 = *(v2 + 16);
  v12 = v10;
  v13 = sub_24F92B098();
  [v11 setProperty:v12 forKey:v13];
}

void sub_24EFE5B20()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Start tracking brightness.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_getKeyPath();
  v12[0] = v1;
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_24EFE6590;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24EFE60C4;
  v12[3] = &block_descriptor_102;
  v8 = _Block_copy(v12);
  v9 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F93DE60;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = 0xD000000000000011;
  *(v10 + 40) = 0x800000024FA679C0;
  v11 = sub_24F92B588();

  [v9 registerNotificationBlock:v8 forProperties:v11];

  _Block_release(v8);
  sub_24EFE5400();
}

uint64_t sub_24EFE5DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v13 = sub_24F92BEF8();
  aBlock[4] = sub_24EFE65B0;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_25_3;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24EFE65B8(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v12, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

double sub_24EFE606C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24EFE5400();
  }

  return result;
}

uint64_t sub_24EFE60C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  *&v9 = a3;
  sub_24E612B0C(&v9, v11);
LABEL_6:

  swift_unknownObjectRetain();
  v4(v5, v7, v11);

  return sub_24E857CC8(v11);
}

void sub_24EFE6188()
{
  v1 = v0;
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E7D8);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Stop tracking brightness.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  swift_getKeyPath();
  sub_24EFE65B8(&qword_27F236130, type metadata accessor for OverlayControlsBrightnessViewModel, &unk_24F9BB140);
  sub_24F91FD88();

  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x800000024FA679C0;
  v8 = v6;
  v9 = sub_24F92B588();

  [v8 unregisterNotificationForKeys_];
}

uint64_t sub_24EFE6378()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit34OverlayControlsBrightnessViewModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverlayControlsBrightnessViewModel(uint64_t a1)
{
  result = qword_27F236778;
  if (!qword_27F236778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFE6470(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24EFE6558()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EFE65B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EFE662C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

void sub_24EFE6678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_24EFE66E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EFE6770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for OverlayControlsView(uint64_t a1)
{
  result = qword_27F2367A8;
  if (!qword_27F2367A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EFE6838(uint64_t a1)
{
  sub_24E684120(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24EFE68C0@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236880, &qword_24F9BB4A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - v2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236888, &qword_24F9BB4A8);
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236890, &qword_24F9BB4B0);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v46 = v41;
  v45 = v43;
  *&v36 = sub_24EFE6DCC;
  *(&v36 + 1) = 0;
  *&v37 = v40;
  BYTE8(v37) = v41;
  *&v38 = v42;
  BYTE8(v38) = v43;
  v39 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236898, &qword_24F9BB4B8);
  sub_24EFEAE8C();
  sub_24F926398();
  sub_24F9257D8();
  v29 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368B8, &qword_24F9BB4C8);
  sub_24E602068(&qword_27F2368C0, &qword_27F2368B8, &qword_24F9BB4C8, MEMORY[0x277CE1198]);
  sub_24F923438();
  sub_24F927618();
  sub_24F9238C8();
  v13 = &v3[*(v1 + 36)];
  v14 = v37;
  *v13 = v36;
  *(v13 + 1) = v14;
  *(v13 + 2) = v38;
  sub_24EFEAF44();
  v15 = v35;
  sub_24F9265A8();
  sub_24E601704(v3, &qword_27F236880, &qword_24F9BB4A0);
  v16 = v31;
  v28 = *(v31 + 16);
  v17 = v32;
  v28(v32, v12, v8);
  v18 = v33;
  v27 = *(v33 + 16);
  v19 = v30;
  v27(v5, v15, v30);
  v20 = v16;
  v21 = v34;
  *v34 = 0;
  *(v21 + 8) = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368E0, &qword_24F9BB4D8);
  v28(v21 + v22[12], v17, v8);
  v27(v21 + v22[16], v5, v19);
  v23 = v21 + v22[20];
  *v23 = 0;
  v23[8] = 0;
  v24 = *(v18 + 8);
  v24(v35, v19);
  v25 = *(v20 + 8);
  v25(v29, v8);
  v24(v5, v19);
  return (v25)(v17, v8);
}

uint64_t sub_24EFE6DCC(uint64_t a1)
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236910, &qword_24F9BB508);
  sub_24EFEB004();
  return sub_24F923438();
}

__n128 sub_24EFE6E54@<Q0>(uint64_t a2@<X8>)
{
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v15 = qword_27F39D300;
  v14 = sub_24F924C88();
  v3 = sub_24F923398();
  v5 = v4;
  v7 = v6;
  v8 = sub_24F923398();
  v10 = v9;
  v12 = v11;
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  *&v23[7] = v24;
  *&v23[23] = v25;
  *&v23[39] = v26;
  sub_24F923998();
  sub_24F927618();
  sub_24F9242E8();
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3 & 1;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7 & 1;
  *(a2 + 56) = v8 & 1;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12 & 1;
  *(a2 + 73) = *v23;
  *(a2 + 89) = *&v23[16];
  *(a2 + 105) = *&v23[32];
  *(a2 + 120) = *(&v26 + 1);
  *(a2 + 192) = v20;
  *(a2 + 208) = v21;
  *(a2 + 224) = v22;
  *(a2 + 128) = v16;
  *(a2 + 144) = v17;
  result = v19;
  *(a2 + 160) = v18;
  *(a2 + 176) = v19;
  return result;
}

uint64_t sub_24EFE70B4@<X0>(uint64_t a2@<X8>)
{
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v3 = qword_27F39D300;
  *a2 = sub_24F924C88();
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368E8, &qword_24F9BB4E0);
  return sub_24EFE7138(a2 + *(v4 + 44));
}

uint64_t sub_24EFE7138@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0, &unk_24F9A6E10);
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x28223BE20](v1);
  v78 = &v70 - v2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368F0, &qword_24F9BB4E8);
  MEMORY[0x28223BE20](v79);
  v84 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00, &unk_24F9A6E20);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v70 - v7;
  v72 = type metadata accessor for OverlayGameControllerControls(0);
  MEMORY[0x28223BE20](v72);
  v9 = (&v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2368F8, &qword_24F9BB4F0);
  MEMORY[0x28223BE20](v73);
  v82 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40, &qword_24F9A6E40);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236900, &qword_24F9BB4F8);
  MEMORY[0x28223BE20](v71);
  v77 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v70 - v18;
  if (qword_27F210FB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NowPlayingController(0);
  sub_24EFEAD94(&qword_27F236840, type metadata accessor for NowPlayingController, &protocol conformance descriptor for NowPlayingController);

  *&v94 = sub_24F923C28();
  *(&v94 + 1) = v19;
  v20 = sub_24EE52298();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236848, &qword_24F9BB3C0);
  *&v104 = &type metadata for NowPlayingControls;
  *(&v104 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_24E8F20E4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48, &unk_24F9A6E48);
  v24 = sub_24EE522EC();
  *&v104 = v13;
  *(&v104 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v105 = v23;
  *(&v105 + 1) = OpaqueTypeConformance2;
  *&v106 = v22;
  *(&v106 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v86;
  v26 = v22;
  sub_24F926B08();

  (*(v70 + 8))(v15, v13);
  if (qword_27F210D80 != -1)
  {
    swift_once();
  }

  sub_24F927618();
  sub_24F9238C8();
  v27 = (v25 + *(v71 + 36));
  v28 = v99;
  *v27 = v98;
  v27[1] = v28;
  v27[2] = v100;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  swift_storeEnumTagMultiPayload();
  v29 = v72;
  v30 = v9 + *(v72 + 20);
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v9 + v29[6];
  *v31 = swift_getKeyPath();
  *(v31 + 1) = 0;
  v31[16] = 0;
  v32 = v9 + v29[7];
  *v32 = sub_24EFC6098;
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = v29[8];
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v34 = (v9 + v33);
  v35 = qword_27F24E488;
  *&v94 = qword_27F24E488;
  type metadata accessor for GameControllerObserver(0);
  v36 = v35;
  sub_24F926F28();
  v37 = *(&v104 + 1);
  *v34 = v104;
  v34[1] = v37;
  v38 = v9 + v29[9];
  sub_24F9233A8();
  v39 = v106;
  v40 = v105;
  *v38 = v104;
  *(v38 + 1) = v40;
  *(v38 + 4) = v39;
  v41 = v9 + v29[10];
  *v41 = sub_24F923398() & 1;
  *(v41 + 1) = v42;
  v41[16] = v43 & 1;
  v44 = sub_24EFEAD94(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls, &unk_24F9B9778);
  v45 = v74;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236858, &qword_24F9BB468);
  *&v104 = v29;
  *(&v104 + 1) = v44;
  v72 = MEMORY[0x277CDE7A8];
  v46 = swift_getOpaqueTypeConformance2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08, &qword_24F9BB470);
  v48 = sub_24EE52000();
  v49 = v76;
  *&v104 = v76;
  *(&v104 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v105 = v47;
  *(&v105 + 1) = v46;
  *&v106 = v26;
  *(&v106 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v50 = v87;
  sub_24F926B08();
  (*(v75 + 8))(v45, v49);
  sub_24EFEADDC(v9);
  sub_24F927618();
  sub_24F9238C8();
  v51 = (v50 + *(v73 + 36));
  v52 = v102;
  *v51 = v101;
  v51[1] = v52;
  v51[2] = v103;
  sub_24EFE1738(&v104);
  v94 = v104;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v53 = sub_24EE51EA4();
  v54 = v78;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236860, &qword_24F9BB478);
  v88 = &type metadata for OverlayGameModeControls;
  v89 = v53;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8, &qword_24F9BB480);
  v57 = sub_24EE51EF8();
  v58 = v81;
  v88 = v81;
  v89 = &type metadata for IsDebugFocusOverlayEnabled;
  v90 = v56;
  v91 = v55;
  v92 = v26;
  v93 = v57;
  swift_getOpaqueTypeConformance2();
  v59 = v83;
  sub_24F926B08();
  sub_24EFEAE38(&v104);
  (*(v80 + 8))(v54, v58);
  sub_24F927618();
  sub_24F9238C8();
  v60 = (v59 + *(v79 + 36));
  v61 = v95;
  *v60 = v94;
  v60[1] = v61;
  v60[2] = v96;
  v62 = v86;
  v63 = v77;
  sub_24E60169C(v86, v77, &qword_27F236900, &qword_24F9BB4F8);
  v64 = v82;
  sub_24E60169C(v50, v82, &qword_27F2368F8, &qword_24F9BB4F0);
  v65 = v84;
  sub_24E60169C(v59, v84, &qword_27F2368F0, &qword_24F9BB4E8);
  v66 = v85;
  sub_24E60169C(v63, v85, &qword_27F236900, &qword_24F9BB4F8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236908, &qword_24F9BB500);
  sub_24E60169C(v64, v66 + v67[12], &qword_27F2368F8, &qword_24F9BB4F0);
  sub_24E60169C(v65, v66 + v67[16], &qword_27F2368F0, &qword_24F9BB4E8);
  v68 = v66 + v67[20];
  *v68 = 0;
  *(v68 + 8) = 1;
  sub_24E601704(v59, &qword_27F2368F0, &qword_24F9BB4E8);
  sub_24E601704(v87, &qword_27F2368F8, &qword_24F9BB4F0);
  sub_24E601704(v62, &qword_27F236900, &qword_24F9BB4F8);
  sub_24E601704(v65, &qword_27F2368F0, &qword_24F9BB4E8);
  sub_24E601704(v64, &qword_27F2368F8, &qword_24F9BB4F0);
  return sub_24E601704(v63, &qword_27F236900, &qword_24F9BB4F8);
}

uint64_t sub_24EFE7CD4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_24F927618();
  a2[1] = v3;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236870, &qword_24F9BB490) + 44);
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v5 = a2 + v4;
  v6 = qword_27F39D300;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = v6;
  v5[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236878, &qword_24F9BB498);
  return sub_24EFE68C0(&v5[*(v7 + 44)]);
}

uint64_t sub_24EFE7D7C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236810, &qword_24F9BB378);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-v3 - 8];
  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v5 = qword_27F39D300;
  *v4 = sub_24F924C88();
  *(v4 + 1) = v5;
  v4[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236818, &qword_24F9BB380);
  sub_24EFE7F70(&v4[*(v6 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v8 = sub_24F925838();
  *(inited + 32) = v8;
  v9 = sub_24F925858();
  *(inited + 33) = v9;
  v10 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v8)
  {
    v10 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v9)
  {
    v10 = sub_24F925848();
  }

  sub_24EB66094(v22);
  sub_24F923318();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24EFEACBC(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367F8, &qword_24F9BB370);
  v20 = a1 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_24EFE7F70@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2319E0, &unk_24F9A6E10);
  Description = v98[-1].Description;
  MEMORY[0x28223BE20](v98);
  v95 = &v87 - v1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236820, &unk_24F9BB388);
  v99 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v107 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v113 = &v87 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A00, &unk_24F9A6E20);
  v93 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v92 = &v87 - v5;
  v91 = type metadata accessor for OverlayGameControllerControls(0);
  MEMORY[0x28223BE20](v91);
  v88 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236828, &unk_24F9BB398);
  v97 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v87 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A20, &unk_24F9A6E30);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v87 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236830, &unk_24F9BB3A8);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v110 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231A40, &qword_24F9A6E40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v87 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236838, &qword_24F9BB3B8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v109 = &v87 - v20;
  if (qword_27F210FB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NowPlayingController(0);
  sub_24EFEAD94(&qword_27F236840, type metadata accessor for NowPlayingController, &protocol conformance descriptor for NowPlayingController);

  *&v121 = sub_24F923C28();
  *(&v121 + 1) = v21;
  v22 = sub_24EE52298();
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236848, &qword_24F9BB3C0);
  *&v125 = &type metadata for NowPlayingControls;
  *(&v125 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_24E8F20E4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A48, &unk_24F9A6E48);
  v26 = sub_24EE522EC();
  *&v125 = v14;
  *(&v125 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v126 = v25;
  *(&v126 + 1) = OpaqueTypeConformance2;
  *&v127 = v24;
  *(&v127 + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();

  (*(v15 + 8))(v17, v14);
  v27 = sub_24F923398();
  v29 = v28;
  LOBYTE(OpaqueTypeConformance2) = v30;
  v31 = sub_24F923398();
  LOBYTE(v125) = 1;
  BYTE8(v125) = v27 & 1;
  *&v126 = v29;
  BYTE8(v126) = OpaqueTypeConformance2 & 1;
  LOBYTE(v127) = v31 & 1;
  *(&v127 + 1) = v32;
  v128 = v33 & 1;
  v34 = sub_24EE5213C();
  v35 = v87;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236850, &qword_24F9BB3C8);
  *&v121 = &type metadata for OverlayVolumeBrightnessControlsView;
  *(&v121 + 1) = v34;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A28, &qword_24F9BB3D0);
  v38 = sub_24EE52190();
  v39 = v90;
  *&v121 = v90;
  *(&v121 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v122 = v37;
  *(&v122 + 1) = v36;
  *&v123 = v24;
  *(&v123 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();

  (*(v89 + 8))(v35, v39);
  KeyPath = swift_getKeyPath();
  v41 = v88;
  *v88 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  swift_storeEnumTagMultiPayload();
  v42 = v91;
  v43 = v41 + *(v91 + 20);
  *v43 = swift_getKeyPath();
  *(v43 + 8) = 0;
  v44 = v41 + v42[6];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = v41 + v42[7];
  *v45 = sub_24EFC6098;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  v46 = v42[8];
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v47 = (v41 + v46);
  v48 = qword_27F24E488;
  *&v121 = qword_27F24E488;
  type metadata accessor for GameControllerObserver(0);
  v49 = v48;
  sub_24F926F28();
  v50 = *(&v125 + 1);
  *v47 = v125;
  v47[1] = v50;
  v51 = v41 + v42[9];
  sub_24F9233A8();
  v52 = v127;
  v53 = v126;
  *v51 = v125;
  *(v51 + 16) = v53;
  *(v51 + 32) = v52;
  v54 = v41 + v42[10];
  *v54 = sub_24F923398() & 1;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56 & 1;
  v57 = sub_24EFEAD94(&qword_27F231A10, type metadata accessor for OverlayGameControllerControls, &unk_24F9B9778);
  v58 = v92;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236858, &qword_24F9BB468);
  *&v125 = v42;
  *(&v125 + 1) = v57;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231A08, &qword_24F9BB470);
  v61 = sub_24EE52000();
  v62 = v94;
  *&v125 = v94;
  *(&v125 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v126 = v60;
  *(&v126 + 1) = v59;
  *&v127 = v24;
  *(&v127 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v106;
  sub_24F926B08();
  (*(v93 + 8))(v58, v62);
  sub_24EFEADDC(v41);
  sub_24EFE1738(&v125);
  v121 = v125;
  v122 = v126;
  v123 = v127;
  v124 = v128;
  v64 = sub_24EE51EA4();
  v65 = v95;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236860, &qword_24F9BB478);
  v115 = &type metadata for OverlayGameModeControls;
  v116 = v64;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2319E8, &qword_24F9BB480);
  v68 = sub_24EE51EF8();
  v69 = v98;
  v115 = v98;
  v116 = &type metadata for IsDebugFocusOverlayEnabled;
  v117 = v67;
  v118 = v66;
  v119 = v24;
  v120 = v68;
  swift_getOpaqueTypeConformance2();
  sub_24F926B08();
  sub_24EFEAE38(&v125);
  Description[1](v65, v69);
  v94 = *(v102 + 16);
  v70 = v101;
  v71 = v103;
  (v94)(v101, v109, v103);
  v98 = *(v104 + 16);
  (v98)(v110, v108, v105);
  v72 = v97;
  Description = *(v97 + 16);
  (Description)(v111, v63, v112);
  v73 = v99;
  v95 = *(v99 + 16);
  v74 = v107;
  (v95)(v107, v113, v114);
  v75 = v100;
  (v94)(v100, v70, v71);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236868, &qword_24F9BB488);
  v77 = v105;
  (v98)(v75 + v76[12], v110, v105);
  v78 = v112;
  (Description)(v75 + v76[16], v111, v112);
  v79 = v114;
  (v95)(v75 + v76[20], v74, v114);
  v80 = v75 + v76[24];
  *v80 = 0;
  *(v80 + 8) = 0;
  v81 = *(v73 + 8);
  v81(v113, v79);
  v82 = *(v72 + 8);
  v82(v106, v78);
  v83 = *(v104 + 8);
  v83(v108, v77);
  v84 = *(v102 + 8);
  v85 = v103;
  v84(v109, v103);
  v81(v107, v114);
  v82(v111, v112);
  v83(v110, v77);
  return (v84)(v101, v85);
}

uint64_t sub_24EFE8EF4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_24E60169C(v2, &v13 - v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v10, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EFE90C4@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for OverlayControlsView(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EFE929C(uint64_t a1)
{
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367F8, &qword_24F9BB370);
  sub_24EFEAC04();

  return sub_24F923438();
}

uint64_t sub_24EFE9324@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v151 = a2;
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v148 = &v129[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v6);
  v135 = &v129[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v150 = &v129[-v9];
  MEMORY[0x28223BE20](v10);
  v141 = &v129[-v11];
  MEMORY[0x28223BE20](v12);
  v146 = &v129[-v13];
  MEMORY[0x28223BE20](v14);
  v138 = &v129[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v129[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v19 - 8);
  v131 = &v129[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v134 = &v129[-v22];
  MEMORY[0x28223BE20](v23);
  v142 = &v129[-v24];
  MEMORY[0x28223BE20](v25);
  v137 = &v129[-v26];
  MEMORY[0x28223BE20](v27);
  v149 = &v129[-v28];
  MEMORY[0x28223BE20](v29);
  v145 = &v129[-v30];
  MEMORY[0x28223BE20](v31);
  v132 = &v129[-v32];
  MEMORY[0x28223BE20](v33);
  v35 = &v129[-v34];
  MEMORY[0x28223BE20](v36);
  v140 = &v129[-v37];
  MEMORY[0x28223BE20](v38);
  v139 = &v129[-v39];
  MEMORY[0x28223BE20](v40);
  v153 = &v129[-v41];
  MEMORY[0x28223BE20](v42);
  v154 = &v129[-v43];
  MEMORY[0x28223BE20](v44);
  v133 = &v129[-v45];
  MEMORY[0x28223BE20](v46);
  v143 = &v129[-v47];
  MEMORY[0x28223BE20](v48);
  v147 = &v129[-v49];
  MEMORY[0x28223BE20](v50);
  v52 = &v129[-v51];
  MEMORY[0x28223BE20](v53);
  v55 = &v129[-v54];
  MEMORY[0x28223BE20](v56);
  v58 = &v129[-v57];
  v161 = a1;
  sub_24EFE90C4(&v129[-v57]);
  v59 = v4[13];
  v136 = *MEMORY[0x277CE0558];
  v159 = v59;
  v160 = v4 + 13;
  v59(v55);
  v157 = v4[7];
  v158 = v4 + 7;
  v157(v55, 0, 1, v3);
  v155 = v6;
  v60 = *(v6 + 48);
  sub_24E60169C(v58, v18, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v55, &v18[v60], &qword_27F215598, &qword_24F945EF0);
  v156 = v4;
  v61 = v4[6];
  v62 = v61(v18, 1, v3);
  v162 = v61;
  v152 = v4 + 6;
  v144 = v35;
  if (v62 == 1)
  {
    sub_24E601704(v55, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
    if (v61(&v18[v60], 1, v3) != 1)
    {
      v63 = v155;
LABEL_14:
      sub_24E601704(v18, &unk_27F254F20, &qword_24F940790);
      goto LABEL_15;
    }

    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    v63 = v155;
  }

  else
  {
    sub_24E60169C(v18, v52, &qword_27F215598, &qword_24F945EF0);
    if (v61(&v18[v60], 1, v3) == 1)
    {
      v63 = v155;
LABEL_13:
      sub_24E601704(v55, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
      (v156[1])(v52, v3);
      goto LABEL_14;
    }

    v64 = v156;
    v65 = v148;
    (v156[4])(v148, &v18[v60], v3);
    sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v130 = sub_24F92AFF8();
    v66 = v64[1];
    v66(v65, v3);
    sub_24E601704(v55, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v58, &qword_27F215598, &qword_24F945EF0);
    v66(v52, v3);
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    v63 = v155;
    if ((v130 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v67 = v147;
  sub_24EFE8EF4(v147);
  v68 = v143;
  (v159)(v143, *MEMORY[0x277CE0560], v3);
  v157(v68, 0, 1, v3);
  v69 = *(v63 + 48);
  v18 = v138;
  sub_24E60169C(v67, v138, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v68, &v18[v69], &qword_27F215598, &qword_24F945EF0);
  v70 = v162;
  if (v162(v18, 1, v3) != 1)
  {
    v52 = v133;
    sub_24E60169C(v18, v133, &qword_27F215598, &qword_24F945EF0);
    if (v70(&v18[v69], 1, v3) != 1)
    {
      v110 = v18;
      v111 = v156;
      v112 = v148;
      (v156[4])(v148, v110 + v69, v3);
      sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v113 = sub_24F92AFF8();
      v114 = v111[1];
      v114(v112, v3);
      sub_24E601704(v143, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v147, &qword_27F215598, &qword_24F945EF0);
      v114(v52, v3);
      v63 = v155;
      sub_24E601704(v110, &qword_27F215598, &qword_24F945EF0);
      if (v113)
      {
        goto LABEL_41;
      }

LABEL_15:
      v71 = v154;
      sub_24EFE90C4(v154);
      v72 = v63;
      v73 = v153;
      LODWORD(v147) = *MEMORY[0x277CE0560];
      v159(v153);
      v157(v73, 0, 1, v3);
      v74 = v72;
      v75 = *(v72 + 48);
      v76 = v146;
      sub_24E60169C(v71, v146, &qword_27F215598, &qword_24F945EF0);
      sub_24E60169C(v73, &v76[v75], &qword_27F215598, &qword_24F945EF0);
      v77 = v162;
      if (v162(v76, 1, v3) == 1)
      {
        sub_24E601704(v73, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v71, &qword_27F215598, &qword_24F945EF0);
        if (v77(&v76[v75], 1, v3) != 1)
        {
          v79 = v74;
          v80 = v150;
LABEL_28:
          sub_24E601704(v76, &unk_27F254F20, &qword_24F940790);
          goto LABEL_29;
        }

        v78 = v144;
        sub_24E601704(v76, &qword_27F215598, &qword_24F945EF0);
        v79 = v74;
        v80 = v150;
      }

      else
      {
        v81 = v139;
        sub_24E60169C(v76, v139, &qword_27F215598, &qword_24F945EF0);
        if (v77(&v76[v75], 1, v3) == 1)
        {
          v82 = v153;
          v83 = v154;
          v79 = v74;
          v80 = v150;
LABEL_27:
          sub_24E601704(v82, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v83, &qword_27F215598, &qword_24F945EF0);
          (v156[1])(v81, v3);
          goto LABEL_28;
        }

        v84 = v76;
        v85 = v81;
        v78 = v144;
        v86 = v156;
        v87 = v148;
        (v156[4])(v148, &v84[v75], v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v88 = sub_24F92AFF8();
        v89 = v86[1];
        v89(v87, v3);
        sub_24E601704(v153, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v154, &qword_27F215598, &qword_24F945EF0);
        v89(v85, v3);
        v79 = v155;
        v90 = v84;
        v80 = v150;
        sub_24E601704(v90, &qword_27F215598, &qword_24F945EF0);
        if ((v88 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v91 = v140;
      sub_24EFE8EF4(v140);
      (v159)(v78, v136, v3);
      v157(v78, 0, 1, v3);
      v92 = *(v79 + 48);
      v93 = v141;
      sub_24E60169C(v91, v141, &qword_27F215598, &qword_24F945EF0);
      sub_24E60169C(v78, &v93[v92], &qword_27F215598, &qword_24F945EF0);
      v94 = v162;
      if (v162(v93, 1, v3) == 1)
      {
        sub_24E601704(v78, &qword_27F215598, &qword_24F945EF0);
        v76 = v141;
        sub_24E601704(v91, &qword_27F215598, &qword_24F945EF0);
        if (v162(&v76[v92], 1, v3) == 1)
        {
          sub_24E601704(v76, &qword_27F215598, &qword_24F945EF0);
LABEL_43:
          LOBYTE(v163) = 1;
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      v81 = v132;
      sub_24E60169C(v93, v132, &qword_27F215598, &qword_24F945EF0);
      if (v94(&v93[v92], 1, v3) != 1)
      {
        v115 = v156;
        v116 = &v93[v92];
        v117 = v148;
        (v156[4])(v148, v116, v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v118 = sub_24F92AFF8();
        v119 = v115[1];
        v119(v117, v3);
        sub_24E601704(v144, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v140, &qword_27F215598, &qword_24F945EF0);
        v119(v81, v3);
        v79 = v155;
        v80 = v150;
        sub_24E601704(v93, &qword_27F215598, &qword_24F945EF0);
        if (v118)
        {
          goto LABEL_43;
        }

LABEL_29:
        v95 = v145;
        sub_24EFE90C4(v145);
        v96 = v149;
        (v159)(v149, v147, v3);
        v157(v96, 0, 1, v3);
        v97 = *(v79 + 48);
        sub_24E60169C(v95, v80, &qword_27F215598, &qword_24F945EF0);
        sub_24E60169C(v96, v80 + v97, &qword_27F215598, &qword_24F945EF0);
        v98 = v162;
        if (v162(v80, 1, v3) == 1)
        {
          sub_24E601704(v96, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
          v99 = v162((v80 + v97), 1, v3);
          v100 = v142;
          if (v99 != 1)
          {
LABEL_46:
            sub_24E601704(v80, &unk_27F254F20, &qword_24F940790);
            goto LABEL_47;
          }

          sub_24E601704(v80, &qword_27F215598, &qword_24F945EF0);
        }

        else
        {
          v101 = v137;
          sub_24E60169C(v80, v137, &qword_27F215598, &qword_24F945EF0);
          if (v98(v80 + v97, 1, v3) == 1)
          {
LABEL_39:
            sub_24E601704(v96, &qword_27F215598, &qword_24F945EF0);
            sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
            (v156[1])(v101, v3);
            goto LABEL_46;
          }

          v102 = v156;
          v103 = v80 + v97;
          v104 = v148;
          (v156[4])(v148, v103, v3);
          sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
          LODWORD(v154) = sub_24F92AFF8();
          v105 = v102[1];
          v105(v104, v3);
          sub_24E601704(v149, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
          v100 = v142;
          v105(v101, v3);
          v79 = v155;
          sub_24E601704(v80, &qword_27F215598, &qword_24F945EF0);
          if ((v154 & 1) == 0)
          {
LABEL_47:
            LOBYTE(v163) = 1;
            sub_24EFEA968();
            sub_24EFEA9BC();
            sub_24F924E28();
            LOBYTE(v163) = v164;
            HIBYTE(v163) = 1;
            goto LABEL_48;
          }
        }

        sub_24EFE8EF4(v100);
        v106 = v134;
        (v159)(v134, v147, v3);
        v157(v106, 0, 1, v3);
        v107 = *(v79 + 48);
        v108 = v135;
        sub_24E60169C(v100, v135, &qword_27F215598, &qword_24F945EF0);
        sub_24E60169C(v106, &v108[v107], &qword_27F215598, &qword_24F945EF0);
        v109 = v162;
        if (v162(v108, 1, v3) == 1)
        {
          sub_24E601704(v106, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v100, &qword_27F215598, &qword_24F945EF0);
          if (v109(&v108[v107], 1, v3) == 1)
          {
            sub_24E601704(v108, &qword_27F215598, &qword_24F945EF0);
LABEL_50:
            LOBYTE(v163) = 0;
            sub_24EFEA968();
            sub_24EFEA9BC();
            sub_24F924E28();
            LOBYTE(v163) = v164;
            HIBYTE(v163) = 1;
            goto LABEL_48;
          }

          v80 = v108;
          goto LABEL_46;
        }

        v101 = v131;
        sub_24E60169C(v108, v131, &qword_27F215598, &qword_24F945EF0);
        if (v109(&v108[v107], 1, v3) == 1)
        {
          v96 = v106;
          v80 = v108;
          v95 = v100;
          goto LABEL_39;
        }

        v123 = v106;
        v124 = v156;
        v125 = &v108[v107];
        v126 = v148;
        (v156[4])(v148, v125, v3);
        sub_24EFEAD94(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v127 = sub_24F92AFF8();
        v128 = v124[1];
        v128(v126, v3);
        sub_24E601704(v123, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v100, &qword_27F215598, &qword_24F945EF0);
        v128(v101, v3);
        sub_24E601704(v108, &qword_27F215598, &qword_24F945EF0);
        if (v127)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v82 = v144;
      v83 = v140;
      v76 = v93;
      goto LABEL_27;
    }

    v55 = v143;
    v58 = v147;
    goto LABEL_13;
  }

  sub_24E601704(v68, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v67, &qword_27F215598, &qword_24F945EF0);
  if (v162(&v18[v69], 1, v3) != 1)
  {
    goto LABEL_14;
  }

  sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
LABEL_41:
  LOBYTE(v163) = 0;
LABEL_44:
  sub_24EFEA968();
  sub_24EFEA9BC();
  sub_24F924E28();
  v163 = v164;
LABEL_48:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2367C8, &qword_24F9BB278);
  sub_24EFEAA10();
  result = sub_24F924E28();
  v121 = v165;
  v122 = v151;
  *v151 = v164;
  v122[1] = v121;
  return result;
}

uint64_t sub_24EFEA924@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EFE9324(v1, v5);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

unint64_t sub_24EFEA968()
{
  result = qword_27F2367B8;
  if (!qword_27F2367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367B8);
  }

  return result;
}

unint64_t sub_24EFEA9BC()
{
  result = qword_27F2367C0;
  if (!qword_27F2367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367C0);
  }

  return result;
}

unint64_t sub_24EFEAA10()
{
  result = qword_27F2367D0;
  if (!qword_27F2367D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367C8, &qword_24F9BB278);
    sub_24EFEA968();
    sub_24EFEA9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367D0);
  }

  return result;
}

unint64_t sub_24EFEAAC0()
{
  result = qword_27F2367D8;
  if (!qword_27F2367D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367E0, &qword_24F9BB2C0);
    sub_24EFEAB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367D8);
  }

  return result;
}

unint64_t sub_24EFEAB44()
{
  result = qword_27F2367E8;
  if (!qword_27F2367E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367F0, &qword_24F9BB2C8);
    sub_24EFEAA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2367E8);
  }

  return result;
}

unint64_t sub_24EFEAC04()
{
  result = qword_27F236800;
  if (!qword_27F236800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2367F8, &qword_24F9BB370);
    sub_24E602068(&qword_27F236808, &qword_27F236810, &qword_24F9BB378, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236800);
  }

  return result;
}

uint64_t sub_24EFEACBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236810, &qword_24F9BB378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFEAD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924528();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EFEAD94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFEADDC(uint64_t a1)
{
  v2 = type metadata accessor for OverlayGameControllerControls(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EFEAE8C()
{
  result = qword_27F2368A0;
  if (!qword_27F2368A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236898, &qword_24F9BB4B8);
    sub_24E602068(&qword_27F2368A8, &qword_27F2368B0, &qword_24F9BB4C0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2368A0);
  }

  return result;
}

unint64_t sub_24EFEAF44()
{
  result = qword_27F2368C8;
  if (!qword_27F2368C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236880, &qword_24F9BB4A0);
    sub_24E602068(&qword_27F2368D0, &qword_27F2368D8, &qword_24F9BB4D0, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2368C8);
  }

  return result;
}

unint64_t sub_24EFEB004()
{
  result = qword_27F236918;
  if (!qword_27F236918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F236910, &qword_24F9BB508);
    sub_24E602068(&qword_27F236920, &qword_27F236928, &qword_24F9BB510, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236918);
  }

  return result;
}

uint64_t sub_24EFEB19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v46 = sub_24F91F6B8();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_24F91F4A8();
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v59[3] = type metadata accessor for ReportConcernAction(0);
  v59[0] = a1;

  sub_24F928A98();
  v19 = sub_24F929D08();
  v21 = v20;
  v22 = type metadata accessor for FlowAction(0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 38;
  sub_24E60169C(v17, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v19;
  v28[1] = v21;
  sub_24E60169C(&v60, v58, &qword_27F235830, &qword_24F93B8C0);
  v29 = *(v9 + 16);
  v47 = v11;
  v29(v11, v14, v8);
  v30 = sub_24F929608();
  v31 = v7;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(v58, &v52, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v53 + 1))
  {
    v55 = v52;
    v56 = v53;
    v57 = v54;
  }

  else
  {
    v33 = v44;
    sub_24F91F6A8();
    v34 = sub_24F91F668();
    v36 = v35;
    (*(v45 + 8))(v33, v46);
    v50 = v34;
    v51 = v36;
    sub_24F92C7F8();
    sub_24E601704(&v52, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v58, &qword_27F235830, &qword_24F93B8C0);
  v37 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v38 = v56;
  *v37 = v55;
  *(v37 + 16) = v38;
  *(v37 + 32) = v57;
  sub_24E65E0D4(v31, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  (*(v9 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v47, v8);

  FlowAction.setPageData(_:)(v59);

  (*(v9 + 8))(v14, v8);
  sub_24E601704(v17, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v59, &qword_27F2129B0, &unk_24F945320);
  *(&v61 + 1) = v22;
  v62 = sub_24EFEB848(&qword_27F216400, type metadata accessor for FlowAction);
  *&v60 = v23;
  type metadata accessor for ReportConcernActionImplementation(0, v48, v39, v40);

  swift_getWitnessTable();
  v41 = sub_24F1489C4(&v60, v49);

  __swift_destroy_boxed_opaque_existential_1(&v60);
  return v41;
}

uint64_t sub_24EFEB848(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_24EFEB8B0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for InviteFriendsCardAvatars(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_24EFEBA90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for InviteFriendsCardAvatars(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for InviteFriendsCard(uint64_t a1)
{
  result = qword_27F2369D8;
  if (!qword_27F2369D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EFEBCA8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for InviteFriendsCardAvatars(319);
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

uint64_t sub_24EFEBDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for InviteFriendsCardAvatars(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2369F8, &unk_24F9BB678);
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for InviteFriendsCard(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 40) = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 9) = 0;
  v45 = v17 + 40;
  sub_24E61DA68(&v48, (v17 + 40), qword_27F21B590, &unk_24F93BE30);
  v47 = v15;
  v18 = *(v15 + 24);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24EFEC8E4();
  v42 = v14;
  v22 = v43;
  sub_24F92D108();
  if (v22)
  {
    v24 = v44;
    v23 = v45;
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_24E601704(v23, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v17[v24], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v43 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v26 = v49;
    *v17 = v48;
    *(v17 + 1) = v26;
    *(v17 + 4) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v51 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v27 = v44;
    sub_24E61DA68(&v48, v45, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v48) = 2;
    sub_24E65CAA0();
    v28 = v11;
    sub_24F92CC68();
    v29 = v40;
    sub_24E61DA68(v28, &v17[v27], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v48) = 3;
    sub_24EFEC938(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v30 = v43;
    sub_24F92CC18();
    v31 = v47;
    sub_24E6009C8(v30, &v17[*(v47 + 28)], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v48) = 4;
    sub_24EFEC938(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v32 = v38;
    sub_24F92CC68();
    sub_24EFEC980(v32, &v17[*(v31 + 32)], type metadata accessor for CommonCardAttributes);
    LOBYTE(v48) = 5;
    sub_24EFEC938(&qword_27F236A08, type metadata accessor for InviteFriendsCardAvatars, &unk_24FA3BA0C);
    v33 = v37;
    sub_24F92CC68();
    (*(v29 + 8))(v42, v41);
    sub_24EFEC980(v33, &v17[*(v31 + 36)], type metadata accessor for InviteFriendsCardAvatars);
    sub_24EFEC9E8(v17, v35, type metadata accessor for InviteFriendsCard);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24EFECA50(v17, type metadata accessor for InviteFriendsCard);
  }
}

unint64_t sub_24EFEC5B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x73726174617661;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EFEC668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EFECBC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EFEC690(uint64_t a1)
{
  v2 = sub_24EFEC8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFEC6CC(uint64_t a1)
{
  v2 = sub_24EFEC8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFEC740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24EFEC818(uint64_t a1)
{
  *(a1 + 8) = sub_24EFEC938(&qword_27F21AC50, type metadata accessor for InviteFriendsCard, &unk_24F9BB634);
  result = sub_24EFEC938(&qword_27F2369E8, type metadata accessor for InviteFriendsCard, &unk_24F9BB5F0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EFEC8E4()
{
  result = qword_27F236A00;
  if (!qword_27F236A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A00);
  }

  return result;
}

uint64_t sub_24EFEC938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFEC980(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EFEC9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EFECA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EFECAC4()
{
  result = qword_27F236A10;
  if (!qword_27F236A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A10);
  }

  return result;
}

unint64_t sub_24EFECB1C()
{
  result = qword_27F236A18;
  if (!qword_27F236A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A18);
  }

  return result;
}

unint64_t sub_24EFECB74()
{
  result = qword_27F236A20;
  if (!qword_27F236A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236A20);
  }

  return result;
}

uint64_t sub_24EFECBC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73726174617661 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24EFECE3C(double a1, uint64_t a2, void (*a3)(__n128), unsigned int *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  a3(v9);
  v12 = sub_24F926D08();

  v13 = *(v8 + 36);
  v14 = *a4;
  v15 = sub_24F927748();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = v12;
  sub_24EFED12C(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60);
  result = sub_24F9238D8();
  *a5 = result;
  return result;
}

uint64_t sub_24EFECF78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  v3 = sub_24F9251C8();
  v4 = *(v0 + 36);
  v5 = *MEMORY[0x277CE13B8];
  v6 = sub_24F927748();
  (*(*(v6 - 8) + 104))(&v2[v4], v5, v6);
  *v2 = v3;
  sub_24EFED12C(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10);
  result = sub_24F9238D8();
  qword_27F39D368 = result;
  return result;
}

uint64_t sub_24EFED0A4(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_24F9234D8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_24EFED12C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24EFED180(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DC0, &unk_24F9E9B60);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - v3);
  if (a1)
  {
    v11 = sub_24F926C88();
    return sub_24F9238D8();
  }

  else
  {
    sub_24E77ACC8();
    sub_24F92C398();
    sub_24F926BF8();
    v6 = sub_24F926D08();
    v7 = *(v2 + 36);
    v8 = *MEMORY[0x277CE13B0];
    v9 = sub_24F927748();
    (*(*(v9 - 8) + 104))(v4 + v7, v8, v9);
    *v4 = v6;
    sub_24EFED12C(&qword_27F236200, &qword_27F217DC0, &unk_24F9E9B60);
    v10 = sub_24F9238D8();

    return v10;
  }
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  v8 = sub_24EFF0E44(a1, a2, v4);

  return v8;
}

id sub_24EFED3B0()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_24EFED494(*(v0 + OBJC_IVAR___AMPLanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___AMPLanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_24EFED480(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = a1;
}

id sub_24EFED494(void *a1, unint64_t a2, uint64_t a3, id a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    v8 = a2 >> 62;
    if (a2 >> 62)
    {
      if (sub_24F92C738() != 1 || !sub_24F92C738())
      {
        goto LABEL_15;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x253052270](0, a2))
      {
        v10 = i;
        [i directionalRangeValue];

        v11 = MEMORY[0x253050CC0](a3, a4);
        if (!v31 && v32 == v11)
        {
          v12 = sub_24EFF0CB4(v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880, &unk_24F947748);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24F93DE60;
          v14 = *MEMORY[0x277D74118];
          *(inited + 32) = *MEMORY[0x277D74118];
          *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
          *(inited + 40) = v12;
          v15 = v12;
          v16 = v14;
          sub_24E608940(inited);
          swift_setDeallocating();
          sub_24EADDE6C(inited + 32);
          v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v18 = sub_24F92B098();
          type metadata accessor for Key(0);
          sub_24EADDED4();
          v19 = sub_24F92AE28();

          v20 = [v17 initWithString:v18 attributes:v19];

          return v20;
        }

LABEL_15:
        v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v22 = sub_24F92B098();
        a4 = [v21 initWithString_];

        if (v8)
        {
          a3 = sub_24F92C738();
          if (!a3)
          {
LABEL_35:
            v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

            return v29;
          }
        }

        else
        {
          a3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        v23 = 0;
        v8 = a2 & 0xFFFFFFFFFFFFFF8;
        v24 = *MEMORY[0x277D74118];
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x253052270](v23, a2);
          }

          else
          {
            if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v26 = *(a2 + 8 * v23 + 32);
          }

          v27 = v26;
          v28 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          [v26 directionalRangeValue];
          if (v33 == -1)
          {
            v25 = &qword_27F39D390;
            if (qword_27F210DE0 != -1)
            {
              swift_once();
              v25 = &qword_27F39D390;
            }
          }

          else if (v33 == 1)
          {
            v25 = &qword_27F39D398;
            if (qword_27F210DE8 != -1)
            {
              swift_once();
              v25 = &qword_27F39D398;
            }
          }

          else
          {
            if (v33)
            {
              goto LABEL_40;
            }

            v25 = &qword_27F39D388;
            if (qword_27F210DD8 != -1)
            {
              swift_once();
              v25 = &qword_27F39D388;
            }
          }

          [a4 addAttribute:v24 value:*v25 range:?];

          ++v23;
          if (v28 == a3)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }
    }

    __break(1u);
LABEL_40:
    sub_24F92C888();

    v30 = sub_24F92CD88();
    MEMORY[0x253050C20](v30);

    result = sub_24F92CA88();
    __break(1u);
  }

  return result;
}

void (*sub_24EFED9AC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFED3B0();
  return sub_24EFED9F4;
}

void sub_24EFED9F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = v2;
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);

  return v1;
}

void sub_24EFEDB54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = a1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  v11 = objc_allocWithZone(v5);
  v12 = sub_24EFF11F8(a1, a2, a3, v7, v6);

  return v12;
}

void (*sub_24EFEDBD8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDAEC();
  return sub_24EFEDC20;
}

void sub_24EFEDC20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = v2;
}

id sub_24EFEDC9C(uint64_t *a1, uint64_t (*a2)(void, unint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_24E600AEC();
    v8 = v2;
    v9 = a2(MEMORY[0x277D837D0], v7);
    v11 = v10;
    swift_beginAccess();
    v12 = byte_27F236A28;
    swift_beginAccess();
    v13 = byte_27F236A29;
    v14 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v15 = sub_24EFF11F8(v9, v11, 0, v12, v13);
    v16 = *(v8 + v3);
    *(v8 + v3) = v15;
    v5 = v15;

    v4 = 0;
  }

  v17 = v4;
  return v5;
}

void sub_24EFEDDF4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = a1;
}

void (*sub_24EFEDE08(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDC7C();
  return sub_24EFEDE50;
}

void sub_24EFEDE50(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = v2;
}

id sub_24EFEDEAC()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    sub_24E600AEC();
    v4 = v0;
    v5 = sub_24F92C568();
    v7 = v6;
    swift_beginAccess();
    v8 = byte_27F236A28;
    swift_beginAccess();
    v9 = byte_27F236A29;
    v10 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v11 = sub_24EFF11F8(v5, v7, 0, v8, v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_24EFEE044(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = a1;
}

void (*sub_24EFEE058(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEDEAC();
  return sub_24EFEE0A0;
}

void sub_24EFEE0A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = v2;
}

id sub_24EFEE0FC()
{
  v1 = sub_24F91EAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  v6 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    v21 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
    v22 = v8;

    sub_24F91EA68();
    sub_24E600AEC();
    v9 = v0;
    v10 = sub_24F92C538();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    v13 = byte_27F236A28;
    swift_beginAccess();
    v14 = byte_27F236A29;
    v15 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v16 = sub_24EFF11F8(v10, v12, 0, v13, v14);
    v17 = *(v9 + v5);
    *(v9 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

void sub_24EFEE304(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = a1;
}

void (*sub_24EFEE318(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24EFEE0FC();
  return sub_24EFEE360;
}

void sub_24EFEE360(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = v2;
}

id sub_24EFEE3F8()
{
  sub_24E69A5C4(0, &qword_27F22F038, 0x277CCAE60);

  v0 = sub_24F92B588();

  return v0;
}

uint64_t sub_24EFEE4D8()
{
  v1 = v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = sub_24EFEE6E8();
  result = 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_24EFEE540(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = 0;
  return result;
}

__n128 (*sub_24EFEE558(uint64_t *a1))(__n128 *a1)
{
  a1[2] = v1;
  *a1 = sub_24EFEE4D8();
  a1[1] = v3;
  return sub_24EFEE5A0;
}

__n128 sub_24EFEE5A0(__n128 *a1)
{
  v1 = (a1[1].n128_u64[0] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_24EFEE5E8()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

uint64_t (*sub_24EFEE650(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_24EFEE5E8() & 1;
  return sub_24EFEE69C;
}

uint64_t sub_24EFEE720(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_24EFEE738(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_24EFEE6E8();
  return sub_24EFEE780;
}

void *sub_24EFEE780(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

unint64_t sub_24EFEE7C0()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);
  }

  v5 = 7;
  if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  result = sub_24EFF0998(0xFuLL, v5 | (v4 << 16), v2, v3);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_24EFEE860(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_24EFEE878(unint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_24EFEE7C0();
  return sub_24EFEE8C0;
}

void *sub_24EFEE8C0(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_24EFEE930(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___AMPLanguageAwareString_string), *(v2 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t sub_24EFEE9A4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_24EFEE9BC(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_24EFEE910();
  return sub_24EFEEA04;
}

void *sub_24EFEEA04(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double static LanguageAwareString.delegate.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_27F236A30 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_24EFEEEAC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_27F236A30 = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_24EFEEF10()
{
  swift_beginAccess();
  v0 = byte_27F236A28;
  swift_beginAccess();
  v1 = byte_27F236A29;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = sub_24EFF11F8(0, 0xE000000000000000, 0, v0, v1);
  qword_27F236A38 = result;
  return result;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_27F210DD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F236A38;

  return v1;
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_24EFF0E44(a1, a2, a3);

  return v5;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a5;
  v11 = objc_allocWithZone(v5);
  v12 = sub_24EFF1BF0(a1, a2, a3, a4, v6);

  return v12;
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_24EFF1BF0(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v12 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v12;
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v9 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_24EFF11F8(a1, a2, a3, a4, a5);

  return v6;
}

id LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  v8 = sub_24EFF2004(a1, a2, v4);

  return v8;
}

id LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24EFF2004(a1, a2, a3);

  return v4;
}

char *LanguageAwareString.init(from:)(void *a1)
{
  v3 = v1;
  v4 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v1[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  v6 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  v7 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  v73 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  v75 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  *&v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v1[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D0D8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v13 = sub_24F92CEB8();
    v16 = v15;
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_1(v79);
    swift_beginAccess();
    v18 = qword_27F236A30;
    if (qword_27F236A30)
    {
      swift_unknownObjectRetain();
      v19 = sub_24F92B098();
      v20 = [v18 preprocessForLanguageAwarenessString_];

      v76 = sub_24F92B0D8();
      v22 = v21;

      swift_unknownObjectRelease();

      v16 = v22;
    }

    else
    {
      v76 = v17;
    }

    swift_beginAccess();
    if (byte_27F236A28 == 1)
    {
      v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v24 = sub_24F92B098();
      v25 = [v23 initWithString_];

      v26 = 0;
      v27 = v25;
    }

    else
    {
      v25 = sub_24F92B098();
      v27 = 0;
      v26 = v25;
    }

    v28 = v25;
    swift_beginAccess();
    v29 = byte_27F236A29;
    v30 = v27;
    sub_24EBFACC8(v27, v26, 0, v29, v79);
    v31 = v27;
    v33 = v79[0];
    v32 = v79[1];
    v34 = v79[2];
    v74 = v80;
    v71 = v81;
    v35 = v82;

    v70 = v31;
    v72 = v32;
    if (v31)
    {
      if (!v35)
      {

        goto LABEL_29;
      }

      v66 = v33;
      v33 = v16;
      v36 = v35[2];
      if (v36)
      {
        v37 = 0;
        while (v37 < v35[2])
        {
          v38 = v37 + 1;
          v79[0] = v35[v37 + 4];
          sub_24EA25BD4(v79, v30, v34);
          v37 = v38;
          if (v36 == v38)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_17:

      v16 = v33;
    }

    else
    {
      if (!v35)
      {
LABEL_24:
        if (v71)
        {
          v69 = v34;
          v47 = sub_24EFED494(0, v34, v76, v16);
          *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v47;
          v48 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v49 = v47;
          v50 = [v48 initWithAttributedString_];
          if (qword_27F210100 != -1)
          {
            swift_once();
          }

          [v50 performSelector_];
          v51 = [v50 string];
          v52 = sub_24F92B0D8();
          v54 = v53;

          v34 = v69;
          goto LABEL_38;
        }

        *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
        goto LABEL_37;
      }

      v66 = v33;
      v68 = v34;
      v39 = sub_24F92B098();
      [v39 mutableCopy];

      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E69A5C4(0, &qword_27F236AD0, 0x277CCAB68);
      swift_dynamicCast();
      v40 = v83;
      v41 = v35[2];
      if (v41)
      {
        v42 = v35 + 4;
        do
        {
          v43 = *v42++;
          v44 = sub_24F92B098();
          [v40 replaceCharactersInRange:v43 withString:{1, v44}];

          --v41;
        }

        while (v41);
      }

      [v40 copy];
      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E69A5C4(0, &qword_27F236AD8, 0x277CCACA8);
      swift_dynamicCast();
      v45 = v83;
      v76 = sub_24F92B0D8();
      v16 = v46;

      v34 = v68;
    }

    v33 = v66;
    if (!v70)
    {
      goto LABEL_24;
    }

LABEL_29:
    [v30 copy];

    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
    v55 = swift_dynamicCast();
    v56 = v83;
    if (!v55)
    {
      v56 = 0;
    }

    *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v56;
    if (v71)
    {
      v67 = v34;
      v57 = qword_27F210100;
      v35 = v56;
      if (v57 == -1)
      {
LABEL_33:
        [v30 performSelector_];
        v58 = [v30 string];
        v52 = sub_24F92B0D8();
        v54 = v59;

        v34 = v67;
LABEL_38:
        v64 = &v3[OBJC_IVAR___AMPLanguageAwareString_string];
        *v64 = v52;
        v64[1] = v54;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v34;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v33;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v72;
        *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v74;
        v78.receiver = v3;
        v78.super_class = type metadata accessor for LanguageAwareString();
        v3 = objc_msgSendSuper2(&v78, sel_init);
        __swift_destroy_boxed_opaque_existential_1(a1);
        return v3;
      }

LABEL_40:
      swift_once();
      goto LABEL_33;
    }

    if (v56)
    {
      v60 = v56;
      v65 = v26;
      v61 = v34;
      v62 = [v60 string];
      v52 = sub_24F92B0D8();
      v54 = v63;

      v34 = v61;
      goto LABEL_38;
    }

LABEL_37:

    v54 = v16;
    v52 = v76;
    goto LABEL_38;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  type metadata accessor for LanguageAwareString();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_24EFEFF20(uint64_t a1)
{
  v2 = sub_24EFED3B0();
  v3 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EFEFFEC()
{
  v1 = (v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_24EFF006C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_24EFF0084(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_24EFEFFEC();
  return sub_24EFF00CC;
}

void *sub_24EFF00CC(void *result)
{
  v1 = result[1] + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_24EFF00E8(uint64_t a1, id a2, id a3, char a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  if (*(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    v7 = *(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
    v8 = *(v6 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
    if (v7)
    {
      if (!v8)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    if ((a4 & 1) == 0 || (v13 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage)) == 0)
    {
      v33 = sub_24EFED3B0();
      v34 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];

      v35 = objc_allocWithZone(MEMORY[0x277D74238]);
      v14 = v34;
      v15 = [v35 init];
      [v14 addLayoutManager_];

      v23 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
      [v23 setLineFragmentPadding_];
      [v23 setMaximumNumberOfLines_];
      [v23 setLineBreakMode_];
      [v15 addTextContainer_];

      if (a4)
      {
        v36 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage) = v14;
        v14 = v14;
      }

      else
      {
        v37 = *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage) = 0;
      }

      goto LABEL_35;
    }

    v14 = v13;
    v15 = [v14 layoutManagers];
    sub_24E69A5C4(0, &qword_27F236AE0, 0x277D74238);
    v16 = sub_24F92B5A8();
    v17 = v16;
    if (v16 >> 62)
    {
      if (sub_24F92C738())
      {
LABEL_11:

        if ((v17 & 0xC000000000000001) == 0)
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v17 + 32);
LABEL_14:
          v15 = v18;

          v19 = [v15 textContainers];
          sub_24E69A5C4(0, &qword_27F236AE8, 0x277D74278);
          v20 = sub_24F92B5A8();
          v17 = v20;
          if (v20 >> 62)
          {
            if (sub_24F92C738())
            {
LABEL_16:

              if ((v17 & 0xC000000000000001) == 0)
              {
                if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v21 = *(v17 + 32);
LABEL_19:
                v22 = v21;

                v23 = v22;
                [v23 size];
                v25 = v24;
                v27 = v26;
                [v23 lineFragmentPadding];
                v29 = v28;
                v30 = [v23 maximumNumberOfLines];
                v31 = [v23 lineBreakMode];

                if (v25 == a5 && v27 == 1.79769313e308)
                {
                  if (v29 == 0.0)
                  {
                    if (v30 == a2)
                    {
                      if (v31 == a3)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_33;
                    }

LABEL_31:
                    [v23 setMaximumNumberOfLines_];
LABEL_32:
                    if (v31 == a3)
                    {
LABEL_34:
                      v38 = [v14 fullRange];
                      [v15 invalidateLayoutForCharacterRange:v38 actualCharacterRange:{v39, 0}];
LABEL_35:
                      [v14 writingDirectionOfLine:a1 usingLayoutManager:v15 textContainer:v23];

                      return;
                    }

LABEL_33:
                    [v23 setLineBreakMode_];
                    goto LABEL_34;
                  }
                }

                else
                {
                  [v23 setSize_];
                  if (v29 == 0.0)
                  {
                    goto LABEL_30;
                  }
                }

                [v23 setLineFragmentPadding_];
LABEL_30:
                if (v30 == a2)
                {
                  goto LABEL_32;
                }

                goto LABEL_31;
              }

LABEL_43:
              v21 = MEMORY[0x253052270](0, v17);
              goto LABEL_19;
            }
          }

          else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_39:
        v18 = MEMORY[0x253052270](0, v17);
        goto LABEL_14;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_39;
  }
}

id LanguageAwareString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareString.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24EFF0810@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 528))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24EFF084C()
{
  result = sub_24EFF0894(0);
  qword_27F39D388 = result;
  return result;
}

uint64_t sub_24EFF0870()
{
  result = sub_24EFF0894(-1);
  qword_27F39D390 = result;
  return result;
}

uint64_t sub_24EFF0894(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v2 setAlignment_];
  [v2 setBaseWritingDirection_];
  [v2 setLineBreakMode_];
  [v2 copy];
  sub_24F92C648();

  swift_unknownObjectRelease();
  sub_24E69A5C4(0, &qword_27F221898, 0x277D74248);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_24EFF0974()
{
  result = sub_24EFF0894(1);
  qword_27F39D398 = result;
  return result;
}

unint64_t sub_24EFF0998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_24EFF0BA8(a1, a3, a4);
  v8 = sub_24EFF0BA8(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24F92B1E8();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_24F92C928();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_24F92B1F8();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_24F92C928();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_24EFF0BA8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_24EFF0C40(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_24F26DD58(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_24EFF0C40(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_24F26DE7C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFF0CB4(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      if (qword_27F210DE0 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39D390;
      return *v1;
    case 1:
      if (qword_27F210DE8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39D398;
      return *v1;
    case 0:
      if (qword_27F210DD8 != -1)
      {
        swift_once();
      }

      v1 = &qword_27F39D388;
      return *v1;
  }

  sub_24F92C888();

  v3 = sub_24F92CD88();
  MEMORY[0x253050C20](v3);

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

id sub_24EFF0E44(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v7 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v8 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v11 = 0;
  v11[8] = 1;
  swift_beginAccess();
  v12 = qword_27F236A30;
  if (qword_27F236A30 && ([qword_27F236A30 respondsToSelector_] & 1) != 0)
  {
    v13 = [v12 preprocessForLanguageAwarenessAttributedString_];
  }

  else
  {
    v13 = a1;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v16 = v15;
  sub_24EBFACC8(v15, 0, a2, a3 & 1, v40);
  v37 = v40[0];
  v38 = v40[1];
  v17 = v40[2];
  v18 = v40[3];
  v19 = v41;
  v20 = v42;

  if (v20)
  {
    v36 = v18;
    v21 = v14;
    v18 = *(v20 + 16);
    if (v18)
    {
      v22 = 0;
      v23 = 0;
      v14 = (v20 + 32);
      while (v22 < *(v20 + 16))
      {
        v24 = v22 + 1;
        v40[0] = v14[v22];
        sub_24EA25BD4(v40, v16, v17);
        v22 = v24;
        if (v18 == v24)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_13;
    }

LABEL_10:

    v14 = v21;
    v18 = v36;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = v16;
  v26 = [v25 initWithAttributedString_];
  v16 = v26;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v26;
  if (!v19)
  {
    v30 = v26;

    v29 = [v30 string];
    goto LABEL_15;
  }

  v27 = qword_27F210100;
  v28 = v26;
  if (v27 != -1)
  {
    goto LABEL_17;
  }

LABEL_13:
  [v23 performSelector_];
  v29 = [v23 string];

LABEL_15:
  v31 = sub_24F92B0D8();
  v33 = v32;

  v34 = &v3[OBJC_IVAR___AMPLanguageAwareString_string];
  *v34 = v31;
  v34[1] = v33;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v17;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_numbers] = v37;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_words] = v38;
  *&v3[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v18;
  v39.receiver = v3;
  v39.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v39, sel_init);
}

id sub_24EFF11F8(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v11 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v12 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v15 = 0;
  v15[8] = 1;
  swift_beginAccess();
  v16 = qword_27F236A30;
  if (qword_27F236A30)
  {
    swift_unknownObjectRetain();
    v17 = sub_24F92B098();
    v18 = [v16 preprocessForLanguageAwarenessString_];

    a1 = sub_24F92B0D8();
    v20 = v19;

    swift_unknownObjectRelease();

    a2 = v20;
  }

  if ((a4 & 1) != 0 || a3)
  {
    v24 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v25 = sub_24F92B098();
    v21 = [v24 initWithString_];

    v23 = 0;
    v22 = v21;
  }

  else
  {
    v21 = sub_24F92B098();
    v22 = 0;
    v23 = v21;
  }

  v26 = v21;
  v27 = v22;
  sub_24EBFACC8(v22, v23, a3, a5 & 1, v65);
  v61 = v65[0];
  v28 = v22;
  v29 = v65[1];
  v30 = v65[2];
  v31 = v65[3];
  v60 = v66;
  v32 = v67;

  v58 = v28;
  v59 = v29;
  v62 = v23;
  if (v28)
  {
    if (!v32)
    {

      goto LABEL_25;
    }

    v57 = v31;
    v31 = *(v32 + 16);
    if (v31)
    {
      v33 = 0;
      while (v33 < *(v32 + 16))
      {
        v23 = (v33 + 1);
        v65[0] = *(v32 + 32 + 8 * v33);
        sub_24EA25BD4(v65, v27, v30);
        v33 = v23;
        if (v31 == v23)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_13:
  }

  else
  {
    if (!v32)
    {
      goto LABEL_20;
    }

    v57 = v31;
    v34 = sub_24F92B098();
    [v34 mutableCopy];

    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E69A5C4(0, &qword_27F236AD0, 0x277CCAB68);
    swift_dynamicCast();
    v35 = *(v32 + 16);
    if (v35)
    {
      v36 = (v32 + 32);
      do
      {
        v37 = *v36++;
        v38 = sub_24F92B098();
        [v63 replaceCharactersInRange:v37 withString:{1, v38}];

        --v35;
      }

      while (v35);
    }

    [v63 copy];
    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E69A5C4(0, &qword_27F236AD8, 0x277CCACA8);
    swift_dynamicCast();
    a1 = sub_24F92B0D8();
    a2 = v39;
  }

  v31 = v57;
  v29 = v59;
  v23 = v62;
  if (v58)
  {
LABEL_25:
    [v27 copy];

    sub_24F92C648();
    swift_unknownObjectRelease();
    sub_24E69A5C4(0, &qword_27F223430, 0x277CCA898);
    v47 = swift_dynamicCast();
    v48 = v63;
    if (!v47)
    {
      v48 = 0;
    }

    *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v48;
    if (v60)
    {
      v49 = qword_27F210100;
      v23 = v48;
      if (v49 == -1)
      {
LABEL_29:
        [v27 performSelector_];
        v50 = [v27 string];
        a1 = sub_24F92B0D8();
        v46 = v51;

        v29 = v59;
        goto LABEL_34;
      }

LABEL_36:
      swift_once();
      goto LABEL_29;
    }

    if (v48)
    {
      v52 = v48;
      v53 = [v52 string];
      a1 = sub_24F92B0D8();
      v46 = v54;

      goto LABEL_34;
    }

LABEL_33:

    v46 = a2;
    goto LABEL_34;
  }

LABEL_20:
  if ((v60 & 1) == 0)
  {
    *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = 0;
    goto LABEL_33;
  }

  v40 = sub_24EFED494(0, v30, a1, a2);
  *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v40;
  v41 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v42 = v40;
  v43 = [v41 initWithAttributedString_];
  if (qword_27F210100 != -1)
  {
    swift_once();
  }

  [v43 performSelector_];
  v44 = [v43 string];
  a1 = sub_24F92B0D8();
  v46 = v45;

LABEL_34:
  v55 = &v5[OBJC_IVAR___AMPLanguageAwareString_string];
  *v55 = a1;
  v55[1] = v46;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v30;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_numbers] = v61;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_words] = v29;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v31;
  v64.receiver = v5;
  v64.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v64, sel_init);
}

id sub_24EFF18F8(void *a1, char a2)
{
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v6 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v7 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1;
  sub_24EBFACC8(a1, 0, 0, a2, v33);
  v30 = v33[0];
  v31 = v33[1];
  v12 = v33[2];
  v13 = v33[3];
  v14 = v34;
  v15 = v35;

  if (v15)
  {
    v28 = v13;
    v29 = v5;
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = 0;
      v13 = v15 + 32;
      while (v17 < *(v15 + 16))
      {
        v5 = v17 + 1;
        v33[0] = *(v13 + 8 * v17);
        sub_24EA25BD4(v33, v11, v12);
        v17 = v5;
        if (v16 == v5)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_13:
      swift_once();
      goto LABEL_9;
    }

LABEL_6:

    v13 = v28;
    v5 = v29;
  }

  *&v2[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = a1;
  if (!v14)
  {
    v19 = [v11 string];
    v20 = sub_24F92B0D8();
    v22 = v23;
    goto LABEL_11;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  if (qword_27F210100 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  [v18 performSelector_];
  v19 = [v18 string];
  v20 = sub_24F92B0D8();
  v22 = v21;

LABEL_11:
  v24 = &v2[OBJC_IVAR___AMPLanguageAwareString_string];
  *v24 = v20;
  v24[1] = v22;
  v25 = *&v2[v5];
  *&v2[v5] = a1;
  v26 = v11;

  *&v2[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v12;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_numbers] = v30;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_words] = v31;
  *&v2[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v13;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v32, sel_init);
}

id sub_24EFF1BF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v9 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v10 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v13 = 0;
  v13[8] = 1;
  swift_beginAccess();
  v14 = qword_27F236A30;
  if (qword_27F236A30)
  {
    swift_unknownObjectRetain();
    v15 = sub_24F92B098();

    v16 = [v14 preprocessForLanguageAwarenessString_];

    sub_24F92B0D8();
    swift_unknownObjectRelease();
  }

  v17 = sub_24F92B098();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_24EADDED4();
    v18 = sub_24F92AE28();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString:v17 attributes:v18];

  v20 = v19;
  sub_24EBFACC8(v19, 0, a4, a5 & 1, v44);
  v22 = v44[0];
  v21 = v44[1];
  v23 = v44[2];
  v24 = v44[3];
  v25 = v45;
  v26 = v46;

  if (v26)
  {
    v41 = v22;
    v42 = v21;
    v22 = v24;
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v24 = v26 + 32;
      while (v28 < *(v26 + 16))
      {
        v21 = v28 + 1;
        v44[0] = *(v24 + 8 * v28);
        sub_24EA25BD4(v44, v20, v23);
        v28 = v21;
        if (v27 == v21)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      swift_once();
      goto LABEL_14;
    }

LABEL_11:

    v24 = v22;
    v22 = v41;
    v21 = v42;
  }

  v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = v20;
  v31 = [v30 initWithAttributedString_];
  v20 = v31;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v31;
  if (!v25)
  {
    v35 = v31;

    v34 = [v35 string];
    goto LABEL_16;
  }

  v32 = qword_27F210100;
  v33 = v31;
  if (v32 != -1)
  {
    goto LABEL_18;
  }

LABEL_14:
  [v29 performSelector_];
  v34 = [v29 string];

LABEL_16:
  v36 = sub_24F92B0D8();
  v38 = v37;

  v39 = &v5[OBJC_IVAR___AMPLanguageAwareString_string];
  *v39 = v36;
  v39[1] = v38;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = v23;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_numbers] = v22;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_words] = v21;
  *&v5[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v24;
  v43.receiver = v5;
  v43.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v43, sel_init);
}

id sub_24EFF2004(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString_cachedTextStorage] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  v13 = sub_24EFED3B0();
  v14 = v13;
  if (a2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    type metadata accessor for Key(0);
    sub_24EADDED4();
    v16 = sub_24F92AE28();

    v17 = [v14 fullRange];
    [v15 addAttributes:v16 range:{v17, v18}];

    v19 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  }

  else
  {
    v19 = v13;
  }

  *&v4[OBJC_IVAR___AMPLanguageAwareString_baseAttributedString] = v19;
  v20 = v19;
  v21 = [v20 string];
  v22 = sub_24F92B0D8();
  v24 = v23;

  v25 = &v4[OBJC_IVAR___AMPLanguageAwareString_string];
  *v25 = v22;
  v25[1] = v24;
  if (a3)
  {
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = *(a1 + OBJC_IVAR___AMPLanguageAwareString_paragraphs);
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = *(a1 + OBJC_IVAR___AMPLanguageAwareString_numbers);

    v26 = OBJC_IVAR___AMPLanguageAwareString_words;
    v27 = *(a1 + OBJC_IVAR___AMPLanguageAwareString_words);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_paragraphs] = MEMORY[0x277D84F90];
    *&v4[OBJC_IVAR___AMPLanguageAwareString_numbers] = v27;

    v26 = OBJC_IVAR___AMPLanguageAwareString_words;
  }

  *&v4[v26] = v27;
  v28 = *(a1 + OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections);
  *&v4[OBJC_IVAR___AMPLanguageAwareString_knownBaseWritingDirections] = v28;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for LanguageAwareString();
  v29 = v28;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_24EFF22C8@<X0>(void *a1@<X8>)
{
  result = sub_24EFED3B0();
  *a1 = result;
  return result;
}

void sub_24EFF22F4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString) = *a1;
  v3 = v2;
}

id sub_24EFF2344@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEDAEC();
  *a1 = result;
  return result;
}

void sub_24EFF2370(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedLowercase) = *a1;
  v3 = v2;
}

id sub_24EFF23C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEDC7C();
  *a1 = result;
  return result;
}

void sub_24EFF23EC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___localizedUppercase) = *a1;
  v3 = v2;
}

id sub_24EFF243C@<X0>(void *a1@<X8>)
{
  result = sub_24EFEDEAC();
  *a1 = result;
  return result;
}

void sub_24EFF2468(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = *a1;
  v3 = v2;
}

id sub_24EFF24B8@<X0>(void *a1@<X8>)
{
  result = sub_24EFEE0FC();
  *a1 = result;
  return result;
}

void sub_24EFF24E4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  *(*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed) = *a1;
  v3 = v2;
}

uint64_t sub_24EFF2534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEE4D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_24EFF2560(__n128 *a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange);
  result = *a1;
  *v2 = *a1;
  v2[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_24EFF2580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24EFEE5E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EFF25C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEE6E8();
  *a1 = result;
  return result;
}

void *sub_24EFF25F4(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf16Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

unint64_t sub_24EFF2614@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24EFEE7C0();
  *a1 = result;
  return result;
}

void *sub_24EFF2640(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___utf32Count;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_24EFF2660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEE910();
  *a1 = result;
  return result;
}

void *sub_24EFF268C(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___characterCount;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

void sub_24EFF26F8(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_27F236A28 = v1;
}

void sub_24EFF278C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  byte_27F236A29 = v1;
}

double sub_24EFF27D4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_27F236A30;
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_24EFF2828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EFEFFEC();
  *a1 = result;
  return result;
}

void *sub_24EFF2854(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t EditorialStoryCard.Badge.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = sub_24F91F008();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = v17;
  v22 = *(v12 + 8);
  v22(v21, v11);
  if (v20)
  {
    v62 = a3;
    v23 = v18 == 0x6F57656461637261 && v20 == 0xEE006B72616D6472;
    if (v23 || (sub_24F92CE08() & 1) != 0)
    {

      v24 = sub_24F9285B8();
      (*(*(v24 - 8) + 8))(a2, v24);
      v22(a1, v11);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
      return (*(*(v25 - 8) + 56))(v62, 1, 2, v25);
    }

    v32 = v18 == 1954047348 && v20 == 0xE400000000000000;
    v33 = a2;
    if (v32)
    {

      v35 = a1;
    }

    else
    {
      v34 = sub_24F92CE08();

      v35 = a1;
      if ((v34 & 1) == 0)
      {
        v36 = sub_24F9285B8();
        (*(*(v36 - 8) + 8))(v33, v36);
        v22(a1, v11);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
        v29 = *(*(v28 - 8) + 56);
        v30 = v62;
        goto LABEL_9;
      }
    }

    sub_24F928398();
    v55 = sub_24F928348();
    v38 = v37;
    v56 = v22;
    v22(v14, v11);
    v39 = [objc_opt_self() systemFontOfSize_];
    v40 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v41 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v42 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v64 = 10;
    *(&v64 + 1) = 0xE100000000000000;
    *&v65 = v39;
    *(&v65 + 1) = v40;
    *&v66 = 161644770;
    *(&v66 + 1) = 0xA400000000000000;
    *&v67 = v41;
    *(&v67 + 1) = 606245;
    *&v68 = 0xE300000000000000;
    *(&v68 + 1) = v42;
    if (v38)
    {
      v63[2] = v66;
      v63[3] = v67;
      v63[4] = v68;
      v63[0] = v64;
      v63[1] = v65;
      v43 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
      v44 = sub_24ECB3C7C(v55, v38, v63);
      v45 = v58;
      sub_24ECB3F40(v58);

      v46 = 0;
      v47 = v61;
    }

    else
    {
      sub_24E951D6C(&v64);
      v46 = 1;
      v47 = v61;
      v45 = v58;
    }

    v48 = sub_24F9285B8();
    (*(*(v48 - 8) + 8))(v33, v48);
    v56(v35, v11);
    v49 = v60;
    (*(v60 + 56))(v45, v46, 1, v47);
    v50 = v59;
    sub_24E6009C8(v45, v59, &qword_27F215340, &qword_24F943530);
    if ((*(v49 + 48))(v50, 1, v47) == 1)
    {
      sub_24E601704(v50, &qword_27F215340, &qword_24F943530);
      v51 = 2;
      v52 = v62;
    }

    else
    {
      v53 = *(v49 + 32);
      v54 = v57;
      v53(v57, v50, v47);
      v52 = v62;
      v53(v62, v54, v47);
      v51 = 0;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v52;
    v31 = v51;
    return v29(v30, v31, 2, v28);
  }

  v27 = sub_24F9285B8();
  (*(*(v27 - 8) + 8))(a2, v27);
  v22(a1, v11);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v29 = *(*(v28 - 8) + 56);
  v30 = a3;
LABEL_9:
  v31 = 2;
  return v29(v30, v31, 2, v28);
}

uint64_t EditorialStoryCard.__allocating_init(deserializing:using:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  EditorialStoryCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *EditorialStoryCard.init(deserializing:using:)(uint64_t a1, char *a2)
{
  v199 = a2;
  v174 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v4 - 8);
  v184 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v182 = &v164 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236AF0, &qword_24F9BB800);
  MEMORY[0x28223BE20](v8 - 8);
  v181 = &v164 - v9;
  v178 = type metadata accessor for EditorialStoryCard.Badge(0);
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v180 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v186 = &v164 - v12;
  v188 = sub_24F92AC28();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v170 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v171 = &v164 - v15;
  v194 = sub_24F9285B8();
  v191 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v193 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v202 = &v164 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v19 - 8);
  v190 = (&v164 - v20);
  v21 = sub_24F91F6B8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F928388();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v183 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v179 = &v164 - v29;
  MEMORY[0x28223BE20](v30);
  v185 = &v164 - v31;
  MEMORY[0x28223BE20](v32);
  v189 = &v164 - v33;
  MEMORY[0x28223BE20](v34);
  v201 = &v164 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v164 - v37;
  v213 = v2;
  v173 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction) = 0;
  v198 = a1;
  sub_24F928398();
  v39 = sub_24F928348();
  v197 = v25;
  if (v40)
  {
    *&v203 = v39;
    *(&v203 + 1) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v22 + 8))(v24, v21);
    *&v203 = v41;
    *(&v203 + 1) = v43;
  }

  sub_24F92C7F8();
  v44 = *(v26 + 8);
  v195 = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v196 = v44;
  v44(v38, v25);
  v45 = v213 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_id;
  v46 = v209;
  *v45 = v208;
  *(v45 + 16) = v46;
  v172 = v45;
  *(v45 + 32) = v210;
  sub_24F929608();
  v47 = v198;
  sub_24F928398();
  v49 = v191 + 16;
  v48 = *(v191 + 16);
  v50 = v199;
  v51 = v194;
  v48(v202, v199, v194);
  v52 = v190;
  sub_24F929548();
  v53 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_impressionMetrics;
  v54 = v47;
  sub_24E6009C8(v52, v213 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v200 = v49;
  v48(v193, v50, v51);
  v55 = v189;
  v56 = v54;
  sub_24F928398();
  v176 = sub_24F928348();
  v58 = v57;
  v59 = v55;
  v60 = v197;
  v61 = v196;
  v196(v59, v197);
  v190 = v58;
  if (!v58)
  {
    v84 = sub_24F92AC38();
    sub_24EFF5EF4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v85 = 0x656C746974;
    v85[1] = 0xE500000000000000;
    v85[2] = v174;
    (*(*(v84 - 8) + 104))(v85, *MEMORY[0x277D22530], v84);
    swift_willThrow();
    v86 = *(v191 + 8);
    v86(v199, v51);
    v61(v56, v60);
    v86(v193, v51);
    v87 = v213;
LABEL_8:

    sub_24E6585F8(v172);
    sub_24E601704(v87 + v53, &qword_27F213E68, &unk_24F93BC80);
    type metadata accessor for EditorialStoryCard(0);
    swift_deallocPartialClassInstance();
    return v87;
  }

  v165 = v53;
  v62 = v201;
  sub_24F928398();
  v63 = v202;
  v64 = v199;
  v48(v202, v199, v51);
  sub_24EFF5EA0();
  sub_24F929548();
  *(v213 + 1) = v208;
  v65 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v48(v63, v64, v51);
  v175 = sub_24EFF5EF4(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v189 = v65;
  sub_24F929548();
  v169 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork;
  v66 = v213;
  *(v213 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork) = v208;
  v67 = type metadata accessor for Video(0);
  sub_24F928398();
  v68 = v51;
  v48(v63, v199, v51);
  v167 = sub_24EFF5EF4(&qword_27F221590, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v168 = v67;
  sub_24F929548();
  v166 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video;
  v69 = v66;
  *(v66 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_video) = v208;
  sub_24F928398();
  v70 = v48;
  v71 = sub_24F928278();
  v72 = v62;
  v73 = v197;
  v74 = v196;
  v196(v72, v197);
  *(v69 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isMediaDark) = v71;
  v75 = v185;
  sub_24F928398();
  v76 = v186;
  sub_24F9282B8();
  v74(v75, v73);
  v77 = v76;
  v78 = v187;
  v79 = v76;
  v80 = v188;
  if ((*(v187 + 48))(v79, 1, v188) == 1)
  {
    sub_24E601704(v77, &qword_27F2213B0, &qword_24F965EC0);
    v81 = 0;
    v82 = v193;
    v83 = v70;
  }

  else
  {
    v88 = v171;
    (*(v78 + 32))(v171, v77, v80);
    v89 = v202;
    v83 = v70;
    (*(v78 + 16))(v170, v88, v80);
    v82 = v193;
    v70(v89, v193, v68);
    v90 = sub_24F92B6A8();
    v91 = v78;
    v81 = v90;
    (*(v91 + 8))(v88, v80);
  }

  v87 = v213;
  *(v213 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons) = v81;
  type metadata accessor for Lockup(0);
  v92 = v198;
  sub_24F928398();
  v192 = v83;
  v83(v202, v82, v68);
  sub_24EFF5EF4(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  sub_24F929548();
  v93 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup;
  *(v87 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_lockup) = v208;
  if (!*(v87 + v169) && !*(v87 + v166))
  {
    v159 = *(v87 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
    if (v159)
    {
      if (v159 >> 62)
      {
        if (sub_24F92C738())
        {
          goto LABEL_12;
        }
      }

      else if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      if (!*(v87 + v93))
      {

        v160 = sub_24F92AC38();
        sub_24EFF5EF4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
        swift_allocError();
        *v161 = 0x6B726F77747261;
        v161[1] = 0xE700000000000000;
        v161[2] = v174;
        (*(*(v160 - 8) + 104))(v161, *MEMORY[0x277D22530], v160);
        swift_willThrow();
        v162 = *(v191 + 8);
        v163 = v194;
        v162(v199, v194);
        v196(v92, v197);
        v162(v193, v163);
        sub_24EA4FAF8(v87[2]);

        v53 = v165;
        goto LABEL_8;
      }
    }
  }

LABEL_12:
  sub_24F928398();
  v192(v202, v193, v194);
  sub_24EFF5EF4(&qword_27F236B00, type metadata accessor for EditorialStoryCard.Badge, &protocol conformance descriptor for EditorialStoryCard.Badge);
  v94 = v181;
  v95 = v178;
  sub_24F929548();
  v96 = *(v177 + 48);
  if (v96(v94, 1, v95) == 1)
  {
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
    v98 = v180;
    (*(*(v97 - 8) + 56))(v180, 2, 2, v97);
    if (v96(v94, 1, v95) != 1)
    {
      sub_24E601704(v94, &qword_27F236AF0, &qword_24F9BB800);
    }
  }

  else
  {
    v98 = v180;
    sub_24EFF5F3C(v94, v180);
  }

  sub_24EFF5F3C(v98, v87 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge);
  v99 = objc_opt_self();
  v100 = [v99 systemFontOfSize_];
  v101 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v102 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v103 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v208 = 10;
  *(&v208 + 1) = 0xE100000000000000;
  *&v209 = v100;
  *(&v209 + 1) = v101;
  *&v210 = 161644770;
  *(&v210 + 1) = 0xA400000000000000;
  *&v211 = v102;
  *(&v211 + 1) = 606245;
  *&v212 = 0xE300000000000000;
  *(&v212 + 1) = v103;
  v104 = type metadata accessor for NqmlAttributedStringGenerator(0);
  v105 = objc_allocWithZone(v104);
  v106 = sub_24ECB3C7C(v176, v190, &v208);
  v107 = v182;
  sub_24ECB3F40(v182);

  v108 = sub_24F91F008();
  v190 = *(*(v108 - 8) + 56);
  (v190)(v107, 0, 1, v108);
  sub_24E6009C8(v107, v87 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, &qword_27F215340, &qword_24F943530);
  v109 = v179;
  sub_24F928398();
  v188 = sub_24F928348();
  v111 = v110;
  v196(v109, v197);
  v112 = [v99 systemFontOfSize_];
  v113 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v114 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v115 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v208 = 10;
  *(&v208 + 1) = 0xE100000000000000;
  *&v209 = v112;
  *(&v209 + 1) = v113;
  *&v210 = 161644770;
  *(&v210 + 1) = 0xA400000000000000;
  *&v211 = v114;
  *(&v211 + 1) = 606245;
  *&v212 = 0xE300000000000000;
  *(&v212 + 1) = v115;
  if (v111)
  {
    v205 = v210;
    v206 = v211;
    v207 = v212;
    v203 = v208;
    v204 = v209;
    v116 = objc_allocWithZone(v104);
    v117 = sub_24ECB3C7C(v188, v111, &v203);
    v118 = v184;
    sub_24ECB3F40(v184);

    v119 = 0;
    v120 = v199;
    v121 = v201;
  }

  else
  {
    sub_24E951D6C(&v208);
    v119 = 1;
    v120 = v199;
    v121 = v201;
    v118 = v184;
  }

  (v190)(v118, v119, 1, v108);
  v122 = v213;
  sub_24E6009C8(v118, v213 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &qword_27F215340, &qword_24F943530);
  v123 = v198;
  sub_24F928398();
  v124 = v202;
  v125 = v120;
  v126 = v194;
  v127 = v120;
  v128 = v192;
  v192(v202, v125, v194);
  sub_24F929548();
  *(v122 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeArtwork) = v203;
  sub_24F928398();
  v128(v124, v127, v126);
  sub_24F929548();
  *(v122 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_landscapeVideo) = v203;
  sub_24F928398();
  LOBYTE(v127) = sub_24F928278();
  v129 = v197;
  v130 = v196;
  v196(v121, v197);
  *(v122 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isLandscapeMediaDark) = v127;
  v131 = v183;
  sub_24F928398();
  LOBYTE(v127) = sub_24F928278();
  v132 = v129;
  v133 = v202;
  v130(v131, v132);
  v134 = v123;
  v135 = v201;
  v136 = v127 & 1;
  v137 = v122;
  *(v122 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_isArticle3DIconsFallbackEnabled) = v136;
  sub_24F928398();
  v138 = v193;
  v192(v133, v193, v194);
  sub_24E951DC0();
  sub_24F929548();
  v139 = v203 | ((WORD2(v203) | (BYTE6(v203) << 16)) << 32);
  if (v203 == 2)
  {
    v140 = v191;
    if (qword_27F2110F8 != -1)
    {
      swift_once();
    }

    LOBYTE(v139) = dword_27F23E728;
    LOBYTE(v141) = BYTE1(dword_27F23E728);
    LOBYTE(v142) = BYTE2(dword_27F23E728);
    LOBYTE(v143) = HIBYTE(dword_27F23E728);
    LOBYTE(v144) = byte_27F23E72C;
    LOBYTE(v145) = byte_27F23E72D;
    LOBYTE(v146) = byte_27F23E72E;
  }

  else
  {
    v141 = (v139 >> 8) & 1;
    v142 = (v139 >> 16) & 1;
    v143 = (v139 >> 24) & 1;
    v144 = HIDWORD(v139) & 1;
    v145 = (v139 >> 40) & 1;
    v146 = HIWORD(v139) & 1;
    v140 = v191;
  }

  v147 = v199;
  v148 = v137 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions;
  *v148 = v139 & 1;
  v148[1] = v141;
  v148[2] = v142;
  v148[3] = v143;
  v148[4] = v144;
  v148[5] = v145;
  v148[6] = v146;
  sub_24F928398();
  v149 = v194;
  v192(v133, v138, v194);
  sub_24EAFF164(v135, v133, &v203);
  v150 = v205;
  v151 = v137 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  v152 = v204;
  *v151 = v203;
  *(v151 + 16) = v152;
  *(v151 + 32) = v150;
  type metadata accessor for Action(0);
  sub_24F928398();
  v153 = static Action.tryToMakeInstance(byDeserializing:using:)(v135, v138);
  v154 = *(v140 + 8);
  v154(v147, v149);
  v155 = v197;
  v156 = v196;
  v196(v134, v197);
  v156(v135, v155);
  v87 = v213;
  v154(v138, v149);
  v157 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction;
  swift_beginAccess();
  *(v87 + v157) = v153;

  return v87;
}

void EditorialStoryCard.editorialDisplayOptions.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 1);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 2);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 3);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 4);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 5);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions + 6);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
}

double sub_24EFF53F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 32);
  *(a2 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EFF545C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(v6 + 8);
  v12 = *v6;
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v11 = *(v6 + 32);
  *(v6 + 32) = v7;
  sub_24E951F10(v2, v3, v4, v5, v7);
  sub_24E951FEC(v12, v8, v9, v10, v11);
}

double sub_24EFF551C@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

__n128 sub_24EFF5580(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v9;
  v10 = *(v4 + 32);
  *(v4 + 32) = v3;
  sub_24E951FEC(v5, v6, v7, v8, v10);
  return result;
}

double sub_24EFF5650(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_24EFF5700(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t EditorialStoryCard.deinit()
{
  sub_24EA4FAF8(*(v0 + 16));
  sub_24EFF6004(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_badge);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_title, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_description, &qword_27F215340, &qword_24F943530);

  sub_24E951FEC(*(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground), *(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground + 32));

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t EditorialStoryCard.__deallocating_deinit()
{
  EditorialStoryCard.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_24EFF59C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for EditorialStoryCard(0);
  v7 = swift_allocObject();
  result = EditorialStoryCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EFF5A8C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_shelfBackground;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_24E951F10(v4, v5, v6, v7, v8);
}

void sub_24EFF5AF4(_BYTE *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_editorialDisplayOptions);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v2) = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v2;
}

uint64_t _s12GameStoreKit18EditorialStoryCardC5BadgeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditorialStoryCard.Badge(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236B38, &unk_24F9D3490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_24EFF5FA0(a1, &v22 - v12);
  sub_24EFF5FA0(a2, &v13[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    sub_24EFF5FA0(v13, v10);
    if (!v17(&v13[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = sub_24F91EED8();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_24EFF6004(v13);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v13[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v13[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_24E601704(v13, &qword_27F236B38, &unk_24F9D3490);
    v19 = 0;
    return v19 & 1;
  }

  sub_24EFF6004(v13);
  v19 = 1;
  return v19 & 1;
}

unint64_t sub_24EFF5EA0()
{
  result = qword_27F236AF8;
  if (!qword_27F236AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236AF8);
  }

  return result;
}

uint64_t sub_24EFF5EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFF5F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialStoryCard.Badge(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFF5FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialStoryCard.Badge(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFF6004(uint64_t a1)
{
  v2 = type metadata accessor for EditorialStoryCard.Badge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EFF60B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_clickAction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24EFF6118(uint64_t a1)
{
  type metadata accessor for EditorialStoryCard.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
    if (v2 <= 0x3F)
    {
      sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24EFF641C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EFF64A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24EFF6538(uint64_t a1)
{
  sub_24EFF6590();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24EFF6590()
{
  if (!qword_27F236B30)
  {
    v0 = sub_24F91F008();
    if (!v1)
    {
      atomic_store(v0, &qword_27F236B30);
    }
  }
}

uint64_t sub_24EFF65EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EFF666C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CancelSignInAction(uint64_t a1)
{
  result = qword_27F236B40;
  if (!qword_27F236B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EFF6728@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236B50, &qword_24F9BBAD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CancelSignInAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EFF6B88();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24EFF6BDC(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EFF6994(uint64_t a1)
{
  v2 = sub_24EFF6B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFF69D0(uint64_t a1)
{
  v2 = sub_24EFF6B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFF6A24(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236B60, &qword_24F9BBAD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EFF6B88();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EFF6B88()
{
  result = qword_27F236B58;
  if (!qword_27F236B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B58);
  }

  return result;
}

uint64_t sub_24EFF6BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancelSignInAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EFF6C54()
{
  result = qword_27F236B68;
  if (!qword_27F236B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B68);
  }

  return result;
}

unint64_t sub_24EFF6CAC()
{
  result = qword_27F236B70;
  if (!qword_27F236B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B70);
  }

  return result;
}

unint64_t sub_24EFF6D04()
{
  result = qword_27F236B78;
  if (!qword_27F236B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B78);
  }

  return result;
}

uint64_t AutoScrollConfiguration.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_24F928398();
  v17 = sub_24F928278();
  v34 = v17;
  v35 = v17;
  v18 = *(v5 + 8);
  v18(v16, v4);
  sub_24F928398();
  v33 = sub_24F928308();
  v32 = v19;
  v18(v13, v4);
  sub_24F928398();
  v31 = sub_24F928308();
  v21 = v20;
  v18(v10, v4);
  sub_24F928398();
  v22 = sub_24F928308();
  v24 = v23;
  v25 = sub_24F9285B8();
  (*(*(v25 - 8) + 8))(v36, v25);
  v18(a1, v4);
  result = (v18)(v7, v4);
  v27 = *&v33;
  if (v32)
  {
    v27 = 7.0;
  }

  v28 = *&v31;
  if (v21)
  {
    v28 = 3.0;
  }

  v29 = *&v22;
  v30 = v37;
  *v37 = (v34 == 2) | v35 & 1;
  if (v24)
  {
    v29 = 30.0;
  }

  v30[1] = v27;
  v30[2] = v29;
  v30[3] = v28;
  return result;
}

GameStoreKit::AutoScrollConfiguration __swiftcall AutoScrollConfiguration.init(isAutoScrollEnabled:autoScrollInterval:autoScrollRestartDelay:autoScrollMaxInterval:)(Swift::Bool_optional isAutoScrollEnabled, Swift::Double_optional autoScrollInterval, Swift::Double_optional autoScrollRestartDelay, Swift::Double_optional autoScrollMaxInterval)
{
  v8 = *&autoScrollInterval.is_nil;
  if (autoScrollRestartDelay.is_nil)
  {
    v8 = 7.0;
  }

  v9 = *&autoScrollMaxInterval.is_nil;
  if (v4)
  {
    v9 = 3.0;
  }

  v10 = v5;
  *v7 = isAutoScrollEnabled.value == 2 || isAutoScrollEnabled.value;
  if (v6)
  {
    v10 = 30.0;
  }

  *(v7 + 8) = v8;
  *(v7 + 16) = v10;
  *(v7 + 24) = v9;
  result.autoScrollRestartDelay = v10;
  result.autoScrollMaxInterval = v9;
  result.autoScrollInterval = v8;
  result.isAutoScrollEnabled = isAutoScrollEnabled.value;
  return result;
}

uint64_t AutoScrollConfiguration.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_24F92D088();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x253052A30](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x253052A30](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  return MEMORY[0x253052A30](*&v6);
}

uint64_t AutoScrollConfiguration.hashValue.getter()
{
  sub_24F92D068();
  AutoScrollConfiguration.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EFF71B4()
{
  sub_24F92D068();
  AutoScrollConfiguration.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EFF7214()
{
  sub_24F92D068();
  AutoScrollConfiguration.hash(into:)();
  return sub_24F92D0B8();
}

BOOL _s12GameStoreKit23AutoScrollConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return a1[3] == a2[3];
  }

  return result;
}

unint64_t sub_24EFF72B4()
{
  result = qword_27F236B80;
  if (!qword_27F236B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B80);
  }

  return result;
}

uint64_t sub_24EFF7308(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
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

uint64_t sub_24EFF735C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t AnyAnnotationItem.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_24EFF7418()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t LinkableTextAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928388();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  sub_24F91F6A8();
  v20 = a1;
  sub_24F928398();
  (*(v7 + 16))(v9, a2, v6);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v13 = v18[1];
  v14 = LinkableText.init(deserializing:using:)(v12, v9);
  if (v13)
  {
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    v15 = sub_24F91F6B8();
    return (*(*(v15 - 8) + 8))(v21, v15);
  }

  else
  {
    v17 = v14;
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    result = type metadata accessor for LinkableTextAnnotationItem(0);
    *(v21 + *(result + 20)) = v17;
  }

  return result;
}

uint64_t sub_24EFF7748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[0] = a3;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F928388();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  sub_24F91F6A8();
  v21 = a1;
  sub_24F928398();
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v14 = v19[1];
  v15 = LinkableText.init(deserializing:using:)(v13, v10);
  if (v14)
  {
    (*(v8 + 8))(a2, v7);
    (*(v11 + 8))(v21, v20);
    v16 = sub_24F91F6B8();
    return (*(*(v16 - 8) + 8))(v22, v16);
  }

  else
  {
    v18 = v15;
    (*(v8 + 8))(a2, v7);
    result = (*(v11 + 8))(v21, v20);
    *(v22 + *(v19[0] + 20)) = v18;
  }

  return result;
}

uint64_t ButtonAnnotationItem.init(action:leadingArtwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F91F6A8();
  result = type metadata accessor for ButtonAnnotationItem(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t ButtonAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = sub_24F9285B8();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v23 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v27 = a3;
  sub_24F91F6A8();
  type metadata accessor for Action(0);
  sub_24F928398();
  v14 = v25;
  v15 = static Action.makeInstance(byDeserializing:using:)(v13, a2);
  if (v14)
  {
    (*(v6 + 8))(a2, v26);
    v16 = *(v9 + 8);
    v16(a1, v8);
    v16(v13, v8);
    v17 = sub_24F91F6B8();
    return (*(*(v17 - 8) + 8))(v27, v17);
  }

  else
  {
    v19 = v15;
    v25 = *(v9 + 8);
    v25(v13, v8);
    v22 = type metadata accessor for ButtonAnnotationItem(0);
    *(v27 + *(v22 + 20)) = v19;
    v21[1] = type metadata accessor for Artwork(0);
    sub_24F928398();
    v20 = v26;
    (*(v6 + 16))(v24, a2, v26);
    sub_24EFF8274(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    (*(v6 + 8))(a2, v20);
    result = (v25)(a1, v8);
    *(v27 + *(v22 + 24)) = v28;
  }

  return result;
}

uint64_t sub_24EFF7DC4(void (*a1)(void))
{
  a1(0);
}

uint64_t ButtonAnnotationItem.leadingArtwork.getter()
{
  type metadata accessor for ButtonAnnotationItem(0);
}

uint64_t TextPairAnnotationItem.init(leadingText:trailingText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24F91F6A8();
  result = type metadata accessor for TextPairAnnotationItem(0);
  v11 = (a5 + *(result + 20));
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t TextPairAnnotationItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v34 = a3;
  sub_24F91F6A8();
  v33 = type metadata accessor for TextPairAnnotationItem(0);
  v12 = 0xEB00000000747865;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v11, v5);
  if (v15)
  {
    v17 = (v34 + *(v33 + 20));
    *v17 = v13;
    v17[1] = v15;
    v12 = 0xEC00000074786554;
    sub_24F928398();
    v18 = sub_24F928348();
    v20 = v19;
    v16(v8, v5);
    if (v20)
    {
      v21 = sub_24F9285B8();
      (*(*(v21 - 8) + 8))(v32, v21);
      result = (v16)(a1, v5);
      v23 = (v34 + *(v33 + 24));
      *v23 = v18;
      v23[1] = v20;
      return result;
    }

    v24 = 0x676E696C69617274;
  }

  else
  {
    v24 = 0x54676E696461656CLL;
  }

  v31 = v15;
  v25 = v33;
  v26 = sub_24F92AC38();
  sub_24EFF8274(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v27 = v24;
  v27[1] = v12;
  v27[2] = v25;
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
  swift_willThrow();
  v28 = sub_24F9285B8();
  (*(*(v28 - 8) + 8))(v32, v28);
  v16(a1, v5);
  v29 = sub_24F91F6B8();
  result = (*(*(v29 - 8) + 8))(v34, v29);
  if (v31)
  {
  }

  return result;
}

uint64_t sub_24EFF8274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TextPairAnnotationItem.trailingText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextPairAnnotationItem(0) + 24));

  return v1;
}

uint64_t TextEncapsulationAnnotationItem.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F91F6A8();
  result = type metadata accessor for TextEncapsulationAnnotationItem(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t TextEncapsulationAnnotationItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  v9 = type metadata accessor for TextEncapsulationAnnotationItem(0);
  sub_24F928398();
  v10 = sub_24F928348();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v8, v5);
  if (v12)
  {
    v14 = sub_24F9285B8();
    (*(*(v14 - 8) + 8))(v22, v14);
    result = (v13)(a1, v5);
    v16 = (a3 + *(v9 + 20));
    *v16 = v10;
    v16[1] = v12;
  }

  else
  {
    v17 = sub_24F92AC38();
    sub_24EFF8274(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v18 = 1954047348;
    v18[1] = 0xE400000000000000;
    v18[2] = v9;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    v19 = sub_24F9285B8();
    (*(*(v19 - 8) + 8))(v22, v19);
    v13(a1, v5);
    v20 = sub_24F91F6B8();
    return (*(*(v20 - 8) + 8))(a3, v20);
  }

  return result;
}

uint64_t sub_24EFF8664(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_24EFF86DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_24F91F6A8();
  result = a2(0);
  *(a3 + *(result + 20)) = a1;
  return result;
}

uint64_t ArtworkAnnotationItem.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928388();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  sub_24F91F6A8();
  type metadata accessor for Artwork(0);
  v20 = a1;
  sub_24F928398();
  (*(v7 + 16))(v9, a2, v6);
  v13 = v18[1];
  v14 = Artwork.__allocating_init(deserializing:using:)(v12, v9);
  if (v13)
  {
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    v15 = sub_24F91F6B8();
    return (*(*(v15 - 8) + 8))(v21, v15);
  }

  else
  {
    v17 = v14;
    (*(v7 + 8))(a2, v6);
    (*(v10 + 8))(v20, v19);
    result = type metadata accessor for ArtworkAnnotationItem(0);
    *(v21 + *(result + 20)) = v17;
  }

  return result;
}

uint64_t sub_24EFF89C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v21 = a2;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928388();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  sub_24F91F6A8();
  type metadata accessor for Artwork(0);
  v13 = a1;
  v14 = v21;
  sub_24F928398();
  (*(v7 + 16))(v9, v14, v6);
  v15 = v22;
  v16 = Artwork.__allocating_init(deserializing:using:)(v12, v9);
  if (v15)
  {
    (*(v7 + 8))(v14, v6);
    (*(v10 + 8))(v13, v23);
    v17 = sub_24F91F6B8();
    return (*(*(v17 - 8) + 8))(v24, v17);
  }

  else
  {
    v19 = v16;
    (*(v7 + 8))(v14, v6);
    result = (*(v10 + 8))(v13, v23);
    *(v24 + *(v20 + 20)) = v19;
  }

  return result;
}

GameStoreKit::SpacerAnnotationItem::Size_optional __swiftcall SpacerAnnotationItem.Size.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t SpacerAnnotationItem.Size.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_24EFF8CD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EFF8D7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EFF8DFC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EFF8E68()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EFF8EE4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

  *a2 = v5;
  return result;
}

void sub_24EFF8F44(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SpacerAnnotationItem.init(size:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_24F91F6A8();
  result = type metadata accessor for SpacerAnnotationItem(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t SpacerAnnotationItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F91F6A8();
  sub_24F928398();
  sub_24EFF916C();
  sub_24F928208();
  v10 = sub_24F9285B8();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v7 + 8);
  v11(a1, v6);
  v11(v9, v6);
  v12 = v14[15];
  result = type metadata accessor for SpacerAnnotationItem(0);
  *(a3 + *(result + 20)) = v12;
  return result;
}

unint64_t sub_24EFF916C()
{
  result = qword_27F236B88;
  if (!qword_27F236B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236B88);
  }

  return result;
}

uint64_t SpacerAnnotationItem.size.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpacerAnnotationItem(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_24EFF923C(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236B90, type metadata accessor for LinkableTextAnnotationItem, &protocol conformance descriptor for LinkableTextAnnotationItem);
  result = sub_24EFF8274(&qword_27F236B98, type metadata accessor for LinkableTextAnnotationItem, &protocol conformance descriptor for LinkableTextAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EFF92C0(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236BA0, type metadata accessor for ButtonAnnotationItem, &protocol conformance descriptor for ButtonAnnotationItem);
  result = sub_24EFF8274(&qword_27F236BA8, type metadata accessor for ButtonAnnotationItem, &protocol conformance descriptor for ButtonAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EFF9344(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236BB0, type metadata accessor for TextPairAnnotationItem, &protocol conformance descriptor for TextPairAnnotationItem);
  result = sub_24EFF8274(&qword_27F236BB8, type metadata accessor for TextPairAnnotationItem, &protocol conformance descriptor for TextPairAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EFF93C8(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236BC0, type metadata accessor for TextEncapsulationAnnotationItem, &protocol conformance descriptor for TextEncapsulationAnnotationItem);
  result = sub_24EFF8274(&qword_27F236BC8, type metadata accessor for TextEncapsulationAnnotationItem, &protocol conformance descriptor for TextEncapsulationAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EFF944C(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236BD0, type metadata accessor for ArtworkAnnotationItem, &protocol conformance descriptor for ArtworkAnnotationItem);
  result = sub_24EFF8274(&qword_27F236BD8, type metadata accessor for ArtworkAnnotationItem, &protocol conformance descriptor for ArtworkAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EFF94D4()
{
  result = qword_27F236BE0;
  if (!qword_27F236BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236BE0);
  }

  return result;
}

uint64_t sub_24EFF9528(uint64_t a1)
{
  *(a1 + 8) = sub_24EFF8274(&qword_27F236BE8, type metadata accessor for SpacerAnnotationItem, &protocol conformance descriptor for SpacerAnnotationItem);
  result = sub_24EFF8274(&qword_27F236BF0, type metadata accessor for SpacerAnnotationItem, &protocol conformance descriptor for SpacerAnnotationItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EFF95AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  sub_24F928398();
  sub_24EFF916C();
  sub_24F928208();
  v12 = sub_24F9285B8();
  (*(*(v12 - 8) + 8))(a2, v12);
  v13 = *(v9 + 8);
  v13(a1, v8);
  result = (v13)(v11, v8);
  *(a4 + *(a3 + 20)) = v16;
  return result;
}

void sub_24EFF97D4(uint64_t a1)
{
  sub_24F91F6B8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Action(319);
    if (v2 <= 0x3F)
    {
      sub_24EFF9870(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EFF9870(uint64_t a1)
{
  if (!qword_27F22E600)
  {
    type metadata accessor for Artwork(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22E600);
    }
  }
}

uint64_t sub_24EFF98F8(uint64_t a1)
{
  result = sub_24F91F6B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24EFF9CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_24F91F6B8();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EFF9D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EFF9E44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24EFF9F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DebugMetricsEvent.KeyValuePair.init(key:valueTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DebugMetricsEvent.init(lintedEvent:topic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24F91F6A8();
  v8 = sub_24F929738();
  v9 = type metadata accessor for DebugMetricsEvent(0);
  *(a4 + v9[5]) = v8;
  v10 = sub_24F929748();
  v11 = sub_24F929758();
  result = (*(*(v11 - 8) + 8))(a1, v11);
  *(a4 + v9[6]) = v10;
  v13 = (a4 + v9[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t type metadata accessor for DebugMetricsEvent(uint64_t a1)
{
  result = qword_27F236C68;
  if (!qword_27F236C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DebugMetricsEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F6B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double DebugMetricsEvent.fields.getter()
{
  type metadata accessor for DebugMetricsEvent(0);

  return result;
}

double DebugMetricsEvent.issues.getter()
{
  type metadata accessor for DebugMetricsEvent(0);

  return result;
}

uint64_t DebugMetricsEvent.topic.getter()
{
  v1 = *(v0 + *(type metadata accessor for DebugMetricsEvent(0) + 28));

  return v1;
}

uint64_t sub_24EFFA1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  if (*(v9 + 16) && (v10 = sub_24E76D644(a1, a2), (v11 & 1) != 0))
  {
    sub_24E643A9C(*(v9 + 56) + 32 * v10, v15);
    sub_24E612B0C(v15, v16);
    a3(v16);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = sub_24F929458();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t DebugMetricsEvent.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(v3 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  if (*(v9 + 16) && (v10 = sub_24E76D644(v6, v7), (v11 & 1) != 0))
  {
    sub_24E643A9C(*(v9 + 56) + 32 * v10, v14);
    sub_24E612B0C(v14, v15);
    v8(v15);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = *(*(a2 - 8) + 56);

    return v13(a3, 1, 1, a2);
  }
}

uint64_t DebugMetricsEvent.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_24F92C4A8();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(v4 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  if (*(v15 + 16) && (v16 = sub_24E76D644(v12, v13), (v17 & 1) != 0))
  {
    sub_24E643A9C(*(v15 + 56) + 32 * v16, v24);
    sub_24E612B0C(v24, v25);
    v14(v25);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v18 = *(a3 - 8);
    v19 = *(v18 + 48);
    if (v19(v11, 1, a3) == 1)
    {
      (*(v18 + 16))(a4, a2, a3);
      result = v19(v11, 1, a3);
      if (result != 1)
      {
        return (*(v23 + 8))(v11, v9);
      }
    }

    else
    {
      return (*(v18 + 32))(a4, v11, a3);
    }
  }

  else
  {
    v21 = *(*(a3 - 8) + 16);

    return v21(a4, a2, a3);
  }

  return result;
}

uint64_t DebugMetricsEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210E60 != -1)
  {
    swift_once();
  }

  v4 = qword_27F39D5E8;
  v3 = unk_27F39D5F0;
  v5 = qword_27F39D5F8;
  v6 = *(v1 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_24E76D644(v4, v3), (v9 & 1) != 0))
  {
    sub_24E643A9C(*(v6 + 56) + 32 * v8, v12);
    sub_24E612B0C(v12, v13);
    v5(v13);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = sub_24F91F648();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t DebugMetricsEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210DF0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F39D428;
  v3 = unk_27F39D430;
  v5 = qword_27F39D438;
  v6 = *(v1 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_24E76D644(v4, v3), (v9 & 1) != 0))
  {
    sub_24E643A9C(*(v6 + 56) + 32 * v8, v12);
    sub_24E612B0C(v12, v13);
    v5(v13);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = sub_24F929458();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t DebugMetricsEvent.description.getter()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_24F92B138();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = objc_opt_self();
  type metadata accessor for DebugMetricsEvent(0);
  v2 = sub_24F92AE28();
  v14[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:1 error:v14];

  v4 = v14[0];
  if (v3)
  {
    v5 = sub_24F91F4E8();
    v7 = v6;

    sub_24F92B128();
    v8 = sub_24F92B0F8();
    v10 = v9;
    sub_24E627880(v5, v7);
    if (v10)
    {
      return v8;
    }
  }

  else
  {
    v12 = v4;
    v13 = sub_24F91F278();

    swift_willThrow();
  }

  return DebugMetricsEvent.description.getter();
}

uint64_t DebugMetricsEvent.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  if (qword_27F210DF0 != -1)
  {
    swift_once();
  }

  v3 = qword_27F39D428;
  v4 = unk_27F39D430;
  v5 = qword_27F39D438;

  sub_24EFFA1D4(v3, v4, v5, v2);

  v6 = sub_24F929458();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_24E601704(v2, &qword_27F220998, &qword_24F964950);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    v9 = sub_24F929448();
    (*(v7 + 8))(v2, v6);
    return v9;
  }
}

unint64_t DebugMetricsEvent.iconSymbol.getter()
{
  v0 = sub_24F929458();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  if (qword_27F210DF0 != -1)
  {
    swift_once();
  }

  v10 = qword_27F39D428;
  v11 = unk_27F39D430;
  v12 = qword_27F39D438;

  sub_24EFFA1D4(v10, v11, v12, v9);

  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    sub_24EFFD1E0(v9, v6);
    if (qword_27F210E68 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_27F39D608);
    sub_24EFFD320(&qword_27F21BD08, MEMORY[0x277D21E98], MEMORY[0x277D21EA8]);
    if (sub_24F92AFF8())
    {
      (*(v1 + 8))(v6, v0);
      v14 = 1702326128;
    }

    else
    {
      sub_24F9293F8();
      v15 = sub_24F92AFF8();
      v16 = *(v1 + 8);
      v16(v3, v0);
      if (v15)
      {
        v16(v6, v0);
        v13 = 0x7061742E646E6168;
        goto LABEL_28;
      }

      sub_24F929408();
      v17 = sub_24F92AFF8();
      v16(v3, v0);
      if (v17)
      {
        v16(v6, v0);
        v13 = 0x657369726E7573;
        goto LABEL_28;
      }

      sub_24F9293D8();
      v18 = sub_24F92AFF8();
      v16(v3, v0);
      if (v18)
      {
        v16(v6, v0);
        v13 = 0x7A7A7A2E6E6F6F6DLL;
        goto LABEL_28;
      }

      sub_24F9293C8();
      v19 = sub_24F92AFF8();
      v16(v3, v0);
      if (v19)
      {
        v16(v6, v0);
        v13 = 6650213;
        goto LABEL_28;
      }

      sub_24F929418();
      v20 = sub_24F92AFF8();
      v16(v3, v0);
      if (v20)
      {
        v16(v6, v0);
        v13 = 0x6F65646976;
        goto LABEL_28;
      }

      sub_24F9293E8();
      v21 = sub_24F92AFF8();
      v16(v3, v0);
      if (v21)
      {
        v16(v6, v0);
        v13 = 6516580;
        goto LABEL_28;
      }

      if (qword_27F210E70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_27F39D620);
      if (sub_24F92AFF8())
      {
        v16(v6, v0);
        v13 = 0x6F642E776F727261;
        goto LABEL_28;
      }

      sub_24F929428();
      v22 = sub_24F92AFF8();
      v16(v3, v0);
      if (v22)
      {
        v16(v6, v0);
        v13 = 0x697966696E67616DLL;
        goto LABEL_28;
      }

      if (qword_27F210E78 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_27F39D638);
      v24 = sub_24F92AFF8();
      v16(v6, v0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = 1701669236;
    }

    v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    goto LABEL_28;
  }

LABEL_4:
  v13 = 1868983913;
LABEL_28:
  sub_24E601704(v9, &qword_27F220998, &qword_24F964950);
  return v13;
}

uint64_t DebugMetricsEvent.summaryInfo.getter()
{
  v1 = v0;
  v2 = sub_24F929458();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v102 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v101 - v9;
  if (qword_27F210DF0 != -1)
  {
    swift_once();
  }

  v11 = qword_27F39D428;
  v12 = unk_27F39D430;
  v13 = qword_27F39D438;

  sub_24EFFA1D4(v11, v12, v13, v10);

  v14 = (*(v3 + 48))(v10, 1, v2);
  v15 = v3;
  v16 = v1;
  v17 = v10;
  if (v14 == 1)
  {
    goto LABEL_4;
  }

  v101 = v10;
  v23 = v7;
  sub_24EFFD1E0(v10, v7);
  if (qword_27F210E68 != -1)
  {
    swift_once();
  }

  v24 = v2;
  __swift_project_value_buffer(v2, qword_27F39D608);
  sub_24EFFD320(&qword_27F21BD08, MEMORY[0x277D21E98], MEMORY[0x277D21EA8]);
  v25 = sub_24F92AFF8();
  v26 = v102;
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v27 = swift_allocObject();
    v28 = v27;
    *(v27 + 16) = xmmword_24F9479A0;
    if (qword_27F210E28 != -1)
    {
      v27 = swift_once();
    }

    v29 = qword_27F39D520;
    *(v28 + 32) = qword_27F39D508;
    *(v28 + 40) = unk_27F39D510;
    *(v28 + 56) = v29;
    *(v28 + 64) = 0xD000000000000014;
    *(v28 + 72) = 0x800000024FA44C30;
    *(v28 + 80) = sub_24EFFD250;
    *(v28 + 88) = 0;
    *(v28 + 96) = 0xD000000000000011;
    *(v28 + 104) = 0x800000024FA44C50;
    *(v28 + 112) = sub_24EFFD250;
    *(v28 + 120) = 0;
    MEMORY[0x28223BE20](v27);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v15 + 8))(v23, v2);
    goto LABEL_14;
  }

  sub_24F929408();
  v31 = sub_24F92AFF8();
  v34 = *(v15 + 8);
  v33 = (v15 + 8);
  v32 = v34;
  v34(v26, v2);
  if (v31 & 1) != 0 || (sub_24F9293D8(), v35 = sub_24F92AFF8(), v32(v26, v2), (v35))
  {
    v32(v23, v2);
    sub_24E601704(v101, &qword_27F220998, &qword_24F964950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    inited = swift_initStackObject();
    v37 = inited;
    *(inited + 16) = xmmword_24F93A400;
    if (qword_27F210E28 != -1)
    {
      inited = swift_once();
    }

    v38 = qword_27F39D520;
    *(v37 + 32) = qword_27F39D508;
    *(v37 + 40) = unk_27F39D510;
    *(v37 + 56) = v38;
    *(v37 + 64) = 1701869940;
    *(v37 + 72) = 0xE400000000000000;
    *(v37 + 80) = sub_24EFFD250;
    *(v37 + 88) = 0;
    MEMORY[0x28223BE20](inited);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD2B8, (&v101 - 4), v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
LABEL_22:
    swift_arrayDestroy();
    return v21;
  }

  sub_24F9293F8();
  v39 = sub_24F92AFF8();
  v32(v26, v2);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24F942000;
    if (qword_27F210E28 != -1)
    {
      swift_once();
    }

    v41 = qword_27F39D520;
    *(v40 + 32) = qword_27F39D508;
    *(v40 + 40) = unk_27F39D510;
    *(v40 + 56) = v41;
    v42 = qword_27F210E18;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_27F39D4E0;
    *(v40 + 64) = qword_27F39D4C8;
    *(v40 + 72) = unk_27F39D4D0;
    *(v40 + 88) = v43;
    v44 = qword_27F210E10;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = qword_27F39D4C0;
    *(v40 + 96) = qword_27F39D4A8;
    *(v40 + 104) = unk_27F39D4B0;
    *(v40 + 120) = v45;
    v46 = qword_27F210E00;

    if (v46 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v47 = qword_27F39D480;
    *(v40 + 128) = qword_27F39D468;
    *(v40 + 136) = unk_27F39D470;
    *(v40 + 152) = v47;
    v48 = qword_27F210DF8;

    if (v48 != -1)
    {
      v49 = swift_once();
    }

    v50 = qword_27F39D460;
    *(v40 + 160) = qword_27F39D448;
    *(v40 + 168) = unk_27F39D450;
    *(v40 + 184) = v50;
    MEMORY[0x28223BE20](v49);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_52;
  }

  sub_24F9293C8();
  v51 = sub_24F92AFF8();
  v32(v26, v2);
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_24F9479A0;
    if (qword_27F210E28 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v53 = qword_27F39D520;
    *(v52 + 32) = qword_27F39D508;
    *(v52 + 40) = unk_27F39D510;
    *(v52 + 56) = v53;
    v54 = qword_27F210E20;

    if (v54 != -1)
    {
      v55 = swift_once();
    }

    v56 = qword_27F39D500;
    *(v52 + 64) = qword_27F39D4E8;
    *(v52 + 72) = unk_27F39D4F0;
    *(v52 + 88) = v56;
    *(v52 + 96) = 0x6973736572706D69;
    *(v52 + 104) = 0xEB00000000736E6FLL;
    *(v52 + 112) = sub_24EFFCA58;
    *(v52 + 120) = 0;
    MEMORY[0x28223BE20](v55);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v52);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
LABEL_51:
    swift_arrayDestroy();
LABEL_52:
    v32(v23, v24);
LABEL_14:
    v22 = v101;
    goto LABEL_15;
  }

  sub_24F929418();
  v57 = sub_24F92AFF8();
  v32(v26, v2);
  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_24F93FC20;
    if (qword_27F210E28 != -1)
    {
      swift_once();
    }

    v59 = qword_27F39D520;
    *(v58 + 32) = qword_27F39D508;
    *(v58 + 40) = unk_27F39D510;
    *(v58 + 56) = v59;
    v60 = qword_27F210E00;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39D480;
    *(v58 + 64) = qword_27F39D468;
    *(v58 + 72) = unk_27F39D470;
    *(v58 + 88) = v61;
    v62 = qword_27F210DF8;

    if (v62 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v63 = qword_27F39D460;
    *(v58 + 96) = qword_27F39D448;
    *(v58 + 104) = unk_27F39D450;
    *(v58 + 120) = v63;
    v64 = qword_27F210E58;

    if (v64 != -1)
    {
      v65 = swift_once();
    }

    v66 = qword_27F39D5E0;
    *(v58 + 128) = qword_27F39D5C8;
    *(v58 + 136) = unk_27F39D5D0;
    *(v58 + 152) = v66;
    MEMORY[0x28223BE20](v65);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v58);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    goto LABEL_51;
  }

  sub_24F9293E8();
  v67 = sub_24F92AFF8();
  v32(v26, v2);
  if (v67)
  {
    goto LABEL_57;
  }

  if (qword_27F210E70 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39D620);
  if (sub_24F92AFF8())
  {
LABEL_57:
    v32(v23, v2);
    sub_24E601704(v101, &qword_27F220998, &qword_24F964950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_24F93A070;
    if (qword_27F210E28 != -1)
    {
      swift_once();
    }

    v69 = qword_27F39D520;
    *(v68 + 32) = qword_27F39D508;
    *(v68 + 40) = unk_27F39D510;
    *(v68 + 56) = v69;
    v70 = qword_27F210E20;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = qword_27F39D500;
    *(v68 + 64) = qword_27F39D4E8;
    *(v68 + 72) = unk_27F39D4F0;
    *(v68 + 88) = v71;
    v72 = qword_27F210E40;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = qword_27F39D580;
    *(v68 + 96) = qword_27F39D568;
    *(v68 + 104) = unk_27F39D570;
    *(v68 + 120) = v73;
    v74 = qword_27F210E38;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = qword_27F39D560;
    *(v68 + 128) = qword_27F39D548;
    *(v68 + 136) = unk_27F39D550;
    *(v68 + 152) = v75;
    v76 = qword_27F210E48;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = qword_27F39D5A0;
    *(v68 + 160) = qword_27F39D588;
    *(v68 + 168) = unk_27F39D590;
    *(v68 + 184) = v77;
    v78 = qword_27F210E30;

    if (v78 != -1)
    {
      v79 = swift_once();
    }

    v80 = qword_27F39D540;
    *(v68 + 192) = qword_27F39D528;
    *(v68 + 200) = unk_27F39D530;
    *(v68 + 216) = v80;
    MEMORY[0x28223BE20](v79);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v68);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    goto LABEL_22;
  }

  sub_24F929428();
  v81 = sub_24F92AFF8();
  v32(v26, v2);
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_24F942000;
    if (qword_27F210E50 != -1)
    {
      swift_once();
    }

    v83 = qword_27F39D5C0;
    *(v82 + 32) = qword_27F39D5A8;
    *(v82 + 40) = unk_27F39D5B0;
    *(v82 + 56) = v83;
    v84 = qword_27F210E00;

    if (v84 != -1)
    {
      swift_once();
    }

    v85 = qword_27F39D480;
    *(v82 + 64) = qword_27F39D468;
    *(v82 + 72) = unk_27F39D470;
    *(v82 + 88) = v85;
    v86 = qword_27F210E08;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = qword_27F39D4A0;
    *(v82 + 96) = qword_27F39D488;
    *(v82 + 104) = unk_27F39D490;
    *(v82 + 120) = v87;
    v88 = qword_27F210E18;

    if (v88 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v89 = qword_27F39D4E0;
    *(v82 + 128) = qword_27F39D4C8;
    *(v82 + 136) = unk_27F39D4D0;
    *(v82 + 152) = v89;
    v90 = qword_27F210E10;

    if (v90 != -1)
    {
      v91 = swift_once();
    }

    v92 = qword_27F39D4C0;
    *(v82 + 160) = qword_27F39D4A8;
    *(v82 + 168) = unk_27F39D4B0;
    *(v82 + 184) = v92;
    MEMORY[0x28223BE20](v91);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v82);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    goto LABEL_51;
  }

  if (qword_27F210E78 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39D638);
  v93 = sub_24F92AFF8();
  v32(v23, v2);
  v17 = v101;
  if (v93)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
    v94 = swift_initStackObject();
    *(v94 + 16) = xmmword_24F9479A0;
    if (qword_27F210E28 != -1)
    {
      swift_once();
    }

    v95 = qword_27F39D520;
    *(v94 + 32) = qword_27F39D508;
    *(v94 + 40) = unk_27F39D510;
    *(v94 + 56) = v95;
    v96 = qword_27F210E38;

    if (v96 != -1)
    {
      swift_once();
    }

    v97 = qword_27F39D560;
    *(v94 + 64) = qword_27F39D548;
    *(v94 + 72) = unk_27F39D550;
    *(v94 + 88) = v97;
    v98 = qword_27F210E40;

    if (v98 != -1)
    {
      v99 = swift_once();
    }

    v100 = qword_27F39D580;
    *(v94 + 96) = qword_27F39D568;
    *(v94 + 104) = unk_27F39D570;
    *(v94 + 120) = v100;
    MEMORY[0x28223BE20](v99);
    *(&v101 - 2) = v16;

    v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C60, &qword_24F9BC290);
    swift_arrayDestroy();
    goto LABEL_7;
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236C58, &qword_24F9BC288);
  v18 = swift_initStackObject();
  v19 = v18;
  *(v18 + 16) = xmmword_24F93DE60;
  if (qword_27F210E28 != -1)
  {
    v18 = swift_once();
  }

  v20 = qword_27F39D520;
  *(v19 + 32) = qword_27F39D508;
  *(v19 + 40) = unk_27F39D510;
  *(v19 + 56) = v20;
  MEMORY[0x28223BE20](v18);
  *(&v101 - 2) = v16;

  v21 = sub_24E76D064(sub_24EFFD6C8, (&v101 - 4), v19);
  swift_setDeallocating();
  sub_24E601704(v19 + 32, &qword_27F236C60, &qword_24F9BC290);
LABEL_7:
  v22 = v17;
LABEL_15:
  sub_24E601704(v22, &qword_27F220998, &qword_24F964950);
  return v21;
}

void sub_24EFFCA58(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24E643A9C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
  if (swift_dynamicCast())
  {

    v6 = sub_24F92CD88();
    v7 = v3;
    MEMORY[0x253050C20](0x736D65746920, 0xE600000000000000);
    swift_bridgeObjectRelease_n();
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
}

void sub_24EFFCB30(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v7 = *(a2 + *(type metadata accessor for DebugMetricsEvent(0) + 20));
  v8 = *(v7 + 16);

  if (v8 && (v9 = sub_24E76D644(v5, v4), (v10 & 1) != 0))
  {
    sub_24E643A9C(*(v7 + 56) + 32 * v9, v12);
    sub_24E612B0C(v12, v13);
    v6(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = v12[0];
  }

  else
  {
    v11 = 0uLL;
  }

  *(a3 + 16) = v11;
}

void sub_24EFFCC04()
{
  qword_27F39D428 = 0x707954746E657665;
  unk_27F39D430 = 0xE900000000000065;
  qword_27F39D438 = sub_24EFFCC40;
  unk_27F39D440 = 0;
}

uint64_t sub_24EFFCC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E643A9C(a1, v6);
  if (swift_dynamicCast())
  {
    sub_24F929438();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_24F929458();
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

void sub_24EFFCCF0()
{
  strcpy(&qword_27F39D448, "actionDetails");
  unk_27F39D456 = -4864;
  qword_27F39D458 = sub_24EFFCD34;
  qword_27F39D460 = 0;
}

uint64_t sub_24EFFCD34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24E643A9C(a1, &v5);
  result = sub_24F92B188();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_24EFFCD7C()
{
  qword_27F39D468 = 0x79546E6F69746361;
  unk_27F39D470 = 0xEA00000000006570;
  qword_27F39D478 = sub_24EFFD250;
  qword_27F39D480 = 0;
}

void sub_24EFFCDB8()
{
  qword_27F39D488 = 0x72556E6F69746361;
  unk_27F39D490 = 0xE90000000000006CLL;
  qword_27F39D498 = sub_24EFFD250;
  qword_27F39D4A0 = 0;
}

void sub_24EFFCDF4()
{
  qword_27F39D4A8 = 0x6449746567726174;
  unk_27F39D4B0 = 0xE800000000000000;
  qword_27F39D4B8 = sub_24EFFD250;
  qword_27F39D4C0 = 0;
}

void sub_24EFFCE2C()
{
  qword_27F39D4C8 = 0x7954746567726174;
  unk_27F39D4D0 = 0xEA00000000006570;
  qword_27F39D4D8 = sub_24EFFD250;
  qword_27F39D4E0 = 0;
}

void sub_24EFFCE68()
{
  qword_27F39D4E8 = 1701273968;
  unk_27F39D4F0 = 0xE400000000000000;
  qword_27F39D4F8 = sub_24EFFD250;
  qword_27F39D500 = 0;
}

void sub_24EFFCE98()
{
  qword_27F39D508 = 0x746E6F4365676170;
  unk_27F39D510 = 0xEB00000000747865;
  qword_27F39D518 = sub_24EFFD250;
  qword_27F39D520 = 0;
}

void sub_24EFFCED8()
{
  qword_27F39D528 = 0x6174654465676170;
  unk_27F39D530 = 0xEB00000000736C69;
  qword_27F39D538 = sub_24EFFD250;
  qword_27F39D540 = 0;
}

void sub_24EFFCF18()
{
  qword_27F39D548 = 0x644965676170;
  unk_27F39D550 = 0xE600000000000000;
  qword_27F39D558 = sub_24EFFD250;
  qword_27F39D560 = 0;
}

void sub_24EFFCF4C()
{
  qword_27F39D568 = 0x6570795465676170;
  unk_27F39D570 = 0xE800000000000000;
  qword_27F39D578 = sub_24EFFD250;
  qword_27F39D580 = 0;
}

void sub_24EFFCF84()
{
  qword_27F39D588 = 0x6C725565676170;
  unk_27F39D590 = 0xE700000000000000;
  qword_27F39D598 = sub_24EFFD250;
  qword_27F39D5A0 = 0;
}

void sub_24EFFCFBC()
{
  qword_27F39D5A8 = 1836213620;
  unk_27F39D5B0 = 0xE400000000000000;
  qword_27F39D5B8 = sub_24EFFD250;
  qword_27F39D5C0 = 0;
}

void sub_24EFFCFEC()
{
  qword_27F39D5C8 = 1701869940;
  unk_27F39D5D0 = 0xE400000000000000;
  qword_27F39D5D8 = sub_24EFFD250;
  qword_27F39D5E0 = 0;
}

void sub_24EFFD01C()
{
  qword_27F39D5E8 = 0x6D6954746E657665;
  unk_27F39D5F0 = 0xE900000000000065;
  qword_27F39D5F8 = sub_24EFFD058;
  unk_27F39D600 = 0;
}

uint64_t sub_24EFFD058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E643A9C(a1, v6);
  if (swift_dynamicCast())
  {
    sub_24F91F5D8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_24F91F648();
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_24EFFD180(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24F929458();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24F929438();
}

uint64_t sub_24EFFD1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998, &qword_24F964950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24EFFD250(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24E643A9C(a1, v6);
  v3 = swift_dynamicCast();
  v4 = v6[4];
  v5 = v6[5];
  if (!v3)
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_24EFFD320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EFFD37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EFFD44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24EFFD504(uint64_t a1)
{
  sub_24F91F6B8();
  if (v1 <= 0x3F)
  {
    sub_24EFFD5B8();
    if (v2 <= 0x3F)
    {
      sub_24EFFD61C(319);
      if (v3 <= 0x3F)
      {
        sub_24E6BCB04();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EFFD5B8()
{
  if (!qword_27F236C78)
  {
    v0 = sub_24F92AEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F236C78);
    }
  }
}

void sub_24EFFD61C(uint64_t a1)
{
  if (!qword_27F236C80[0])
  {
    sub_24F929718();
    v1 = sub_24F92B6E8();
    if (!v2)
    {
      atomic_store(v1, qword_27F236C80);
    }
  }
}

uint64_t sub_24EFFD674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ReferrerType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EFFD7A0()
{
  result = qword_27F236D08;
  if (!qword_27F236D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D08);
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24EFFD828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 91))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_24EFFD890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24EFFD918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24EFFD974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void static SystemAppIcon.from(iconName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  if (a1 == 0x65726F7453707041 && a2 == 0xEC0000006E6F6349 || (sub_24F92CE08() & 1) != 0)
  {
    v7 = 0;
  }

  else if (a1 == 0x736567617373654DLL && a2 == 0xEC0000006E6F6349 || (sub_24F92CE08() & 1) != 0)
  {
    v7 = 1;
  }

  else if (a1 == 0x6F634973656D6147 && a2 == 0xE90000000000006ELL || (sub_24F92CE08() & 1) != 0)
  {
    v7 = 2;
  }

  else if (a1 == 0x746E6543656D6147 && a2 == 0xEE006E6F63497265 || (sub_24F92CE08() & 1) != 0)
  {
    v7 = 3;
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v9[3] = MEMORY[0x277D837D0];
    v9[0] = a1;
    v9[1] = a2;

    sub_24F9283D8();
    sub_24E857CC8(v9);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v7 = 4;
  }

  *a3 = v7;
}

id SystemAppIcon.uiImage(size:scale:drawBorder:)(double a1, double a2, __n128 a3)
{
  v9 = *v3;
  v4 = sub_24EFFE798(&v9, 0, a1, a2, a3.n128_f64[0]);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v4 scale:0 orientation:v5];

  return v7;
}

uint64_t sub_24EFFDDB4(uint64_t a1)
{
  v2 = sub_24EFFF15C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFFDDF0(uint64_t a1)
{
  v2 = sub_24EFFF15C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFFDE2C()
{
  v1 = 0x65726F7453707041;
  v2 = 0x73656D6147;
  if (*v0 != 2)
  {
    v2 = 0x746E6543656D6147;
  }

  if (*v0)
  {
    v1 = 0x736567617373654DLL;
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

uint64_t sub_24EFFDEA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EFFF630(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EFFDED0(uint64_t a1)
{
  v2 = sub_24EFFF00C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFFDF0C(uint64_t a1)
{
  v2 = sub_24EFFF00C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFFDF48(uint64_t a1)
{
  v2 = sub_24EFFF060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFFDF84(uint64_t a1)
{
  v2 = sub_24EFFF060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFFDFC0(uint64_t a1)
{
  v2 = sub_24EFFF0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFFDFFC(uint64_t a1)
{
  v2 = sub_24EFFF0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EFFE038(uint64_t a1)
{
  v2 = sub_24EFFF108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EFFE074(uint64_t a1)
{
  v2 = sub_24EFFF108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemAppIcon.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t SystemAppIcon.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236D10, &qword_24F9BC650);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236D18, &qword_24F9BC658);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236D20, &qword_24F9BC660);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236D28, &qword_24F9BC668);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236D30, &unk_24F9BC670);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24EFFF00C();
  v15 = v46;
  sub_24F92D108();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_24F92CC78();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_24E643440();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_24F92C918();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v28 = &type metadata for SystemAppIcon;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_24EFFF108();
        v32 = v35;
        sub_24F92CBA8();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_24EFFF15C();
        v25 = v35;
        sub_24F92CBA8();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_24EFFF0B4();
      v31 = v35;
      sub_24F92CBA8();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_24EFFF060();
      v33 = v35;
      sub_24F92CBA8();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

id sub_24EFFE798(_BYTE *a1, char a2, double a3, double a4, double a5)
{
  v10 = sub_24F928418();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  if (a3 <= 0.0 || a4 <= 0.0 || a5 <= 0.0)
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v17 = sub_24F92C218();
    v35 = MEMORY[0x277D837D0];
    v33 = *&v17;
    v34 = v18;
    sub_24F9283D8();
    sub_24E857CC8(&v33);
    sub_24F9283F8();
    v35 = MEMORY[0x277D85048];
    v33 = a5;
    sub_24F9283D8();
    sub_24E857CC8(&v33);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();
  }

  else
  {
    v13 = *a1;
    v14 = 0xEF73656D61672E65;
    v15 = 0x6C7070612E6D6F63;
    if (v13 <= 1 || v13 == 2)
    {
      v19 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v20 = sub_24F92B098();

      v21 = [v19 initWithBundleIdentifier_];
    }

    else
    {
      v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v20 = sub_24F92B098();
      v21 = [v22 initWithType_];
    }

    v23 = v21;

    v24 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a3 scale:{a4, a5}];
    [v24 setDrawBorder_];
    v25 = [v23 imageForDescriptor_];
    if (v25)
    {
      v26 = v25;
      if (![v25 placeholder] || (v27 = objc_msgSend(v23, sel_prepareImageForDescriptor_, v24), v26, (v26 = v27) != 0))
      {
        v27 = v26;
        v28 = [v27 CGImage];
        if (v28)
        {
          v29 = v28;
          [v27 size];
          [v27 scale];

          return v29;
        }
      }

      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v32 = sub_24F92AAE8();
      __swift_project_value_buffer(v32, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v14 = 0x800000024FA68120;
          v15 = 0xD00000000000001CLL;
        }
      }

      else if (v13)
      {
        v14 = 0x800000024FA59DD0;
        v15 = 0xD000000000000013;
      }

      else
      {
        v14 = 0x800000024FA44B00;
        v15 = 0xD000000000000012;
      }

      v35 = MEMORY[0x277D837D0];
      v33 = *&v15;
      v34 = v14;
      sub_24F9283E8();
      sub_24E857CC8(&v33);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }

    else
    {
      if (qword_27F210578 != -1)
      {
        swift_once();
      }

      v31 = sub_24F92AAE8();
      __swift_project_value_buffer(v31, qword_27F39C3C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v14 = 0x800000024FA68120;
          v15 = 0xD00000000000001CLL;
        }
      }

      else if (v13)
      {
        v14 = 0x800000024FA59DD0;
        v15 = 0xD000000000000013;
      }

      else
      {
        v14 = 0x800000024FA44B00;
        v15 = 0xD000000000000012;
      }

      v35 = MEMORY[0x277D837D0];
      v33 = *&v15;
      v34 = v14;
      sub_24F9283E8();
      sub_24E857CC8(&v33);
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }
  }

  return 0;
}

unint64_t sub_24EFFF00C()
{
  result = qword_27F236D38;
  if (!qword_27F236D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D38);
  }

  return result;
}

unint64_t sub_24EFFF060()
{
  result = qword_27F236D40;
  if (!qword_27F236D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D40);
  }

  return result;
}

unint64_t sub_24EFFF0B4()
{
  result = qword_27F236D48;
  if (!qword_27F236D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D48);
  }

  return result;
}

unint64_t sub_24EFFF108()
{
  result = qword_27F236D50;
  if (!qword_27F236D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D50);
  }

  return result;
}

unint64_t sub_24EFFF15C()
{
  result = qword_27F236D58;
  if (!qword_27F236D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D58);
  }

  return result;
}

unint64_t sub_24EFFF1B4()
{
  result = qword_27F236D60;
  if (!qword_27F236D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D60);
  }

  return result;
}

unint64_t sub_24EFFF26C()
{
  result = qword_27F236D68;
  if (!qword_27F236D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D68);
  }

  return result;
}

unint64_t sub_24EFFF2C4()
{
  result = qword_27F236D70;
  if (!qword_27F236D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D70);
  }

  return result;
}

unint64_t sub_24EFFF31C()
{
  result = qword_27F236D78;
  if (!qword_27F236D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D78);
  }

  return result;
}

unint64_t sub_24EFFF374()
{
  result = qword_27F236D80;
  if (!qword_27F236D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D80);
  }

  return result;
}

unint64_t sub_24EFFF3CC()
{
  result = qword_27F236D88;
  if (!qword_27F236D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D88);
  }

  return result;
}

unint64_t sub_24EFFF424()
{
  result = qword_27F236D90;
  if (!qword_27F236D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D90);
  }

  return result;
}

unint64_t sub_24EFFF47C()
{
  result = qword_27F236D98;
  if (!qword_27F236D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236D98);
  }

  return result;
}

unint64_t sub_24EFFF4D4()
{
  result = qword_27F236DA0;
  if (!qword_27F236DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236DA0);
  }

  return result;
}

unint64_t sub_24EFFF52C()
{
  result = qword_27F236DA8;
  if (!qword_27F236DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236DA8);
  }

  return result;
}

unint64_t sub_24EFFF584()
{
  result = qword_27F236DB0;
  if (!qword_27F236DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236DB0);
  }

  return result;
}

unint64_t sub_24EFFF5DC()
{
  result = qword_27F236DB8;
  if (!qword_27F236DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236DB8);
  }

  return result;
}

uint64_t sub_24EFFF630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707041 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373654DLL && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D6147 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6543656D6147 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL NetworkConnectionMonitor.isOffline.getter()
{
  swift_getKeyPath();
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  return *(v0 + 16) > 1u;
}

BOOL NetworkConnectionMonitor.isOnline.getter()
{
  swift_getKeyPath();
  sub_24F0007A0(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  return *(v0 + 16) < 2u;
}

GameStoreKit::NetworkConnectionMonitor::ConnectionState_optional __swiftcall NetworkConnectionMonitor.ConnectionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}