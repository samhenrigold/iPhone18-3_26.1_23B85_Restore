uint64_t type metadata accessor for DislikeAction(uint64_t a1)
{
  result = qword_280E443A0;
  if (!qword_280E443A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DDE34(void *a1)
{
  v1 = a1;
  sub_2166DDE7C();
}

void sub_2166DDE7C()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + qword_280E73C80 + 16);
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  v4 = v1[32];
  v5 = 1;
  switch(v1[32])
  {
    case 1:
      v5 = 0;
      v4 = 2;
      goto LABEL_5;
    case 2:
      v5 = 1;
      v4 = 1;
      goto LABEL_5;
    case 3:
      v5 = 1;
      v4 = 3;
      goto LABEL_5;
    case 4:
      goto LABEL_6;
    default:
LABEL_5:
      v6 = OUTLINED_FUNCTION_3_174();
      [v6 setLargeTitleDisplayMode_];

      v7 = OUTLINED_FUNCTION_3_174();
      [v7 _setSupportsTwoLineLargeTitles_];

LABEL_6:
      if (v3)
      {
        v8 = OUTLINED_FUNCTION_3_174();
        v9 = sub_21700E4D4();
        [v8 setSubtitle_];
      }

      if (v2)
      {
        v10 = OUTLINED_FUNCTION_3_174();
        v11 = sub_21700E4D4();
        [v10 setTitle_];
      }

      return;
  }
}

uint64_t sub_2166DE058(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MusicPageProvider.notices()()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v4 = sub_21700E9B4();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2166DE1A8, v4, v3);
}

uint64_t sub_2166DE1A8()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_2166DE4E0();
}

uint64_t OUTLINED_FUNCTION_68_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_12()
{
}

uint64_t OUTLINED_FUNCTION_68_15()
{

  return sub_217007CA4();
}

uint64_t OUTLINED_FUNCTION_68_19()
{
  type metadata accessor for SongTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_68_20()
{
  type metadata accessor for AlbumTrackLockup(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_68_22()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2166DE454(uint64_t *a1)
{
  result = type metadata accessor for LibraryActionType(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166DE4E0()
{
  OUTLINED_FUNCTION_33();
  v1[11] = v0;
  v1[12] = sub_21700EA34();
  v1[13] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x2822009F8](sub_2166DE578, v3, v2);
}

uint64_t sub_2166DE578()
{
  OUTLINED_FUNCTION_93();

  v1 = sub_2166DDC34();
  v3 = v2;
  v5 = v4;

  if ((~v1 & 0xF000000000000007) != 0)
  {
    if (!(v1 >> 62))
    {

      OUTLINED_FUNCTION_256();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >> 62 == 1)
    {

      swift_willThrow();
      v6 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      sub_2166DE78C(v1, v3, v5);
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_256();

      __asm { BRAA            X1, X16 }
    }

    sub_2166DE78C(v1, v3, v5);
  }

  v11 = sub_21700EA24();
  *(v0 + 128) = v11;
  if (v11)
  {
    swift_getObjectType();
    sub_21700E9B4();
  }

  OUTLINED_FUNCTION_256();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2166DE720(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166DE78C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2166DE7B8(result, a2, a3);
  }

  return result;
}

unint64_t sub_2166DE7B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2166DE830()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21683B084;
  v2 = swift_continuation_init();
  sub_2166DE9B8(v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2166DE8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LibraryPinActionType(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_21700D284();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166DE954(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166DE9B8(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0, &unk_217014280);
  v6 = *(v5 - 8);
  v22 = v5;
  v23 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9468, &qword_21701D638);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8, &qword_21701B8B0);
  sub_217007DB4();
  swift_endAccess();

  sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  v14 = sub_21700EE84();
  v27 = v14;
  v15 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
  sub_216844C20(&qword_280E484E0);
  sub_216685F8C(&qword_280E29CD8);
  v16 = v22;
  sub_217007E54();
  sub_216697664(v4, &qword_27CABE1F0, &qword_217023920);

  (*(v23 + 8))(v8, v16);
  v17 = swift_allocObject();
  v18 = v26;
  *(v17 + 16) = v13;
  *(v17 + 24) = v18;
  sub_216844C20(&unk_280E48560);

  v19 = v24;
  v20 = sub_217007E84();

  (*(v25 + 8))(v12, v19);
  swift_beginAccess();
  *(v13 + 16) = v20;
}

uint64_t sub_2166DEDB8()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166DEDEC()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

unint64_t sub_2166DEE20()
{
  result = qword_280E2DB48;
  if (!qword_280E2DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DB48);
  }

  return result;
}

uint64_t type metadata accessor for RemoveFromPlaylistAction(uint64_t a1)
{
  result = qword_280E36500;
  if (!qword_280E36500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DEED0(uint64_t a1)
{
  result = sub_21700D284();
  if (v2 <= 0x3F)
  {
    result = sub_21700C8E4();
    if (v3 <= 0x3F)
    {
      result = sub_21700C924();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MusicPageProvider.libraryImportStatus.getter()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v4 = sub_21700E9B4();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2166DF050, v4, v3);
}

unint64_t sub_2166DEFFC()
{
  result = qword_280E301C8[0];
  if (!qword_280E301C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E301C8);
  }

  return result;
}

uint64_t sub_2166DF050()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_2166DE4E0();
}

uint64_t sub_2166DF0DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0, &unk_21701FA40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2166DFAC0;

  return sub_2166DF2F4(a1, v7, v8, v1 + v6, v9);
}

uint64_t type metadata accessor for NewPlaylistAction(uint64_t a1)
{
  result = qword_280E3FE50;
  if (!qword_280E3FE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DF270(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DF3F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2166DF2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0, &unk_21701FA40);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_21700EA34();
  v5[11] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166DF458, v8, v7);
}

void sub_2166DF3F4(uint64_t a1)
{
  if (!qword_280E29F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8E18, &qword_21701BA30);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29F50);
    }
  }
}

uint64_t sub_2166DF458()
{
  v29 = v0;

  if (qword_280E464C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E464D0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 80);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446210;
    sub_217005D44();
    v12 = *(v0 + 40);
    if (v12)
    {
      [*(v0 + 40) status];

      v13 = sub_2166DF810();
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    *(v0 + 16) = v13;
    *(v0 + 24) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
    v20 = sub_21700E594();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v23 = sub_2166A85FC(v20, v22, &v28);

    *(v10 + 4) = v23;
    _os_log_impl(&dword_216679000, v6, v7, "Network connectivity changed to %{public}s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v9, v15);
  }

  sub_217005D44();
  v24 = *(v0 + 32);
  if (v24)
  {
    v25 = [*(v0 + 32) status];
  }

  else
  {
    v25 = 0;
  }

  sub_2166DF8D4(v25, v24 == 0);

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_2166DF71C()
{
  result = qword_280E366D8;
  if (!qword_280E366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E366D8);
  }

  return result;
}

uint64_t sub_2166DF770()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E464D0);
  __swift_project_value_buffer(v0, qword_280E464D0);
  return sub_217007C94();
}

uint64_t sub_2166DF8D4(uint64_t a1, int a2)
{
  v2 = (a1 == 1) & ~a2;
  result = sub_2166C129C();
  if (v2 != (result & 1))
  {

    return sub_21686C6DC(v2);
  }

  return result;
}

uint64_t sub_2166DF938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_2166DFBB4(a1, v7);
  sub_2166E0520(a1, v10);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_2166E0A9C(a1, v13);
  v14(v10, v4);
  sub_2166E1C2C(a1, a2);
  return (v14)(v13, v4);
}

uint64_t sub_2166DFAC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2166DFBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v20 = &v18 - v12;
  v23 = a1;
  v14 = *(v13 + 16);
  v14(v6, v2, v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8660, &qword_21705DAE8);
  v19 = &unk_217063768;
  sub_2166D9530(&qword_280E47640, &qword_27CAC8660, &qword_21705DAE8, &unk_217063768);
  sub_21700D5A4();
  v23 = a1;
  (v14)(v9, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8668, &qword_21705DAF0);
  sub_2166D9530(&qword_280E47638, &qword_27CAC8668, &qword_21705DAF0, &unk_217063768);
  sub_21700D5A4();
  v15 = *(v22 + 8);
  v22 += 8;
  v15(v6, v4);
  v23 = a1;
  v16 = v20;
  (v14)(v20, v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8670, &qword_21705DAF8);
  sub_2166D9530(qword_280E47648, &qword_27CAC8670, &qword_21705DAF8, v19);
  sub_21700D5A4();
  v15(v9, v4);
  v23 = a1;
  (v14)(v21, v16, v4);
  sub_2166E03A0();
  sub_21700D5A4();
  return (v15)(v16, v4);
}

uint64_t sub_2166DFED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166DFF34(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2166C1368(v2);
  }

  return result;
}

uint64_t sub_2166DFF94()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36(AssociatedTypeWitness);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A0;
  v7 = OUTLINED_FUNCTION_19_10();

  return sub_2166E0118(v7, v8, v2, v3, v9);
}

uint64_t sub_2166E0090(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *a4;
  v5[7] = *(*a4 + 96);
  v5[8] = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v5[10] = *(AssociatedTypeWitness - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_21700EA34();
  v5[13] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v5[14] = v9;
  v5[15] = v8;

  return MEMORY[0x2822009F8](sub_2166E0268, v9, v8);
}

uint64_t sub_2166E0268()
{
  OUTLINED_FUNCTION_31();
  if (qword_280E2C138 != -1)
  {
    OUTLINED_FUNCTION_54_5(&qword_280E2C138);
  }

  v1 = sub_217007CA4();
  v0[16] = __swift_project_value_buffer(v1, qword_280E2C140);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "Awaiting for the objectGraph…", v4, 2u);
    OUTLINED_FUNCTION_6();
  }

  v5 = v0[5];

  v0[17] = *(v5 + 40);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_99_0(v6);

  return sub_2166DE4E0();
}

unint64_t sub_2166E03A0()
{
  result = qword_280E47F80[0];
  if (!qword_280E47F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47F80);
  }

  return result;
}

uint64_t type metadata accessor for CreateGenericMusicItemStationAction(uint64_t a1)
{
  result = qword_280E48008;
  if (!qword_280E48008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E0458(uint64_t a1)
{
  result = sub_2170067A4();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E04DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2166E0520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v20 = &v18 - v12;
  v23 = a1;
  v14 = *(v13 + 16);
  v14(v6, v2, v4, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8648, &qword_21705DAD0);
  v19 = &unk_217044AA8;
  sub_2166D9530(qword_280E47AB8, &qword_27CAC8648, &qword_21705DAD0, &unk_217044AA8);
  sub_21700D5A4();
  v23 = a1;
  (v14)(v9, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8650, &qword_21705DAD8);
  sub_2166D9530(&qword_280E47AA8, &qword_27CAC8650, &qword_21705DAD8, &unk_217044AA8);
  sub_21700D5A4();
  v15 = *(v22 + 8);
  v22 += 8;
  v15(v6, v4);
  v23 = a1;
  v16 = v20;
  (v14)(v20, v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8658, &qword_21705DAE0);
  sub_2166D9530(&qword_280E47AB0, &qword_27CAC8658, &qword_21705DAE0, v19);
  sub_21700D5A4();
  v15(v9, v4);
  v23 = a1;
  (v14)(v21, v16, v4);
  sub_2166E0978();
  sub_21700D5A4();
  return (v15)(v16, v4);
}

uint64_t sub_2166E0868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166E08BC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_21700D284();
      if (v3 <= 0x3F)
      {
        sub_216689C64(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2166E0978()
{
  result = qword_280E2DCB8;
  if (!qword_280E2DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DCB8);
  }

  return result;
}

uint64_t type metadata accessor for PlayLibraryArtistAction(uint64_t a1)
{
  result = qword_280E37A70;
  if (!qword_280E37A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E0A18(uint64_t a1)
{
  result = sub_21700C384();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E0A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v93 = *(v4 - 8);
  v5 = v93;
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v72 - v9;
  MEMORY[0x28223BE20](v10);
  v86 = &v72 - v11;
  MEMORY[0x28223BE20](v12);
  v74 = &v72 - v13;
  MEMORY[0x28223BE20](v14);
  v75 = &v72 - v15;
  MEMORY[0x28223BE20](v16);
  v76 = &v72 - v17;
  MEMORY[0x28223BE20](v18);
  v77 = &v72 - v19;
  MEMORY[0x28223BE20](v20);
  v87 = &v72 - v21;
  MEMORY[0x28223BE20](v22);
  v78 = &v72 - v23;
  MEMORY[0x28223BE20](v24);
  v88 = &v72 - v25;
  MEMORY[0x28223BE20](v26);
  v79 = &v72 - v27;
  MEMORY[0x28223BE20](v28);
  v80 = &v72 - v29;
  MEMORY[0x28223BE20](v30);
  v81 = &v72 - v31;
  MEMORY[0x28223BE20](v32);
  v82 = &v72 - v33;
  v35 = MEMORY[0x28223BE20](v34);
  v83 = &v72 - v36;
  v90 = a1;
  v94 = a1;
  v37 = *(v5 + 16);
  v37(v7, v2, v4, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85E8, &qword_21705DA70);
  v92 = &unk_217056900;
  sub_2166D9530(&qword_280E47B68, &qword_27CAC85E8, &qword_21705DA70, &unk_217056900);
  sub_21700D5A4();
  v94 = a1;
  v38 = v73;
  (v37)(v73, v7, v4);
  v39 = v5 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85F0, &qword_21705DA78);
  sub_2166D9530(&qword_280E47B40, &qword_27CAC85F0, &qword_21705DA78, &unk_217056900);
  sub_21700D5A4();
  v40 = *(v93 + 8);
  v93 += 8;
  v40(v7, v4);
  v41 = v90;
  v94 = v90;
  v42 = v86;
  (v37)(v86, v38, v4);
  v85 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85F8, &qword_21705DA80);
  v43 = v92;
  sub_2166D9530(&qword_280E47B70, &qword_27CAC85F8, &qword_21705DA80, v92);
  sub_21700D5A4();
  v89 = v40;
  v40(v38, v4);
  v44 = v41;
  v94 = v41;
  v45 = v74;
  (v37)(v74, v42, v4);
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8600, &qword_21705DA88);
  sub_2166D9530(&qword_280E47B60, &qword_27CAC8600, &qword_21705DA88, v43);
  sub_21700D5A4();
  v40(v86, v4);
  v94 = v44;
  v46 = v44;
  v47 = v75;
  v48 = v85;
  v85(v75, v45, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8608, &qword_21705DA90);
  v49 = v92;
  sub_2166D9530(&qword_280E47B48, &qword_27CAC8608, &qword_21705DA90, v92);
  sub_21700D5A4();
  v50 = v89;
  v89(v45, v4);
  v94 = v46;
  v51 = v76;
  v48(v76, v47, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8610, &qword_21705DA98);
  sub_2166D9530(&qword_280E47B50, &qword_27CAC8610, &qword_21705DA98, v49);
  sub_21700D5A4();
  v50(v47, v4);
  v52 = v50;
  v53 = v90;
  v94 = v90;
  v54 = v77;
  v55 = v85;
  v85(v77, v51, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8618, &qword_21705DAA0);
  v56 = v92;
  sub_2166D9530(&qword_280E47B58, &qword_27CAC8618, &qword_21705DAA0, v92);
  sub_21700D5A4();
  v52(v51, v4);
  v94 = v53;
  v57 = v87;
  v55(v87, v54, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8620, &qword_21705DAA8);
  sub_2166D9530(qword_280E47B98, &qword_27CAC8620, &qword_21705DAA8, v56);
  sub_21700D5A4();
  v58 = v89;
  v89(v54, v4);
  v59 = v53;
  v94 = v53;
  v60 = v78;
  v55(v78, v57, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8628, &qword_21705DAB0);
  sub_2166D9530(&qword_280E47B78, &qword_27CAC8628, &qword_21705DAB0, v92);
  sub_21700D5A4();
  v58(v87, v4);
  v94 = v59;
  v61 = v88;
  v55(v88, v60, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8630, &qword_21705DAB8);
  v62 = v92;
  sub_2166D9530(&qword_280E47B80, &qword_27CAC8630, &qword_21705DAB8, v92);
  sub_21700D5A4();
  v63 = v89;
  v89(v60, v4);
  v94 = v59;
  v64 = v79;
  v55(v79, v61, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8638, &qword_21705DAC0);
  sub_2166D9530(&qword_280E47B90, &qword_27CAC8638, &qword_21705DAC0, v62);
  v65 = v64;
  sub_21700D5A4();
  v63(v88, v4);
  v66 = v90;
  v94 = v90;
  v67 = v80;
  v55(v80, v65, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8640, &qword_21705DAC8);
  sub_2166D9530(&qword_280E47B88, &qword_27CAC8640, &qword_21705DAC8, v92);
  sub_21700D5A4();
  v63(v65, v4);
  v94 = v66;
  v68 = v81;
  v55(v81, v67, v4);
  sub_2166E1710();
  sub_21700D5A4();
  v63(v67, v4);
  v69 = v82;
  v55(v82, v68, v4);
  sub_2166E18AC();
  sub_21700D5A4();
  v63(v68, v4);
  v70 = v83;
  v55(v83, v69, v4);
  sub_2166E194C();
  sub_21700D5A4();
  v63(v69, v4);
  v94 = v66;
  v55(v84, v70, v4);
  sub_2166E1A80();
  sub_21700D5A4();
  return (v63)(v70, v4);
}

uint64_t sub_2166E1590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166E15E4(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_21700E984();
    v4 = sub_21700F164();
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = sub_21700D284();
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for PlayMusicItemAction.ShuffleMode(319, v2, *(a1 + 24), v6);
      if (v8 <= 0x3F)
      {
        sub_216689C64(319);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_2166E1710()
{
  result = qword_280E48170[0];
  if (!qword_280E48170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E48170);
  }

  return result;
}

uint64_t type metadata accessor for PlayGenericMusicItemAction(uint64_t a1)
{
  result = qword_280E482A8;
  if (!qword_280E482A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E17B0(uint64_t a1)
{
  sub_2170067A4();
  if (v1 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E2A050, &qword_27CAB6A38, &unk_217015A70);
    if (v2 <= 0x3F)
    {
      sub_21700D284();
      if (v3 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2166E18AC()
{
  result = qword_280E2F158[0];
  if (!qword_280E2F158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F158);
  }

  return result;
}

uint64_t type metadata accessor for PausePlaybackAction(uint64_t a1)
{
  result = qword_280E3D7A0;
  if (!qword_280E3D7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166E194C()
{
  result = qword_280E2E640;
  if (!qword_280E2E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E640);
  }

  return result;
}

uint64_t type metadata accessor for PlayPauseTappedAction(uint64_t a1)
{
  result = qword_280E3A068;
  if (!qword_280E3A068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166E19EC(uint64_t a1)
{
  result = sub_21668B174();
  if (v2 <= 0x3F)
  {
    result = sub_21700D284();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166E1A80()
{
  result = qword_280E48168;
  if (!qword_280E48168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E48168);
  }

  return result;
}

uint64_t type metadata accessor for PlayGenericMusicItemCollectionAction(uint64_t a1)
{
  result = qword_280E48208;
  if (!qword_280E48208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E1B20(uint64_t a1)
{
  sub_2166E1BD4(319);
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      sub_216689C64(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166E1BD4(uint64_t a1)
{
  if (!qword_280E2A058)
  {
    sub_2170067A4();
    v1 = sub_21700E984();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A058);
    }
  }
}

uint64_t sub_2166E1C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v81 = *(v4 - 8);
  v5 = v81;
  MEMORY[0x28223BE20](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  MEMORY[0x28223BE20](v11);
  v65 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v66 = &v65 - v16;
  MEMORY[0x28223BE20](v17);
  v67 = &v65 - v18;
  MEMORY[0x28223BE20](v19);
  v68 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  v76 = &v65 - v24;
  MEMORY[0x28223BE20](v25);
  v70 = &v65 - v26;
  MEMORY[0x28223BE20](v27);
  v71 = &v65 - v28;
  v30 = MEMORY[0x28223BE20](v29);
  v72 = &v65 - v31;
  v78 = a1;
  v82 = a1;
  v32 = *(v5 + 16);
  v32(v7, v2, v4, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8588, &qword_21705DA10);
  sub_2166D9530(&qword_280E478F0, &qword_27CAC8588, &qword_21705DA10, &unk_217040A20);
  sub_21700D5A4();
  v82 = a1;
  (v32)(v10, v7, v4);
  v74 = v5 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8590, &qword_21705DA18);
  sub_2166D9530(&qword_280E478C8, &qword_27CAC8590, &qword_21705DA18, &unk_217040A20);
  v33 = v10;
  sub_21700D5A4();
  v34 = *(v81 + 8);
  v81 += 8;
  v34(v7, v4);
  v79 = v34;
  v35 = v78;
  v82 = v78;
  v36 = v65;
  (v32)(v65, v33, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8598, &qword_21705DA20);
  v80 = &unk_217040A20;
  sub_2166D9530(&qword_280E478F8, &qword_27CAC8598, &qword_21705DA20, &unk_217040A20);
  sub_21700D5A4();
  v34(v33, v4);
  v82 = v35;
  v37 = v75;
  v77 = v32;
  (v32)(v75, v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85A0, &qword_21705DA28);
  sub_2166D9530(&qword_280E478E8, &qword_27CAC85A0, &qword_21705DA28, &unk_217040A20);
  v38 = v37;
  sub_21700D5A4();
  v39 = v79;
  v79(v36, v4);
  v40 = v78;
  v82 = v78;
  v41 = v66;
  (v32)(v66, v38, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85A8, &qword_21705DA30);
  v42 = v80;
  sub_2166D9530(&qword_280E478D0, &qword_27CAC85A8, &qword_21705DA30, v80);
  sub_21700D5A4();
  v39(v75, v4);
  v82 = v40;
  v43 = v67;
  v44 = v77;
  v77(v67, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85B0, &qword_21705DA38);
  sub_2166D9530(&qword_280E478D8, &qword_27CAC85B0, &qword_21705DA38, v42);
  sub_21700D5A4();
  v45 = v41;
  v46 = v79;
  v79(v45, v4);
  v82 = v40;
  v47 = v68;
  v44(v68, v43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85B8, &qword_21705DA40);
  v48 = v80;
  sub_2166D9530(&qword_280E478E0, &qword_27CAC85B8, &qword_21705DA40, v80);
  sub_21700D5A4();
  v46(v43, v4);
  v82 = v40;
  v49 = v69;
  v50 = v77;
  v77(v69, v47, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85C0, &qword_21705DA48);
  sub_2166D9530(qword_280E47920, &qword_27CAC85C0, &qword_21705DA48, v48);
  sub_21700D5A4();
  v51 = v47;
  v52 = v79;
  v79(v51, v4);
  v82 = v40;
  v53 = v76;
  v50(v76, v49, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85C8, &qword_21705DA50);
  sub_2166D9530(&qword_280E47900, &qword_27CAC85C8, &qword_21705DA50, v48);
  sub_21700D5A4();
  v52(v49, v4);
  v82 = v40;
  v54 = v70;
  v50(v70, v53, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85D0, &qword_21705DA58);
  v55 = v80;
  sub_2166D9530(&qword_280E47908, &qword_27CAC85D0, &qword_21705DA58, v80);
  sub_21700D5A4();
  v52(v76, v4);
  v82 = v40;
  v56 = v71;
  v57 = v54;
  v58 = v77;
  v77(v71, v54, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85D8, &qword_21705DA60);
  sub_2166D9530(&qword_280E47918, &qword_27CAC85D8, &qword_21705DA60, v55);
  v59 = v56;
  sub_21700D5A4();
  v60 = v57;
  v61 = v79;
  v79(v60, v4);
  v62 = v78;
  v82 = v78;
  v63 = v72;
  v58(v72, v59, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85E0, &qword_21705DA68);
  sub_2166D9530(&qword_280E47910, &qword_27CAC85E0, &qword_21705DA68, v80);
  sub_21700D5A4();
  v61(v59, v4);
  v82 = v62;
  v58(v73, v63, v4);
  sub_2166E26E4();
  sub_21700D5A4();
  return (v61)(v63, v4);
}

uint64_t sub_2166E25CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166E2620(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_21700E984();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for QueueMusicItemsAction.InsertionPosition(319, v2, *(a1 + 24), v4);
    if (v6 <= 0x3F)
    {
      result = sub_21700D284();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2166E26E4()
{
  result = qword_280E48018[0];
  if (!qword_280E48018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E48018);
  }

  return result;
}

uint64_t type metadata accessor for QueueGenericMusicItemsAction(uint64_t a1)
{
  result = qword_280E480A8;
  if (!qword_280E480A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E2784(uint64_t a1)
{
  sub_2166E1BD4(319);
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166E2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v26 + 16);
  OUTLINED_FUNCTION_42();
  v34();
  sub_2166E2994();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  (v34)(v33, v30, v24);
  sub_2166E2A94();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v35 = *(v26 + 8);
  v35(v30, v24);
  (v34)(v23, v33, v24);
  sub_2166E2B08();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v35(v33, v24);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_2166E2994()
{
  result = qword_280E2CAC8[0];
  if (!qword_280E2CAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CAC8);
  }

  return result;
}

void sub_2166E2A08(uint64_t a1)
{
  sub_2166D94CC(319);
  if (v1 <= 0x3F)
  {
    sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2166E2A94()
{
  result = qword_280E2C9D0;
  if (!qword_280E2C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9D0);
  }

  return result;
}

unint64_t sub_2166E2B08()
{
  result = qword_280E2CC00[0];
  if (!qword_280E2CC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CC00);
  }

  return result;
}

uint64_t type metadata accessor for AgeVerificationOnboardingAction(uint64_t a1)
{
  result = qword_280E305C8;
  if (!qword_280E305C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E2BA8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

void sub_2166E2C24()
{
  OUTLINED_FUNCTION_48_28();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE8, &unk_2170715D0), v4 = OUTLINED_FUNCTION_6_129(), (v5 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_36_46();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_30_54();
      sub_21700DF14();
      OUTLINED_FUNCTION_47_2();
      sub_21700E614();
      sub_21700F944();
      OUTLINED_FUNCTION_1_223();
      while (1)
      {
        OUTLINED_FUNCTION_34_39();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_45_33();
        v8 = v8 && v7 == v2;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_19_65(v6);
      if (v10)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v9;
LABEL_15:
      if (v3 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

unint64_t sub_2166E2D40()
{
  result = qword_280E44FD8;
  if (!qword_280E44FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  v7 = *(v5 - 176);
  *(a1 + 32) = *(v5 - 168);
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v5 - 184);
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v2;

  return sub_2167A2998(a1);
}

void sub_2166E2EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2166E2F40(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8, qword_21701FC30);
    return sub_21700E9C4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8, qword_21701FC30);
    return sub_21700E9D4();
  }
}

uint64_t sub_2166E2FC0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8, qword_21701FC30);

  return sub_2166E2F40(a1, a2);
}

uint64_t sub_2166E304C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *(v1 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2166E3168()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E3268()
{
  if (qword_280E32630 != -1)
  {
    OUTLINED_FUNCTION_1_38(&qword_280E32630);
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_280E32638);
  v2 = sub_217007C84();
  v3 = sub_21700ED64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_216679000, v2, v3, "iCloud account status: %{public}ld", v5, 0xCu);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  OUTLINED_FUNCTION_6_28();

  return v6();
}

uint64_t sub_2166E337C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E32638);
  __swift_project_value_buffer(v0, qword_280E32638);
  return sub_217007C94();
}

uint64_t sub_2166E33FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E34EC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2166E35DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 24) = v1 & 1;
  return (*(v0 + 8))();
}

void sub_2166E360C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90, &qword_217028E98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-1] - v3;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_216679000, v6, v7, "💬 ┏ Checking GDPR acknowledgement...", v8, 2u);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  v9 = [objc_opt_self() sharedPrivacyInfo];
  v10 = [v9 privacyAcknowledgementRequiredForMusic];

  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v11, v12, "💬 ┃ ⛔ GDPR has not been accepted; prevent setup and observing for messages.", v14, 2u);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    v15 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver;
    if (!*(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver))
    {
      type metadata accessor for PrivacyAcknowledgementDidChangeObserver();
      swift_allocObject();
      *(v1 + v15) = sub_216AFB544();

      if (*(v1 + v15))
      {
        swift_allocObject();
        swift_weakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68, &unk_217043AC0);
        sub_2166EF228(&qword_280E2A2F0, &qword_27CABCD68, &unk_217043AC0);

        sub_21700D1D4();
        sub_21700D1F4();

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
        v17 = v4;
        v18 = 0;
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60, &unk_21705EF20);
        v17 = v4;
        v18 = 1;
      }

      __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
      sub_216697664(v4, &unk_27CABFB90, &qword_217028E98);
    }
  }

  else
  {
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_216679000, v11, v12, "💬 ┃ 🟢 GDPR was accepted, proceed with checking for enablement.", v19, 2u);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    sub_2166E3A90();
  }
}

uint64_t sub_2166E39D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166E3A0C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73D20);
  __swift_project_value_buffer(v0, qword_280E73D20);
  return sub_217007C94();
}

uint64_t sub_2166E3A90()
{
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Checking for UM enablement in JS...", v5, 2u);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA0, &qword_217039220);
  v6 = *(v1 + 208);
  sub_21700D4D4();
  result = sub_21700E094();
  if (v8)
  {
    sub_2166E3BD0(v8, v6);
  }

  return result;
}

uint64_t sub_2166E3BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_216A06C54(&unk_280E41BA8, type metadata accessor for UnifiedMessages.Coordinator, &unk_217034578);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v10;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a1;
  swift_retain_n();

  sub_21677BBA0();
}

uint64_t sub_2166E3D24()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_2166E3DC4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2166E3DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78, &qword_2170346E0);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166E3EA0, a4, 0);
}

uint64_t sub_2166E3EA0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v1, v5, v6, v4);
  OUTLINED_FUNCTION_30_25();
  v9 = sub_216A06C54(v7, v8, &unk_217034578);
  OUTLINED_FUNCTION_53();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v2;
  v10[5] = v3;
  swift_retain_n();

  v11 = OUTLINED_FUNCTION_9_46();
  sub_21677E950(v11, v12, v1, v13, v10);
  v14 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask;
  v0[15] = v15;
  v0[16] = v14;
  *(v2 + v14) = v15;

  v16 = swift_task_alloc();
  v0[17] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v16 = v0;
  v16[1] = sub_216A02308;
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t ObjectGraph.__allocating_init(name:dependencies:)()
{
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_2_116();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_171();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_1_149();
  v3(v2);
  sub_21700D464();
  v4 = OUTLINED_FUNCTION_3_113();
  v5(v4);
  return v1;
}

uint64_t sub_2166E40FC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_2166E4190(v3, v4, v5, v6, v7);
}

uint64_t sub_2166E4190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_216A02A00;

  return sub_2166E44C8(a5);
}

uint64_t sub_2166E4230()
{
  OUTLINED_FUNCTION_31();
  if (qword_280E2B908 != -1)
  {
    swift_once();
  }

  if (byte_280E73A82)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v2 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
    v3 = sub_217007C84();
    v4 = sub_21700ED84();
    if (!OUTLINED_FUNCTION_41_0(v4))
    {
      goto LABEL_14;
    }

    v5 = OUTLINED_FUNCTION_43();
    *v5 = 0;
    v6 = "💬 ┃┃ ⛔ Automation has disabled Unified Messages";
LABEL_13:
    _os_log_impl(&dword_216679000, v3, v0, v6, v5, 2u);
    OUTLINED_FUNCTION_6();
LABEL_14:

    OUTLINED_FUNCTION_43_4();

    return v11(0);
  }

  v7 = [objc_opt_self() sharedPrivacyInfo];
  v8 = [v7 privacyAcknowledgementRequiredForMusic];

  if (v8)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v9 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v9, qword_280E73D20);
    v3 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (!OUTLINED_FUNCTION_41_0(v10))
    {
      goto LABEL_14;
    }

    v5 = OUTLINED_FUNCTION_43();
    *v5 = 0;
    v6 = "💬 ┃┃ ⛔ GDPR has not been accepted; disallow UM.";
    goto LABEL_13;
  }

  v13 = v1[3];
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  OUTLINED_FUNCTION_116();
  sub_21700E094();
  v1[5] = v1[2];
  OUTLINED_FUNCTION_17_5();
  v1[6] = sub_2166E5204(0xD00000000000001FLL, v14, v13);
  v15 = swift_task_alloc();
  v1[7] = v15;
  *v15 = v1;
  v15[1] = sub_216A02B68;

  return sub_2166E5748();
}

uint64_t sub_2166E44C8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2166E4230, v1, 0);
}

uint64_t sub_2166E44E8()
{
  result = sub_2166E450C();
  byte_280E73A82 = result & 1;
  return result;
}

id sub_2166E450C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_21700E354();
  sub_2166AF628(0xD000000000000016, 0x8000000217086BA0, v2);
  v4 = v3;

  if (v4)
  {
    sub_21700DF14();
    v5 = sub_21700E4D4();
    v6 = [v5 BOOLValue];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v5 = sub_21700E4D4();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

uint64_t sub_2166E465C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock);

  return sub_2166E46E8(v4, v1, a1, v3);
}

uint64_t sub_2166E46E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_22_7();
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OUTLINED_FUNCTION_1_194();
  sub_2166E4754(v6, v7, a4);
  OUTLINED_FUNCTION_3_155();
}

void sub_2166E4754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph))
  {
    if (qword_280E328A0 != -1)
    {
      OUTLINED_FUNCTION_1_107(&qword_280E328A0);
    }

    v3 = sub_217007CA4();
    __swift_project_value_buffer(v3, qword_280E328A8);
    v4 = sub_217007C84();
    v5 = sub_21700EDA4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_216679000, v4, v5, "Secondary object graph built.", v6, 2u);
      MEMORY[0x21CEA1440](v6, -1, -1);
    }
  }

  else
  {
    if (qword_280E328A0 != -1)
    {
      OUTLINED_FUNCTION_1_107(&qword_280E328A0);
    }

    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_280E328A8);
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_216679000, v8, v9, "Object graph built.", v10, 2u);
      MEMORY[0x21CEA1440](v10, -1, -1);
    }

    v11 = sub_21700D454();
    sub_2166E4984(v11);
  }
}

uint64_t sub_2166E4904()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E328A8);
  __swift_project_value_buffer(v0, qword_280E328A8);
  return sub_217007C94();
}

uint64_t sub_2166E4984(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph) = a1;

  sub_2166E49E0();
}

uint64_t sub_2166E49E0()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock) + 16));
  v1 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    sub_21700DF14();
    do
    {
      sub_216681B64(v4, v6, &qword_27CABD288, &qword_217029FB0);
      sub_2166EFE80(v6);
      sub_21669987C(v6, &qword_27CABD288, &qword_217029FB0);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_2166E4ACC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v9 + 360) = v8;
  *(v9 + 368) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2166E4C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[27];

  sub_2166A8544();
  sub_2166C7454(v18);
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v20))
  {
    v21 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v21);
    OUTLINED_FUNCTION_121(&dword_216679000, v22, v23, "UI Bootstrap complete.");
    OUTLINED_FUNCTION_26_4();
  }

  v24 = v16[39];
  v25 = v16[18];
  v26 = v16[17];

  v27 = OUTLINED_FUNCTION_116();
  v24(v27);
  sub_216697664(v26, &qword_27CAB94C8, &qword_2170506D0);
  if (qword_280E2B920 != -1)
  {
    OUTLINED_FUNCTION_117_2(&qword_280E2B920);
  }

  if (byte_280E73A84 == 1)
  {
    if (qword_280E2B900 != -1)
    {
      swift_once();
    }

    if (byte_280E73A81 == 1)
    {
      OUTLINED_FUNCTION_213();
      v28 = sub_217007C84();
      v29 = sub_21700EDA4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v30);
        _os_log_impl(&dword_216679000, v28, v29, "Sheet presentation was disabled. Acknowledging privacy disclaimer automatically.", v25, 2u);
        OUTLINED_FUNCTION_26_4();
      }

      v31 = v16[39];

      v32 = OUTLINED_FUNCTION_116();
      v31(v32);
      sub_216B94470();
      goto LABEL_18;
    }
  }

  v33 = sub_21669DAC4();

  if ((v33 & 1) == 0)
  {
LABEL_18:
    sub_2166E660C();
    if (qword_280E2B930 != -1)
    {
      OUTLINED_FUNCTION_116_1(&qword_280E2B930);
    }

    if (byte_280E73A85 == 1)
    {
      OUTLINED_FUNCTION_213();
      v48 = sub_217007C84();
      v49 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v49))
      {
        v50 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v50);
        OUTLINED_FUNCTION_121(&dword_216679000, v51, v52, "🧙 Wizard is enabled! ✨");
        OUTLINED_FUNCTION_26_4();
      }

      v53 = v16[39];

      v54 = OUTLINED_FUNCTION_116();
      v53(v54);
    }

    v55 = v16[22];
    OUTLINED_FUNCTION_58();
    sub_2166E6984(v56, v57, v58);

    sub_2166C7454(v55);
    v59 = sub_217007C84();
    v60 = sub_21700EDA4();
    if (os_log_type_enabled(v59, v60))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_245_0(&dword_216679000, v61, v62, "Bootstrap complete.");
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_205_0();
    v63 = OUTLINED_FUNCTION_119();
    v17(v63);
    sub_21700EA74();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    OUTLINED_FUNCTION_65_0();
    v68 = swift_allocObject();
    OUTLINED_FUNCTION_86_5(v68);

    sub_216697664(v60, &unk_27CABFAC0, &qword_21701B9F0);
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_2();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_213();
  v34 = sub_217007C84();
  v35 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v35))
  {
    v36 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v36);
    OUTLINED_FUNCTION_121(&dword_216679000, v37, v38, "Awaiting privacy disclaimer acknowledgement...");
    OUTLINED_FUNCTION_26_4();
  }

  v77 = v16[41];
  v40 = v16[39];
  v39 = v16[40];
  v78 = v16[30];
  v42 = v16[15];
  v41 = v16[16];
  v43 = v16[13];

  v44 = OUTLINED_FUNCTION_115();
  v40(v44);
  v77(v42, v39, v43);
  sub_21669E79C(v42, "PrivacyDisclaimerAcknowledgement", 32, 2, v41);
  v16[47] = *(v78 + 16);

  v45 = swift_task_alloc();
  v16[48] = v45;
  *v45 = v16;
  v45[1] = sub_2168425AC;
  OUTLINED_FUNCTION_13_2();

  return sub_216A4F6C8();
}

uint64_t sub_2166E513C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_147_1(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_147_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_147_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_216FB315C();
}

uint64_t sub_2166E5204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_53();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_40_31(v6);
  *(v7 + 32) = v3;
  *(v7 + 40) = a3;

  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DA50, v4, &qword_27CAC1AF0, &qword_21703F930, &unk_28293C8E0, &unk_21706DA68);
}

uint64_t OUTLINED_FUNCTION_107_5()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_107_7()
{

  return sub_2168AEDA8(v3 + v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_8(uint64_t a1, uint64_t a2)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_107_10()
{

  return sub_216F3D2E4(v0);
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_216681B04(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_114_4()
{

  return sub_216697664(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_114_5(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return type metadata accessor for MappedSection.Content(0);
}

uint64_t OUTLINED_FUNCTION_114_6(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_7()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_71_5(uint64_t a1, uint64_t a2)
{

  return sub_2167A4788();
}

__n128 OUTLINED_FUNCTION_71_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 48) + 40 * a1);
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  v4[1] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_12()
{
}

uint64_t OUTLINED_FUNCTION_71_13()
{
}

uint64_t OUTLINED_FUNCTION_71_15()
{

  return sub_21700D734();
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return sub_217007ED4();
}

uint64_t OUTLINED_FUNCTION_125_2(uint64_t a1)
{

  return sub_216697664(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return type metadata accessor for PlaybackPresenter(0);
}

uint64_t OUTLINED_FUNCTION_125_7(uint64_t a1)
{
  *v1 = a1;

  return sub_217007874();
}

void sub_2166E5660()
{
  if (qword_280E404C8 != -1)
  {
    swift_once();
  }

  if (qword_280E404D8)
  {
    sub_21700E5D4();
    has_internal_content = os_variant_has_internal_content();
  }

  else
  {
    has_internal_content = 0;
  }

  byte_280E73A84 = has_internal_content;
}

uint64_t sub_2166E56EC()
{
  type metadata accessor for Platform();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = sub_2166E2BA8(v1);
  qword_280E404D0 = result;
  qword_280E404D8 = v3;
  return result;
}

uint64_t sub_2166E5748()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v0, v1, v2, v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_216A967B0;
  OUTLINED_FUNCTION_71_0();

  return MEMORY[0x282180360](v7);
}

uint64_t sub_2166E5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166E58B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_216ED0D94;

  return v9(v6 + 40);
}

uint64_t sub_2166E59AC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_119();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2166E5A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED1EB8;

  return sub_2166E5AF0(a2, v7, v8, a4);
}

uint64_t sub_2166E5AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ECE95C;

  return sub_2166E5BA4(a2, a3, a4);
}

uint64_t sub_2166E5BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2166E5C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_88_9(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_99_0(v17);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_75_11(v20);
    *v21 = v22;
    v30 = OUTLINED_FUNCTION_23_32(v21, v23, v24, v25, v26, v27, v28, v29, v31, v32);

    return v30();
  }
}

uint64_t sub_2166E5D40()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 24) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_57_15(v5);

  return MEMORY[0x282180360](v7);
}

uint64_t sub_2166E5E18()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F940);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_getEnumTagSinglePayload(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_108_3()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  *(v0 + 1248) = *v1;
  result = *(v1 + 24);
  *(v0 + 1272) = result;
  *(v0 + 1264) = v2;
  *(v0 + 1288) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_2166A6F60(a1, va, v5, v6);
}

uint64_t OUTLINED_FUNCTION_108_7(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_108_10()
{

  return swift_allocObject();
}

uint64_t sub_2166E6084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_2166E62F8, 0, 0);
}

unint64_t sub_2166E62A4()
{
  result = qword_280E45D38;
  if (!qword_280E45D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D38);
  }

  return result;
}

uint64_t sub_2166E62F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_2166E63A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v1, v2, v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 24) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_57_15(v5);

  return MEMORY[0x282180360](v7);
}

void sub_2166E6480()
{
  if (qword_280E2B918 != -1)
  {
    swift_once();
  }

  if (byte_280E73A83)
  {
    v0 = 1;
  }

  else
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_21700E354();
    v4 = OUTLINED_FUNCTION_0_117();
    sub_2166AF628(v4, v5, v3);
    v7 = v6;

    if (v7)
    {
      sub_21700DF14();
      v8 = sub_21700E4D4();
      v0 = [v8 BOOLValue];
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v0 = 0;
    }
  }

  byte_280E73A81 = v0;
}

void OUTLINED_FUNCTION_215_0()
{
}

uint64_t sub_2166E660C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_2166E670C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_124_3(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_124_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return sub_2169C3618(a1, v4, a3);
}

uint64_t sub_2166E6800()
{
  result = sub_2166E6824();
  byte_280E73A85 = result & 1;
  return result;
}

id sub_2166E6824()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_21700E354();
  sub_2166AF628(0x6957656C62616E45, 0xEC0000006472617ALL, v2);
  v4 = v3;

  if (v4)
  {
    sub_21700DF14();
    v5 = sub_21700E4D4();
    v6 = [v5 BOOLValue];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v5 = sub_21700E4D4();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

uint64_t sub_2166E6984(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_21700EA34();

  sub_2166E6B18(a1, a2, a3);
  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_216888C34(0, 0, v10, &unk_21701D758, v13);

  return sub_216697664(v10, &unk_27CABFAC0, &qword_21701B9F0);
}

uint64_t sub_2166E6ACC()
{
  swift_unknownObjectRelease();

  sub_2166DE7B8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

unint64_t sub_2166E6B18(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v3 = (result & 0x3FFFFFFFFFFFFFFFLL);
  }
}

uint64_t OUTLINED_FUNCTION_247()
{
  v3 = *(v1 + 224);
  *(v1 + 304) = v0;

  return sub_2166C7454(v3);
}

uint64_t OUTLINED_FUNCTION_247_0()
{
}

uint64_t OUTLINED_FUNCTION_198(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_174_2()
{

  return sub_216F98238();
}

uint64_t sub_2166E6C54()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);

  return sub_2166E6DD8();
}

uint64_t sub_2166E6CEC()
{
  OUTLINED_FUNCTION_33();
  if (qword_280E2B920 != -1)
  {
    OUTLINED_FUNCTION_117_2(&qword_280E2B920);
  }

  if (byte_280E73A84 == 1)
  {
    sub_21700EA34();
    *(v0 + 16) = sub_21700EA24();
    v2 = sub_21700E9B4();

    return MEMORY[0x2822009F8](sub_2166E7B9C, v2, v1);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v3();
  }
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for Page.Header(0);
}

uint64_t OUTLINED_FUNCTION_221_2()
{

  return sub_216E47F84();
}

uint64_t sub_2166E6E50(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_21700CB94();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_21700CA94();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166E6F6C, 0, 0);
}

uint64_t sub_2166E6F6C()
{
  if (qword_280E3E770 != -1)
  {
    OUTLINED_FUNCTION_3_87(&qword_280E3E770);
  }

  __swift_project_value_buffer(v0[14], qword_280E73CF0);
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  v3 = sub_21700CBD4();
  v4 = MEMORY[0x277D21A60];
  v0[5] = v3;
  v0[6] = v4;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700CBC4();
  sub_21700CA74();
  sub_21700CC14();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_8_53(v5);

  return MEMORY[0x28217E6F8](v6);
}

uint64_t sub_2166E7094()
{
  v0 = sub_21700CB94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_280E73CF0);
  v5 = __swift_project_value_buffer(v0, qword_280E73CF0);
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  if (byte_280E73A84)
  {
    v6 = MEMORY[0x277D21A30];
  }

  else
  {
    v6 = MEMORY[0x277D21A38];
  }

  (*(v1 + 104))(v3, *v6, v0);
  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t sub_2166E71E0()
{
  OUTLINED_FUNCTION_33();
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v2 = v7;
  *(v7 + 168) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v7 + 56));
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2166E72EC()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_14_41();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2166E7360()
{

  if (qword_280E3CB20 != -1)
  {
    swift_once();
  }

  if (![qword_280E3CB28 applicationState])
  {
    [*(*(v0 + 16) + 40) becomeActive];
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_2166E741C(unsigned __int8 *a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228, qword_21703D310);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = *a1;
  if (v9 == 2)
  {
    v13 = type metadata accessor for SocialBadgingMap(0);
    v14 = __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
    MEMORY[0x28223BE20](v14);
    v15[-2] = a2;
    v15[-1] = v8;
    sub_216AB3DDC(sub_216ED1938);
    sub_216697664(v8, &qword_27CAC1228, qword_21703D310);
  }

  else if (v9 == 3)
  {
    sub_216ED0250(a3 & 1);
    *(swift_allocObject() + 16) = a2;
    *(swift_allocObject() + 16) = a2;
    v10 = sub_2166AF2EC();
    v11 = a2;
    v12 = sub_21700EE84();
    v15[3] = v10;
    v15[4] = MEMORY[0x277D225C0];
    v15[0] = v12;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_2166E762C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_55_7(v5);

  return sub_2166E76CC(v7, v1, v2, v3);
}

uint64_t sub_2166E76CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_217007CA4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D8, &unk_217039DE0);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E0, &qword_21701D720);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = sub_21700EA34();
  v4[13] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x2822009F8](sub_2166E7894, v9, v8);
}

uint64_t sub_2166E7894()
{
  OUTLINED_FUNCTION_93();
  v0[16] = *(v0[2] + 24);

  sub_2166AACE4();

  sub_21700EAB4();
  v1 = OUTLINED_FUNCTION_115();
  v2(v1);
  v3 = sub_21700EA24();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_77_4(v4);
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v3, v5);
}

uint64_t sub_2166E7994()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_55_7(v8);

  return sub_2166E7B00(v10, v1, v2, v3, v4, v6, v5);
}

uint64_t sub_2166E7A54()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_191();
  sub_2166E6B18(v0, v1, v2);
  OUTLINED_FUNCTION_191();
  sub_21669727C(v3, v4, v5);

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_2166E7B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_21700EA34();
  v7[6] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166E7A54, v9, v8);
}

uint64_t sub_2166E7B9C()
{
  OUTLINED_FUNCTION_33();

  sub_217007CB4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2166E7BF8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *(v3 + 152) = v5;
  *(v3 + 160) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_21677FDF4;
  }

  else
  {
    v8 = sub_2166E7D30;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2166E7D30()
{
  v32 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v4 + 56);
  swift_unknownObjectRetain();
  v5(v3, v4);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v7(&v28, v1, AssociatedConformanceWitness);
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_98();
  v8(v9);
  v29 = v28;
  v7(&v30, v1, AssociatedConformanceWitness);
  *v31 = v30;
  v10 = static MusicTabID.== infix(_:_:)(&v29, v31);
  sub_2166E8284(v31[0], v31[1]);
  sub_2166E8284(v29, *(&v29 + 1));
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = v8;
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 48), *(v0 + 72));
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 72);
  v26 = v7;
  if (v13)
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v30 = v25;
    *v15 = 136446210;
    v7(v31, v14, AssociatedConformanceWitness);
    *(v0 + 16) = *v31;
    v24 = v12;
    v16 = sub_21700E594();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_75();
    v27(v19);
    v20 = sub_2166A85FC(v16, v18, &v30);

    *(v15 + 4) = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_75();
    v27(v21);
  }

  type metadata accessor for MusicTabChangePublisher(0);
  sub_21700D4B4();
  if (*(v0 + 32))
  {
    v26(&v30, *(v0 + 72), AssociatedConformanceWitness);
    *v31 = v30;
    sub_216C2DF48(v31);

    sub_2166E8284(v31[0], v31[1]);
  }

  else
  {
LABEL_8:
  }

  OUTLINED_FUNCTION_23();

  return v22();
}

uint64_t static MusicTabID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 0);
      v7 = 0;
      goto LABEL_24;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_22;
      }

      v17 = 1;
      v18 = OUTLINED_FUNCTION_1_216(*a1, 1uLL);
      sub_2166E8284(v18, 1uLL);
      return v17;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 2uLL);
      v7 = 2;
      goto LABEL_24;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 3uLL);
      v7 = 3;
      goto LABEL_24;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 4uLL);
      v7 = 4;
      goto LABEL_24;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 5uLL);
      v7 = 5;
      goto LABEL_24;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 6uLL);
      v7 = 6;
      goto LABEL_24;
    default:
      if (v5 < 7)
      {
LABEL_22:
        sub_2166E8270(*a2, a2[1]);
        v19 = OUTLINED_FUNCTION_7_4();
        sub_2166E8270(v19, v20);
        v21 = OUTLINED_FUNCTION_7_4();
        v23 = OUTLINED_FUNCTION_1_216(v21, v22);
        sub_2166E8284(v23, v5);
        return 0;
      }

      else
      {
        v8 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v10 = sub_21700F7D4();
          sub_2166E8270(v4, v5);
          v11 = OUTLINED_FUNCTION_7_4();
          sub_2166E8270(v11, v12);
          v13 = OUTLINED_FUNCTION_7_4();
          v15 = OUTLINED_FUNCTION_1_216(v13, v14);
          sub_2166E8284(v15, v5);
          return v10 & 1;
        }

        sub_2166E8270(v8, v3);
        v24 = OUTLINED_FUNCTION_7_4();
        sub_2166E8270(v24, v25);
        v26 = OUTLINED_FUNCTION_7_4();
        sub_2166E8284(v26, v27);
        v6 = OUTLINED_FUNCTION_7_4();
LABEL_24:
        sub_2166E8284(v6, v7);
        return 1;
      }
  }
}

uint64_t sub_2166E8270(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2166E8284(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_2166E8298()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E839C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_21700CB24();
  (*(v3 + 8))(v2, v4);
  sub_2166A8544();
  sub_21669987C(v1, &qword_27CAB94C8, &qword_2170506D0);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_2166E8470()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2166E8680()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166E8778()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_21700E224();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2166E8800()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_49();
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = (v10 + *(v0 + 32));
  if (v18[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView(0, *(v5 + 16), *(v5 + 24), a4);
  OUTLINED_FUNCTION_4_4();
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v8 = v7 + *(v4 + 44);
  v9 = sub_2170061E4();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0, &unk_217030AA0);

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_1()
{
  v2 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier(v2, v3);
  OUTLINED_FUNCTION_117();
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  v6 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18, &qword_21703B030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008034();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v1 + v5 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_2()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = (*(*v3 + 80) + 24) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v9 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v10 = v3[12];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v11 + 8))(v2 + v4 + v10);
  (*(v8 + 8))(v2 + v9, v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ViewAppearanceLifecycleModifier(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_2166B8588(*v2, v2[1]);
  v3 = v2 + *(v1 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);

  v4 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(0) + 48);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v3[v4], 1, v5))
  {
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  v6 = v2 + *(v1 + 24);
  v7 = type metadata accessor for LinkComponentModel(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v6, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v6 + *(v7 + 20)));
    v8 = (v6 + *(v7 + 24));
    if (v8[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_117();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v5 = *(v1 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v2 + v4 + v5);
  v7 = OUTLINED_FUNCTION_8_11();
  v8(v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SongDetailHeaderView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v4 + v7, 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(v4 + v7, v9);
    }
  }

  else
  {
  }

  sub_216684F5C(*(v8 + v6[10]), *(v8 + v6[10] + 8));
  v11 = v6[11];
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v8 + v11);
  v13 = v8 + v6[12];
  v14 = type metadata accessor for SongDetailListHeaderLockup(0);
  if (!OUTLINED_FUNCTION_15_10(v14))
  {
    v15 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v13, 1, v15))
    {
      OUTLINED_FUNCTION_50();
      (*(v16 + 8))(v13, v15);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v13 + v5[5]));

    v17 = (v13 + v5[8]);
    if (v17[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
    }

    v18 = (v13 + v5[9]);
    if (v18[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    v19 = v13 + v5[10];
    v20 = type metadata accessor for ContentDescriptor(0);
    if (!__swift_getEnumTagSinglePayload(v19, 1, v20))
    {

      v21 = *(v20 + 24);
      v22 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(v19 + v21, 1, v22))
      {
        OUTLINED_FUNCTION_50();
        (*(v23 + 8))(v19 + v21, v22);
      }
    }

    v24 = v13 + v5[11];
    v25 = type metadata accessor for Artwork(0);
    if (!OUTLINED_FUNCTION_15_10(v25))
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v26 + 8))(v24);
      v27 = v5[5];
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v28 + 8))(v24 + v27);
    }
  }

  v29 = v8 + v6[13];
  v30 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v29, 1, v30))
  {

    v31 = *(v30 + 24);
    v32 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v29 + v31, 1, v32))
    {
      OUTLINED_FUNCTION_50();
      (*(v33 + 8))(v29 + v31, v32);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2170075E4();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + v4 + 1) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v0[6], v5);
  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  v10 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v3 + v10);
  }

  else
  {
  }

  v12 = v3 + v0[9];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  else
  {
  }

  sub_2166B8588(*(v3 + v0[11]), *(v3 + v0[11] + 8));
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_21700C924();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  type metadata accessor for PosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for SocialProfileButtonView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_2166B8588(*v2, v2[1]);
  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{

  swift_unknownObjectRelease();

  sub_2166B8588(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for ContentDescriptor(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    OUTLINED_FUNCTION_50();
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for AlbumTrackLockupView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_216684F5C(*(v2 + 24), *(v2 + 32));
  sub_216684F5C(*(v2 + 40), *(v2 + 48));
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[11], v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for PageViewContentViewModifier(0, *(v1 + 16), *(v1 + 24), v2);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  swift_unknownObjectRelease();
  v5 = *(v0 + 36);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v4 + v5);

  v7 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310, &qword_21701C9A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217009804();
    OUTLINED_FUNCTION_9_0();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  Context = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  v2 = (*(*(Context - 8) + 80) + 16) & ~*(*(Context - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = v3 + *(Context + 20);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  v6 = v3 + *(Context + 24);

  v7 = *(type metadata accessor for JSSearchResultsPage.QueryContext(0) + 36);
  sub_21700D7A4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v6 + v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for FavoriteAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v2));
  v8 = v1[7];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v2 + v8);
  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ArtistDetailHeaderLockupView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  sub_216684F5C(*(v6 + 8), *(v6 + 16));
  sub_21680E444(*(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56));
  v7 = *(v5 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  sub_216684F5C(*(v6 + *(v5 + 48)), *(v6 + *(v5 + 48) + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(*v5 + 80) + 24) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v3 + v6);
  v13 = v5[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v3 + v6 + v13);
  (*(v10 + 8))(v3 + v11, v8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for ContainerDetailMediaButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  type metadata accessor for MediaButtonType(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v4 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
    }

    v5 = type metadata accessor for LinkComponentModel(0);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + v5[5]));
    v6 = (v3 + v5[6]);
    if (v6[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    OUTLINED_FUNCTION_7_7(v5[7]);
  }

  OUTLINED_FUNCTION_7_7(*(v1 + 20));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  v1 = (type metadata accessor for UnifiedMessagesSheetView.Content(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for PageRenderMetricsViewModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_216684F5C(*(v2 + 8), *(v2 + 16));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC80, &qword_217034F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_217007554();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v7 = (*(*v6 + 80) + 24) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  sub_2170075A4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v11 = *(v9 + 80);

  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v4 + v7);
  v13 = v6[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v4 + v7 + v13);
  (*(v10 + 8))(v4 + ((v7 + v8 + v11) & ~v11), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  OUTLINED_FUNCTION_67_11();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{
  v2 = OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier(v2, v3);
  OUTLINED_FUNCTION_117();
  v5 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  v6 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18, &qword_21703B030);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008034();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for Content(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 36);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31()
{
  type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  sub_216684F5C(*(v3 + v0[7]), *(v3 + v0[7] + 8));
  sub_216684F5C(*(v3 + v0[8]), *(v3 + v0[8] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{
  type metadata accessor for BubbleLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for UserNotificationSettingsPageView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup(0);
  v4 = *(v3 + 20);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v2[v4], 1, v5))
  {
    (*(*(v5 - 8) + 8))(&v2[v4], v5);
  }

  OUTLINED_FUNCTION_7_7(*(v3 + 32));

  v6 = &v2[v1[7]];
  if (v6[40])
  {
    if (*(v6 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(&v2[v7]);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_7(v1[9]);

  OUTLINED_FUNCTION_7_7(v1[10]);

  OUTLINED_FUNCTION_7_7(v1[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_4_4();
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v5 = v4 + v0[5];
  v6 = type metadata accessor for ContentDescriptor(0);
  if (!OUTLINED_FUNCTION_15_10(v6))
  {

    v7 = *(v2 + 24);
    v2 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(&v5[v7], 1, v2))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(&v5[v7], v2);
    }
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v9 = v4 + v0[9];
  v10 = type metadata accessor for Artwork(0);
  if (!OUTLINED_FUNCTION_15_10(v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v9);
    v12 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v13 + 8))(&v9[v12]);
  }

  v14 = (v4 + v0[10]);
  if (v14[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  v1 = *(v0 + 24);
  v14[0] = *(v0 + 16);
  v2 = v14[0];
  v14[1] = v1;
  v3 = *(v0 + 48);
  v13 = *(v0 + 32);
  v15 = v13;
  v16 = v3;
  v4 = type metadata accessor for ExpandableTextView(0, v14);
  v5 = v0 + ((*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = v4[17];
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v5 + v6, v1);
  }

  v7 = v4[18];
  if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v5 + v7, v13);
  }

  OUTLINED_FUNCTION_93_0(v4[19]);

  OUTLINED_FUNCTION_93_0(v4[20]);

  OUTLINED_FUNCTION_93_0(v4[22]);

  v8 = v4[24];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v5 + v8);
  OUTLINED_FUNCTION_93_0(v4[25]);

  v10 = v4[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10, &unk_217034D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008934();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v5 + v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for SocialProfileContextMenu(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + v1[9];
  v6 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = type metadata accessor for SocialProfileDescriptor(0);

  v8 = *(v7 + 32);
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 8);
  v11(v5 + v8, v9);
  v12 = v2 + v1[10];
  v13 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {

    v14 = *(v13 + 24);
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v9))
    {
      v11(v12 + v14, v9);
    }
  }

  v15 = type metadata accessor for MenuConfiguration(0);
  v16 = v12 + *(v15 + 20);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v16);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    v19 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v16 + v18, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  v20 = (v12 + *(v15 + 32));
  if (v20[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{
  v1 = type metadata accessor for PlaylistTrackLockupView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_216684F5C(*(v2 + 24), *(v2 + 32));
  sub_216684F5C(*(v2 + 40), *(v2 + 48));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(v2 + v5, v6);
  v8(v2 + v1[10], v6);
  v8(v2 + v1[11], v6);
  v8(v2 + v1[12], v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  type metadata accessor for ReportAConcern(0);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_4_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v2 + 8))(v1 + v0);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_41()
{
  sub_2166B8588(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_42()
{
  type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 28);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_43()
{
  v1 = type metadata accessor for AnimatedTextListItemView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = *(type metadata accessor for AnimatedTextListItem(0) + 20);
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v2[v3], 1, v4))
  {
    (*(*(v4 - 8) + 8))(&v2[v3], v4);
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(&v2[v5]);
  }

  else
  {
  }

  v7 = &v2[*(v1 + 24)];
  sub_2170061E4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548, &unk_21704D2F0);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_44()
{
  v2 = (type metadata accessor for DislikeAction(0) - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  sub_2170075A4();
  OUTLINED_FUNCTION_3_121();
  v6 = v5;
  v7 = *(v5 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  v8 = v2[7];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v3 + v8);
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_45()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for GradientListRowView(0);
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v5 + 8));
  type metadata accessor for GradientListRowModel(0);
  v7 = OUTLINED_FUNCTION_9_75();
  if (!OUTLINED_FUNCTION_13_58(v7))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v8 + 8))(v6 + v3, v2);
  }

  v9 = (v6 + *(v1 + v5 + 36));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = v6 + *(v1 + v5 + 40);
  if (*(v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 8));
  }

  v11 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v6 + v11);

  v13 = v6 + v0[7];
  if (*(v13 + 40))
  {
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
  }

  v14 = v0[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (OUTLINED_FUNCTION_16_53(v15) == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v6 + v14);
  }

  else
  {
  }

  v17 = v0[9];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (OUTLINED_FUNCTION_16_53(v18) == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v19 + 8))(v6 + v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for NavigationDestinationsModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);
  v8 = v6[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2170080D4();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_47()
{
  FriendContentView = type metadata accessor for FollowRequestFindFriendContentView(0);
  v2 = v0 + ((*(*(FriendContentView - 8) + 80) + 16) & ~*(*(FriendContentView - 8) + 80));

  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v4 = v2 + Friends[12];

  v5 = *(type metadata accessor for SocialContactsCoordinator.Contact(0) + 44);
  v6 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = Friends[16];
  if (!__swift_getEnumTagSinglePayload(v2 + v7, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v2 + v7, v6);
  }

  return swift_deallocObject();
}

void objectdestroyTm_48()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29(v0[1], v0[2], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8, &qword_2170541B8);
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38, &unk_217054010);
  OUTLINED_FUNCTION_64_14(v15);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (OUTLINED_FUNCTION_81_9(v16) == 1)
  {
    v17 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v17))
    {
      OUTLINED_FUNCTION_50();
      v18 = OUTLINED_FUNCTION_68_14();
      v19(v18);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t objectdestroyTm_49()
{
  v1 = _s7MusicUI7ContentVMa_0(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SocialCardLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v5[5]));
  v6 = (v3 + v5[6]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = (v3 + v5[7]);
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  v8 = (v3 + v5[8]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  OUTLINED_FUNCTION_7_7(v5[9]);

  OUTLINED_FUNCTION_7_7(v5[10]);

  OUTLINED_FUNCTION_7_7(v5[11]);

  v9 = v3 + v5[13];
  v10 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v9);
    v12 = *(v10 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v9 + v12);
  }

  v14 = v3 + v5[14];
  v15 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {

    v16 = *(v15 + 24);
    v17 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  sub_216684F5C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  OUTLINED_FUNCTION_7_7(v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_50()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView(v4, v5, v3, v6);
  OUTLINED_FUNCTION_4_4();
  v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  OUTLINED_FUNCTION_50();
  (*(v9 + 8))(v8, v2);
  v10 = (v8 + *(v0 + 36));
  v11 = OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView.LoadingState(v11, v12, v3, v13);
  OUTLINED_FUNCTION_21_52();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_50();
    (*(v15 + 8))(v10);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  sub_21700AEE4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_51()
{
  type metadata accessor for LibraryImportWebView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_216845090(*v3, *(v3 + 8), *(v3 + 16));
  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_52()
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView(0);
  v2 = v0 + ((*(*(FriendsPageView - 1) + 80) + 16) & ~*(*(FriendsPageView - 1) + 80));
  sub_2166B8588(*v2, *(v2 + 8));
  sub_21680E444(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));

  v3 = (v2 + FriendsPageView[7]);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = *(type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0) + 20);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v3[v4], 1, v5))
  {
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  v6 = v2 + FriendsPageView[8];
  v7 = type metadata accessor for LinkComponentModel(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v6, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v6 + *(v7 + 20)));
    v8 = (v6 + *(v7 + 24));
    if (v8[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_53()
{
  type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_2166B8588(*v3, *(v3 + 8));

  v4 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_216684F5C(*(v3 + *(v0 + 64)), *(v3 + *(v0 + 64) + 8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_54()
{
  v1 = sub_21700C1E4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SocialProfileDetailHeaderLockupView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v8 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  v9 = type metadata accessor for SocialProfileDetailHeaderLockup(0);
  __swift_destroy_boxed_opaque_existential_1Tm((v7 + v9[5]));
  v10 = v7 + v9[6];

  v11 = *(type metadata accessor for ContentDescriptor(0) + 24);
  v12 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v10 + v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  OUTLINED_FUNCTION_7_7(v9[7]);

  OUTLINED_FUNCTION_7_7(v9[8]);

  v13 = v7 + v9[11];
  v14 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v13);
    v16 = *(v14 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v13 + v16);
  }

  OUTLINED_FUNCTION_7_7(v5[9]);

  v18 = v5[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  v21 = *(v20 + 8);
  v21(v7 + v18, v19);
  v21(v7 + v5[14], v19);
  v21(v7 + v5[15], v19);
  OUTLINED_FUNCTION_7_7(v5[16]);

  v22 = v7 + v5[20];
  sub_21680E444(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32));
  OUTLINED_FUNCTION_4_128(v5[21]);
  OUTLINED_FUNCTION_4_128(v5[22]);
  OUTLINED_FUNCTION_4_128(v5[23]);
  v23 = v5[24];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v24 + 8))(v7 + v23);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_56()
{

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_57()
{
  type metadata accessor for HorizontalLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v3 + v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_58()
{
  type metadata accessor for BannerHeaderView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v1 + v3, 1, v5))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v6 + 8))(v1 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9A20, &qword_217060978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_217008A94();
    if (!OUTLINED_FUNCTION_30_44(v10))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v11 + 8))(v4 + v9, v7);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_7(v0[9]);

  v12 = v4 + v0[10];
  sub_21700DA84();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D8, &qword_2170608B8);

  OUTLINED_FUNCTION_7_7(v0[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_59()
{

  if (*(v0 + 64))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7A0, &qword_2170648F0);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + v4 + 1) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_61()
{
  type metadata accessor for ArtistLatestReleaseLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v0[6]), *(v3 + v0[6] + 8));
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v3 + v0[8];
  sub_21680E444(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  sub_216684F5C(*(v3 + v0[9]), *(v3 + v0[9] + 8));
  v9 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v3 + v9);
  }

  else
  {
  }

  v11 = v3 + v0[11];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_62(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = type metadata accessor for LandingUpsell(0);
  v5 = v4[5];
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(&v3[v5], 1, v6))
  {
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  v7 = &v3[v4[10]];
  if (*(v7 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  v8 = &v3[v4[11]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  v9 = &v3[v4[12]];
  if (*(v9 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = &v3[v4[13]];
  v11 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v10);
    v13 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v10 + v13);
  }

  v15 = &v3[v4[14]];
  if (!__swift_getEnumTagSinglePayload(v15, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v15 + v17);
  }

  sub_216684F5C(*&v3[*(v2 + 20)], v3[*(v2 + 20) + 8]);
  v19 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(&v3[v19]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_64()
{
  j__swift_release();

  OUTLINED_FUNCTION_26_52();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CompositeLibraryCatalogView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));

  v7 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  sub_2166B8588(*(v6 + v5[10]), *(v6 + v5[10] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_66()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for SocialProfileEditorPageView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_2166B8588(*(v2 + 16), *(v2 + 24));

  v3 = v2 + v1[10];
  v4 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    v5 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v3, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v3, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4[5]));
    v7 = v3 + v4[6];

    v8 = *(type metadata accessor for ContentDescriptor(0) + 24);
    v9 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(v7 + v8, v9);
    }

    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();

    v11 = v3 + v4[16];
    v12 = type metadata accessor for Artwork(0);
    if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_34();
      (*(v13 + 8))(v11);
      v14 = *(v12 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_34();
      (*(v15 + 8))(v11 + v14);
    }

    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

void sub_2166EEC6C(uint64_t a1)
{
  sub_2166EED8C(319, &qword_280E2A0F0, MEMORY[0x277D22558]);
  if (v1 <= 0x3F)
  {
    sub_2166EED8C(319, &qword_280E2A2C0, MEMORY[0x277D21B08]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166EED8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_2166EEDE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0, &unk_217020690);
  OUTLINED_FUNCTION_1();
  v22 = v5;
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8, &unk_2170206A0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  v14 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
  v16 = sub_21700CCA4();
  __swift_storeEnumTagSinglePayload(&v1[v15], 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingIsCloudAndMediaAccountIdenticalFetch], 1, 1, v14);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_userSocialProfileCoordinator] = v24[0];
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_socialGraphController] = v24[0];
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_objectGraph] = a1;
  v25.receiver = v1;
  v25.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v25, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0, &qword_21705CA40);
  sub_2166EF228(&qword_280E2A2D8, &qword_27CABA4C0, &qword_21705CA40);
  v18 = v17;

  sub_21700D1D4();
  sub_21700D1E4();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  (*(v9 + 8))(v12, v7);
  *(swift_allocObject() + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0, &qword_21703C4F0);
  sub_2166EF228(&unk_280E2A2E0, &qword_27CABA4D0, &qword_21703C4F0);

  sub_21700D1D4();
  v19 = v21;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  (*(v22 + 8))(v19, v23);

  return v18;
}

uint64_t sub_2166EF1F0()
{

  return swift_deallocObject();
}

uint64_t sub_2166EF228(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for JSCampaignAttributionService(uint64_t a1)
{
  result = qword_27CABE178;
  if (!qword_27CABE178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2166EF2C8(uint64_t a1)
{
  v2 = sub_21700DFD4();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216685F4C(0, &qword_280E29D60, 0x277CEE620);
  sub_21700D4D4();
  sub_21700E094();
  v5 = v10[1];
  sub_21700E294();
  sub_21700E094();
  v6 = v10[0];
  sub_21700E094();
  v7 = objc_allocWithZone(v1);
  v8 = sub_216972B48(v5, v6, v4);

  return v8;
}

id sub_2166EF4B0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7MusicUI10JSPlatform__isDebugOrInternalBuild;
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  v0[v2] = byte_280E73A84;
  v3 = OBJC_IVAR____TtC7MusicUI10JSPlatform__is24HourClockEnabled;
  if (qword_280E45AE8 != -1)
  {
    swift_once();
  }

  v0[v3] = byte_280E45AF0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2166EF584()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0, &qword_21701ACB8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_217006274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_21700E4D4();
  sub_217006254();
  v9 = sub_217006244();
  (*(v4 + 8))(v6, v3);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  if (v10)
  {
    v11 = sub_21700E514();
    v13 = v12;

    v15[2] = v11;
    v15[3] = v13;
    v15[0] = 97;
    v15[1] = 0xE100000000000000;
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    sub_2167B2E14();
    sub_21700F1C4();
    LOBYTE(v10) = v14;
    sub_216AEFC1C(v2);
  }

  byte_280E45AF0 = v10 & 1;
}

uint64_t sub_2166EF85C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2166EF8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2166A6DF8(a1, &v4);
  sub_21700DF14();
  return sub_2166EF928();
}

uint64_t sub_2166EF928()
{
  OUTLINED_FUNCTION_8_54();
  if (*(v1 + 24))
  {
    sub_2166EF9C4(v1, v5);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_31();
    sub_2166EF9D4();

    *v0 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_27_29(v1);
    v3 = OUTLINED_FUNCTION_7_64();
    sub_216A51514(v3);

    return OUTLINED_FUNCTION_27_29(v5);
  }

  return result;
}

_OWORD *sub_2166EF9C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_2166EF9D4()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_14_27();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v0 + 56) + 32 * v2));
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_65_2();

    return sub_2166EF9C4(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166EFAC8(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_2166EFAC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  sub_2166EF9C4(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_52_10();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_2166EFB30@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_21700DEF4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2166EFBA4(uint64_t a1)
{
  v2 = sub_2166EFC70();
  if (!v2)
  {
    v2 = 3;
  }

  v3 = sub_2166C0DB4(v2);
  v6[3] = MEMORY[0x277D837D0];
  v6[0] = v3;
  v6[1] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21700DA14();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2166EFC70()
{
  sub_2166C0578(&v2);
  if (!v4)
  {
    return 4;
  }

  v0 = v3;
  sub_21669987C(&v2, &qword_27CAC5980, &qword_217035260);
  return v0;
}

uint64_t sub_2166EFD28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_2(a1 + 16, v6);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2166EFD90(a2, a3);
  }

  return result;
}

uint64_t sub_2166EFD90(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v9 = a1;
  v10 = a2();
  sub_2166EFE80(v8);
  sub_21669987C(v8, &qword_27CABD288, &qword_217029FB0);
  os_unfair_lock_unlock(*(v5 + 16));
}

unint64_t sub_2166EFE2C()
{
  result = qword_280E35C30;
  if (!qword_280E35C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35C30);
  }

  return result;
}

uint64_t sub_2166EFE80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock) + 16));
  v7 = *(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph);
  if (v7)
  {
    v8 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_216681B64(a1, v17, &qword_27CABD288, &qword_217029FB0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v2;
    v10 = v17[1];
    *(v9 + 40) = v17[0];
    *(v9 + 56) = v10;
    *(v9 + 72) = v18;
    *(v9 + 80) = v7;

    sub_21677E228(0, 0, v6, &unk_21703C738, v9);
  }

  else
  {
    v12 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents;
    swift_beginAccess();
    sub_216DF3B74(v13);
    v14 = *(*(v2 + v12) + 16);
    sub_216DF3CD8(v14);
    v15 = *(v2 + v12);
    *(v15 + 16) = v14 + 1;
    sub_216681B64(a1, v15 + 40 * v14 + 32, &qword_27CABD288, &qword_217029FB0);
    *(v2 + v12) = v15;
    return swift_endAccess();
  }
}

uint64_t sub_2166F0050()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2166F00A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 40) resignActive];
  }

  return result;
}

uint64_t sub_2166F013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_21700D2A4();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = sub_21700D3B4();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0, &qword_21701AB00);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166F0434, 0, 0);
}

uint64_t sub_2166F0370()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2166F2728;

  return sub_2166F013C(v3, v4, v5, v6, (v0 + 5), v7);
}

uint64_t sub_2166F0434()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_2166F23D8;

  return sub_2166F04F0();
}

uint64_t sub_2166F04F0()
{
  OUTLINED_FUNCTION_33();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_217007C24();
  v1[6] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  OUTLINED_FUNCTION_36(v7);
  v1[9] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for Empty(0);
  OUTLINED_FUNCTION_36(v8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30, &qword_21705F0F8);
  OUTLINED_FUNCTION_36(v9);
  v1[12] = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for NoProtoRequest(0);
  v1[13] = v10;
  OUTLINED_FUNCTION_36(v10);
  v1[14] = OUTLINED_FUNCTION_80();
  v11 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t type metadata accessor for Empty(uint64_t a1)
{
  result = qword_280E487E0;
  if (!qword_280E487E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NoProtoRequest(uint64_t a1)
{
  result = qword_280E4A168;
  if (!qword_280E4A168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166F06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_2166F08EC(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30, &qword_21705F0F8);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    OUTLINED_FUNCTION_51_13(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t OUTLINED_FUNCTION_1020()
{

  return sub_216F072A0(v0);
}

uint64_t sub_2166F08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_2166F0904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_88_9(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_99_0(v17);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_75_11(v20);
    *v21 = v22;
    v30 = OUTLINED_FUNCTION_23_32(v21, v23, v24, v25, v26, v27, v28, v29, v31, v32);

    return v30();
  }
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_210_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 312) = a4;
  *(v5 - 288) = a3;
  *(v5 - 328) = v4;
  *(v5 - 320) = a2;
}

uint64_t sub_2166F0A54()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F8F8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_2166F0BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166F0DBC, 0, 0);
}

uint64_t sub_2166F0DBC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_2166F0E6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

__n128 OUTLINED_FUNCTION_166@<Q0>(uint64_t a1@<X8>)
{
  result = v2[72];
  v2[66] = result;
  v2[67].n128_u64[0] = v1 | a1;
  v2[67].n128_u64[1] = 0;
  v2[68].n128_u8[0] = 0;
  return result;
}

void *OUTLINED_FUNCTION_151(uint64_t a1)
{
  v1[168] = a1;

  return memcpy(v1 + 170, v1 + 159, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_151_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_21700F6A4();
}

void OUTLINED_FUNCTION_151_1()
{
  *(v0 + v1[9]) = 0;
  *(v0 + v1[10]) = 0;
  *(v0 + v1[11]) = 0;
  *(v0 + v1[12]) = 0;
}

unint64_t sub_2166F1194()
{
  result = qword_280E45D40;
  if (!qword_280E45D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D40);
  }

  return result;
}

uint64_t sub_2166F11E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166F12F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2166F1214()
{
  result = qword_280E45D30;
  if (!qword_280E45D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_150(uint64_t a1, uint64_t a2)
{

  return sub_21700DC04();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v13 - 88) = a1;
  *v11 = a11;
  return v12;
}

uint64_t OUTLINED_FUNCTION_150_3()
{

  return sub_216F982E0();
}

uint64_t sub_2166F12F8(char a1)
{
  result = 0x7463417472656C61;
  switch(a1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
      return result;
    case 3:
    case 9:
    case 15:
    case 34:
      OUTLINED_FUNCTION_11_71();
      return v8 + 11;
    case 4:
    case 16:
    case 28:
    case 56:
    case 61:
      OUTLINED_FUNCTION_11_71();
      return v17 + 5;
    case 5:
    case 63:
    case 66:
      OUTLINED_FUNCTION_11_71();
      return v10 | 4;
    case 6:
    case 11:
    case 46:
      OUTLINED_FUNCTION_11_71();
      return v23 + 6;
    case 7:
      return 0x6573556B636F6C62;
    case 8:
      return 0xD000000000000013;
    case 10:
      return 0x646E756F706D6F63;
    case 12:
      return 0x7453657461657263;
    case 13:
      return 0xD000000000000013;
    case 14:
      OUTLINED_FUNCTION_11_71();
      return v5 + 17;
    case 17:
      return 0x64616F6C6E776F64;
    case 18:
      return 0x7463417974706D65;
    case 19:
    case 35:
    case 54:
      OUTLINED_FUNCTION_11_71();
      return v20 + 9;
    case 20:
      v9 = 2003790950;
      return v9 | 0x6974634100000000;
    case 21:
    case 49:
    case 64:
      OUTLINED_FUNCTION_11_71();
      return v12 - 3;
    case 22:
    case 32:
    case 50:
      OUTLINED_FUNCTION_11_71();
      return v15 | 8;
    case 23:
      return 0x416F666E49746567;
    case 24:
    case 55:
      OUTLINED_FUNCTION_11_71();
      return v22 + 3;
    case 25:
      v6 = 0x746E65746E69;
      goto LABEL_14;
    case 26:
    case 43:
    case 71:
      OUTLINED_FUNCTION_11_71();
      return v19 - 1;
    case 27:
      return 0x6F6C466C61646F6DLL;
    case 29:
      OUTLINED_FUNCTION_11_71();
      return v18 + 18;
    case 30:
    case 31:
    case 33:
    case 44:
      OUTLINED_FUNCTION_11_71();
      return v13 + 2;
    case 36:
      return 0xD000000000000013;
    case 37:
    case 75:
      OUTLINED_FUNCTION_11_71();
      return v4 | 0xC;
    case 38:
      v9 = 2036427888;
      return v9 | 0x6974634100000000;
    case 39:
      return 0x6574614C79616C70;
    case 40:
      return 0x7478654E79616C70;
    case 41:
      return 0x6F6F526F54706F70;
    case 42:
      return 0x6F69746341706F70;
    case 45:
    case 69:
      OUTLINED_FUNCTION_11_71();
      return v14 + 7;
    case 47:
    case 48:
    case 57:
      OUTLINED_FUNCTION_11_71();
      return v16 + 1;
    case 51:
    case 76:
      OUTLINED_FUNCTION_11_71();
      return v26 + 14;
    case 52:
      return 0xD000000000000013;
    case 53:
      return 0xD000000000000013;
    case 58:
      v6 = 0x686372616573;
LABEL_14:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 59:
      result = 0x61547463656C6573;
      break;
    case 60:
      OUTLINED_FUNCTION_11_71();
      result = v7 + 16;
      break;
    case 62:
      OUTLINED_FUNCTION_11_71();
      result = v11 + 10;
      break;
    case 65:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0x41656C6666756873;
      break;
    case 68:
      OUTLINED_FUNCTION_11_71();
      result = v27 + 23;
      break;
    case 72:
      OUTLINED_FUNCTION_11_71();
      result = v21 + 19;
      break;
    case 73:
      OUTLINED_FUNCTION_11_71();
      result = v24 + 13;
      break;
    case 74:
      OUTLINED_FUNCTION_11_71();
      result = v25 + 22;
      break;
    default:
      OUTLINED_FUNCTION_11_71();
      result = v3 - 2;
      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_129_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_216FB315C();
}

uint64_t sub_2166F1C1C(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  return a2(v4, *(v5 + 8));
}

id sub_2166F1CF8(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28F8, &unk_217045B40);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7, 0x646E696B24, 0xE500000000000000);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2166F1DCC()
{
  result = qword_280E29B58;
  if (!qword_280E29B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B58);
  }

  return result;
}

id sub_2166F1E10(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_21700F7B4();
    (*(v6 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() valueWithObject:v10 inContext:a2];
  swift_unknownObjectRelease();

  return v11;
}

void sub_2166F1F64(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_21700E4D4();

  [v3 setObject:v4 forKeyedSubscript:v5];
}

uint64_t sub_2166F1FEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F2104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_46_19();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_216681B04(v2 - 104, v2 - 144, v0, v1);
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return sub_21700D5E4();
}

uint64_t OUTLINED_FUNCTION_113_5()
{

  return sub_216697664(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_2166F226C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F2364()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_2166F23D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_216A75F9C;
  }

  else
  {
    v5 = sub_2166F24E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2166F24E4()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_216681B64(v0[23], v1, &qword_27CAB89C0, &qword_21701AB00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[22];
  if (EnumTagSinglePayload == 1)
  {
    sub_21669987C(v0[23], &qword_27CAB89C0, &qword_21701AB00);
    sub_21669987C(v4, &qword_27CAB89C0, &qword_21701AB00);
    OUTLINED_FUNCTION_12_43();

    OUTLINED_FUNCTION_3();

    return v5();
  }

  else
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    v10 = v0[11];
    v20 = v0[12];
    v11 = v0[10];
    OUTLINED_FUNCTION_42();
    v12();
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v13 = MEMORY[0x277D21D10];
    v0[5] = v9;
    v0[6] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    (*(v10 + 104))(v20, *MEMORY[0x277D21E18], v11);
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_216A75D40;
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[12];
    v19 = v0[9];

    return MEMORY[0x28217F468](v16, v0 + 2, v18, v19, v17);
  }
}

uint64_t sub_2166F2728()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2166F2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166DFAC0;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_2166F28D4(uint64_t a1)
{
  v2 = sub_21700D7E4();
  MEMORY[0x28223BE20](v2 - 8);
  if (sub_21669DAC4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC780, &qword_21706DC20);
    sub_21700D7D4();
    return sub_21700E1F4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    return sub_21700D7F4();
  }
}

uint64_t sub_2166F29C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC788, &qword_21706D450);
  v4 = sub_21700E594();
  v6 = v5;
  sub_21700DF14();
  v7 = sub_2166F2AA0(v4, v6, a1, a2);

  return v7;
}

uint64_t sub_2166F2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_68_1();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  sub_21700DF14();
  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DC18, v9, &qword_27CACC780, &qword_21706DC20, &unk_28293CBA0, &unk_21706DC30);
}

uint64_t sub_2166F2B64()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_173_2(uint64_t a1)
{

  return sub_21700E494();
}

uint64_t sub_2166F2C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166F2CEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21700D7E4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2166F46C4;

  return v12(v9);
}

uint64_t sub_2166F2E4C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2166F2EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2166AB4A0;

  return sub_2166F2FB0(a1, a2, v8, v9, v10, a4);
}

uint64_t sub_2166F2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2166AB4A0;

  return sub_2166F3080(a1, a3, a4, a5, a6);
}

uint64_t sub_2166F3080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_2166F309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_75_11(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_99_0(v17);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_145_3();
    OUTLINED_FUNCTION_206();
    v20 = swift_task_alloc();
    v21 = OUTLINED_FUNCTION_207_0(v20);
    *v21 = v22;
    v30 = OUTLINED_FUNCTION_23_32(v21, v23, v24, v25, v26, v27, v28, v29, v31, v32);

    return v30();
  }
}

double OUTLINED_FUNCTION_139_0@<D0>(char a1@<W8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  return result;
}

uint64_t sub_2166F3228()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA98);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 96) = v17;
    *v17 = v18;
    v17[1] = sub_2166F4574;
    OUTLINED_FUNCTION_47_8();

    return v24(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2166F345C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[5] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858, &qword_21703F4B8);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860, &qword_21703F4C0);
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v12 = sub_21700D2F4();
  v6[14] = v12;
  v6[15] = *(v12 - 8);
  v6[16] = swift_task_alloc();
  v13 = sub_21700CF34();
  v6[17] = v13;
  v6[18] = *(v13 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;

  return MEMORY[0x2822009F8](sub_2166F3674, 0, 0);
}

uint64_t sub_2166F3674()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[7] + 40);
  v1[21] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[22] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

void OUTLINED_FUNCTION_152()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t sub_2166F37A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

unint64_t sub_2166F3A50()
{
  result = qword_280E460E8;
  if (!qword_280E460E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E460E8);
  }

  return result;
}

uint64_t sub_2166F3AA4()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

id sub_2166F3ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    sub_2166F1DCC();
    v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    v10[0] = a4;
    sub_21700DF14();
    v8 = a1;
    v9 = sub_2166F1E10(v10, a1);
    sub_2166F1F64(v9, 0x73646C656966, 0xE600000000000000);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166F3BE4()
{
  sub_216685F4C(0, &qword_280E29AF8, 0x277CD4640);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

id sub_2166F3C5C(void *a1)
{
  sub_2166C0578(&v4);
  if (v6)
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v2 = sub_2166F3D44(a1);
    sub_2166997CC(&v4, &qword_27CAC5980, &qword_217035260);
    return v2;
  }

  result = [objc_opt_self() valueWithNullInContext_];
  v2 = result;
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id sub_2166F3D44(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    v123 = *v1;
    v7 = MEMORY[0x277D837D0];
    if (*(&v123 + 1))
    {
      sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
      v122 = v7;
      v121 = v123;
      sub_216681B64(&v123, &v118, &qword_27CABAA40, &unk_217014260);
      v8 = a1;
      v9 = sub_2166F1E10(&v121, a1);
      sub_2166F1F64(v9, 0xD000000000000011, 0x800000021708D590);
    }

    v10 = v7;
    v11 = sub_216685F4C(0, &qword_280E29B58, 0x277CD4658);
    v12 = sub_2166C0DB4(*(v1 + 16));
    v122 = v10;
    *&v121 = v12;
    *(&v121 + 1) = v13;
    v14 = a1;
    v22 = OUTLINED_FUNCTION_7_93(v14, v15, v16, v17, v18, v19, v20, v21, v94, v98, v102, v106, v110, v114, v118, v119, v120[0], v120[1]);
    sub_2166F1F64(v22, 0x53746E756F636361, 0xED00007375746174);
    v23 = sub_216C6DFE0(*(v1 + 3));
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    v122 = v115;
    *&v121 = v23;
    v24 = v14;
    v32 = OUTLINED_FUNCTION_7_93(v24, v25, v26, v27, v28, v29, v30, v31, v95, v99, v103, v107, v111, v115, v118, v119, v120[0], v120[1]);
    sub_2166F1F64(v32, 0x696C696261706163, 0xEC00000073656974);
    sub_2166F1F64([v4 valueWithBool:*(v2 + 32) inContext:v24], 0xD000000000000014, 0x800000021708D510);
    v33 = *(v2 + 5);
    if (v33)
    {
      v34 = *(v33 + 16);
      v35 = MEMORY[0x277D84F90];
      if (v34)
      {
        v100 = v24;
        v104 = v11;
        v108 = v4;
        v112 = a1;
        *&v121 = MEMORY[0x277D84F90];
        sub_2166F4258();
        v35 = v121;
        v36 = (v33 + 40);
        do
        {
          v37 = *(v36 - 1);
          v38 = *v36;
          *&v121 = v35;
          v40 = *(v35 + 16);
          v39 = *(v35 + 24);
          sub_21700DF14();
          if (v40 >= v39 >> 1)
          {
            sub_2166F4258();
            v35 = v121;
          }

          *(v35 + 16) = v40 + 1;
          v41 = v35 + 16 * v40;
          *(v41 + 32) = v37;
          *(v41 + 40) = v38;
          v36 += 2;
          --v34;
        }

        while (v34);
        v24 = v100;
      }

      v122 = v116;
      *&v121 = v35;
      v42 = v24;
      v50 = OUTLINED_FUNCTION_7_93(v42, v43, v44, v45, v46, v47, v48, v49, v96, v100, v104, v108, v112, v116, v118, v119, v120[0], v120[1]);
      sub_2166F1F64(v50, 0x656C626967696C65, 0xEE0073726566664FLL);
    }

    v51 = *(v2 + 48);
    v122 = MEMORY[0x277D839B0];
    LOBYTE(v121) = v51;
    v52 = v24;
    v60 = OUTLINED_FUNCTION_7_93(v52, v53, v54, v55, v56, v57, v58, v59, v96, v100, v104, v108, v112, v116, v118, v119, v120[0], v120[1]);
    sub_2166F1F64(v60, 0x77746867694C7369, 0xED00007468676965);
    v61 = *(v2 + 49);
    if (v61 != 5)
    {
      v62 = sub_2166F42F4(v61);
      v122 = MEMORY[0x277D837D0];
      *&v121 = v62;
      *(&v121 + 1) = v63;
      v64 = v52;
      v72 = OUTLINED_FUNCTION_7_93(v64, v65, v66, v67, v68, v69, v70, v71, v97, v101, v105, v109, v113, v117, v118, v119, v120[0], v120[1]);
      sub_2166F1F64(v72, 0xD000000000000015, 0x800000021708D570);
    }

    v73 = *(v2 + 50);
    if (v73 != 2)
    {
      v74 = OUTLINED_FUNCTION_6_98(v73);
      sub_2166F1F64(v74, 0x6C696D6146736168, 0xE900000000000079);
    }

    v75 = *(v2 + 51);
    if (v75 != 2)
    {
      v76 = OUTLINED_FUNCTION_6_98(v75);
      sub_2166F1F64(v76, 0xD000000000000010, 0x800000021708D550);
    }

    v77 = *(v2 + 52);
    if (v77 != 2)
    {
      v78 = OUTLINED_FUNCTION_6_98(v77);
      sub_2166F1F64(v78, 0xD000000000000011, 0x800000021708D530);
    }

    v79 = *(v2 + 53);
    if (v79 != 2)
    {
      v80 = OUTLINED_FUNCTION_6_98(v79);
      sub_2166F1F64(v80, 0x726F6E694D7369, 0xE700000000000000);
    }

    v81 = *(v2 + 54);
    if (v81 != 2)
    {
      v82 = OUTLINED_FUNCTION_6_98(v81);
      sub_2166F1F64(v82, 0x664F747261507369, 0xEE00656C646E7542);
    }

    v83 = *(v2 + 7);
    v118 = v83;
    if (v83)
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30, qword_21706E1F0);
      *&v121 = v83;
      v84 = v52;
      v85 = sub_216681B64(&v118, v120, &qword_27CABDB30, &unk_217058C60);
      v93 = OUTLINED_FUNCTION_7_93(v85, v86, v87, v88, v89, v90, v91, v92, v97, v101, v105, v109, v113, v117, v118, v119, v120[0], v120[1]);
      sub_2166F1F64(v93, 0x6F70736552776172, 0xEB0000000065736ELL);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166F42E8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2166F42F4(char a1)
{
  result = 0x64656B6E696C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_84();
      break;
    case 3:
      result = 0x6967696C45746F6ELL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2166F439C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2166F44B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = *(v12 + 208);
  v24 = *(v12 + 80);

  v14 = OUTLINED_FUNCTION_226();
  v13(v14);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_2166F4574()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F466C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_2166F46C4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F47C8()
{
  if (OUTLINED_FUNCTION_20_7())
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2166F481C()
{
  if (OUTLINED_FUNCTION_20_7())
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F486C(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_25())
  {
    sub_217009974();

    return sub_2170089F4();
  }

  else
  {
    sub_217008B84();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    OUTLINED_FUNCTION_19_0();
    sub_2170089F4();
    sub_21700F164();
    OUTLINED_FUNCTION_16_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217008B84();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    return sub_2170089F4();
  }
}

uint64_t sub_2166F4990(uint64_t a1)
{
  if (OUTLINED_FUNCTION_25())
  {
    v1 = sub_217009974();
    OUTLINED_FUNCTION_24_4(v1);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0_9();
  }

  else
  {
    sub_217008B84();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    v2 = sub_217009794();
    OUTLINED_FUNCTION_24_4(v2);
    sub_21700F164();
    OUTLINED_FUNCTION_16_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217008B84();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    sub_2170089F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_2166F4B64@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_216777E14(a2);
  *a1 = result;
  return result;
}

void sub_2166F4BDC(uint64_t a2@<X8>)
{
  sub_2166F4C10();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_2166F4C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F4C34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F4C4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2166F4C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166F4D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F4DE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216781480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166F4E38@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPageProvider.accountButtonCoordinator.getter();
  *a1 = result;
  return result;
}

__n128 sub_2166F4E6C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2166F4EAC(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68, &unk_21701D690);
  v2 = a1[1];
  v12[0] = *a1;
  v12[1] = v2;
  type metadata accessor for SearchPageView(255, v12);
  type metadata accessor for FlowActionPageView(255);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70, &qword_217013DD0);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78, &qword_217013DD8);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80, &unk_217013DE0);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_8();
  sub_2166B5148(v3, &qword_27CAB6A68, &unk_21701D690, v4);
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  sub_2166B52EC(v5, v6, &unk_217018DE4);
  OUTLINED_FUNCTION_42_3();
  swift_getWitnessTable();
  sub_2166B53E0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_75();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  sub_2166B5148(v7, &qword_27CAB6A78, &qword_217013DD8, v8);
  swift_getWitnessTable();
  sub_2166B58AC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  sub_21669E098(v9, &qword_27CAB6A88, &qword_21706EE30, v10);
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166F5108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167812BC();
  *a1 = result;
  return result;
}

uint64_t sub_2166F5138()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2166F5184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ModalActionModelDestinations.Destination(0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166F5220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ModalActionModelDestinations.Destination(0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F52C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166F53A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0, &unk_217015620);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F5478(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F54C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F563C(uint64_t *a1)
{
  v17 = *a1;
  v2 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38, &unk_217014DF0);
  v16 = *(a1 + 1);
  v3 = OUTLINED_FUNCTION_6_14();
  type metadata accessor for ModalNavigationStack(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_6_14();
  type metadata accessor for AppDestinationSheetPageView(v7, v8, v9, v10);
  sub_217009564();
  sub_217009564();
  v11 = OUTLINED_FUNCTION_6_14();
  type metadata accessor for AppDestinationFullScreenCoverPageView(v11, v12, v13, v14);
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40, &qword_21701D800);
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48, &unk_217014E00);
  sub_217009564();
  v18 = v17;
  v19 = v16;
  v20 = v2;
  type metadata accessor for NestedPresentationModifier(255, &v18);
  sub_2170089F4();
  sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  sub_216785E20();
  swift_getWitnessTable();
  sub_216785E74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_216785F4C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166F58B4(uint64_t a1, uint64_t a2, int *a3)
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[19];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a3[21];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2166F59E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[19];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
        v11 = a4[21];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2166F5B5C(uint64_t a1)
{
  result = sub_2166D4B78(qword_280E410F0, type metadata accessor for HorizontalLockup, &unk_217015138);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2166F6040()
{
  v1 = type metadata accessor for PlayAction(0);
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);

  v7 = v0 + ((v2 + 24) & ~v2);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v7);

  v9 = v7 + *(v1 + 28);
  v10 = type metadata accessor for ContentDescriptor(0);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {

    v11 = *(v10 + 24);
    v12 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  v13 = (v7 + *(v1 + 44));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  (*(v5 + 8))(v0 + ((((v2 + 24) & ~v2) + v15 + v6) & ~v6), v3);

  return swift_deallocObject();
}

uint64_t sub_2166F6390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F6440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F64EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166F6580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F668C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F66D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0, &qword_217015AA0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  v4 = *(v0 + 36);
  sub_217006E04();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  v6 = *(v0 + 40);
  v7 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2166F6860()
{
  type metadata accessor for PresentAlertAction(0);
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_2166F6970(uint64_t *a1)
{
  v1 = *a1;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = OUTLINED_FUNCTION_43_7(OpaqueTypeMetadata2, v3, v4, v5, v6, v7, v8, v9, v1);
  v18 = OUTLINED_FUNCTION_41_5(v10, v11, v12, v13, v14, v15, v16, v17, OpaqueTypeMetadata2);
  v26 = OUTLINED_FUNCTION_43_7(v18, v19, v20, v21, v22, v23, v24, v25, OpaqueTypeMetadata2);
  v34 = OUTLINED_FUNCTION_41_5(v26, v27, v28, v29, v30, v31, v32, v33, v18);
  v42 = OUTLINED_FUNCTION_43_7(v34, v35, v36, v37, v38, v39, v40, v41, v18);
  v50 = OUTLINED_FUNCTION_41_5(v42, v43, v44, v45, v46, v47, v48, v49, v34);
  v58 = OUTLINED_FUNCTION_43_7(v50, v51, v52, v53, v54, v55, v56, v57, v34);
  v66 = OUTLINED_FUNCTION_41_5(v58, v59, v60, v61, v62, v63, v64, v65, v50);
  v74 = OUTLINED_FUNCTION_43_7(v66, v67, v68, v69, v70, v71, v72, v73, v50);
  v82 = OUTLINED_FUNCTION_41_5(v74, v75, v76, v77, v78, v79, v80, v81, v66);
  v90 = OUTLINED_FUNCTION_43_7(v82, v83, v84, v85, v86, v87, v88, v89, v66);
  v98 = OUTLINED_FUNCTION_41_5(v90, v91, v92, v93, v94, v95, v96, v97, v82);
  v114 = OUTLINED_FUNCTION_43_7(v98, v99, v100, v101, v102, v103, v104, v105, v82);
  return OUTLINED_FUNCTION_43_7(v114, v106, v107, v108, v109, v110, v111, v112, v98);
}

uint64_t sub_2166F6A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F6ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F6B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestination(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F6C4C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MusicAppDestination(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2166F6CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F6D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F6E1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for MusicMetrics.ClickFields(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v11 = *(v3 + a3[5] + 40);
      if (v11 > 1)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7168, &unk_217015F60);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[6];
    }

    else
    {
      v9 = sub_217007CA4();
      v15 = a3[8];
    }

    v10 = v3 + v15;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_2166F6F2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for MusicMetrics.ClickFields(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + a4[5] + 40) = -a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7168, &unk_217015F60);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[6];
    }

    else
    {
      v11 = sub_217007CA4();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2166F703C()
{
  v1 = type metadata accessor for MusicClickMetricsModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 32);
  if (v3 >> 60 != 15)
  {
    sub_21677A524(*(v2 + 24), v3);
  }

  v4 = *(type metadata accessor for MusicMetrics.ClickFields(0) + 36);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  v6 = v2 + v1[5];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v2 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71B8, &qword_217016000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for MusicMetrics.PageFields(0);
    if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
    {

      v9 = *(v8 + 28);
      if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v5))
      {
        (*(*(v5 - 8) + 8))(v7 + v9, v5);
      }
    }
  }

  else
  {
  }

  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }
  }

  else
  {
  }

  v11 = v1[8];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v2 + v11);

  return swift_deallocObject();
}

uint64_t sub_2166F72E4()
{

  return swift_deallocObject();
}

uint64_t sub_2166F7334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71C0, &qword_217016008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71B0, &qword_217015FF8);
  OUTLINED_FUNCTION_2_22();
  sub_2166D9530(v0, &qword_27CAB71C0, &qword_217016008, v1);
  OUTLINED_FUNCTION_1_9();
  sub_2166D9530(v2, &qword_27CAB71B0, &qword_217015FF8, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2166F74EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F75C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F7674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F7794()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E1343C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F77BC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E13448();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F77E4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E13454();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F780C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_10_4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F7834()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_2166C1A3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F785C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E198BC();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F7884()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B268C();
  *v0 = result;
  return result;
}

uint64_t sub_2166F78B0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2634();
  *v0 = result;
  return result;
}

uint64_t sub_2166F78D8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B25DC();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7900()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2584();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7928()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2528();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7950()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B24D0();
  *v0 = result;
  return result;
}

uint64_t sub_2166F79AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7238, &qword_217016820);
  sub_2167B35EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F7A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166F7A90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F7B1C()
{

  return swift_deallocObject();
}

uint64_t sub_2166F7B5C()
{
  type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 28);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F7CB0()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72D8, &qword_217016B88);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2166F7D10()
{
  type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F7E6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 64));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2166F7EF0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2166F7F6C(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2166F7FF0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370, &unk_217016C40);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2166F8070()
{
  type metadata accessor for LiveRadioGridLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_216684F5C(*v3, *(v3 + 8));
  sub_2166B8588(*(v3 + 16), *(v3 + 24));
  sub_2166B8588(*(v3 + 40), *(v3 + 48));

  v4 = v3 + v0[8];
  v5 = type metadata accessor for Artwork(0);
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v4);
    v7 = *(v5 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  if ((*(v3 + v0[9] + 8) - 1) >= 9)
  {
  }

  v9 = (v3 + v0[11]);
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v0[12]));

  return swift_deallocObject();
}

uint64_t sub_2166F8234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483637)
  {
    v8 = sub_21700C444();
    v9 = a1 + *(a3 + 36);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_43_8();
  if (v11 != v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13 - 8;
  if (v10 >= 9)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void sub_2166F8318()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483637)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 + 9);
      return;
    }

    v6 = sub_21700C444();
    v7 = v1 + *(v2 + 36);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F83E8()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_43_8();
    if (v7 != v8)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }
}

void sub_2166F8480()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_2166F8538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
    OUTLINED_FUNCTION_17();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v16 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
      v16 = *(a3 + 32);
    }

    v9 = a1 + v16;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_43_8();
  if (v11 != v12)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

void sub_2166F8668()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[6] + 24) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[7];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
      v10 = v2[8];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F878C()
{
  v1 = type metadata accessor for ContextMenuPreview(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    v5 = sub_21700C4B4();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v0 + v2, v5);
    }

    v7 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    if ((OUTLINED_FUNCTION_93_0(*(v7 + 20)) - 1) >= 9)
    {
    }

    v8 = *(v7 + 36);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v3 + v8);
    OUTLINED_FUNCTION_93_0(v4[5]);

    OUTLINED_FUNCTION_93_0(v4[6]);

    OUTLINED_FUNCTION_93_0(v4[7]);
  }

  v10 = (v3 + v1[6]);
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v11 = v1[7];
  v12 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v3 + v11, 1, v12))
  {
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v1[8];
  v15 = sub_21700C444();
  if (!__swift_getEnumTagSinglePayload(v3 + v14, 1, v15))
  {
    OUTLINED_FUNCTION_50();
    (*(v16 + 8))(v3 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_2166F89D8()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return OUTLINED_FUNCTION_95_4(v8);
    }

    else
    {
      return 0;
    }
  }
}

void sub_2166F8A80()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_74_3();
  }
}

uint64_t sub_2166F8B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for ContextMenuPreview.ViewModel(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v11 = *(v3 + *(a3 + 20));
      if (v11 >= 2)
      {
        return OUTLINED_FUNCTION_95_4(v11);
      }

      else
      {
        return 0;
      }
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v10 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_2166F8C30()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 254)
    {
      OUTLINED_FUNCTION_74_3();
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598, &qword_217017350);
    v7 = v1 + *(v2 + 28);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F8CEC()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2166F8D80()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_74_3();
  }
}

uint64_t sub_2166F8E68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75E8, &qword_217017438);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75E0, &qword_217017430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
  sub_2167C4A34();
  sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F8F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F902C()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F90D4()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F9184()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2166F9214(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2166F92A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878, &qword_2170177B8);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F9334()
{
  v1 = (type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F9448(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78A8, &qword_217017848);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166F94F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewAppearanceLifecycleModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_2170097A4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2166F963C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for MappedSection(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7928, &unk_217017B80);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2166F9714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MappedSection(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7928, &unk_217017B80);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}